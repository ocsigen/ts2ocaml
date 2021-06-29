module Target.JsOfOCaml

open Syntax
open Typer

open Target.JsOfOCaml.Common
open Target.JsOfOCaml.Writer
open Fable.Core.JsInterop

let private builder (argv: Yargs.Argv<GlobalOptions>) : Yargs.Argv<Options> =
  argv
      .addFlag("stdlib", (fun x o -> {| o with stdlib = x |}), descr = "Internal. Used to generate Ts2ocaml.mli from typescript/lib/lib.*.d.ts")
      .hide("stdlib")
      .addFlag("number-as-int", (fun x o -> {| o with numberAsInt = x |}), descr="Treat number types as int")
      .alias(!^"int", !^"number-as-int")

let private run (srcs: SourceFile list) (options: Options) =
  let result =
    if options.stdlib then
      emitStdlib srcs options
    else
      emitEverythingCombined srcs options
  result |> Text.toString 2 |> System.Console.WriteLine

let target =
  { new ITarget<Options> with
      member __.Command = "jsoo"
      member __.Description = "Generate binding for js_of_ocaml"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }