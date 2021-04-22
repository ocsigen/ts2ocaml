module App

open Fable.Core.JsInterop
open TypeScript
open TypeScript.Ts
open Node.Api

let createProgram (tsPaths: string seq) (sourceFiles: SourceFile list) =
    let options = jsOptions<CompilerOptions>(fun o ->
      o.removeComments <- Some false
      o.target <- Some ScriptTarget.ES2015
      o.``module`` <- Some ModuleKind.CommonJS
    )
    let host = ts.createCompilerHost(options, true)
    ts.createProgram(ResizeArray tsPaths, options, host)

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
    let inputs = argv |> Seq.map (fun a -> a, fs.readFileSync(a, "utf-8"))
    let srcs =
      inputs |> Seq.map (fun (a, i) ->
        ts.createSourceFile (a, i, ScriptTarget.ES2015, setParentNodes=true, scriptKind=ScriptKind.TS))
    let program = createProgram argv (Seq.toList srcs)
    let checker = program.getTypeChecker ()
    let rec display (node: Node) depth =
      let indent = String.replicate depth "  "
      System.Enum.GetName(typeof<SyntaxKind>, node.kind) |> printfn "%s%A" indent
      node.forEachChild(fun child -> display child (depth+1); None) |> ignore

    let stmts =
      srcs
      |> Seq.collect (fun src -> src.statements)
      |> Seq.collect (Parser.readStatement checker)
      |> Seq.toList

    let ctx, result = Typer.runAll stmts
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
