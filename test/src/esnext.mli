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
  - IteratorResult<T1>
  - Promise<T1>
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
  module IteratorResult : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
    module IteratorResult : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
      and 'T _AsyncIterable = [`AsyncIterable of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _AsyncIterableIterator = [`AsyncIterableIterator of 'T | `AsyncIterator of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _AsyncIterator = [`AsyncIterator of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _BigInt = bigint
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
      and _Intl_NumberFormat = [`Intl_NumberFormat] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_NumberFormatPart = [`Intl_NumberFormatPart] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_NumberFormatPartTypes = ([`L_s3_currency[@js "currency"] | `L_s4_decimal[@js "decimal"] | `L_s5_fraction[@js "fraction"] | `L_s6_group[@js "group"] | `L_s7_infinity[@js "infinity"] | `L_s8_integer[@js "integer"] | `L_s9_literal[@js "literal"] | `L_s10_minusSign[@js "minusSign"] | `L_s11_nan[@js "nan"] | `L_s12_percentSign[@js "percentSign"] | `L_s13_plusSign[@js "plusSign"]] [@js.enum])
      and 'T _ReadonlyArray = [`ReadonlyArray of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _Symbol = symbol
      and _SymbolConstructor = [`SymbolConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
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
  module[@js.scope "SymbolConstructor"] SymbolConstructor : sig
    type t = _SymbolConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_asyncIterator: t -> symbol [@@js.get "asyncIterator"]
  end
  module[@js.scope "AsyncIterator"] AsyncIterator : sig
    type 'T t = 'T _AsyncIterator
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val next: 'T t -> ?value:any -> unit -> 'T IteratorResult.t_1 Promise.t_1 [@@js.call "next"]
    val return: 'T t -> ?value:any -> unit -> 'T IteratorResult.t_1 Promise.t_1 [@@js.call "return"]
    val throw: 'T t -> ?e:any -> unit -> 'T IteratorResult.t_1 Promise.t_1 [@@js.call "throw"]
  end
  module[@js.scope "AsyncIterable"] AsyncIterable : sig
    type 'T t = 'T _AsyncIterable
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_asyncIterator_: 'T t -> 'T _AsyncIterator [@@js.call "[Symbol.asyncIterator]"]
  end
  module[@js.scope "AsyncIterableIterator"] AsyncIterableIterator : sig
    type 'T t = 'T _AsyncIterableIterator
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_asyncIterator_: 'T t -> 'T t [@@js.call "[Symbol.asyncIterator]"]
    val cast: 'T t -> 'T _AsyncIterator [@@js.cast]
  end
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
    val create: t -> ?length:float -> unit -> _BigInt64Array [@@js.apply_newable]
    val create': t -> array:bigint Iterable.t_1 -> _BigInt64Array [@@js.apply_newable]
    val create'': t -> buffer:ArrayBufferLike.t_0 -> ?byteOffset:float -> ?length:float -> unit -> _BigInt64Array [@@js.apply_newable]
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
    val create: t -> ?length:float -> unit -> _BigUint64Array [@@js.apply_newable]
    val create': t -> array:bigint Iterable.t_1 -> _BigUint64Array [@@js.apply_newable]
    val create'': t -> buffer:ArrayBufferLike.t_0 -> ?byteOffset:float -> ?length:float -> unit -> _BigUint64Array [@@js.apply_newable]
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
  module[@js.scope "Intl"] Intl : sig
    module NumberFormatPartTypes : sig
      type t = _Intl_NumberFormatPartTypes
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "NumberFormatPart"] NumberFormatPart : sig
      type t = _Intl_NumberFormatPart
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_type: t -> _Intl_NumberFormatPartTypes [@@js.get "type"]
      val set_type: t -> _Intl_NumberFormatPartTypes -> unit [@@js.set "type"]
      val get_value: t -> string [@@js.get "value"]
      val set_value: t -> string -> unit [@@js.set "value"]
    end
    module[@js.scope "NumberFormat"] NumberFormat : sig
      type t = _Intl_NumberFormat
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val formatToParts: t -> ?number:float -> unit -> _Intl_NumberFormatPart list [@@js.call "formatToParts"]
    end
  end
  module[@js.scope "Symbol"] Symbol : sig
    type t = _Symbol
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_description: t -> string [@@js.get "description"]
  end
end
