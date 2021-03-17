[@@@ocaml.warning "-7-11-32-33-39"]
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
type -'a intf
val intf_to_js: ('a -> Ojs.t) -> 'a intf -> Ojs.t
val intf_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a intf
[@@@js.start]
[@@@js.implem 
  type -'a intf = Ojs.t
  let intf_to_js _ x : Ojs.t = x
  let intf_of_js _ x : _ intf = x
]

[@@@js.stop]
type ('t, +'a) enum
val enum_to_js: ('t -> Ojs.t) -> ('a -> Ojs.t) -> ('t, 'a) enum -> Ojs.t
val enum_of_js: (Ojs.t -> 't) -> (Ojs.t -> 'a) -> Ojs.t -> ('t, 'a) enum
[@@@js.start]
[@@@js.implem 
  type ('t, +'a) enum = 'a
  let enum_to_js (_: 't -> Ojs.t) (f: 'a -> Ojs.t) (e: ('t, 'a) enum) : Ojs.t = (f e)
  let enum_of_js (_: Ojs.t -> 't) (f: Ojs.t -> 'a) (e: Ojs.t) : ('t, 'a) enum = (f e)
]

module Enum: sig
  [@@@js.stop]
  type ('t, +'a) t = ('t, 'a) enum
  val t_to_js: ('t -> Ojs.t) -> ('a -> Ojs.t) -> ('t, 'a) t -> Ojs.t
  val t_of_js: (Ojs.t -> 't) -> (Ojs.t -> 'a) -> Ojs.t -> ('t, 'a) t
  [@@@js.start]
  [@@@js.implem 
    type ('t, +'a) t = ('t, 'a) enum
    let t_to_js = enum_to_js
    let t_of_js = enum_of_js
  ]
  val get_value: ('t, 'a) t -> 'a
  [@@js.custom let get_value x = x]
end

type untyped_object = [`Object] intf
[@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val untyped_object_of_js: Ojs.t -> untyped_object
val untyped_object_to_js: untyped_object -> Ojs.t

type untyped_function = [`Function] intf
[@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val untyped_function_of_js: Ojs.t -> untyped_function
val untyped_function_to_js: untyped_function -> Ojs.t

type symbol = [`Symbol] intf
[@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val symbol_of_js: Ojs.t -> symbol
val symbol_to_js: symbol -> Ojs.t

type regexp = [`RegExp] intf
[@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
val regexp_of_js: Ojs.t -> regexp
val regexp_to_js: regexp -> Ojs.t

type bigint = [`BigInt] intf
[@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
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
  val inject_0: 'a -> ('a, 'b) union2 [@@js.custom let inject_0 x = Obj.magic x]
  val inject_1: 'b -> ('a, 'b, 'c) union3 [@@js.custom let inject_1 x = Obj.magic x]
  val inject_2: 'c -> ('a, 'b, 'c, 'd) union4 [@@js.custom let inject_2 x = Obj.magic x]
  val inject_3: 'd -> ('a, 'b, 'c, 'd, 'e) union5 [@@js.custom let inject_3 x = Obj.magic x]
  val inject_4: 'e -> ('a, 'b, 'c, 'd, 'e, 'f) union6 [@@js.custom let inject_4 x = Obj.magic x]
  val inject_5: 'f -> ('a, 'b, 'c, 'd, 'e, 'f, 'g) union7 [@@js.custom let inject_5 x = Obj.magic x]
  val inject_6: 'g -> ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h) union8 [@@js.custom let inject_6 x = Obj.magic x]
end

type 'a or_prim_union = [`Number of float | `String of string | `Boolean of bool | `Symbol of symbol | `BigInt of bigint | `Other of 'a] [@@js.custom {
  of_js = (fun a_of_js x ->
    match Ojs.type_of x with
    | "number" -> `Number (Ojs.float_of_js x)
    | "string" -> `String (Ojs.string_of_js x)
    | "boolean" -> `Boolean (Ojs.bool_of_js x)
    | "symbol" -> `Symbol (symbol_of_js x)
    | "bigint" -> `BigInt (bigint_of_js x) 
    | _ -> `Other (a_of_js x));
  to_js = (fun a_to_js -> function
    | `Number x -> Ojs.float_to_js x
    | `String x -> Ojs.string_to_js x
    | `Boolean x -> Ojs.bool_to_js x
    | `Symbol x -> symbol_to_js x
    | `BigInt x -> bigint_to_js x
    | `Other x -> a_to_js x)
}]
val or_prim_union_of_js: (Ojs.t -> 'a) -> Ojs.t -> 'a or_prim_union
val or_prim_union_to_js: ('a -> Ojs.t) -> 'a or_prim_union -> Ojs.t

type prim_union = never or_prim_union
val prim_union_of_js: Ojs.t -> prim_union
val prim_union_to_js: prim_union -> Ojs.t

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

