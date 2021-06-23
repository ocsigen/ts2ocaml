module Target.JsOfOCaml

open Syntax
open Typer

open Target.JsOfOCaml.Common
open Target.JsOfOCaml.Writer
open Fable.Core.JsInterop

let private builder (argv: Yargs.Argv<GlobalOptions>) : Yargs.Argv<Options> =
  argv
      .addFlag("stdlib", (fun x o -> {| o with generateStdlib = x |}), descr = "Internal. Used to generate Ts2ocaml.mli from typescript/lib/lib.*.d.ts")
      .hide("stdlib")
      .addFlag("number-as-int", (fun x o -> {| o with treatNumberAsInt = x |}), descr="Treat number types as int")
      .alias(!^"int", !^"number-as-int")

let private run (ctx: Context) (srcs: SourceFile list) (options: Options) =
  eprintfn "* emitting a binding for js_of_ocaml..."
  emitAll ctx srcs |> Text.toString 2 |> printfn "%s"

let target =
  { new ITarget<Options> with
      member __.Command = "jsoo"
      member __.Description = "Generate binding for js_of_ocaml"
      member __.Builder = builder
      member __.Run (ctx, srcs, options) = run ctx srcs options }