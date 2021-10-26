module Targets.JsOfOCaml.Common

open Fable.Core
open DataType

[<StringEnum; RequireQualifiedAccess>]
type RecModule =
  | [<CompiledName("optimized")>] Optimized
  | [<CompiledName("naive")>] Naive
  | [<CompiledName("off")>] Off
  | [<CompiledName("default")>] Default
with
  static member Values = [|Optimized; Naive; Off; Default|]

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
  | [<CompiledName("default")>] Default
with
  static member Values = [|All; ImmediateInstance; ImmediateConstructor; AnonymousInterfaceValue; NamedInterfaceValue; Default|]

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
  | [<CompiledName("default")>] Default
with
  static member Values = [|Tag; CastFunction; Default|]

  static member TryParse (s: string) =
    match s with
    | "tag" -> Some Tag
    | "cast-function" -> Some CastFunction
    | _ -> None

[<StringEnum; RequireQualifiedAccess>]
type Preset =
  | [<CompiledName("minimal")>] Minimal
  | [<CompiledName("typesafe")>] Typesafe
  | [<CompiledName("recommended")>] Recommended
with
  static member Values = [|Minimal; Typesafe; Recommended|]

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  // utility options
  abstract preset: Preset option with get
  abstract createMinimalStdlib: bool with get
  abstract stdlib: bool with get // hidden
  // output options
  abstract outputDir: string option with get
  abstract stubFile: string with get
  // generator options
  abstract numberAsInt: bool with get, set
  //abstract subtyping: Subtyping list with get, set
  abstract inheritWithTags: FeatureFlag with get, set
  abstract recModule: RecModule with get, set
  abstract safeArity: FeatureFlag with get, set
  abstract simplify: Simplify list with get, set

module Options =
  open Fable.Core.JsInterop

  let validate : Yargs.MiddlewareFunction<Options> =
    Yargs.MiddlewareFunction<Options>(fun opts yargs ->
      match opts.preset with
      | None -> ()
      | Some p ->
        if opts.simplify = [] then
          opts.simplify <- [Simplify.All]

        if p = Preset.Minimal || p = Preset.Recommended then
          opts.recModule <- RecModule.Optimized

        if p = Preset.Typesafe || p = Preset.Recommended then
          if opts.safeArity = FeatureFlag.Default then
            opts.safeArity <- FeatureFlag.Full
          //if opts.subtyping |> List.contains Subtyping.Tag |> not then
          //  opts.subtyping <- Subtyping.Tag :: opts.subtyping
          //if opts.subtyping |> List.contains Subtyping.CastFunction |> not then
          //  opts.subtyping <- Subtyping.CastFunction :: opts.subtyping
          if opts.inheritWithTags = FeatureFlag.Default then
            opts.inheritWithTags <- FeatureFlag.Full

      //if opts.subtyping |> List.contains Subtyping.Tag |> not
      //&& (opts.inheritWithTags <> FeatureFlag.Off || opts.inheritWithTags <> FeatureFlag.Default) then
      //  yargs.exit(-1, new System.ArgumentException("--inherit-with-tags requires --subtyping=tag."))

      !^opts)

  let register (yargs: Yargs.Argv<Options>) =
    yargs
      .group(
        !^ResizeArray[
          "create-minimal-stdlib"; "stdlib"; "preset"
        ],
        "Meta Options:"
      )
      .addFlag(
        "create-minimal-stdlib",
        (fun (o:Options) -> o.createMinimalStdlib),
        descr="Create ts2ocaml_min.mli. When this option is used, code generator options are ignored.",
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
          "subtyping";
          "inherit-with-tags";
          "rec-module";
          "safe-arity";
          "number-as-int";
          "simplify";
        ],
        "Code Generator Options:")
      (*
      .addCommaSeparatedStringSet(
        "subtyping",
        Subtyping.TryParse,
        (fun (o: Options) -> o.subtyping),
        descr=
          sprintf "Turn on subtyping features. Available features: %s"
                  (Subtyping.Values |> Array.filter ((<>) Subtyping.Default) |> Array.map string |> String.concat ", "))
      *)
      .addFlag(
        "number-as-int",
        (fun (o: Options) -> o.numberAsInt),
        descr="Treat number types as int.\nIf not set, float will be used.",
        defaultValue=false,
        alias="int")
      .addChoice(
        "inherit-with-tags",
        FeatureFlag.Values,
        (fun (o: Options) -> o.inheritWithTags),
        descr="Use `TypeName.tags` type names to inherit types from other packages.",
        defaultValue=FeatureFlag.Default)
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
                  (Simplify.Values |> Array.filter ((<>) Simplify.Default) |> Array.map string |> String.concat ", "))

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

type any = private Ojs.t
val any_to_js: any -> Ojs.t
val any_of_js: Ojs.t -> any

