module Targets.ParserTest

open Ts2Ml
open Syntax
open Target
open DataTypes

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
  baseCtx.options.inheritArraylike <- true
  baseCtx.options.inheritIterable <- true
  baseCtx.options.inheritPromiselike <- true

  let ctx, srcs =
    if baseCtx.options.typing then
      Typer.runAll input.sources baseCtx
    else
      Typer.createRootContext input.sources baseCtx, input.sources
  let moduleName =
    JsHelper.deriveModuleName input.info (srcs |> List.map (fun src -> src.fileName))
  printfn "package info: %A" (JS.stringify input.info)
  printfn "sources: %A" (srcs |> List.map (fun src -> src.fileName))
  printfn "derived module name: %A" moduleName
  match baseCtx.options.dumpAst with
  | None -> ()
  | Some output ->
    let sources = [|
      for src in input.sources do
        yield
          {| file = src.fileName;
             statements = src.statements |> List.toArray |}
    |]
    let info = [|
      for KeyValue(src, info) in ctx.info do
        let trie = JSObj.empty
        for key in info.definitionsMap |> Trie.keys do
          key |> List.fold (fun (o: JSObj) k ->
            match o.[k] with
            | Some o -> o
            | None ->
              let o' = JSObj.empty
              o.[k] <- o'
              o'
          ) trie |> ignore
        let ais = JSObj.empty
        for _, ai in info.anonymousInterfacesMap |> Map.toArray do
          ais.[string ai.id] <-
            JSObj.box {| origin = ai.origin; path = ai.namespace_ |}
        yield {| file = src; trie = trie; anonymousInterfaces = ais |}
    |]
    let o = {| sources = sources; info = info |}
    Node.Api.fs.writeFileSync(output, stringify o)

let target =
  { new ITarget<Options> with
      member __.Command = "parser-test"
      member __.Description = "Test the parser"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }