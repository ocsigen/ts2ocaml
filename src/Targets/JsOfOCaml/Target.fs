module Target.JsOfOCaml

open Syntax
open Typer

open Target.JsOfOCaml.Common
open Target.JsOfOCaml.Writer
open Fable.Core.JsInterop

let private builder (argv: Yargs.Argv<Options>) : Yargs.Argv<Options> =
  argv
      .addFlag("stdlib", (fun (o: Options) -> o.stdlib), descr = "Internal. Used to generate Ts2ocaml.mli from typescript/lib/lib.*.d.ts.")
      .hide("stdlib")
      .addFlag("number-as-int", (fun (o: Options) -> o.numberAsInt), descr="Treat number types as int.")
      .alias(!^"int", !^"number-as-int")
      .addFlag("use-tags-to-inherit-unknown-types", (fun (o: Options) -> o.useTagsToInheritUnknownTypes), descr="Use `TypeName.tags` to inherit an unknown type.")
      .alias(!^"tags", !^"use-tags-to-inherit-unknown-types")
      .addFlag("use-exact-arity-for-unknown-types", (fun (o: Options) -> o.useExactArityForUnknownTypes), descr="Use `TypeName.t_n` for an N-ary unknown type.")
      .alias(!^"exact-arity", !^"use-exact-arity-for-unknown-types")
      .addChoice("use-recursive-modules", [|Optimized; Naive; Off|], (fun (o: Options) -> o.useRecursiveModules), descr="Use recursive modules to simplify the output. Can impact the compilation time.", defaultValue=Optimized)
      .alias(!^"use-recursive-modules", !^"rec-module")
      .addFlag(
        "simplify-immediate-instance",
        (fun (o: Options) -> o.simplifyImmediateInstance),
        defaultValue=false)
      .addFlag(
        "simplify-immediate-constructor",
        (fun (o: Options) -> o.simplifyImmediateConstructor),
        defaultValue=false)

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