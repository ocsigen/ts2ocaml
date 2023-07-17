module Targets.ReScript.Common

open Fable.Core
open Ts2Ml
open DataTypes

[<StringEnum; RequireQualifiedAccess>]
type Simplify =
  | [<CompiledName("all")>] All
  | [<CompiledName("immediate-instance")>] ImmediateInstance
  | [<CompiledName("immediate-constructor")>] ImmediateConstructor
  | [<CompiledName("anonymous-interface-value")>] AnonymousInterfaceValue
  | [<CompiledName("named-interface-value")>] NamedInterfaceValue
  | [<CompiledName("off")>] Off
with
  static member Values = [|All; ImmediateInstance; ImmediateConstructor; AnonymousInterfaceValue; NamedInterfaceValue; Off|]

  static member Has (flags: Simplify list, target: Simplify) =
    if flags |> List.contains All then true
    else flags |> List.contains target

  static member TryParse (s: string) =
    match s with
    | "all" -> Some All
    | "immediate-instance" -> Some ImmediateInstance
    | "immediate-constructor" -> Some ImmediateConstructor
    | "anonymous-interface-value" -> Some AnonymousInterfaceValue
    | "named-interface-value" -> Some NamedInterfaceValue
    | _ -> None

[<StringEnum; RequireQualifiedAccess>]
type Subtyping =
  | [<CompiledName("tag")>] Tag
  | [<CompiledName("cast-function")>] CastFunction
  | [<CompiledName("off")>] Off
  | [<CompiledName("default")>] Default
with
  static member Values = [|Tag; CastFunction; Off; Default|]

  static member TryParse (s: string) =
    match s with
    | "tag" -> Some Tag
    | "cast-function" -> Some CastFunction
    | _ -> None

[<StringEnum; RequireQualifiedAccess>]
type Preset =
  | [<CompiledName("minimal")>] Minimal
  | [<CompiledName("safe")>] Safe
  | [<CompiledName("full")>] Full
with
  static member Values = [|Minimal; Safe; Full|]

[<StringEnum; RequireQualifiedAccess>]
type ModuleKind =
  | [<CompiledName("none")>] None
  | [<CompiledName("es")>] ES
  | [<CompiledName("cjs")>] CJS
  | [<CompiledName("default")>] Default
with
  static member Values = [|None; ES; CJS; Default|]

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  // general options
  abstract preset: Preset option with get
  abstract createStdlib: bool with get
  // JS options
  abstract ``module``: ModuleKind with get
  abstract name: string option with get
  // output options
  abstract outputDir: string option with get
  abstract resi: bool with get
  // typer options
  abstract numberAsInt: bool with get, set
  abstract subtyping: Subtyping list with get, set
  abstract inheritWithTags: FeatureFlag with get, set
  // code generator options
  abstract simplify: Simplify list with get, set
  abstract readableNames: bool with get, set
  abstract noTypesModule: bool with get, set

