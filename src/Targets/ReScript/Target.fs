module Targets.ReScript.Target

open Ts2Ml
open Syntax
open DataTypes

open Target
open Targets.ReScript.Common
open Targets.ReScript.Writer

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
        failwithf "The output directory '%s' does not exist." path
      try
        if Node.Api.fs.lstatSync(!^path).isDirectory() then path
        else fail ()
      with
        _ -> fail ()

  let results =
    let result =
      if ctx.options.createStdlib then
        [{ baseName = "ts2ocaml"; res = Text.str stdlib; resi = None }]
      else []
    if List.isEmpty input.sources then result
    else
      result @ emit input ctx

  if results = [] then
    ctx.logger.warnf "no input files are given."

  for result in results do
    let fileName = result.baseName + ".res"
    let fullPath = Node.Api.path.join[|outputDir; fileName|]
    ctx.logger.tracef "* writing the binding to '%s'..." fullPath
    Node.Api.fs.writeFileSync(fullPath, Text.toString 2 result.res)
    match result.resi with
    | None -> ()
    | Some resi ->
      let fileName = result.baseName + ".resi"
      let fullPath = Node.Api.path.join[|outputDir; fileName|]
      Node.Api.fs.writeFileSync(fullPath, Text.toString 2 resi)

let target =
  { new ITarget<Options> with
      member __.Command = "res"
      member __.Description = "Generate binding for ReScript"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }