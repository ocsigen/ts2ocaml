module App

open Fable.Core.JsInterop
open TypeScript
open Node.Api
open Syntax

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


let createProgram (tsPaths: string[]) (sourceFiles: Ts.SourceFile list) =
    let options = jsOptions<Ts.CompilerOptions>(fun o ->
      o.target <- Some Ts.ScriptTarget.ES2015
      o.``module`` <- Some Ts.ModuleKind.CommonJS
      o.incremental <- Some false
      o.checkJs <- Some true
      o.lib <- Some (ResizeArray ["ESNext"; "DOM"])
      o.noEmit <- Some true
      o.alwaysStrict <- Some true
      o.strict <- Some true
      o.skipLibCheck <- Some false
      o.traceResolution <- Some true
    )
    let host =
      { new ICompilerHost with
          member _.getSourceFile(fileName, _, ?__, ?___) =
            sourceFiles |> List.tryFind (fun sf -> sf.fileName = fileName)
          member _.getSourceFileByPath(fileName, _, _, ?__, ?___) =
            sourceFiles |> List.tryFind (fun sf -> sf.fileName = fileName)
          member _.getDefaultLibFileName(_) = "lib.d.ts"
          member _.useCaseSensitiveFileNames() = false
          member _.getCanonicalFileName(s) = s
          member _.getCurrentDirectory() = ""
          member _.getNewLine() = "\r\n"
          member _.fileExists(fileName) = Array.contains fileName tsPaths
          member _.readFile(fileName) = sourceFiles |> List.tryPick (fun sf -> if sf.fileName = fileName then Some (sf.getFullText()) else None)
          member _.directoryExists(_) = true
          member _.getDirectories(_) = ResizeArray []
      }
    ts.createProgram(ResizeArray tsPaths, options, !!host)

open Fable.Core

[<Emit("typeof $0")>]
let jsTypeof (x: 'a) : string = jsNative

let stringify (x: obj) =
  let objSet = JS.Constructors.Set.Create()
  Fable.Core.JS.JSON.stringify(x, space=2, replacer=(fun _key value ->
    if not (isNullOrUndefined value) && jsTypeof value = "object" then
      if objSet.has(value) then box "<circular object>"
      else
        objSet.add value |> ignore
        value
    else
      value
  ))

[<EntryPoint>]
let main argv =
  if argv.Length < 1 then 0
  else
    let program =
      let inputs = argv |> Seq.map (fun a -> a, fs.readFileSync(a, "utf-8"))
      let srcs =
        inputs |> Seq.map (fun (a, i) ->
          ts.createSourceFile (a, i, Ts.ScriptTarget.Latest, setParentNodes=true))
      createProgram argv (Seq.toList srcs)

    let srcs = program.getSourceFiles()
    let checker = program.getTypeChecker()
    let rec display (node: Ts.Node) depth =
      let indent = String.replicate depth "  "
      System.Enum.GetName(typeof<Ts.SyntaxKind>, node.kind) |> printfn "%s%A" indent
      node.forEachChild(fun child -> display child (depth+1); None) |> ignore

    let srcs =
      srcs
      |> Seq.toList
      |> List.map (fun src ->
        let references =
          Seq.concat [
            src.referencedFiles |> Seq.map (fun x -> FileReference x.fileName)
            src.typeReferenceDirectives |> Seq.map (fun x -> TypeReference x.fileName)
            src.libReferenceDirectives |> Seq.map (fun x -> LibReference x.fileName)
          ] |> Seq.toList
        let statements =
          src.statements
          |> Seq.collect (Parser.readStatement {| checker = checker; sourceFile = src |})
          |> Seq.toList
        { statements = statements
          fileName = src.fileName
          moduleName = src.moduleName
          hasNoDefaultLib = src.hasNoDefaultLib
          references = references })

    let ctx, result = Typer.runAll srcs
    Writer.emitAll ctx result |> Text.toString 2 |> printfn "%s"

    (*
    for _, v in Map.toSeq ctx.definitionsMap do
      match v with
      | Syntax.TypeAlias { target = Syntax.Union u } ->
        Syntax.Union u |> Syntax.Type.pp |> printfn "%s"
        let ru = Typer.resolveUnion ctx u
        { ru with otherTypes = Set.empty } |> Typer.ResolvedUnion.pp |> printfn "%s"
        ru.otherTypes |> Set.toList |> List.map (Syntax.Type.pp) |> String.concat " | " |> printfn "%s"
        Writer.emitResolvedUnion Writer.noOverride ctx ru |> Text.toString 2 |> printfn "%s"
        printfn "------------------------------------------------"
        printfn ""
      | _ -> ()
    *)
    0
