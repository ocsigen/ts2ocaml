module Target

open Typer
open Syntax
open Yargs

type ITarget<'Options> =
  abstract Command: string
  abstract Description: string
  abstract Builder:(Argv<GlobalOptions> -> Argv<'Options>)
  abstract Run: sources:SourceFile list * options:'Options -> unit

open Fable.Core
open Fable.Core.JsInterop

let register (parse: GlobalOptions -> string[] -> SourceFile list) (target: ITarget<'Options>) (argv: Argv<GlobalOptions>) =
  argv.command(
    U2.Case1 (target.Command + " <inputs..>"),
    target.Description,
    builder = U3.Case2 (fun argv ->
      (target.Builder argv).positional("inputs", {| describe = ".d.ts files to generate a binding" |})
    ),
    handler = (fun (argv: Arguments<'Options>) ->
      let inputs = argv.["inputs"] :?> string[]
      let srcs = parse !!argv.Options inputs
      try
        target.Run(srcs, argv.Options)
      with
        e -> eprintfn "error: %s" e.Message
      ))
  |> box
  :?> Argv<GlobalOptions>