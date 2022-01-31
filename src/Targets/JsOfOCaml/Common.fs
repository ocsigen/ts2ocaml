module Targets.JsOfOCaml.Common

open Fable.Core
open Ts2Ml
open DataTypes

[<StringEnum; RequireQualifiedAccess>]
type RecModule =
  | [<CompiledName("optimized")>] Optimized
  | [<CompiledName("naive")>] Naive
  | [<CompiledName("off")>] Off
  | [<CompiledName("default")>] Default
with
  static member Values = [|Optimized; Naive; Off; Default|]

  member this.IsOffOrDefault = match this with Off | Default -> true | _ -> false

[<StringEnum; RequireQualifiedAccess>]
type FeatureFlag =
  | [<CompiledName("full")>] Full
  | [<CompiledName("provide")>] Provide
  | [<CompiledName("consume")>] Consume
  | [<CompiledName("off")>] Off
  | [<CompiledName("default")>] Default
with
  static member Values = [|Full; Provide; Consume; Off; Default|]

  member this.HasProvide = match this with Full | Provide -> true | _ -> false
  member this.HasConsume = match this with Full | Consume -> true | _ -> false
  member this.IsOffOrDefault = match this with Off | Default -> true | _ -> false

  member this.WithProvide(b: bool) =
    match this with
    | Provide | Off | Default -> if b then Provide else Off
    | Full | Consume -> if b then Full else Consume

  member this.WithConsume(b: bool) =
    match this with
    | Consume | Off | Default -> if b then Consume else Off
    | Full | Provide -> if b then Full else Provide

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
  abstract stubFile: string with get
  // code generator options
  abstract numberAsInt: bool with get, set
  abstract subtyping: Subtyping list with get, set
  abstract inheritWithTags: FeatureFlag with get, set
  abstract recModule: RecModule with get, set
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
          if opts.recModule = RecModule.Default then
            opts.recModule <- RecModule.Optimized

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
      .addOption(
        "stub-file",
        (fun (o: Options) -> o.stubFile),
        descr="The name of the JS stub file to import/require JS modules.\nIf not set, it will be 'stub.js'.",
        defaultValue="stub.js",
        defaultDescr="stub.js",
        alias="s")

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
          "human-readable-anonymous-interface-names"
        ],
        "Code Generator Options:")
      .addChoice(
        "safe-arity",
        FeatureFlag.Values,
        (fun (o: Options) -> o.safeArity),
        descr="Use `TypeName.t_n` type names to safely use overloaded types from other packages.",
        defaultValue=FeatureFlag.Default)
      .addChoice(
        "rec-module",
        RecModule.Values,
        (fun (o: Options) -> o.recModule),
        descr="Use recursive modules to simplify the output.\nCan impact the compilation time.",
        defaultValue=RecModule.Default)
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

