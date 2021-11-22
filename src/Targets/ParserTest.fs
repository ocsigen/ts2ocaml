module Targets.ParserTest

open Syntax
open Target

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  abstract typing: bool with get

let private builder (argv: Yargs.Argv<Options>) : Yargs.Argv<Options> =
  argv.addFlag("typing", (fun (o: Options) -> o.typing), descr="Apply typer")

let private run (input: Input) (options: Options) =
  let srcs =
    if options.typing then
      Typer.runAll input.sources options |> snd
    else
      input.sources
  let moduleName =
    JsHelper.deriveModuleName input.info (srcs |> List.map (fun src -> src.fileName))
  printfn "package info: %A" (JS.stringify input.info)
  printfn "sources: %A" (srcs |> List.map (fun src -> src.fileName))
  printfn "derived module name: %A" moduleName

let target =
  { new ITarget<Options> with
      member __.Command = "parser-test"
      member __.Description = "Test the parser"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }