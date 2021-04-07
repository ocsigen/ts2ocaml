[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Iterable<T1>
  - PropertyKey
 *)
[@@@js.stop]
module type Missing = sig
  module Iterable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module PropertyKey : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Iterable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module PropertyKey : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type 'T _Array = [`Array of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _ObjectConstructor = [`ObjectConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _ReadonlyArray = [`ReadonlyArray of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Symbol = symbol
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module[@js.scope "ReadonlyArray"] ReadonlyArray : sig
    type 'T t = 'T _ReadonlyArray
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val flatMap: 'T t -> callback:(this:'This -> value:'T -> index:float -> array:'T list -> ('U, 'U t) union2) -> ?thisArg:'This -> unit -> 'U list [@@js.call "flatMap"]
    val flat: 'T t -> this:((((((((('U t t t list t, 'U list t t list t, 'U t list t list t, 'U list list t list t, 'U t t list list t, 'U list t list list t, 'U t list list list t, 'U list list list list t) union8, 'U list list list t t) or_, 'U t list list t t) or_, 'U list t list t t) or_, 'U t t list t t) or_, 'U list list t t t) or_, 'U t list t t t) or_, 'U list t t t t) or_, 'U t t t t t) or_ -> depth:([`L_n_4] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat': 'T t -> this:('U t t t t, 'U list t t t, 'U t list t t, 'U list list t t, 'U t t list t, 'U list t list t, 'U t list list t, 'U list list list t) union8 -> depth:([`L_n_3] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat'': 'T t -> this:('U t t t, 'U list t t, 'U t list t, 'U list list t) union4 -> depth:([`L_n_2] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat''': 'T t -> this:('U t t, 'U list t) union2 -> ?depth:([`L_n_1] [@js.enum]) -> unit -> 'U list [@@js.call "flat"]
    val flat'''': 'T t -> this:'U t -> depth:([`L_n_0] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat''''': 'T t -> ?depth:float -> unit -> any list [@@js.call "flat"]
    val to_ml: 'T t -> 'T list [@@js.cast]
    val of_ml: 'T list -> 'T t [@@js.cast]
  end
  module[@js.scope "Array"] Array : sig
    type 'T t = 'T _Array
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val flatMap: 'T t -> callback:(this:'This -> value:'T -> index:float -> array:'T list -> ('U, 'U _ReadonlyArray) union2) -> ?thisArg:'This -> unit -> 'U list [@@js.call "flatMap"]
    val flat: 'T t -> this:'U list list list list list list list list -> depth:([`L_n_7] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat': 'T t -> this:'U list list list list list list list -> depth:([`L_n_6] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat'': 'T t -> this:'U list list list list list list -> depth:([`L_n_5] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat''': 'T t -> this:'U list list list list list -> depth:([`L_n_4] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat'''': 'T t -> this:'U list list list list -> depth:([`L_n_3] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat''''': 'T t -> this:'U list list list -> depth:([`L_n_2] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat'''''': 'T t -> this:'U list list -> ?depth:([`L_n_1] [@js.enum]) -> unit -> 'U list [@@js.call "flat"]
    val flat''''''': 'T t -> this:'U list -> depth:([`L_n_0] [@js.enum]) -> 'U list [@@js.call "flat"]
    val flat'''''''': 'T t -> ?depth:float -> unit -> any list [@@js.call "flat"]
    val to_ml: 'T t -> 'T list [@@js.cast]
    val of_ml: 'T list -> 'T t [@@js.cast]
  end
  module[@js.scope "ObjectConstructor"] ObjectConstructor : sig
    type t = _ObjectConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val fromEntries: t -> entries:(PropertyKey.t_0 * 'T) Iterable.t_1 -> (* FIXME: unknown type '{ [k in PropertyKey]: T }' *)any [@@js.call "fromEntries"]
    val fromEntries': t -> entries:any list Iterable.t_1 -> any [@@js.call "fromEntries"]
  end
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val trimEnd: t -> string [@@js.call "trimEnd"]
    val trimStart: t -> string [@@js.call "trimStart"]
    val trimLeft: t -> string [@@js.call "trimLeft"]
    val trimRight: t -> string [@@js.call "trimRight"]
    val to_ml: t -> string [@@js.cast]
    val of_ml: string -> t [@@js.cast]
  end
  module[@js.scope "Symbol"] Symbol : sig
    type t = _Symbol
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_description: t -> string or_undefined [@@js.get "description"]
  end
end
