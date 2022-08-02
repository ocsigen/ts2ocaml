module Targets.JsOfOCaml.Target

open Ts2Ml
open Syntax
open DataTypes

open Target
open Targets.JsOfOCaml.Common
open Targets.JsOfOCaml.Writer
open Fable.Core.JsInterop

let private builder (argv: Yargs.Argv<Options>) : Yargs.Argv<Options> =
  argv |> Options.register

let private run (input: Input) (ctx: IContext<Options>) =
  let outputDir =
    let curdir = Node.Api.``process``.cwd()
    match ctx.options.outputDir with
    | None -> curdir
    | Some dir ->
      let path =
        if Node.Api.path.isAbsolute dir then dir
        else Node.Api.path.join [|curdir; dir|]
      let fail () =
        ctx.logger.errorf "The output directory '%s' does not exist." path
      try
        if Node.Api.fs.lstatSync(!^path).isDirectory() then path
        else fail ()
      with
        _ -> fail ()

  let results =
    let result =
      if ctx.options.createMinimalStdlib then
        [{ fileName = "ts2ocaml_min.mli"; content = Text.str stdlib; stubLines = [] }]
      else []
    if List.isEmpty input.sources then result
    else if ctx.options.stdlib then
      result @ emitStdlib input ctx
    else
      result @ emit input ctx

  if results = [] then
    ctx.logger.warnf "no input files are given."

  for result in results do
    let fullPath = Node.Api.path.join[|outputDir; result.fileName|]
    ctx.logger.tracef "* writing the binding to '%s'..." fullPath
    Node.Api.fs.writeFileSync(fullPath, Text.toString 2 result.content)

  let newStubLines =
    results |> List.collect (fun result -> result.stubLines) |> Set.ofList

  if not (Set.isEmpty newStubLines) then
    let stubFile = Node.Api.path.join [|outputDir; ctx.options.stubFile|]
    let existingStubLines =
      if not (Node.Api.fs.existsSync(!^stubFile)) then Set.empty
      else if Node.Api.fs.lstatSync(!^stubFile).isFile() then
        Node.Api.fs.readFileSync(stubFile, "UTF-8")
                    .Split([|Node.Api.os.EOL|], System.StringSplitOptions.RemoveEmptyEntries)
        |> Set.ofArray
      else
        ctx.logger.errorf "The path '%s' is not a file." stubFile
    let stubLines = Set.union existingStubLines newStubLines
    if stubLines <> existingStubLines then
      ctx.logger.tracef "* writing the stub file to '%s'..." stubFile
      let stub = stubLines |> String.concat Node.Api.os.EOL
      Node.Api.fs.writeFileSync(stubFile, stub)

let target =
  { new ITarget<Options> with
      member __.Command = "jsoo"
      member __.Description = "Generate binding for js_of_ocaml"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }