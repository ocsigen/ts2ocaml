module Targets.ParserTest

open Syntax
open Target

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  abstract typing: bool with get

let private builder (argv: Yargs.Argv<Options>) : Yargs.Argv<Options> =
  argv.addFlag("typing", (fun (o: Options) -> o.typing), descr="Apply typer")

let private run (srcs: SourceFile list) (options: Options) =
  let srcs =
    if options.typing then
      Typer.runAll srcs options |> snd
    else
      srcs
  for src in srcs do
    printfn "source: %s" src.fileName
    for stmt in src.statements do
      printfn "%A" stmt
    printfn ""

let target =
  { new ITarget<Options> with
      member __.Command = "parser-test"
      member __.Description = "Test the parser"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }