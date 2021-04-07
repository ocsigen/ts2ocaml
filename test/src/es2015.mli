[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - ArrayLike<T1>
  - PromiseLike<T1>
  - PropertyDescriptor
  - PropertyKey
  - RegExpMatchArray
  - TemplateStringsArray
 *)
[@@@js.stop]
module type Missing = sig
  module ArrayLike : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module PromiseLike : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module PropertyDescriptor : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module PropertyKey : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module RegExpMatchArray : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TemplateStringsArray : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module ArrayLike : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module PromiseLike : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module PropertyDescriptor : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module PropertyKey : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RegExpMatchArray : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TemplateStringsArray : sig
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
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_1 = [`anonymous_interface_1] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_2 = [`anonymous_interface_2] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_3 = [`anonymous_interface_3] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_4 = [`anonymous_interface_4] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_5 = [`anonymous_interface_5] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_6 = [`anonymous_interface_6] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_7 = [`anonymous_interface_7] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type 'T _Array = [`Array of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _ArrayBuffer = [`ArrayBuffer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ArrayBufferConstructor = [`ArrayBufferConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ArrayConstructor = [`ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DataView = [`DataView] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Date = [`Date] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DateConstructor = [`DateConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float32Array = [`Float32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float32ArrayConstructor = [`Float32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float64Array = [`Float64Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float64ArrayConstructor = [`Float64ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Function = untyped_function
      and ('T, 'TReturn, 'TNext) _Generator = [`Generator of ('T * 'TReturn * 'TNext) | `Iterator of ('T * 'TReturn * 'TNext)] intf
      [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
      and _GeneratorFunction = [`GeneratorFunction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _GeneratorFunctionConstructor = [`GeneratorFunctionConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _IArguments = [`IArguments] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int16Array = [`Int16Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int16ArrayConstructor = [`Int16ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int32Array = [`Int32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int32ArrayConstructor = [`Int32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int8Array = [`Int8Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int8ArrayConstructor = [`Int8ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _Iterable = [`Iterable of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _IterableIterator = [`IterableIterator of 'T | `Iterator of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ('T, 'TReturn, 'TNext) _Iterator = [`Iterator of ('T * 'TReturn * 'TNext)] intf
      [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
      and ('T, 'TReturn) _IteratorResult = ([`U_b_false of 'T _IteratorYieldResult [@js false] | `U_b_true of 'TReturn _IteratorReturnResult [@js true]] [@js.union on_field "done"])
      and 'TReturn _IteratorReturnResult = [`IteratorReturnResult of 'TReturn] intf
      [@@js.custom { of_js=(fun _TReturn -> Obj.magic); to_js=(fun _TReturn -> Obj.magic) }]
      and 'TYield _IteratorYieldResult = [`IteratorYieldResult of 'TYield] intf
      [@@js.custom { of_js=(fun _TYield -> Obj.magic); to_js=(fun _TYield -> Obj.magic) }]
      and _JSON = [`JSON] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('K, 'V) _Map = [`Map of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and _MapConstructor = [`MapConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Math = [`Math] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _NumberConstructor = [`NumberConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ObjectConstructor = [`ObjectConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _Promise = [`Promise of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _PromiseConstructor = [`PromiseConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProxyConstructor = [`ProxyConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _ProxyHandler = [`ProxyHandler of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _ReadonlyArray = [`ReadonlyArray of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ('K, 'V) _ReadonlyMap = [`ReadonlyMap of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and 'T _ReadonlySet = [`ReadonlySet of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _RegExp = regexp
      and _RegExpConstructor = [`RegExpConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _Set = [`Set of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _SetConstructor = [`SetConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StringConstructor = [`StringConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Symbol = symbol
      and _SymbolConstructor = [`SymbolConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint16Array = [`Uint16Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint16ArrayConstructor = [`Uint16ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint32Array = [`Uint32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint32ArrayConstructor = [`Uint32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8Array = [`Uint8Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ArrayConstructor = [`Uint8ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ClampedArray = [`Uint8ClampedArray] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ClampedArrayConstructor = [`Uint8ClampedArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('K, 'V) _WeakMap = [`WeakMap of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and _WeakMapConstructor = [`WeakMapConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _WeakSet = [`WeakSet of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _WeakSetConstructor = [`WeakSetConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module AnonymousInterface0 : sig
    type t = anonymous_interface_0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
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
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_proxy: t -> 'T [@@js.get "proxy"]
    val set_proxy: t -> 'T -> unit [@@js.set "proxy"]
    val revoke: t -> unit [@@js.call "revoke"]
  end
  module AnonymousInterface3 : sig
    type t = anonymous_interface_3
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_match_: t -> string:string -> RegExpMatchArray.t_0 or_null [@@js.call "[Symbol.match]"]
  end
  module AnonymousInterface4 : sig
    type t = anonymous_interface_4
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_replace_: t -> string:string -> replaceValue:string -> string [@@js.call "[Symbol.replace]"]
  end
  module AnonymousInterface5 : sig
    type t = anonymous_interface_5
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_replace_: t -> string:string -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "[Symbol.replace]"]
  end
  module AnonymousInterface6 : sig
    type t = anonymous_interface_6
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_search_: t -> string:string -> float [@@js.call "[Symbol.search]"]
  end
  module AnonymousInterface7 : sig
    type t = anonymous_interface_7
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_split_: t -> string:string -> ?limit:float -> unit -> string list [@@js.call "[Symbol.split]"]
  end
  module[@js.scope "Map"] Map : sig
    type ('K, 'V) t = ('K, 'V) _Map
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    val get__Symbol_toStringTag_: ('K, 'V) t -> string [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "entries"]
    val keys: ('K, 'V) t -> 'K _IterableIterator [@@js.call "keys"]
    val values: ('K, 'V) t -> 'V _IterableIterator [@@js.call "values"]
    val clear: ('K, 'V) t -> unit [@@js.call "clear"]
    val delete: ('K, 'V) t -> key:'K -> bool [@@js.call "delete"]
    val forEach: ('K, 'V) t -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    val get_: ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]
    val has: ('K, 'V) t -> key:'K -> bool [@@js.call "has"]
    val set_: ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t [@@js.call "set"]
    val get_size: ('K, 'V) t -> float [@@js.get "size"]
  end
  module[@js.scope "MapConstructor"] MapConstructor : sig
    type t = _MapConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
    val create: t -> iterable:('K * 'V) _Iterable -> ('K, 'V) _Map [@@js.apply_newable]
    val create': t -> (any, any) _Map [@@js.apply_newable]
    val create'': t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _Map [@@js.apply_newable]
    val get_prototype: t -> (any, any) _Map [@@js.get "prototype"]
  end
  val map: _MapConstructor [@@js.global "Map"]
  module[@js.scope "ReadonlyMap"] ReadonlyMap : sig
    type ('K, 'V) t = ('K, 'V) _ReadonlyMap
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    val _Symbol_iterator_: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "entries"]
    val keys: ('K, 'V) t -> 'K _IterableIterator [@@js.call "keys"]
    val values: ('K, 'V) t -> 'V _IterableIterator [@@js.call "values"]
    val forEach: ('K, 'V) t -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    val get_: ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]
    val has: ('K, 'V) t -> key:'K -> bool [@@js.call "has"]
    val get_size: ('K, 'V) t -> float [@@js.get "size"]
  end
  module[@js.scope "WeakMap"] WeakMap : sig
    type ('K, 'V) t = ('K, 'V) _WeakMap
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    val get__Symbol_toStringTag_: ('K, 'V) t -> string [@@js.get "[Symbol.toStringTag]"]
    val delete: ('K, 'V) t -> key:'K -> bool [@@js.call "delete"]
    val get_: ('K, 'V) t -> key:'K -> 'V or_undefined [@@js.call "get"]
    val has: ('K, 'V) t -> key:'K -> bool [@@js.call "has"]
    val set_: ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t [@@js.call "set"]
  end
  module[@js.scope "WeakMapConstructor"] WeakMapConstructor : sig
    type t = _WeakMapConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> iterable:('K * 'V) _Iterable -> ('K, 'V) _WeakMap [@@js.apply_newable]
    val create': t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _WeakMap [@@js.apply_newable]
    val get_prototype: t -> (untyped_object, any) _WeakMap [@@js.get "prototype"]
  end
  val weakMap: _WeakMapConstructor [@@js.global "WeakMap"]
  module[@js.scope "Set"] Set : sig
    type 'T t = 'T _Set
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get__Symbol_toStringTag_: 'T t -> string [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: 'T t -> ('T * 'T) _IterableIterator [@@js.call "entries"]
    val keys: 'T t -> 'T _IterableIterator [@@js.call "keys"]
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
    val add: 'T t -> value:'T -> 'T t [@@js.call "add"]
    val clear: 'T t -> unit [@@js.call "clear"]
    val delete: 'T t -> value:'T -> bool [@@js.call "delete"]
    val forEach: 'T t -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    val has: 'T t -> value:'T -> bool [@@js.call "has"]
    val get_size: 'T t -> float [@@js.get "size"]
  end
  module[@js.scope "SetConstructor"] SetConstructor : sig
    type t = _SetConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
    val create: t -> ?iterable:'T _Iterable or_null -> unit -> 'T _Set [@@js.apply_newable]
    val create': t -> ?values:'T list or_null -> unit -> 'T _Set [@@js.apply_newable]
    val get_prototype: t -> any _Set [@@js.get "prototype"]
  end
  val set_: _SetConstructor [@@js.global "Set"]
  module[@js.scope "ReadonlySet"] ReadonlySet : sig
    type 'T t = 'T _ReadonlySet
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: 'T t -> ('T * 'T) _IterableIterator [@@js.call "entries"]
    val keys: 'T t -> 'T _IterableIterator [@@js.call "keys"]
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
    val forEach: 'T t -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    val has: 'T t -> value:'T -> bool [@@js.call "has"]
    val get_size: 'T t -> float [@@js.get "size"]
  end
  module[@js.scope "WeakSet"] WeakSet : sig
    type 'T t = 'T _WeakSet
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get__Symbol_toStringTag_: 'T t -> string [@@js.get "[Symbol.toStringTag]"]
    val add: 'T t -> value:'T -> 'T t [@@js.call "add"]
    val delete: 'T t -> value:'T -> bool [@@js.call "delete"]
    val has: 'T t -> value:'T -> bool [@@js.call "has"]
  end
  module[@js.scope "WeakSetConstructor"] WeakSetConstructor : sig
    type t = _WeakSetConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> iterable:'T _Iterable -> 'T _WeakSet [@@js.apply_newable]
    val create': t -> ?values:'T list or_null -> unit -> 'T _WeakSet [@@js.apply_newable]
    val get_prototype: t -> untyped_object _WeakSet [@@js.get "prototype"]
  end
  val weakSet: _WeakSetConstructor [@@js.global "WeakSet"]
  module[@js.scope "Array"] Array : sig
    type 'T t = 'T _Array
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_unscopables_: 'T t -> anonymous_interface_1 [@@js.call "[Symbol.unscopables]"]
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: 'T t -> (float * 'T) _IterableIterator [@@js.call "entries"]
    val keys: 'T t -> float _IterableIterator [@@js.call "keys"]
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
    val find: 'T t -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool) -> ?thisArg:any -> unit -> 'S or_undefined [@@js.call "find"]
    val find': 'T t -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> 'T or_undefined [@@js.call "find"]
    val findIndex: 'T t -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
    val fill: 'T t -> value:'T -> ?start:float -> ?end_:float -> unit -> 'T t [@@js.call "fill"]
    val copyWithin: 'T t -> target:float -> start:float -> ?end_:float -> unit -> 'T t [@@js.call "copyWithin"]
    val to_ml: 'T t -> 'T list [@@js.cast]
    val of_ml: 'T list -> 'T t [@@js.cast]
  end
  module[@js.scope "ArrayConstructor"] ArrayConstructor : sig
    type t = _ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
    val from: t -> iterable:('T ArrayLike.t_1, 'T _Iterable) union2 -> 'T list [@@js.call "from"]
    val from': t -> iterable:('T ArrayLike.t_1, 'T _Iterable) union2 -> mapfn:(v:'T -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "from"]
    val from'': t -> arrayLike:'T ArrayLike.t_1 -> 'T list [@@js.call "from"]
    val from''': t -> arrayLike:'T ArrayLike.t_1 -> mapfn:(v:'T -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "from"]
    val of_: t -> items:('T list [@js.variadic]) -> 'T list [@@js.call "of"]
  end
  module[@js.scope "DateConstructor"] DateConstructor : sig
    type t = _DateConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> value:_Date or_string or_number -> _Date [@@js.apply_newable]
  end
  module[@js.scope "Function"] Function : sig
    type t = _Function
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_hasInstance_: t -> value:any -> bool [@@js.call "[Symbol.hasInstance]"]
    val get_name: t -> string [@@js.get "name"]
  end
  module[@js.scope "Math"] Math : sig
    type t = _Math
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
    val clz32: t -> x:float -> float [@@js.call "clz32"]
    val imul: t -> x:float -> y:float -> float [@@js.call "imul"]
    val sign: t -> x:float -> float [@@js.call "sign"]
    val log10: t -> x:float -> float [@@js.call "log10"]
    val log2: t -> x:float -> float [@@js.call "log2"]
    val log1p: t -> x:float -> float [@@js.call "log1p"]
    val expm1: t -> x:float -> float [@@js.call "expm1"]
    val cosh: t -> x:float -> float [@@js.call "cosh"]
    val sinh: t -> x:float -> float [@@js.call "sinh"]
    val tanh: t -> x:float -> float [@@js.call "tanh"]
    val acosh: t -> x:float -> float [@@js.call "acosh"]
    val asinh: t -> x:float -> float [@@js.call "asinh"]
    val atanh: t -> x:float -> float [@@js.call "atanh"]
    val hypot: t -> values:(float list [@js.variadic]) -> float [@@js.call "hypot"]
    val trunc: t -> x:float -> float [@@js.call "trunc"]
    val fround: t -> x:float -> float [@@js.call "fround"]
    val cbrt: t -> x:float -> float [@@js.call "cbrt"]
  end
  module[@js.scope "NumberConstructor"] NumberConstructor : sig
    type t = _NumberConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_EPSILON: t -> float [@@js.get "EPSILON"]
    val isFinite: t -> number:float -> bool [@@js.call "isFinite"]
    val isInteger: t -> number:float -> bool [@@js.call "isInteger"]
    val isNaN: t -> number:float -> bool [@@js.call "isNaN"]
    val isSafeInteger: t -> number:float -> bool [@@js.call "isSafeInteger"]
    val get_MAX_SAFE_INTEGER: t -> float [@@js.get "MAX_SAFE_INTEGER"]
    val get_MIN_SAFE_INTEGER: t -> float [@@js.get "MIN_SAFE_INTEGER"]
    val parseFloat: t -> string:string -> float [@@js.call "parseFloat"]
    val parseInt: t -> string:string -> ?radix:float -> unit -> float [@@js.call "parseInt"]
  end
  module[@js.scope "ObjectConstructor"] ObjectConstructor : sig
    type t = _ObjectConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val assign: t -> target:'T -> source:'U -> ('T, 'U) intersection2 [@@js.call "assign"]
    val assign': t -> target:'T -> source1:'U -> source2:'V -> ('T, 'U, 'V) intersection3 [@@js.call "assign"]
    val assign'': t -> target:'T -> source1:'U -> source2:'V -> source3:'W -> ('T, 'U, 'V, 'W) intersection4 [@@js.call "assign"]
    val assign''': t -> target:untyped_object -> sources:(any list [@js.variadic]) -> any [@@js.call "assign"]
    val getOwnPropertySymbols: t -> o:any -> symbol list [@@js.call "getOwnPropertySymbols"]
    val keys: t -> o:anonymous_interface_0 -> string list [@@js.call "keys"]
    val is: t -> value1:any -> value2:any -> bool [@@js.call "is"]
    val setPrototypeOf: t -> o:any -> proto:untyped_object or_null -> any [@@js.call "setPrototypeOf"]
  end
  module[@js.scope "ReadonlyArray"] ReadonlyArray : sig
    type 'T t = 'T _ReadonlyArray
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: 'T t -> (float * 'T) _IterableIterator [@@js.call "entries"]
    val keys: 'T t -> float _IterableIterator [@@js.call "keys"]
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
    val find: 'T t -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool) -> ?thisArg:any -> unit -> 'S or_undefined [@@js.call "find"]
    val find': 'T t -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> 'T or_undefined [@@js.call "find"]
    val findIndex: 'T t -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
    val to_ml: 'T t -> 'T list [@@js.cast]
    val of_ml: 'T list -> 'T t [@@js.cast]
  end
  module[@js.scope "RegExp"] RegExp : sig
    type t = _RegExp
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_match_: t -> string:string -> RegExpMatchArray.t_0 or_null [@@js.call "[Symbol.match]"]
    val _Symbol_replace_: t -> string:string -> replaceValue:string -> string [@@js.call "[Symbol.replace]"]
    val _Symbol_replace_': t -> string:string -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "[Symbol.replace]"]
    val _Symbol_search_: t -> string:string -> float [@@js.call "[Symbol.search]"]
    val _Symbol_split_: t -> string:string -> ?limit:float -> unit -> string list [@@js.call "[Symbol.split]"]
    val get_flags: t -> string [@@js.get "flags"]
    val get_sticky: t -> bool [@@js.get "sticky"]
    val get_unicode: t -> bool [@@js.get "unicode"]
  end
  module[@js.scope "RegExpConstructor"] RegExpConstructor : sig
    type t = _RegExpConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
    val create: t -> pattern:_RegExp or_string -> ?flags:string -> unit -> _RegExp [@@js.apply_newable]
    val apply: t -> pattern:_RegExp or_string -> ?flags:string -> unit -> _RegExp [@@js.apply]
  end
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val match_: t -> matcher:anonymous_interface_3 -> RegExpMatchArray.t_0 or_null [@@js.call "match"]
    val replace: t -> searchValue:anonymous_interface_4 -> replaceValue:string -> string [@@js.call "replace"]
    val replace': t -> searchValue:anonymous_interface_5 -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replace"]
    val search: t -> searcher:anonymous_interface_6 -> float [@@js.call "search"]
    val split: t -> splitter:anonymous_interface_7 -> ?limit:float -> unit -> string list [@@js.call "split"]
    val _Symbol_iterator_: t -> string _IterableIterator [@@js.call "[Symbol.iterator]"]
    val codePointAt: t -> pos:float -> float or_undefined [@@js.call "codePointAt"]
    val includes: t -> searchString:string -> ?position:float -> unit -> bool [@@js.call "includes"]
    val endsWith: t -> searchString:string -> ?endPosition:float -> unit -> bool [@@js.call "endsWith"]
    val normalize: t -> form:([`L_s5_NFC | `L_s6_NFD | `L_s7_NFKC | `L_s8_NFKD] [@js.enum]) -> string [@@js.call "normalize"]
    val normalize': t -> ?form:string -> unit -> string [@@js.call "normalize"]
    val repeat: t -> count:float -> string [@@js.call "repeat"]
    val startsWith: t -> searchString:string -> ?position:float -> unit -> bool [@@js.call "startsWith"]
    val anchor: t -> name:string -> string [@@js.call "anchor"]
    val big: t -> string [@@js.call "big"]
    val blink: t -> string [@@js.call "blink"]
    val bold: t -> string [@@js.call "bold"]
    val fixed: t -> string [@@js.call "fixed"]
    val fontcolor: t -> color:string -> string [@@js.call "fontcolor"]
    val fontsize: t -> size:float -> string [@@js.call "fontsize"]
    val fontsize': t -> size:string -> string [@@js.call "fontsize"]
    val italics: t -> string [@@js.call "italics"]
    val link: t -> url:string -> string [@@js.call "link"]
    val small: t -> string [@@js.call "small"]
    val strike: t -> string [@@js.call "strike"]
    val sub: t -> string [@@js.call "sub"]
    val sup: t -> string [@@js.call "sup"]
    val to_ml: t -> string [@@js.cast]
    val of_ml: string -> t [@@js.cast]
  end
  module[@js.scope "StringConstructor"] StringConstructor : sig
    type t = _StringConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val fromCodePoint: t -> codePoints:(float list [@js.variadic]) -> string [@@js.call "fromCodePoint"]
    val raw: t -> template:TemplateStringsArray.t_0 -> substitutions:(any list [@js.variadic]) -> string [@@js.call "raw"]
  end
  module[@js.scope "Generator"] Generator : sig
    type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _Generator
    val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t
    type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t
    val t_3_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t_3
    type ('T, 'TReturn) t_2 = ('T, 'TReturn, unknown) t
    val t_2_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
    type 'T t_1 = ('T, any, unknown) t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = (unknown, any, unknown) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val next: ('T, 'TReturn, 'TNext) t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) _IteratorResult [@@js.call "next"]
    val return: ('T, 'TReturn, 'TNext) t -> value:'TReturn -> ('T, 'TReturn) _IteratorResult [@@js.call "return"]
    val throw: ('T, 'TReturn, 'TNext) t -> e:any -> ('T, 'TReturn) _IteratorResult [@@js.call "throw"]
    val _Symbol_iterator_: ('T, 'TReturn, 'TNext) t -> ('T, 'TReturn, 'TNext) t [@@js.call "[Symbol.iterator]"]
    val cast: ('T, 'TReturn, 'TNext) t -> ('T, 'TReturn, 'TNext) _Iterator [@@js.cast]
  end
  module[@js.scope "GeneratorFunction"] GeneratorFunction : sig
    type t = _GeneratorFunction
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
    val create: t -> args:(any list [@js.variadic]) -> (unknown, any, unknown) _Generator [@@js.apply_newable]
    val apply: t -> args:(any list [@js.variadic]) -> (unknown, any, unknown) _Generator [@@js.apply]
    val get_length: t -> float [@@js.get "length"]
    val get_name: t -> string [@@js.get "name"]
    val get_prototype: t -> (unknown, any, unknown) _Generator [@@js.get "prototype"]
  end
  module[@js.scope "GeneratorFunctionConstructor"] GeneratorFunctionConstructor : sig
    type t = _GeneratorFunctionConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> args:(string list [@js.variadic]) -> _GeneratorFunction [@@js.apply_newable]
    val apply: t -> args:(string list [@js.variadic]) -> _GeneratorFunction [@@js.apply]
    val get_length: t -> float [@@js.get "length"]
    val get_name: t -> string [@@js.get "name"]
    val get_prototype: t -> _GeneratorFunction [@@js.get "prototype"]
  end
  module[@js.scope "SymbolConstructor"] SymbolConstructor : sig
    type t = _SymbolConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_hasInstance: t -> symbol [@@js.get "hasInstance"]
    val get_isConcatSpreadable: t -> symbol [@@js.get "isConcatSpreadable"]
    val get_match: t -> symbol [@@js.get "match"]
    val get_replace: t -> symbol [@@js.get "replace"]
    val get_search: t -> symbol [@@js.get "search"]
    val get_species: t -> symbol [@@js.get "species"]
    val get_split: t -> symbol [@@js.get "split"]
    val get_toPrimitive: t -> symbol [@@js.get "toPrimitive"]
    val get_toStringTag: t -> symbol [@@js.get "toStringTag"]
    val get_unscopables: t -> symbol [@@js.get "unscopables"]
    val get_prototype: t -> _Symbol [@@js.get "prototype"]
    val apply: t -> ?description:string or_number -> unit -> symbol [@@js.apply]
    val for_: t -> key:string -> symbol [@@js.call "for"]
    val keyFor: t -> sym:symbol -> string or_undefined [@@js.call "keyFor"]
    val get_iterator: t -> symbol [@@js.get "iterator"]
  end
  module[@js.scope "IteratorYieldResult"] IteratorYieldResult : sig
    type 'TYield t = 'TYield _IteratorYieldResult
    val t_to_js: ('TYield -> Ojs.t) -> 'TYield t -> Ojs.t
    val t_of_js: (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t
    type 'TYield t_1 = 'TYield t
    val t_1_to_js: ('TYield -> Ojs.t) -> 'TYield t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t_1
    val get_done: 'TYield t -> ([`L_b_false[@js false]] [@js.enum]) [@@js.get "done"]
    val set_done: 'TYield t -> ([`L_b_false] [@js.enum]) -> unit [@@js.set "done"]
    val get_value: 'TYield t -> 'TYield [@@js.get "value"]
    val set_value: 'TYield t -> 'TYield -> unit [@@js.set "value"]
  end
  module[@js.scope "IteratorReturnResult"] IteratorReturnResult : sig
    type 'TReturn t = 'TReturn _IteratorReturnResult
    val t_to_js: ('TReturn -> Ojs.t) -> 'TReturn t -> Ojs.t
    val t_of_js: (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t
    type 'TReturn t_1 = 'TReturn t
    val t_1_to_js: ('TReturn -> Ojs.t) -> 'TReturn t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t_1
    val get_done: 'TReturn t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "done"]
    val set_done: 'TReturn t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "done"]
    val get_value: 'TReturn t -> 'TReturn [@@js.get "value"]
    val set_value: 'TReturn t -> 'TReturn -> unit [@@js.set "value"]
  end
  module IteratorResult : sig
    type ('T, 'TReturn) t = ('T, 'TReturn) _IteratorResult
    val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t
    type ('T, 'TReturn) t_2 = ('T, 'TReturn) t
    val t_2_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
  end
  module[@js.scope "Iterator"] Iterator : sig
    type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _Iterator
    val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t
    type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t
    val t_3_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t_3
    val next: ('T, 'TReturn, 'TNext) t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) _IteratorResult [@@js.call "next"]
    val return: ('T, 'TReturn, 'TNext) t -> ?value:'TReturn -> unit -> ('T, 'TReturn) _IteratorResult [@@js.call "return"]
    val throw: ('T, 'TReturn, 'TNext) t -> ?e:any -> unit -> ('T, 'TReturn) _IteratorResult [@@js.call "throw"]
  end
  module[@js.scope "Iterable"] Iterable : sig
    type 'T t = 'T _Iterable
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_iterator_: 'T t -> ('T, any, never or_undefined) _Iterator [@@js.call "[Symbol.iterator]"]
  end
  module[@js.scope "IterableIterator"] IterableIterator : sig
    type 'T t = 'T _IterableIterator
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_iterator_: 'T t -> 'T t [@@js.call "[Symbol.iterator]"]
    val cast: 'T t -> ('T, any, never or_undefined) _Iterator [@@js.cast]
  end
  module[@js.scope "IArguments"] IArguments : sig
    type t = _IArguments
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> any _IterableIterator [@@js.call "[Symbol.iterator]"]
  end
  module[@js.scope "Promise"] Promise : sig
    type 'T t = 'T _Promise
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get__Symbol_toStringTag_: 'T t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "PromiseConstructor"] PromiseConstructor : sig
    type t = _PromiseConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
    val get_prototype: t -> any _Promise [@@js.get "prototype"]
    val create: t -> executor:(resolve:(?value:('T, 'T PromiseLike.t_1) union2 -> unit -> unit) -> reject:(?reason:any -> unit -> unit) -> unit) -> 'T _Promise [@@js.apply_newable]
    val all: t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2 * ('T8, 'T8 PromiseLike.t_1) union2 * ('T9, 'T9 PromiseLike.t_1) union2 * ('T10, 'T10 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) _Promise [@@js.call "all"]
    val all': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2 * ('T8, 'T8 PromiseLike.t_1) union2 * ('T9, 'T9 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) _Promise [@@js.call "all"]
    val all'': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2 * ('T8, 'T8 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) _Promise [@@js.call "all"]
    val all''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) _Promise [@@js.call "all"]
    val all'''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) _Promise [@@js.call "all"]
    val all''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) _Promise [@@js.call "all"]
    val all'''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4) _Promise [@@js.call "all"]
    val all''''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3) _Promise [@@js.call "all"]
    val all'''''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2) -> ('T1 * 'T2) _Promise [@@js.call "all"]
    val all''''''''': t -> values:('T, 'T PromiseLike.t_1) union2 list -> 'T list _Promise [@@js.call "all"]
    val race: t -> values:'T list -> (* FIXME: unknown type 'T extends PromiseLike<infer U> ? U : T' *)any _Promise [@@js.call "race"]
    val race': t -> values:'T _Iterable -> (* FIXME: unknown type 'T extends PromiseLike<infer U> ? U : T' *)any _Promise [@@js.call "race"]
    val reject: t -> ?reason:any -> unit -> 'T _Promise [@@js.call "reject"]
    val resolve: t -> value:('T, 'T PromiseLike.t_1) union2 -> 'T _Promise [@@js.call "resolve"]
    val resolve': t -> unit _Promise [@@js.call "resolve"]
    val all'''''''''': t -> values:('TAll, 'TAll PromiseLike.t_1) union2 _Iterable -> 'TAll list _Promise [@@js.call "all"]
    val race'': t -> values:('T, 'T PromiseLike.t_1) union2 _Iterable -> 'T _Promise [@@js.call "race"]
  end
  module[@js.scope "Reflect"] Reflect : sig
    val enumerate: target:untyped_object -> any _IterableIterator [@@js.global "enumerate"]
    val apply_: target:_Function -> thisArgument:any -> argumentsList:any ArrayLike.t_1 -> any [@@js.global "apply"]
    val construct: target:_Function -> argumentsList:any ArrayLike.t_1 -> ?newTarget:any -> unit -> any [@@js.global "construct"]
    val defineProperty: target:untyped_object -> propertyKey:PropertyKey.t_0 -> attributes:PropertyDescriptor.t_0 -> bool [@@js.global "defineProperty"]
    val deleteProperty: target:untyped_object -> propertyKey:PropertyKey.t_0 -> bool [@@js.global "deleteProperty"]
    val get_: target:untyped_object -> propertyKey:PropertyKey.t_0 -> ?receiver:any -> unit -> any [@@js.global "get"]
    val getOwnPropertyDescriptor: target:untyped_object -> propertyKey:PropertyKey.t_0 -> PropertyDescriptor.t_0 or_undefined [@@js.global "getOwnPropertyDescriptor"]
    val getPrototypeOf: target:untyped_object -> untyped_object [@@js.global "getPrototypeOf"]
    val has: target:untyped_object -> propertyKey:PropertyKey.t_0 -> bool [@@js.global "has"]
    val isExtensible: target:untyped_object -> bool [@@js.global "isExtensible"]
    val ownKeys: target:untyped_object -> PropertyKey.t_0 list [@@js.global "ownKeys"]
    val preventExtensions: target:untyped_object -> bool [@@js.global "preventExtensions"]
    val set_: target:untyped_object -> propertyKey:PropertyKey.t_0 -> value:any -> ?receiver:any -> unit -> bool [@@js.global "set"]
    val setPrototypeOf: target:untyped_object -> proto:any -> bool [@@js.global "setPrototypeOf"]
  end
  module[@js.scope "Int8Array"] Int8Array : sig
    type t = _Int8Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s4_Int8Array[@js "Int8Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Int8ArrayConstructor"] Int8ArrayConstructor : sig
    type t = _Int8ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Int8Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Int8Array [@@js.call "from"]
  end
  module[@js.scope "Uint8Array"] Uint8Array : sig
    type t = _Uint8Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s9_UInt8Array[@js "UInt8Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Uint8ArrayConstructor"] Uint8ArrayConstructor : sig
    type t = _Uint8ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Uint8Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint8Array [@@js.call "from"]
  end
  module[@js.scope "Uint8ClampedArray"] Uint8ClampedArray : sig
    type t = _Uint8ClampedArray
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s12_Uint8ClampedArray[@js "Uint8ClampedArray"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Uint8ClampedArrayConstructor"] Uint8ClampedArrayConstructor : sig
    type t = _Uint8ClampedArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Uint8ClampedArray [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint8ClampedArray [@@js.call "from"]
  end
  module[@js.scope "Int16Array"] Int16Array : sig
    type t = _Int16Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s2_Int16Array[@js "Int16Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Int16ArrayConstructor"] Int16ArrayConstructor : sig
    type t = _Int16ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Int16Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Int16Array [@@js.call "from"]
  end
  module[@js.scope "Uint16Array"] Uint16Array : sig
    type t = _Uint16Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s10_Uint16Array[@js "Uint16Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Uint16ArrayConstructor"] Uint16ArrayConstructor : sig
    type t = _Uint16ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Uint16Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint16Array [@@js.call "from"]
  end
  module[@js.scope "Int32Array"] Int32Array : sig
    type t = _Int32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s3_Int32Array[@js "Int32Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Int32ArrayConstructor"] Int32ArrayConstructor : sig
    type t = _Int32ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Int32Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Int32Array [@@js.call "from"]
  end
  module[@js.scope "Uint32Array"] Uint32Array : sig
    type t = _Uint32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s11_Uint32Array[@js "Uint32Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Uint32ArrayConstructor"] Uint32ArrayConstructor : sig
    type t = _Uint32ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Uint32Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint32Array [@@js.call "from"]
  end
  module[@js.scope "Float32Array"] Float32Array : sig
    type t = _Float32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s0_Float32Array[@js "Float32Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Float32ArrayConstructor"] Float32ArrayConstructor : sig
    type t = _Float32ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Float32Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Float32Array [@@js.call "from"]
  end
  module[@js.scope "Float64Array"] Float64Array : sig
    type t = _Float64Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s1_Float64Array[@js "Float64Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    val values: t -> float _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "Float64ArrayConstructor"] Float64ArrayConstructor : sig
    type t = _Float64ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> elements:float _Iterable -> _Float64Array [@@js.apply_newable]
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Float64Array [@@js.call "from"]
  end
  val promise: _PromiseConstructor [@@js.global "Promise"]
  module[@js.scope "ProxyHandler"] ProxyHandler : sig
    type 'T t = 'T _ProxyHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val getPrototypeOf: 'T t -> target:'T -> untyped_object or_null [@@js.call "getPrototypeOf"]
    val setPrototypeOf: 'T t -> target:'T -> v:any -> bool [@@js.call "setPrototypeOf"]
    val isExtensible: 'T t -> target:'T -> bool [@@js.call "isExtensible"]
    val preventExtensions: 'T t -> target:'T -> bool [@@js.call "preventExtensions"]
    val getOwnPropertyDescriptor: 'T t -> target:'T -> p:PropertyKey.t_0 -> PropertyDescriptor.t_0 or_undefined [@@js.call "getOwnPropertyDescriptor"]
    val has: 'T t -> target:'T -> p:PropertyKey.t_0 -> bool [@@js.call "has"]
    val get_: 'T t -> target:'T -> p:PropertyKey.t_0 -> receiver:any -> any [@@js.call "get"]
    val set_: 'T t -> target:'T -> p:PropertyKey.t_0 -> value:any -> receiver:any -> bool [@@js.call "set"]
    val deleteProperty: 'T t -> target:'T -> p:PropertyKey.t_0 -> bool [@@js.call "deleteProperty"]
    val defineProperty: 'T t -> target:'T -> p:PropertyKey.t_0 -> attributes:PropertyDescriptor.t_0 -> bool [@@js.call "defineProperty"]
    val enumerate: 'T t -> target:'T -> PropertyKey.t_0 list [@@js.call "enumerate"]
    val ownKeys: 'T t -> target:'T -> PropertyKey.t_0 list [@@js.call "ownKeys"]
    val apply_: 'T t -> target:'T -> thisArg:any -> ?argArray:any -> unit -> any [@@js.call "apply"]
    val construct: 'T t -> target:'T -> argArray:any -> ?newTarget:any -> unit -> untyped_object [@@js.call "construct"]
  end
  module[@js.scope "ProxyConstructor"] ProxyConstructor : sig
    type t = _ProxyConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val revocable: t -> target:'T -> handler:'T _ProxyHandler -> anonymous_interface_2 [@@js.call "revocable"]
    val create: t -> target:'T -> handler:'T _ProxyHandler -> 'T [@@js.apply_newable]
  end
  val proxy: _ProxyConstructor [@@js.global "Proxy"]
  val symbol: _SymbolConstructor [@@js.global "Symbol"]
  module[@js.scope "Symbol"] Symbol : sig
    type t = _Symbol
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Date"] Date : sig
    type t = _Date
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_toPrimitive_: t -> hint:([`L_s13_default] [@js.enum]) -> string [@@js.call "[Symbol.toPrimitive]"]
    val _Symbol_toPrimitive_': t -> hint:([`L_s15_string] [@js.enum]) -> string [@@js.call "[Symbol.toPrimitive]"]
    val _Symbol_toPrimitive_'': t -> hint:([`L_s14_number] [@js.enum]) -> float [@@js.call "[Symbol.toPrimitive]"]
    val _Symbol_toPrimitive_''': t -> hint:string -> string or_number [@@js.call "[Symbol.toPrimitive]"]
  end
  module[@js.scope "JSON"] JSON : sig
    type t = _JSON
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "ArrayBuffer"] ArrayBuffer : sig
    type t = _ArrayBuffer
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "DataView"] DataView : sig
    type t = _DataView
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "ArrayBufferConstructor"] ArrayBufferConstructor : sig
    type t = _ArrayBufferConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
  end
end
