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

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  // general options
  abstract preset: Preset option with get
  abstract createMinimalStdlib: bool with get
  abstract stdlib: bool with get // hidden
  // output options
  abstract outputDir: string option with get
  // code generator options
  abstract numberAsInt: bool with get, set
  abstract subtyping: Subtyping list with get, set
  abstract inheritWithTags: FeatureFlag with get, set
  abstract safeArity: FeatureFlag with get, set
  abstract simplify: Simplify list with get, set
  abstract readableNames: bool with get, set

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
          if opts.safeArity = FeatureFlag.Default then
            opts.safeArity <- FeatureFlag.Full
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
          "create-minimal-stdlib"; "stdlib"; "preset"
        ],
        "General Options:"
      )
      .addFlag(
        "create-minimal-stdlib",
        (fun (o:Options) -> o.createMinimalStdlib),
        descr="Create ts2ocaml_min.mli. When this option is used, most of the other options are ignored.",
        defaultValue=false
      )
      .addFlag(
        "stdlib",
        (fun (o: Options) -> o.stdlib),
        descr = "Internal. Used to generate Ts2ocaml.mli from typescript/lib/lib.*.d.ts."
      ).hide("stdlib")
      .addChoice(
        "preset",
        Preset.Values,
        (fun (o: Options) -> o.preset),
        descr="Specify the preset to use."
      )
      .group(!^ResizeArray[], "Parser Options:")
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
          "safe-arity";
          "rec-module";
          "simplify";
          "human-readable-anonymous-interface-names";
          "functor"
        ],
        "Code Generator Options:")
      .addChoice(
        "safe-arity",
        FeatureFlag.Values,
        (fun (o: Options) -> o.safeArity),
        descr="Use `TypeName.t_n` type names to safely use overloaded types from other packages.",
        defaultValue=FeatureFlag.Default)
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

      .middleware(!^validate)


type Output = {
  fileName: string
  content: text
  stubLines: string list
}