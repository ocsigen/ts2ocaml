module Target.ParserTest
open Syntax

type Options = {|
  verbose: bool
  typing: bool
|}

let private builder (argv: Yargs.Argv<GlobalOptions>) : Yargs.Argv<Options> =
  argv.addFlag("typing", (fun x o -> {| o with typing = x |}), descr="Apply typer")

let private run (srcs: SourceFile list) (options: Options) =
  let srcs =
    if options.typing then
      Typer.runAll srcs {| verbose = options.verbose |} |> snd
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