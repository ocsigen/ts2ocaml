module Main

open Fable.Core.JsInterop
open TypeScript
open Syntax

module Node = Node.Api

let options =
  jsOptions<Ts.CompilerOptions>(fun o ->
    o.target <- Some Ts.ScriptTarget.Latest
    o.noEmit <- Some true
  )

type ICompilerHost =
  abstract getSourceFile: fileName: string * languageVersion: Ts.ScriptTarget * ?onError: (string -> unit) * ?shouldCreateNewSourceFile: bool -> Ts.SourceFile option
  abstract getSourceFileByPath: fileName: string * path: Ts.Path * languageVersion: Ts.ScriptTarget * ?onError: (string -> unit) * ?shouldCreateNewSourceFile: bool -> Ts.SourceFile option
  abstract getDefaultLibFileName: options: Ts.CompilerOptions -> string
  abstract useCaseSensitiveFileNames: unit -> bool
  abstract getCanonicalFileName: fileName: string -> string
  abstract getCurrentDirectory: unit -> string
  abstract getNewLine: unit -> string
  abstract fileExists: fileName: string -> bool
  abstract readFile: fileName: string -> string option
  abstract directoryExists: directoryName: string -> bool
  abstract getDirectories: path: string -> ResizeArray<string>

let getCompilerHost (tsPaths: string[]) (sourceFiles: Ts.SourceFile[]) : Ts.CompilerHost =
  if BrowserOrNode.isBrowser then
    let host =
      { new ICompilerHost with
          member _.getSourceFile(fileName, _, ?__, ?___) =
            sourceFiles |> Array.tryFind (fun sf -> sf.fileName = fileName)
          member _.getSourceFileByPath(fileName, _, _, ?__, ?___) =
            sourceFiles |> Array.tryFind (fun sf -> sf.fileName = fileName)
          member _.getDefaultLibFileName(_) = "lib.d.ts"
          member _.useCaseSensitiveFileNames() = false
          member _.getCanonicalFileName(s) = s
          member _.getCurrentDirectory() = ""
          member _.getNewLine() = "\r\n"
          member _.fileExists(fileName) = Array.contains fileName tsPaths
          member _.readFile(fileName) = sourceFiles |> Array.tryPick (fun sf -> if sf.fileName = fileName then Some (sf.getFullText()) else None)
          member _.directoryExists(_) = true
          member _.getDirectories(_) = ResizeArray []
      }
    !!host
  else
    ts.createCompilerHost(options, true)

let createProgram (tsPaths: string[]) (sourceFiles: Ts.SourceFile[]) =
  ts.createProgram(ResizeArray tsPaths, options, getCompilerHost tsPaths sourceFiles)

/// works on NodeJS only.
let getAllLocalReferences (opts: GlobalOptions) (sourceFiles: Ts.SourceFile seq) =
  let sourceFilesMap = new MutableMap<_, _>()
  for sourceFile in sourceFiles do
    sourceFilesMap.Add(Path.absolute sourceFile.fileName, sourceFile)

  let createSourceFile path =
    ts.createSourceFile(path, Node.fs.readFileSync(path, "utf-8"), Ts.ScriptTarget.Latest, setParentNodes=true, scriptKind=Ts.ScriptKind.TS)

  let tryAdd (from: Ts.SourceFile) path =
    let key = Path.absolute path
    if not (sourceFilesMap.ContainsKey(key)) then
      Log.tracef opts "* found '%s' referenced by '%s'" path from.fileName
      let sourceFile = createSourceFile path
      sourceFilesMap.Add(key, sourceFile)
      Some sourceFile
    else None

  for sourceFile in sourceFiles do
    for file in sourceFile.referencedFiles do
      Path.join [Path.dirname sourceFile.fileName; file.fileName]
      |> tryAdd sourceFile |> ignore

  let tryFindDefinitionFile (sourceFile: Ts.SourceFile) relativePath =
    let tryGet name =
      let p = Path.join [Path.dirname sourceFile.fileName; name]
      if Node.fs.existsSync(!^p) then Some p else None
    tryGet $"{relativePath}.d.ts"
    |> Option.orElseWith (fun () -> tryGet $"{relativePath}/index.d.ts")

  let handleModuleSpecifier (sourceFile: Ts.SourceFile) (e: Ts.Expression) =
    if e.kind = Ts.SyntaxKind.StringLiteral then
      let specifier = (!!e : Ts.StringLiteral).text
      if specifier.StartsWith(".") then
        match tryFindDefinitionFile sourceFile specifier with
        | None -> None
        | Some path -> tryAdd sourceFile path
      else None
    else None

  let rec go (sourceFile: Ts.SourceFile) (n: Ts.Node) : unit option =
    match n.kind with
    | Ts.SyntaxKind.ImportEqualsDeclaration ->
      let n = n :?> Ts.ImportEqualsDeclaration
      if (!!n.moduleReference : Ts.Node).kind = Ts.SyntaxKind.ExternalModuleReference then
        (!!n.moduleReference : Ts.ExternalModuleReference).expression
        |> handleModuleSpecifier sourceFile
        |> Option.iter goSourceFile
    | Ts.SyntaxKind.ImportDeclaration ->
      let n = n :?> Ts.ImportDeclaration
      n.moduleSpecifier
      |> handleModuleSpecifier sourceFile
      |> Option.iter goSourceFile
    | _ -> ()
    n.forEachChild(go sourceFile)

  and goSourceFile sourceFile =
    for statement in sourceFile.statements do
      go sourceFile statement |> ignore

  for sourceFile in sourceFiles do goSourceFile sourceFile

  sourceFilesMap.Values |> Seq.toArray |> Array.map (fun v -> v.fileName, v) |> Array.unzip

let parse (opts: GlobalOptions) (argv: string[]) : Input =
  let argv, program =
    let inputs = argv |> Seq.map (fun a -> a, Node.fs.readFileSync(a, "utf-8"))
    let argv, srcs =
      inputs
      |> Seq.map (fun (a, i) ->
        ts.createSourceFile (a, i, Ts.ScriptTarget.Latest, setParentNodes=true, scriptKind=Ts.ScriptKind.TS))
      |> fun srcs ->
        if not opts.followRelativeReferences then argv, Array.ofSeq srcs
        else
          Log.tracef opts "* following relative references..."
          getAllLocalReferences opts srcs
    argv, createProgram argv srcs

  let srcs =
    let targets = argv |> Set.ofArray
    program.getSourceFiles()
    |> Seq.filter (fun sf -> targets |> Set.contains (Path.relative sf.fileName))

  let checker = program.getTypeChecker()

  let sources =
    srcs
    |> Seq.toList
    |> List.map (fun src ->
      Log.tracef opts "* parsing %s..." src.fileName
      let references =
        Seq.concat [
          src.referencedFiles |> Seq.map (fun x -> FileReference x.fileName)
          src.typeReferenceDirectives |> Seq.map (fun x -> TypeReference x.fileName)
          src.libReferenceDirectives |> Seq.map (fun x -> LibReference x.fileName)
        ] |> Seq.toList
      let statements =
        src.statements
        |> Seq.collect (Parser.readStatement !!{| verbose = opts.verbose; checker = checker; sourceFile = src; nowarn = opts.nowarn; followRelativeReferences = false; merge = false |})
        |> Seq.toList
      { statements = statements
        fileName = Path.relative src.fileName
        moduleName = src.moduleName
        hasNoDefaultLib = src.hasNoDefaultLib
        references = references })

  let info =
    match sources with
    | example :: _ -> JsHelper.getPackageInfo example.fileName
    | [] -> None

  { sources = sources; info = info }
open Yargs

[<EntryPoint>]
let main argv =
  let yargs =
    yargs
         .Invoke(argv)
         .wrap(yargs.terminalWidth() |> Some)
         .parserConfiguration({| ``parse-positional-numbers`` = false |})
         .config()
    |> GlobalOptions.register
    |> Typer.TyperOptions.register
    |> Target.register parse Targets.JsOfOCaml.Target.target
    |> Target.register parse Targets.ParserTest.target
  yargs.demandCommand(1.0).scriptName("ts2ocaml").help().argv |> ignore
  0
