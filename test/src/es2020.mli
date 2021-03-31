[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - ArrayBufferLike
  - ArrayLike<T1>
  - Iterable<T1>
  - IterableIterator<T1>
  - Promise<T1>
  - RegExpMatchArray
 *)
[@@@js.stop]
module type Missing = sig
  module ArrayBufferLike : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ArrayLike : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Iterable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module IterableIterator : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RegExpMatchArray : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module ArrayBufferLike : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ArrayLike : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Iterable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module IterableIterator : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RegExpMatchArray : sig
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
      type _BigInt = bigint
      and _BigInt64Array = [`BigInt64Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigInt64ArrayConstructor = [`BigInt64ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigIntConstructor = [`BigIntConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigUint64Array = [`BigUint64Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigUint64ArrayConstructor = [`BigUint64ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DataView = [`DataView] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _PromiseConstructor = [`PromiseConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _PromiseFulfilledResult = [`PromiseFulfilledResult of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _PromiseRejectedResult = [`PromiseRejectedResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _PromiseSettledResult = ([`U_s3_fulfilled of 'T _PromiseFulfilledResult [@js "fulfilled"] | `U_s4_rejected of _PromiseRejectedResult [@js "rejected"]] [@js.union on_field "status"])
      and _RegExp = regexp
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SymbolConstructor = [`SymbolConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module[@js.scope "BigInt"] BigInt : sig
    type t = _BigInt
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val toString: t -> ?radix:float -> unit -> string [@@js.call "toString"]
    val toLocaleString: t -> string [@@js.call "toLocaleString"]
    val valueOf: t -> bigint [@@js.call "valueOf"]
    val get__Symbol_toStringTag_: t -> ([`L_s0_BigInt[@js "BigInt"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "BigIntConstructor"] BigIntConstructor : sig
    type t = _BigIntConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> ?value:any -> unit -> bigint [@@js.apply]
    val get_prototype: t -> _BigInt [@@js.get "prototype"]
    val asIntN: t -> bits:float -> int:bigint -> bigint [@@js.call "asIntN"]
    val asUintN: t -> bits:float -> int:bigint -> bigint [@@js.call "asUintN"]
  end
  val bigInt: _BigIntConstructor [@@js.global "BigInt"]
  module[@js.scope "BigInt64Array"] BigInt64Array : sig
    type t = _BigInt64Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    val get_buffer: t -> ArrayBufferLike.t_0 [@@js.get "buffer"]
    val get_byteLength: t -> float [@@js.get "byteLength"]
    val get_byteOffset: t -> float [@@js.get "byteOffset"]
    val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
    val entries: t -> (float * bigint) IterableIterator.t_1 [@@js.call "entries"]
    val every: t -> callbackfn:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
    val fill: t -> value:bigint -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
    val filter: t -> callbackfn:(value:bigint -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
    val find: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bigint or_undefined [@@js.call "find"]
    val findIndex: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
    val forEach: t -> callbackfn:(value:bigint -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    val includes: t -> searchElement:bigint -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
    val indexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
    val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
    val keys: t -> float IterableIterator.t_1 [@@js.call "keys"]
    val lastIndexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
    val get_length: t -> float [@@js.get "length"]
    val map: t -> callbackfn:(value:bigint -> index:float -> array:t -> bigint) -> ?thisArg:any -> unit -> t [@@js.call "map"]
    val reduce: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduce"]
    val reduce': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
    val reduceRight: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduceRight"]
    val reduceRight': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
    val reverse: t -> t [@@js.call "reverse"]
    val set_: t -> array:bigint ArrayLike.t_1 -> ?offset:float -> unit -> unit [@@js.call "set"]
    val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
    val some: t -> callbackfn:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
    val sort: t -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number) -> unit -> t [@@js.call "sort"]
    val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
    val toLocaleString: t -> string [@@js.call "toLocaleString"]
    val toString: t -> string [@@js.call "toString"]
    val values: t -> bigint IterableIterator.t_1 [@@js.call "values"]
    val _Symbol_iterator_: t -> bigint IterableIterator.t_1 [@@js.call "[Symbol.iterator]"]
    val get__Symbol_toStringTag_: t -> ([`L_s1_BigInt64Array[@js "BigInt64Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val get: t -> float -> bigint [@@js.index_get]
    val set: t -> float -> bigint -> unit [@@js.index_set]
  end
  module[@js.scope "BigInt64ArrayConstructor"] BigInt64ArrayConstructor : sig
    type t = _BigInt64ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_prototype: t -> _BigInt64Array [@@js.get "prototype"]
    val create: t -> ?length:float -> unit -> _BigInt64Array [@@js.apply as_constructor]
    val create': t -> array:bigint Iterable.t_1 -> _BigInt64Array [@@js.apply as_constructor]
    val create'': t -> buffer:ArrayBufferLike.t_0 -> ?byteOffset:float -> ?length:float -> unit -> _BigInt64Array [@@js.apply as_constructor]
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    val of_: t -> items:(bigint list [@js.variadic]) -> _BigInt64Array [@@js.call "of"]
    val from: t -> arrayLike:bigint ArrayLike.t_1 -> _BigInt64Array [@@js.call "from"]
    val from': t -> arrayLike:'U ArrayLike.t_1 -> mapfn:(v:'U -> k:float -> bigint) -> ?thisArg:any -> unit -> _BigInt64Array [@@js.call "from"]
  end
  val bigInt64Array: _BigInt64ArrayConstructor [@@js.global "BigInt64Array"]
  module[@js.scope "BigUint64Array"] BigUint64Array : sig
    type t = _BigUint64Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    val get_buffer: t -> ArrayBufferLike.t_0 [@@js.get "buffer"]
    val get_byteLength: t -> float [@@js.get "byteLength"]
    val get_byteOffset: t -> float [@@js.get "byteOffset"]
    val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
    val entries: t -> (float * bigint) IterableIterator.t_1 [@@js.call "entries"]
    val every: t -> callbackfn:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
    val fill: t -> value:bigint -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
    val filter: t -> callbackfn:(value:bigint -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
    val find: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bigint or_undefined [@@js.call "find"]
    val findIndex: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
    val forEach: t -> callbackfn:(value:bigint -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    val includes: t -> searchElement:bigint -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
    val indexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
    val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
    val keys: t -> float IterableIterator.t_1 [@@js.call "keys"]
    val lastIndexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
    val get_length: t -> float [@@js.get "length"]
    val map: t -> callbackfn:(value:bigint -> index:float -> array:t -> bigint) -> ?thisArg:any -> unit -> t [@@js.call "map"]
    val reduce: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduce"]
    val reduce': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
    val reduceRight: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduceRight"]
    val reduceRight': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
    val reverse: t -> t [@@js.call "reverse"]
    val set_: t -> array:bigint ArrayLike.t_1 -> ?offset:float -> unit -> unit [@@js.call "set"]
    val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
    val some: t -> callbackfn:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
    val sort: t -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number) -> unit -> t [@@js.call "sort"]
    val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
    val toLocaleString: t -> string [@@js.call "toLocaleString"]
    val toString: t -> string [@@js.call "toString"]
    val values: t -> bigint IterableIterator.t_1 [@@js.call "values"]
    val _Symbol_iterator_: t -> bigint IterableIterator.t_1 [@@js.call "[Symbol.iterator]"]
    val get__Symbol_toStringTag_: t -> ([`L_s2_BigUint64Array[@js "BigUint64Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val get: t -> float -> bigint [@@js.index_get]
    val set: t -> float -> bigint -> unit [@@js.index_set]
  end
  module[@js.scope "BigUint64ArrayConstructor"] BigUint64ArrayConstructor : sig
    type t = _BigUint64ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_prototype: t -> _BigUint64Array [@@js.get "prototype"]
    val create: t -> ?length:float -> unit -> _BigUint64Array [@@js.apply as_constructor]
    val create': t -> array:bigint Iterable.t_1 -> _BigUint64Array [@@js.apply as_constructor]
    val create'': t -> buffer:ArrayBufferLike.t_0 -> ?byteOffset:float -> ?length:float -> unit -> _BigUint64Array [@@js.apply as_constructor]
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    val of_: t -> items:(bigint list [@js.variadic]) -> _BigUint64Array [@@js.call "of"]
    val from: t -> arrayLike:bigint ArrayLike.t_1 -> _BigUint64Array [@@js.call "from"]
    val from': t -> arrayLike:'U ArrayLike.t_1 -> mapfn:(v:'U -> k:float -> bigint) -> ?thisArg:any -> unit -> _BigUint64Array [@@js.call "from"]
  end
  val bigUint64Array: _BigUint64ArrayConstructor [@@js.global "BigUint64Array"]
  module[@js.scope "DataView"] DataView : sig
    type t = _DataView
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val getBigInt64: t -> byteOffset:float -> ?littleEndian:bool -> unit -> bigint [@@js.call "getBigInt64"]
    val getBigUint64: t -> byteOffset:float -> ?littleEndian:bool -> unit -> bigint [@@js.call "getBigUint64"]
    val setBigInt64: t -> byteOffset:float -> value:bigint -> ?littleEndian:bool -> unit -> unit [@@js.call "setBigInt64"]
    val setBigUint64: t -> byteOffset:float -> value:bigint -> ?littleEndian:bool -> unit -> unit [@@js.call "setBigUint64"]
  end
  module[@js.scope "PromiseFulfilledResult"] PromiseFulfilledResult : sig
    type 'T t = 'T _PromiseFulfilledResult
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get_status: 'T t -> ([`L_s3_fulfilled[@js "fulfilled"]] [@js.enum]) [@@js.get "status"]
    val set_status: 'T t -> ([`L_s3_fulfilled] [@js.enum]) -> unit [@@js.set "status"]
    val get_value: 'T t -> 'T [@@js.get "value"]
    val set_value: 'T t -> 'T -> unit [@@js.set "value"]
  end
  module[@js.scope "PromiseRejectedResult"] PromiseRejectedResult : sig
    type t = _PromiseRejectedResult
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_status: t -> ([`L_s4_rejected[@js "rejected"]] [@js.enum]) [@@js.get "status"]
    val set_status: t -> ([`L_s4_rejected] [@js.enum]) -> unit [@@js.set "status"]
    val get_reason: t -> any [@@js.get "reason"]
    val set_reason: t -> any -> unit [@@js.set "reason"]
  end
  module PromiseSettledResult : sig
    type 'T t = 'T _PromiseSettledResult
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  end
  module[@js.scope "PromiseConstructor"] PromiseConstructor : sig
    type t = _PromiseConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val allSettled: t -> values:'T -> (* FIXME: unknown type '{ -readonly [P in keyof T]: PromiseSettledResult<T[P] extends PromiseLike<infer U> ? U : T[P]> }' *)any Promise.t_1 [@@js.call "allSettled"]
    val allSettled': t -> values:'T Iterable.t_1 -> (* FIXME: unknown type 'T extends PromiseLike<infer U> ? U : T' *)any _PromiseSettledResult list Promise.t_1 [@@js.call "allSettled"]
  end
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val matchAll: t -> regexp:_RegExp -> RegExpMatchArray.t_0 IterableIterator.t_1 [@@js.call "matchAll"]
    val to_ml: t -> string [@@js.cast]
    val of_ml: string -> t [@@js.cast]
  end
  module[@js.scope "SymbolConstructor"] SymbolConstructor : sig
    type t = _SymbolConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_matchAll: t -> symbol [@@js.get "matchAll"]
  end
  module[@js.scope "RegExp"] RegExp : sig
    type t = _RegExp
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_matchAll_: t -> str:string -> RegExpMatchArray.t_0 IterableIterator.t_1 [@@js.call "[Symbol.matchAll]"]
  end
end