module Any: sig
  type t = any
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val unsafe_cast: t -> 'a
  [@@js.custom
    let unsafe_cast x = Obj.magic x
  ]
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
type -'a intf = private Ojs.t
val intf_to_js: ('a -> Ojs.t) -> 'a intf -> Ojs.t
val intf_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a intf
[@@@js.start]
[@@@js.implem
  type -'a intf = Ojs.t
  let intf_to_js _ x : Ojs.t = x
  let intf_of_js _ x : _ intf = x
]

type untyped_object = [`Object] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val untyped_object_of_js: Ojs.t -> untyped_object
val untyped_object_to_js: untyped_object -> Ojs.t

type untyped_function = [`Function] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val untyped_function_of_js: Ojs.t -> untyped_function
val untyped_function_to_js: untyped_function -> Ojs.t

type symbol = [`Symbol] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val symbol_of_js: Ojs.t -> symbol
val symbol_to_js: symbol -> Ojs.t

type regexp = [`RegExp] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val regexp_of_js: Ojs.t -> regexp
val regexp_to_js: regexp -> Ojs.t

type bigint = [`BigInt] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val bigint_of_js: Ojs.t -> bigint
val bigint_to_js: bigint -> Ojs.t

type 'a or_null = 'a option
val or_null_to_js: ('a -> Ojs.t) -> 'a or_null -> Ojs.t
val or_null_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_null
type 'a or_undefined = 'a option
val or_undefined_to_js: ('a -> Ojs.t) -> 'a or_undefined -> Ojs.t
val or_undefined_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_undefined
type 'a or_null_or_undefined = 'a option
val or_null_or_undefined_to_js: ('a -> Ojs.t) -> 'a or_null_or_undefined -> Ojs.t
val or_null_or_undefined_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_null_or_undefined

type ('a, 'b) and_ = private Ojs.t
val and__to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) and_ -> Ojs.t
val and__of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) and_

module And: sig
  type ('a, 'b) t = ('a, 'b) and_
  val t_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) t

  val car: ('a, 'b) t -> 'a [@@js.custom let car (x: ('a, 'b) t) : 'a = Obj.magic x]
  val cdr: ('a, 'b) t -> 'b [@@js.custom let cdr (x: ('a, 'b) t) : 'b = Obj.magic x]
end

type ('a, 'b) intersection2 = ('b, 'a) and_
val intersection2_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) intersection2 -> Ojs.t
val intersection2_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) intersection2
type ('a, 'b, 'c) intersection3 = (('b, 'c) intersection2, 'a) and_
val intersection3_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('a, 'b, 'c) intersection3 -> Ojs.t
val intersection3_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> Ojs.t -> ('a, 'b, 'c) intersection3
type ('a, 'b, 'c, 'd) intersection4 = (('b, 'c, 'd) intersection3, 'a) and_
val intersection4_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('a, 'b, 'c, 'd) intersection4 -> Ojs.t
val intersection4_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> Ojs.t -> ('a, 'b, 'c, 'd) intersection4
type ('a, 'b, 'c, 'd, 'e) intersection5 = (('b, 'c, 'd, 'e) intersection4, 'a) and_
val intersection5_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e) intersection5 -> Ojs.t
val intersection5_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e) intersection5
type ('a, 'b, 'c, 'd, 'e, 'f) intersection6 = (('b, 'c, 'd, 'e, 'f) intersection5, 'a) and_
val intersection6_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f) intersection6 -> Ojs.t
val intersection6_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f) intersection6
type ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7 = (('b, 'c, 'd, 'e, 'f, 'g) intersection6, 'a) and_
val intersection7_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7 -> Ojs.t
val intersection7_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7
type ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8 = (('b, 'c, 'd, 'e, 'f, 'g, 'h) intersection7, 'a) and_
val intersection8_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('h -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8 -> Ojs.t
val intersection8_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> (Ojs.t -> 'h) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8

module Intersection: sig
  val get_0: ('a, 'b) intersection2 -> 'a [@@js.custom let get_0 x = Obj.magic x]
  val get_1: ('a, 'b, 'c) intersection3 -> 'b [@@js.custom let get_1 x = Obj.magic x]
  val get_2: ('a, 'b, 'c, 'd) intersection4 -> 'c [@@js.custom let get_2 x = Obj.magic x]
  val get_3: ('a, 'b, 'c, 'd, 'e) intersection5 -> 'd [@@js.custom let get_3 x = Obj.magic x]
  val get_4: ('a, 'b, 'c, 'd, 'e, 'f) intersection6 -> 'e [@@js.custom let get_4 x = Obj.magic x]
  val get_5: ('a, 'b, 'c, 'd, 'e, 'f, 'g) intersection7 -> 'f [@@js.custom let get_5 x = Obj.magic x]
  val get_6: ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) intersection8 -> 'g [@@js.custom let get_6 x = Obj.magic x]
end

[@@@js.stop]
type ('a, 'b) or_
val or__to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) or_ -> Ojs.t
val or__of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) or_
[@@@js.start]
[@@@js.implem
  type ('a, 'b) or_from_js = { a_of_js: (Ojs.t -> 'a); b_of_js: (Ojs.t -> 'b); value: Ojs.t }
  type ('a, 'b) or_ = A of 'a | B of 'b | FromJS of ('a, 'b) or_from_js
  let or__to_js a_to_js b_to_js = function
    | A a -> a_to_js a
    | B b -> b_to_js b
    | FromJS x -> x.value
  let or__of_js a_of_js b_of_js value = FromJS { a_of_js; b_of_js; value }
]

module Or: sig
  type ('a, 'b) t = ('a, 'b) or_
  val t_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) t

  val inl: 'a -> ('a, 'b) t [@@js.custom let inl (x: 'a) : ('a, 'b) t = A x]
  val inr: 'b -> ('a, 'b) t [@@js.custom let inr (x: 'b) : ('a, 'b) t = B x]

  val test: is_left:(Ojs.t -> bool) -> is_right:(Ojs.t -> bool) -> ('a, 'b) t -> [`Left of 'a | `Right of 'b | `Other of Ojs.t]
  [@@js.custom
    let test ~is_left ~is_right = function
      | A a -> `Left a
      | B b -> `Right b
      | FromJS x ->
        if is_left x.value then `Left (x.a_of_js x.value)
        else if is_right x.value then `Right (x.b_of_js x.value)
        else `Other x.value
  ]
end

type ('a, 'b) union2 = ('b, 'a) or_
val union2_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('a, 'b) union2 -> Ojs.t
val union2_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> Ojs.t -> ('a, 'b) union2
type ('a, 'b, 'c) union3 = (('b, 'c) union2, 'a) or_
val union3_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('a, 'b, 'c) union3 -> Ojs.t
val union3_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> Ojs.t -> ('a, 'b, 'c) union3
type ('a, 'b, 'c, 'd) union4 = (('b, 'c, 'd) union3, 'a) or_
val union4_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('a, 'b, 'c, 'd) union4 -> Ojs.t
val union4_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> Ojs.t -> ('a, 'b, 'c, 'd) union4
type ('a, 'b, 'c, 'd, 'e) union5 = (('b, 'c, 'd, 'e) union4, 'a) or_
val union5_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e) union5 -> Ojs.t
val union5_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e) union5
type ('a, 'b, 'c, 'd, 'e, 'f) union6 = (('b, 'c, 'd, 'e, 'f) union5, 'a) or_
val union6_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f) union6 -> Ojs.t
val union6_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f) union6
type ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7 = (('b, 'c, 'd, 'e, 'f, 'g) union6, 'a) or_
val union7_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7 -> Ojs.t
val union7_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7
type ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8 = (('b, 'c, 'd, 'e, 'f, 'g, 'h) union7, 'a) or_
val union8_to_js: ('a -> Ojs.t) -> ('b -> Ojs.t) -> ('c -> Ojs.t) -> ('d -> Ojs.t) -> ('e -> Ojs.t) -> ('f -> Ojs.t) -> ('g -> Ojs.t) -> ('h -> Ojs.t) -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8 -> Ojs.t
val union8_of_js: (Ojs.t -> 'a) -> (Ojs.t -> 'b) -> (Ojs.t -> 'c) -> (Ojs.t -> 'd) -> (Ojs.t -> 'e) -> (Ojs.t -> 'f) -> (Ojs.t -> 'g) -> (Ojs.t -> 'h) -> Ojs.t -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8

module Union: sig
  val inject_0: 'a -> ('a, 'b) union2 [@@js.custom let inject_0 x = Or.inr x]
  val inject_1: 'b -> ('a, 'b, 'c) union3 [@@js.custom let inject_1 x = Or.inl (inject_0 x)]
  val inject_2: 'c -> ('a, 'b, 'c, 'd) union4 [@@js.custom let inject_2 x = Or.inl (inject_1 x)]
  val inject_3: 'd -> ('a, 'b, 'c, 'd, 'e) union5 [@@js.custom let inject_3 x = Or.inl (inject_2 x)]
  val inject_4: 'e -> ('a, 'b, 'c, 'd, 'e, 'f) union6 [@@js.custom let inject_4 x = Or.inl (inject_3 x)]
  val inject_5: 'f -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7 [@@js.custom let inject_5 x = Or.inl (inject_4 x) ]
  val inject_6: 'g -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8 [@@js.custom let inject_6 x = Or.inl (inject_5 x)]
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