module Options =
  open Fable.Core.JsInterop

  let validate : Yargs.MiddlewareFunction<Options> =
    Yargs.MiddlewareFunction<Options>(fun opts yargs ->
      if isNullOrUndefined opts.subtyping then opts.subtyping <- []
      if isNullOrUndefined opts.simplify then opts.simplify <- []

      match opts.preset with
      | None -> ()
      | Some p ->
        Log.tracef opts "* using the preset '%s'." !!p

        let subtypingIsDefault =
          opts.subtyping = []

        if p = Preset.Minimal || p = Preset.Safe || p = Preset.Full then
          if opts.simplify = [] then
            opts.simplify <- [Simplify.All]

        if p = Preset.Safe || p = Preset.Full then
          if subtypingIsDefault then
            opts.subtyping <- Subtyping.CastFunction :: opts.subtyping

        if p = Preset.Full then
          if subtypingIsDefault then
            opts.subtyping <- Subtyping.Tag :: opts.subtyping
          if opts.inheritWithTags = FeatureFlag.Default then
            opts.inheritWithTags <- FeatureFlag.Full

      if opts.subtyping |> List.contains Subtyping.Tag |> not
      && opts.inheritWithTags <> FeatureFlag.Off
      && opts.inheritWithTags <> FeatureFlag.Default then
        eprintfn "error: --inherit-with-tags=%s requires --subtyping=tag." !!opts.inheritWithTags
        yargs.exit(-1, new System.ArgumentException("--inherit-with-tags requires --subtyping=tag."))

      !^opts)

  let register (yargs: Yargs.Argv<Options>) =
    yargs
      .group(
        !^ResizeArray[
          "create-stdlib"; "preset"
        ],
        "General Options:"
      )
      .addFlag(
        "create-stdlib",
        (fun (o:Options) -> o.createStdlib),
        descr="Create ts2ocaml.res.",
        defaultValue=false
      )
      .addChoice(
        "preset",
        Preset.Values,
        (fun (o: Options) -> o.preset),
        descr="Specify the preset to use."
      )
      .group(!^ResizeArray[], "Parser Options:")
      .group(
        !^ResizeArray[
          "module"; "name"
        ], "JS Module Options:")
      .addOption(
        "name",
        (fun (o: Options) -> o.name),
        descr="Override the JS module name used in the @module attribute (default: inferred from package.json).",
        alias="n"
      )
      .addChoice(
        "module",
        ModuleKind.Values,
        (fun (o: Options) -> o.``module``),
        descr="Override the JS module type (default: inferred from the input).",
        defaultValue=ModuleKind.Default
      )
      .group(
        !^ResizeArray[
          "output-dir"; "resi"
        ],
        "Output Options:"
      )
      .addOption(
        "output-dir",
        (fun (o: Options) -> o.outputDir),
        descr="The directory to place the generated bindings.\nIf not set, it will be the current directory.",
        alias="o")
      .addFlag(
        "resi",
        (fun (o: Options) -> o.resi),
        descr = "Generate interface file (.resi) too. --no-resi to disable.",
        defaultValue=true
      )

      .group(
        !^ResizeArray[
          "number-as-int";
          "subtyping";
          "inherit-with-tags";
        ],
        "Typer Options:")
      .addFlag(
        "number-as-int",
        (fun (o: Options) -> o.numberAsInt),
        descr="Treat number types as int.\nIf not set, float will be used.",
        defaultValue=false,
        alias="int")
      .addCommaSeparatedStringSet(
        "subtyping",
        Subtyping.TryParse,
        (fun (o: Options) -> o.subtyping),
        descr=
          sprintf "Turn on subtyping features. Available features: %s"
                  (Subtyping.Values |> Array.filter ((<>) Subtyping.Default) |> Array.map string |> String.concat ", "))
      .addChoice(
        "inherit-with-tags",
        FeatureFlag.Values,
        (fun (o: Options) -> o.inheritWithTags),
        descr="Require --subtyping=tag. Use `TypeName.tags` type names to inherit types from other packages.",
        defaultValue=FeatureFlag.Default)

      .group(
        !^ResizeArray[
          "simplify";
          "readable-names";
          "no-types-module"
        ],
        "Code Generator Options:")
      .addCommaSeparatedStringSet(
        "simplify",
        Simplify.TryParse,
        (fun (o: Options) -> o.simplify),
        descr=
          sprintf "Turn on simplification features. Available features: %s"
                  (Simplify.Values |> Array.map string |> String.concat ", "))
      .addFlag(
        "readable-names",
        (fun (o: Options) -> o.readableNames),
        descr="Try to use more readable names instead of AnonymousInterfaceN.",
        defaultValue = false
      )
      .addFlag(
        "no-types-module",
        (fun (o: Options) -> o.noTypesModule),
        descr="Unsafe. Do not emit Types module even if there are recursive modules.",
        defaultValue = false
      )

      .middleware(!^validate)


type Output = {
  baseName: string
  /// the content of `.resi` file
  resi: text option
  /// the content of `.res` file
  res: text
}

let [<ImportDefault("../../../dist/res/src/ts2ocaml.res?raw")>] stdlib: string = jsNative
