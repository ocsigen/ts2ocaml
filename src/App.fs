module App

open Fable.Core.JsInterop
open TypeScript
open TypeScript.Ts
open Node.Api

let createProgram tsPaths (sourceFiles: SourceFile list) =
    let options = jsOptions<CompilerOptions>(fun o ->
        o.target <- Some ScriptTarget.ES2015
        o.``module`` <- Some ModuleKind.CommonJS
    )
    let host =
      {|
        getSourceFile = fun (fileName, languageVersion) ->
          sourceFiles |> List.tryFind (fun sf -> sf.fileName = fileName && sf.languageVersion = languageVersion)
        writeFile =
          { new WriteFileCallback with member __.Invoke(_, _, _, _, _) = () }
        getDefaultLibFileName = fun _ -> "lib.d.ts"
        useCaseSensitiveFileNames = fun _ -> false
        getCanonicalFileName = id
        getCurrentDirectory = fun _ -> ""
        getNewLine = fun _ -> "\r\n"
        fileExists = fun fileName -> List.contains fileName tsPaths
        readFile = fun _ -> Some ""
        directoryExists = fun _ -> true
        getDirectories = fun _ -> ResizeArray []
      |}
    ts.createProgram(ResizeArray tsPaths, options, !!host)

[<EntryPoint>]
let main argv =
  if argv.Length <> 1 then 0
  else
    let input = fs.readFileSync(argv.[0], "utf-8")
    let src = ts.createSourceFile (argv.[0], input, ScriptTarget.ES2015, true, ScriptKind.TS)
    let program = createProgram [argv.[0]] [src] 
    let checker = program.getTypeChecker ()
    let rec display (node: Node) depth =
      let indent = String.replicate depth "  "
      System.Enum.GetName(typeof<SyntaxKind>, node.kind) |> printfn "%s%A" indent
      node.forEachChild(fun child -> display child (depth+1); None) |> ignore

    // let ctx : Parser.ctx = { checker = checker; src = src }
    
    for stmt in src.statements do
      //Fable.Core.JS.JSON.stringify(stmt, space=2) |> printfn "%s"
      // display stmt 0
      for pstmt in Parser.readStatement checker stmt do
        Fable.Core.JS.JSON.stringify(pstmt, space=2) |> printfn "%s"
    0