let stdlib = """[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem
  [@@@ocaml.warning "-7-11-32-33-39"]
]

type never = private Ojs.t
val never_to_js: never -> Ojs.t
val never_of_js: Ojs.t -> never
module Never: sig
  type t = never
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val absurd: t -> 'a
  [@@js.custom
    exception Ts_Never
    let absurd _ = raise Ts_Never
  ]
end

type any = Ojs.t
val any_to_js: any -> Ojs.t
val any_of_js: Ojs.t -> any
module Any: sig
  type t = any
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val cast_from: 'a -> t
  [@@js.custom let cast_from x = Obj.magic x]
  val unsafe_cast_to: t -> 'a
  [@@js.custom let unsafe_cast_to x = Obj.magic x]
end

type unknown = private Ojs.t
val unknown_to_js: unknown -> Ojs.t
val unknown_of_js: Ojs.t -> unknown
module Unknown: sig
  type t = unknown
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val unsafe_cast: t -> 'a
  [@@js.custom
    let unsafe_cast x = Obj.magic x
  ]
end

[@@@js.stop]
type -'tags intf = private Ojs.t
val intf_to_js: ('tags -> Ojs.t) -> 'tags intf -> Ojs.t
val intf_of_js: (Ojs.t -> 'tags) -> Ojs.t -> 'tags intf
[@@@js.start]
[@@@js.implem
  type -'tags intf = Ojs.t
  let intf_to_js _ x : Ojs.t = x
  let intf_of_js _ x : _ intf = x
]
module Intf : sig
  type 'tags t = 'tags intf
  val t_to_js: ('tags -> Ojs.t) -> 'tags t -> Ojs.t
  val t_of_js: (Ojs.t -> 'tags) -> Ojs.t -> 'tags t
end

type untyped_object = [`Object] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val untyped_object_of_js: Ojs.t -> untyped_object
val untyped_object_to_js: untyped_object -> Ojs.t
(* module will be generated in ts2ocaml_es.mli *)

type untyped_function = [`Function] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val untyped_function_of_js: Ojs.t -> untyped_function
val untyped_function_to_js: untyped_function -> Ojs.t
(* module will be generated in ts2ocaml_es.mli *)

type js_bool = [`Boolean] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val js_bool_of_js: Ojs.t -> js_bool
val js_bool_to_js: js_bool -> Ojs.t
(* module will be generated in ts2ocaml_es.mli *)

type symbol = [`Symbol] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val symbol_of_js: Ojs.t -> symbol
val symbol_to_js: symbol -> Ojs.t
(* module will be generated in ts2ocaml_es.mli *)

type regexp = [`RegExp] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val regexp_of_js: Ojs.t -> regexp
val regexp_to_js: regexp -> Ojs.t
(* module will be generated in ts2ocaml_es.mli *)

type bigint = [`BigInt] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val bigint_of_js: Ojs.t -> bigint
val bigint_to_js: bigint -> Ojs.t
(* module will be generated in ts2ocaml_es.mli *)

type 'a or_null = 'a option
val or_null_to_js: ('a -> Ojs.t) -> 'a or_null -> Ojs.t
val or_null_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_null
type 'a or_undefined = 'a option
val or_undefined_to_js: ('a -> Ojs.t) -> 'a or_undefined -> Ojs.t
val or_undefined_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_undefined
type 'a or_null_or_undefined = 'a option
val or_null_or_undefined_to_js: ('a -> Ojs.t) -> 'a or_null_or_undefined -> Ojs.t
val or_null_or_undefined_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_null_or_undefined

type js_string = [`String | `ArrayLike of js_string | `IterableIterator of js_string | `Iterator of (js_string * any * never or_undefined)] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val js_string_of_js: Ojs.t -> js_string
val js_string_to_js: js_string -> Ojs.t
(* module will be generated in ts2ocaml_es.mli *)

module Intersection : sig
  [@@@js.stop]
  type -'cases t = private Ojs.t
  val t_to_js: ('cases -> Ojs.t) -> 'cases t -> Ojs.t
  val t_of_js: (Ojs.t -> 'cases) -> Ojs.t -> 'cases t
  [@@@js.start]
  [@@@js.implem
  type -'cases t = Ojs.t
  let t_to_js _ x : Ojs.t = x
  let t_of_js _ x : _ t = x
  ]

  val get_1: [> `I1 of 't1] t -> 't1 [@@js.custom let get_1 x = Obj.magic x]
  val get_2: [> `I2 of 't2] t -> 't2 [@@js.custom let get_2 x = Obj.magic x]
  val get_3: [> `I3 of 't3] t -> 't3 [@@js.custom let get_3 x = Obj.magic x]
  val get_4: [> `I4 of 't4] t -> 't4 [@@js.custom let get_4 x = Obj.magic x]
  val get_5: [> `I5 of 't5] t -> 't5 [@@js.custom let get_5 x = Obj.magic x]
  val get_6: [> `I6 of 't6] t -> 't6 [@@js.custom let get_6 x = Obj.magic x]
  val get_7: [> `I7 of 't7] t -> 't7 [@@js.custom let get_7 x = Obj.magic x]
  val get_8: [> `I8 of 't8] t -> 't8 [@@js.custom let get_8 x = Obj.magic x]
  val get_1': (Ojs.t -> 't1) -> [> `I1 of 't1] t -> 't1 [@@js.custom let get_1' f x = f (x :> Ojs.t)]
  val get_2': (Ojs.t -> 't2) -> [> `I2 of 't2] t -> 't2 [@@js.custom let get_2' f x = f (x :> Ojs.t)]
  val get_3': (Ojs.t -> 't3) -> [> `I3 of 't3] t -> 't3 [@@js.custom let get_3' f x = f (x :> Ojs.t)]
  val get_4': (Ojs.t -> 't4) -> [> `I4 of 't4] t -> 't4 [@@js.custom let get_4' f x = f (x :> Ojs.t)]
  val get_5': (Ojs.t -> 't5) -> [> `I5 of 't5] t -> 't5 [@@js.custom let get_5' f x = f (x :> Ojs.t)]
  val get_6': (Ojs.t -> 't6) -> [> `I6 of 't6] t -> 't6 [@@js.custom let get_6' f x = f (x :> Ojs.t)]
  val get_7': (Ojs.t -> 't7) -> [> `I7 of 't7] t -> 't7 [@@js.custom let get_7' f x = f (x :> Ojs.t)]
  val get_8': (Ojs.t -> 't8) -> [> `I8 of 't8] t -> 't8 [@@js.custom let get_8' f x = f (x :> Ojs.t)]
end

type ('t1, 't2) intersection2 = [`I1 of 't1 | `I2 of 't2] Intersection.t [@@js.custom {of_js=(fun _ _ -> Obj.magic);to_js = (fun _ _ -> Obj.magic)}]
type ('t1, 't2, 't3) intersection3 = [`I1 of 't1 | `I2 of 't2 | `I3 of 't3] Intersection.t [@@js.custom {of_js=(fun _ _ _ -> Obj.magic);to_js = (fun _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4) intersection4 = [`I1 of 't1 | `I2 of 't2 | `I3 of 't3 | `I4 of 't4] Intersection.t [@@js.custom {of_js=(fun _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5) intersection5 = [`I1 of 't1 | `I2 of 't2 | `I3 of 't3 | `I4 of 't4 | `I5 of 't5] Intersection.t [@@js.custom {of_js=(fun _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5, 't6) intersection6 = [`I1 of 't1 | `I2 of 't2 | `I3 of 't3 | `I4 of 't4 | `I5 of 't5 | `I6 of 't6] Intersection.t [@@js.custom {of_js=(fun _ _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5, 't6, 't7) intersection7 = [`I1 of 't1 | `I2 of 't2 | `I3 of 't3 | `I4 of 't4 | `I5 of 't5 | `I6 of 't6 | `I7 of 't7] Intersection.t [@@js.custom {of_js=(fun _ _ _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ _ _-> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5, 't6, 't7, 't8) intersection8 = [`I1 of 't1 | `I2 of 't2 | `I3 of 't3 | `I4 of 't4 | `I5 of 't5 | `I6 of 't6 | `I7 of 't7 | `I8 of 't8] Intersection.t [@@js.custom {of_js=(fun _ _ _ _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ _ _ _ -> Obj.magic)}]

val intersection2_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) intersection2 -> Ojs.t
val intersection2_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) intersection2
val intersection3_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('a, 'b, 'c) intersection3 -> Ojs.t
val intersection3_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> Ojs.t -> ('a, 'b, 'c) intersection3
val intersection4_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('a, 'b, 'c, 'd) intersection4 -> Ojs.t
val intersection4_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> Ojs.t -> ('a, 'b, 'c, 'd) intersection4
val intersection5_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e) intersection5 -> Ojs.t
val intersection5_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e) intersection5
val intersection6_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f) intersection6 -> Ojs.t
val intersection6_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f) intersection6
val intersection7_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7 -> Ojs.t
val intersection7_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7
val intersection8_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('h -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8 -> Ojs.t
val intersection8_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> (Ojs.t -> 'h) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8

module Union : sig
  [@@@js.stop]
  type +'cases t = private Ojs.t
  val t_to_js: ('cases -> Ojs.t) -> 'cases t -> Ojs.t
  val t_of_js: (Ojs.t -> 'cases) -> Ojs.t -> 'cases t
  [@@@js.start]
  [@@@js.implem
  type +'cases t = Ojs.t
  let t_to_js _ x : Ojs.t = x
  let t_of_js _ x : _ t = x
  ]

  val inject_1: 't1 -> [> `U1 of 't1] t [@@js.custom let inject_1 x = Obj.magic x]
  val inject_2: 't2 -> [> `U2 of 't2] t [@@js.custom let inject_2 x = Obj.magic x]
  val inject_3: 't3 -> [> `U3 of 't3] t [@@js.custom let inject_3 x = Obj.magic x]
  val inject_4: 't4 -> [> `U4 of 't4] t [@@js.custom let inject_4 x = Obj.magic x]
  val inject_5: 't5 -> [> `U5 of 't5] t [@@js.custom let inject_5 x = Obj.magic x]
  val inject_6: 't6 -> [> `U6 of 't6] t [@@js.custom let inject_6 x = Obj.magic x]
  val inject_7: 't7 -> [> `U7 of 't7] t [@@js.custom let inject_7 x = Obj.magic x]
  val inject_8: 't8 -> [> `U8 of 't8] t [@@js.custom let inject_8 x = Obj.magic x]
  val inject_1': ('t1 -> Ojs.t) -> 't1 -> [> `U1 of 't1] t [@@js.custom let inject_1' f x = Obj.magic (f x)]
  val inject_2': ('t2 -> Ojs.t) -> 't2 -> [> `U2 of 't2] t [@@js.custom let inject_2' f x = Obj.magic (f x)]
  val inject_3': ('t3 -> Ojs.t) -> 't3 -> [> `U3 of 't3] t [@@js.custom let inject_3' f x = Obj.magic (f x)]
  val inject_4': ('t4 -> Ojs.t) -> 't4 -> [> `U4 of 't4] t [@@js.custom let inject_4' f x = Obj.magic (f x)]
  val inject_5': ('t5 -> Ojs.t) -> 't5 -> [> `U5 of 't5] t [@@js.custom let inject_5' f x = Obj.magic (f x)]
  val inject_6': ('t6 -> Ojs.t) -> 't6 -> [> `U6 of 't6] t [@@js.custom let inject_6' f x = Obj.magic (f x)]
  val inject_7': ('t7 -> Ojs.t) -> 't7 -> [> `U7 of 't7] t [@@js.custom let inject_7' f x = Obj.magic (f x)]
  val inject_8': ('t8 -> Ojs.t) -> 't8 -> [> `U8 of 't8] t [@@js.custom let inject_8' f x = Obj.magic (f x)]

  val unsafe_get_1: [> `U1 of 't1] t -> 't1 [@@js.custom let unsafe_get_1 x = Obj.magic x]
  val unsafe_get_2: [> `U2 of 't2] t -> 't2 [@@js.custom let unsafe_get_2 x = Obj.magic x]
  val unsafe_get_3: [> `U3 of 't3] t -> 't3 [@@js.custom let unsafe_get_3 x = Obj.magic x]
  val unsafe_get_4: [> `U4 of 't4] t -> 't4 [@@js.custom let unsafe_get_4 x = Obj.magic x]
  val unsafe_get_5: [> `U5 of 't5] t -> 't5 [@@js.custom let unsafe_get_5 x = Obj.magic x]
  val unsafe_get_6: [> `U6 of 't6] t -> 't6 [@@js.custom let unsafe_get_6 x = Obj.magic x]
  val unsafe_get_7: [> `U7 of 't7] t -> 't7 [@@js.custom let unsafe_get_7 x = Obj.magic x]
  val unsafe_get_8: [> `U8 of 't8] t -> 't8 [@@js.custom let unsafe_get_8 x = Obj.magic x]
  val unsafe_get_1': (Ojs.t -> 't1) -> [> `U1 of 't1] t -> 't1 [@@js.custom let unsafe_get_1' f x = f (x :> Ojs.t)]
  val unsafe_get_2': (Ojs.t -> 't2) -> [> `U2 of 't2] t -> 't2 [@@js.custom let unsafe_get_2' f x = f (x :> Ojs.t)]
  val unsafe_get_3': (Ojs.t -> 't3) -> [> `U3 of 't3] t -> 't3 [@@js.custom let unsafe_get_3' f x = f (x :> Ojs.t)]
  val unsafe_get_4': (Ojs.t -> 't4) -> [> `U4 of 't4] t -> 't4 [@@js.custom let unsafe_get_4' f x = f (x :> Ojs.t)]
  val unsafe_get_5': (Ojs.t -> 't5) -> [> `U5 of 't5] t -> 't5 [@@js.custom let unsafe_get_5' f x = f (x :> Ojs.t)]
  val unsafe_get_6': (Ojs.t -> 't6) -> [> `U6 of 't6] t -> 't6 [@@js.custom let unsafe_get_6' f x = f (x :> Ojs.t)]
  val unsafe_get_7': (Ojs.t -> 't7) -> [> `U7 of 't7] t -> 't7 [@@js.custom let unsafe_get_7' f x = f (x :> Ojs.t)]
  val unsafe_get_8': (Ojs.t -> 't8) -> [> `U8 of 't8] t -> 't8 [@@js.custom let unsafe_get_8' f x = f (x :> Ojs.t)]
end

type ('t1, 't2) union2 = [`U1 of 't1 | `U2 of 't2] Union.t [@@js.custom {of_js=(fun _ _ -> Obj.magic);to_js = (fun _ _ -> Obj.magic)}]
type ('t1, 't2, 't3) union3 = [`U1 of 't1 | `U2 of 't2 | `U3 of 't3] Union.t [@@js.custom {of_js=(fun _ _ _ -> Obj.magic);to_js = (fun _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4) union4 = [`U1 of 't1 | `U2 of 't2 | `U3 of 't3 | `U4 of 't4] Union.t [@@js.custom {of_js=(fun _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5) union5 = [`U1 of 't1 | `U2 of 't2 | `U3 of 't3 | `U4 of 't4 | `U5 of 't5] Union.t [@@js.custom {of_js=(fun _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5, 't6) union6 = [`U1 of 't1 | `U2 of 't2 | `U3 of 't3 | `U4 of 't4 | `U5 of 't5 | `U6 of 't6] Union.t [@@js.custom {of_js=(fun _ _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ _ -> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5, 't6, 't7) union7 = [`U1 of 't1 | `U2 of 't2 | `U3 of 't3 | `U4 of 't4 | `U5 of 't5 | `U6 of 't6 | `U7 of 't7] Union.t [@@js.custom {of_js=(fun _ _ _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ _ _-> Obj.magic)}]
type ('t1, 't2, 't3, 't4, 't5, 't6, 't7, 't8) union8 = [`U1 of 't1 | `U2 of 't2 | `U3 of 't3 | `U4 of 't4 | `U5 of 't5 | `U6 of 't6 | `U7 of 't7 | `U8 of 't8] Union.t [@@js.custom {of_js=(fun _ _ _ _ _ _ _ _ -> Obj.magic);to_js = (fun _ _ _ _ _ _ _ _ -> Obj.magic)}]

val union2_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) union2 -> Ojs.t
val union2_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) union2
val union3_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('a, 'b, 'c) union3 -> Ojs.t
val union3_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> Ojs.t -> ('a, 'b, 'c) union3
val union4_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('a, 'b, 'c, 'd) union4 -> Ojs.t
val union4_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> Ojs.t -> ('a, 'b, 'c, 'd) union4
val union5_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e) union5 -> Ojs.t
val union5_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e) union5
val union6_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f) union6 -> Ojs.t
val union6_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f) union6
val union7_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7 -> Ojs.t
val union7_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7
val union8_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('h -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8 -> Ojs.t
val union8_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> (Ojs.t -> 'h) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8

module TypeofableUnion : sig
  [@@@js.stop]
  type +'cases t = private Ojs.t
  val t_to_js: ('cases -> Ojs.t) -> 'cases t -> Ojs.t
  val t_of_js: (Ojs.t -> 'cases) -> Ojs.t -> 'cases t
  type 'other cases = [
    | `String of string
    | `Number of float
    | `Boolean of bool
    | `Symbol of symbol
    | `BigInt of bigint
    | `Null
    | `Undefined
    | `Other of 'other
  ]
  val inject: ([< 'other cases] as 'u) -> 'u t
  val classify: ([< 'other cases] as 'u) t -> 'u
  [@@@js.start]
  [@@@js.implem
  type +'cases t = Ojs.t
  let t_to_js _ x : Ojs.t = x
  let t_of_js _ x : _ t = x
  type 'other cases = [
    | `String of string
    | `Number of float
    | `Boolean of bool
    | `Symbol of symbol
    | `BigInt of bigint
    | `Null
    | `Undefined
    | `Other of 'other
  ]
  let inject (c: ([< 'other cases] as 'u)) =
    match c with
    | `String s -> Obj.magic (Ojs.string_to_js s)
    | `Number f -> Obj.magic (Ojs.float_to_js f)
    | `Boolean b -> Obj.magic (Ojs.bool_to_js b)
    | `Symbol s -> Obj.magic (symbol_to_js s)
    | `BigInt i -> Obj.magic (bigint_to_js i)
    | `Null -> Obj.magic Ojs.null
    | `Undefined -> Obj.magic (Ojs.unit_to_js ())
    | `Other o -> Obj.magic o
  let classify (u: ([< 'other cases] as 'u) t) =
    match Ojs.type_of u with
    | "string" -> Obj.magic (`String (Ojs.string_of_js u))
    | "number" -> Obj.magic (`Number (Ojs.float_of_js u))
    | "boolean" -> Obj.magic (`Boolean (Ojs.bool_of_js u))
    | "symbol" -> Obj.magic (`Symbol (symbol_of_js u))
    | "bigint" -> Obj.magic (`BigInt (bigint_of_js u))
    | "null" -> Obj.magic `Null
    | "undefined" -> Obj.magic `Undefined
    | _ -> Obj.magic (`Other u)
  ]
end

type 'a or_string = [`String of string | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js x -> match Ojs.type_of x with "string" -> `String (Ojs.string_of_js x) | _ -> `Other (a_of_js x));
  to_js = (fun a_to_js -> function `String x -> Ojs.string_to_js x | `Other x -> a_to_js x)
}]
val or_string_to_js: ('a -> Ojs.t) -> 'a or_string -> Ojs.t
val or_string_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_string
type 'a or_number = [`Number of float | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js x -> match Ojs.type_of x with "number" -> `Number (Ojs.float_of_js x) | _ -> `Other (a_of_js x));
  to_js = (fun a_to_js -> function `Number x -> Ojs.float_to_js x | `Other x -> a_to_js x)
}]
val or_number_to_js: ('a -> Ojs.t) -> 'a or_number -> Ojs.t
val or_number_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_number
type 'a or_boolean = [`Boolean of bool | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js x -> match Ojs.type_of x with "boolean" -> `Boolean (Ojs.bool_of_js x) | _ -> `Other (a_of_js x));
  to_js = (fun a_to_js -> function `Boolean x -> Ojs.bool_to_js x | `Other x -> a_to_js x)
}]
val or_boolean_to_js: ('a -> Ojs.t) -> 'a or_boolean -> Ojs.t
val or_boolean_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_boolean
type 'a or_symbol = [`Symbol of symbol | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js x -> match Ojs.type_of x with "symbol" -> `Symbol (symbol_of_js x) | _ -> `Other (a_of_js x));
  to_js = (fun a_to_js -> function `Symbol x -> symbol_to_js x | `Other x -> a_to_js x)
}]
val or_symbol_to_js: ('a -> Ojs.t) -> 'a or_symbol -> Ojs.t
val or_symbol_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_symbol
type 'a or_bigint = [`BigInt of bigint | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js x -> match Ojs.type_of x with "bigint" -> `BigInt (bigint_of_js x) | _ -> `Other (a_of_js x));
  to_js = (fun a_to_js -> function `BigInt x -> bigint_to_js x | `Other x -> a_to_js x)
}]
val or_bigint_to_js: ('a -> Ojs.t) -> 'a or_bigint -> Ojs.t
val or_bigint_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_bigint

val is_array: Ojs.t -> bool [@@js.global "Array.isArray"]

type ('a, 't) or_array = [`Array of 't list | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js t_of_js x ->
    if is_array x then `Array (Ojs.list_of_js t_of_js x)
    else `Other (a_of_js x)
  );
  to_js = (fun a_to_js t_to_js -> function `Array x -> Ojs.list_to_js t_to_js x | `Other x -> a_to_js x)
}]
val or_array_to_js: ('a -> Ojs.t) -> ('t -> Ojs.t) -> ('a, 't) or_array -> Ojs.t
val or_array_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 't) -> Ojs.t -> ('a, 't) or_array

type ('a, 'cases) or_enum = [`Enum of 'cases | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js cases_of_js x ->
    try `Enum (cases_of_js x) with _ -> `Other (a_of_js x));
  to_js = (fun a_to_js cases_to_js -> function `Enum cases -> cases_to_js cases | `Other x -> a_to_js x)
}]
val or_enum_to_js: ('a -> Ojs.t) -> ('cases -> Ojs.t) -> ('a, 'cases) or_enum -> Ojs.t
val or_enum_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'cases) -> Ojs.t -> ('a, 'cases) or_enum
"""