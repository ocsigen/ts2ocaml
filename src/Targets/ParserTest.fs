module Targets.ParserTest

open Ts2Ml
open Syntax
open Target

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  abstract typing: bool with get
  abstract dumpAst: string option with get

let private builder (argv: Yargs.Argv<Options>) : Yargs.Argv<Options> =
  argv.addFlag("typing", (fun (o: Options) -> o.typing), descr="Apply typer")
      .addOption("dump-ast", (fun (o: Options) -> o.dumpAst), descr="Dump AST as JSON")

open Fable.Core
open Fable.Core.JsInterop

let stringify (x: obj) =
  let objSet = JS.Constructors.Set.Create()
  JS.JSON.stringify(x, space=2, replacer=(fun _key value ->
    if JS.Constructors.Array.isArray value then
      let xs = value :?> obj[]
      if xs.Length > 0 then
        if xs[0] = "LocationTs" then
          {| source=xs[1]?fileName; line=xs[2]?line; character=xs[2]?character |}
        else if xs[0] = "Location" && xs.Length = 2 && xs[1] |> has "src" then
          {| source=xs[1]?src?fileName; line=xs[1]?line; character=xs[1]?character |}
        else if xs[0] = "Other" && xs.Length = 4 && xs[3]?kind = TypeScript.Ts.SyntaxKind.JSDocTag then
          {| tag=xs[1]; text=xs[2] |}
        else value
      else value
    else if not (isNullOrUndefined value) && JS.typeof value = "object" then
      if objSet.has(value) then box "<circular object>"
      else
        objSet.add value |> ignore
        value
    else
      value
  ))

let private run (input: Input) (baseCtx: IContext<Options>) =
  baseCtx.options.replaceAliasToFunction <- true
  baseCtx.options.replaceNewableFunction <- true
  baseCtx.options.replaceRankNFunction <- true

  let srcs =
    if baseCtx.options.typing then
      Typer.runAll input.sources baseCtx |> snd
    else
      input.sources
  let moduleName =
    JsHelper.deriveModuleName input.info (srcs |> List.map (fun src -> src.fileName))
  printfn "package info: %A" (JS.stringify input.info)
  printfn "sources: %A" (srcs |> List.map (fun src -> src.fileName))
  printfn "derived module name: %A" moduleName
  match baseCtx.options.dumpAst with
  | None -> ()
  | Some output ->
    let o = [|
      for src in input.sources do
        yield
          {| file = src.fileName;
             moduleName = src.moduleName;
             statements = src.statements |> List.toArray |}
    |]
    Node.Api.fs.writeFileSync(output, stringify o)

let target =
  { new ITarget<Options> with
      member __.Command = "parser-test"
      member __.Description = "Test the parser"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }