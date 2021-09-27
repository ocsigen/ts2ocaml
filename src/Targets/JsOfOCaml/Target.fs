module Target.JsOfOCaml

open Syntax
open Typer

open Target.JsOfOCaml.Common
open Target.JsOfOCaml.Writer
open Fable.Core.JsInterop

let private builder (argv: Yargs.Argv<Options>) : Yargs.Argv<Options> =
  argv
      .group(
        !^ResizeArray[
          "output-dir"; "stub-file"
        ],
        "Output Options:"
      )
      .addOption(
        "output-dir",
        (fun (o: Options) -> o.outputDir),
        descr="The directory to place the generated bindings.\nIf not set, it will be the current directory.",
        alias="o")
      .addOption(
        "stub-file",
        (fun (o: Options) -> o.stubFile),
        descr="The name of the JS stub file to import/require JS modules.\nIf not set, it will be 'stub.js'.",
        defaultValue="stub.js",
        defaultDescr="stub.js",
        alias="s")

      .group(
        !^ResizeArray[
          "number-as-int"; "inherit-with-tags";
          "safe-arity"; "rec-module";
          "simplify-immediate-instance"; "simplify-immediate-constructor"
        ],
        "Code Generator Options:")
      .addFlag(
        "number-as-int",
        (fun (o: Options) -> o.numberAsInt),
        descr="Treat number types as int.\nIf not set, float will be used.",
        defaultValue=false,
        alias="int")
      .addChoice(
        "inherit-with-tags",
        [|FeatureFlag.Full; FeatureFlag.Provide; FeatureFlag.Consume; FeatureFlag.Off|],
        (fun (o: Options) -> o.safeArity),
        descr="Use `TypeName.tags` type names to inherit types from other packages.",
        defaultValue=FeatureFlag.Full)
      .addChoice(
        "safe-arity",
        [|FeatureFlag.Full; FeatureFlag.Provide; FeatureFlag.Consume; FeatureFlag.Off|],
        (fun (o: Options) -> o.safeArity),
        descr="Use `TypeName.t_n` type names to safely use overloaded types from other packages.",
        defaultValue=FeatureFlag.Full)
      .addChoice(
        "rec-module",
        [|RecModule.Optimized; RecModule.Naive; RecModule.Off|],
        (fun (o: Options) -> o.recModule),
        descr="Use recursive modules to simplify the output.\nCan impact the compilation time.",
        defaultValue=RecModule.Optimized)
      .addFlag(
        "simplify-immediate-instance",
        (fun (o: Options) -> o.simplifyImmediateInstance),
        descr="Simplify\n\ninterface Foo { .. }\nvar Foo: Foo;\n\nto one module.",
        defaultValue=true)
      .addFlag(
        "simplify-immediate-constructor",
        (fun (o: Options) -> o.simplifyImmediateConstructor),
        descr="Simplify\n\ninterface Foo { .. }\ninterface FooConstructor { .. }\nvar Foo: FooConstructor;\n\nto one module.",
        defaultValue=true)

      .addFlag("stdlib", (fun (o: Options) -> o.stdlib), descr = "Internal. Used to generate Ts2ocaml.mli from typescript/lib/lib.*.d.ts.").hide("stdlib")

let private run (srcs: SourceFile list) (options: Options) =
  let outputDir =
    let curdir = Node.Api.``process``.cwd()
    match options.outputDir with
    | None -> curdir
    | Some dir ->
      let path = Node.Api.path.join [|curdir; dir|]
      let fail () =
        failwithf "The output directory '%s' does not exist." path
      try
        if Node.Api.fs.lstatSync(!^path).isDirectory() then path
        else fail ()
      with
        _ -> fail ()

  let result =
    if options.stdlib then
      emitStdlib srcs options
    else
      emitEverythingCombined srcs options

  let fullPath = Node.Api.path.join[|outputDir; result.fileName|]
  Log.tracef options "* writing the binding to '%s'..." fullPath
  Node.Api.fs.writeFileSync(fullPath, Text.toString 2 result.content)

  let stubFile = Node.Api.path.join [|outputDir; options.stubFile|]
  if not (List.isEmpty result.stubLines) then
    let existingStubLines =
      if not (Node.Api.fs.existsSync(!^stubFile)) then Set.empty
      else if Node.Api.fs.lstatSync(!^stubFile).isFile() then
        Node.Api.fs.readFileSync(stubFile, "UTF-8")
                   .Split([|Node.Api.os.EOL|], System.StringSplitOptions.RemoveEmptyEntries)
        |> Set.ofArray
      else
        failwithf "The path '%s' is not a file." stubFile
    let stubLines = Set.union existingStubLines (Set.ofList result.stubLines)
    if stubLines <> existingStubLines then
      Log.tracef options "* writing the stub file to '%s'..." stubFile
      let stub = stubLines |> String.concat Node.Api.os.EOL
      Node.Api.fs.writeFileSync(stubFile, stub)

let target =
  { new ITarget<Options> with
      member __.Command = "jsoo"
      member __.Description = "Generate binding for js_of_ocaml"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }