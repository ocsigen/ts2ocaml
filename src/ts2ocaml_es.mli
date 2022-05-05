[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_min


(** language version: ES2015 *)
module IteratorYieldResult : sig
  type 'TYield t = [`IteratorYieldResult of 'TYield] intf [@@js.custom { of_js=(fun _TYield -> Obj.magic); to_js=(fun _TYield -> Obj.magic) }]
  type 'TYield t_1 = 'TYield t
  [@@@js.stop]
  type 'TYield tags = [`IteratorYieldResult of 'TYield]
  type 'TYield tags_1 = 'TYield tags
  [@@@js.start]
  [@@@js.implem 
    type 'TYield tags = [`IteratorYieldResult of 'TYield]
    type 'TYield tags_1 = 'TYield tags
  ]
  type ('tags, 'TYield) this = 'tags intf constraint 'tags = [> `IteratorYieldResult of 'TYield ]
  val t_to_js: ('TYield -> Ojs.t) -> 'TYield t -> Ojs.t
  val t_of_js: (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t
  val t_1_to_js: ('TYield -> Ojs.t) -> 'TYield t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t_1
  val get_done: ('tags, 'TYield) this -> ([`L_b_false[@js false]] [@js.enum]) [@@js.get "done"]
  val set_done: ('tags, 'TYield) this -> ([`L_b_false[@js false]] [@js.enum]) -> unit [@@js.set "done"]
  val get_value: ('tags, 'TYield) this -> 'TYield [@@js.get "value"]
  val set_value: ('tags, 'TYield) this -> 'TYield -> unit [@@js.set "value"]
  val create: done_:(([`L_b_false[@js false]] [@js.enum])[@js "done"]) -> value:'TYield -> unit -> 'TYield t [@@js.builder]
  val cast_from: ('tags, 'TYield) this -> 'TYield t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module IteratorReturnResult : sig
  type 'TReturn t = [`IteratorReturnResult of 'TReturn] intf [@@js.custom { of_js=(fun _TReturn -> Obj.magic); to_js=(fun _TReturn -> Obj.magic) }]
  type 'TReturn t_1 = 'TReturn t
  [@@@js.stop]
  type 'TReturn tags = [`IteratorReturnResult of 'TReturn]
  type 'TReturn tags_1 = 'TReturn tags
  [@@@js.start]
  [@@@js.implem 
    type 'TReturn tags = [`IteratorReturnResult of 'TReturn]
    type 'TReturn tags_1 = 'TReturn tags
  ]
  type ('tags, 'TReturn) this = 'tags intf constraint 'tags = [> `IteratorReturnResult of 'TReturn ]
  val t_to_js: ('TReturn -> Ojs.t) -> 'TReturn t -> Ojs.t
  val t_of_js: (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t
  val t_1_to_js: ('TReturn -> Ojs.t) -> 'TReturn t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t_1
  val get_done: ('tags, 'TReturn) this -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "done"]
  val set_done: ('tags, 'TReturn) this -> ([`L_b_true[@js true]] [@js.enum]) -> unit [@@js.set "done"]
  val get_value: ('tags, 'TReturn) this -> 'TReturn [@@js.get "value"]
  val set_value: ('tags, 'TReturn) this -> 'TReturn -> unit [@@js.set "value"]
  val create: done_:(([`L_b_true[@js true]] [@js.enum])[@js "done"]) -> value:'TReturn -> unit -> 'TReturn t [@@js.builder]
  val cast_from: ('tags, 'TReturn) this -> 'TReturn t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module IteratorResult : sig
  type ('T, 'TReturn) t = ([`U_b_false of 'T IteratorYieldResult.t [@js false] | `U_b_true of 'TReturn IteratorReturnResult.t [@js true]] [@js.union on_field "done"])
  type ('T, 'TReturn) t_2 = ('T, 'TReturn) t
  type 'T t_1 = ('T, any) t
  val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t
  val t_2_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end

(** language version: ES2015 *)
module Iterator : sig
  type ('T, 'TReturn, 'TNext) t = [`Iterator of ('T * 'TReturn * 'TNext)] intf [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
  type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t
  type ('T, 'TReturn) t_2 = ('T, 'TReturn, undefined) t
  type 'T t_1 = ('T, any, undefined) t
  [@@@js.stop]
  type ('T, 'TReturn, 'TNext) tags = [`Iterator of ('T * 'TReturn * 'TNext)]
  type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
  type ('T, 'TReturn) tags_2 = ('T, 'TReturn, undefined) tags
  type 'T tags_1 = ('T, any, undefined) tags
  [@@@js.start]
  [@@@js.implem 
    type ('T, 'TReturn, 'TNext) tags = [`Iterator of ('T * 'TReturn * 'TNext)]
    type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
    type ('T, 'TReturn) tags_2 = ('T, 'TReturn, undefined) tags
    type 'T tags_1 = ('T, any, undefined) tags
  ]
  type ('tags, 'T, 'TReturn, 'TNext) this = 'tags intf constraint 'tags = [> `Iterator of ('T * 'TReturn * 'TNext) ]
  val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t
  val t_3_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t_3 -> Ojs.t
  val t_3_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t_3
  val t_2_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val next: ('tags, 'T, 'TReturn, 'TNext) this -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) IteratorResult.t [@@js.call "next"]
  val return: ('tags, 'T, 'TReturn, 'TNext) this -> ?value:'TReturn -> unit -> ('T, 'TReturn) IteratorResult.t [@@js.call "return"]
  val throw: ('tags, 'T, 'TReturn, 'TNext) this -> ?e:any -> unit -> ('T, 'TReturn) IteratorResult.t [@@js.call "throw"]
  val cast_from: ('tags, 'T, 'TReturn, 'TNext) this -> ('T, 'TReturn, 'TNext) t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module Iterable : sig
  type 'T t = [`Iterable of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`Iterable of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`Iterable of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `Iterable of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.iterator]: unit -> 'T Iterator.t_1 *)
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module[@js.scope "WeakSet"] WeakSet : sig
  type 'T t = [`WeakSet of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`WeakSet of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`WeakSet of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `WeakSet of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.toStringTag]: unit -> string *)
  val add: ('tags, 'T) this -> value:'T -> ('tags, 'T) this [@@js.call "add"]
  val delete: ('tags, 'T) this -> value:'T -> bool [@@js.call "delete"]
  val has: ('tags, 'T) this -> value:'T -> bool [@@js.call "has"]
  val create: 'T Iterable.t -> 'T t [@@js.create]
  val create': ?values:'T list option -> unit -> 'T t [@@js.create]
  val prototype: unit -> untyped_object t [@@js.get "prototype"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ESNext *)
module[@js.scope "WeakRef"] WeakRef : sig
  type 'T t = [`WeakRef of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`WeakRef of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`WeakRef of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `WeakRef of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.toStringTag]: unit -> ([`L_s20_WeakRef[@js "WeakRef"]] [@js.enum]) *)
  
  (**
    Returns the WeakRef instance's target object, or undefined if the target object has been
    reclaimed.
  *)
  val deref: ('tags, 'T) this -> 'T option [@@js.call "deref"]
  (* [Symbol.toStringTag]: unit -> ([`L_s20_WeakRef[@js "WeakRef"]] [@js.enum]) *)
  
  (**
    Returns the WeakRef instance's target object, or undefined if the target object has been
    reclaimed.
  *)
  val deref': ('tags, 'T) this -> 'T option [@@js.call "deref"]
  val prototype: unit -> any t [@@js.get "prototype"]
  
  (**
    Creates a WeakRef instance for the given target object.
    @param target The target object for the WeakRef instance.
  *)
  val create: ?target:'T -> unit -> 'T t [@@js.create]
  val prototype': unit -> any t [@@js.get "prototype"]
  
  (**
    Creates a WeakRef instance for the given target object.
    @param target The target object for the WeakRef instance.
  *)
  val create': 'T -> 'T t [@@js.create]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module[@js.scope "WeakMap"] WeakMap : sig
  type ('K, 'V) t = [`WeakMap of ('K * 'V)] intf [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
  type ('K, 'V) t_2 = ('K, 'V) t
  [@@@js.stop]
  type ('K, 'V) tags = [`WeakMap of ('K * 'V)]
  type ('K, 'V) tags_2 = ('K, 'V) tags
  [@@@js.start]
  [@@@js.implem 
    type ('K, 'V) tags = [`WeakMap of ('K * 'V)]
    type ('K, 'V) tags_2 = ('K, 'V) tags
  ]
  type ('tags, 'K, 'V) this = 'tags intf constraint 'tags = [> `WeakMap of ('K * 'V) ]
  val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
  val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
  (* [Symbol.toStringTag]: unit -> string *)
  val delete: ('tags, 'K, 'V) this -> key:'K -> bool [@@js.call "delete"]
  val get_: ('tags, 'K, 'V) this -> key:'K -> 'V option [@@js.call "get"]
  val has: ('tags, 'K, 'V) this -> key:'K -> bool [@@js.call "has"]
  val set_: ('tags, 'K, 'V) this -> key:'K -> value:'V -> ('tags, 'K, 'V) this [@@js.call "set"]
  val create: ('K * 'V) Iterable.t -> ('K, 'V) t [@@js.create]
  val create': ?entries:('K * 'V) list option -> unit -> ('K, 'V) t [@@js.create]
  val prototype: unit -> (untyped_object, any) t [@@js.get "prototype"]
  val cast_from: ('tags, 'K, 'V) this -> ('K, 'V) t [@@js.custom let cast_from = Obj.magic]
end


module Uppercase : sig
  type 'S t = Ojs.t
  type 'S t_1 = 'S t
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end


module Uncapitalize : sig
  type 'S t = Ojs.t
  type 'S t_1 = 'S t
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end

(** language version: ES2017 *)
module[@js.scope "SharedArrayBuffer"] SharedArrayBuffer : sig
  type t = [`SharedArrayBuffer] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`SharedArrayBuffer]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`SharedArrayBuffer]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `SharedArrayBuffer ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Read-only. The length of the ArrayBuffer (in bytes). *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** Returns a section of an SharedArrayBuffer. *)
  val slice: 'tags this -> begin_:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (* [Symbol.species]: unit -> t *)
  (* [Symbol.toStringTag]: unit -> ([`L_s15_SharedArrayBuffer[@js "SharedArrayBuffer"]] [@js.enum]) *)
  val prototype: unit -> t [@@js.get "prototype"]
  val create: float -> t [@@js.create]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "ArrayBuffer"] ArrayBuffer : sig
  type t = [`ArrayBuffer] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ArrayBuffer]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ArrayBuffer]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ArrayBuffer ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (* [Symbol.toStringTag]: unit -> string *)
  
  (** Read-only. The length of the ArrayBuffer (in bytes). *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** Returns a section of an ArrayBuffer. *)
  val slice: 'tags this -> begin_:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: float -> t [@@js.create]
  val isView: any -> bool [@@js.global "isView"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module ArrayBufferLike : sig
  type t = (ArrayBuffer.t, SharedArrayBuffer.t) union2
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end

(** language version: ES2015 *)
module IterableIterator : sig
  type 'T t = [`IterableIterator of 'T | `Iterator of ('T * any * undefined)] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`IterableIterator of 'T | `Iterator of ('T * any * undefined)]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`IterableIterator of 'T | `Iterator of ('T * any * undefined)]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `IterableIterator of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.iterator]: unit -> 'T t *)
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end


module ArrayLike : sig
  type 'T t = [`ArrayLike of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`ArrayLike of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ArrayLike of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ArrayLike of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_length: ('tags, 'T) this -> float [@@js.get "length"]
  val get: ('tags, 'T) this -> float -> 'T [@@js.index_get]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
  val of_ml: 'T list -> 'T t [@@js.cast]
  val to_ml: 'T t -> 'T list [@@js.cast]
end


module[@js.scope "Uint8ClampedArray"] Uint8ClampedArray : sig
  type t = [`Uint8ClampedArray | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Uint8ClampedArray | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Uint8ClampedArray | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Uint8ClampedArray ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s19_Uint8ClampedArray[@js "Uint8ClampedArray"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Uint8ClampedArray view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Error"] rec Error : sig
  type t = [`Error] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Error]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Error]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Error ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ESNext *)
  val get_cause: 'tags this -> t [@@js.get "cause"]
  
  (** language version: ESNext *)
  val set_cause: 'tags this -> t -> unit [@@js.set "cause"]
  val get_name: 'tags this -> string [@@js.get "name"]
  val set_name: 'tags this -> string -> unit [@@js.set "name"]
  val get_message: 'tags this -> string [@@js.get "message"]
  val set_message: 'tags this -> string -> unit [@@js.set "message"]
  val get_stack: 'tags this -> string [@@js.get "stack"]
  val set_stack: 'tags this -> string -> unit [@@js.set "stack"]
  
  (** language version: ESNext *)
  val create: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  
  (** language version: ESNext *)
  val invoke: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create': ?message:string -> unit -> t [@@js.create]
  val invoke': ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': cause:t -> name:string -> message:string -> stack:string -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ESNext *)
and ErrorOptions : sig
  type t = [`ErrorOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ErrorOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ErrorOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ErrorOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_cause: 'tags this -> Error.t [@@js.get "cause"]
  val set_cause: 'tags this -> Error.t -> unit [@@js.set "cause"]
  val create: cause:Error.t -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "URIError"] URIError : sig
  type t = [`Error | `URIError] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Error | `URIError]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Error | `URIError]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `URIError ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ESNext *)
  val create: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  
  (** language version: ESNext *)
  val invoke: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create': ?message:string -> unit -> t [@@js.create]
  val invoke': ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "TypeError"] TypeError : sig
  type t = [`Error | `TypeError] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Error | `TypeError]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Error | `TypeError]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TypeError ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ESNext *)
  val create: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  
  (** language version: ESNext *)
  val invoke: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create': ?message:string -> unit -> t [@@js.create]
  val invoke': ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2019 *)
module FlatArray : sig
  type ('Arr, 'Depth) t = (* FIXME: unknown type '{
      "done": Arr,
      "recur": Arr extends ReadonlyArray<infer InnerArr>
          ? FlatArray<InnerArr, [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20][Depth]>
          : Arr
  }[Depth extends -1 ? "done" : "recur"]' *)any
  type ('Arr, 'Depth) t_2 = ('Arr, 'Depth) t
  val t_to_js: ('Arr -> Ojs.t) -> ('Depth -> Ojs.t) -> ('Arr, 'Depth) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'Arr) -> (Ojs.t -> 'Depth) -> Ojs.t -> ('Arr, 'Depth) t
  val t_2_to_js: ('Arr -> Ojs.t) -> ('Depth -> Ojs.t) -> ('Arr, 'Depth) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'Arr) -> (Ojs.t -> 'Depth) -> Ojs.t -> ('Arr, 'Depth) t_2
end


module ConcatArray : sig
  type 'T t = [`ConcatArray of 'T | 'T ArrayLike.tags_1] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`ConcatArray of 'T | 'T ArrayLike.tags_1]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ConcatArray of 'T | 'T ArrayLike.tags_1]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ConcatArray of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_length: ('tags, 'T) this -> float [@@js.get "length"]
  val get: ('tags, 'T) this -> float -> 'T [@@js.index_get]
  val join: ('tags, 'T) this -> ?separator:string -> unit -> string [@@js.call "join"]
  val slice: ('tags, 'T) this -> ?start:float -> ?end_:float -> unit -> 'T list [@@js.call "slice"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end


module ReadonlyArray : sig
  type 'T t = [`ReadonlyArray of 'T | 'T ArrayLike.tags_1 | 'T IterableIterator.tags_1] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`ReadonlyArray of 'T | 'T ArrayLike.tags_1 | 'T IterableIterator.tags_1]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ReadonlyArray of 'T | 'T ArrayLike.tags_1 | 'T IterableIterator.tags_1]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ReadonlyArray of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  
  (**
    language version: ES2019
    Calls a defined callback function on each element of an array. Then, flattens the result into
    a new array.
    This is identical to a map followed by flat with depth 1.
    @param callback A function that accepts up to three arguments. The flatMap method calls the
    callback function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callback function. If
    thisArg is omitted, undefined is used as the this value.
  *)
  val flatMap: ('tags, 'T) this -> callback:(this:'This -> value:'T -> index:float -> array:'T list -> ([`U1 of 'U | `U2 of 'U t] [@js.union])) -> ?thisArg:'This -> unit -> 'U list [@@js.call "flatMap"]
  
  (**
    language version: ES2019
    Returns a new array with all sub-array elements concatenated into it recursively up to the
    specified depth.
    @param depth The maximum recursion depth
  *)
  val flat: ('tags, 'T) this -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list [@@js.call "flat"]
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: ('tags, 'T) this -> index:float -> 'T option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: ('tags, 'T) this -> searchElement:'T -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.iterator]: unit -> 'T IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an iterable of key, value pairs for every entry in the array
  *)
  val entries: ('tags, 'T) this -> (float * 'T) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an iterable of keys in the array
  *)
  val keys: ('tags, 'T) this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an iterable of values in the array
  *)
  val values: ('tags, 'T) this -> 'T IterableIterator.t [@@js.call "values"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: ('tags, 'T) this -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool) -> ?thisArg:any -> unit -> 'S option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
  *)
  val find': ('tags, 'T) this -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> 'T option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: ('tags, 'T) this -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (** Gets the length of the array. This is a number one higher than the highest element defined in an array. *)
  val get_length: ('tags, 'T) this -> float [@@js.get "length"]
  
  (** Returns a string representation of an array. *)
  val toString: ('tags, 'T) this -> string [@@js.call "toString"]
  
  (** Returns a string representation of an array. The elements are converted to string using their toLocaleString methods. *)
  val toLocaleString: ('tags, 'T) this -> string [@@js.call "toLocaleString"]
  
  (**
    Combines two or more arrays.
    @param items Additional items to add to the end of array1.
  *)
  val concat: ('tags, 'T) this -> items:('T ConcatArray.t list [@js.variadic]) -> 'T list [@@js.call "concat"]
  
  (**
    Combines two or more arrays.
    @param items Additional items to add to the end of array1.
  *)
  val concat': ('tags, 'T) this -> items:(([`U1 of 'T | `U2 of 'T ConcatArray.t] [@js.union]) list [@js.variadic]) -> 'T list [@@js.call "concat"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: ('tags, 'T) this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: ('tags, 'T) this -> ?start:float -> ?end_:float -> unit -> 'T list [@@js.call "slice"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at index 0.
  *)
  val indexOf: ('tags, 'T) this -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Returns the index of the last occurrence of a specified value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at the last index in the array.
  *)
  val lastIndexOf: ('tags, 'T) this -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every': ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: ('tags, 'T) this -> callbackfn:(value:'T -> index:float -> array:'T list -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val map: ('tags, 'T) this -> callbackfn:(value:'T -> index:float -> array:'T list -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "map"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> 'S list [@@js.call "filter"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter': ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> 'T list [@@js.call "filter"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce: ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduce"]
  
  (** Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduce': ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce'': ('tags, 'T) this -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight: ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduceRight"]
  
  (** Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduceRight': ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight'': ('tags, 'T) this -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  val get: ('tags, 'T) this -> float -> 'T [@@js.index_get]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
  val of_ml: 'T list -> 'T t [@@js.cast]
  val to_ml: 'T t -> 'T list [@@js.cast]
end


module TemplateStringsArray : sig
  type t = [`ReadonlyArray of string | `ReadonlyArray of string | `TemplateStringsArray | string ArrayLike.tags_1 | string IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ReadonlyArray of string | `ReadonlyArray of string | `TemplateStringsArray | string ArrayLike.tags_1 | string IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ReadonlyArray of string | `ReadonlyArray of string | `TemplateStringsArray | string ArrayLike.tags_1 | string IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TemplateStringsArray ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_raw: 'tags this -> string list [@@js.get "raw"]
  val create: raw:string list -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "SyntaxError"] SyntaxError : sig
  type t = [`Error | `SyntaxError] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Error | `SyntaxError]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Error | `SyntaxError]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `SyntaxError ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ESNext *)
  val create: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  
  (** language version: ESNext *)
  val invoke: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create': ?message:string -> unit -> t [@@js.create]
  val invoke': ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Symbol"] Symbol : sig
  type t = [`Symbol] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Symbol]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Symbol]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Symbol ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ES2019
    Expose the \[\[Description\]\] internal slot of a symbol directly.
  *)
  val get_description: 'tags this -> string option [@@js.get "description"]
  (* [Symbol.toPrimitive]: string -> symbol *)
  (* [Symbol.toStringTag]: unit -> string *)
  
  (** Returns a string representation of an object. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> symbol [@@js.call "valueOf"]
  
  (**
    language version: ES2020
    A regular expression method that matches the regular expression against a string. Called
    by the String.prototype.matchAll method.
  *)
  val matchAll: unit -> symbol [@@js.get "matchAll"]
  
  (**
    language version: ES2018
    A method that returns the default async iterator for an object. Called by the semantics of
    the for-await-of statement.
  *)
  val asyncIterator: unit -> symbol [@@js.get "asyncIterator"]
  
  (**
    A method that determines if a constructor object recognizes an object as one of the
    constructor’s instances. Called by the semantics of the instanceof operator.
  *)
  val hasInstance: unit -> symbol [@@js.get "hasInstance"]
  
  (**
    A Boolean value that if true indicates that an object should flatten to its array elements
    by Array.prototype.concat.
  *)
  val isConcatSpreadable: unit -> symbol [@@js.get "isConcatSpreadable"]
  
  (**
    A regular expression method that matches the regular expression against a string. Called
    by the String.prototype.match method.
  *)
  val match_: unit -> symbol [@@js.get "match"]
  
  (**
    A regular expression method that replaces matched substrings of a string. Called by the
    String.prototype.replace method.
  *)
  val replace: unit -> symbol [@@js.get "replace"]
  
  (**
    A regular expression method that returns the index within a string that matches the
    regular expression. Called by the String.prototype.search method.
  *)
  val search: unit -> symbol [@@js.get "search"]
  
  (**
    A function valued property that is the constructor function that is used to create
    derived objects.
  *)
  val species: unit -> symbol [@@js.get "species"]
  
  (**
    A regular expression method that splits a string at the indices that match the regular
    expression. Called by the String.prototype.split method.
  *)
  val split: unit -> symbol [@@js.get "split"]
  
  (**
    A method that converts an object to a corresponding primitive value.
    Called by the ToPrimitive abstract operation.
  *)
  val toPrimitive: unit -> symbol [@@js.get "toPrimitive"]
  
  (**
    A String value that is used in the creation of the default string description of an object.
    Called by the built-in method Object.prototype.toString.
  *)
  val toStringTag: unit -> symbol [@@js.get "toStringTag"]
  
  (**
    An Object whose own property names are property names that are excluded from the 'with'
    environment bindings of the associated objects.
  *)
  val unscopables: unit -> symbol [@@js.get "unscopables"]
  
  (** A reference to the prototype. *)
  val prototype: unit -> t [@@js.get "prototype"]
  
  (**
    Returns a new unique Symbol value.
    @param description Description of the new Symbol object.
  *)
  val invoke: ?description:([`U1 of string | `U2 of float] [@js.union]) -> unit -> symbol [@@js.invoke]
  
  (**
    Returns a Symbol object from the global symbol registry matching the given key if found.
    Otherwise, returns a new symbol with this key.
    @param key key to search for.
  *)
  val for_: string -> symbol [@@js.global "for"]
  
  (**
    Returns a key from the global symbol registry matching the given Symbol if found.
    Otherwise, returns a undefined.
    @param sym Symbol to find the key for.
  *)
  val keyFor: symbol -> string option [@@js.global "keyFor"]
  
  (**
    A method that returns the default iterator for an object. Called by the semantics of the
    for-of statement.
  *)
  val iterator: unit -> symbol [@@js.get "iterator"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Array"] Array : sig
  module AnonymousInterface0 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val get_copyWithin: t -> bool [@@js.get "copyWithin"]
    val set_copyWithin: t -> bool -> unit [@@js.set "copyWithin"]
    val get_entries: t -> bool [@@js.get "entries"]
    val set_entries: t -> bool -> unit [@@js.set "entries"]
    val get_fill: t -> bool [@@js.get "fill"]
    val set_fill: t -> bool -> unit [@@js.set "fill"]
    val get_find: t -> bool [@@js.get "find"]
    val set_find: t -> bool -> unit [@@js.set "find"]
    val get_findIndex: t -> bool [@@js.get "findIndex"]
    val set_findIndex: t -> bool -> unit [@@js.set "findIndex"]
    val get_keys: t -> bool [@@js.get "keys"]
    val set_keys: t -> bool -> unit [@@js.set "keys"]
    val get_values: t -> bool [@@js.get "values"]
    val set_values: t -> bool -> unit [@@js.set "values"]
    val create: copyWithin:bool -> entries:bool -> fill:bool -> find:bool -> findIndex:bool -> keys:bool -> values:bool -> unit -> t [@@js.builder]
  end
  type 'T t = [`Array of 'T | 'T ArrayLike.tags_1 | 'T IterableIterator.tags_1] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`Array of 'T | 'T ArrayLike.tags_1 | 'T IterableIterator.tags_1]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`Array of 'T | 'T ArrayLike.tags_1 | 'T IterableIterator.tags_1]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `Array of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  
  (**
    language version: ES2019
    Calls a defined callback function on each element of an array. Then, flattens the result into
    a new array.
    This is identical to a map followed by flat with depth 1.
    @param callback A function that accepts up to three arguments. The flatMap method calls the
    callback function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callback function. If
    thisArg is omitted, undefined is used as the this value.
  *)
  val flatMap: ('tags, 'T) this -> callback:(this:'This -> value:'T -> index:float -> array:'T list -> ([`U1 of 'U | `U2 of 'U ReadonlyArray.t] [@js.union])) -> ?thisArg:'This -> unit -> 'U list [@@js.call "flatMap"]
  
  (**
    language version: ES2019
    Returns a new array with all sub-array elements concatenated into it recursively up to the
    specified depth.
    @param depth The maximum recursion depth
  *)
  val flat: ('tags, 'T) this -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list [@@js.call "flat"]
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: ('tags, 'T) this -> index:float -> 'T option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: ('tags, 'T) this -> searchElement:'T -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.unscopables]: unit -> AnonymousInterface0.t *)
  (* [Symbol.iterator]: unit -> 'T IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an iterable of key, value pairs for every entry in the array
  *)
  val entries: ('tags, 'T) this -> (float * 'T) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an iterable of keys in the array
  *)
  val keys: ('tags, 'T) this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an iterable of values in the array
  *)
  val values: ('tags, 'T) this -> 'T IterableIterator.t [@@js.call "values"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: ('tags, 'T) this -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool) -> ?thisArg:any -> unit -> 'S option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
  *)
  val find': ('tags, 'T) this -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> 'T option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: ('tags, 'T) this -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    language version: ES2015
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: ('tags, 'T) this -> value:'T -> ?start:float -> ?end_:float -> unit -> ('tags, 'T) this [@@js.call "fill"]
  
  (**
    language version: ES2015
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: ('tags, 'T) this -> target:float -> start:float -> ?end_:float -> unit -> ('tags, 'T) this [@@js.call "copyWithin"]
  
  (** Gets or sets the length of the array. This is a number one higher than the highest index in the array. *)
  val get_length: ('tags, 'T) this -> float [@@js.get "length"]
  
  (** Gets or sets the length of the array. This is a number one higher than the highest index in the array. *)
  val set_length: ('tags, 'T) this -> float -> unit [@@js.set "length"]
  
  (** Returns a string representation of an array. *)
  val toString: ('tags, 'T) this -> string [@@js.call "toString"]
  
  (** Returns a string representation of an array. The elements are converted to string using their toLocaleString methods. *)
  val toLocaleString: ('tags, 'T) this -> string [@@js.call "toLocaleString"]
  
  (**
    Removes the last element from an array and returns it.
    If the array is empty, undefined is returned and the array is not modified.
  *)
  val pop: ('tags, 'T) this -> 'T option [@@js.call "pop"]
  
  (**
    Appends new elements to the end of an array, and returns the new length of the array.
    @param items New elements to add to the array.
  *)
  val push: ('tags, 'T) this -> items:('T list [@js.variadic]) -> float [@@js.call "push"]
  
  (**
    Combines two or more arrays.
    This method returns a new array without modifying any existing arrays.
    @param items Additional arrays and/or items to add to the end of the array.
  *)
  val concat: ('tags, 'T) this -> items:('T ConcatArray.t list [@js.variadic]) -> 'T list [@@js.call "concat"]
  
  (**
    Combines two or more arrays.
    This method returns a new array without modifying any existing arrays.
    @param items Additional arrays and/or items to add to the end of the array.
  *)
  val concat': ('tags, 'T) this -> items:(([`U1 of 'T | `U2 of 'T ConcatArray.t] [@js.union]) list [@js.variadic]) -> 'T list [@@js.call "concat"]
  
  (**
    Adds all the elements of an array into a string, separated by the specified separator string.
    @param separator A string used to separate one element of the array from the next in the resulting string. If omitted, the array elements are separated with a comma.
  *)
  val join: ('tags, 'T) this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Reverses the elements in an array in place.
    This method mutates the array and returns a reference to the same array.
  *)
  val reverse: ('tags, 'T) this -> 'T list [@@js.call "reverse"]
  
  (**
    Removes the first element from an array and returns it.
    If the array is empty, undefined is returned and the array is not modified.
  *)
  val shift: ('tags, 'T) this -> 'T option [@@js.call "shift"]
  
  (**
    Returns a copy of a section of an array.
    For both start and end, a negative index can be used to indicate an offset from the end of the array.
    For example, -2 refers to the second to last element of the array.
    @param start The beginning index of the specified portion of the array.
    If start is undefined, then the slice begins at index 0.
    @param end The end index of the specified portion of the array. This is exclusive of the element at the index 'end'.
    If end is undefined, then the slice extends to the end of the array.
  *)
  val slice: ('tags, 'T) this -> ?start:float -> ?end_:float -> unit -> 'T list [@@js.call "slice"]
  
  (**
    Sorts an array in place.
    This method mutates the array and returns a reference to the same array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if the first argument is less than the second argument, zero if they're equal, and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: ('tags, 'T) this -> ?compareFn:(a:'T -> b:'T -> float) -> unit -> ('tags, 'T) this [@@js.call "sort"]
  
  (**
    Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
    @param start The zero-based location in the array from which to start removing elements.
    @param deleteCount The number of elements to remove.
    @return An array containing the elements that were deleted.
  *)
  val splice: ('tags, 'T) this -> start:float -> ?deleteCount:float -> unit -> 'T list [@@js.call "splice"]
  
  (**
    Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
    @param start The zero-based location in the array from which to start removing elements.
    @param deleteCount The number of elements to remove.
    @param items Elements to insert into the array in place of the deleted elements.
    @return An array containing the elements that were deleted.
  *)
  val splice': ('tags, 'T) this -> start:float -> deleteCount:float -> items:('T list [@js.variadic]) -> 'T list [@@js.call "splice"]
  
  (**
    Inserts new elements at the start of an array, and returns the new length of the array.
    @param items Elements to insert at the start of the array.
  *)
  val unshift: ('tags, 'T) this -> items:('T list [@js.variadic]) -> float [@@js.call "unshift"]
  
  (**
    Returns the index of the first occurrence of a value in an array, or -1 if it is not present.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at index 0.
  *)
  val indexOf: ('tags, 'T) this -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Returns the index of the last occurrence of a specified value in an array, or -1 if it is not present.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin searching backward. If fromIndex is omitted, the search starts at the last index in the array.
  *)
  val lastIndexOf: ('tags, 'T) this -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every': ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: ('tags, 'T) this -> callbackfn:(value:'T -> index:float -> array:'T list -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val map: ('tags, 'T) this -> callbackfn:(value:'T -> index:float -> array:'T list -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "map"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> 'S list [@@js.call "filter"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter': ('tags, 'T) this -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> 'T list [@@js.call "filter"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce: ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduce"]
  
  (** Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduce': ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce'': ('tags, 'T) this -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight: ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduceRight"]
  
  (** Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduceRight': ('tags, 'T) this -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight'': ('tags, 'T) this -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  val get: ('tags, 'T) this -> float -> 'T [@@js.index_get]
  val set: ('tags, 'T) this -> float -> 'T -> unit [@@js.index_set]
  
  (**
    language version: ES2015
    Creates an array from an iterable object.
    @param iterable An iterable object to convert to an array.
  *)
  val from: ([`U1 of 'T Iterable.t | `U2 of 'T ArrayLike.t] [@js.union]) -> 'T list [@@js.global "from"]
  
  (**
    language version: ES2015
    Creates an array from an iterable object.
    @param iterable An iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': iterable:([`U1 of 'T Iterable.t | `U2 of 'T ArrayLike.t] [@js.union]) -> mapfn:(v:'T -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.global "from"]
  
  (**
    language version: ES2015
    Creates an array from an array-like object.
    @param arrayLike An array-like object to convert to an array.
  *)
  val from'': 'T ArrayLike.t -> 'T list [@@js.global "from"]
  
  (**
    language version: ES2015
    Creates an array from an iterable object.
    @param arrayLike An array-like object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from''': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.global "from"]
  
  (**
    language version: ES2015
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: ('T list [@js.variadic]) -> 'T list [@@js.global "of"]
  val create: ?arrayLength:float -> unit -> any list [@@js.create]
  val create': float -> 'T list [@@js.create]
  val create'': ('T list [@js.variadic]) -> 'T list [@@js.create]
  val invoke: ?arrayLength:float -> unit -> any list [@@js.invoke]
  val invoke': float -> 'T list [@@js.invoke]
  val invoke'': ('T list [@js.variadic]) -> 'T list [@@js.invoke]
  val isArray: any -> bool [@@js.global "isArray"]
  val prototype: unit -> any list [@@js.get "prototype"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
  val of_ml: 'T list -> 'T t [@@js.cast]
  val to_ml: 'T t -> 'T list [@@js.cast]
end


module RegExpMatchArray : sig
  module AnonymousInterface16 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val get: t -> string -> string [@@js.index_get]
    val set: t -> string -> string -> unit [@@js.index_set]
  end
  type t = [`Array of string | `Array of string | `RegExpMatchArray | string ArrayLike.tags_1 | string IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Array of string | `Array of string | `RegExpMatchArray | string ArrayLike.tags_1 | string IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Array of string | `Array of string | `RegExpMatchArray | string ArrayLike.tags_1 | string IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RegExpMatchArray ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ES2018 *)
  val get_groups: 'tags this -> AnonymousInterface16.t [@@js.get "groups"]
  
  (** language version: ES2018 *)
  val set_groups: 'tags this -> AnonymousInterface16.t -> unit [@@js.set "groups"]
  val get_index: 'tags this -> float [@@js.get "index"]
  val set_index: 'tags this -> float -> unit [@@js.set "index"]
  val get_input: 'tags this -> string [@@js.get "input"]
  val set_input: 'tags this -> string -> unit [@@js.set "input"]
  val create: groups:AnonymousInterface16.t -> index:float -> input:string -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module RegExpExecArray : sig
  module AnonymousInterface16 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val get: t -> string -> string [@@js.index_get]
    val set: t -> string -> string -> unit [@@js.index_set]
  end
  type t = [`Array of string | `Array of string | `RegExpExecArray | string ArrayLike.tags_1 | string IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Array of string | `Array of string | `RegExpExecArray | string ArrayLike.tags_1 | string IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Array of string | `Array of string | `RegExpExecArray | string ArrayLike.tags_1 | string IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RegExpExecArray ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ES2018 *)
  val get_groups: 'tags this -> AnonymousInterface16.t [@@js.get "groups"]
  
  (** language version: ES2018 *)
  val set_groups: 'tags this -> AnonymousInterface16.t -> unit [@@js.set "groups"]
  val get_index: 'tags this -> float [@@js.get "index"]
  val set_index: 'tags this -> float -> unit [@@js.set "index"]
  val get_input: 'tags this -> string [@@js.get "input"]
  val set_input: 'tags this -> string -> unit [@@js.set "input"]
  val create: groups:AnonymousInterface16.t -> index:float -> input:string -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "RegExp"] RegExp : sig
  type t = [`RegExp] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`RegExp]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`RegExp]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RegExp ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (* [Symbol.matchAll]: string -> RegExpMatchArray.t IterableIterator.t *)
  
  (**
    language version: ES2018
    Returns a Boolean value indicating the state of the dotAll flag (s) used with a regular expression.
    Default is false. Read-only.
  *)
  val get_dotAll: 'tags this -> bool [@@js.get "dotAll"]
  (* [Symbol.match]: string -> RegExpMatchArray.t option *)
  (* [Symbol.replace]: string:string -> replaceValue:string -> string *)
  (* [Symbol.replace]: string:string -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string *)
  (* [Symbol.search]: string -> float *)
  (* [Symbol.split]: string:string -> ?limit:float -> unit -> string list *)
  
  (**
    language version: ES2015
    Returns a string indicating the flags of the regular expression in question. This field is read-only.
    The characters in this string are sequenced and concatenated in the following order:
    
       - "g" for global
       - "i" for ignoreCase
       - "m" for multiline
       - "u" for unicode
       - "y" for sticky
    
    If no flags are set, the value is the empty string.
  *)
  val get_flags: 'tags this -> string [@@js.get "flags"]
  
  (**
    language version: ES2015
    Returns a Boolean value indicating the state of the sticky flag (y) used with a regular
    expression. Default is false. Read-only.
  *)
  val get_sticky: 'tags this -> bool [@@js.get "sticky"]
  
  (**
    language version: ES2015
    Returns a Boolean value indicating the state of the Unicode flag (u) used with a regular
    expression. Default is false. Read-only.
  *)
  val get_unicode: 'tags this -> bool [@@js.get "unicode"]
  
  (**
    Executes a search on a string using a regular expression pattern, and returns an array containing the results of that search.
    @param string The String object or string literal on which to perform the search.
  *)
  val exec: 'tags this -> string:string -> RegExpExecArray.t option [@@js.call "exec"]
  
  (**
    Returns a Boolean value that indicates whether or not a pattern exists in a searched string.
    @param string String on which to perform the search.
  *)
  val test: 'tags this -> string:string -> bool [@@js.call "test"]
  
  (** Returns a copy of the text of the regular expression pattern. Read-only. The regExp argument is a Regular expression object. It can be a variable name or a literal. *)
  val get_source: 'tags this -> string [@@js.get "source"]
  
  (** Returns a Boolean value indicating the state of the global flag (g) used with a regular expression. Default is false. Read-only. *)
  val get_global: 'tags this -> bool [@@js.get "global"]
  
  (** Returns a Boolean value indicating the state of the ignoreCase flag (i) used with a regular expression. Default is false. Read-only. *)
  val get_ignoreCase: 'tags this -> bool [@@js.get "ignoreCase"]
  
  (** Returns a Boolean value indicating the state of the multiline flag (m) used with a regular expression. Default is false. Read-only. *)
  val get_multiline: 'tags this -> bool [@@js.get "multiline"]
  val get_lastIndex: 'tags this -> float [@@js.get "lastIndex"]
  val set_lastIndex: 'tags this -> float -> unit [@@js.set "lastIndex"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val compile: 'tags this -> pattern:string -> ?flags:string -> unit -> 'tags this [@@js.call "compile"]
  
  (** language version: ES2015 *)
  val create: pattern:([`U1 of t | `U2 of string] [@js.union]) -> ?flags:string -> unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val invoke: pattern:([`U1 of t | `U2 of string] [@js.union]) -> ?flags:string -> unit -> t [@@js.invoke]
  val create': ([`U1 of t | `U2 of string] [@js.union]) -> t [@@js.create]
  val create'': pattern:string -> ?flags:string -> unit -> t [@@js.create]
  val invoke': ([`U1 of t | `U2 of string] [@js.union]) -> t [@@js.invoke]
  val invoke'': pattern:string -> ?flags:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _1: unit -> string [@@js.get "$1"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _2: unit -> string [@@js.get "$2"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _3: unit -> string [@@js.get "$3"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _4: unit -> string [@@js.get "$4"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _5: unit -> string [@@js.get "$5"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _6: unit -> string [@@js.get "$6"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _7: unit -> string [@@js.get "$7"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _8: unit -> string [@@js.get "$8"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val _9: unit -> string [@@js.get "$9"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val input: unit -> string [@@js.get "input"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val __: unit -> string [@@js.get "$_"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val lastMatch: unit -> string [@@js.get "lastMatch"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val __': unit -> string [@@js.get "$&"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val lastParen: unit -> string [@@js.get "lastParen"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val __'': unit -> string [@@js.get "$+"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val leftContext: unit -> string [@@js.get "leftContext"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val __''': unit -> string [@@js.get "$`"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val rightContext: unit -> string [@@js.get "rightContext"]
  
  (** @deprecated A legacy feature for browser compatibility *)
  val __'''': unit -> string [@@js.get "$'"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module Partial : sig
  type 'T t = (* FIXME: unknown type '{
      [P in keyof T]?: T[P];
  }' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module[@js.scope "Date"] rec Date : sig
  type t = [`Date] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Date]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Date]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Date ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (* [Symbol.toPrimitive]: ([`L_s33_default[@js "default"]] [@js.enum]) -> string *)
  (* [Symbol.toPrimitive]: ([`L_s91_string[@js "string"]] [@js.enum]) -> string *)
  (* [Symbol.toPrimitive]: ([`L_s72_number[@js "number"]] [@js.enum]) -> float *)
  (* [Symbol.toPrimitive]: string -> ([`Number of float | `String of string] [@js.union on_field "dummy"]) Primitive.t *)
  
  (**
    Converts a date and time to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleString: 'tags this -> ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:Intl.DateTimeFormatOptions.t -> unit -> string [@@js.call "toLocaleString"]
  
  (**
    Converts a date to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleDateString: 'tags this -> ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:Intl.DateTimeFormatOptions.t -> unit -> string [@@js.call "toLocaleDateString"]
  
  (**
    Converts a time to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleTimeString: 'tags this -> ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:Intl.DateTimeFormatOptions.t -> unit -> string [@@js.call "toLocaleTimeString"]
  
  (** Returns a string representation of a date. The format of the string depends on the locale. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns a date as a string value. *)
  val toDateString: 'tags this -> string [@@js.call "toDateString"]
  
  (** Returns a time as a string value. *)
  val toTimeString: 'tags this -> string [@@js.call "toTimeString"]
  
  (** Returns a value as a string value appropriate to the host environment's current locale. *)
  val toLocaleString': 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a date as a string value appropriate to the host environment's current locale. *)
  val toLocaleDateString': 'tags this -> string [@@js.call "toLocaleDateString"]
  
  (** Returns a time as a string value appropriate to the host environment's current locale. *)
  val toLocaleTimeString': 'tags this -> string [@@js.call "toLocaleTimeString"]
  
  (** Returns the stored time value in milliseconds since midnight, January 1, 1970 UTC. *)
  val valueOf: 'tags this -> float [@@js.call "valueOf"]
  
  (** Gets the time value in milliseconds. *)
  val getTime: 'tags this -> float [@@js.call "getTime"]
  
  (** Gets the year, using local time. *)
  val getFullYear: 'tags this -> float [@@js.call "getFullYear"]
  
  (** Gets the year using Universal Coordinated Time (UTC). *)
  val getUTCFullYear: 'tags this -> float [@@js.call "getUTCFullYear"]
  
  (** Gets the month, using local time. *)
  val getMonth: 'tags this -> float [@@js.call "getMonth"]
  
  (** Gets the month of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCMonth: 'tags this -> float [@@js.call "getUTCMonth"]
  
  (** Gets the day-of-the-month, using local time. *)
  val getDate: 'tags this -> float [@@js.call "getDate"]
  
  (** Gets the day-of-the-month, using Universal Coordinated Time (UTC). *)
  val getUTCDate: 'tags this -> float [@@js.call "getUTCDate"]
  
  (** Gets the day of the week, using local time. *)
  val getDay: 'tags this -> float [@@js.call "getDay"]
  
  (** Gets the day of the week using Universal Coordinated Time (UTC). *)
  val getUTCDay: 'tags this -> float [@@js.call "getUTCDay"]
  
  (** Gets the hours in a date, using local time. *)
  val getHours: 'tags this -> float [@@js.call "getHours"]
  
  (** Gets the hours value in a Date object using Universal Coordinated Time (UTC). *)
  val getUTCHours: 'tags this -> float [@@js.call "getUTCHours"]
  
  (** Gets the minutes of a Date object, using local time. *)
  val getMinutes: 'tags this -> float [@@js.call "getMinutes"]
  
  (** Gets the minutes of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCMinutes: 'tags this -> float [@@js.call "getUTCMinutes"]
  
  (** Gets the seconds of a Date object, using local time. *)
  val getSeconds: 'tags this -> float [@@js.call "getSeconds"]
  
  (** Gets the seconds of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCSeconds: 'tags this -> float [@@js.call "getUTCSeconds"]
  
  (** Gets the milliseconds of a Date, using local time. *)
  val getMilliseconds: 'tags this -> float [@@js.call "getMilliseconds"]
  
  (** Gets the milliseconds of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCMilliseconds: 'tags this -> float [@@js.call "getUTCMilliseconds"]
  
  (** Gets the difference in minutes between the time on the local computer and Universal Coordinated Time (UTC). *)
  val getTimezoneOffset: 'tags this -> float [@@js.call "getTimezoneOffset"]
  
  (**
    Sets the date and time value in the Date object.
    @param time A numeric value representing the number of elapsed milliseconds since midnight, January 1, 1970 GMT.
  *)
  val setTime: 'tags this -> time:float -> float [@@js.call "setTime"]
  
  (**
    Sets the milliseconds value in the Date object using local time.
    @param ms A numeric value equal to the millisecond value.
  *)
  val setMilliseconds: 'tags this -> ms:float -> float [@@js.call "setMilliseconds"]
  
  (**
    Sets the milliseconds value in the Date object using Universal Coordinated Time (UTC).
    @param ms A numeric value equal to the millisecond value.
  *)
  val setUTCMilliseconds: 'tags this -> ms:float -> float [@@js.call "setUTCMilliseconds"]
  
  (**
    Sets the seconds value in the Date object using local time.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setSeconds: 'tags this -> sec:float -> ?ms:float -> unit -> float [@@js.call "setSeconds"]
  
  (**
    Sets the seconds value in the Date object using Universal Coordinated Time (UTC).
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setUTCSeconds: 'tags this -> sec:float -> ?ms:float -> unit -> float [@@js.call "setUTCSeconds"]
  
  (**
    Sets the minutes value in the Date object using local time.
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setMinutes: 'tags this -> min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setMinutes"]
  
  (**
    Sets the minutes value in the Date object using Universal Coordinated Time (UTC).
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setUTCMinutes: 'tags this -> min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setUTCMinutes"]
  
  (**
    Sets the hour value in the Date object using local time.
    @param hours A numeric value equal to the hours value.
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setHours: 'tags this -> hours:float -> ?min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setHours"]
  
  (**
    Sets the hours value in the Date object using Universal Coordinated Time (UTC).
    @param hours A numeric value equal to the hours value.
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setUTCHours: 'tags this -> hours:float -> ?min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setUTCHours"]
  
  (**
    Sets the numeric day-of-the-month value of the Date object using local time.
    @param date A numeric value equal to the day of the month.
  *)
  val setDate: 'tags this -> date:float -> float [@@js.call "setDate"]
  
  (**
    Sets the numeric day of the month in the Date object using Universal Coordinated Time (UTC).
    @param date A numeric value equal to the day of the month.
  *)
  val setUTCDate: 'tags this -> date:float -> float [@@js.call "setUTCDate"]
  
  (**
    Sets the month value in the Date object using local time.
    @param month A numeric value equal to the month. The value for January is 0, and other month values follow consecutively.
    @param date A numeric value representing the day of the month. If this value is not supplied, the value from a call to the getDate method is used.
  *)
  val setMonth: 'tags this -> month:float -> ?date:float -> unit -> float [@@js.call "setMonth"]
  
  (**
    Sets the month value in the Date object using Universal Coordinated Time (UTC).
    @param month A numeric value equal to the month. The value for January is 0, and other month values follow consecutively.
    @param date A numeric value representing the day of the month. If it is not supplied, the value from a call to the getUTCDate method is used.
  *)
  val setUTCMonth: 'tags this -> month:float -> ?date:float -> unit -> float [@@js.call "setUTCMonth"]
  
  (**
    Sets the year of the Date object using local time.
    @param year A numeric value for the year.
    @param month A zero-based numeric value for the month (0 for January, 11 for December). Must be specified if numDate is specified.
    @param date A numeric value equal for the day of the month.
  *)
  val setFullYear: 'tags this -> year:float -> ?month:float -> ?date:float -> unit -> float [@@js.call "setFullYear"]
  
  (**
    Sets the year value in the Date object using Universal Coordinated Time (UTC).
    @param year A numeric value equal to the year.
    @param month A numeric value equal to the month. The value for January is 0, and other month values follow consecutively. Must be supplied if numDate is supplied.
    @param date A numeric value equal to the day of the month.
  *)
  val setUTCFullYear: 'tags this -> year:float -> ?month:float -> ?date:float -> unit -> float [@@js.call "setUTCFullYear"]
  
  (** Returns a date converted to a string using Universal Coordinated Time (UTC). *)
  val toUTCString: 'tags this -> string [@@js.call "toUTCString"]
  
  (** Returns a date as a string value in ISO format. *)
  val toISOString: 'tags this -> string [@@js.call "toISOString"]
  
  (** Used by the JSON.stringify method to enable the transformation of an object's data for JavaScript Object Notation (JSON) serialization. *)
  val toJSON: 'tags this -> ?key:any -> unit -> string [@@js.call "toJSON"]
  
  (** language version: ES2015 *)
  val create: ([`U1 of float | `U2 of string | `U3 of t] [@js.union]) -> t [@@js.create]
  val create': unit -> t [@@js.create]
  val create'': ([`U1 of float | `U2 of string] [@js.union]) -> t [@@js.create]
  val create''': year:float -> month:float -> ?date:float -> ?hours:float -> ?minutes:float -> ?seconds:float -> ?ms:float -> unit -> t [@@js.create]
  val invoke: unit -> string [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  
  (**
    Parses a string containing a date, and returns the number of milliseconds between that date and midnight, January 1, 1970.
    @param s A date string
  *)
  val parse: string -> float [@@js.global "parse"]
  
  (**
    Returns the number of milliseconds between midnight, January 1, 1970 Universal Coordinated Time (UTC) (or GMT) and the specified date.
    @param year The full year designation is required for cross-century date accuracy. If year is between 0 and 99 is used, then year is assumed to be 1900 + year.
    @param month The month as a number between 0 and 11 (January to December).
    @param date The date as a number between 1 and 31.
    @param hours Must be supplied if minutes is supplied. A number from 0 to 23 (midnight to 11pm) that specifies the hour.
    @param minutes Must be supplied if seconds is supplied. A number from 0 to 59 that specifies the minutes.
    @param seconds Must be supplied if milliseconds is supplied. A number from 0 to 59 that specifies the seconds.
    @param ms A number from 0 to 999 that specifies the milliseconds.
  *)
  val utc: year:float -> month:float -> ?date:float -> ?hours:float -> ?minutes:float -> ?seconds:float -> ?ms:float -> unit -> float [@@js.global "UTC"]
  val now: unit -> float [@@js.global "now"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


and[@js.scope "Intl"] Intl : sig
  
  (** language version: ES2020 *)
  module RelativeTimeFormatNumeric : sig
    type t = ([`L_s21_always[@js "always"] | `L_s22_auto[@js "auto"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module UnicodeBCP47LocaleIdentifier : sig
    type t = string
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module RelativeTimeFormatStyle : sig
    type t = ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module ResolvedRelativeTimeFormatOptions : sig
    type t = [`Intl_ResolvedRelativeTimeFormatOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_ResolvedRelativeTimeFormatOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_ResolvedRelativeTimeFormatOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_ResolvedRelativeTimeFormatOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_locale: 'tags this -> UnicodeBCP47LocaleIdentifier.t [@@js.get "locale"]
    val set_locale: 'tags this -> UnicodeBCP47LocaleIdentifier.t -> unit [@@js.set "locale"]
    val get_style: 'tags this -> RelativeTimeFormatStyle.t [@@js.get "style"]
    val set_style: 'tags this -> RelativeTimeFormatStyle.t -> unit [@@js.set "style"]
    val get_numeric: 'tags this -> RelativeTimeFormatNumeric.t [@@js.get "numeric"]
    val set_numeric: 'tags this -> RelativeTimeFormatNumeric.t -> unit [@@js.set "numeric"]
    val get_numberingSystem: 'tags this -> string [@@js.get "numberingSystem"]
    val set_numberingSystem: 'tags this -> string -> unit [@@js.set "numberingSystem"]
    val create: locale:UnicodeBCP47LocaleIdentifier.t -> style:RelativeTimeFormatStyle.t -> numeric:RelativeTimeFormatNumeric.t -> numberingSystem:string -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2020 *)
  module RelativeTimeFormatUnit : sig
    type t = ([`L_s101_weeks[@js "weeks"] | `L_s102_year[@js "year"] | `L_s103_years[@js "years"] | `L_s29_day[@js "day"] | `L_s31_days[@js "days"] | `L_s50_hour[@js "hour"] | `L_s51_hours[@js "hours"] | `L_s62_minute[@js "minute"] | `L_s63_minutes[@js "minutes"] | `L_s64_month[@js "month"] | `L_s65_months[@js "months"] | `L_s81_quarter[@js "quarter"] | `L_s82_quarters[@js "quarters"] | `L_s87_second[@js "second"] | `L_s88_seconds[@js "seconds"] | `L_s99_week[@js "week"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module RelativeTimeFormatPart : sig
    type t = [`Intl_RelativeTimeFormatPart] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_RelativeTimeFormatPart]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_RelativeTimeFormatPart]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_RelativeTimeFormatPart ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_type: 'tags this -> string [@@js.get "type"]
    val set_type: 'tags this -> string -> unit [@@js.set "type"]
    val get_value: 'tags this -> string [@@js.get "value"]
    val set_value: 'tags this -> string -> unit [@@js.set "value"]
    val get_unit: 'tags this -> RelativeTimeFormatUnit.t [@@js.get "unit"]
    val set_unit: 'tags this -> RelativeTimeFormatUnit.t -> unit [@@js.set "unit"]
    val create: type_:(string[@js "type"]) -> value:string -> unit:RelativeTimeFormatUnit.t -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2020 *)
  module RelativeTimeFormatLocaleMatcher : sig
    type t = ([`L_s24_best_fit[@js "best fit"] | `L_s57_lookup[@js "lookup"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module RelativeTimeFormatOptions : sig
    type t = [`Intl_RelativeTimeFormatOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_RelativeTimeFormatOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_RelativeTimeFormatOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_RelativeTimeFormatOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** The locale matching algorithm to use. For information about this option, see \[Intl page\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation). *)
    val get_localeMatcher: 'tags this -> RelativeTimeFormatLocaleMatcher.t [@@js.get "localeMatcher"]
    
    (** The locale matching algorithm to use. For information about this option, see \[Intl page\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation). *)
    val set_localeMatcher: 'tags this -> RelativeTimeFormatLocaleMatcher.t -> unit [@@js.set "localeMatcher"]
    
    (** The format of output message. *)
    val get_numeric: 'tags this -> RelativeTimeFormatNumeric.t [@@js.get "numeric"]
    
    (** The format of output message. *)
    val set_numeric: 'tags this -> RelativeTimeFormatNumeric.t -> unit [@@js.set "numeric"]
    
    (** The length of the internationalized message. *)
    val get_style: 'tags this -> RelativeTimeFormatStyle.t [@@js.get "style"]
    
    (** The length of the internationalized message. *)
    val set_style: 'tags this -> RelativeTimeFormatStyle.t -> unit [@@js.set "style"]
    val create: localeMatcher:RelativeTimeFormatLocaleMatcher.t -> numeric:RelativeTimeFormatNumeric.t -> style:RelativeTimeFormatStyle.t -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2020 *)
  module[@js.scope "RelativeTimeFormat"] RelativeTimeFormat : sig
    type t = [`Intl_RelativeTimeFormat] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_RelativeTimeFormat]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_RelativeTimeFormat]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_RelativeTimeFormat ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (**
      Formats a value and a unit according to the locale
      and formatting options of the given
      \[`Intl.RelativeTimeFormat`\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat)
      object.
      
      While this method automatically provides the correct plural forms,
      the grammatical form is otherwise as neutral as possible.
      
      It is the caller's responsibility to handle cut-off logic
      such as deciding between displaying "in 7 days" or "in 1 week".
      This API does not support relative dates involving compound units.
      e.g "in 5 days and 4 hours".
      @param value -  Numeric value to use in the internationalized relative time message
      @param unit - \[Unit\](https://tc39.es/ecma402/#sec-singularrelativetimeunit) to use in the relative time internationalized message.
      @raise exn `RangeError` if `unit` was given something other than `unit` possible values
      @return Internationalized relative time message as string
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/format).
    *)
    val format: 'tags this -> value:float -> unit:RelativeTimeFormatUnit.t -> string [@@js.call "format"]
    
    (**
      Returns an array of objects representing the relative time format in parts that can be used for custom locale-aware formatting.
      @param value - Numeric value to use in the internationalized relative time message
      @param unit - \[Unit\](https://tc39.es/ecma402/#sec-singularrelativetimeunit) to use in the relative time internationalized message.
      @raise exn `RangeError` if `unit` was given something other than `unit` possible values
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/formatToParts).
    *)
    val formatToParts: 'tags this -> value:float -> unit:RelativeTimeFormatUnit.t -> RelativeTimeFormatPart.t list [@@js.call "formatToParts"]
    
    (**
      Provides access to the locale and options computed during initialization of this `Intl.RelativeTimeFormat` object.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/resolvedOptions).
    *)
    val resolvedOptions: 'tags this -> ResolvedRelativeTimeFormatOptions.t [@@js.call "resolvedOptions"]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
    
    (**
      Creates \[Intl.RelativeTimeFormat\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat) objects
      @param locales - A string with a \[BCP 47 language tag\](http://tools.ietf.org/html/rfc5646), or an array of such strings.
      For the general form and interpretation of the locales argument,
      see the \[`Intl` page\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_identification_and_negotiation).
      @param options - An \[object\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat#Parameters)
      with some or all of options of `RelativeTimeFormatOptions`.
      @return \[Intl.RelativeTimeFormat\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat) object.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat).
    *)
    val create: ?locales:([`U1 of UnicodeBCP47LocaleIdentifier.t | `U2 of UnicodeBCP47LocaleIdentifier.t list] [@js.union]) -> ?options:RelativeTimeFormatOptions.t -> unit -> t [@@js.create]
    
    (**
      Returns an array containing those of the provided locales
      that are supported in date and time formatting
      without having to fall back to the runtime's default locale.
      @param locales - A string with a \[BCP 47 language tag\](http://tools.ietf.org/html/rfc5646), or an array of such strings.
      For the general form and interpretation of the locales argument,
      see the \[`Intl` page\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_identification_and_negotiation).
      @param options - An \[object\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat#Parameters)
      with some or all of options of the formatting.
      @return An array containing those of the provided locales
      that are supported in date and time formatting
      without having to fall back to the runtime's default locale.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/supportedLocalesOf).
    *)
    val supportedLocalesOf: ?locales:([`U1 of UnicodeBCP47LocaleIdentifier.t | `U2 of UnicodeBCP47LocaleIdentifier.t list] [@js.union]) -> ?options:RelativeTimeFormatOptions.t -> unit -> UnicodeBCP47LocaleIdentifier.t list [@@js.global "supportedLocalesOf"]
  end
  
  (** language version: ES2018 *)
  module PluralRuleType : sig
    type t = ([`L_s25_cardinal[@js "cardinal"] | `L_s76_ordinal[@js "ordinal"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2018 *)
  module LDMLPluralRule : sig
    type t = ([`L_s104_zero[@js "zero"] | `L_s41_few[@js "few"] | `L_s59_many[@js "many"] | `L_s75_one[@js "one"] | `L_s77_other[@js "other"] | `L_s95_two[@js "two"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2018 *)
  module ResolvedPluralRulesOptions : sig
    type t = [`Intl_ResolvedPluralRulesOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_ResolvedPluralRulesOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_ResolvedPluralRulesOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_ResolvedPluralRulesOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_locale: 'tags this -> string [@@js.get "locale"]
    val set_locale: 'tags this -> string -> unit [@@js.set "locale"]
    val get_pluralCategories: 'tags this -> LDMLPluralRule.t list [@@js.get "pluralCategories"]
    val set_pluralCategories: 'tags this -> LDMLPluralRule.t list -> unit [@@js.set "pluralCategories"]
    val get_type: 'tags this -> PluralRuleType.t [@@js.get "type"]
    val set_type: 'tags this -> PluralRuleType.t -> unit [@@js.set "type"]
    val get_minimumIntegerDigits: 'tags this -> float [@@js.get "minimumIntegerDigits"]
    val set_minimumIntegerDigits: 'tags this -> float -> unit [@@js.set "minimumIntegerDigits"]
    val get_minimumFractionDigits: 'tags this -> float [@@js.get "minimumFractionDigits"]
    val set_minimumFractionDigits: 'tags this -> float -> unit [@@js.set "minimumFractionDigits"]
    val get_maximumFractionDigits: 'tags this -> float [@@js.get "maximumFractionDigits"]
    val set_maximumFractionDigits: 'tags this -> float -> unit [@@js.set "maximumFractionDigits"]
    val get_minimumSignificantDigits: 'tags this -> float [@@js.get "minimumSignificantDigits"]
    val set_minimumSignificantDigits: 'tags this -> float -> unit [@@js.set "minimumSignificantDigits"]
    val get_maximumSignificantDigits: 'tags this -> float [@@js.get "maximumSignificantDigits"]
    val set_maximumSignificantDigits: 'tags this -> float -> unit [@@js.set "maximumSignificantDigits"]
    val create: locale:string -> pluralCategories:LDMLPluralRule.t list -> type_:(PluralRuleType.t[@js "type"]) -> minimumIntegerDigits:float -> minimumFractionDigits:float -> maximumFractionDigits:float -> minimumSignificantDigits:float -> maximumSignificantDigits:float -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2018 *)
  module PluralRulesOptions : sig
    type t = [`Intl_PluralRulesOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_PluralRulesOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_PluralRulesOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_PluralRulesOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_localeMatcher: 'tags this -> ([`L_s24_best_fit[@js "best fit"] | `L_s57_lookup[@js "lookup"]] [@js.enum]) option [@@js.get "localeMatcher"]
    val set_localeMatcher: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s57_lookup[@js "lookup"]] [@js.enum]) | `U2 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "localeMatcher"]
    val get_type: 'tags this -> PluralRuleType.t option [@@js.get "type"]
    val set_type: 'tags this -> ([`Undefined of undefined | `U1 of PluralRuleType.t] [@js.union]) -> unit [@@js.set "type"]
    val get_minimumIntegerDigits: 'tags this -> float option [@@js.get "minimumIntegerDigits"]
    val set_minimumIntegerDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "minimumIntegerDigits"]
    val get_minimumFractionDigits: 'tags this -> float option [@@js.get "minimumFractionDigits"]
    val set_minimumFractionDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "minimumFractionDigits"]
    val get_maximumFractionDigits: 'tags this -> float option [@@js.get "maximumFractionDigits"]
    val set_maximumFractionDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "maximumFractionDigits"]
    val get_minimumSignificantDigits: 'tags this -> float option [@@js.get "minimumSignificantDigits"]
    val set_minimumSignificantDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "minimumSignificantDigits"]
    val get_maximumSignificantDigits: 'tags this -> float option [@@js.get "maximumSignificantDigits"]
    val set_maximumSignificantDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "maximumSignificantDigits"]
    val create: ?localeMatcher:([`L_s24_best_fit[@js "best fit"] | `L_s57_lookup[@js "lookup"]] [@js.enum]) -> ?type_:(PluralRuleType.t[@js "type"]) -> ?minimumIntegerDigits:float -> ?minimumFractionDigits:float -> ?maximumFractionDigits:float -> ?minimumSignificantDigits:float -> ?maximumSignificantDigits:float -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2018 *)
  module[@js.scope "PluralRules"] PluralRules : sig
    module AnonymousInterface4 : sig
      type t = private Ojs.t
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      val get_localeMatcher: t -> ([`L_s24_best_fit[@js "best fit"] | `L_s57_lookup[@js "lookup"]] [@js.enum]) [@@js.get "localeMatcher"]
      val set_localeMatcher: t -> ([`U1 of ([`L_s57_lookup[@js "lookup"]] [@js.enum]) | `U2 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "localeMatcher"]
      val create: localeMatcher:([`L_s24_best_fit[@js "best fit"] | `L_s57_lookup[@js "lookup"]] [@js.enum]) -> unit -> t [@@js.builder]
    end
    type t = [`Intl_PluralRules] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_PluralRules]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_PluralRules]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_PluralRules ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val resolvedOptions: 'tags this -> ResolvedPluralRulesOptions.t [@@js.call "resolvedOptions"]
    val select: 'tags this -> n:float -> LDMLPluralRule.t [@@js.call "select"]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
    val create: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:PluralRulesOptions.t -> unit -> t [@@js.create]
    val invoke: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:PluralRulesOptions.t -> unit -> t [@@js.invoke]
    val supportedLocalesOf: locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:AnonymousInterface4.t -> unit -> string list [@@js.global "supportedLocalesOf"]
  end
  
  
  module ResolvedNumberFormatOptions : sig
    type t = [`Intl_ResolvedNumberFormatOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_ResolvedNumberFormatOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_ResolvedNumberFormatOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_ResolvedNumberFormatOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** language version: ES2020 *)
    val get_compactDisplay: 'tags this -> ([`L_s56_long[@js "long"] | `L_s89_short[@js "short"]] [@js.enum]) [@@js.get "compactDisplay"]
    
    (** language version: ES2020 *)
    val set_compactDisplay: 'tags this -> ([`U1 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum])] [@js.union]) -> unit [@@js.set "compactDisplay"]
    
    (** language version: ES2020 *)
    val get_notation: 'tags this -> ([`L_s27_compact[@js "compact"] | `L_s34_engineering[@js "engineering"] | `L_s85_scientific[@js "scientific"] | `L_s90_standard[@js "standard"]] [@js.enum]) [@@js.get "notation"]
    
    (** language version: ES2020 *)
    val set_notation: 'tags this -> ([`U1 of ([`L_s90_standard[@js "standard"]] [@js.enum]) | `U2 of ([`L_s85_scientific[@js "scientific"]] [@js.enum]) | `U3 of ([`L_s34_engineering[@js "engineering"]] [@js.enum]) | `U4 of ([`L_s27_compact[@js "compact"]] [@js.enum])] [@js.union]) -> unit [@@js.set "notation"]
    
    (** language version: ES2020 *)
    val get_signDisplay: 'tags this -> ([`L_s21_always[@js "always"] | `L_s22_auto[@js "auto"] | `L_s36_exceptZero[@js "exceptZero"] | `L_s69_never[@js "never"]] [@js.enum]) [@@js.get "signDisplay"]
    
    (** language version: ES2020 *)
    val set_signDisplay: 'tags this -> ([`U1 of ([`L_s22_auto[@js "auto"]] [@js.enum]) | `U2 of ([`L_s69_never[@js "never"]] [@js.enum]) | `U3 of ([`L_s21_always[@js "always"]] [@js.enum]) | `U4 of ([`L_s36_exceptZero[@js "exceptZero"]] [@js.enum])] [@js.union]) -> unit [@@js.set "signDisplay"]
    
    (** language version: ES2020 *)
    val get_unit: 'tags this -> string [@@js.get "unit"]
    
    (** language version: ES2020 *)
    val set_unit: 'tags this -> string -> unit [@@js.set "unit"]
    
    (** language version: ES2020 *)
    val get_unitDisplay: 'tags this -> ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) [@@js.get "unitDisplay"]
    
    (** language version: ES2020 *)
    val set_unitDisplay: 'tags this -> ([`U1 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s68_narrow[@js "narrow"]] [@js.enum])] [@js.union]) -> unit [@@js.set "unitDisplay"]
    
    (** language version: ES2020 *)
    val get_currencyDisplay: 'tags this -> string [@@js.get "currencyDisplay"]
    
    (** language version: ES2020 *)
    val set_currencyDisplay: 'tags this -> string -> unit [@@js.set "currencyDisplay"]
    
    (** language version: ES2020 *)
    val get_currencySign: 'tags this -> string [@@js.get "currencySign"]
    
    (** language version: ES2020 *)
    val set_currencySign: 'tags this -> string -> unit [@@js.set "currencySign"]
    val get_locale: 'tags this -> string [@@js.get "locale"]
    val set_locale: 'tags this -> string -> unit [@@js.set "locale"]
    val get_numberingSystem: 'tags this -> string [@@js.get "numberingSystem"]
    val set_numberingSystem: 'tags this -> string -> unit [@@js.set "numberingSystem"]
    val get_style: 'tags this -> string [@@js.get "style"]
    val set_style: 'tags this -> string -> unit [@@js.set "style"]
    val get_currency: 'tags this -> string [@@js.get "currency"]
    val set_currency: 'tags this -> string -> unit [@@js.set "currency"]
    val get_minimumIntegerDigits: 'tags this -> float [@@js.get "minimumIntegerDigits"]
    val set_minimumIntegerDigits: 'tags this -> float -> unit [@@js.set "minimumIntegerDigits"]
    val get_minimumFractionDigits: 'tags this -> float [@@js.get "minimumFractionDigits"]
    val set_minimumFractionDigits: 'tags this -> float -> unit [@@js.set "minimumFractionDigits"]
    val get_maximumFractionDigits: 'tags this -> float [@@js.get "maximumFractionDigits"]
    val set_maximumFractionDigits: 'tags this -> float -> unit [@@js.set "maximumFractionDigits"]
    val get_minimumSignificantDigits: 'tags this -> float [@@js.get "minimumSignificantDigits"]
    val set_minimumSignificantDigits: 'tags this -> float -> unit [@@js.set "minimumSignificantDigits"]
    val get_maximumSignificantDigits: 'tags this -> float [@@js.get "maximumSignificantDigits"]
    val set_maximumSignificantDigits: 'tags this -> float -> unit [@@js.set "maximumSignificantDigits"]
    val get_useGrouping: 'tags this -> bool [@@js.get "useGrouping"]
    val set_useGrouping: 'tags this -> bool -> unit [@@js.set "useGrouping"]
    val create: compactDisplay:([`L_s56_long[@js "long"] | `L_s89_short[@js "short"]] [@js.enum]) -> notation:([`L_s27_compact[@js "compact"] | `L_s34_engineering[@js "engineering"] | `L_s85_scientific[@js "scientific"] | `L_s90_standard[@js "standard"]] [@js.enum]) -> signDisplay:([`L_s21_always[@js "always"] | `L_s22_auto[@js "auto"] | `L_s36_exceptZero[@js "exceptZero"] | `L_s69_never[@js "never"]] [@js.enum]) -> unit:string -> unitDisplay:([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) -> currencyDisplay:string -> currencySign:string -> locale:string -> numberingSystem:string -> style:string -> currency:string -> minimumIntegerDigits:float -> minimumFractionDigits:float -> maximumFractionDigits:float -> minimumSignificantDigits:float -> maximumSignificantDigits:float -> useGrouping:bool -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2018 *)
  module ES2020NumberFormatPartType : sig
    type t = ([`L_s27_compact[@js "compact"] | `L_s37_exponentInteger[@js "exponentInteger"] | `L_s38_exponentMinusSign[@js "exponentMinusSign"] | `L_s39_exponentSeparator[@js "exponentSeparator"] | `L_s96_unit[@js "unit"] | `L_s97_unknown[@js "unknown"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2018 *)
  module ES2018NumberFormatPartType : sig
    type t = ([`L_s26_code[@js "code"] | `L_s28_currency[@js "currency"] | `L_s32_decimal[@js "decimal"] | `L_s42_fraction[@js "fraction"] | `L_s45_group[@js "group"] | `L_s52_infinity[@js "infinity"] | `L_s53_integer[@js "integer"] | `L_s55_literal[@js "literal"] | `L_s61_minusSign[@js "minusSign"] | `L_s66_name[@js "name"] | `L_s67_nan[@js "nan"] | `L_s78_percent[@js "percent"] | `L_s79_percentSign[@js "percentSign"] | `L_s80_plusSign[@js "plusSign"] | `L_s92_symbol[@js "symbol"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2018 *)
  module NumberFormatPartTypes : sig
    type t = ([`L_s26_code[@js "code"] | `L_s27_compact[@js "compact"] | `L_s28_currency[@js "currency"] | `L_s32_decimal[@js "decimal"] | `L_s37_exponentInteger[@js "exponentInteger"] | `L_s38_exponentMinusSign[@js "exponentMinusSign"] | `L_s39_exponentSeparator[@js "exponentSeparator"] | `L_s42_fraction[@js "fraction"] | `L_s45_group[@js "group"] | `L_s52_infinity[@js "infinity"] | `L_s53_integer[@js "integer"] | `L_s55_literal[@js "literal"] | `L_s61_minusSign[@js "minusSign"] | `L_s66_name[@js "name"] | `L_s67_nan[@js "nan"] | `L_s78_percent[@js "percent"] | `L_s79_percentSign[@js "percentSign"] | `L_s80_plusSign[@js "plusSign"] | `L_s92_symbol[@js "symbol"] | `L_s96_unit[@js "unit"] | `L_s97_unknown[@js "unknown"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2018 *)
  module NumberFormatPart : sig
    type t = [`Intl_NumberFormatPart] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_NumberFormatPart]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_NumberFormatPart]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_NumberFormatPart ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_type: 'tags this -> NumberFormatPartTypes.t [@@js.get "type"]
    val set_type: 'tags this -> NumberFormatPartTypes.t -> unit [@@js.set "type"]
    val get_value: 'tags this -> string [@@js.get "value"]
    val set_value: 'tags this -> string -> unit [@@js.set "value"]
    val create: type_:(NumberFormatPartTypes.t[@js "type"]) -> value:string -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  
  module NumberFormatOptions : sig
    type t = [`Intl_NumberFormatOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_NumberFormatOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_NumberFormatOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_NumberFormatOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** language version: ES2020 *)
    val get_compactDisplay: 'tags this -> ([`L_s56_long[@js "long"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "compactDisplay"]
    
    (** language version: ES2020 *)
    val set_compactDisplay: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum])] [@js.union]) -> unit [@@js.set "compactDisplay"]
    
    (** language version: ES2020 *)
    val get_notation: 'tags this -> ([`L_s27_compact[@js "compact"] | `L_s34_engineering[@js "engineering"] | `L_s85_scientific[@js "scientific"] | `L_s90_standard[@js "standard"]] [@js.enum]) option [@@js.get "notation"]
    
    (** language version: ES2020 *)
    val set_notation: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s90_standard[@js "standard"]] [@js.enum]) | `U2 of ([`L_s85_scientific[@js "scientific"]] [@js.enum]) | `U3 of ([`L_s34_engineering[@js "engineering"]] [@js.enum]) | `U4 of ([`L_s27_compact[@js "compact"]] [@js.enum])] [@js.union]) -> unit [@@js.set "notation"]
    
    (** language version: ES2020 *)
    val get_signDisplay: 'tags this -> ([`L_s21_always[@js "always"] | `L_s22_auto[@js "auto"] | `L_s36_exceptZero[@js "exceptZero"] | `L_s69_never[@js "never"]] [@js.enum]) option [@@js.get "signDisplay"]
    
    (** language version: ES2020 *)
    val set_signDisplay: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s22_auto[@js "auto"]] [@js.enum]) | `U2 of ([`L_s69_never[@js "never"]] [@js.enum]) | `U3 of ([`L_s21_always[@js "always"]] [@js.enum]) | `U4 of ([`L_s36_exceptZero[@js "exceptZero"]] [@js.enum])] [@js.union]) -> unit [@@js.set "signDisplay"]
    
    (** language version: ES2020 *)
    val get_unit: 'tags this -> string option [@@js.get "unit"]
    
    (** language version: ES2020 *)
    val set_unit: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "unit"]
    
    (** language version: ES2020 *)
    val get_unitDisplay: 'tags this -> ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "unitDisplay"]
    
    (** language version: ES2020 *)
    val set_unitDisplay: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s68_narrow[@js "narrow"]] [@js.enum])] [@js.union]) -> unit [@@js.set "unitDisplay"]
    
    (** language version: ES2020 *)
    val get_currencyDisplay: 'tags this -> string option [@@js.get "currencyDisplay"]
    
    (** language version: ES2020 *)
    val set_currencyDisplay: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "currencyDisplay"]
    
    (** language version: ES2020 *)
    val get_currencySign: 'tags this -> string option [@@js.get "currencySign"]
    
    (** language version: ES2020 *)
    val set_currencySign: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "currencySign"]
    val get_localeMatcher: 'tags this -> string option [@@js.get "localeMatcher"]
    val set_localeMatcher: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "localeMatcher"]
    val get_style: 'tags this -> string option [@@js.get "style"]
    val set_style: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "style"]
    val get_currency: 'tags this -> string option [@@js.get "currency"]
    val set_currency: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "currency"]
    val get_currencySign': 'tags this -> string option [@@js.get "currencySign"]
    val set_currencySign': 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "currencySign"]
    val get_useGrouping: 'tags this -> bool option [@@js.get "useGrouping"]
    val set_useGrouping: 'tags this -> ([`Undefined of undefined | `U1 of bool] [@js.union]) -> unit [@@js.set "useGrouping"]
    val get_minimumIntegerDigits: 'tags this -> float option [@@js.get "minimumIntegerDigits"]
    val set_minimumIntegerDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "minimumIntegerDigits"]
    val get_minimumFractionDigits: 'tags this -> float option [@@js.get "minimumFractionDigits"]
    val set_minimumFractionDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "minimumFractionDigits"]
    val get_maximumFractionDigits: 'tags this -> float option [@@js.get "maximumFractionDigits"]
    val set_maximumFractionDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "maximumFractionDigits"]
    val get_minimumSignificantDigits: 'tags this -> float option [@@js.get "minimumSignificantDigits"]
    val set_minimumSignificantDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "minimumSignificantDigits"]
    val get_maximumSignificantDigits: 'tags this -> float option [@@js.get "maximumSignificantDigits"]
    val set_maximumSignificantDigits: 'tags this -> ([`Undefined of undefined | `U1 of float] [@js.union]) -> unit [@@js.set "maximumSignificantDigits"]
    val create: ?compactDisplay:([`L_s56_long[@js "long"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?notation:([`L_s27_compact[@js "compact"] | `L_s34_engineering[@js "engineering"] | `L_s85_scientific[@js "scientific"] | `L_s90_standard[@js "standard"]] [@js.enum]) -> ?signDisplay:([`L_s21_always[@js "always"] | `L_s22_auto[@js "auto"] | `L_s36_exceptZero[@js "exceptZero"] | `L_s69_never[@js "never"]] [@js.enum]) -> ?unit:string -> ?unitDisplay:([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?currencyDisplay:string -> ?currencySign:string -> ?localeMatcher:string -> ?style:string -> ?currency:string -> ?currencySign:string -> ?useGrouping:bool -> ?minimumIntegerDigits:float -> ?minimumFractionDigits:float -> ?maximumFractionDigits:float -> ?minimumSignificantDigits:float -> ?maximumSignificantDigits:float -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  
  module[@js.scope "NumberFormat"] NumberFormat : sig
    type t = [`Intl_NumberFormat] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_NumberFormat]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_NumberFormat]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_NumberFormat ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** language version: ESNext *)
    val formatRange: 'tags this -> startDate:([`U1 of float | `U2 of bigint] [@js.union]) -> endDate:([`U1 of float | `U2 of bigint] [@js.union]) -> string [@@js.call "formatRange"]
    
    (** language version: ESNext *)
    val formatRangeToParts: 'tags this -> startDate:([`U1 of float | `U2 of bigint] [@js.union]) -> endDate:([`U1 of float | `U2 of bigint] [@js.union]) -> NumberFormatPart.t list [@@js.call "formatRangeToParts"]
    
    (** language version: ES2020 *)
    val format: 'tags this -> value:([`U1 of float | `U2 of bigint] [@js.union]) -> string [@@js.call "format"]
    
    (** language version: ES2020 *)
    val resolvedOptions: 'tags this -> ResolvedNumberFormatOptions.t [@@js.call "resolvedOptions"]
    
    (** language version: ES2018 *)
    val formatToParts: 'tags this -> ?number:([`U1 of float | `U2 of bigint] [@js.union]) -> unit -> NumberFormatPart.t list [@@js.call "formatToParts"]
    val format': 'tags this -> value:float -> string [@@js.call "format"]
    val resolvedOptions': 'tags this -> ResolvedNumberFormatOptions.t [@@js.call "resolvedOptions"]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
    val create: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:NumberFormatOptions.t -> unit -> t [@@js.create]
    val invoke: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:NumberFormatOptions.t -> unit -> t [@@js.invoke]
    val supportedLocalesOf: locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:NumberFormatOptions.t -> unit -> string list [@@js.global "supportedLocalesOf"]
  end
  
  (** language version: ES2020 *)
  module LocaleHourCycleKey : sig
    type t = ([`L_s46_h11[@js "h11"] | `L_s47_h12[@js "h12"] | `L_s48_h23[@js "h23"] | `L_s49_h24[@js "h24"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module LocaleCollationCaseFirst : sig
    type t = ([`L_s40_false[@js "false"] | `L_s58_lower[@js "lower"] | `L_s98_upper[@js "upper"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module LocaleOptions : sig
    type t = [`Intl_LocaleOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_LocaleOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_LocaleOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_LocaleOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** A string containing the language, and the script and region if available. *)
    val get_baseName: 'tags this -> string [@@js.get "baseName"]
    
    (** A string containing the language, and the script and region if available. *)
    val set_baseName: 'tags this -> string -> unit [@@js.set "baseName"]
    
    (** The part of the Locale that indicates the locale's calendar era. *)
    val get_calendar: 'tags this -> string [@@js.get "calendar"]
    
    (** The part of the Locale that indicates the locale's calendar era. *)
    val set_calendar: 'tags this -> string -> unit [@@js.set "calendar"]
    
    (** Flag that defines whether case is taken into account for the locale's collation rules. *)
    val get_caseFirst: 'tags this -> LocaleCollationCaseFirst.t [@@js.get "caseFirst"]
    
    (** Flag that defines whether case is taken into account for the locale's collation rules. *)
    val set_caseFirst: 'tags this -> LocaleCollationCaseFirst.t -> unit [@@js.set "caseFirst"]
    
    (** The collation type used for sorting *)
    val get_collation: 'tags this -> string [@@js.get "collation"]
    
    (** The collation type used for sorting *)
    val set_collation: 'tags this -> string -> unit [@@js.set "collation"]
    
    (** The time keeping format convention used by the locale. *)
    val get_hourCycle: 'tags this -> LocaleHourCycleKey.t [@@js.get "hourCycle"]
    
    (** The time keeping format convention used by the locale. *)
    val set_hourCycle: 'tags this -> LocaleHourCycleKey.t -> unit [@@js.set "hourCycle"]
    
    (** The primary language subtag associated with the locale. *)
    val get_language: 'tags this -> string [@@js.get "language"]
    
    (** The primary language subtag associated with the locale. *)
    val set_language: 'tags this -> string -> unit [@@js.set "language"]
    
    (** The numeral system used by the locale. *)
    val get_numberingSystem: 'tags this -> string [@@js.get "numberingSystem"]
    
    (** The numeral system used by the locale. *)
    val set_numberingSystem: 'tags this -> string -> unit [@@js.set "numberingSystem"]
    
    (** Flag that defines whether the locale has special collation handling for numeric characters. *)
    val get_numeric: 'tags this -> bool [@@js.get "numeric"]
    
    (** Flag that defines whether the locale has special collation handling for numeric characters. *)
    val set_numeric: 'tags this -> bool -> unit [@@js.set "numeric"]
    
    (** The region of the world (usually a country) associated with the locale. Possible values are region codes as defined by ISO 3166-1. *)
    val get_region: 'tags this -> string [@@js.get "region"]
    
    (** The region of the world (usually a country) associated with the locale. Possible values are region codes as defined by ISO 3166-1. *)
    val set_region: 'tags this -> string -> unit [@@js.set "region"]
    
    (** The script used for writing the particular language used in the locale. Possible values are script codes as defined by ISO 15924. *)
    val get_script: 'tags this -> string [@@js.get "script"]
    
    (** The script used for writing the particular language used in the locale. Possible values are script codes as defined by ISO 15924. *)
    val set_script: 'tags this -> string -> unit [@@js.set "script"]
    val create: baseName:string -> calendar:string -> caseFirst:LocaleCollationCaseFirst.t -> collation:string -> hourCycle:LocaleHourCycleKey.t -> language:string -> numberingSystem:string -> numeric:bool -> region:string -> script:string -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2020 *)
  module BCP47LanguageTag : sig
    type t = string
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2020 *)
  module[@js.scope "Locale"] Locale : sig
    type t = [`Intl_Locale | `Intl_LocaleOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_Locale | `Intl_LocaleOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_Locale | `Intl_LocaleOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_Locale ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** Gets the most likely values for the language, script, and region of the locale based on existing values. *)
    val maximize: 'tags this -> t [@@js.call "maximize"]
    
    (** Attempts to remove information about the locale that would be added by calling `Locale.maximize()`. *)
    val minimize: 'tags this -> t [@@js.call "minimize"]
    
    (** Returns the locale's full locale identifier string. *)
    val toString: 'tags this -> BCP47LanguageTag.t [@@js.call "toString"]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
    val create: ?tag:BCP47LanguageTag.t -> ?options:LocaleOptions.t -> unit -> t [@@js.create]
  end
  
  (** language version: ES2020 *)
  module DisplayNamesOptions : sig
    type t = [`Intl_DisplayNamesOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_DisplayNamesOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_DisplayNamesOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_DisplayNamesOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_locale: 'tags this -> UnicodeBCP47LocaleIdentifier.t [@@js.get "locale"]
    val set_locale: 'tags this -> UnicodeBCP47LocaleIdentifier.t -> unit [@@js.set "locale"]
    val get_localeMatcher: 'tags this -> RelativeTimeFormatLocaleMatcher.t [@@js.get "localeMatcher"]
    val set_localeMatcher: 'tags this -> RelativeTimeFormatLocaleMatcher.t -> unit [@@js.set "localeMatcher"]
    val get_style: 'tags this -> RelativeTimeFormatStyle.t [@@js.get "style"]
    val set_style: 'tags this -> RelativeTimeFormatStyle.t -> unit [@@js.set "style"]
    val get_type: 'tags this -> ([`L_s28_currency[@js "currency"] | `L_s54_language[@js "language"] | `L_s83_region[@js "region"] | `L_s86_script[@js "script"]] [@js.enum]) [@@js.get "type"]
    val set_type: 'tags this -> ([`U1 of ([`L_s54_language[@js "language"]] [@js.enum]) | `U2 of ([`L_s83_region[@js "region"]] [@js.enum]) | `U3 of ([`L_s86_script[@js "script"]] [@js.enum]) | `U4 of ([`L_s28_currency[@js "currency"]] [@js.enum])] [@js.union]) -> unit [@@js.set "type"]
    val get_fallback: 'tags this -> ([`L_s26_code[@js "code"] | `L_s70_none[@js "none"]] [@js.enum]) [@@js.get "fallback"]
    val set_fallback: 'tags this -> ([`U1 of ([`L_s26_code[@js "code"]] [@js.enum]) | `U2 of ([`L_s70_none[@js "none"]] [@js.enum])] [@js.union]) -> unit [@@js.set "fallback"]
    val create: locale:UnicodeBCP47LocaleIdentifier.t -> localeMatcher:RelativeTimeFormatLocaleMatcher.t -> style:RelativeTimeFormatStyle.t -> type_:(([`L_s28_currency[@js "currency"] | `L_s54_language[@js "language"] | `L_s83_region[@js "region"] | `L_s86_script[@js "script"]] [@js.enum])[@js "type"]) -> fallback:([`L_s26_code[@js "code"] | `L_s70_none[@js "none"]] [@js.enum]) -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2020 *)
  module[@js.scope "DisplayNames"] DisplayNames : sig
    module AnonymousInterface2 : sig
      type t = private Ojs.t
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      val get_localeMatcher: t -> RelativeTimeFormatLocaleMatcher.t [@@js.get "localeMatcher"]
      val set_localeMatcher: t -> RelativeTimeFormatLocaleMatcher.t -> unit [@@js.set "localeMatcher"]
      val create: localeMatcher:RelativeTimeFormatLocaleMatcher.t -> unit -> t [@@js.builder]
    end
    type t = [`Intl_DisplayNames] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_DisplayNames]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_DisplayNames]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_DisplayNames ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (**
      Receives a code and returns a string based on the locale and options provided when instantiating
      \[`Intl.DisplayNames()`\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames)
      @param code The `code` to provide depends on the `type` passed to display name during creation:
      - If the type is `"region"`, code should be either an \[ISO-3166 two letters region code\](https://www.iso.org/iso-3166-country-codes.html),
      or a \[three digits UN M49 Geographic Regions\](https://unstats.un.org/unsd/methodology/m49/).
      - If the type is `"script"`, code should be an \[ISO-15924 four letters script code\](https://unicode.org/iso15924/iso15924-codes.html).
      - If the type is `"language"`, code should be a `languageCode` \["-" `scriptCode`\] \["-" `regionCode` \] *("-" `variant` )
      subsequence of the unicode_language_id grammar in \[UTS 35's Unicode Language and Locale Identifiers grammar\](https://unicode.org/reports/tr35/#Unicode_language_identifier).
      `languageCode` is either a two letters ISO 639-1 language code or a three letters ISO 639-2 language code.
      - If the type is `"currency"`, code should be a \[3-letter ISO 4217 currency code\](https://www.iso.org/iso-4217-currency-codes.html).
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames/of).
    *)
    val of_: 'tags this -> code:string -> string option [@@js.call "of"]
    
    (**
      Returns a new object with properties reflecting the locale and style formatting options computed during the construction of the current
      \[`Intl/DisplayNames`\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames) object.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames/resolvedOptions).
    *)
    val resolvedOptions: 'tags this -> DisplayNamesOptions.t [@@js.call "resolvedOptions"]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    
    (**
      @param locales A string with a BCP 47 language tag, or an array of such strings.
      For the general form and interpretation of the `locales` argument, see the \[Intl\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#locale_identification_and_negotiation)
      page.
      @param options An object for setting up a display name.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames/DisplayNames).
    *)
    val create: ?locales:([`U1 of BCP47LanguageTag.t | `U2 of BCP47LanguageTag.t list] [@js.union]) -> ?options:DisplayNamesOptions.t Partial.t -> unit -> t [@@js.create]
    
    (**
      Returns an array containing those of the provided locales that are supported in display names without having to fall back to the runtime's default locale.
      @param locales A string with a BCP 47 language tag, or an array of such strings.
      For the general form and interpretation of the `locales` argument, see the \[Intl\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#locale_identification_and_negotiation)
      page.
      @param options An object with a locale matcher.
      @return An array of strings representing a subset of the given locale tags that are supported in display names without having to fall back to the runtime's default locale.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DisplayNames/supportedLocalesOf).
    *)
    val supportedLocalesOf: locales:([`U1 of BCP47LanguageTag.t | `U2 of BCP47LanguageTag.t list] [@js.union]) -> ?options:AnonymousInterface2.t -> unit -> BCP47LanguageTag.t list [@@js.global "supportedLocalesOf"]
  end
  
  
  module ResolvedDateTimeFormatOptions : sig
    type t = [`Intl_ResolvedDateTimeFormatOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_ResolvedDateTimeFormatOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_ResolvedDateTimeFormatOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_ResolvedDateTimeFormatOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** language version: ESNext *)
    val get_formatMatcher: 'tags this -> ([`L_s23_basic[@js "basic"] | `L_s24_best_fit[@js "best fit"]] [@js.enum]) [@@js.get "formatMatcher"]
    
    (** language version: ESNext *)
    val set_formatMatcher: 'tags this -> ([`U1 of ([`L_s23_basic[@js "basic"]] [@js.enum]) | `U2 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum]) | `U3 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "formatMatcher"]
    
    (** language version: ESNext *)
    val get_dateStyle: 'tags this -> ([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) [@@js.get "dateStyle"]
    
    (** language version: ESNext *)
    val set_dateStyle: 'tags this -> ([`U1 of ([`L_s44_full[@js "full"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s60_medium[@js "medium"]] [@js.enum]) | `U4 of ([`L_s89_short[@js "short"]] [@js.enum])] [@js.union]) -> unit [@@js.set "dateStyle"]
    
    (** language version: ESNext *)
    val get_timeStyle: 'tags this -> ([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) [@@js.get "timeStyle"]
    
    (** language version: ESNext *)
    val set_timeStyle: 'tags this -> ([`U1 of ([`L_s44_full[@js "full"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s60_medium[@js "medium"]] [@js.enum]) | `U4 of ([`L_s89_short[@js "short"]] [@js.enum])] [@js.union]) -> unit [@@js.set "timeStyle"]
    
    (** language version: ESNext *)
    val get_hourCycle: 'tags this -> ([`L_s46_h11[@js "h11"] | `L_s47_h12[@js "h12"] | `L_s48_h23[@js "h23"] | `L_s49_h24[@js "h24"]] [@js.enum]) [@@js.get "hourCycle"]
    
    (** language version: ESNext *)
    val set_hourCycle: 'tags this -> ([`U1 of ([`L_s46_h11[@js "h11"]] [@js.enum]) | `U2 of ([`L_s47_h12[@js "h12"]] [@js.enum]) | `U3 of ([`L_s48_h23[@js "h23"]] [@js.enum]) | `U4 of ([`L_s49_h24[@js "h24"]] [@js.enum])] [@js.union]) -> unit [@@js.set "hourCycle"]
    
    (** language version: ESNext *)
    val get_dayPeriod: 'tags this -> ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) [@@js.get "dayPeriod"]
    
    (** language version: ESNext *)
    val set_dayPeriod: 'tags this -> ([`U1 of ([`L_s68_narrow[@js "narrow"]] [@js.enum]) | `U2 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U3 of ([`L_s56_long[@js "long"]] [@js.enum])] [@js.union]) -> unit [@@js.set "dayPeriod"]
    
    (** language version: ESNext *)
    val get_fractionalSecondDigits: 'tags this -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3]] [@js.enum]) [@@js.get "fractionalSecondDigits"]
    
    (** language version: ESNext *)
    val set_fractionalSecondDigits: 'tags this -> ([`U1 of ([`L_n_0[@js 0]] [@js.enum]) | `U2 of ([`L_n_1[@js 1]] [@js.enum]) | `U3 of ([`L_n_2[@js 2]] [@js.enum]) | `U4 of ([`L_n_3[@js 3]] [@js.enum])] [@js.union]) -> unit [@@js.set "fractionalSecondDigits"]
    val get_locale: 'tags this -> string [@@js.get "locale"]
    val set_locale: 'tags this -> string -> unit [@@js.set "locale"]
    val get_calendar: 'tags this -> string [@@js.get "calendar"]
    val set_calendar: 'tags this -> string -> unit [@@js.set "calendar"]
    val get_numberingSystem: 'tags this -> string [@@js.get "numberingSystem"]
    val set_numberingSystem: 'tags this -> string -> unit [@@js.set "numberingSystem"]
    val get_timeZone: 'tags this -> string [@@js.get "timeZone"]
    val set_timeZone: 'tags this -> string -> unit [@@js.set "timeZone"]
    val get_hour12: 'tags this -> bool [@@js.get "hour12"]
    val set_hour12: 'tags this -> bool -> unit [@@js.set "hour12"]
    val get_weekday: 'tags this -> string [@@js.get "weekday"]
    val set_weekday: 'tags this -> string -> unit [@@js.set "weekday"]
    val get_era: 'tags this -> string [@@js.get "era"]
    val set_era: 'tags this -> string -> unit [@@js.set "era"]
    val get_year: 'tags this -> string [@@js.get "year"]
    val set_year: 'tags this -> string -> unit [@@js.set "year"]
    val get_month: 'tags this -> string [@@js.get "month"]
    val set_month: 'tags this -> string -> unit [@@js.set "month"]
    val get_day: 'tags this -> string [@@js.get "day"]
    val set_day: 'tags this -> string -> unit [@@js.set "day"]
    val get_hour: 'tags this -> string [@@js.get "hour"]
    val set_hour: 'tags this -> string -> unit [@@js.set "hour"]
    val get_minute: 'tags this -> string [@@js.get "minute"]
    val set_minute: 'tags this -> string -> unit [@@js.set "minute"]
    val get_second: 'tags this -> string [@@js.get "second"]
    val set_second: 'tags this -> string -> unit [@@js.set "second"]
    val get_timeZoneName: 'tags this -> string [@@js.get "timeZoneName"]
    val set_timeZoneName: 'tags this -> string -> unit [@@js.set "timeZoneName"]
    val create: formatMatcher:([`L_s23_basic[@js "basic"] | `L_s24_best_fit[@js "best fit"]] [@js.enum]) -> dateStyle:([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) -> timeStyle:([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) -> hourCycle:([`L_s46_h11[@js "h11"] | `L_s47_h12[@js "h12"] | `L_s48_h23[@js "h23"] | `L_s49_h24[@js "h24"]] [@js.enum]) -> dayPeriod:([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) -> fractionalSecondDigits:([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3]] [@js.enum]) -> locale:string -> calendar:string -> numberingSystem:string -> timeZone:string -> hour12:bool -> weekday:string -> era:string -> year:string -> month:string -> day:string -> hour:string -> minute:string -> second:string -> timeZoneName:string -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  (** language version: ES2017 *)
  module DateTimeFormatPartTypes : sig
    type t = ([`L_s100_weekday[@js "weekday"] | `L_s102_year[@js "year"] | `L_s29_day[@js "day"] | `L_s30_dayPeriod[@js "dayPeriod"] | `L_s35_era[@js "era"] | `L_s50_hour[@js "hour"] | `L_s55_literal[@js "literal"] | `L_s62_minute[@js "minute"] | `L_s64_month[@js "month"] | `L_s87_second[@js "second"] | `L_s93_timeZoneName[@js "timeZoneName"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  
  (** language version: ES2017 *)
  module DateTimeFormatPart : sig
    type t = [`Intl_DateTimeFormatPart] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_DateTimeFormatPart]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_DateTimeFormatPart]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_DateTimeFormatPart ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_type: 'tags this -> DateTimeFormatPartTypes.t [@@js.get "type"]
    val set_type: 'tags this -> DateTimeFormatPartTypes.t -> unit [@@js.set "type"]
    val get_value: 'tags this -> string [@@js.get "value"]
    val set_value: 'tags this -> string -> unit [@@js.set "value"]
    val create: type_:(DateTimeFormatPartTypes.t[@js "type"]) -> value:string -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  
  module DateTimeFormatOptions : sig
    type t = [`Intl_DateTimeFormatOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_DateTimeFormatOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_DateTimeFormatOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_DateTimeFormatOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** language version: ESNext *)
    val get_formatMatcher: 'tags this -> ([`L_s23_basic[@js "basic"] | `L_s24_best_fit[@js "best fit"]] [@js.enum]) option [@@js.get "formatMatcher"]
    
    (** language version: ESNext *)
    val set_formatMatcher: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s23_basic[@js "basic"]] [@js.enum]) | `U2 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum]) | `U3 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "formatMatcher"]
    
    (** language version: ESNext *)
    val get_dateStyle: 'tags this -> ([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "dateStyle"]
    
    (** language version: ESNext *)
    val set_dateStyle: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s44_full[@js "full"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s60_medium[@js "medium"]] [@js.enum]) | `U4 of ([`L_s89_short[@js "short"]] [@js.enum])] [@js.union]) -> unit [@@js.set "dateStyle"]
    
    (** language version: ESNext *)
    val get_timeStyle: 'tags this -> ([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "timeStyle"]
    
    (** language version: ESNext *)
    val set_timeStyle: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s44_full[@js "full"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s60_medium[@js "medium"]] [@js.enum]) | `U4 of ([`L_s89_short[@js "short"]] [@js.enum])] [@js.union]) -> unit [@@js.set "timeStyle"]
    
    (** language version: ESNext *)
    val get_dayPeriod: 'tags this -> ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "dayPeriod"]
    
    (** language version: ESNext *)
    val set_dayPeriod: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s68_narrow[@js "narrow"]] [@js.enum]) | `U2 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U3 of ([`L_s56_long[@js "long"]] [@js.enum])] [@js.union]) -> unit [@@js.set "dayPeriod"]
    
    (** language version: ESNext *)
    val get_fractionalSecondDigits: 'tags this -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3]] [@js.enum]) option [@@js.get "fractionalSecondDigits"]
    
    (** language version: ESNext *)
    val set_fractionalSecondDigits: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_n_0[@js 0]] [@js.enum]) | `U2 of ([`L_n_1[@js 1]] [@js.enum]) | `U3 of ([`L_n_2[@js 2]] [@js.enum]) | `U4 of ([`L_n_3[@js 3]] [@js.enum])] [@js.union]) -> unit [@@js.set "fractionalSecondDigits"]
    
    (** language version: ES2020 *)
    val get_calendar: 'tags this -> string option [@@js.get "calendar"]
    
    (** language version: ES2020 *)
    val set_calendar: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "calendar"]
    
    (** language version: ES2020 *)
    val get_dayPeriod': 'tags this -> ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "dayPeriod"]
    
    (** language version: ES2020 *)
    val set_dayPeriod': 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s68_narrow[@js "narrow"]] [@js.enum]) | `U2 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U3 of ([`L_s56_long[@js "long"]] [@js.enum])] [@js.union]) -> unit [@@js.set "dayPeriod"]
    
    (** language version: ES2020 *)
    val get_numberingSystem: 'tags this -> string option [@@js.get "numberingSystem"]
    
    (** language version: ES2020 *)
    val set_numberingSystem: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "numberingSystem"]
    
    (** language version: ES2020 *)
    val get_dateStyle': 'tags this -> ([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "dateStyle"]
    
    (** language version: ES2020 *)
    val set_dateStyle': 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s44_full[@js "full"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s60_medium[@js "medium"]] [@js.enum]) | `U4 of ([`L_s89_short[@js "short"]] [@js.enum])] [@js.union]) -> unit [@@js.set "dateStyle"]
    
    (** language version: ES2020 *)
    val get_timeStyle': 'tags this -> ([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "timeStyle"]
    
    (** language version: ES2020 *)
    val set_timeStyle': 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s44_full[@js "full"]] [@js.enum]) | `U2 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U3 of ([`L_s60_medium[@js "medium"]] [@js.enum]) | `U4 of ([`L_s89_short[@js "short"]] [@js.enum])] [@js.union]) -> unit [@@js.set "timeStyle"]
    
    (** language version: ES2020 *)
    val get_hourCycle: 'tags this -> ([`L_s46_h11[@js "h11"] | `L_s47_h12[@js "h12"] | `L_s48_h23[@js "h23"] | `L_s49_h24[@js "h24"]] [@js.enum]) option [@@js.get "hourCycle"]
    
    (** language version: ES2020 *)
    val set_hourCycle: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s46_h11[@js "h11"]] [@js.enum]) | `U2 of ([`L_s47_h12[@js "h12"]] [@js.enum]) | `U3 of ([`L_s48_h23[@js "h23"]] [@js.enum]) | `U4 of ([`L_s49_h24[@js "h24"]] [@js.enum])] [@js.union]) -> unit [@@js.set "hourCycle"]
    val get_localeMatcher: 'tags this -> ([`L_s24_best_fit[@js "best fit"] | `L_s57_lookup[@js "lookup"]] [@js.enum]) option [@@js.get "localeMatcher"]
    val set_localeMatcher: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum]) | `U2 of ([`L_s57_lookup[@js "lookup"]] [@js.enum])] [@js.union]) -> unit [@@js.set "localeMatcher"]
    val get_weekday: 'tags this -> ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "weekday"]
    val set_weekday: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U2 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U3 of ([`L_s68_narrow[@js "narrow"]] [@js.enum])] [@js.union]) -> unit [@@js.set "weekday"]
    val get_era: 'tags this -> ([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "era"]
    val set_era: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U2 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U3 of ([`L_s68_narrow[@js "narrow"]] [@js.enum])] [@js.union]) -> unit [@@js.set "era"]
    val get_year: 'tags this -> ([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) option [@@js.get "year"]
    val set_year: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s73_numeric[@js "numeric"]] [@js.enum]) | `U2 of ([`L_s0_2_digit[@js "2-digit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "year"]
    val get_month: 'tags this -> ([`L_s0_2_digit[@js "2-digit"] | `L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s73_numeric[@js "numeric"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "month"]
    val set_month: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s73_numeric[@js "numeric"]] [@js.enum]) | `U2 of ([`L_s0_2_digit[@js "2-digit"]] [@js.enum]) | `U3 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U4 of ([`L_s89_short[@js "short"]] [@js.enum]) | `U5 of ([`L_s68_narrow[@js "narrow"]] [@js.enum])] [@js.union]) -> unit [@@js.set "month"]
    val get_day: 'tags this -> ([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) option [@@js.get "day"]
    val set_day: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s73_numeric[@js "numeric"]] [@js.enum]) | `U2 of ([`L_s0_2_digit[@js "2-digit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "day"]
    val get_hour: 'tags this -> ([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) option [@@js.get "hour"]
    val set_hour: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s73_numeric[@js "numeric"]] [@js.enum]) | `U2 of ([`L_s0_2_digit[@js "2-digit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "hour"]
    val get_minute: 'tags this -> ([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) option [@@js.get "minute"]
    val set_minute: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s73_numeric[@js "numeric"]] [@js.enum]) | `U2 of ([`L_s0_2_digit[@js "2-digit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "minute"]
    val get_second: 'tags this -> ([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) option [@@js.get "second"]
    val set_second: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s73_numeric[@js "numeric"]] [@js.enum]) | `U2 of ([`L_s0_2_digit[@js "2-digit"]] [@js.enum])] [@js.union]) -> unit [@@js.set "second"]
    val get_timeZoneName: 'tags this -> ([`L_s56_long[@js "long"] | `L_s89_short[@js "short"]] [@js.enum]) option [@@js.get "timeZoneName"]
    val set_timeZoneName: 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s56_long[@js "long"]] [@js.enum]) | `U2 of ([`L_s89_short[@js "short"]] [@js.enum])] [@js.union]) -> unit [@@js.set "timeZoneName"]
    val get_formatMatcher': 'tags this -> ([`L_s23_basic[@js "basic"] | `L_s24_best_fit[@js "best fit"]] [@js.enum]) option [@@js.get "formatMatcher"]
    val set_formatMatcher': 'tags this -> ([`Undefined of undefined | `U1 of ([`L_s24_best_fit[@js "best fit"]] [@js.enum]) | `U2 of ([`L_s23_basic[@js "basic"]] [@js.enum])] [@js.union]) -> unit [@@js.set "formatMatcher"]
    val get_hour12: 'tags this -> bool option [@@js.get "hour12"]
    val set_hour12: 'tags this -> ([`Undefined of undefined | `U1 of bool] [@js.union]) -> unit [@@js.set "hour12"]
    val get_timeZone: 'tags this -> string option [@@js.get "timeZone"]
    val set_timeZone: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "timeZone"]
    val create: ?formatMatcher:([`L_s23_basic[@js "basic"] | `L_s24_best_fit[@js "best fit"]] [@js.enum]) -> ?dateStyle:([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?timeStyle:([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?dayPeriod:([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?fractionalSecondDigits:([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3]] [@js.enum]) -> ?calendar:string -> ?dayPeriod:([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?numberingSystem:string -> ?dateStyle:([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?timeStyle:([`L_s44_full[@js "full"] | `L_s56_long[@js "long"] | `L_s60_medium[@js "medium"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?hourCycle:([`L_s46_h11[@js "h11"] | `L_s47_h12[@js "h12"] | `L_s48_h23[@js "h23"] | `L_s49_h24[@js "h24"]] [@js.enum]) -> ?localeMatcher:([`L_s24_best_fit[@js "best fit"] | `L_s57_lookup[@js "lookup"]] [@js.enum]) -> ?weekday:([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?era:([`L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?year:([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) -> ?month:([`L_s0_2_digit[@js "2-digit"] | `L_s56_long[@js "long"] | `L_s68_narrow[@js "narrow"] | `L_s73_numeric[@js "numeric"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?day:([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) -> ?hour:([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) -> ?minute:([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) -> ?second:([`L_s0_2_digit[@js "2-digit"] | `L_s73_numeric[@js "numeric"]] [@js.enum]) -> ?timeZoneName:([`L_s56_long[@js "long"] | `L_s89_short[@js "short"]] [@js.enum]) -> ?formatMatcher:([`L_s23_basic[@js "basic"] | `L_s24_best_fit[@js "best fit"]] [@js.enum]) -> ?hour12:bool -> ?timeZone:string -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  
  module[@js.scope "DateTimeFormat"] DateTimeFormat : sig
    type t = [`Intl_DateTimeFormat] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_DateTimeFormat]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_DateTimeFormat]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_DateTimeFormat ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    
    (** language version: ES2017 *)
    val formatToParts: 'tags this -> ?date:([`U1 of Date.t | `U2 of float] [@js.union]) -> unit -> DateTimeFormatPart.t list [@@js.call "formatToParts"]
    val format: 'tags this -> ?date:([`U1 of Date.t | `U2 of float] [@js.union]) -> unit -> string [@@js.call "format"]
    val resolvedOptions: 'tags this -> ResolvedDateTimeFormatOptions.t [@@js.call "resolvedOptions"]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
    val create: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:DateTimeFormatOptions.t -> unit -> t [@@js.create]
    val invoke: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:DateTimeFormatOptions.t -> unit -> t [@@js.invoke]
    val supportedLocalesOf: locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:DateTimeFormatOptions.t -> unit -> string list [@@js.global "supportedLocalesOf"]
  end
  
  
  module ResolvedCollatorOptions : sig
    type t = [`Intl_ResolvedCollatorOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_ResolvedCollatorOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_ResolvedCollatorOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_ResolvedCollatorOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_locale: 'tags this -> string [@@js.get "locale"]
    val set_locale: 'tags this -> string -> unit [@@js.set "locale"]
    val get_usage: 'tags this -> string [@@js.get "usage"]
    val set_usage: 'tags this -> string -> unit [@@js.set "usage"]
    val get_sensitivity: 'tags this -> string [@@js.get "sensitivity"]
    val set_sensitivity: 'tags this -> string -> unit [@@js.set "sensitivity"]
    val get_ignorePunctuation: 'tags this -> bool [@@js.get "ignorePunctuation"]
    val set_ignorePunctuation: 'tags this -> bool -> unit [@@js.set "ignorePunctuation"]
    val get_collation: 'tags this -> string [@@js.get "collation"]
    val set_collation: 'tags this -> string -> unit [@@js.set "collation"]
    val get_caseFirst: 'tags this -> string [@@js.get "caseFirst"]
    val set_caseFirst: 'tags this -> string -> unit [@@js.set "caseFirst"]
    val get_numeric: 'tags this -> bool [@@js.get "numeric"]
    val set_numeric: 'tags this -> bool -> unit [@@js.set "numeric"]
    val create: locale:string -> usage:string -> sensitivity:string -> ignorePunctuation:bool -> collation:string -> caseFirst:string -> numeric:bool -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  
  module CollatorOptions : sig
    type t = [`Intl_CollatorOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_CollatorOptions]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_CollatorOptions]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_CollatorOptions ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_usage: 'tags this -> string option [@@js.get "usage"]
    val set_usage: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "usage"]
    val get_localeMatcher: 'tags this -> string option [@@js.get "localeMatcher"]
    val set_localeMatcher: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "localeMatcher"]
    val get_numeric: 'tags this -> bool option [@@js.get "numeric"]
    val set_numeric: 'tags this -> ([`Undefined of undefined | `U1 of bool] [@js.union]) -> unit [@@js.set "numeric"]
    val get_caseFirst: 'tags this -> string option [@@js.get "caseFirst"]
    val set_caseFirst: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "caseFirst"]
    val get_sensitivity: 'tags this -> string option [@@js.get "sensitivity"]
    val set_sensitivity: 'tags this -> ([`Undefined of undefined | `U1 of string] [@js.union]) -> unit [@@js.set "sensitivity"]
    val get_ignorePunctuation: 'tags this -> bool option [@@js.get "ignorePunctuation"]
    val set_ignorePunctuation: 'tags this -> ([`Undefined of undefined | `U1 of bool] [@js.union]) -> unit [@@js.set "ignorePunctuation"]
    val create: ?usage:string -> ?localeMatcher:string -> ?numeric:bool -> ?caseFirst:string -> ?sensitivity:string -> ?ignorePunctuation:bool -> unit -> t [@@js.builder]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  end
  
  
  module[@js.scope "Collator"] Collator : sig
    type t = [`Intl_Collator] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`Intl_Collator]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`Intl_Collator]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `Intl_Collator ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val compare: 'tags this -> x:string -> y:string -> float [@@js.call "compare"]
    val resolvedOptions: 'tags this -> ResolvedCollatorOptions.t [@@js.call "resolvedOptions"]
    val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
    val create: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:CollatorOptions.t -> unit -> t [@@js.create]
    val invoke: ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:CollatorOptions.t -> unit -> t [@@js.invoke]
    val supportedLocalesOf: locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:CollatorOptions.t -> unit -> string list [@@js.global "supportedLocalesOf"]
  end
end


module[@js.scope "String"] String : sig
  module AnonymousInterface6 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val get_raw: t -> (string ArrayLike.t, string list) union2 [@@js.get "raw"]
    val set_raw: t -> ([`U1 of string list | `U2 of string ArrayLike.t] [@js.union]) -> unit [@@js.set "raw"]
    val create: raw:(string ArrayLike.t, string list) union2 -> unit -> t [@@js.builder]
  end
  module AnonymousInterface22 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    (* [Symbol.split]: string:string -> ?limit:float -> unit -> string list *)
  end
  module AnonymousInterface21 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    (* [Symbol.search]: string -> float *)
  end
  module AnonymousInterface20 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    (* [Symbol.replace]: string:string -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string *)
  end
  module AnonymousInterface19 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    (* [Symbol.replace]: string:string -> replaceValue:string -> string *)
  end
  module AnonymousInterface18 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    (* [Symbol.match]: string -> RegExpMatchArray.t option *)
  end
  type t = [`String | string ArrayLike.tags_1 | string IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`String | string ArrayLike.tags_1 | string IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`String | string ArrayLike.tags_1 | string IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `String ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Replace all instances of a substring in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replaceValue A string containing the text to replace for every successful match of searchValue in this string.
  *)
  val replaceAll: 'tags this -> searchValue:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> replaceValue:string -> string [@@js.call "replaceAll"]
  
  (**
    language version: ESNext
    Replace all instances of a substring in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replacer A function that returns the replacement text.
  *)
  val replaceAll': 'tags this -> searchValue:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replaceAll"]
  
  (**
    language version: ESNext
    Returns a new String consisting of the single UTF-16 code unit located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> string option [@@js.call "at"]
  
  (**
    language version: ESNext
    Replace all instances of a substring in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replaceValue A string containing the text to replace for every successful match of searchValue in this string.
  *)
  val replaceAll'': 'tags this -> searchValue:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> replaceValue:string -> string [@@js.call "replaceAll"]
  
  (**
    language version: ESNext
    Replace all instances of a substring in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replacer A function that returns the replacement text.
  *)
  val replaceAll''': 'tags this -> searchValue:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replaceAll"]
  
  (**
    language version: ES2020
    Matches a string with a regular expression, and returns an iterable of matches
    containing the results of that search.
    @param regexp A variable name or string literal containing the regular expression pattern and flags.
  *)
  val matchAll: 'tags this -> regexp:RegExp.t -> RegExpMatchArray.t IterableIterator.t [@@js.call "matchAll"]
  
  (**
    language version: ES2019
    Removes the trailing white space and line terminator characters from a string.
  *)
  val trimEnd: 'tags this -> string [@@js.call "trimEnd"]
  
  (**
    language version: ES2019
    Removes the leading white space and line terminator characters from a string.
  *)
  val trimStart: 'tags this -> string [@@js.call "trimStart"]
  
  (**
    language version: ES2019
    Removes the leading white space and line terminator characters from a string.
    @deprecated A legacy feature for browser compatibility. Use `trimStart` instead
  *)
  val trimLeft: 'tags this -> string [@@js.call "trimLeft"]
  
  (**
    language version: ES2019
    Removes the trailing white space and line terminator characters from a string.
    @deprecated A legacy feature for browser compatibility. Use `trimEnd` instead
  *)
  val trimRight: 'tags this -> string [@@js.call "trimRight"]
  
  (**
    language version: ES2017
    Pads the current string with a given string (possibly repeated) so that the resulting string reaches a given length.
    The padding is applied from the start (left) of the current string.
    @param maxLength The length of the resulting string once the current string has been padded.
    If this parameter is smaller than the current string's length, the current string will be returned as it is.
    @param fillString The string to pad the current string with.
    If this string is too long, it will be truncated and the left-most part will be applied.
    The default value for this parameter is " " (U+0020).
  *)
  val padStart: 'tags this -> maxLength:float -> ?fillString:string -> unit -> string [@@js.call "padStart"]
  
  (**
    language version: ES2017
    Pads the current string with a given string (possibly repeated) so that the resulting string reaches a given length.
    The padding is applied from the end (right) of the current string.
    @param maxLength The length of the resulting string once the current string has been padded.
    If this parameter is smaller than the current string's length, the current string will be returned as it is.
    @param fillString The string to pad the current string with.
    If this string is too long, it will be truncated and the left-most part will be applied.
    The default value for this parameter is " " (U+0020).
  *)
  val padEnd: 'tags this -> maxLength:float -> ?fillString:string -> unit -> string [@@js.call "padEnd"]
  
  (**
    language version: ES2015
    Matches a string or an object that supports being matched against, and returns an array
    containing the results of that search, or null if no matches are found.
    @param matcher An object that supports being matched against.
  *)
  val match_: 'tags this -> matcher:AnonymousInterface18.t -> RegExpMatchArray.t option [@@js.call "match"]
  
  (**
    language version: ES2015
    Replaces first match with string or all matches with RegExp.
    @param searchValue A string or RegExp search value.
    @param replaceValue A string containing the text to replace for match.
  *)
  val replace: 'tags this -> searchValue:AnonymousInterface19.t -> replaceValue:string -> string [@@js.call "replace"]
  
  (**
    language version: ES2015
    Replaces text in a string, using an object that supports replacement within a string.
    @param searchValue A object can search for and replace matches within a string.
    @param replacer A function that returns the replacement text.
  *)
  val replace': 'tags this -> searchValue:AnonymousInterface20.t -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replace"]
  
  (**
    language version: ES2015
    Finds the first substring match in a regular expression search.
    @param searcher An object which supports searching within a string.
  *)
  val search: 'tags this -> searcher:AnonymousInterface21.t -> float [@@js.call "search"]
  
  (**
    language version: ES2015
    Split a string into substrings using the specified separator and return them as an array.
    @param splitter An object that can split a string.
    @param limit A value used to limit the number of elements returned in the array.
  *)
  val split: 'tags this -> splitter:AnonymousInterface22.t -> ?limit:float -> unit -> string list [@@js.call "split"]
  (* [Symbol.iterator]: unit -> string IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns a nonnegative integer Number less than 1114112 (0x110000) that is the code point
    value of the UTF-16 encoded code point starting at the string element at position pos in
    the String resulting from converting this object to a String.
    If there is no element at that position, the result is undefined.
    If a valid UTF-16 surrogate pair does not begin at pos, the result is the code unit at pos.
  *)
  val codePointAt: 'tags this -> pos:float -> float option [@@js.call "codePointAt"]
  
  (**
    language version: ES2015
    Returns true if searchString appears as a substring of the result of converting this
    object to a String, at one or more positions that are
    greater than or equal to position; otherwise, returns false.
    @param searchString search string
    @param position If position is undefined, 0 is assumed, so as to search all of the String.
  *)
  val includes: 'tags this -> searchString:string -> ?position:float -> unit -> bool [@@js.call "includes"]
  
  (**
    language version: ES2015
    Returns true if the sequence of elements of searchString converted to a String is the
    same as the corresponding elements of this object (converted to a String) starting at
    endPosition – length(this). Otherwise returns false.
  *)
  val endsWith: 'tags this -> searchString:string -> ?endPosition:float -> unit -> bool [@@js.call "endsWith"]
  
  (**
    language version: ES2015
    Returns the String value result of normalizing the string into the normalization form
    named by form as specified in Unicode Standard Annex #15, Unicode Normalization Forms.
    @param form Applicable values: "NFC", "NFD", "NFKC", or "NFKD", If not specified default
    is "NFC"
  *)
  val normalize: 'tags this -> form:([`U1 of ([`L_s11_NFC[@js "NFC"]] [@js.enum]) | `U2 of ([`L_s12_NFD[@js "NFD"]] [@js.enum]) | `U3 of ([`L_s13_NFKC[@js "NFKC"]] [@js.enum]) | `U4 of ([`L_s14_NFKD[@js "NFKD"]] [@js.enum])] [@js.union]) -> string [@@js.call "normalize"]
  
  (**
    language version: ES2015
    Returns the String value result of normalizing the string into the normalization form
    named by form as specified in Unicode Standard Annex #15, Unicode Normalization Forms.
    @param form Applicable values: "NFC", "NFD", "NFKC", or "NFKD", If not specified default
    is "NFC"
  *)
  val normalize': 'tags this -> ?form:string -> unit -> string [@@js.call "normalize"]
  
  (**
    language version: ES2015
    Returns a String value that is made from count copies appended together. If count is 0,
    the empty string is returned.
    @param count number of copies to append
  *)
  val repeat: 'tags this -> count:float -> string [@@js.call "repeat"]
  
  (**
    language version: ES2015
    Returns true if the sequence of elements of searchString converted to a String is the
    same as the corresponding elements of this object (converted to a String) starting at
    position. Otherwise returns false.
  *)
  val startsWith: 'tags this -> searchString:string -> ?position:float -> unit -> bool [@@js.call "startsWith"]
  
  (**
    language version: ES2015
    Returns an `<a>` HTML anchor element and sets the name attribute to the text value
    @deprecated A legacy feature for browser compatibility
    @param name 
  *)
  val anchor: 'tags this -> name:string -> string [@@js.call "anchor"]
  
  (**
    language version: ES2015
    Returns a `<big>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val big: 'tags this -> string [@@js.call "big"]
  
  (**
    language version: ES2015
    Returns a `<blink>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val blink: 'tags this -> string [@@js.call "blink"]
  
  (**
    language version: ES2015
    Returns a `<b>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val bold: 'tags this -> string [@@js.call "bold"]
  
  (**
    language version: ES2015
    Returns a `<tt>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val fixed: 'tags this -> string [@@js.call "fixed"]
  
  (**
    language version: ES2015
    Returns a `<font>` HTML element and sets the color attribute value
    @deprecated A legacy feature for browser compatibility
  *)
  val fontcolor: 'tags this -> color:string -> string [@@js.call "fontcolor"]
  
  (**
    language version: ES2015
    Returns a `<font>` HTML element and sets the size attribute value
    @deprecated A legacy feature for browser compatibility
  *)
  val fontsize: 'tags this -> size:float -> string [@@js.call "fontsize"]
  
  (**
    language version: ES2015
    Returns a `<font>` HTML element and sets the size attribute value
    @deprecated A legacy feature for browser compatibility
  *)
  val fontsize': 'tags this -> size:string -> string [@@js.call "fontsize"]
  
  (**
    language version: ES2015
    Returns an `<i>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val italics: 'tags this -> string [@@js.call "italics"]
  
  (**
    language version: ES2015
    Returns an `<a>` HTML element and sets the href attribute value
    @deprecated A legacy feature for browser compatibility
  *)
  val link: 'tags this -> url:string -> string [@@js.call "link"]
  
  (**
    language version: ES2015
    Returns a `<small>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val small: 'tags this -> string [@@js.call "small"]
  
  (**
    language version: ES2015
    Returns a `<strike>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val strike: 'tags this -> string [@@js.call "strike"]
  
  (**
    language version: ES2015
    Returns a `<sub>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val sub: 'tags this -> string [@@js.call "sub"]
  
  (**
    language version: ES2015
    Returns a `<sup>` HTML element
    @deprecated A legacy feature for browser compatibility
  *)
  val sup: 'tags this -> string [@@js.call "sup"]
  
  (**
    Determines whether two strings are equivalent in the current or specified locale.
    @param that String to compare to target string
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used. This parameter must conform to BCP 47 standards; see the Intl.Collator object for details.
    @param options An object that contains one or more properties that specify comparison options. see the Intl.Collator object for details.
  *)
  val localeCompare: 'tags this -> that:string -> ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:Intl.CollatorOptions.t -> unit -> float [@@js.call "localeCompare"]
  
  (** Returns a string representation of a string. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (**
    Returns the character at the specified index.
    @param pos The zero-based index of the desired character.
  *)
  val charAt: 'tags this -> pos:float -> string [@@js.call "charAt"]
  
  (**
    Returns the Unicode value of the character at the specified location.
    @param index The zero-based index of the desired character. If there is no character at the specified index, NaN is returned.
  *)
  val charCodeAt: 'tags this -> index:float -> float [@@js.call "charCodeAt"]
  
  (**
    Returns a string that contains the concatenation of two or more strings.
    @param strings The strings to append to the end of the string.
  *)
  val concat: 'tags this -> strings:(string list [@js.variadic]) -> string [@@js.call "concat"]
  
  (**
    Returns the position of the first occurrence of a substring.
    @param searchString The substring to search for in the string
    @param position The index at which to begin searching the String object. If omitted, search starts at the beginning of the string.
  *)
  val indexOf: 'tags this -> searchString:string -> ?position:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Returns the last occurrence of a substring in the string.
    @param searchString The substring to search for.
    @param position The index at which to begin searching. If omitted, the search begins at the end of the string.
  *)
  val lastIndexOf: 'tags this -> searchString:string -> ?position:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (**
    Determines whether two strings are equivalent in the current locale.
    @param that String to compare to target string
  *)
  val localeCompare': 'tags this -> that:string -> float [@@js.call "localeCompare"]
  
  (**
    Matches a string with a regular expression, and returns an array containing the results of that search.
    @param regexp A variable name or string literal containing the regular expression pattern and flags.
  *)
  val match_': 'tags this -> regexp:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> RegExpMatchArray.t option [@@js.call "match"]
  
  (**
    Replaces text in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replaceValue A string containing the text to replace for every successful match of searchValue in this string.
  *)
  val replace'': 'tags this -> searchValue:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> replaceValue:string -> string [@@js.call "replace"]
  
  (**
    Replaces text in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replacer A function that returns the replacement text.
  *)
  val replace''': 'tags this -> searchValue:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replace"]
  
  (**
    Finds the first substring match in a regular expression search.
    @param regexp The regular expression pattern and applicable flags.
  *)
  val search': 'tags this -> regexp:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> float [@@js.call "search"]
  
  (**
    Returns a section of a string.
    @param start The index to the beginning of the specified portion of stringObj.
    @param end The index to the end of the specified portion of stringObj. The substring includes the characters up to, but not including, the character indicated by end.
    If this value is not specified, the substring continues to the end of stringObj.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> string [@@js.call "slice"]
  
  (**
    Split a string into substrings using the specified separator and return them as an array.
    @param separator A string that identifies character or characters to use in separating the string. If omitted, a single-element array containing the entire string is returned.
    @param limit A value used to limit the number of elements returned in the array.
  *)
  val split': 'tags this -> separator:([`U1 of string | `U2 of RegExp.t] [@js.union]) -> ?limit:float -> unit -> string list [@@js.call "split"]
  
  (**
    Returns the substring at the specified location within a String object.
    @param start The zero-based index number indicating the beginning of the substring.
    @param end Zero-based index number indicating the end of the substring. The substring includes the characters up to, but not including, the character indicated by end.
    If end is omitted, the characters from start through the end of the original string are returned.
  *)
  val substring: 'tags this -> start:float -> ?end_:float -> unit -> string [@@js.call "substring"]
  
  (** Converts all the alphabetic characters in a string to lowercase. *)
  val toLowerCase: 'tags this -> string [@@js.call "toLowerCase"]
  
  (** Converts all alphabetic characters to lowercase, taking into account the host environment's current locale. *)
  val toLocaleLowerCase: 'tags this -> ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> unit -> string [@@js.call "toLocaleLowerCase"]
  
  (** Converts all the alphabetic characters in a string to uppercase. *)
  val toUpperCase: 'tags this -> string [@@js.call "toUpperCase"]
  
  (** Returns a string where all alphabetic characters have been converted to uppercase, taking into account the host environment's current locale. *)
  val toLocaleUpperCase: 'tags this -> ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> unit -> string [@@js.call "toLocaleUpperCase"]
  
  (** Removes the leading and trailing white space and line terminator characters from a string. *)
  val trim: 'tags this -> string [@@js.call "trim"]
  
  (** Returns the length of a String object. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Gets a substring beginning at the specified location and having the specified length.
    @deprecated A legacy feature for browser compatibility
    @param from The starting position of the desired substring. The index of the first character in the string is zero.
    @param length The number of characters to include in the returned substring.
  *)
  val substr: 'tags this -> from:float -> ?length:float -> unit -> string [@@js.call "substr"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> string [@@js.call "valueOf"]
  val get: 'tags this -> float -> string [@@js.index_get]
  
  (**
    language version: ES2015
    Return the String value whose elements are, in order, the elements in the List elements.
    If length is 0, the empty string is returned.
  *)
  val fromCodePoint: (float list [@js.variadic]) -> string [@@js.global "fromCodePoint"]
  
  (**
    language version: ES2015
    String.raw is usually used as a tag function of a Tagged Template String. When called as
    such, the first argument will be a well formed template call site object and the rest
    parameter will contain the substitution values. It can also be called directly, for example,
    to interleave strings and values from your own tag function, and in this case the only thing
    it needs from the first argument is the raw property.
    @param template A well-formed template string call site representation.
    @param substitutions A set of substitution values.
  *)
  val raw: template:AnonymousInterface6.t -> substitutions:(any list [@js.variadic]) -> string [@@js.global "raw"]
  val create: ?value:any -> unit -> t [@@js.create]
  val invoke: ?value:any -> unit -> string [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val fromCharCode: (float list [@js.variadic]) -> string [@@js.global "fromCharCode"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  val of_ml: string -> t [@@js.cast]
  val to_ml: t -> string [@@js.call "valueOf"]
end

(** language version: ES2015 *)
module[@js.scope "Set"] Set : sig
  type 'T t = [`Set of 'T | 'T IterableIterator.tags_1] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`Set of 'T | 'T IterableIterator.tags_1]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`Set of 'T | 'T IterableIterator.tags_1]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `Set of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.toStringTag]: unit -> string *)
  (* [Symbol.iterator]: unit -> 'T IterableIterator.t *)
  
  (** Returns an iterable of \[v,v\] pairs for every value `v` in the set. *)
  val entries: ('tags, 'T) this -> ('T * 'T) IterableIterator.t [@@js.call "entries"]
  
  (** Despite its name, returns an iterable of the values in the set. *)
  val keys: ('tags, 'T) this -> 'T IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the set. *)
  val values: ('tags, 'T) this -> 'T IterableIterator.t [@@js.call "values"]
  val add: ('tags, 'T) this -> value:'T -> ('tags, 'T) this [@@js.call "add"]
  val clear: ('tags, 'T) this -> unit [@@js.call "clear"]
  val delete: ('tags, 'T) this -> value:'T -> bool [@@js.call "delete"]
  val forEach: ('tags, 'T) this -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val has: ('tags, 'T) this -> value:'T -> bool [@@js.call "has"]
  val get_size: ('tags, 'T) this -> float [@@js.get "size"]
  val create: ?iterable:'T Iterable.t option -> unit -> 'T t [@@js.create]
  val create': ?values:'T list option -> unit -> 'T t [@@js.create]
  val prototype: unit -> any t [@@js.get "prototype"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end


module ReturnType : sig
  type 'T t = (* FIXME: unknown type 'T extends (...args: any) => infer R ? R : any' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module Required : sig
  type 'T t = (* FIXME: unknown type '{
      [P in keyof T]-?: T[P];
  }' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module PropertyKey : sig
  type t = ([`Number of float | `String of string | `Symbol of symbol] [@js.union on_field "dummy"]) Primitive.t
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end


module PropertyDescriptor : sig
  type t = [`PropertyDescriptor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PropertyDescriptor]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PropertyDescriptor]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PropertyDescriptor ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_configurable: 'tags this -> bool [@@js.get "configurable"]
  val set_configurable: 'tags this -> bool -> unit [@@js.set "configurable"]
  val get_enumerable: 'tags this -> bool [@@js.get "enumerable"]
  val set_enumerable: 'tags this -> bool -> unit [@@js.set "enumerable"]
  val get_value: 'tags this -> any [@@js.get "value"]
  val set_value: 'tags this -> any -> unit [@@js.set "value"]
  val get_writable: 'tags this -> bool [@@js.get "writable"]
  val set_writable: 'tags this -> bool -> unit [@@js.set "writable"]
  val get_: 'tags this -> any [@@js.call "get"]
  val set_: 'tags this -> v:any -> unit [@@js.call "set"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Function"] Function : sig
  type t = [`Function] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Function]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Function]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Function ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (* [Symbol.hasInstance]: any -> bool *)
  
  (**
    language version: ES2015
    Returns the name of the function. Function names are read-only and can not be changed.
  *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (**
    Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function.
    @param thisArg The object to be used as the this object.
    @param argArray A set of arguments to be passed to the function.
  *)
  val apply_: 'tags this -> this:t -> thisArg:any -> ?argArray:any -> unit -> any [@@js.call "apply"]
  
  (**
    Calls a method of an object, substituting another object for the current object.
    @param thisArg The object to be used as the current object.
    @param argArray A list of arguments to be passed to the method.
  *)
  val call: 'tags this -> this:t -> thisArg:any -> argArray:(any list [@js.variadic]) -> any [@@js.call "call"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
    @param thisArg An object to which the this keyword can refer inside the new function.
    @param argArray A list of arguments to be passed to the new function.
  *)
  val bind: 'tags this -> this:t -> thisArg:any -> argArray:(any list [@js.variadic]) -> any [@@js.call "bind"]
  
  (** Returns a string representation of a function. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  val get_prototype: 'tags this -> any [@@js.get "prototype"]
  val set_prototype: 'tags this -> any -> unit [@@js.set "prototype"]
  val get_length: 'tags this -> float [@@js.get "length"]
  val get_arguments: 'tags this -> any [@@js.get "arguments"]
  val set_arguments: 'tags this -> any -> unit [@@js.set "arguments"]
  val get_caller: 'tags this -> t [@@js.get "caller"]
  val set_caller: 'tags this -> t -> unit [@@js.set "caller"]
  
  (**
    Creates a new function.
    @param args A list of arguments the function accepts.
  *)
  val create: (string list [@js.variadic]) -> t [@@js.create]
  val invoke: (string list [@js.variadic]) -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module[@js.scope "Reflect"] Reflect : sig
  
  (**
    language version: ES2015
    Calls the function with the specified object as the this value
    and the elements of specified array as the arguments.
    @param target The function to call.
    @param thisArgument The object to be used as the this object.
    @param argumentsList An array of argument values to be passed to the function.
  *)
  val apply_: target:Function.t -> thisArgument:any -> argumentsList:any ArrayLike.t -> any [@@js.global "apply"]
  
  (**
    language version: ES2015
    Constructs the target with the elements of specified array as the arguments
    and the specified constructor as the `new.target` value.
    @param target The constructor to invoke.
    @param argumentsList An array of argument values to be passed to the constructor.
    @param newTarget The constructor to be used as the `new.target` object.
  *)
  val construct: target:Function.t -> argumentsList:any ArrayLike.t -> ?newTarget:Function.t -> unit -> any [@@js.global "construct"]
  
  (**
    language version: ES2015
    Adds a property to an object, or modifies attributes of an existing property.
    @param target Object on which to add or modify the property. This can be a native JavaScript object
    (that is, a user-defined object or a built in object) or a DOM object.
    @param propertyKey The property name.
    @param attributes Descriptor for the property. It can be for a data property or an accessor property.
  *)
  val defineProperty: target:untyped_object -> propertyKey:PropertyKey.t -> attributes:PropertyDescriptor.t -> bool [@@js.global "defineProperty"]
  
  (**
    language version: ES2015
    Removes a property from an object, equivalent to `delete target\[propertyKey\]`,
    except it won't throw if `target\[propertyKey\]` is non-configurable.
    @param target Object from which to remove the own property.
    @param propertyKey The property name.
  *)
  val deleteProperty: target:untyped_object -> propertyKey:PropertyKey.t -> bool [@@js.global "deleteProperty"]
  
  (**
    language version: ES2015
    Gets the property of target, equivalent to `target\[propertyKey\]` when `receiver === target`.
    @param target Object that contains the property on itself or in its prototype chain.
    @param propertyKey The property name.
    @param receiver The reference to use as the `this` value in the getter function,
    if `target\[propertyKey\]` is an accessor property.
  *)
  val get_: target:untyped_object -> propertyKey:PropertyKey.t -> ?receiver:any -> unit -> any [@@js.global "get"]
  
  (**
    language version: ES2015
    Gets the own property descriptor of the specified object.
    An own property descriptor is one that is defined directly on the object and is not inherited from the object's prototype.
    @param target Object that contains the property.
    @param propertyKey The property name.
  *)
  val getOwnPropertyDescriptor: target:untyped_object -> propertyKey:PropertyKey.t -> PropertyDescriptor.t option [@@js.global "getOwnPropertyDescriptor"]
  
  (**
    language version: ES2015
    Returns the prototype of an object.
    @param target The object that references the prototype.
  *)
  val getPrototypeOf: untyped_object -> untyped_object option [@@js.global "getPrototypeOf"]
  
  (**
    language version: ES2015
    Equivalent to `propertyKey in target`.
    @param target Object that contains the property on itself or in its prototype chain.
    @param propertyKey Name of the property.
  *)
  val has: target:untyped_object -> propertyKey:PropertyKey.t -> bool [@@js.global "has"]
  
  (**
    language version: ES2015
    Returns a value that indicates whether new properties can be added to an object.
    @param target Object to test.
  *)
  val isExtensible: untyped_object -> bool [@@js.global "isExtensible"]
  
  (**
    language version: ES2015
    Returns the string and symbol keys of the own properties of an object. The own properties of an object
    are those that are defined directly on that object, and are not inherited from the object's prototype.
    @param target Object that contains the own properties.
  *)
  val ownKeys: untyped_object -> ([`String of string | `Symbol of symbol] [@js.union on_field "dummy"]) Primitive.t list [@@js.global "ownKeys"]
  
  (**
    language version: ES2015
    Prevents the addition of new properties to an object.
    @param target Object to make non-extensible.
    @return Whether the object has been made non-extensible.
  *)
  val preventExtensions: untyped_object -> bool [@@js.global "preventExtensions"]
  
  (**
    language version: ES2015
    Sets the property of target, equivalent to `target\[propertyKey\] = value` when `receiver === target`.
    @param target Object that contains the property on itself or in its prototype chain.
    @param propertyKey Name of the property.
    @param receiver The reference to use as the `this` value in the setter function,
    if `target\[propertyKey\]` is an accessor property.
  *)
  val set_: target:untyped_object -> propertyKey:PropertyKey.t -> value:any -> ?receiver:any -> unit -> bool [@@js.global "set"]
  
  (**
    language version: ES2015
    Sets the prototype of a specified object o to object proto or null.
    @param target The object to change its prototype.
    @param proto The value of the new prototype or null.
    @return Whether setting the prototype was successful.
  *)
  val setPrototypeOf: target:untyped_object -> proto:untyped_object option -> bool [@@js.global "setPrototypeOf"]
end


module[@js.scope "ReferenceError"] ReferenceError : sig
  type t = [`Error | `ReferenceError] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Error | `ReferenceError]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Error | `ReferenceError]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ReferenceError ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ESNext *)
  val create: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  
  (** language version: ESNext *)
  val invoke: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create': ?message:string -> unit -> t [@@js.create]
  val invoke': ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module Record : sig
  type ('K, 'T) t = (* FIXME: unknown type '{
      [P in K]: T;
  }' *)any
  type ('K, 'T) t_2 = ('K, 'T) t
  val t_to_js: ('K -> Ojs.t) -> ('T -> Ojs.t) -> ('K, 'T) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'T) -> Ojs.t -> ('K, 'T) t
  val t_2_to_js: ('K -> Ojs.t) -> ('T -> Ojs.t) -> ('K, 'T) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'T) -> Ojs.t -> ('K, 'T) t_2
end

(** language version: ES2015 *)
module ReadonlySet : sig
  type 'T t = [`ReadonlySet of 'T | 'T IterableIterator.tags_1] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`ReadonlySet of 'T | 'T IterableIterator.tags_1]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ReadonlySet of 'T | 'T IterableIterator.tags_1]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ReadonlySet of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.iterator]: unit -> 'T IterableIterator.t *)
  
  (** Returns an iterable of \[v,v\] pairs for every value `v` in the set. *)
  val entries: ('tags, 'T) this -> ('T * 'T) IterableIterator.t [@@js.call "entries"]
  
  (** Despite its name, returns an iterable of the values in the set. *)
  val keys: ('tags, 'T) this -> 'T IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the set. *)
  val values: ('tags, 'T) this -> 'T IterableIterator.t [@@js.call "values"]
  val forEach: ('tags, 'T) this -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val has: ('tags, 'T) this -> value:'T -> bool [@@js.call "has"]
  val get_size: ('tags, 'T) this -> float [@@js.get "size"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module ReadonlyMap : sig
  type ('K, 'V) t = [`ReadonlyMap of ('K * 'V) | ('K * 'V) IterableIterator.tags_1] intf [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
  type ('K, 'V) t_2 = ('K, 'V) t
  [@@@js.stop]
  type ('K, 'V) tags = [`ReadonlyMap of ('K * 'V) | ('K * 'V) IterableIterator.tags_1]
  type ('K, 'V) tags_2 = ('K, 'V) tags
  [@@@js.start]
  [@@@js.implem 
    type ('K, 'V) tags = [`ReadonlyMap of ('K * 'V) | ('K * 'V) IterableIterator.tags_1]
    type ('K, 'V) tags_2 = ('K, 'V) tags
  ]
  type ('tags, 'K, 'V) this = 'tags intf constraint 'tags = [> `ReadonlyMap of ('K * 'V) ]
  val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
  val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
  (* [Symbol.iterator]: unit -> ('K * 'V) IterableIterator.t *)
  
  (** Returns an iterable of key, value pairs for every entry in the map. *)
  val entries: ('tags, 'K, 'V) this -> ('K * 'V) IterableIterator.t [@@js.call "entries"]
  
  (** Returns an iterable of keys in the map *)
  val keys: ('tags, 'K, 'V) this -> 'K IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the map *)
  val values: ('tags, 'K, 'V) this -> 'V IterableIterator.t [@@js.call "values"]
  val forEach: ('tags, 'K, 'V) this -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val get_: ('tags, 'K, 'V) this -> key:'K -> 'V option [@@js.call "get"]
  val has: ('tags, 'K, 'V) this -> key:'K -> bool [@@js.call "has"]
  val get_size: ('tags, 'K, 'V) this -> float [@@js.get "size"]
  val cast_from: ('tags, 'K, 'V) this -> ('K, 'V) t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "RangeError"] RangeError : sig
  type t = [`Error | `RangeError] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Error | `RangeError]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Error | `RangeError]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RangeError ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ESNext *)
  val create: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  
  (** language version: ESNext *)
  val invoke: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create': ?message:string -> unit -> t [@@js.create]
  val invoke': ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module ProxyHandler : sig
  type 'T t = [`ProxyHandler of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`ProxyHandler of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ProxyHandler of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ProxyHandler of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val apply_: ('tags, 'T) this -> target:'T -> thisArg:any -> argArray:any list -> any [@@js.call "apply"]
  val construct: ('tags, 'T) this -> target:'T -> argArray:any list -> newTarget:Function.t -> untyped_object [@@js.call "construct"]
  val defineProperty: ('tags, 'T) this -> target:'T -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> attributes:PropertyDescriptor.t -> bool [@@js.call "defineProperty"]
  val deleteProperty: ('tags, 'T) this -> target:'T -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> bool [@@js.call "deleteProperty"]
  val get_: ('tags, 'T) this -> target:'T -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> receiver:any -> any [@@js.call "get"]
  val getOwnPropertyDescriptor: ('tags, 'T) this -> target:'T -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> PropertyDescriptor.t option [@@js.call "getOwnPropertyDescriptor"]
  val getPrototypeOf: ('tags, 'T) this -> target:'T -> untyped_object option [@@js.call "getPrototypeOf"]
  val has: ('tags, 'T) this -> target:'T -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> bool [@@js.call "has"]
  val isExtensible: ('tags, 'T) this -> target:'T -> bool [@@js.call "isExtensible"]
  val ownKeys: ('tags, 'T) this -> target:'T -> ([`String of string | `Symbol of symbol] [@js.union on_field "dummy"]) Primitive.t ArrayLike.t [@@js.call "ownKeys"]
  val preventExtensions: ('tags, 'T) this -> target:'T -> bool [@@js.call "preventExtensions"]
  val set_: ('tags, 'T) this -> target:'T -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> value:any -> receiver:any -> bool [@@js.call "set"]
  val setPrototypeOf: ('tags, 'T) this -> target:'T -> v:untyped_object option -> bool [@@js.call "setPrototypeOf"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end
module[@js.scope "Proxy"] ProxyStatic : sig
  module AnonymousInterface41 : sig
    type 'T t = private Ojs.t
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    val get_proxy: 'T t -> 'T [@@js.get "proxy"]
    val set_proxy: 'T t -> 'T -> unit [@@js.set "proxy"]
    val revoke: 'T t -> unit [@@js.call "revoke"]
    val create: proxy:'T -> revoke:(unit -> unit) -> unit -> 'T t [@@js.builder]
    module Make (T : Ojs.T) : sig
      type 'T parent = 'T t
      type t = T.t parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val get_proxy: t -> T.t [@@js.get "proxy"]
      val set_proxy: t -> T.t -> unit [@@js.set "proxy"]
      val revoke: t -> unit [@@js.call "revoke"]
    end
  end
  val revocable: target:'T -> handler:'T ProxyHandler.t -> 'T AnonymousInterface41.t [@@js.global "revocable"]
  val create: target:'T -> handler:'T ProxyHandler.t -> 'T [@@js.create]
end

(** language version: ES2015 *)
module ProxyConstructor : sig
  module AnonymousInterface41 : sig
    type 'T t = private Ojs.t
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    val get_proxy: 'T t -> 'T [@@js.get "proxy"]
    val set_proxy: 'T t -> 'T -> unit [@@js.set "proxy"]
    val revoke: 'T t -> unit [@@js.call "revoke"]
    val create: proxy:'T -> revoke:(unit -> unit) -> unit -> 'T t [@@js.builder]
    module Make (T : Ojs.T) : sig
      type 'T parent = 'T t
      type t = T.t parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val get_proxy: t -> T.t [@@js.get "proxy"]
      val set_proxy: t -> T.t -> unit [@@js.set "proxy"]
      val revoke: t -> unit [@@js.call "revoke"]
    end
  end
  type t = [`ProxyConstructor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ProxyConstructor]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ProxyConstructor]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ProxyConstructor ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val revocable: 'tags this -> target:'T -> handler:'T ProxyHandler.t -> 'T AnonymousInterface41.t [@@js.call "revocable"]
  val create: 'tags this -> target:'T -> handler:'T ProxyHandler.t -> 'T [@@js.apply_newable]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module ThisType : sig
  type 'T t = [`ThisType of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`ThisType of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ThisType of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ThisType of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end


module Readonly : sig
  type 'T t = (* FIXME: unknown type '{
      readonly [P in keyof T]: T[P];
  }' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module PropertyDescriptorMap : sig
  type t = [`PropertyDescriptorMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PropertyDescriptorMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PropertyDescriptorMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PropertyDescriptorMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: 'tags this -> PropertyKey.t -> PropertyDescriptor.t [@@js.index_get]
  val set: 'tags this -> PropertyKey.t -> PropertyDescriptor.t -> unit [@@js.index_set]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Object"] Object : sig
  module AnonymousInterface48 : sig
    type 'T t = private Ojs.t
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    val get: 'T t -> string -> 'T [@@js.index_get]
    val set: 'T t -> string -> 'T -> unit [@@js.index_set]
    module Make (T : Ojs.T) : sig
      type 'T parent = 'T t
      type t = T.t parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val get: t -> string -> T.t [@@js.index_get]
      val set: t -> string -> T.t -> unit [@@js.index_set]
    end
  end
  module AnonymousInterface45 : sig
    type 'T t = private Ojs.t
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    val get: 'T t -> string -> 'T [@@js.index_get]
    val set: 'T t -> string -> 'T -> unit [@@js.index_set]
    module Make (T : Ojs.T) : sig
      type 'T parent = 'T t
      type t = T.t parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val get: t -> string -> T.t [@@js.index_get]
      val set: t -> string -> T.t -> unit [@@js.index_set]
    end
  end
  module AnonymousInterface17 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val get: t -> string -> PropertyDescriptor.t [@@js.index_get]
    val set: t -> string -> PropertyDescriptor.t -> unit [@@js.index_set]
  end
  type t = [`Object] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Object]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Object]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Object ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** The initial value of Object.prototype.constructor is the standard built-in Object constructor. *)
  val get_constructor: 'tags this -> Function.t [@@js.get "constructor"]
  
  (** The initial value of Object.prototype.constructor is the standard built-in Object constructor. *)
  val set_constructor: 'tags this -> Function.t -> unit [@@js.set "constructor"]
  
  (** Returns a string representation of an object. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns a date converted to a string using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  
  (**
    Determines whether an object has a property with the specified name.
    @param v A property name.
  *)
  val hasOwnProperty: 'tags this -> v:PropertyKey.t -> bool [@@js.call "hasOwnProperty"]
  
  (**
    Determines whether an object exists in another object's prototype chain.
    @param v Another object whose prototype chain is to be checked.
  *)
  val isPrototypeOf: 'tags this -> v:t -> bool [@@js.call "isPrototypeOf"]
  
  (**
    Determines whether a specified property is enumerable.
    @param v A property name.
  *)
  val propertyIsEnumerable: 'tags this -> v:PropertyKey.t -> bool [@@js.call "propertyIsEnumerable"]
  
  (**
    language version: ESNext
    Determines whether an object has a property with the specified name.
    @param o An object.
    @param v A property name.
  *)
  val hasOwn: o:untyped_object -> v:PropertyKey.t -> bool [@@js.global "hasOwn"]
  
  (**
    language version: ES2019
    Returns an object created by key-value entries for properties and methods
    @param entries An iterable object that contains key-value entries for properties and methods.
  *)
  val fromEntries: (PropertyKey.t * 'T) Iterable.t -> 'T AnonymousInterface45.t [@@js.global "fromEntries"]
  
  (**
    language version: ES2019
    Returns an object created by key-value entries for properties and methods
    @param entries An iterable object that contains key-value entries for properties and methods.
  *)
  val fromEntries': any list Iterable.t -> any [@@js.global "fromEntries"]
  
  (**
    language version: ES2017
    Returns an array of values of the enumerable properties of an object
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val values: ([`U1 of 'T AnonymousInterface48.t | `U2 of 'T ArrayLike.t] [@js.union]) -> 'T list [@@js.global "values"]
  
  (**
    language version: ES2017
    Returns an array of values of the enumerable properties of an object
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val values': untyped_object -> any list [@@js.global "values"]
  
  (**
    language version: ES2017
    Returns an array of key/values of the enumerable properties of an object
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val entries: ([`U1 of 'T AnonymousInterface48.t | `U2 of 'T ArrayLike.t] [@js.union]) -> (string * 'T) list [@@js.global "entries"]
  
  (**
    language version: ES2017
    Returns an array of key/values of the enumerable properties of an object
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val entries': untyped_object -> (string * any) list [@@js.global "entries"]
  
  (**
    language version: ES2017
    Returns an object containing all own property descriptors of an object
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val getOwnPropertyDescriptors: 'T -> ((* FIXME: unknown type '{[P in keyof T]: TypedPropertyDescriptor<T[P]>}' *)any, AnonymousInterface17.t) intersection2 [@@js.global "getOwnPropertyDescriptors"]
  
  (**
    language version: ES2015
    Copy the values of all of the enumerable own properties from one or more source objects to a
    target object. Returns the target object.
    @param target The target object to copy to.
    @param source The source object from which to copy properties.
  *)
  val assign: target:'T -> source:'U -> ('T, 'U) intersection2 [@@js.global "assign"]
  
  (**
    language version: ES2015
    Copy the values of all of the enumerable own properties from one or more source objects to a
    target object. Returns the target object.
    @param target The target object to copy to.
    @param source1 The first source object from which to copy properties.
    @param source2 The second source object from which to copy properties.
  *)
  val assign': target:'T -> source1:'U -> source2:'V -> ('T, 'U, 'V) intersection3 [@@js.global "assign"]
  
  (**
    language version: ES2015
    Copy the values of all of the enumerable own properties from one or more source objects to a
    target object. Returns the target object.
    @param target The target object to copy to.
    @param source1 The first source object from which to copy properties.
    @param source2 The second source object from which to copy properties.
    @param source3 The third source object from which to copy properties.
  *)
  val assign'': target:'T -> source1:'U -> source2:'V -> source3:'W -> ('T, 'U, 'V, 'W) intersection4 [@@js.global "assign"]
  
  (**
    language version: ES2015
    Copy the values of all of the enumerable own properties from one or more source objects to a
    target object. Returns the target object.
    @param target The target object to copy to.
    @param sources One or more source objects from which to copy properties
  *)
  val assign''': target:untyped_object -> sources:(any list [@js.variadic]) -> any [@@js.global "assign"]
  
  (**
    language version: ES2015
    Returns an array of all symbol properties found directly on object o.
    @param o Object to retrieve the symbols from.
  *)
  val getOwnPropertySymbols: any -> symbol list [@@js.global "getOwnPropertySymbols"]
  
  (**
    language version: ES2015
    Returns the names of the enumerable string properties and methods of an object.
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val keys: untyped_object -> string list [@@js.global "keys"]
  
  (**
    language version: ES2015
    Returns true if the values are the same value, false otherwise.
    @param value1 The first value.
    @param value2 The second value.
  *)
  val is: value1:any -> value2:any -> bool [@@js.global "is"]
  
  (**
    language version: ES2015
    Sets the prototype of a specified object o to object proto or null. Returns the object o.
    @param o The object to change its prototype.
    @param proto The value of the new prototype or null.
  *)
  val setPrototypeOf: o:any -> proto:untyped_object option -> any [@@js.global "setPrototypeOf"]
  val create: ?value:any -> unit -> t [@@js.create]
  val invoke: unit -> any [@@js.invoke]
  val invoke': any -> any [@@js.invoke]
  
  (** A reference to the prototype for a class of objects. *)
  val prototype: unit -> t [@@js.get "prototype"]
  
  (**
    Returns the prototype of an object.
    @param o The object that references the prototype.
  *)
  val getPrototypeOf: any -> any [@@js.global "getPrototypeOf"]
  
  (**
    Gets the own property descriptor of the specified object.
    An own property descriptor is one that is defined directly on the object and is not inherited from the object's prototype.
    @param o Object that contains the property.
    @param p Name of the property.
  *)
  val getOwnPropertyDescriptor: o:any -> p:PropertyKey.t -> PropertyDescriptor.t option [@@js.global "getOwnPropertyDescriptor"]
  
  (**
    Returns the names of the own properties of an object. The own properties of an object are those that are defined directly
    on that object, and are not inherited from the object's prototype. The properties of an object include both fields (objects) and functions.
    @param o Object that contains the own properties.
  *)
  val getOwnPropertyNames: any -> string list [@@js.global "getOwnPropertyNames"]
  
  (**
    Creates an object that has the specified prototype or that has null prototype.
    @param o Object to use as a prototype. May be null.
  *)
  val create_: untyped_object option -> any [@@js.global "create"]
  
  (**
    Creates an object that has the specified prototype, and that optionally contains specified properties.
    @param o Object to use as a prototype. May be null
    @param properties JavaScript object that contains one or more property descriptors.
  *)
  val create_': o:untyped_object option -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2 -> any [@@js.global "create"]
  
  (**
    Adds a property to an object, or modifies attributes of an existing property.
    @param o Object on which to add or modify the property. This can be a native JavaScript object (that is, a user-defined object or a built in object) or a DOM object.
    @param p The property name.
    @param attributes Descriptor for the property. It can be for a data property or an accessor property.
  *)
  val defineProperty: o:'T -> p:PropertyKey.t -> attributes:(PropertyDescriptor.t, any ThisType.t) intersection2 -> 'T [@@js.global "defineProperty"]
  
  (**
    Adds one or more properties to an object, and/or modifies attributes of existing properties.
    @param o Object on which to add or modify the properties. This can be a native JavaScript object or a DOM object.
    @param properties JavaScript object that contains one or more descriptor objects. Each descriptor object describes a data property or an accessor property.
  *)
  val defineProperties: o:'T -> properties:(PropertyDescriptorMap.t, any ThisType.t) intersection2 -> 'T [@@js.global "defineProperties"]
  
  (**
    Prevents the modification of attributes of existing properties, and prevents the addition of new properties.
    @param o Object on which to lock the attributes.
  *)
  val seal: 'T -> 'T [@@js.global "seal"]
  
  (**
    Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
    @param a Object on which to lock the attributes.
  *)
  val freeze: 'T list -> 'T list [@@js.global "freeze"]
  
  (**
    Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
    @param f Object on which to lock the attributes.
  *)
  val freeze': 'T -> 'T [@@js.global "freeze"]
  
  (**
    Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
    @param o Object on which to lock the attributes.
  *)
  val freeze'': 'T -> 'T Readonly.t [@@js.global "freeze"]
  
  (**
    Prevents the addition of new properties to an object.
    @param o Object to make non-extensible.
  *)
  val preventExtensions: 'T -> 'T [@@js.global "preventExtensions"]
  
  (**
    Returns true if existing property attributes cannot be modified in an object and new properties cannot be added to the object.
    @param o Object to test.
  *)
  val isSealed: any -> bool [@@js.global "isSealed"]
  
  (**
    Returns true if existing property attributes and values cannot be modified in an object, and new properties cannot be added to the object.
    @param o Object to test.
  *)
  val isFrozen: any -> bool [@@js.global "isFrozen"]
  
  (**
    Returns a value that indicates whether new properties can be added to an object.
    @param o Object to test.
  *)
  val isExtensible: any -> bool [@@js.global "isExtensible"]
  
  (**
    Returns the names of the enumerable string properties and methods of an object.
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val keys': untyped_object -> string list [@@js.global "keys"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module PropertyDecorator : sig
  type t = [`PropertyDecorator] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PropertyDecorator]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PropertyDecorator]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PropertyDecorator ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> target:Object.t -> propertyKey:([`U1 of string | `U2 of symbol] [@js.union]) -> unit [@@js.apply]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module PromiseLike : sig
  type 'T t = [`PromiseLike of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`PromiseLike of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`PromiseLike of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `PromiseLike of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  
  (**
    Attaches callbacks for the resolution and/or rejection of the Promise.
    @param onfulfilled The callback to execute when the Promise is resolved.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of which ever callback is executed.
  *)
  val then_: ('tags, 'T) this -> ?onfulfilled:([`Null | `Undefined of undefined | `U1 of ('T -> ([`U1 of 'TResult1 | `U2 of 'TResult1 t] [@js.union]))] [@js.union]) -> ?onrejected:([`Null | `Undefined of undefined | `U1 of (any -> ([`U1 of 'TResult2 | `U2 of 'TResult2 t] [@js.union]))] [@js.union]) -> unit -> ('TResult1, 'TResult2) union2 t [@@js.call "then"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end


module PromiseConstructorLike : sig
  module AnonymousInterface9 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val create: t -> executor:(resolve:(([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) -> unit) -> reject:(?reason:any -> unit -> unit) -> unit) -> 'T PromiseLike.t [@@js.apply_newable]
  end
  type t = AnonymousInterface9.t
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end


module Parameters : sig
  type 'T t = (* FIXME: unknown type 'T extends (...args: infer P) => any ? P : never' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module ParameterDecorator : sig
  type t = [`ParameterDecorator] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ParameterDecorator]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ParameterDecorator]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ParameterDecorator ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> target:Object.t -> propertyKey:([`U1 of string | `U2 of symbol] [@js.union]) -> parameterIndex:float -> unit [@@js.apply]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module Pick : sig
  type ('T, 'K) t = (* FIXME: unknown type '{
      [P in K]: T[P];
  }' *)any
  type ('T, 'K) t_2 = ('T, 'K) t
  val t_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t
  val t_2_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t_2
end


module Exclude : sig
  type ('T, 'U) t = (* FIXME: unknown type 'T extends U ? never : T' *)any
  type ('T, 'U) t_2 = ('T, 'U) t
  val t_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
  val t_2_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t_2
end


module Omit : sig
  type ('T, 'K) t = ('T, ((* FIXME: unknown type ''T' *)any, 'K) Exclude.t) Pick.t
  type ('T, 'K) t_2 = ('T, 'K) t
  val t_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t
  val t_2_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t_2
end


module[@js.scope "Number"] Number : sig
  type t = [`Number] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Number]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Number]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Number ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Converts a number to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleString: 'tags this -> ?locales:([`U1 of string | `U2 of string list] [@js.union]) -> ?options:Intl.NumberFormatOptions.t -> unit -> string [@@js.call "toLocaleString"]
  
  (**
    Returns a string representation of an object.
    @param radix Specifies a radix for converting numeric values to strings. This value is only used for numbers.
  *)
  val toString: 'tags this -> ?radix:float -> unit -> string [@@js.call "toString"]
  
  (**
    Returns a string representing a number in fixed-point notation.
    @param fractionDigits Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  *)
  val toFixed: 'tags this -> ?fractionDigits:float -> unit -> string [@@js.call "toFixed"]
  
  (**
    Returns a string containing a number represented in exponential notation.
    @param fractionDigits Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  *)
  val toExponential: 'tags this -> ?fractionDigits:float -> unit -> string [@@js.call "toExponential"]
  
  (**
    Returns a string containing a number represented either in exponential or fixed-point notation with a specified number of digits.
    @param precision Number of significant digits. Must be in the range 1 - 21, inclusive.
  *)
  val toPrecision: 'tags this -> ?precision:float -> unit -> string [@@js.call "toPrecision"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> float [@@js.call "valueOf"]
  
  (**
    language version: ES2015
    The value of Number.EPSILON is the difference between 1 and the smallest value greater than 1
    that is representable as a Number value, which is approximately:
    2.2204460492503130808472633361816 x 10‍−‍16.
  *)
  val epsilon: unit -> float [@@js.get "EPSILON"]
  
  (**
    language version: ES2015
    Returns true if passed value is finite.
    Unlike the global isFinite, Number.isFinite doesn't forcibly convert the parameter to a
    number. Only finite values of the type number, result in true.
    @param number A numeric value.
  *)
  val isFinite: unknown -> bool [@@js.global "isFinite"]
  
  (**
    language version: ES2015
    Returns true if the value passed is an integer, false otherwise.
    @param number A numeric value.
  *)
  val isInteger: unknown -> bool [@@js.global "isInteger"]
  
  (**
    language version: ES2015
    Returns a Boolean value that indicates whether a value is the reserved value NaN (not a
    number). Unlike the global isNaN(), Number.isNaN() doesn't forcefully convert the parameter
    to a number. Only values of the type number, that are also NaN, result in true.
    @param number A numeric value.
  *)
  val isNaN: unknown -> bool [@@js.global "isNaN"]
  
  (**
    language version: ES2015
    Returns true if the value passed is a safe integer.
    @param number A numeric value.
  *)
  val isSafeInteger: unknown -> bool [@@js.global "isSafeInteger"]
  
  (**
    language version: ES2015
    The value of the largest integer n such that n and n + 1 are both exactly representable as
    a Number value.
    The value of Number.MAX_SAFE_INTEGER is 9007199254740991 2^53 − 1.
  *)
  val max_safe_integer: unit -> float [@@js.get "MAX_SAFE_INTEGER"]
  
  (**
    language version: ES2015
    The value of the smallest integer n such that n and n − 1 are both exactly representable as
    a Number value.
    The value of Number.MIN_SAFE_INTEGER is −9007199254740991 (−(2^53 − 1)).
  *)
  val min_safe_integer: unit -> float [@@js.get "MIN_SAFE_INTEGER"]
  
  (**
    language version: ES2015
    Converts a string to a floating-point number.
    @param string A string that contains a floating-point number.
  *)
  val parseFloat: string -> float [@@js.global "parseFloat"]
  
  (**
    language version: ES2015
    Converts A string to an integer.
    @param string A string to convert into a number.
    @param radix A value between 2 and 36 that specifies the base of the number in `string`.
    If this argument is not supplied, strings with a prefix of '0x' are considered hexadecimal.
    All other strings are considered decimal.
  *)
  val parseInt: string:string -> ?radix:float -> unit -> float [@@js.global "parseInt"]
  val create: ?value:any -> unit -> t [@@js.create]
  val invoke: ?value:any -> unit -> float [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  
  (** The largest number that can be represented in JavaScript. Equal to approximately 1.79E+308. *)
  val max_value: unit -> float [@@js.get "MAX_VALUE"]
  
  (** The closest number to zero that can be represented in JavaScript. Equal to approximately 5.00E-324. *)
  val min_value: unit -> float [@@js.get "MIN_VALUE"]
  
  (**
    A value that is not a number.
    In equality comparisons, NaN does not equal any value, including itself. To test whether a value is equivalent to NaN, use the isNaN function.
  *)
  val nan: unit -> float [@@js.get "NaN"]
  
  (**
    A value that is less than the largest negative number that can be represented in JavaScript.
    JavaScript displays NEGATIVE_INFINITY values as -infinity.
  *)
  val negative_infinity: unit -> float [@@js.get "NEGATIVE_INFINITY"]
  
  (**
    A value greater than the largest number that can be represented in JavaScript.
    JavaScript displays POSITIVE_INFINITY values as infinity.
  *)
  val positive_infinity: unit -> float [@@js.get "POSITIVE_INFINITY"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  val of_ml: float -> t [@@js.cast]
  val to_ml: t -> float [@@js.call "valueOf"]
end


module NonNullable : sig
  type 'T t = (* FIXME: unknown type 'T extends null | undefined ? never : T' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module NewableFunction : sig
  module AnonymousInterface43 : sig
    type 'T t = private Ojs.t
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    val create: 'T t -> 'T [@@js.apply_newable]
    module Make (T : Ojs.T) : sig
      type 'T parent = 'T t
      type t = T.t parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> T.t [@@js.apply_newable]
    end
  end
  module AnonymousInterface39 : sig
    type ('AX, 'R) t = private Ojs.t
    val t_to_js: ('AX -> Ojs.t) -> ('R -> Ojs.t) -> ('AX, 'R) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'AX) -> (Ojs.t -> 'R) -> Ojs.t -> ('AX, 'R) t
    val create: ('AX, 'R) t -> args:('AX list [@js.variadic]) -> 'R [@@js.apply_newable]
    module Make (AX : Ojs.T) (R : Ojs.T) : sig
      type ('AX, 'R) parent = ('AX, 'R) t
      type t = (AX.t, R.t) parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> args:(AX.t list [@js.variadic]) -> R.t [@@js.apply_newable]
    end
  end
  module AnonymousInterface36 : sig
    type ('A, 'T) t = private Ojs.t
    val t_to_js: ('A -> Ojs.t) -> ('T -> Ojs.t) -> ('A, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'T) -> Ojs.t -> ('A, 'T) t
    val create: ('A, 'T) t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'T [@@js.apply_newable]
    module Make (A : Ojs.T) (T : Ojs.T) : sig
      type ('A, 'T) parent = ('A, 'T) t
      type t = (A.t, T.t) parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> T.t [@@js.apply_newable]
    end
  end
  module AnonymousInterface33 : sig
    type ('A, 'R) t = private Ojs.t
    val t_to_js: ('A -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'R) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'R) t
    val create: ('A, 'R) t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
    module Make (A : Ojs.T) (R : Ojs.T) : sig
      type ('A, 'R) parent = ('A, 'R) t
      type t = (A.t, R.t) parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> R.t [@@js.apply_newable]
    end
  end
  module AnonymousInterface31 : sig
    type ('A, 'A0, 'R) t = private Ojs.t
    val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'R) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'R) t
    val create: ('A, 'A0, 'R) t -> arg0:'A0 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
    module Make (A : Ojs.T) (A0 : Ojs.T) (R : Ojs.T) : sig
      type ('A, 'A0, 'R) parent = ('A, 'A0, 'R) t
      type t = (A.t, A0.t, R.t) parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> arg0:A0.t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> R.t [@@js.apply_newable]
    end
  end
  module AnonymousInterface29 : sig
    type ('A, 'A0, 'A1, 'R) t = private Ojs.t
    val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'R) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'R) t
    val create: ('A, 'A0, 'A1, 'R) t -> arg0:'A0 -> arg1:'A1 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
    module Make (A : Ojs.T) (A0 : Ojs.T) (A1 : Ojs.T) (R : Ojs.T) : sig
      type ('A, 'A0, 'A1, 'R) parent = ('A, 'A0, 'A1, 'R) t
      type t = (A.t, A0.t, A1.t, R.t) parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> arg0:A0.t -> arg1:A1.t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> R.t [@@js.apply_newable]
    end
  end
  module AnonymousInterface27 : sig
    type ('A, 'A0, 'A1, 'A2, 'R) t = private Ojs.t
    val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('A2 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'A2, 'R) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'A2) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'A2, 'R) t
    val create: ('A, 'A0, 'A1, 'A2, 'R) t -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
    module Make (A : Ojs.T) (A0 : Ojs.T) (A1 : Ojs.T) (A2 : Ojs.T) (R : Ojs.T) : sig
      type ('A, 'A0, 'A1, 'A2, 'R) parent = ('A, 'A0, 'A1, 'A2, 'R) t
      type t = (A.t, A0.t, A1.t, A2.t, R.t) parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> arg0:A0.t -> arg1:A1.t -> arg2:A2.t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> R.t [@@js.apply_newable]
    end
  end
  module AnonymousInterface25 : sig
    type ('A, 'A0, 'A1, 'A2, 'A3, 'R) t = private Ojs.t
    val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('A2 -> Ojs.t) -> ('A3 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'A2, 'A3, 'R) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'A2) -> (Ojs.t -> 'A3) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'A2, 'A3, 'R) t
    val create: ('A, 'A0, 'A1, 'A2, 'A3, 'R) t -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
    module Make (A : Ojs.T) (A0 : Ojs.T) (A1 : Ojs.T) (A2 : Ojs.T) (A3 : Ojs.T) (R : Ojs.T) : sig
      type ('A, 'A0, 'A1, 'A2, 'A3, 'R) parent = ('A, 'A0, 'A1, 'A2, 'A3, 'R) t
      type t = (A.t, A0.t, A1.t, A2.t, A3.t, R.t) parent
      val t_of_js: Ojs.t -> t
      val t_to_js: t -> Ojs.t
      
      val create: t -> arg0:A0.t -> arg1:A1.t -> arg2:A2.t -> arg3:A3.t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> R.t [@@js.apply_newable]
    end
  end
  type t = [`Function | `Function | `NewableFunction] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Function | `Function | `NewableFunction]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Function | `Function | `NewableFunction]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NewableFunction ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Calls the function with the specified object as the this value and the elements of specified array as the arguments.
    @param thisArg The object to be used as the this object.
    @param args An array of argument values to be passed to the function.
  *)
  val apply_: 'tags this -> this:'T AnonymousInterface43.t -> thisArg:'T -> unit [@@js.call "apply"]
  
  (** Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function. *)
  val apply_': 'tags this -> this:('A, 'T) AnonymousInterface36.t -> thisArg:'T -> args:'A -> unit [@@js.call "apply"]
  
  (**
    Calls the function with the specified object as the this value and the specified rest arguments as the arguments.
    @param thisArg The object to be used as the this object.
    @param args Argument values to be passed to the function.
  *)
  val call: 'tags this -> this:('A, 'T) AnonymousInterface36.t -> thisArg:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> unit [@@js.call "call"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
    @param thisArg The object to be used as the this object.
    @param args Arguments to bind to the parameters of the function.
  *)
  val bind: 'tags this -> this:'T -> thisArg:any -> 'T [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind': 'tags this -> this:('A, 'A0, 'R) AnonymousInterface31.t -> thisArg:any -> arg0:'A0 -> ('A, 'R) AnonymousInterface33.t [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'': 'tags this -> this:('A, 'A0, 'A1, 'R) AnonymousInterface29.t -> thisArg:any -> arg0:'A0 -> arg1:'A1 -> ('A, 'R) AnonymousInterface33.t [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind''': 'tags this -> this:('A, 'A0, 'A1, 'A2, 'R) AnonymousInterface27.t -> thisArg:any -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> ('A, 'R) AnonymousInterface33.t [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'''': 'tags this -> this:('A, 'A0, 'A1, 'A2, 'A3, 'R) AnonymousInterface25.t -> thisArg:any -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> ('A, 'R) AnonymousInterface33.t [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind''''': 'tags this -> this:('AX, 'R) AnonymousInterface39.t -> thisArg:any -> args:('AX list [@js.variadic]) -> ('AX, 'R) AnonymousInterface39.t [@@js.call "bind"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module TypedPropertyDescriptor : sig
  type 'T t = [`TypedPropertyDescriptor of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`TypedPropertyDescriptor of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`TypedPropertyDescriptor of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `TypedPropertyDescriptor of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_enumerable: ('tags, 'T) this -> bool [@@js.get "enumerable"]
  val set_enumerable: ('tags, 'T) this -> bool -> unit [@@js.set "enumerable"]
  val get_configurable: ('tags, 'T) this -> bool [@@js.get "configurable"]
  val set_configurable: ('tags, 'T) this -> bool -> unit [@@js.set "configurable"]
  val get_writable: ('tags, 'T) this -> bool [@@js.get "writable"]
  val set_writable: ('tags, 'T) this -> bool -> unit [@@js.set "writable"]
  val get_value: ('tags, 'T) this -> 'T [@@js.get "value"]
  val set_value: ('tags, 'T) this -> 'T -> unit [@@js.set "value"]
  val get_: ('tags, 'T) this -> 'T [@@js.call "get"]
  val set_: ('tags, 'T) this -> value:'T -> unit [@@js.call "set"]
  val create: enumerable:bool -> configurable:bool -> writable:bool -> value:'T -> get_:((unit -> 'T)[@js "get"]) -> set_:(('T -> unit)[@js "set"]) -> unit -> 'T t [@@js.builder]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end


module MethodDecorator : sig
  type t = [`MethodDecorator] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MethodDecorator]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MethodDecorator]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MethodDecorator ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> target:Object.t -> propertyKey:([`U1 of string | `U2 of symbol] [@js.union]) -> descriptor:'T TypedPropertyDescriptor.t -> (unit, 'T TypedPropertyDescriptor.t) union2 [@@js.apply]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end
module[@js.scope "Math"] Math : sig
  
  (**
    language version: ES2015
    Returns the number of leading zero bits in the 32-bit binary representation of a number.
    @param x A numeric expression.
  *)
  val clz32: float -> float [@@js.global "clz32"]
  
  (**
    language version: ES2015
    Returns the result of 32-bit multiplication of two numbers.
    @param x First number
    @param y Second number
  *)
  val imul: x:float -> y:float -> float [@@js.global "imul"]
  
  (**
    language version: ES2015
    Returns the sign of the x, indicating whether x is positive, negative or zero.
    @param x The numeric expression to test
  *)
  val sign: float -> float [@@js.global "sign"]
  
  (**
    language version: ES2015
    Returns the base 10 logarithm of a number.
    @param x A numeric expression.
  *)
  val log10: float -> float [@@js.global "log10"]
  
  (**
    language version: ES2015
    Returns the base 2 logarithm of a number.
    @param x A numeric expression.
  *)
  val log2: float -> float [@@js.global "log2"]
  
  (**
    language version: ES2015
    Returns the natural logarithm of 1 + x.
    @param x A numeric expression.
  *)
  val log1p: float -> float [@@js.global "log1p"]
  
  (**
    language version: ES2015
    Returns the result of (e^x - 1), which is an implementation-dependent approximation to
    subtracting 1 from the exponential function of x (e raised to the power of x, where e
    is the base of the natural logarithms).
    @param x A numeric expression.
  *)
  val expm1: float -> float [@@js.global "expm1"]
  
  (**
    language version: ES2015
    Returns the hyperbolic cosine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val cosh: float -> float [@@js.global "cosh"]
  
  (**
    language version: ES2015
    Returns the hyperbolic sine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val sinh: float -> float [@@js.global "sinh"]
  
  (**
    language version: ES2015
    Returns the hyperbolic tangent of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val tanh: float -> float [@@js.global "tanh"]
  
  (**
    language version: ES2015
    Returns the inverse hyperbolic cosine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val acosh: float -> float [@@js.global "acosh"]
  
  (**
    language version: ES2015
    Returns the inverse hyperbolic sine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val asinh: float -> float [@@js.global "asinh"]
  
  (**
    language version: ES2015
    Returns the inverse hyperbolic tangent of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val atanh: float -> float [@@js.global "atanh"]
  
  (**
    language version: ES2015
    Returns the square root of the sum of squares of its arguments.
    @param values Values to compute the square root for.
    If no arguments are passed, the result is +0.
    If there is only one argument, the result is the absolute value.
    If any argument is +Infinity or -Infinity, the result is +Infinity.
    If any argument is NaN, the result is NaN.
    If all arguments are either +0 or −0, the result is +0.
  *)
  val hypot: (float list [@js.variadic]) -> float [@@js.global "hypot"]
  
  (**
    language version: ES2015
    Returns the integral part of the a numeric expression, x, removing any fractional digits.
    If x is already an integer, the result is x.
    @param x A numeric expression.
  *)
  val trunc: float -> float [@@js.global "trunc"]
  
  (**
    language version: ES2015
    Returns the nearest single precision float representation of a number.
    @param x A numeric expression.
  *)
  val fround: float -> float [@@js.global "fround"]
  
  (**
    language version: ES2015
    Returns an implementation-dependent approximation to the cube root of number.
    @param x A numeric expression.
  *)
  val cbrt: float -> float [@@js.global "cbrt"]
  
  (** The mathematical constant e. This is Euler's number, the base of natural logarithms. *)
  val e: unit -> float [@@js.get "E"]
  
  (** The natural logarithm of 10. *)
  val ln10: unit -> float [@@js.get "LN10"]
  
  (** The natural logarithm of 2. *)
  val ln2: unit -> float [@@js.get "LN2"]
  
  (** The base-2 logarithm of e. *)
  val log2e: unit -> float [@@js.get "LOG2E"]
  
  (** The base-10 logarithm of e. *)
  val log10e: unit -> float [@@js.get "LOG10E"]
  
  (** Pi. This is the ratio of the circumference of a circle to its diameter. *)
  val pi: unit -> float [@@js.get "PI"]
  
  (** The square root of 0.5, or, equivalently, one divided by the square root of 2. *)
  val sqrt1_2: unit -> float [@@js.get "SQRT1_2"]
  
  (** The square root of 2. *)
  val sqrt2: unit -> float [@@js.get "SQRT2"]
  
  (**
    Returns the absolute value of a number (the value without regard to whether it is positive or negative).
    For example, the absolute value of -5 is the same as the absolute value of 5.
    @param x A numeric expression for which the absolute value is needed.
  *)
  val abs: float -> float [@@js.global "abs"]
  
  (**
    Returns the arc cosine (or inverse cosine) of a number.
    @param x A numeric expression.
  *)
  val acos: float -> float [@@js.global "acos"]
  
  (**
    Returns the arcsine of a number.
    @param x A numeric expression.
  *)
  val asin: float -> float [@@js.global "asin"]
  
  (**
    Returns the arctangent of a number.
    @param x A numeric expression for which the arctangent is needed.
  *)
  val atan: float -> float [@@js.global "atan"]
  
  (**
    Returns the angle (in radians) from the X axis to a point.
    @param y A numeric expression representing the cartesian y-coordinate.
    @param x A numeric expression representing the cartesian x-coordinate.
  *)
  val atan2: y:float -> x:float -> float [@@js.global "atan2"]
  
  (**
    Returns the smallest integer greater than or equal to its numeric argument.
    @param x A numeric expression.
  *)
  val ceil: float -> float [@@js.global "ceil"]
  
  (**
    Returns the cosine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val cos: float -> float [@@js.global "cos"]
  
  (**
    Returns e (the base of natural logarithms) raised to a power.
    @param x A numeric expression representing the power of e.
  *)
  val exp: float -> float [@@js.global "exp"]
  
  (**
    Returns the greatest integer less than or equal to its numeric argument.
    @param x A numeric expression.
  *)
  val floor: float -> float [@@js.global "floor"]
  
  (**
    Returns the natural logarithm (base e) of a number.
    @param x A numeric expression.
  *)
  val log: float -> float [@@js.global "log"]
  
  (**
    Returns the larger of a set of supplied numeric expressions.
    @param values Numeric expressions to be evaluated.
  *)
  val max: (float list [@js.variadic]) -> float [@@js.global "max"]
  
  (**
    Returns the smaller of a set of supplied numeric expressions.
    @param values Numeric expressions to be evaluated.
  *)
  val min: (float list [@js.variadic]) -> float [@@js.global "min"]
  
  (**
    Returns the value of a base expression taken to a specified power.
    @param x The base value of the expression.
    @param y The exponent value of the expression.
  *)
  val pow: x:float -> y:float -> float [@@js.global "pow"]
  
  (** Returns a pseudorandom number between 0 and 1. *)
  val random: unit -> float [@@js.global "random"]
  
  (**
    Returns a supplied numeric expression rounded to the nearest integer.
    @param x The value to be rounded to the nearest integer.
  *)
  val round: float -> float [@@js.global "round"]
  
  (**
    Returns the sine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val sin: float -> float [@@js.global "sin"]
  
  (**
    Returns the square root of a number.
    @param x A numeric expression.
  *)
  val sqrt: float -> float [@@js.global "sqrt"]
  
  (**
    Returns the tangent of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val tan: float -> float [@@js.global "tan"]
end

(** language version: ES2015 *)
module[@js.scope "Map"] Map : sig
  type ('K, 'V) t = [`Map of ('K * 'V) | ('K * 'V) IterableIterator.tags_1] intf [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
  type ('K, 'V) t_2 = ('K, 'V) t
  [@@@js.stop]
  type ('K, 'V) tags = [`Map of ('K * 'V) | ('K * 'V) IterableIterator.tags_1]
  type ('K, 'V) tags_2 = ('K, 'V) tags
  [@@@js.start]
  [@@@js.implem 
    type ('K, 'V) tags = [`Map of ('K * 'V) | ('K * 'V) IterableIterator.tags_1]
    type ('K, 'V) tags_2 = ('K, 'V) tags
  ]
  type ('tags, 'K, 'V) this = 'tags intf constraint 'tags = [> `Map of ('K * 'V) ]
  val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
  val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
  (* [Symbol.toStringTag]: unit -> string *)
  (* [Symbol.iterator]: unit -> ('K * 'V) IterableIterator.t *)
  
  (** Returns an iterable of key, value pairs for every entry in the map. *)
  val entries: ('tags, 'K, 'V) this -> ('K * 'V) IterableIterator.t [@@js.call "entries"]
  
  (** Returns an iterable of keys in the map *)
  val keys: ('tags, 'K, 'V) this -> 'K IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the map *)
  val values: ('tags, 'K, 'V) this -> 'V IterableIterator.t [@@js.call "values"]
  val clear: ('tags, 'K, 'V) this -> unit [@@js.call "clear"]
  val delete: ('tags, 'K, 'V) this -> key:'K -> bool [@@js.call "delete"]
  val forEach: ('tags, 'K, 'V) this -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val get_: ('tags, 'K, 'V) this -> key:'K -> 'V option [@@js.call "get"]
  val has: ('tags, 'K, 'V) this -> key:'K -> bool [@@js.call "has"]
  val set_: ('tags, 'K, 'V) this -> key:'K -> value:'V -> ('tags, 'K, 'V) this [@@js.call "set"]
  val get_size: ('tags, 'K, 'V) this -> float [@@js.get "size"]
  val create: unit -> (any, any) t [@@js.create]
  val create': ?iterable:('K * 'V) Iterable.t option -> unit -> ('K, 'V) t [@@js.create]
  val create'': unit -> (any, any) t [@@js.create]
  val create''': ?entries:('K * 'V) list option -> unit -> ('K, 'V) t [@@js.create]
  val prototype: unit -> (any, any) t [@@js.get "prototype"]
  val cast_from: ('tags, 'K, 'V) this -> ('K, 'V) t [@@js.custom let cast_from = Obj.magic]
end


module Lowercase : sig
  type 'S t = Ojs.t
  type 'S t_1 = 'S t
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end
module[@js.scope "JSON"] JSON : sig
  
  (**
    Converts a JavaScript Object Notation (JSON) string into an object.
    @param text A valid JSON string.
    @param reviver A function that transforms the results. This function is called for each member of the object.
    If a member contains nested objects, the nested objects are transformed before the parent object is.
  *)
  val parse: text:string -> ?reviver:(this:any -> key:string -> value:any -> any) -> unit -> any [@@js.global "parse"]
  
  (**
    Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
    @param value A JavaScript value, usually an object or array, to be converted.
    @param replacer A function that transforms the results.
    @param space Adds indentation, white space, and line break characters to the return-value JSON text to make it easier to read.
  *)
  val stringify: value:any -> ?replacer:(this:any -> key:string -> value:any -> any) -> ?space:([`U1 of string | `U2 of float] [@js.union]) -> unit -> string [@@js.global "stringify"]
  
  (**
    Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
    @param value A JavaScript value, usually an object or array, to be converted.
    @param replacer An array of strings and numbers that acts as an approved list for selecting the object properties that will be stringified.
    @param space Adds indentation, white space, and line break characters to the return-value JSON text to make it easier to read.
  *)
  val stringify': value:any -> ?replacer:([`U1 of float | `U2 of string] [@js.union]) list option -> ?space:([`U1 of string | `U2 of float] [@js.union]) -> unit -> string [@@js.global "stringify"]
end


module InstanceType : sig
  module AnonymousInterface8 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val create: t -> args:((* FIXME: type 'Any' cannot be used for variadic argument *)any list [@js.variadic]) -> any [@@js.apply_newable]
  end
  type 'T t = (* FIXME: unknown type 'T extends abstract new (...args: any) => infer R ? R : any' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module ImportMeta : sig
  type t = [`ImportMeta] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImportMeta]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImportMeta]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImportMeta ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module ImportAssertions : sig
  type t = [`ImportAssertions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImportAssertions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImportAssertions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImportAssertions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: 'tags this -> string -> string [@@js.index_get]
  val set: 'tags this -> string -> string -> unit [@@js.index_set]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module ImportCallOptions : sig
  type t = [`ImportCallOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImportCallOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImportCallOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImportCallOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_assert: 'tags this -> ImportAssertions.t [@@js.get "assert"]
  val set_assert: 'tags this -> ImportAssertions.t -> unit [@@js.set "assert"]
  val create: assert_:(ImportAssertions.t[@js "assert"]) -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module IArguments : sig
  type t = [`IArguments | any ArrayLike.tags_1 | any IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IArguments | any ArrayLike.tags_1 | any IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IArguments | any ArrayLike.tags_1 | any IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IArguments ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (* [Symbol.iterator]: unit -> any IterableIterator.t *)
  val get: 'tags this -> float -> any [@@js.index_get]
  val set: 'tags this -> float -> any -> unit [@@js.index_set]
  val get_length: 'tags this -> float [@@js.get "length"]
  val set_length: 'tags this -> float -> unit [@@js.set "length"]
  val get_callee: 'tags this -> Function.t [@@js.get "callee"]
  val set_callee: 'tags this -> Function.t -> unit [@@js.set "callee"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module Generator : sig
  type ('T, 'TReturn, 'TNext) t = [`Generator of ('T * 'TReturn * 'TNext) | `Iterator of ('T * 'TReturn * 'TNext)] intf [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
  type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t
  type ('T, 'TReturn) t_2 = ('T, 'TReturn, unknown) t
  type 'T t_1 = ('T, any, unknown) t
  type t_0 = (unknown, any, unknown) t
  [@@@js.stop]
  type ('T, 'TReturn, 'TNext) tags = [`Generator of ('T * 'TReturn * 'TNext) | `Iterator of ('T * 'TReturn * 'TNext)]
  type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
  type ('T, 'TReturn) tags_2 = ('T, 'TReturn, unknown) tags
  type 'T tags_1 = ('T, any, unknown) tags
  type tags_0 = (unknown, any, unknown) tags
  [@@@js.start]
  [@@@js.implem 
    type ('T, 'TReturn, 'TNext) tags = [`Generator of ('T * 'TReturn * 'TNext) | `Iterator of ('T * 'TReturn * 'TNext)]
    type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
    type ('T, 'TReturn) tags_2 = ('T, 'TReturn, unknown) tags
    type 'T tags_1 = ('T, any, unknown) tags
    type tags_0 = (unknown, any, unknown) tags
  ]
  type ('tags, 'T, 'TReturn, 'TNext) this = 'tags intf constraint 'tags = [> `Generator of ('T * 'TReturn * 'TNext) ]
  val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t
  val t_3_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t_3 -> Ojs.t
  val t_3_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t_3
  val t_2_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val next: ('tags, 'T, 'TReturn, 'TNext) this -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) IteratorResult.t [@@js.call "next"]
  val return: ('tags, 'T, 'TReturn, 'TNext) this -> value:'TReturn -> ('T, 'TReturn) IteratorResult.t [@@js.call "return"]
  val throw: ('tags, 'T, 'TReturn, 'TNext) this -> e:any -> ('T, 'TReturn) IteratorResult.t [@@js.call "throw"]
  (* [Symbol.iterator]: unit -> ('T, 'TReturn, 'TNext) t *)
  val cast_from: ('tags, 'T, 'TReturn, 'TNext) this -> ('T, 'TReturn, 'TNext) t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module GeneratorFunction : sig
  type t = [`GeneratorFunction] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`GeneratorFunction]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`GeneratorFunction]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `GeneratorFunction ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (* [Symbol.toStringTag]: unit -> string *)
  
  (**
    Creates a new Generator object.
    @param args A list of arguments the function accepts.
  *)
  val create: 'tags this -> args:(any list [@js.variadic]) -> Generator.t_0 [@@js.apply_newable]
  
  (**
    Creates a new Generator object.
    @param args A list of arguments the function accepts.
  *)
  val apply: 'tags this -> args:(any list [@js.variadic]) -> Generator.t_0 [@@js.apply]
  
  (** The length of the arguments. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (** Returns the name of the function. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (** A reference to the prototype. *)
  val get_prototype: 'tags this -> Generator.t_0 [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2015 *)
module GeneratorFunctionConstructor : sig
  type t = [`GeneratorFunctionConstructor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`GeneratorFunctionConstructor]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`GeneratorFunctionConstructor]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `GeneratorFunctionConstructor ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Creates a new Generator function.
    @param args A list of arguments the function accepts.
  *)
  val create: 'tags this -> args:(string list [@js.variadic]) -> GeneratorFunction.t [@@js.apply_newable]
  
  (**
    Creates a new Generator function.
    @param args A list of arguments the function accepts.
  *)
  val apply: 'tags this -> args:(string list [@js.variadic]) -> GeneratorFunction.t [@@js.apply]
  
  (** The length of the arguments. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (** Returns the name of the function. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (** A reference to the prototype. *)
  val get_prototype: 'tags this -> GeneratorFunction.t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Float64Array"] Float64Array : sig
  type t = [`Float64Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Float64Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Float64Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Float64Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s7_Float64Array[@js "Float64Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Float32Array"] Float32Array : sig
  type t = [`Float32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Float32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Float32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Float32Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s6_Float32Array[@js "Float32Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Float32Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ESNext *)
module[@js.scope "FinalizationRegistry"] FinalizationRegistry : sig
  type 'T t = [`FinalizationRegistry of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`FinalizationRegistry of 'T]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`FinalizationRegistry of 'T]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `FinalizationRegistry of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (* [Symbol.toStringTag]: unit -> ([`L_s5_FinalizationRegistry[@js "FinalizationRegistry"]] [@js.enum]) *)
  
  (**
    Registers an object with the registry.
    @param target The target object to register.
    @param heldValue The value to pass to the finalizer for this object. This cannot be the
    target object.
    @param unregisterToken The token to pass to the unregister method to unregister the target
    object. If provided (and not undefined), this must be an object. If not provided, the target
    cannot be unregistered.
  *)
  val register: ('tags, 'T) this -> target:untyped_object -> heldValue:any -> ?unregisterToken:untyped_object -> unit -> unit [@@js.call "register"]
  
  (**
    Unregisters an object from the registry.
    @param unregisterToken The token that was used as the unregisterToken argument when calling
    register to register the target object.
  *)
  val unregister: ('tags, 'T) this -> unregisterToken:untyped_object -> unit [@@js.call "unregister"]
  (* [Symbol.toStringTag]: unit -> ([`L_s5_FinalizationRegistry[@js "FinalizationRegistry"]] [@js.enum]) *)
  
  (**
    Registers an object with the registry.
    @param target The target object to register.
    @param heldValue The value to pass to the finalizer for this object. This cannot be the
    target object.
    @param unregisterToken The token to pass to the unregister method to unregister the target
    object. If provided (and not undefined), this must be an object. If not provided, the target
    cannot be unregistered.
  *)
  val register': ('tags, 'T) this -> target:untyped_object -> heldValue:'T -> ?unregisterToken:untyped_object -> unit -> unit [@@js.call "register"]
  
  (**
    Unregisters an object from the registry.
    @param unregisterToken The token that was used as the unregisterToken argument when calling
    register to register the target object.
  *)
  val unregister': ('tags, 'T) this -> unregisterToken:untyped_object -> unit [@@js.call "unregister"]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  
  (**
    Creates a finalization registry with an associated cleanup callback
    @param cleanupCallback The callback to call after an object in the registry has been reclaimed.
  *)
  val create: (any -> unit) -> t_0 [@@js.create]
  val prototype': unit -> any t [@@js.get "prototype"]
  
  (**
    Creates a finalization registry with an associated cleanup callback
    @param cleanupCallback The callback to call after an object in the registry has been reclaimed.
  *)
  val create': ('T -> unit) -> 'T t [@@js.create]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end


module Extract : sig
  type ('T, 'U) t = (* FIXME: unknown type 'T extends U ? T : never' *)any
  type ('T, 'U) t_2 = ('T, 'U) t
  val t_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
  val t_2_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t_2
end


module[@js.scope "EvalError"] EvalError : sig
  type t = [`Error | `EvalError] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Error | `EvalError]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Error | `EvalError]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EvalError ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ESNext *)
  val create: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  
  (** language version: ESNext *)
  val invoke: ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create': ?message:string -> unit -> t [@@js.create]
  val invoke': ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "DataView"] DataView : sig
  type t = [`DataView] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DataView]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DataView]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DataView ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ES2020
    Gets the BigInt64 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getBigInt64: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> bigint [@@js.call "getBigInt64"]
  
  (**
    language version: ES2020
    Gets the BigUint64 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getBigUint64: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> bigint [@@js.call "getBigUint64"]
  
  (**
    language version: ES2020
    Stores a BigInt64 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setBigInt64: 'tags this -> byteOffset:float -> value:bigint -> ?littleEndian:bool -> unit -> unit [@@js.call "setBigInt64"]
  
  (**
    language version: ES2020
    Stores a BigUint64 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setBigUint64: 'tags this -> byteOffset:float -> value:bigint -> ?littleEndian:bool -> unit -> unit [@@js.call "setBigUint64"]
  (* [Symbol.toStringTag]: unit -> string *)
  val get_buffer: 'tags this -> ArrayBuffer.t [@@js.get "buffer"]
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Gets the Float32 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getFloat32: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getFloat32"]
  
  (**
    Gets the Float64 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getFloat64: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getFloat64"]
  
  (**
    Gets the Int8 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getInt8: 'tags this -> byteOffset:float -> float [@@js.call "getInt8"]
  
  (**
    Gets the Int16 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getInt16: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getInt16"]
  
  (**
    Gets the Int32 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getInt32: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getInt32"]
  
  (**
    Gets the Uint8 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getUint8: 'tags this -> byteOffset:float -> float [@@js.call "getUint8"]
  
  (**
    Gets the Uint16 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getUint16: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getUint16"]
  
  (**
    Gets the Uint32 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getUint32: 'tags this -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getUint32"]
  
  (**
    Stores an Float32 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setFloat32: 'tags this -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setFloat32"]
  
  (**
    Stores an Float64 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setFloat64: 'tags this -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setFloat64"]
  
  (**
    Stores an Int8 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
  *)
  val setInt8: 'tags this -> byteOffset:float -> value:float -> unit [@@js.call "setInt8"]
  
  (**
    Stores an Int16 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setInt16: 'tags this -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setInt16"]
  
  (**
    Stores an Int32 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setInt32: 'tags this -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setInt32"]
  
  (**
    Stores an Uint8 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
  *)
  val setUint8: 'tags this -> byteOffset:float -> value:float -> unit [@@js.call "setUint8"]
  
  (**
    Stores an Uint16 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setUint16: 'tags this -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setUint16"]
  
  (**
    Stores an Uint32 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setUint32: 'tags this -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setUint32"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?byteLength:float -> unit -> t [@@js.create]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module ConstructorParameters : sig
  module AnonymousInterface8 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val create: t -> args:((* FIXME: type 'Any' cannot be used for variadic argument *)any list [@js.variadic]) -> any [@@js.apply_newable]
  end
  type 'T t = (* FIXME: unknown type 'T extends abstract new (...args: infer P) => any ? P : never' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module ClassDecorator : sig
  type t = [`ClassDecorator] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ClassDecorator]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ClassDecorator]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ClassDecorator ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> target:'TFunction -> ('TFunction, unit) union2 [@@js.apply]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module Capitalize : sig
  type 'S t = Ojs.t
  type 'S t_1 = 'S t
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end


module ThisParameterType : sig
  type 'T t = (* FIXME: unknown type 'T extends (this: infer U, ...args: any[]) => any ? U : unknown' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module OmitThisParameter : sig
  type 'T t = (* FIXME: unknown type 'unknown extends ThisParameterType<T> ? T : T extends (...args: infer A) => infer R ? (...args: A) => R : T' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module CallableFunction : sig
  type t = [`CallableFunction | `Function | `Function] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CallableFunction | `Function | `Function]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CallableFunction | `Function | `Function]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CallableFunction ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Calls the function with the specified object as the this value and the elements of specified array as the arguments.
    @param thisArg The object to be used as the this object.
    @param args An array of argument values to be passed to the function.
  *)
  val apply_: 'tags this -> this:('T -> 'R) -> thisArg:'T -> 'R [@@js.call "apply"]
  
  (** Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function. *)
  val apply_': 'tags this -> this:(this:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> args:'A -> 'R [@@js.call "apply"]
  
  (**
    Calls the function with the specified object as the this value and the specified rest arguments as the arguments.
    @param thisArg The object to be used as the this object.
    @param args Argument values to be passed to the function.
  *)
  val call: 'tags this -> this:(this:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.call "call"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
    @param thisArg The object to be used as the this object.
    @param args Arguments to bind to the parameters of the function.
  *)
  val bind: 'tags this -> this:'T -> thisArg:'T ThisParameterType.t -> 'T OmitThisParameter.t [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind': 'tags this -> this:(this:'T -> arg0:'A0 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> (((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'': 'tags this -> this:(this:'T -> arg0:'A0 -> arg1:'A1 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> arg1:'A1 -> (((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind''': 'tags this -> this:(this:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> (((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'''': 'tags this -> this:(this:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> (((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind''''': 'tags this -> this:(this:'T -> args:('AX list [@js.variadic]) -> 'R) -> thisArg:'T -> args:('AX list [@js.variadic]) -> (('AX list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Boolean"] Boolean : sig
  type t = [`Boolean] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Boolean]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Boolean]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Boolean ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> bool [@@js.call "valueOf"]
  val create: ?value:any -> unit -> t [@@js.create]
  val invoke: ?value:'T -> unit -> bool [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
  val of_ml: bool -> t [@@js.cast]
  val to_ml: t -> bool [@@js.call "valueOf"]
end

(** language version: ES2020 *)
module BigIntToLocaleStringOptions : sig
  type t = [`BigIntToLocaleStringOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BigIntToLocaleStringOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BigIntToLocaleStringOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `BigIntToLocaleStringOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    The locale matching algorithm to use.The default is "best fit". For information about this option, see the 
    \{\@link 
    https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation Intl page
    \}
    .
  *)
  val get_localeMatcher: 'tags this -> string [@@js.get "localeMatcher"]
  
  (**
    The locale matching algorithm to use.The default is "best fit". For information about this option, see the 
    \{\@link 
    https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation Intl page
    \}
    .
  *)
  val set_localeMatcher: 'tags this -> string -> unit [@@js.set "localeMatcher"]
  
  (** The formatting style to use , the default is "decimal". *)
  val get_style: 'tags this -> string [@@js.get "style"]
  
  (** The formatting style to use , the default is "decimal". *)
  val set_style: 'tags this -> string -> unit [@@js.set "style"]
  val get_numberingSystem: 'tags this -> string [@@js.get "numberingSystem"]
  val set_numberingSystem: 'tags this -> string -> unit [@@js.set "numberingSystem"]
  
  (** The unit to use in unit formatting, Possible values are core unit identifiers, defined in UTS #35, Part 2, Section 6. A subset of units from the full list was selected for use in ECMAScript. Pairs of simple units can be concatenated with "-per-" to make a compound unit. There is no default value; if the style is "unit", the unit property must be provided. *)
  val get_unit: 'tags this -> string [@@js.get "unit"]
  
  (** The unit to use in unit formatting, Possible values are core unit identifiers, defined in UTS #35, Part 2, Section 6. A subset of units from the full list was selected for use in ECMAScript. Pairs of simple units can be concatenated with "-per-" to make a compound unit. There is no default value; if the style is "unit", the unit property must be provided. *)
  val set_unit: 'tags this -> string -> unit [@@js.set "unit"]
  
  (** The unit formatting style to use in unit formatting, the defaults is "short". *)
  val get_unitDisplay: 'tags this -> string [@@js.get "unitDisplay"]
  
  (** The unit formatting style to use in unit formatting, the defaults is "short". *)
  val set_unitDisplay: 'tags this -> string -> unit [@@js.set "unitDisplay"]
  
  (** The currency to use in currency formatting. Possible values are the ISO 4217 currency codes, such as "USD" for the US dollar, "EUR" for the euro, or "CNY" for the Chinese RMB — see the Current currency & funds code list. There is no default value; if the style is "currency", the currency property must be provided. It is only used when \[\[Style\]\] has the value "currency". *)
  val get_currency: 'tags this -> string [@@js.get "currency"]
  
  (** The currency to use in currency formatting. Possible values are the ISO 4217 currency codes, such as "USD" for the US dollar, "EUR" for the euro, or "CNY" for the Chinese RMB — see the Current currency & funds code list. There is no default value; if the style is "currency", the currency property must be provided. It is only used when \[\[Style\]\] has the value "currency". *)
  val set_currency: 'tags this -> string -> unit [@@js.set "currency"]
  
  (**
    How to display the currency in currency formatting. It is only used when \[\[Style\]\] has the value "currency". The default is "symbol".
    
    "symbol" to use a localized currency symbol such as €,
    
    "code" to use the ISO currency code,
    
    "name" to use a localized currency name such as "dollar"
  *)
  val get_currencyDisplay: 'tags this -> string [@@js.get "currencyDisplay"]
  
  (**
    How to display the currency in currency formatting. It is only used when \[\[Style\]\] has the value "currency". The default is "symbol".
    
    "symbol" to use a localized currency symbol such as €,
    
    "code" to use the ISO currency code,
    
    "name" to use a localized currency name such as "dollar"
  *)
  val set_currencyDisplay: 'tags this -> string -> unit [@@js.set "currencyDisplay"]
  
  (** Whether to use grouping separators, such as thousands separators or thousand/lakh/crore separators. The default is true. *)
  val get_useGrouping: 'tags this -> bool [@@js.get "useGrouping"]
  
  (** Whether to use grouping separators, such as thousands separators or thousand/lakh/crore separators. The default is true. *)
  val set_useGrouping: 'tags this -> bool -> unit [@@js.set "useGrouping"]
  
  (** The minimum number of integer digits to use. Possible values are from 1 to 21; the default is 1. *)
  val get_minimumIntegerDigits: 'tags this -> ([`L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_21[@js 21] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) [@@js.get "minimumIntegerDigits"]
  
  (** The minimum number of integer digits to use. Possible values are from 1 to 21; the default is 1. *)
  val set_minimumIntegerDigits: 'tags this -> ([`U1 of ([`L_n_1[@js 1]] [@js.enum]) | `U2 of ([`L_n_2[@js 2]] [@js.enum]) | `U3 of ([`L_n_3[@js 3]] [@js.enum]) | `U4 of ([`L_n_4[@js 4]] [@js.enum]) | `U5 of ([`L_n_5[@js 5]] [@js.enum]) | `U6 of ([`L_n_6[@js 6]] [@js.enum]) | `U7 of ([`L_n_7[@js 7]] [@js.enum]) | `U8 of ([`L_n_8[@js 8]] [@js.enum]) | `U9 of ([`L_n_9[@js 9]] [@js.enum]) | `U10 of ([`L_n_10[@js 10]] [@js.enum]) | `U11 of ([`L_n_11[@js 11]] [@js.enum]) | `U12 of ([`L_n_12[@js 12]] [@js.enum]) | `U13 of ([`L_n_13[@js 13]] [@js.enum]) | `U14 of ([`L_n_14[@js 14]] [@js.enum]) | `U15 of ([`L_n_15[@js 15]] [@js.enum]) | `U16 of ([`L_n_16[@js 16]] [@js.enum]) | `U17 of ([`L_n_17[@js 17]] [@js.enum]) | `U18 of ([`L_n_18[@js 18]] [@js.enum]) | `U19 of ([`L_n_19[@js 19]] [@js.enum]) | `U20 of ([`L_n_20[@js 20]] [@js.enum]) | `U21 of ([`L_n_21[@js 21]] [@js.enum])] [@js.union]) -> unit [@@js.set "minimumIntegerDigits"]
  
  (**
    The minimum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number and percent formatting is 0; the default for currency formatting is the number of minor unit digits provided by the 
    \{\@link 
    http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list
    \}
     (2 if the list doesn't provide that information).
  *)
  val get_minimumFractionDigits: 'tags this -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) [@@js.get "minimumFractionDigits"]
  
  (**
    The minimum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number and percent formatting is 0; the default for currency formatting is the number of minor unit digits provided by the 
    \{\@link 
    http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list
    \}
     (2 if the list doesn't provide that information).
  *)
  val set_minimumFractionDigits: 'tags this -> ([`U1 of ([`L_n_0[@js 0]] [@js.enum]) | `U2 of ([`L_n_1[@js 1]] [@js.enum]) | `U3 of ([`L_n_2[@js 2]] [@js.enum]) | `U4 of ([`L_n_3[@js 3]] [@js.enum]) | `U5 of ([`L_n_4[@js 4]] [@js.enum]) | `U6 of ([`L_n_5[@js 5]] [@js.enum]) | `U7 of ([`L_n_6[@js 6]] [@js.enum]) | `U8 of ([`L_n_7[@js 7]] [@js.enum]) | `U9 of ([`L_n_8[@js 8]] [@js.enum]) | `U10 of ([`L_n_9[@js 9]] [@js.enum]) | `U11 of ([`L_n_10[@js 10]] [@js.enum]) | `U12 of ([`L_n_11[@js 11]] [@js.enum]) | `U13 of ([`L_n_12[@js 12]] [@js.enum]) | `U14 of ([`L_n_13[@js 13]] [@js.enum]) | `U15 of ([`L_n_14[@js 14]] [@js.enum]) | `U16 of ([`L_n_15[@js 15]] [@js.enum]) | `U17 of ([`L_n_16[@js 16]] [@js.enum]) | `U18 of ([`L_n_17[@js 17]] [@js.enum]) | `U19 of ([`L_n_18[@js 18]] [@js.enum]) | `U20 of ([`L_n_19[@js 19]] [@js.enum]) | `U21 of ([`L_n_20[@js 20]] [@js.enum])] [@js.union]) -> unit [@@js.set "minimumFractionDigits"]
  
  (**
    The maximum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number formatting is the larger of minimumFractionDigits and 3; the default for currency formatting is the larger of minimumFractionDigits and the number of minor unit digits provided by the 
    \{\@link 
    http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list
    \}
     (2 if the list doesn't provide that information); the default for percent formatting is the larger of minimumFractionDigits and 0.
  *)
  val get_maximumFractionDigits: 'tags this -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) [@@js.get "maximumFractionDigits"]
  
  (**
    The maximum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number formatting is the larger of minimumFractionDigits and 3; the default for currency formatting is the larger of minimumFractionDigits and the number of minor unit digits provided by the 
    \{\@link 
    http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list
    \}
     (2 if the list doesn't provide that information); the default for percent formatting is the larger of minimumFractionDigits and 0.
  *)
  val set_maximumFractionDigits: 'tags this -> ([`U1 of ([`L_n_0[@js 0]] [@js.enum]) | `U2 of ([`L_n_1[@js 1]] [@js.enum]) | `U3 of ([`L_n_2[@js 2]] [@js.enum]) | `U4 of ([`L_n_3[@js 3]] [@js.enum]) | `U5 of ([`L_n_4[@js 4]] [@js.enum]) | `U6 of ([`L_n_5[@js 5]] [@js.enum]) | `U7 of ([`L_n_6[@js 6]] [@js.enum]) | `U8 of ([`L_n_7[@js 7]] [@js.enum]) | `U9 of ([`L_n_8[@js 8]] [@js.enum]) | `U10 of ([`L_n_9[@js 9]] [@js.enum]) | `U11 of ([`L_n_10[@js 10]] [@js.enum]) | `U12 of ([`L_n_11[@js 11]] [@js.enum]) | `U13 of ([`L_n_12[@js 12]] [@js.enum]) | `U14 of ([`L_n_13[@js 13]] [@js.enum]) | `U15 of ([`L_n_14[@js 14]] [@js.enum]) | `U16 of ([`L_n_15[@js 15]] [@js.enum]) | `U17 of ([`L_n_16[@js 16]] [@js.enum]) | `U18 of ([`L_n_17[@js 17]] [@js.enum]) | `U19 of ([`L_n_18[@js 18]] [@js.enum]) | `U20 of ([`L_n_19[@js 19]] [@js.enum]) | `U21 of ([`L_n_20[@js 20]] [@js.enum])] [@js.union]) -> unit [@@js.set "maximumFractionDigits"]
  
  (** The minimum number of significant digits to use. Possible values are from 1 to 21; the default is 1. *)
  val get_minimumSignificantDigits: 'tags this -> ([`L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_21[@js 21] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) [@@js.get "minimumSignificantDigits"]
  
  (** The minimum number of significant digits to use. Possible values are from 1 to 21; the default is 1. *)
  val set_minimumSignificantDigits: 'tags this -> ([`U1 of ([`L_n_1[@js 1]] [@js.enum]) | `U2 of ([`L_n_2[@js 2]] [@js.enum]) | `U3 of ([`L_n_3[@js 3]] [@js.enum]) | `U4 of ([`L_n_4[@js 4]] [@js.enum]) | `U5 of ([`L_n_5[@js 5]] [@js.enum]) | `U6 of ([`L_n_6[@js 6]] [@js.enum]) | `U7 of ([`L_n_7[@js 7]] [@js.enum]) | `U8 of ([`L_n_8[@js 8]] [@js.enum]) | `U9 of ([`L_n_9[@js 9]] [@js.enum]) | `U10 of ([`L_n_10[@js 10]] [@js.enum]) | `U11 of ([`L_n_11[@js 11]] [@js.enum]) | `U12 of ([`L_n_12[@js 12]] [@js.enum]) | `U13 of ([`L_n_13[@js 13]] [@js.enum]) | `U14 of ([`L_n_14[@js 14]] [@js.enum]) | `U15 of ([`L_n_15[@js 15]] [@js.enum]) | `U16 of ([`L_n_16[@js 16]] [@js.enum]) | `U17 of ([`L_n_17[@js 17]] [@js.enum]) | `U18 of ([`L_n_18[@js 18]] [@js.enum]) | `U19 of ([`L_n_19[@js 19]] [@js.enum]) | `U20 of ([`L_n_20[@js 20]] [@js.enum]) | `U21 of ([`L_n_21[@js 21]] [@js.enum])] [@js.union]) -> unit [@@js.set "minimumSignificantDigits"]
  
  (** The maximum number of significant digits to use. Possible values are from 1 to 21; the default is 21. *)
  val get_maximumSignificantDigits: 'tags this -> ([`L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_21[@js 21] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) [@@js.get "maximumSignificantDigits"]
  
  (** The maximum number of significant digits to use. Possible values are from 1 to 21; the default is 21. *)
  val set_maximumSignificantDigits: 'tags this -> ([`U1 of ([`L_n_1[@js 1]] [@js.enum]) | `U2 of ([`L_n_2[@js 2]] [@js.enum]) | `U3 of ([`L_n_3[@js 3]] [@js.enum]) | `U4 of ([`L_n_4[@js 4]] [@js.enum]) | `U5 of ([`L_n_5[@js 5]] [@js.enum]) | `U6 of ([`L_n_6[@js 6]] [@js.enum]) | `U7 of ([`L_n_7[@js 7]] [@js.enum]) | `U8 of ([`L_n_8[@js 8]] [@js.enum]) | `U9 of ([`L_n_9[@js 9]] [@js.enum]) | `U10 of ([`L_n_10[@js 10]] [@js.enum]) | `U11 of ([`L_n_11[@js 11]] [@js.enum]) | `U12 of ([`L_n_12[@js 12]] [@js.enum]) | `U13 of ([`L_n_13[@js 13]] [@js.enum]) | `U14 of ([`L_n_14[@js 14]] [@js.enum]) | `U15 of ([`L_n_15[@js 15]] [@js.enum]) | `U16 of ([`L_n_16[@js 16]] [@js.enum]) | `U17 of ([`L_n_17[@js 17]] [@js.enum]) | `U18 of ([`L_n_18[@js 18]] [@js.enum]) | `U19 of ([`L_n_19[@js 19]] [@js.enum]) | `U20 of ([`L_n_20[@js 20]] [@js.enum]) | `U21 of ([`L_n_21[@js 21]] [@js.enum])] [@js.union]) -> unit [@@js.set "maximumSignificantDigits"]
  
  (**
    The formatting that should be displayed for the number, the defaults is "standard"
    
        "standard" plain number formatting
    
        "scientific" return the order-of-magnitude for formatted number.
    
        "engineering" return the exponent of ten when divisible by three
    
        "compact" string representing exponent, defaults is using the "short" form
  *)
  val get_notation: 'tags this -> string [@@js.get "notation"]
  
  (**
    The formatting that should be displayed for the number, the defaults is "standard"
    
        "standard" plain number formatting
    
        "scientific" return the order-of-magnitude for formatted number.
    
        "engineering" return the exponent of ten when divisible by three
    
        "compact" string representing exponent, defaults is using the "short" form
  *)
  val set_notation: 'tags this -> string -> unit [@@js.set "notation"]
  
  (** used only when notation is "compact" *)
  val get_compactDisplay: 'tags this -> string [@@js.get "compactDisplay"]
  
  (** used only when notation is "compact" *)
  val set_compactDisplay: 'tags this -> string -> unit [@@js.set "compactDisplay"]
  val create: localeMatcher:string -> style:string -> numberingSystem:string -> unit:string -> unitDisplay:string -> currency:string -> currencyDisplay:string -> useGrouping:bool -> minimumIntegerDigits:([`L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_21[@js 21] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) -> minimumFractionDigits:([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) -> maximumFractionDigits:([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) -> minimumSignificantDigits:([`L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_21[@js 21] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) -> maximumSignificantDigits:([`L_n_1[@js 1] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_2[@js 2] | `L_n_20[@js 20] | `L_n_21[@js 21] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9]] [@js.enum]) -> notation:string -> compactDisplay:string -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2020 *)
module[@js.scope "BigInt"] BigInt : sig
  type t = [`BigInt] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BigInt]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BigInt]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `BigInt ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Returns a string representation of an object.
    @param radix Specifies a radix for converting numeric values to strings.
  *)
  val toString: 'tags this -> ?radix:float -> unit -> string [@@js.call "toString"]
  
  (** Returns a string representation appropriate to the host environment's current locale. *)
  val toLocaleString: 'tags this -> ?locales:string -> ?options:BigIntToLocaleStringOptions.t -> unit -> string [@@js.call "toLocaleString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> bigint [@@js.call "valueOf"]
  (* [Symbol.toStringTag]: unit -> ([`L_s2_BigInt[@js "BigInt"]] [@js.enum]) *)
  val invoke: ([`U1 of bigint | `U2 of bool | `U3 of float | `U4 of string] [@js.union]) -> bigint [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  
  (**
    Interprets the low bits of a BigInt as a 2's-complement signed integer.
    All higher bits are discarded.
    @param bits The number of low bits to use
    @param int The BigInt whose bits to extract
  *)
  val asIntN: bits:float -> int:bigint -> bigint [@@js.global "asIntN"]
  
  (**
    Interprets the low bits of a BigInt as an unsigned integer.
    All higher bits are discarded.
    @param bits The number of low bits to use
    @param int The BigInt whose bits to extract
  *)
  val asUintN: bits:float -> int:bigint -> bigint [@@js.global "asUintN"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Uint8Array"] Uint8Array : sig
  type t = [`Uint8Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Uint8Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Uint8Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Uint8Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s18_Uint8Array[@js "Uint8Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Uint8Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Uint32Array"] Uint32Array : sig
  type t = [`Uint32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Uint32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Uint32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Uint32Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s17_Uint32Array[@js "Uint32Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Uint32Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Uint16Array"] Uint16Array : sig
  type t = [`Uint16Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Uint16Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Uint16Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Uint16Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s16_Uint16Array[@js "Uint16Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Uint16Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Int8Array"] Int8Array : sig
  type t = [`Int8Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Int8Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Int8Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Int8Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s10_Int8Array[@js "Int8Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Int8Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Int32Array"] Int32Array : sig
  type t = [`Int32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Int32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Int32Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Int32Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s9_Int32Array[@js "Int32Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Int32Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module[@js.scope "Int16Array"] Int16Array : sig
  type t = [`Int16Array | float ArrayLike.tags_1 | float IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Int16Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Int16Array | float ArrayLike.tags_1 | float IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Int16Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> float option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.toStringTag]: unit -> ([`L_s8_Int16Array[@js "Int16Array"]] [@js.enum]) *)
  (* [Symbol.iterator]: unit -> float IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an array of key, value pairs for every entry in the array
  *)
  val entries: 'tags this -> (float * float) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an list of keys in the array
  *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an list of values in the array
  *)
  val values: 'tags this -> float IterableIterator.t [@@js.call "values"]
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:float -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight'': 'tags this -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in an Array. *)
  val reverse: 'tags this -> t [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:float ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'tags this -> ?compareFn:(a:float -> b:float -> float) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new Int16Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of an array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  val get: 'tags this -> float -> float [@@js.index_get]
  val set: 'tags this -> float -> float -> unit [@@js.index_set]
  
  (** language version: ES2017 *)
  val create: unit -> t [@@js.create]
  
  (** language version: ES2015 *)
  val create': float Iterable.t -> t [@@js.create]
  
  (**
    language version: ES2015
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: arrayLike:float Iterable.t -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create'': float -> t [@@js.create]
  val create''': ([`U1 of float ArrayLike.t | `U2 of ArrayBufferLike.t] [@js.union]) -> t [@@js.create]
  val create'''': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (float list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from': float ArrayLike.t -> t [@@js.global "from"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from'': arrayLike:'T ArrayLike.t -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2020 *)
module[@js.scope "BigUint64Array"] BigUint64Array : sig
  type t = [`BigUint64Array | bigint ArrayLike.tags_1 | bigint IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BigUint64Array | bigint ArrayLike.tags_1 | bigint IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BigUint64Array | bigint ArrayLike.tags_1 | bigint IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `BigUint64Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (** Yields index, value pairs for every entry in the array. *)
  val entries: 'tags this -> (float * bigint) IterableIterator.t [@@js.call "entries"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns false,
    or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:bigint -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bigint option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:bigint -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:bigint -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (** Yields each index in the array. *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:bigint -> index:float -> array:t -> bigint) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in the array. *)
  val reverse: 'tags this -> 'tags this [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:bigint ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls the
    predicate function for each element in the array until the predicate returns true, or until
    the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts the array.
    @param compareFn The function used to determine the order of the elements. If omitted, the elements are sorted in ascending order.
  *)
  val sort: 'tags this -> ?compareFn:(a:bigint -> b:bigint -> ([`U1 of float | `U2 of bigint] [@js.union])) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new BigUint64Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts the array to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of the array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  
  (** Yields each value in the array. *)
  val values: 'tags this -> bigint IterableIterator.t [@@js.call "values"]
  (* [Symbol.iterator]: unit -> bigint IterableIterator.t *)
  (* [Symbol.toStringTag]: unit -> ([`L_s4_BigUint64Array[@js "BigUint64Array"]] [@js.enum]) *)
  val get: 'tags this -> float -> bigint [@@js.index_get]
  val set: 'tags this -> float -> bigint -> unit [@@js.index_set]
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> bigint option [@@js.call "at"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?length:float -> unit -> t [@@js.create]
  val create': bigint Iterable.t -> t [@@js.create]
  val create'': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (bigint list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: bigint ArrayLike.t -> t [@@js.global "from"]
  
  (** Creates an array from an array-like or iterable object. *)
  val from': arrayLike:'U ArrayLike.t -> mapfn:(v:'U -> k:float -> bigint) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2020 *)
module[@js.scope "BigInt64Array"] BigInt64Array : sig
  type t = [`BigInt64Array | bigint ArrayLike.tags_1 | bigint IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BigInt64Array | bigint ArrayLike.tags_1 | bigint IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BigInt64Array | bigint ArrayLike.tags_1 | bigint IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `BigInt64Array ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: 'tags this -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: 'tags this -> target:float -> start:float -> ?end_:float -> unit -> 'tags this [@@js.call "copyWithin"]
  
  (** Yields index, value pairs for every entry in the array. *)
  val entries: 'tags this -> (float * bigint) IterableIterator.t [@@js.call "entries"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns false,
    or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: 'tags this -> value:bigint -> ?start:float -> ?end_:float -> unit -> 'tags this [@@js.call "fill"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bigint option [@@js.call "find"]
  
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'tags this -> callbackfn:(value:bigint -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: 'tags this -> searchElement:bigint -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: 'tags this -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'tags this -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (** Yields each index in the array. *)
  val keys: 'tags this -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: 'tags this -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (** The length of the array. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'tags this -> callbackfn:(value:bigint -> index:float -> array:t -> bigint) -> ?thisArg:any -> unit -> t [@@js.call "map"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce: 'tags this -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the
    callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduce': 'tags this -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an
    argument instead of an array value.
  *)
  val reduceRight: 'tags this -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls
    the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start
    the accumulation. The first call to the callbackfn function provides this value as an argument
    instead of an array value.
  *)
  val reduceRight': 'tags this -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  
  (** Reverses the elements in the array. *)
  val reverse: 'tags this -> 'tags this [@@js.call "reverse"]
  
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: 'tags this -> array:bigint ArrayLike.t -> ?offset:float -> unit -> unit [@@js.call "set"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array.
  *)
  val slice: 'tags this -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls the
    predicate function for each element in the array until the predicate returns true, or until
    the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'tags this -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Sorts the array.
    @param compareFn The function used to determine the order of the elements. If omitted, the elements are sorted in ascending order.
  *)
  val sort: 'tags this -> ?compareFn:(a:bigint -> b:bigint -> ([`U1 of float | `U2 of bigint] [@js.union])) -> unit -> 'tags this [@@js.call "sort"]
  
  (**
    Gets a new BigInt64Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: 'tags this -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  
  (** Converts the array to a string by using the current locale. *)
  val toLocaleString: 'tags this -> string [@@js.call "toLocaleString"]
  
  (** Returns a string representation of the array. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  
  (** Returns the primitive value of the specified object. *)
  val valueOf: 'tags this -> t [@@js.call "valueOf"]
  
  (** Yields each value in the array. *)
  val values: 'tags this -> bigint IterableIterator.t [@@js.call "values"]
  (* [Symbol.iterator]: unit -> bigint IterableIterator.t *)
  (* [Symbol.toStringTag]: unit -> ([`L_s3_BigInt64Array[@js "BigInt64Array"]] [@js.enum]) *)
  val get: 'tags this -> float -> bigint [@@js.index_get]
  val set: 'tags this -> float -> bigint -> unit [@@js.index_set]
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: 'tags this -> index:float -> bigint option [@@js.call "at"]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?length:float -> unit -> t [@@js.create]
  val create': bigint Iterable.t -> t [@@js.create]
  val create'': buffer:ArrayBufferLike.t -> ?byteOffset:float -> ?length:float -> unit -> t [@@js.create]
  
  (** The size in bytes of each element in the array. *)
  val bytes_per_element: unit -> float [@@js.get "BYTES_PER_ELEMENT"]
  
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (bigint list [@js.variadic]) -> t [@@js.global "of"]
  
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from: bigint ArrayLike.t -> t [@@js.global "from"]
  
  (** Creates an array from an array-like or iterable object. *)
  val from': arrayLike:'U ArrayLike.t -> mapfn:(v:'U -> k:float -> bigint) -> ?thisArg:any -> unit -> t [@@js.global "from"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end
module[@js.scope "Atomics"] Atomics : sig
  
  (**
    language version: ES2020
    Adds a value to the value at the given position in the array, returning the original value.
    Until this atomic operation completes, any other read or write operation against the array
    will block.
  *)
  val add: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> value:bigint -> bigint [@@js.global "add"]
  
  (**
    language version: ES2020
    Stores the bitwise AND of a value with the value at the given position in the array,
    returning the original value. Until this atomic operation completes, any other read or
    write operation against the array will block.
  *)
  val and_: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> value:bigint -> bigint [@@js.global "and"]
  
  (**
    language version: ES2020
    Replaces the value at the given position in the array if the original value equals the given
    expected value, returning the original value. Until this atomic operation completes, any
    other read or write operation against the array will block.
  *)
  val compareExchange: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> expectedValue:bigint -> replacementValue:bigint -> bigint [@@js.global "compareExchange"]
  
  (**
    language version: ES2020
    Replaces the value at the given position in the array, returning the original value. Until
    this atomic operation completes, any other read or write operation against the array will
    block.
  *)
  val exchange: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> value:bigint -> bigint [@@js.global "exchange"]
  
  (**
    language version: ES2020
    Returns the value at the given position in the array. Until this atomic operation completes,
    any other read or write operation against the array will block.
  *)
  val load: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> bigint [@@js.global "load"]
  
  (**
    language version: ES2020
    Stores the bitwise OR of a value with the value at the given position in the array,
    returning the original value. Until this atomic operation completes, any other read or write
    operation against the array will block.
  *)
  val or_: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> value:bigint -> bigint [@@js.global "or"]
  
  (**
    language version: ES2020
    Stores a value at the given position in the array, returning the new value. Until this
    atomic operation completes, any other read or write operation against the array will block.
  *)
  val store: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> value:bigint -> bigint [@@js.global "store"]
  
  (**
    language version: ES2020
    Subtracts a value from the value at the given position in the array, returning the original
    value. Until this atomic operation completes, any other read or write operation against the
    array will block.
  *)
  val sub: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> value:bigint -> bigint [@@js.global "sub"]
  
  (**
    language version: ES2020
    If the value at the given position in the array is equal to the provided value, the current
    agent is put to sleep causing execution to suspend until the timeout expires (returning
    `"timed-out"`) or until the agent is awoken (returning `"ok"`); otherwise, returns
    `"not-equal"`.
  *)
  val wait: typedArray:BigInt64Array.t -> index:float -> value:bigint -> ?timeout:float -> unit -> ([`L_s71_not_equal[@js "not-equal"] | `L_s74_ok[@js "ok"] | `L_s94_timed_out[@js "timed-out"]] [@js.enum]) [@@js.global "wait"]
  
  (**
    language version: ES2020
    Wakes up sleeping agents that are waiting on the given index of the array, returning the
    number of agents that were awoken.
    @param typedArray A shared BigInt64Array.
    @param index The position in the typedArray to wake up on.
    @param count The number of sleeping agents to notify. Defaults to +Infinity.
  *)
  val notify: typedArray:BigInt64Array.t -> index:float -> ?count:float -> unit -> float [@@js.global "notify"]
  
  (**
    language version: ES2020
    Stores the bitwise XOR of a value with the value at the given position in the array,
    returning the original value. Until this atomic operation completes, any other read or write
    operation against the array will block.
  *)
  val xor: typedArray:([`U1 of BigInt64Array.t | `U2 of BigUint64Array.t] [@js.union]) -> index:float -> value:bigint -> bigint [@@js.global "xor"]
  
  (**
    Adds a value to the value at the given position in the array, returning the original value.
    Until this atomic operation completes, any other read or write operation against the array
    will block.
  *)
  val add': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> value:float -> float [@@js.global "add"]
  
  (**
    Stores the bitwise AND of a value with the value at the given position in the array,
    returning the original value. Until this atomic operation completes, any other read or
    write operation against the array will block.
  *)
  val and_': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> value:float -> float [@@js.global "and"]
  
  (**
    Replaces the value at the given position in the array if the original value equals the given
    expected value, returning the original value. Until this atomic operation completes, any
    other read or write operation against the array will block.
  *)
  val compareExchange': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> expectedValue:float -> replacementValue:float -> float [@@js.global "compareExchange"]
  
  (**
    Replaces the value at the given position in the array, returning the original value. Until
    this atomic operation completes, any other read or write operation against the array will
    block.
  *)
  val exchange': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> value:float -> float [@@js.global "exchange"]
  
  (**
    Returns a value indicating whether high-performance algorithms can use atomic operations
    (`true`) or must use locks (`false`) for the given number of bytes-per-element of a typed
    array.
  *)
  val isLockFree: float -> bool [@@js.global "isLockFree"]
  
  (**
    Returns the value at the given position in the array. Until this atomic operation completes,
    any other read or write operation against the array will block.
  *)
  val load': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> float [@@js.global "load"]
  
  (**
    Stores the bitwise OR of a value with the value at the given position in the array,
    returning the original value. Until this atomic operation completes, any other read or write
    operation against the array will block.
  *)
  val or_': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> value:float -> float [@@js.global "or"]
  
  (**
    Stores a value at the given position in the array, returning the new value. Until this
    atomic operation completes, any other read or write operation against the array will block.
  *)
  val store': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> value:float -> float [@@js.global "store"]
  
  (**
    Subtracts a value from the value at the given position in the array, returning the original
    value. Until this atomic operation completes, any other read or write operation against the
    array will block.
  *)
  val sub': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> value:float -> float [@@js.global "sub"]
  
  (**
    If the value at the given position in the array is equal to the provided value, the current
    agent is put to sleep causing execution to suspend until the timeout expires (returning
    `"timed-out"`) or until the agent is awoken (returning `"ok"`); otherwise, returns
    `"not-equal"`.
  *)
  val wait': typedArray:Int32Array.t -> index:float -> value:float -> ?timeout:float -> unit -> ([`L_s71_not_equal[@js "not-equal"] | `L_s74_ok[@js "ok"] | `L_s94_timed_out[@js "timed-out"]] [@js.enum]) [@@js.global "wait"]
  
  (**
    Wakes up sleeping agents that are waiting on the given index of the array, returning the
    number of agents that were awoken.
    @param typedArray A shared Int32Array.
    @param index The position in the typedArray to wake up on.
    @param count The number of sleeping agents to notify. Defaults to +Infinity.
  *)
  val notify': typedArray:Int32Array.t -> index:float -> ?count:float -> unit -> float [@@js.global "notify"]
  
  (**
    Stores the bitwise XOR of a value with the value at the given position in the array,
    returning the original value. Until this atomic operation completes, any other read or write
    operation against the array will block.
  *)
  val xor': typedArray:([`U1 of Int8Array.t | `U2 of Uint8Array.t | `U3 of Int16Array.t | `U4 of Uint16Array.t | `U5 of Int32Array.t | `U6 of Uint32Array.t] [@js.union]) -> index:float -> value:float -> float [@@js.global "xor"]
end

(** language version: ES2020 *)
module PromiseRejectedResult : sig
  type t = [`PromiseRejectedResult] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PromiseRejectedResult]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PromiseRejectedResult]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PromiseRejectedResult ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_status: 'tags this -> ([`L_s84_rejected[@js "rejected"]] [@js.enum]) [@@js.get "status"]
  val set_status: 'tags this -> ([`L_s84_rejected[@js "rejected"]] [@js.enum]) -> unit [@@js.set "status"]
  val get_reason: 'tags this -> any [@@js.get "reason"]
  val set_reason: 'tags this -> any -> unit [@@js.set "reason"]
  val create: status:([`L_s84_rejected[@js "rejected"]] [@js.enum]) -> reason:any -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2020 *)
module PromiseFulfilledResult : sig
  type 'T t = [`PromiseFulfilledResult of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`PromiseFulfilledResult of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`PromiseFulfilledResult of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `PromiseFulfilledResult of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_status: ('tags, 'T) this -> ([`L_s43_fulfilled[@js "fulfilled"]] [@js.enum]) [@@js.get "status"]
  val set_status: ('tags, 'T) this -> ([`L_s43_fulfilled[@js "fulfilled"]] [@js.enum]) -> unit [@@js.set "status"]
  val get_value: ('tags, 'T) this -> 'T [@@js.get "value"]
  val set_value: ('tags, 'T) this -> 'T -> unit [@@js.set "value"]
  val create: status:([`L_s43_fulfilled[@js "fulfilled"]] [@js.enum]) -> value:'T -> unit -> 'T t [@@js.builder]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2020 *)
module PromiseSettledResult : sig
  type 'T t = ([`U_s43_fulfilled of 'T PromiseFulfilledResult.t [@js "fulfilled"] | `U_s84_rejected of PromiseRejectedResult.t [@js "rejected"]] [@js.union on_field "status"])
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module Awaited : sig
  type 'T t = (* FIXME: unknown type 'T extends null | undefined ? T : // special case for `null | undefined` when not in `--strictNullChecks` mode
          T extends object & { then(onfulfilled: infer F): any } ? // `await` only unwraps object types with a callable `then`. Non-object types are not unwrapped
              F extends ((value: infer V, ...args: any) => any) ? // if the argument to `then` is callable, extracts the first argument
                  Awaited<V> : // recursively unwrap the value
                  never : // the argument to `then` was not callable
          T' *)any
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end


module[@js.scope "Promise"] Promise : sig
  type 'T t = [`Promise of 'T | 'T PromiseLike.tags_1] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`Promise of 'T | 'T PromiseLike.tags_1]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`Promise of 'T | 'T PromiseLike.tags_1]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `Promise of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  
  (**
    language version: ES2018
    Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
    resolved value cannot be modified from the callback.
    @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
    @return A Promise for the completion of the callback.
  *)
  val finally: ('tags, 'T) this -> ?onfinally:([`Null | `Undefined of undefined | `U1 of (unit -> unit)] [@js.union]) -> unit -> 'T t [@@js.call "finally"]
  (* [Symbol.toStringTag]: unit -> string *)
  
  (**
    Attaches callbacks for the resolution and/or rejection of the Promise.
    @param onfulfilled The callback to execute when the Promise is resolved.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of which ever callback is executed.
  *)
  val then_: ('tags, 'T) this -> ?onfulfilled:([`Null | `Undefined of undefined | `U1 of ('T -> ([`U1 of 'TResult1 | `U2 of 'TResult1 PromiseLike.t] [@js.union]))] [@js.union]) -> ?onrejected:([`Null | `Undefined of undefined | `U1 of (any -> ([`U1 of 'TResult2 | `U2 of 'TResult2 PromiseLike.t] [@js.union]))] [@js.union]) -> unit -> ('TResult1, 'TResult2) union2 t [@@js.call "then"]
  
  (**
    Attaches a callback for only the rejection of the Promise.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of the callback.
  *)
  val catch: ('tags, 'T) this -> ?onrejected:([`Null | `Undefined of undefined | `U1 of (any -> ([`U1 of 'TResult | `U2 of 'TResult PromiseLike.t] [@js.union]))] [@js.union]) -> unit -> ('T, 'TResult) union2 t [@@js.call "catch"]
  
  (**
    language version: ESNext
    The any function returns a promise that is fulfilled by the first given promise to be fulfilled, or rejected with an AggregateError containing an array of rejection reasons if all of the given promises are rejected. It resolves all elements of the passed iterable to promises as it runs this algorithm.
    @param values An array or iterable of Promises.
    @return A new Promise.
  *)
  val any: ([`U1 of ([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) list | `U2 of ([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) Iterable.t] [@js.union]) -> 'T t [@@js.global "any"]
  
  (**
    language version: ESNext
    The any function returns a promise that is fulfilled by the first given promise to be fulfilled, or rejected with an AggregateError containing an array of rejection reasons if all of the given promises are rejected. It resolves all elements of the passed iterable to promises as it runs this algorithm.
    @param values An array or iterable of Promises.
    @return A new Promise.
  *)
  val any': 'T -> (* FIXME: unknown type 'T[number]' *)any Awaited.t t [@@js.global "any"]
  
  (**
    language version: ESNext
    The any function returns a promise that is fulfilled by the first given promise to be fulfilled, or rejected with an AggregateError containing an array of rejection reasons if all of the given promises are rejected. It resolves all elements of the passed iterable to promises as it runs this algorithm.
    @param values An array or iterable of Promises.
    @return A new Promise.
  *)
  val any'': ([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) Iterable.t -> 'T Awaited.t t [@@js.global "any"]
  
  (**
    language version: ES2020
    Creates a Promise that is resolved with an array of results when all
    of the provided Promises resolve or reject.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val allSettled: 'T -> (* FIXME: unknown type '{ -readonly [P in keyof T]: PromiseSettledResult<Awaited<T[P]>> }' *)any t [@@js.global "allSettled"]
  
  (**
    language version: ES2020
    Creates a Promise that is resolved with an array of results when all
    of the provided Promises resolve or reject.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val allSettled': ([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) Iterable.t -> 'T Awaited.t PromiseSettledResult.t list t [@@js.global "allSettled"]
  
  (** A reference to the prototype. *)
  val prototype: unit -> any t [@@js.get "prototype"]
  
  (**
    Creates a new Promise.
    @param executor A callback used to initialize the promise. This callback is passed two arguments:
    a resolve callback used to resolve the promise with a value or the result of another promise,
    and a reject callback used to reject the promise with a provided reason or error.
  *)
  val create: (resolve:(([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) -> unit) -> reject:(?reason:any -> unit -> unit) -> unit) -> 'T t [@@js.create]
  
  (**
    Creates a Promise that is resolved with an array of results when all of the provided Promises
    resolve, or rejected when any Promise is rejected.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val all: 'T -> (* FIXME: unknown type '{ -readonly [P in keyof T]: Awaited<T[P]> }' *)any t [@@js.global "all"]
  
  (**
    Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
    or rejected.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val race: 'T -> (* FIXME: unknown type 'T[number]' *)any Awaited.t t [@@js.global "race"]
  
  (**
    Creates a new rejected promise for the provided reason.
    @param reason The reason the promise was rejected.
    @return A new rejected Promise.
  *)
  val reject: ?reason:any -> unit -> 'T t [@@js.global "reject"]
  
  (**
    Creates a new resolved promise.
    @return A resolved promise.
  *)
  val resolve: unit -> unit t [@@js.global "resolve"]
  
  (**
    Creates a new resolved promise for the provided value.
    @param value A promise.
    @return A promise whose internal state matches the provided promise.
  *)
  val resolve': ([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) -> 'T t [@@js.global "resolve"]
  
  (**
    Creates a Promise that is resolved with an array of results when all of the provided Promises
    resolve, or rejected when any Promise is rejected.
    @param values An iterable of Promises.
    @return A new Promise.
  *)
  val all': ([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) Iterable.t -> 'T Awaited.t list t [@@js.global "all"]
  
  (**
    Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
    or rejected.
    @param values An iterable of Promises.
    @return A new Promise.
  *)
  val race': ([`U1 of 'T | `U2 of 'T PromiseLike.t] [@js.union]) Iterable.t -> 'T Awaited.t t [@@js.global "race"]
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2018 *)
module AsyncIterator : sig
  type ('T, 'TReturn, 'TNext) t = [`AsyncIterator of ('T * 'TReturn * 'TNext)] intf [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
  type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t
  type ('T, 'TReturn) t_2 = ('T, 'TReturn, undefined) t
  type 'T t_1 = ('T, any, undefined) t
  [@@@js.stop]
  type ('T, 'TReturn, 'TNext) tags = [`AsyncIterator of ('T * 'TReturn * 'TNext)]
  type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
  type ('T, 'TReturn) tags_2 = ('T, 'TReturn, undefined) tags
  type 'T tags_1 = ('T, any, undefined) tags
  [@@@js.start]
  [@@@js.implem 
    type ('T, 'TReturn, 'TNext) tags = [`AsyncIterator of ('T * 'TReturn * 'TNext)]
    type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
    type ('T, 'TReturn) tags_2 = ('T, 'TReturn, undefined) tags
    type 'T tags_1 = ('T, any, undefined) tags
  ]
  type ('tags, 'T, 'TReturn, 'TNext) this = 'tags intf constraint 'tags = [> `AsyncIterator of ('T * 'TReturn * 'TNext) ]
  val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t
  val t_3_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t_3 -> Ojs.t
  val t_3_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t_3
  val t_2_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val next: ('tags, 'T, 'TReturn, 'TNext) this -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) IteratorResult.t Promise.t [@@js.call "next"]
  val return: ('tags, 'T, 'TReturn, 'TNext) this -> ?value:([`U1 of 'TReturn | `U2 of 'TReturn PromiseLike.t] [@js.union]) -> unit -> ('T, 'TReturn) IteratorResult.t Promise.t [@@js.call "return"]
  val throw: ('tags, 'T, 'TReturn, 'TNext) this -> ?e:any -> unit -> ('T, 'TReturn) IteratorResult.t Promise.t [@@js.call "throw"]
  val cast_from: ('tags, 'T, 'TReturn, 'TNext) this -> ('T, 'TReturn, 'TNext) t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2018 *)
module AsyncIterableIterator : sig
  type 'T t = [`AsyncIterableIterator of 'T | `AsyncIterator of ('T * any * undefined)] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`AsyncIterableIterator of 'T | `AsyncIterator of ('T * any * undefined)]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`AsyncIterableIterator of 'T | `AsyncIterator of ('T * any * undefined)]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `AsyncIterableIterator of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.asyncIterator]: unit -> 'T t *)
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2018 *)
module AsyncIterable : sig
  type 'T t = [`AsyncIterable of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`AsyncIterable of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`AsyncIterable of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `AsyncIterable of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (* [Symbol.asyncIterator]: unit -> 'T AsyncIterator.t_1 *)
  val cast_from: ('tags, 'T) this -> 'T t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2018 *)
module AsyncGenerator : sig
  type ('T, 'TReturn, 'TNext) t = [`AsyncGenerator of ('T * 'TReturn * 'TNext) | `AsyncIterator of ('T * 'TReturn * 'TNext)] intf [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
  type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t
  type ('T, 'TReturn) t_2 = ('T, 'TReturn, unknown) t
  type 'T t_1 = ('T, any, unknown) t
  type t_0 = (unknown, any, unknown) t
  [@@@js.stop]
  type ('T, 'TReturn, 'TNext) tags = [`AsyncGenerator of ('T * 'TReturn * 'TNext) | `AsyncIterator of ('T * 'TReturn * 'TNext)]
  type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
  type ('T, 'TReturn) tags_2 = ('T, 'TReturn, unknown) tags
  type 'T tags_1 = ('T, any, unknown) tags
  type tags_0 = (unknown, any, unknown) tags
  [@@@js.start]
  [@@@js.implem 
    type ('T, 'TReturn, 'TNext) tags = [`AsyncGenerator of ('T * 'TReturn * 'TNext) | `AsyncIterator of ('T * 'TReturn * 'TNext)]
    type ('T, 'TReturn, 'TNext) tags_3 = ('T, 'TReturn, 'TNext) tags
    type ('T, 'TReturn) tags_2 = ('T, 'TReturn, unknown) tags
    type 'T tags_1 = ('T, any, unknown) tags
    type tags_0 = (unknown, any, unknown) tags
  ]
  type ('tags, 'T, 'TReturn, 'TNext) this = 'tags intf constraint 'tags = [> `AsyncGenerator of ('T * 'TReturn * 'TNext) ]
  val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t
  val t_3_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t_3 -> Ojs.t
  val t_3_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t_3
  val t_2_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val next: ('tags, 'T, 'TReturn, 'TNext) this -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) IteratorResult.t Promise.t [@@js.call "next"]
  val return: ('tags, 'T, 'TReturn, 'TNext) this -> value:([`U1 of 'TReturn | `U2 of 'TReturn PromiseLike.t] [@js.union]) -> ('T, 'TReturn) IteratorResult.t Promise.t [@@js.call "return"]
  val throw: ('tags, 'T, 'TReturn, 'TNext) this -> e:any -> ('T, 'TReturn) IteratorResult.t Promise.t [@@js.call "throw"]
  (* [Symbol.asyncIterator]: unit -> ('T, 'TReturn, 'TNext) t *)
  val cast_from: ('tags, 'T, 'TReturn, 'TNext) this -> ('T, 'TReturn, 'TNext) t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2018 *)
module AsyncGeneratorFunction : sig
  type t = [`AsyncGeneratorFunction] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AsyncGeneratorFunction]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AsyncGeneratorFunction]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AsyncGeneratorFunction ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Creates a new AsyncGenerator object.
    @param args A list of arguments the function accepts.
  *)
  val create: 'tags this -> args:(any list [@js.variadic]) -> AsyncGenerator.t_0 [@@js.apply_newable]
  
  (**
    Creates a new AsyncGenerator object.
    @param args A list of arguments the function accepts.
  *)
  val apply: 'tags this -> args:(any list [@js.variadic]) -> AsyncGenerator.t_0 [@@js.apply]
  
  (** The length of the arguments. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (** Returns the name of the function. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (** A reference to the prototype. *)
  val get_prototype: 'tags this -> AsyncGenerator.t_0 [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ES2018 *)
module AsyncGeneratorFunctionConstructor : sig
  type t = [`AsyncGeneratorFunctionConstructor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AsyncGeneratorFunctionConstructor]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AsyncGeneratorFunctionConstructor]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AsyncGeneratorFunctionConstructor ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Creates a new AsyncGenerator function.
    @param args A list of arguments the function accepts.
  *)
  val create: 'tags this -> args:(string list [@js.variadic]) -> AsyncGeneratorFunction.t [@@js.apply_newable]
  
  (**
    Creates a new AsyncGenerator function.
    @param args A list of arguments the function accepts.
  *)
  val apply: 'tags this -> args:(string list [@js.variadic]) -> AsyncGeneratorFunction.t [@@js.apply]
  
  (** The length of the arguments. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (** Returns the name of the function. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (** A reference to the prototype. *)
  val get_prototype: 'tags this -> AsyncGeneratorFunction.t [@@js.get "prototype"]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module ArrayBufferView : sig
  type t = [`ArrayBufferView] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ArrayBufferView]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ArrayBufferView]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ArrayBufferView ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: 'tags this -> ArrayBufferLike.t [@@js.get "buffer"]
  
  (** The ArrayBuffer instance referenced by the array. *)
  val set_buffer: 'tags this -> ArrayBufferLike.t -> unit [@@js.set "buffer"]
  
  (** The length in bytes of the array. *)
  val get_byteLength: 'tags this -> float [@@js.get "byteLength"]
  
  (** The length in bytes of the array. *)
  val set_byteLength: 'tags this -> float -> unit [@@js.set "byteLength"]
  
  (** The offset in bytes of the array. *)
  val get_byteOffset: 'tags this -> float [@@js.get "byteOffset"]
  
  (** The offset in bytes of the array. *)
  val set_byteOffset: 'tags this -> float -> unit [@@js.set "byteOffset"]
  val create: buffer:ArrayBufferLike.t -> byteLength:float -> byteOffset:float -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end


module ArrayBufferTypes : sig
  type t = [`ArrayBufferTypes] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ArrayBufferTypes]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ArrayBufferTypes]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ArrayBufferTypes ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** language version: ES2017 *)
  val get_SharedArrayBuffer: 'tags this -> SharedArrayBuffer.t [@@js.get "SharedArrayBuffer"]
  
  (** language version: ES2017 *)
  val set_SharedArrayBuffer: 'tags this -> SharedArrayBuffer.t -> unit [@@js.set "SharedArrayBuffer"]
  val get_ArrayBuffer: 'tags this -> ArrayBuffer.t [@@js.get "ArrayBuffer"]
  val set_ArrayBuffer: 'tags this -> ArrayBuffer.t -> unit [@@js.set "ArrayBuffer"]
  val create: sharedArrayBuffer:(SharedArrayBuffer.t[@js "SharedArrayBuffer"]) -> arrayBuffer:(ArrayBuffer.t[@js "ArrayBuffer"]) -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end

(** language version: ESNext *)
module[@js.scope "AggregateError"] AggregateError : sig
  type t = [`AggregateError | `Error] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AggregateError | `Error]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AggregateError | `Error]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AggregateError ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_errors: 'tags this -> any list [@@js.get "errors"]
  val set_errors: 'tags this -> any list -> unit [@@js.set "errors"]
  val get_errors': 'tags this -> any list [@@js.get "errors"]
  val set_errors': 'tags this -> any list -> unit [@@js.set "errors"]
  val create: errors:any Iterable.t -> ?message:string -> unit -> t [@@js.create]
  val invoke: errors:any Iterable.t -> ?message:string -> unit -> t [@@js.invoke]
  val prototype: unit -> t [@@js.get "prototype"]
  val create': errors:any Iterable.t -> ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.create]
  val invoke': errors:any Iterable.t -> ?message:string -> ?options:ErrorOptions.t -> unit -> t [@@js.invoke]
  val create'': errors:any Iterable.t -> ?message:string -> unit -> t [@@js.create]
  val invoke'': errors:any Iterable.t -> ?message:string -> unit -> t [@@js.invoke]
  val prototype': unit -> t [@@js.get "prototype"]
  val create''': errors:any list -> errors:any list -> unit -> t [@@js.builder]
  val cast_from: 'tags this -> t [@@js.custom let cast_from = Obj.magic]
end
module ReadonlyArray_Make (T : Ojs.T) : sig
  type 'T parent = 'T ReadonlyArray.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  
  (**
    language version: ES2019
    Calls a defined callback function on each element of an array. Then, flattens the result into
    a new array.
    This is identical to a map followed by flat with depth 1.
    @param callback A function that accepts up to three arguments. The flatMap method calls the
    callback function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callback function. If
    thisArg is omitted, undefined is used as the this value.
  *)
  val flatMap: t -> callback:(this:'This -> value:T.t -> index:float -> array:T.t list -> ([`U1 of 'U | `U2 of 'U parent] [@js.union])) -> ?thisArg:'This -> unit -> 'U list [@@js.call "flatMap"]
  
  (**
    language version: ES2019
    Returns a new array with all sub-array elements concatenated into it recursively up to the
    specified depth.
    @param depth The maximum recursion depth
  *)
  val flat: t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list [@@js.call "flat"]
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: t -> index:float -> T.t option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: t -> searchElement:T.t -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.iterator]: unit -> T.t IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an iterable of key, value pairs for every entry in the array
  *)
  val entries: t -> (float * T.t) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an iterable of keys in the array
  *)
  val keys: t -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an iterable of values in the array
  *)
  val values: t -> T.t IterableIterator.t [@@js.call "values"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(this:unit -> value:T.t -> index:float -> obj:T.t list -> bool) -> ?thisArg:any -> unit -> 'S option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
  *)
  val find': t -> predicate:(value:T.t -> index:float -> obj:T.t list -> unknown) -> ?thisArg:any -> unit -> T.t option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:T.t -> index:float -> obj:T.t list -> unknown) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (** Gets the length of the array. This is a number one higher than the highest element defined in an array. *)
  val get_length: t -> float [@@js.get "length"]
  
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  
  (** Returns a string representation of an array. The elements are converted to string using their toLocaleString methods. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  
  (**
    Combines two or more arrays.
    @param items Additional items to add to the end of array1.
  *)
  val concat: t -> items:(T.t ConcatArray.t list [@js.variadic]) -> T.t list [@@js.call "concat"]
  
  (**
    Combines two or more arrays.
    @param items Additional items to add to the end of array1.
  *)
  val concat': t -> items:(([`U1 of T.t | `U2 of T.t ConcatArray.t] [@js.union]) list [@js.variadic]) -> T.t list [@@js.call "concat"]
  
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> T.t list [@@js.call "slice"]
  
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at index 0.
  *)
  val indexOf: t -> searchElement:T.t -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Returns the index of the last occurrence of a specified value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at the last index in the array.
  *)
  val lastIndexOf: t -> searchElement:T.t -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:T.t -> index:float -> array:T.t list -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every': t -> predicate:(value:T.t -> index:float -> array:T.t list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:T.t -> index:float -> array:T.t list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:T.t -> index:float -> array:T.t list -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:T.t -> index:float -> array:T.t list -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "map"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:T.t -> index:float -> array:T.t list -> bool) -> ?thisArg:any -> unit -> 'S list [@@js.call "filter"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter': t -> predicate:(value:T.t -> index:float -> array:T.t list -> unknown) -> ?thisArg:any -> unit -> T.t list [@@js.call "filter"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce: t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> T.t [@@js.call "reduce"]
  
  (** Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduce': t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> initialValue:T.t -> T.t [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:T.t -> currentIndex:float -> array:T.t list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight: t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> T.t [@@js.call "reduceRight"]
  
  (** Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduceRight': t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> initialValue:T.t -> T.t [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:T.t -> currentIndex:float -> array:T.t list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  val get: t -> float -> T.t [@@js.index_get]
end
module ConcatArray_Make (T : Ojs.T) : sig
  type 'T parent = 'T ConcatArray.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val get_length: t -> float [@@js.get "length"]
  val get: t -> float -> T.t [@@js.index_get]
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  val slice: t -> ?start:float -> ?end_:float -> unit -> T.t list [@@js.call "slice"]
end
module[@js.scope "Array"] Array_Make (T : Ojs.T) : sig
  module AnonymousInterface0 : sig
    type t = private Ojs.t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val get_copyWithin: t -> bool [@@js.get "copyWithin"]
    val set_copyWithin: t -> bool -> unit [@@js.set "copyWithin"]
    val get_entries: t -> bool [@@js.get "entries"]
    val set_entries: t -> bool -> unit [@@js.set "entries"]
    val get_fill: t -> bool [@@js.get "fill"]
    val set_fill: t -> bool -> unit [@@js.set "fill"]
    val get_find: t -> bool [@@js.get "find"]
    val set_find: t -> bool -> unit [@@js.set "find"]
    val get_findIndex: t -> bool [@@js.get "findIndex"]
    val set_findIndex: t -> bool -> unit [@@js.set "findIndex"]
    val get_keys: t -> bool [@@js.get "keys"]
    val set_keys: t -> bool -> unit [@@js.set "keys"]
    val get_values: t -> bool [@@js.get "values"]
    val set_values: t -> bool -> unit [@@js.set "values"]
    val create: copyWithin:bool -> entries:bool -> fill:bool -> find:bool -> findIndex:bool -> keys:bool -> values:bool -> unit -> t [@@js.builder]
  end
  type 'T parent = 'T Array.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  
  (**
    language version: ES2019
    Calls a defined callback function on each element of an array. Then, flattens the result into
    a new array.
    This is identical to a map followed by flat with depth 1.
    @param callback A function that accepts up to three arguments. The flatMap method calls the
    callback function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callback function. If
    thisArg is omitted, undefined is used as the this value.
  *)
  val flatMap: t -> callback:(this:'This -> value:T.t -> index:float -> array:T.t list -> ([`U1 of 'U | `U2 of 'U ReadonlyArray.t] [@js.union])) -> ?thisArg:'This -> unit -> 'U list [@@js.call "flatMap"]
  
  (**
    language version: ES2019
    Returns a new array with all sub-array elements concatenated into it recursively up to the
    specified depth.
    @param depth The maximum recursion depth
  *)
  val flat: t -> this:'A -> ?depth:'D -> unit -> ('A, 'D) FlatArray.t list [@@js.call "flat"]
  
  (**
    language version: ESNext
    Returns the item located at the specified index.
    @param index The zero-based index of the desired code unit. A negative index will count back from the last item.
  *)
  val at: t -> index:float -> T.t option [@@js.call "at"]
  
  (**
    language version: ES2016
    Determines whether an array includes a certain element, returning true or false as appropriate.
    @param searchElement The element to search for.
    @param fromIndex The position in this array at which to begin searching for searchElement.
  *)
  val includes: t -> searchElement:T.t -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
  (* [Symbol.unscopables]: unit -> AnonymousInterface0.t *)
  (* [Symbol.iterator]: unit -> T.t IterableIterator.t *)
  
  (**
    language version: ES2015
    Returns an iterable of key, value pairs for every entry in the array
  *)
  val entries: t -> (float * T.t) IterableIterator.t [@@js.call "entries"]
  
  (**
    language version: ES2015
    Returns an iterable of keys in the array
  *)
  val keys: t -> float IterableIterator.t [@@js.call "keys"]
  
  (**
    language version: ES2015
    Returns an iterable of values in the array
  *)
  val values: t -> T.t IterableIterator.t [@@js.call "values"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(this:unit -> value:T.t -> index:float -> obj:T.t list -> bool) -> ?thisArg:any -> unit -> 'S option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
  *)
  val find': t -> predicate:(value:T.t -> index:float -> obj:T.t list -> unknown) -> ?thisArg:any -> unit -> T.t option [@@js.call "find"]
  
  (**
    language version: ES2015
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:T.t -> index:float -> obj:T.t list -> unknown) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  
  (**
    language version: ES2015
    Changes all array elements from `start` to `end` index to a static `value` and returns the modified array
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:T.t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  
  (**
    language version: ES2015
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  
  (** Gets or sets the length of the array. This is a number one higher than the highest index in the array. *)
  val get_length: t -> float [@@js.get "length"]
  
  (** Gets or sets the length of the array. This is a number one higher than the highest index in the array. *)
  val set_length: t -> float -> unit [@@js.set "length"]
  
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  
  (** Returns a string representation of an array. The elements are converted to string using their toLocaleString methods. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  
  (**
    Removes the last element from an array and returns it.
    If the array is empty, undefined is returned and the array is not modified.
  *)
  val pop: t -> T.t option [@@js.call "pop"]
  
  (**
    Appends new elements to the end of an array, and returns the new length of the array.
    @param items New elements to add to the array.
  *)
  val push: t -> items:(T.t list [@js.variadic]) -> float [@@js.call "push"]
  
  (**
    Combines two or more arrays.
    This method returns a new array without modifying any existing arrays.
    @param items Additional arrays and/or items to add to the end of the array.
  *)
  val concat: t -> items:(T.t ConcatArray.t list [@js.variadic]) -> T.t list [@@js.call "concat"]
  
  (**
    Combines two or more arrays.
    This method returns a new array without modifying any existing arrays.
    @param items Additional arrays and/or items to add to the end of the array.
  *)
  val concat': t -> items:(([`U1 of T.t | `U2 of T.t ConcatArray.t] [@js.union]) list [@js.variadic]) -> T.t list [@@js.call "concat"]
  
  (**
    Adds all the elements of an array into a string, separated by the specified separator string.
    @param separator A string used to separate one element of the array from the next in the resulting string. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  
  (**
    Reverses the elements in an array in place.
    This method mutates the array and returns a reference to the same array.
  *)
  val reverse: t -> T.t list [@@js.call "reverse"]
  
  (**
    Removes the first element from an array and returns it.
    If the array is empty, undefined is returned and the array is not modified.
  *)
  val shift: t -> T.t option [@@js.call "shift"]
  
  (**
    Returns a copy of a section of an array.
    For both start and end, a negative index can be used to indicate an offset from the end of the array.
    For example, -2 refers to the second to last element of the array.
    @param start The beginning index of the specified portion of the array.
    If start is undefined, then the slice begins at index 0.
    @param end The end index of the specified portion of the array. This is exclusive of the element at the index 'end'.
    If end is undefined, then the slice extends to the end of the array.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> T.t list [@@js.call "slice"]
  
  (**
    Sorts an array in place.
    This method mutates the array and returns a reference to the same array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if the first argument is less than the second argument, zero if they're equal, and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:T.t -> b:T.t -> float) -> unit -> t [@@js.call "sort"]
  
  (**
    Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
    @param start The zero-based location in the array from which to start removing elements.
    @param deleteCount The number of elements to remove.
    @return An array containing the elements that were deleted.
  *)
  val splice: t -> start:float -> ?deleteCount:float -> unit -> T.t list [@@js.call "splice"]
  
  (**
    Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
    @param start The zero-based location in the array from which to start removing elements.
    @param deleteCount The number of elements to remove.
    @param items Elements to insert into the array in place of the deleted elements.
    @return An array containing the elements that were deleted.
  *)
  val splice': t -> start:float -> deleteCount:float -> items:(T.t list [@js.variadic]) -> T.t list [@@js.call "splice"]
  
  (**
    Inserts new elements at the start of an array, and returns the new length of the array.
    @param items Elements to insert at the start of the array.
  *)
  val unshift: t -> items:(T.t list [@js.variadic]) -> float [@@js.call "unshift"]
  
  (**
    Returns the index of the first occurrence of a value in an array, or -1 if it is not present.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at index 0.
  *)
  val indexOf: t -> searchElement:T.t -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  
  (**
    Returns the index of the last occurrence of a specified value in an array, or -1 if it is not present.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin searching backward. If fromIndex is omitted, the search starts at the last index in the array.
  *)
  val lastIndexOf: t -> searchElement:T.t -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:T.t -> index:float -> array:T.t list -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every': t -> predicate:(value:T.t -> index:float -> array:T.t list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:T.t -> index:float -> array:T.t list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:T.t -> index:float -> array:T.t list -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Calls a defined callback function on each element of an array, and returns an array that contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:T.t -> index:float -> array:T.t list -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "map"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:T.t -> index:float -> array:T.t list -> bool) -> ?thisArg:any -> unit -> 'S list [@@js.call "filter"]
  
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter': t -> predicate:(value:T.t -> index:float -> array:T.t list -> unknown) -> ?thisArg:any -> unit -> T.t list [@@js.call "filter"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce: t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> T.t [@@js.call "reduce"]
  
  (** Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduce': t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> initialValue:T.t -> T.t [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:T.t -> currentIndex:float -> array:T.t list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight: t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> T.t [@@js.call "reduceRight"]
  
  (** Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduceRight': t -> callbackfn:(previousValue:T.t -> currentValue:T.t -> currentIndex:float -> array:T.t list -> T.t) -> initialValue:T.t -> T.t [@@js.call "reduceRight"]
  
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:T.t -> currentIndex:float -> array:T.t list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  val get: t -> float -> T.t [@@js.index_get]
  val set: t -> float -> T.t -> unit [@@js.index_set]
  
  (**
    language version: ES2015
    Creates an array from an iterable object.
    @param iterable An iterable object to convert to an array.
  *)
  val from: ([`U1 of T.t Iterable.t | `U2 of T.t ArrayLike.t] [@js.union]) -> T.t list [@@js.global "from"]
  
  (**
    language version: ES2015
    Creates an array from an iterable object.
    @param iterable An iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': iterable:([`U1 of T.t Iterable.t | `U2 of T.t ArrayLike.t] [@js.union]) -> mapfn:(v:T.t -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.global "from"]
  
  (**
    language version: ES2015
    Creates an array from an array-like object.
    @param arrayLike An array-like object to convert to an array.
  *)
  val from'': T.t ArrayLike.t -> T.t list [@@js.global "from"]
  
  (**
    language version: ES2015
    Creates an array from an iterable object.
    @param arrayLike An array-like object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from''': arrayLike:T.t ArrayLike.t -> mapfn:(v:T.t -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.global "from"]
  
  (**
    language version: ES2015
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: (T.t list [@js.variadic]) -> T.t list [@@js.global "of"]
  val create: ?arrayLength:float -> unit -> any list [@@js.create]
  val create': float -> T.t list [@@js.create]
  val create'': (T.t list [@js.variadic]) -> T.t list [@@js.create]
  val invoke: ?arrayLength:float -> unit -> any list [@@js.invoke]
  val invoke': float -> T.t list [@@js.invoke]
  val invoke'': (T.t list [@js.variadic]) -> T.t list [@@js.invoke]
  val isArray: any -> bool [@@js.global "isArray"]
  val prototype: unit -> any list [@@js.get "prototype"]
end
module TypedPropertyDescriptor_Make (T : Ojs.T) : sig
  type 'T parent = 'T TypedPropertyDescriptor.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val get_enumerable: t -> bool [@@js.get "enumerable"]
  val set_enumerable: t -> bool -> unit [@@js.set "enumerable"]
  val get_configurable: t -> bool [@@js.get "configurable"]
  val set_configurable: t -> bool -> unit [@@js.set "configurable"]
  val get_writable: t -> bool [@@js.get "writable"]
  val set_writable: t -> bool -> unit [@@js.set "writable"]
  val get_value: t -> T.t [@@js.get "value"]
  val set_value: t -> T.t -> unit [@@js.set "value"]
  val get_: t -> T.t [@@js.call "get"]
  val set_: t -> value:T.t -> unit [@@js.call "set"]
end
module PromiseLike_Make (T : Ojs.T) : sig
  type 'T parent = 'T PromiseLike.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  
  (**
    Attaches callbacks for the resolution and/or rejection of the Promise.
    @param onfulfilled The callback to execute when the Promise is resolved.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of which ever callback is executed.
  *)
  val then_: t -> ?onfulfilled:([`Null | `Undefined of undefined | `U1 of (T.t -> ([`U1 of 'TResult1 | `U2 of 'TResult1 parent] [@js.union]))] [@js.union]) -> ?onrejected:([`Null | `Undefined of undefined | `U1 of (any -> ([`U1 of 'TResult2 | `U2 of 'TResult2 parent] [@js.union]))] [@js.union]) -> unit -> ('TResult1, 'TResult2) union2 parent [@@js.call "then"]
end
module ArrayLike_Make (T : Ojs.T) : sig
  type 'T parent = 'T ArrayLike.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val get_length: t -> float [@@js.get "length"]
  val get: t -> float -> T.t [@@js.index_get]
end
module[@js.scope "Map"] Map_Make (K : Ojs.T) (V : Ojs.T) : sig
  type ('K, 'V) parent = ('K, 'V) Map.t
  type t = (K.t, V.t) parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.toStringTag]: unit -> string *)
  (* [Symbol.iterator]: unit -> (K.t * V.t) IterableIterator.t *)
  
  (** Returns an iterable of key, value pairs for every entry in the map. *)
  val entries: t -> (K.t * V.t) IterableIterator.t [@@js.call "entries"]
  
  (** Returns an iterable of keys in the map *)
  val keys: t -> K.t IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the map *)
  val values: t -> V.t IterableIterator.t [@@js.call "values"]
  val clear: t -> unit [@@js.call "clear"]
  val delete: t -> key:K.t -> bool [@@js.call "delete"]
  val forEach: t -> callbackfn:(value:V.t -> key:K.t -> map:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val get_: t -> key:K.t -> V.t option [@@js.call "get"]
  val has: t -> key:K.t -> bool [@@js.call "has"]
  val set_: t -> key:K.t -> value:V.t -> t [@@js.call "set"]
  val get_size: t -> float [@@js.get "size"]
  val create: unit -> (any, any) parent [@@js.create]
  val create': ?iterable:(K.t * V.t) Iterable.t option -> unit -> t [@@js.create]
  val create'': unit -> (any, any) parent [@@js.create]
  val create''': ?entries:(K.t * V.t) list option -> unit -> t [@@js.create]
  val prototype: unit -> (any, any) parent [@@js.get "prototype"]
end
module ReadonlyMap_Make (K : Ojs.T) (V : Ojs.T) : sig
  type ('K, 'V) parent = ('K, 'V) ReadonlyMap.t
  type t = (K.t, V.t) parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.iterator]: unit -> (K.t * V.t) IterableIterator.t *)
  
  (** Returns an iterable of key, value pairs for every entry in the map. *)
  val entries: t -> (K.t * V.t) IterableIterator.t [@@js.call "entries"]
  
  (** Returns an iterable of keys in the map *)
  val keys: t -> K.t IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the map *)
  val values: t -> V.t IterableIterator.t [@@js.call "values"]
  val forEach: t -> callbackfn:(value:V.t -> key:K.t -> map:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val get_: t -> key:K.t -> V.t option [@@js.call "get"]
  val has: t -> key:K.t -> bool [@@js.call "has"]
  val get_size: t -> float [@@js.get "size"]
end
module[@js.scope "WeakMap"] WeakMap_Make (K : Ojs.T) (V : Ojs.T) : sig
  type ('K, 'V) parent = ('K, 'V) WeakMap.t
  type t = (K.t, V.t) parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.toStringTag]: unit -> string *)
  val delete: t -> key:K.t -> bool [@@js.call "delete"]
  val get_: t -> key:K.t -> V.t option [@@js.call "get"]
  val has: t -> key:K.t -> bool [@@js.call "has"]
  val set_: t -> key:K.t -> value:V.t -> t [@@js.call "set"]
  val create: (K.t * V.t) Iterable.t -> t [@@js.create]
  val create': ?entries:(K.t * V.t) list option -> unit -> t [@@js.create]
  val prototype: unit -> (untyped_object, any) parent [@@js.get "prototype"]
end
module[@js.scope "Set"] Set_Make (T : Ojs.T) : sig
  type 'T parent = 'T Set.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.toStringTag]: unit -> string *)
  (* [Symbol.iterator]: unit -> T.t IterableIterator.t *)
  
  (** Returns an iterable of \[v,v\] pairs for every value `v` in the set. *)
  val entries: t -> (T.t * T.t) IterableIterator.t [@@js.call "entries"]
  
  (** Despite its name, returns an iterable of the values in the set. *)
  val keys: t -> T.t IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the set. *)
  val values: t -> T.t IterableIterator.t [@@js.call "values"]
  val add: t -> value:T.t -> t [@@js.call "add"]
  val clear: t -> unit [@@js.call "clear"]
  val delete: t -> value:T.t -> bool [@@js.call "delete"]
  val forEach: t -> callbackfn:(value:T.t -> value2:T.t -> set_:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val has: t -> value:T.t -> bool [@@js.call "has"]
  val get_size: t -> float [@@js.get "size"]
  val create: ?iterable:T.t Iterable.t option -> unit -> t [@@js.create]
  val create': ?values:T.t list option -> unit -> t [@@js.create]
  val prototype: unit -> any parent [@@js.get "prototype"]
end
module ReadonlySet_Make (T : Ojs.T) : sig
  type 'T parent = 'T ReadonlySet.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.iterator]: unit -> T.t IterableIterator.t *)
  
  (** Returns an iterable of \[v,v\] pairs for every value `v` in the set. *)
  val entries: t -> (T.t * T.t) IterableIterator.t [@@js.call "entries"]
  
  (** Despite its name, returns an iterable of the values in the set. *)
  val keys: t -> T.t IterableIterator.t [@@js.call "keys"]
  
  (** Returns an iterable of values in the set. *)
  val values: t -> T.t IterableIterator.t [@@js.call "values"]
  val forEach: t -> callbackfn:(value:T.t -> value2:T.t -> set_:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  val has: t -> value:T.t -> bool [@@js.call "has"]
  val get_size: t -> float [@@js.get "size"]
end
module[@js.scope "WeakSet"] WeakSet_Make (T : Ojs.T) : sig
  type 'T parent = 'T WeakSet.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.toStringTag]: unit -> string *)
  val add: t -> value:T.t -> t [@@js.call "add"]
  val delete: t -> value:T.t -> bool [@@js.call "delete"]
  val has: t -> value:T.t -> bool [@@js.call "has"]
  val create: T.t Iterable.t -> t [@@js.create]
  val create': ?values:T.t list option -> unit -> t [@@js.create]
  val prototype: unit -> untyped_object parent [@@js.get "prototype"]
end
module Generator_Make (T : Ojs.T) (TReturn : Ojs.T) (TNext : Ojs.T) : sig
  type ('T, 'TReturn, 'TNext) parent = ('T, 'TReturn, 'TNext) Generator.t
  type t = (T.t, TReturn.t, TNext.t) parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val next: t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> (T.t, TReturn.t) IteratorResult.t [@@js.call "next"]
  val return: t -> value:TReturn.t -> (T.t, TReturn.t) IteratorResult.t [@@js.call "return"]
  val throw: t -> e:any -> (T.t, TReturn.t) IteratorResult.t [@@js.call "throw"]
  (* [Symbol.iterator]: unit -> t *)
end
module IteratorYieldResult_Make (TYield : Ojs.T) : sig
  type 'TYield parent = 'TYield IteratorYieldResult.t
  type t = TYield.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val get_done: t -> ([`L_b_false[@js false]] [@js.enum]) [@@js.get "done"]
  val set_done: t -> ([`L_b_false[@js false]] [@js.enum]) -> unit [@@js.set "done"]
  val get_value: t -> TYield.t [@@js.get "value"]
  val set_value: t -> TYield.t -> unit [@@js.set "value"]
end
module IteratorReturnResult_Make (TReturn : Ojs.T) : sig
  type 'TReturn parent = 'TReturn IteratorReturnResult.t
  type t = TReturn.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val get_done: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "done"]
  val set_done: t -> ([`L_b_true[@js true]] [@js.enum]) -> unit [@@js.set "done"]
  val get_value: t -> TReturn.t [@@js.get "value"]
  val set_value: t -> TReturn.t -> unit [@@js.set "value"]
end
module Iterator_Make (T : Ojs.T) (TReturn : Ojs.T) (TNext : Ojs.T) : sig
  type ('T, 'TReturn, 'TNext) parent = ('T, 'TReturn, 'TNext) Iterator.t
  type t = (T.t, TReturn.t, TNext.t) parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val next: t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> (T.t, TReturn.t) IteratorResult.t [@@js.call "next"]
  val return: t -> ?value:TReturn.t -> unit -> (T.t, TReturn.t) IteratorResult.t [@@js.call "return"]
  val throw: t -> ?e:any -> unit -> (T.t, TReturn.t) IteratorResult.t [@@js.call "throw"]
end
module[@js.scope "Promise"] Promise_Make (T : Ojs.T) : sig
  type 'T parent = 'T Promise.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  
  (**
    language version: ES2018
    Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
    resolved value cannot be modified from the callback.
    @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
    @return A Promise for the completion of the callback.
  *)
  val finally: t -> ?onfinally:([`Null | `Undefined of undefined | `U1 of (unit -> unit)] [@js.union]) -> unit -> t [@@js.call "finally"]
  (* [Symbol.toStringTag]: unit -> string *)
  
  (**
    Attaches callbacks for the resolution and/or rejection of the Promise.
    @param onfulfilled The callback to execute when the Promise is resolved.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of which ever callback is executed.
  *)
  val then_: t -> ?onfulfilled:([`Null | `Undefined of undefined | `U1 of (T.t -> ([`U1 of 'TResult1 | `U2 of 'TResult1 PromiseLike.t] [@js.union]))] [@js.union]) -> ?onrejected:([`Null | `Undefined of undefined | `U1 of (any -> ([`U1 of 'TResult2 | `U2 of 'TResult2 PromiseLike.t] [@js.union]))] [@js.union]) -> unit -> ('TResult1, 'TResult2) union2 parent [@@js.call "then"]
  
  (**
    Attaches a callback for only the rejection of the Promise.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of the callback.
  *)
  val catch: t -> ?onrejected:([`Null | `Undefined of undefined | `U1 of (any -> ([`U1 of 'TResult | `U2 of 'TResult PromiseLike.t] [@js.union]))] [@js.union]) -> unit -> ('TResult, (T.t, 'TResult) union2) union2 parent [@@js.call "catch"]
  
  (**
    language version: ESNext
    The any function returns a promise that is fulfilled by the first given promise to be fulfilled, or rejected with an AggregateError containing an array of rejection reasons if all of the given promises are rejected. It resolves all elements of the passed iterable to promises as it runs this algorithm.
    @param values An array or iterable of Promises.
    @return A new Promise.
  *)
  val any: ([`U1 of ([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) list | `U2 of ([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) Iterable.t] [@js.union]) -> t [@@js.global "any"]
  
  (**
    language version: ESNext
    The any function returns a promise that is fulfilled by the first given promise to be fulfilled, or rejected with an AggregateError containing an array of rejection reasons if all of the given promises are rejected. It resolves all elements of the passed iterable to promises as it runs this algorithm.
    @param values An array or iterable of Promises.
    @return A new Promise.
  *)
  val any': T.t -> (* FIXME: unknown type 'T[number]' *)any Awaited.t parent [@@js.global "any"]
  
  (**
    language version: ESNext
    The any function returns a promise that is fulfilled by the first given promise to be fulfilled, or rejected with an AggregateError containing an array of rejection reasons if all of the given promises are rejected. It resolves all elements of the passed iterable to promises as it runs this algorithm.
    @param values An array or iterable of Promises.
    @return A new Promise.
  *)
  val any'': ([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) Iterable.t -> T.t Awaited.t Awaited.t parent [@@js.global "any"]
  
  (**
    language version: ES2020
    Creates a Promise that is resolved with an array of results when all
    of the provided Promises resolve or reject.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val allSettled: T.t -> (* FIXME: unknown type '{ -readonly [P in keyof T]: PromiseSettledResult<Awaited<T[P]>> }' *)any parent [@@js.global "allSettled"]
  
  (**
    language version: ES2020
    Creates a Promise that is resolved with an array of results when all
    of the provided Promises resolve or reject.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val allSettled': ([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) Iterable.t -> T.t Awaited.t PromiseSettledResult.t list Awaited.t PromiseSettledResult.t list parent [@@js.global "allSettled"]
  
  (** A reference to the prototype. *)
  val prototype: unit -> any parent [@@js.get "prototype"]
  
  (**
    Creates a new Promise.
    @param executor A callback used to initialize the promise. This callback is passed two arguments:
    a resolve callback used to resolve the promise with a value or the result of another promise,
    and a reject callback used to reject the promise with a provided reason or error.
  *)
  val create: (resolve:(([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) -> unit) -> reject:(?reason:any -> unit -> unit) -> unit) -> t [@@js.create]
  
  (**
    Creates a Promise that is resolved with an array of results when all of the provided Promises
    resolve, or rejected when any Promise is rejected.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val all: T.t -> (* FIXME: unknown type '{ -readonly [P in keyof T]: Awaited<T[P]> }' *)any parent [@@js.global "all"]
  
  (**
    Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
    or rejected.
    @param values An array of Promises.
    @return A new Promise.
  *)
  val race: T.t -> (* FIXME: unknown type 'T[number]' *)any Awaited.t parent [@@js.global "race"]
  
  (**
    Creates a new rejected promise for the provided reason.
    @param reason The reason the promise was rejected.
    @return A new rejected Promise.
  *)
  val reject: ?reason:any -> unit -> t [@@js.global "reject"]
  
  (**
    Creates a new resolved promise.
    @return A resolved promise.
  *)
  val resolve: unit -> unit parent [@@js.global "resolve"]
  
  (**
    Creates a new resolved promise for the provided value.
    @param value A promise.
    @return A promise whose internal state matches the provided promise.
  *)
  val resolve': ([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) -> t [@@js.global "resolve"]
  
  (**
    Creates a Promise that is resolved with an array of results when all of the provided Promises
    resolve, or rejected when any Promise is rejected.
    @param values An iterable of Promises.
    @return A new Promise.
  *)
  val all': ([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) Iterable.t -> T.t Awaited.t list Awaited.t list parent [@@js.global "all"]
  
  (**
    Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
    or rejected.
    @param values An iterable of Promises.
    @return A new Promise.
  *)
  val race': ([`U1 of T.t | `U2 of T.t PromiseLike.t] [@js.union]) Iterable.t -> T.t Awaited.t Awaited.t parent [@@js.global "race"]
end
module ProxyHandler_Make (T : Ojs.T) : sig
  type 'T parent = 'T ProxyHandler.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val apply_: t -> target:T.t -> thisArg:any -> argArray:any list -> any [@@js.call "apply"]
  val construct: t -> target:T.t -> argArray:any list -> newTarget:Function.t -> untyped_object [@@js.call "construct"]
  val defineProperty: t -> target:T.t -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> attributes:PropertyDescriptor.t -> bool [@@js.call "defineProperty"]
  val deleteProperty: t -> target:T.t -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> bool [@@js.call "deleteProperty"]
  val get_: t -> target:T.t -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> receiver:any -> any [@@js.call "get"]
  val getOwnPropertyDescriptor: t -> target:T.t -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> PropertyDescriptor.t option [@@js.call "getOwnPropertyDescriptor"]
  val getPrototypeOf: t -> target:T.t -> untyped_object option [@@js.call "getPrototypeOf"]
  val has: t -> target:T.t -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> bool [@@js.call "has"]
  val isExtensible: t -> target:T.t -> bool [@@js.call "isExtensible"]
  val ownKeys: t -> target:T.t -> ([`String of string | `Symbol of symbol] [@js.union on_field "dummy"]) Primitive.t ArrayLike.t [@@js.call "ownKeys"]
  val preventExtensions: t -> target:T.t -> bool [@@js.call "preventExtensions"]
  val set_: t -> target:T.t -> p:([`U1 of string | `U2 of symbol] [@js.union]) -> value:any -> receiver:any -> bool [@@js.call "set"]
  val setPrototypeOf: t -> target:T.t -> v:untyped_object option -> bool [@@js.call "setPrototypeOf"]
end
module AsyncGenerator_Make (T : Ojs.T) (TReturn : Ojs.T) (TNext : Ojs.T) : sig
  type ('T, 'TReturn, 'TNext) parent = ('T, 'TReturn, 'TNext) AsyncGenerator.t
  type t = (T.t, TReturn.t, TNext.t) parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val next: t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> (T.t, TReturn.t) IteratorResult.t Promise.t [@@js.call "next"]
  val return: t -> value:([`U1 of TReturn.t | `U2 of TReturn.t PromiseLike.t] [@js.union]) -> (T.t, TReturn.t) IteratorResult.t Promise.t [@@js.call "return"]
  val throw: t -> e:any -> (T.t, TReturn.t) IteratorResult.t Promise.t [@@js.call "throw"]
  (* [Symbol.asyncIterator]: unit -> t *)
end
module AsyncIterator_Make (T : Ojs.T) (TReturn : Ojs.T) (TNext : Ojs.T) : sig
  type ('T, 'TReturn, 'TNext) parent = ('T, 'TReturn, 'TNext) AsyncIterator.t
  type t = (T.t, TReturn.t, TNext.t) parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val next: t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> (T.t, TReturn.t) IteratorResult.t Promise.t [@@js.call "next"]
  val return: t -> ?value:([`U1 of TReturn.t | `U2 of TReturn.t PromiseLike.t] [@js.union]) -> unit -> (T.t, TReturn.t) IteratorResult.t Promise.t [@@js.call "return"]
  val throw: t -> ?e:any -> unit -> (T.t, TReturn.t) IteratorResult.t Promise.t [@@js.call "throw"]
end
module PromiseFulfilledResult_Make (T : Ojs.T) : sig
  type 'T parent = 'T PromiseFulfilledResult.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  val get_status: t -> ([`L_s43_fulfilled[@js "fulfilled"]] [@js.enum]) [@@js.get "status"]
  val set_status: t -> ([`L_s43_fulfilled[@js "fulfilled"]] [@js.enum]) -> unit [@@js.set "status"]
  val get_value: t -> T.t [@@js.get "value"]
  val set_value: t -> T.t -> unit [@@js.set "value"]
end
module[@js.scope "WeakRef"] WeakRef_Make (T : Ojs.T) : sig
  type 'T parent = 'T WeakRef.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.toStringTag]: unit -> ([`L_s20_WeakRef[@js "WeakRef"]] [@js.enum]) *)
  
  (**
    Returns the WeakRef instance's target object, or undefined if the target object has been
    reclaimed.
  *)
  val deref: t -> T.t option [@@js.call "deref"]
  (* [Symbol.toStringTag]: unit -> ([`L_s20_WeakRef[@js "WeakRef"]] [@js.enum]) *)
  
  (**
    Returns the WeakRef instance's target object, or undefined if the target object has been
    reclaimed.
  *)
  val deref': t -> T.t option [@@js.call "deref"]
  val prototype: unit -> any parent [@@js.get "prototype"]
  
  (**
    Creates a WeakRef instance for the given target object.
    @param target The target object for the WeakRef instance.
  *)
  val create: ?target:T.t -> unit -> t [@@js.create]
  val prototype': unit -> any parent [@@js.get "prototype"]
  
  (**
    Creates a WeakRef instance for the given target object.
    @param target The target object for the WeakRef instance.
  *)
  val create': T.t -> t [@@js.create]
end
module[@js.scope "FinalizationRegistry"] FinalizationRegistry_Make (T : Ojs.T) : sig
  type 'T parent = 'T FinalizationRegistry.t
  type t = T.t parent
  val t_of_js: Ojs.t -> t
  val t_to_js: t -> Ojs.t
  
  (* [Symbol.toStringTag]: unit -> ([`L_s5_FinalizationRegistry[@js "FinalizationRegistry"]] [@js.enum]) *)
  
  (**
    Registers an object with the registry.
    @param target The target object to register.
    @param heldValue The value to pass to the finalizer for this object. This cannot be the
    target object.
    @param unregisterToken The token to pass to the unregister method to unregister the target
    object. If provided (and not undefined), this must be an object. If not provided, the target
    cannot be unregistered.
  *)
  val register: t -> target:untyped_object -> heldValue:any -> ?unregisterToken:untyped_object -> unit -> unit [@@js.call "register"]
  
  (**
    Unregisters an object from the registry.
    @param unregisterToken The token that was used as the unregisterToken argument when calling
    register to register the target object.
  *)
  val unregister: t -> unregisterToken:untyped_object -> unit [@@js.call "unregister"]
  (* [Symbol.toStringTag]: unit -> ([`L_s5_FinalizationRegistry[@js "FinalizationRegistry"]] [@js.enum]) *)
  
  (**
    Registers an object with the registry.
    @param target The target object to register.
    @param heldValue The value to pass to the finalizer for this object. This cannot be the
    target object.
    @param unregisterToken The token to pass to the unregister method to unregister the target
    object. If provided (and not undefined), this must be an object. If not provided, the target
    cannot be unregistered.
  *)
  val register': t -> target:untyped_object -> heldValue:T.t -> ?unregisterToken:untyped_object -> unit -> unit [@@js.call "register"]
  
  (**
    Unregisters an object from the registry.
    @param unregisterToken The token that was used as the unregisterToken argument when calling
    register to register the target object.
  *)
  val unregister': t -> unregisterToken:untyped_object -> unit [@@js.call "unregister"]
  val prototype: unit -> t [@@js.get "prototype"]
  
  (**
    Creates a finalization registry with an associated cleanup callback
    @param cleanupCallback The callback to call after an object in the registry has been reclaimed.
  *)
  val create: (any -> unit) -> t [@@js.create]
  val prototype': unit -> any parent [@@js.get "prototype"]
  
  (**
    Creates a finalization registry with an associated cleanup callback
    @param cleanupCallback The callback to call after an object in the registry has been reclaimed.
  *)
  val create': (T.t -> unit) -> t [@@js.create]
end


val nan: unit -> float [@@js.get "NaN"]


val infinity: unit -> float [@@js.get "Infinity"]

(**
  
  Evaluates JavaScript code and executes it.
  @param x A String value that contains valid JavaScript code.
*)
val eval: string -> any [@@js.global "eval"]

(**
  
  Converts a string to an integer.
  @param string A string to convert into a number.
  @param radix A value between 2 and 36 that specifies the base of the number in `string`.
  If this argument is not supplied, strings with a prefix of '0x' are considered hexadecimal.
  All other strings are considered decimal.
*)
val parseInt: string:string -> ?radix:float -> unit -> float [@@js.global "parseInt"]

(**
  
  Converts a string to a floating-point number.
  @param string A string that contains a floating-point number.
*)
val parseFloat: string -> float [@@js.global "parseFloat"]

(**
  
  Returns a Boolean value that indicates whether a value is the reserved value NaN (not a number).
  @param number A numeric value.
*)
val isNaN: float -> bool [@@js.global "isNaN"]

(**
  
  Determines whether a supplied number is finite.
  @param number Any numeric value.
*)
val isFinite: float -> bool [@@js.global "isFinite"]

(**
  
  Gets the unencoded version of an encoded Uniform Resource Identifier (URI).
  @param encodedURI A value representing an encoded URI.
*)
val decodeURI: string -> string [@@js.global "decodeURI"]

(**
  
  Gets the unencoded version of an encoded component of a Uniform Resource Identifier (URI).
  @param encodedURIComponent A value representing an encoded URI component.
*)
val decodeURIComponent: string -> string [@@js.global "decodeURIComponent"]

(**
  
  Encodes a text string as a valid Uniform Resource Identifier (URI)
  @param uri A value representing an encoded URI.
*)
val encodeURI: string -> string [@@js.global "encodeURI"]

(**
  
  Encodes a text string as a valid component of a Uniform Resource Identifier (URI).
  @param uriComponent A value representing an encoded URI component.
*)
val encodeURIComponent: ([`Number of float | `String of string | `Boolean of bool] [@js.union on_field "dummy"]) Primitive.t -> string [@@js.global "encodeURIComponent"]

(**
  
  Computes a new string in which certain characters have been replaced by a hexadecimal escape sequence.
  @deprecated A legacy feature for browser compatibility
  @param string A string value
*)
val escape: string -> string [@@js.global "escape"]

(**
  
  Computes a new string in which hexadecimal escape sequences are replaced with the character that it represents.
  @deprecated A legacy feature for browser compatibility
  @param string A string value
*)
val unescape: string -> string [@@js.global "unescape"]

(** language version: ES2015 *)
val proxy: unit -> ProxyConstructor.t [@@js.get "Proxy"]