module App

open Fable.Core.JsInterop
open TypeScript
open TypeScript.Ts
open Node.Api

let createProgram tsPaths (sourceFiles: SourceFile list) =
    let options = jsOptions<CompilerOptions>(fun o ->
        o.removeComments <- Some false
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
        getNewLine = fun _ -> System.Environment.NewLine
        fileExists = fun fileName -> List.contains fileName tsPaths
        readFile = fun _ -> Some ""
        directoryExists = fun _ -> true
        getDirectories = fun _ -> ResizeArray []
      |}
    ts.createProgram(ResizeArray tsPaths, options, !!host)

[<EntryPoint>]
let main argv =
  if argv.Length < 1 then 0
  else
    let inputs = argv |> Seq.map (fun a -> a, fs.readFileSync(a, "utf-8"))
    let srcs = inputs |> Seq.map (fun (a, i) -> ts.createSourceFile (a, i, ScriptTarget.Latest, true))
    let program = createProgram (Array.toList argv) (Seq.toList srcs)
    let checker = program.getTypeChecker ()
    let rec display (node: Node) depth =
      let indent = String.replicate depth "  "
      System.Enum.GetName(typeof<SyntaxKind>, node.kind) |> printfn "%s%A" indent
      node.forEachChild(fun child -> display child (depth+1); None) |> ignore

    let stmts = srcs |> Seq.collect (fun src -> src.statements) |> Seq.collect (Parser.readStatement checker) |> Seq.toList
    let result = Typer.mergeStatements stmts
    let ctx = Typer.createRootContext "Internal" result
    let result = result |> Typer.resolveIdentInStatements ctx
    let ctx = Typer.createRootContext "Internal" result

    let stringify x = Fable.Core.JS.JSON.stringify(x, space=2)

    (*
    for pstmt in result do
      Fable.Core.JS.JSON.stringify(pstmt, space=2) |> printfn "%s"
      ()
    *)
    // Writer.emitFlattenedDefinitions ctx |> Text.toString 2 |> printfn "%s"
    ctx.definitionsMap |> Map.iter (fun _ v ->
      match v with
      | Syntax.TypeAlias { target = Syntax.Union u } ->
        Syntax.Union u |> Syntax.Type.pp |> printfn "%s"
        let ru = Typer.resolveUnion ctx u
        { ru with otherTypes = Set.empty } |> Typer.ResolvedUnion.pp |> printfn "%s"
        ru.otherTypes |> Set.toList |> List.map (Syntax.Type.pp) |> String.concat " | " |> printfn "%s" 
        printfn "------------------------------------------------"
        printfn ""
      | _ -> ()
    )
    0
