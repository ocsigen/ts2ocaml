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
      and 'T _Array = [`Array of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _Array = [`Array of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _ArrayBuffer = [`ArrayBuffer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ArrayBufferConstructor = [`ArrayBufferConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ArrayConstructor = [`ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ArrayConstructor = [`ArrayConstructor] intf
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
      and _Float32Array = [`Float32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float32ArrayConstructor = [`Float32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float64Array = [`Float64Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float64Array = [`Float64Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float64ArrayConstructor = [`Float64ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Function = untyped_function
      and _Function = untyped_function
      and ('T, 'TReturn, 'TNext) _Generator = [`Generator of ('T * 'TReturn * 'TNext) | `Iterator of ('T * 'TReturn * 'TNext)] intf
      [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
      and _GeneratorFunction = [`GeneratorFunction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _GeneratorFunction = [`GeneratorFunction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _GeneratorFunctionConstructor = [`GeneratorFunctionConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _IArguments = [`IArguments] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int16Array = [`Int16Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int16Array = [`Int16Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int16ArrayConstructor = [`Int16ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int32Array = [`Int32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int32Array = [`Int32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int32ArrayConstructor = [`Int32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int8Array = [`Int8Array] intf
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
      and ('K, 'V) _Map = [`Map of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and ('K, 'V) _Map = [`Map of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and _MapConstructor = [`MapConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MapConstructor = [`MapConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MapConstructor = [`MapConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Math = [`Math] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Math = [`Math] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _NumberConstructor = [`NumberConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ObjectConstructor = [`ObjectConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _Promise = [`Promise of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _Promise = [`Promise of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _PromiseConstructor = [`PromiseConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _PromiseConstructor = [`PromiseConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _PromiseConstructor = [`PromiseConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProxyConstructor = [`ProxyConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _ProxyHandler = [`ProxyHandler of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _ReadonlyArray = [`ReadonlyArray of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _ReadonlyArray = [`ReadonlyArray of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ('K, 'V) _ReadonlyMap = [`ReadonlyMap of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and ('K, 'V) _ReadonlyMap = [`ReadonlyMap of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and 'T _ReadonlySet = [`ReadonlySet of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _ReadonlySet = [`ReadonlySet of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _RegExp = regexp
      and _RegExp = regexp
      and _RegExpConstructor = [`RegExpConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _RegExpConstructor = [`RegExpConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _Set = [`Set of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _Set = [`Set of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _Set = [`Set of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _SetConstructor = [`SetConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SetConstructor = [`SetConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SetConstructor = [`SetConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StringConstructor = [`StringConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Symbol = symbol
      and _SymbolConstructor = [`SymbolConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SymbolConstructor = [`SymbolConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SymbolConstructor = [`SymbolConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint16Array = [`Uint16Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint16Array = [`Uint16Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint16ArrayConstructor = [`Uint16ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint32Array = [`Uint32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint32Array = [`Uint32Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint32ArrayConstructor = [`Uint32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8Array = [`Uint8Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8Array = [`Uint8Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ArrayConstructor = [`Uint8ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ClampedArray = [`Uint8ClampedArray] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ClampedArray = [`Uint8ClampedArray] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ClampedArrayConstructor = [`Uint8ClampedArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('K, 'V) _WeakMap = [`WeakMap of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and ('K, 'V) _WeakMap = [`WeakMap of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and ('K, 'V) _WeakMap = [`WeakMap of ('K * 'V)] intf
      [@@js.custom { of_js=(fun _K _V -> Obj.magic); to_js=(fun _K _V -> Obj.magic) }]
      and _WeakMapConstructor = [`WeakMapConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WeakMapConstructor = [`WeakMapConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _WeakSet = [`WeakSet of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _WeakSet = [`WeakSet of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _WeakSet = [`WeakSet of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _WeakSetConstructor = [`WeakSetConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
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
    val create: t -> (any, any) _Map [@@js.apply_newable]
    val create': t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _Map [@@js.apply_newable]
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
    val create: t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _WeakMap [@@js.apply_newable]
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
    val create: t -> ?values:'T list or_null -> unit -> 'T _Set [@@js.apply_newable]
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
    val create: t -> ?values:'T list or_null -> unit -> 'T _WeakSet [@@js.apply_newable]
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
    (**
      Returns the value of the first element in the array where predicate is true, and undefined
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found, find
      immediately returns that element value. Otherwise, find returns undefined.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
    val find: 'T t -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool) -> ?thisArg:any -> unit -> 'S or_undefined [@@js.call "find"]
    (**
      Returns the value of the first element in the array where predicate is true, and undefined
      otherwise.
    *)
    val find': 'T t -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> 'T or_undefined [@@js.call "find"]
    (**
      Returns the index of the first element in the array where predicate is true, and -1
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found,
      findIndex immediately returns that element index. Otherwise, findIndex returns -1.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
    val findIndex: 'T t -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
    (**
      Returns the this object after filling the section identified by start and end with value
      @param value value to fill array section with
      @param start index to start filling the array at. If start is negative, it is treated as
      length+start where length is the length of the array.
      @param end index to stop filling the array at. If end is negative, it is treated as
      length+end.
    *)
    val fill: 'T t -> value:'T -> ?start:float -> ?end_:float -> unit -> 'T t [@@js.call "fill"]
    (**
      Returns the this object after copying a section of the array identified by start and end
      to the same array starting at position target
      @param target If target is negative, it is treated as length+target where length is the
      length of the array.
      @param start If start is negative, it is treated as length+start. If end is negative, it
      is treated as length+end.
      @param end If not specified, length of the this object is used as its default value.
    *)
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
    (**
      Creates an array from an array-like object.
      @param arrayLike An array-like object to convert to an array.
    *)
    val from: t -> arrayLike:'T ArrayLike.t_1 -> 'T list [@@js.call "from"]
    (**
      Creates an array from an iterable object.
      @param arrayLike An array-like object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from': t -> arrayLike:'T ArrayLike.t_1 -> mapfn:(v:'T -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "from"]
    (**
      Returns a new array from a set of elements.
      @param items A set of elements to include in the new array object.
    *)
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
    (** Returns the name of the function. Function names are read-only and can not be changed. *)
    val get_name: t -> string [@@js.get "name"]
  end
  module[@js.scope "Math"] Math : sig
    type t = _Math
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Returns the number of leading zero bits in the 32-bit binary representation of a number.
      @param x A numeric expression.
    *)
    val clz32: t -> x:float -> float [@@js.call "clz32"]
    (**
      Returns the result of 32-bit multiplication of two numbers.
      @param x First number
      @param y Second number
    *)
    val imul: t -> x:float -> y:float -> float [@@js.call "imul"]
    (**
      Returns the sign of the x, indicating whether x is positive, negative or zero.
      @param x The numeric expression to test
    *)
    val sign: t -> x:float -> float [@@js.call "sign"]
    (**
      Returns the base 10 logarithm of a number.
      @param x A numeric expression.
    *)
    val log10: t -> x:float -> float [@@js.call "log10"]
    (**
      Returns the base 2 logarithm of a number.
      @param x A numeric expression.
    *)
    val log2: t -> x:float -> float [@@js.call "log2"]
    (**
      Returns the natural logarithm of 1 + x.
      @param x A numeric expression.
    *)
    val log1p: t -> x:float -> float [@@js.call "log1p"]
    (**
      Returns the result of (e^x - 1), which is an implementation-dependent approximation to
      subtracting 1 from the exponential function of x (e raised to the power of x, where e
      is the base of the natural logarithms).
      @param x A numeric expression.
    *)
    val expm1: t -> x:float -> float [@@js.call "expm1"]
    (**
      Returns the hyperbolic cosine of a number.
      @param x A numeric expression that contains an angle measured in radians.
    *)
    val cosh: t -> x:float -> float [@@js.call "cosh"]
    (**
      Returns the hyperbolic sine of a number.
      @param x A numeric expression that contains an angle measured in radians.
    *)
    val sinh: t -> x:float -> float [@@js.call "sinh"]
    (**
      Returns the hyperbolic tangent of a number.
      @param x A numeric expression that contains an angle measured in radians.
    *)
    val tanh: t -> x:float -> float [@@js.call "tanh"]
    (**
      Returns the inverse hyperbolic cosine of a number.
      @param x A numeric expression that contains an angle measured in radians.
    *)
    val acosh: t -> x:float -> float [@@js.call "acosh"]
    (**
      Returns the inverse hyperbolic sine of a number.
      @param x A numeric expression that contains an angle measured in radians.
    *)
    val asinh: t -> x:float -> float [@@js.call "asinh"]
    (**
      Returns the inverse hyperbolic tangent of a number.
      @param x A numeric expression that contains an angle measured in radians.
    *)
    val atanh: t -> x:float -> float [@@js.call "atanh"]
    (**
      Returns the square root of the sum of squares of its arguments.
      @param values Values to compute the square root for.
      If no arguments are passed, the result is +0.
      If there is only one argument, the result is the absolute value.
      If any argument is +Infinity or -Infinity, the result is +Infinity.
      If any argument is NaN, the result is NaN.
      If all arguments are either +0 or −0, the result is +0.
    *)
    val hypot: t -> values:(float list [@js.variadic]) -> float [@@js.call "hypot"]
    (**
      Returns the integral part of the a numeric expression, x, removing any fractional digits.
      If x is already an integer, the result is x.
      @param x A numeric expression.
    *)
    val trunc: t -> x:float -> float [@@js.call "trunc"]
    (**
      Returns the nearest single precision float representation of a number.
      @param x A numeric expression.
    *)
    val fround: t -> x:float -> float [@@js.call "fround"]
    (**
      Returns an implementation-dependent approximation to the cube root of number.
      @param x A numeric expression.
    *)
    val cbrt: t -> x:float -> float [@@js.call "cbrt"]
  end
  module[@js.scope "NumberConstructor"] NumberConstructor : sig
    type t = _NumberConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      The value of Number.EPSILON is the difference between 1 and the smallest value greater than 1
      that is representable as a Number value, which is approximately:
      2.2204460492503130808472633361816 x 10‍−‍16.
    *)
    val get_EPSILON: t -> float [@@js.get "EPSILON"]
    (**
      Returns true if passed value is finite.
      Unlike the global isFinite, Number.isFinite doesn't forcibly convert the parameter to a
      number. Only finite values of the type number, result in true.
      @param number A numeric value.
    *)
    val isFinite: t -> number:unknown -> bool [@@js.call "isFinite"]
    (**
      Returns true if the value passed is an integer, false otherwise.
      @param number A numeric value.
    *)
    val isInteger: t -> number:unknown -> bool [@@js.call "isInteger"]
    (**
      Returns a Boolean value that indicates whether a value is the reserved value NaN (not a
      number). Unlike the global isNaN(), Number.isNaN() doesn't forcefully convert the parameter
      to a number. Only values of the type number, that are also NaN, result in true.
      @param number A numeric value.
    *)
    val isNaN: t -> number:unknown -> bool [@@js.call "isNaN"]
    (**
      Returns true if the value passed is a safe integer.
      @param number A numeric value.
    *)
    val isSafeInteger: t -> number:unknown -> bool [@@js.call "isSafeInteger"]
    (**
      The value of the largest integer n such that n and n + 1 are both exactly representable as
      a Number value.
      The value of Number.MAX_SAFE_INTEGER is 9007199254740991 2^53 − 1.
    *)
    val get_MAX_SAFE_INTEGER: t -> float [@@js.get "MAX_SAFE_INTEGER"]
    (**
      The value of the smallest integer n such that n and n − 1 are both exactly representable as
      a Number value.
      The value of Number.MIN_SAFE_INTEGER is −9007199254740991 (−(2^53 − 1)).
    *)
    val get_MIN_SAFE_INTEGER: t -> float [@@js.get "MIN_SAFE_INTEGER"]
    (**
      Converts a string to a floating-point number.
      @param string A string that contains a floating-point number.
    *)
    val parseFloat: t -> string:string -> float [@@js.call "parseFloat"]
    (**
      Converts A string to an integer.
      @param s A string to convert into a number.
      @param radix A value between 2 and 36 that specifies the base of the number in numString.
      If this argument is not supplied, strings with a prefix of '0x' are considered hexadecimal.
      All other strings are considered decimal.
    *)
    val parseInt: t -> string:string -> ?radix:float -> unit -> float [@@js.call "parseInt"]
  end
  module[@js.scope "ObjectConstructor"] ObjectConstructor : sig
    type t = _ObjectConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Copy the values of all of the enumerable own properties from one or more source objects to a
      target object. Returns the target object.
      @param target The target object to copy to.
      @param source The source object from which to copy properties.
    *)
    val assign: t -> target:'T -> source:'U -> ('T, 'U) intersection2 [@@js.call "assign"]
    (**
      Copy the values of all of the enumerable own properties from one or more source objects to a
      target object. Returns the target object.
      @param target The target object to copy to.
      @param source1 The first source object from which to copy properties.
      @param source2 The second source object from which to copy properties.
    *)
    val assign': t -> target:'T -> source1:'U -> source2:'V -> ('T, 'U, 'V) intersection3 [@@js.call "assign"]
    (**
      Copy the values of all of the enumerable own properties from one or more source objects to a
      target object. Returns the target object.
      @param target The target object to copy to.
      @param source1 The first source object from which to copy properties.
      @param source2 The second source object from which to copy properties.
      @param source3 The third source object from which to copy properties.
    *)
    val assign'': t -> target:'T -> source1:'U -> source2:'V -> source3:'W -> ('T, 'U, 'V, 'W) intersection4 [@@js.call "assign"]
    (**
      Copy the values of all of the enumerable own properties from one or more source objects to a
      target object. Returns the target object.
      @param target The target object to copy to.
      @param sources One or more source objects from which to copy properties
    *)
    val assign''': t -> target:untyped_object -> sources:(any list [@js.variadic]) -> any [@@js.call "assign"]
    (**
      Returns an array of all symbol properties found directly on object o.
      @param o Object to retrieve the symbols from.
    *)
    val getOwnPropertySymbols: t -> o:any -> symbol list [@@js.call "getOwnPropertySymbols"]
    (**
      Returns the names of the enumerable string properties and methods of an object.
      @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
    *)
    val keys: t -> o:anonymous_interface_0 -> string list [@@js.call "keys"]
    (**
      Returns true if the values are the same value, false otherwise.
      @param value1 The first value.
      @param value2 The second value.
    *)
    val is: t -> value1:any -> value2:any -> bool [@@js.call "is"]
    (**
      Sets the prototype of a specified object o to object proto or null. Returns the object o.
      @param o The object to change its prototype.
      @param proto The value of the new prototype or null.
    *)
    val setPrototypeOf: t -> o:any -> proto:untyped_object or_null -> any [@@js.call "setPrototypeOf"]
  end
  module[@js.scope "ReadonlyArray"] ReadonlyArray : sig
    type 'T t = 'T _ReadonlyArray
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    (**
      Returns the value of the first element in the array where predicate is true, and undefined
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found, find
      immediately returns that element value. Otherwise, find returns undefined.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
    val find: 'T t -> predicate:(this:unit -> value:'T -> index:float -> obj:'T list -> bool) -> ?thisArg:any -> unit -> 'S or_undefined [@@js.call "find"]
    (**
      Returns the value of the first element in the array where predicate is true, and undefined
      otherwise.
    *)
    val find': 'T t -> predicate:(value:'T -> index:float -> obj:'T list -> unknown) -> ?thisArg:any -> unit -> 'T or_undefined [@@js.call "find"]
    (**
      Returns the index of the first element in the array where predicate is true, and -1
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found,
      findIndex immediately returns that element index. Otherwise, findIndex returns -1.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
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
    (**
      Returns a string indicating the flags of the regular expression in question. This field is read-only.
      The characters in this string are sequenced and concatenated in the following order:
      
         - "g" for global
         - "i" for ignoreCase
         - "m" for multiline
         - "u" for unicode
         - "y" for sticky
      
      If no flags are set, the value is the empty string.
    *)
    val get_flags: t -> string [@@js.get "flags"]
    (**
      Returns a Boolean value indicating the state of the sticky flag (y) used with a regular
      expression. Default is false. Read-only.
    *)
    val get_sticky: t -> bool [@@js.get "sticky"]
    (**
      Returns a Boolean value indicating the state of the Unicode flag (u) used with a regular
      expression. Default is false. Read-only.
    *)
    val get_unicode: t -> bool [@@js.get "unicode"]
  end
  module[@js.scope "RegExpConstructor"] RegExpConstructor : sig
    type t = _RegExpConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
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
    (**
      Returns a nonnegative integer Number less than 1114112 (0x110000) that is the code point
      value of the UTF-16 encoded code point starting at the string element at position pos in
      the String resulting from converting this object to a String.
      If there is no element at that position, the result is undefined.
      If a valid UTF-16 surrogate pair does not begin at pos, the result is the code unit at pos.
    *)
    val codePointAt: t -> pos:float -> float or_undefined [@@js.call "codePointAt"]
    (**
      Returns true if searchString appears as a substring of the result of converting this
      object to a String, at one or more positions that are
      greater than or equal to position; otherwise, returns false.
      @param searchString search string
      @param position If position is undefined, 0 is assumed, so as to search all of the String.
    *)
    val includes: t -> searchString:string -> ?position:float -> unit -> bool [@@js.call "includes"]
    (**
      Returns true if the sequence of elements of searchString converted to a String is the
      same as the corresponding elements of this object (converted to a String) starting at
      endPosition – length(this). Otherwise returns false.
    *)
    val endsWith: t -> searchString:string -> ?endPosition:float -> unit -> bool [@@js.call "endsWith"]
    (**
      Returns the String value result of normalizing the string into the normalization form
      named by form as specified in Unicode Standard Annex #15, Unicode Normalization Forms.
      @param form Applicable values: "NFC", "NFD", "NFKC", or "NFKD", If not specified default
      is "NFC"
    *)
    val normalize: t -> form:([`L_s5_NFC | `L_s6_NFD | `L_s7_NFKC | `L_s8_NFKD] [@js.enum]) -> string [@@js.call "normalize"]
    (**
      Returns the String value result of normalizing the string into the normalization form
      named by form as specified in Unicode Standard Annex #15, Unicode Normalization Forms.
      @param form Applicable values: "NFC", "NFD", "NFKC", or "NFKD", If not specified default
      is "NFC"
    *)
    val normalize': t -> ?form:string -> unit -> string [@@js.call "normalize"]
    (**
      Returns a String value that is made from count copies appended together. If count is 0,
      the empty string is returned.
      @param count number of copies to append
    *)
    val repeat: t -> count:float -> string [@@js.call "repeat"]
    (**
      Returns true if the sequence of elements of searchString converted to a String is the
      same as the corresponding elements of this object (converted to a String) starting at
      position. Otherwise returns false.
    *)
    val startsWith: t -> searchString:string -> ?position:float -> unit -> bool [@@js.call "startsWith"]
    (**
      Returns an `<a>` HTML anchor element and sets the name attribute to the text value
      @param name 
    *)
    val anchor: t -> name:string -> string [@@js.call "anchor"]
    (** Returns a `<big>` HTML element *)
    val big: t -> string [@@js.call "big"]
    (** Returns a `<blink>` HTML element *)
    val blink: t -> string [@@js.call "blink"]
    (** Returns a `<b>` HTML element *)
    val bold: t -> string [@@js.call "bold"]
    (** Returns a `<tt>` HTML element *)
    val fixed: t -> string [@@js.call "fixed"]
    (** Returns a `<font>` HTML element and sets the color attribute value *)
    val fontcolor: t -> color:string -> string [@@js.call "fontcolor"]
    (** Returns a `<font>` HTML element and sets the size attribute value *)
    val fontsize: t -> size:float -> string [@@js.call "fontsize"]
    (** Returns a `<font>` HTML element and sets the size attribute value *)
    val fontsize': t -> size:string -> string [@@js.call "fontsize"]
    (** Returns an `<i>` HTML element *)
    val italics: t -> string [@@js.call "italics"]
    (** Returns an `<a>` HTML element and sets the href attribute value *)
    val link: t -> url:string -> string [@@js.call "link"]
    (** Returns a `<small>` HTML element *)
    val small: t -> string [@@js.call "small"]
    (** Returns a `<strike>` HTML element *)
    val strike: t -> string [@@js.call "strike"]
    (** Returns a `<sub>` HTML element *)
    val sub: t -> string [@@js.call "sub"]
    (** Returns a `<sup>` HTML element *)
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
    (**
      Return the String value whose elements are, in order, the elements in the List elements.
      If length is 0, the empty string is returned.
    *)
    val fromCodePoint: t -> codePoints:(float list [@js.variadic]) -> string [@@js.call "fromCodePoint"]
    (**
      String.raw is intended for use as a tag function of a Tagged Template String. When called
      as such the first argument will be a well formed template call site object and the rest
      parameter will contain the substitution values.
      @param template A well-formed template string call site representation.
      @param substitutions A set of substitution values.
    *)
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
    (**
      Creates a new Generator object.
      @param args A list of arguments the function accepts.
    *)
    val create: t -> args:(any list [@js.variadic]) -> (unknown, any, unknown) _Generator [@@js.apply_newable]
    (**
      Creates a new Generator object.
      @param args A list of arguments the function accepts.
    *)
    val apply: t -> args:(any list [@js.variadic]) -> (unknown, any, unknown) _Generator [@@js.apply]
    (** The length of the arguments. *)
    val get_length: t -> float [@@js.get "length"]
    (** Returns the name of the function. *)
    val get_name: t -> string [@@js.get "name"]
    (** A reference to the prototype. *)
    val get_prototype: t -> (unknown, any, unknown) _Generator [@@js.get "prototype"]
  end
  module[@js.scope "GeneratorFunctionConstructor"] GeneratorFunctionConstructor : sig
    type t = _GeneratorFunctionConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Creates a new Generator function.
      @param args A list of arguments the function accepts.
    *)
    val create: t -> args:(string list [@js.variadic]) -> _GeneratorFunction [@@js.apply_newable]
    (**
      Creates a new Generator function.
      @param args A list of arguments the function accepts.
    *)
    val apply: t -> args:(string list [@js.variadic]) -> _GeneratorFunction [@@js.apply]
    (** The length of the arguments. *)
    val get_length: t -> float [@@js.get "length"]
    (** Returns the name of the function. *)
    val get_name: t -> string [@@js.get "name"]
    (** A reference to the prototype. *)
    val get_prototype: t -> _GeneratorFunction [@@js.get "prototype"]
  end
  module[@js.scope "SymbolConstructor"] SymbolConstructor : sig
    type t = _SymbolConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      A method that returns the default iterator for an object. Called by the semantics of the
      for-of statement.
    *)
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
  module[@js.scope "Array"] Array : sig
    type 'T t = 'T _Array
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    (** Iterator *)
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an iterable of key, value pairs for every entry in the array *)
    val entries: 'T t -> (float * 'T) _IterableIterator [@@js.call "entries"]
    (** Returns an iterable of keys in the array *)
    val keys: 'T t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an iterable of values in the array *)
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
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
    (**
      Creates an array from an iterable object.
      @param iterable An iterable object to convert to an array.
    *)
    val from: t -> iterable:('T ArrayLike.t_1, 'T _Iterable) union2 -> 'T list [@@js.call "from"]
    (**
      Creates an array from an iterable object.
      @param iterable An iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from': t -> iterable:('T ArrayLike.t_1, 'T _Iterable) union2 -> mapfn:(v:'T -> k:float -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "from"]
  end
  module[@js.scope "ReadonlyArray"] ReadonlyArray : sig
    type 'T t = 'T _ReadonlyArray
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    (** Iterator of values in the array. *)
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an iterable of key, value pairs for every entry in the array *)
    val entries: 'T t -> (float * 'T) _IterableIterator [@@js.call "entries"]
    (** Returns an iterable of keys in the array *)
    val keys: 'T t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an iterable of values in the array *)
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
    val to_ml: 'T t -> 'T list [@@js.cast]
    val of_ml: 'T list -> 'T t [@@js.cast]
  end
  module[@js.scope "IArguments"] IArguments : sig
    type t = _IArguments
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** Iterator *)
    val _Symbol_iterator_: t -> any _IterableIterator [@@js.call "[Symbol.iterator]"]
  end
  module[@js.scope "Map"] Map : sig
    type ('K, 'V) t = ('K, 'V) _Map
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    (** Returns an iterable of entries in the map. *)
    val _Symbol_iterator_: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an iterable of key, value pairs for every entry in the map. *)
    val entries: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "entries"]
    (** Returns an iterable of keys in the map *)
    val keys: ('K, 'V) t -> 'K _IterableIterator [@@js.call "keys"]
    (** Returns an iterable of values in the map *)
    val values: ('K, 'V) t -> 'V _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "ReadonlyMap"] ReadonlyMap : sig
    type ('K, 'V) t = ('K, 'V) _ReadonlyMap
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    (** Returns an iterable of entries in the map. *)
    val _Symbol_iterator_: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an iterable of key, value pairs for every entry in the map. *)
    val entries: ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "entries"]
    (** Returns an iterable of keys in the map *)
    val keys: ('K, 'V) t -> 'K _IterableIterator [@@js.call "keys"]
    (** Returns an iterable of values in the map *)
    val values: ('K, 'V) t -> 'V _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "MapConstructor"] MapConstructor : sig
    type t = _MapConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> iterable:('K * 'V) _Iterable -> ('K, 'V) _Map [@@js.apply_newable]
  end
  module WeakMap : sig
    type ('K, 'V) t = ('K, 'V) _WeakMap
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
  end
  module[@js.scope "WeakMapConstructor"] WeakMapConstructor : sig
    type t = _WeakMapConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> iterable:('K * 'V) _Iterable -> ('K, 'V) _WeakMap [@@js.apply_newable]
  end
  module[@js.scope "Set"] Set : sig
    type 'T t = 'T _Set
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    (** Iterates over values in the set. *)
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an iterable of \[v,v\] pairs for every value `v` in the set. *)
    val entries: 'T t -> ('T * 'T) _IterableIterator [@@js.call "entries"]
    (** Despite its name, returns an iterable of the values in the set. *)
    val keys: 'T t -> 'T _IterableIterator [@@js.call "keys"]
    (** Returns an iterable of values in the set. *)
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "ReadonlySet"] ReadonlySet : sig
    type 'T t = 'T _ReadonlySet
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    (** Iterates over values in the set. *)
    val _Symbol_iterator_: 'T t -> 'T _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an iterable of \[v,v\] pairs for every value `v` in the set. *)
    val entries: 'T t -> ('T * 'T) _IterableIterator [@@js.call "entries"]
    (** Despite its name, returns an iterable of the values in the set. *)
    val keys: 'T t -> 'T _IterableIterator [@@js.call "keys"]
    (** Returns an iterable of values in the set. *)
    val values: 'T t -> 'T _IterableIterator [@@js.call "values"]
  end
  module[@js.scope "SetConstructor"] SetConstructor : sig
    type t = _SetConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> ?iterable:'T _Iterable or_null -> unit -> 'T _Set [@@js.apply_newable]
  end
  module WeakSet : sig
    type 'T t = 'T _WeakSet
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  end
  module[@js.scope "WeakSetConstructor"] WeakSetConstructor : sig
    type t = _WeakSetConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> iterable:'T _Iterable -> 'T _WeakSet [@@js.apply_newable]
  end
  module Promise : sig
    type 'T t = 'T _Promise
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
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An iterable of Promises.
      @return A new Promise.
    *)
    val all: t -> values:('T, 'T PromiseLike.t_1) union2 _Iterable -> 'T list _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
      or rejected.
      @param values An iterable of Promises.
      @return A new Promise.
    *)
    val race: t -> values:'T _Iterable -> (* FIXME: unknown type 'T extends PromiseLike<infer U> ? U : T' *)any _Promise [@@js.call "race"]
    (**
      Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
      or rejected.
      @param values An iterable of Promises.
      @return A new Promise.
    *)
    val race': t -> values:('T, 'T PromiseLike.t_1) union2 _Iterable -> 'T _Promise [@@js.call "race"]
  end
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** Iterator *)
    val _Symbol_iterator_: t -> string _IterableIterator [@@js.call "[Symbol.iterator]"]
    val to_ml: t -> string [@@js.cast]
    val of_ml: string -> t [@@js.cast]
  end
  module[@js.scope "Int8Array"] Int8Array : sig
    type t = _Int8Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Int8Array [@@js.call "from"]
  end
  module[@js.scope "Uint8Array"] Uint8Array : sig
    type t = _Uint8Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint8Array [@@js.call "from"]
  end
  module[@js.scope "Uint8ClampedArray"] Uint8ClampedArray : sig
    type t = _Uint8ClampedArray
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint8ClampedArray [@@js.call "from"]
  end
  module[@js.scope "Int16Array"] Int16Array : sig
    type t = _Int16Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Int16Array [@@js.call "from"]
  end
  module[@js.scope "Uint16Array"] Uint16Array : sig
    type t = _Uint16Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint16Array [@@js.call "from"]
  end
  module[@js.scope "Int32Array"] Int32Array : sig
    type t = _Int32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Int32Array [@@js.call "from"]
  end
  module[@js.scope "Uint32Array"] Uint32Array : sig
    type t = _Uint32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Uint32Array [@@js.call "from"]
  end
  module[@js.scope "Float32Array"] Float32Array : sig
    type t = _Float32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Float32Array [@@js.call "from"]
  end
  module[@js.scope "Float64Array"] Float64Array : sig
    type t = _Float64Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val _Symbol_iterator_: t -> float _IterableIterator [@@js.call "[Symbol.iterator]"]
    (** Returns an array of key, value pairs for every entry in the array *)
    val entries: t -> (float * float) _IterableIterator [@@js.call "entries"]
    (** Returns an list of keys in the array *)
    val keys: t -> float _IterableIterator [@@js.call "keys"]
    (** Returns an list of values in the array *)
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
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:float _Iterable -> ?mapfn:(v:float -> k:float -> float) -> ?thisArg:any -> unit -> _Float64Array [@@js.call "from"]
  end
  module[@js.scope "PromiseConstructor"] PromiseConstructor : sig
    type t = _PromiseConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** A reference to the prototype. *)
    val get_prototype: t -> any _Promise [@@js.get "prototype"]
    (**
      Creates a new Promise.
      @param executor A callback used to initialize the promise. This callback is passed two arguments:
      a resolve callback used to resolve the promise with a value or the result of another promise,
      and a reject callback used to reject the promise with a provided reason or error.
    *)
    val create: t -> executor:(resolve:(value:('T, 'T PromiseLike.t_1) union2 -> unit) -> reject:(?reason:any -> unit -> unit) -> unit) -> 'T _Promise [@@js.apply_newable]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all: t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2 * ('T8, 'T8 PromiseLike.t_1) union2 * ('T9, 'T9 PromiseLike.t_1) union2 * ('T10, 'T10 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2 * ('T8, 'T8 PromiseLike.t_1) union2 * ('T9, 'T9 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all'': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2 * ('T8, 'T8 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2 * ('T7, 'T7 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all'''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2 * ('T6, 'T6 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2 * ('T5, 'T5 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all'''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2 * ('T4, 'T4 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3 * 'T4) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all''''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2 * ('T3, 'T3 PromiseLike.t_1) union2) -> ('T1 * 'T2 * 'T3) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all'''''''': t -> values:(('T1, 'T1 PromiseLike.t_1) union2 * ('T2, 'T2 PromiseLike.t_1) union2) -> ('T1 * 'T2) _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved with an array of results when all of the provided Promises
      resolve, or rejected when any Promise is rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val all''''''''': t -> values:('T, 'T PromiseLike.t_1) union2 list -> 'T list _Promise [@@js.call "all"]
    (**
      Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
      or rejected.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val race: t -> values:'T list -> (* FIXME: unknown type 'T extends PromiseLike<infer U> ? U : T' *)any _Promise [@@js.call "race"]
    (**
      Creates a new rejected promise for the provided reason.
      @param reason The reason the promise was rejected.
      @return A new rejected Promise.
    *)
    val reject: t -> ?reason:any -> unit -> 'T _Promise [@@js.call "reject"]
    (**
      Creates a new resolved promise.
      @return A resolved promise.
    *)
    val resolve: t -> unit _Promise [@@js.call "resolve"]
    (**
      Creates a new resolved promise for the provided value.
      @param value A promise.
      @return A promise whose internal state matches the provided promise.
    *)
    val resolve': t -> value:('T, 'T PromiseLike.t_1) union2 -> 'T _Promise [@@js.call "resolve"]
  end
  val promise: _PromiseConstructor [@@js.global "Promise"]
  module[@js.scope "ProxyHandler"] ProxyHandler : sig
    type 'T t = 'T _ProxyHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val apply_: 'T t -> target:'T -> thisArg:any -> argArray:any list -> any [@@js.call "apply"]
    val construct: 'T t -> target:'T -> argArray:any list -> newTarget:_Function -> untyped_object [@@js.call "construct"]
    val defineProperty: 'T t -> target:'T -> p:symbol or_string -> attributes:PropertyDescriptor.t_0 -> bool [@@js.call "defineProperty"]
    val deleteProperty: 'T t -> target:'T -> p:symbol or_string -> bool [@@js.call "deleteProperty"]
    val get_: 'T t -> target:'T -> p:symbol or_string -> receiver:any -> any [@@js.call "get"]
    val getOwnPropertyDescriptor: 'T t -> target:'T -> p:symbol or_string -> PropertyDescriptor.t_0 or_undefined [@@js.call "getOwnPropertyDescriptor"]
    val getPrototypeOf: 'T t -> target:'T -> untyped_object or_null [@@js.call "getPrototypeOf"]
    val has: 'T t -> target:'T -> p:symbol or_string -> bool [@@js.call "has"]
    val isExtensible: 'T t -> target:'T -> bool [@@js.call "isExtensible"]
    val ownKeys: 'T t -> target:'T -> symbol or_string ArrayLike.t_1 [@@js.call "ownKeys"]
    val preventExtensions: 'T t -> target:'T -> bool [@@js.call "preventExtensions"]
    val set_: 'T t -> target:'T -> p:symbol or_string -> value:any -> receiver:any -> bool [@@js.call "set"]
    val setPrototypeOf: 'T t -> target:'T -> v:untyped_object or_null -> bool [@@js.call "setPrototypeOf"]
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
  module[@js.scope "Reflect"] Reflect : sig
    (**
      Calls the function with the specified object as the this value
      and the elements of specified array as the arguments.
      @param target The function to call.
      @param thisArgument The object to be used as the this object.
      @param argumentsList An array of argument values to be passed to the function.
    *)
    val apply_: target:_Function -> thisArgument:any -> argumentsList:any ArrayLike.t_1 -> any [@@js.global "apply"]
    (**
      Constructs the target with the elements of specified array as the arguments
      and the specified constructor as the `new.target` value.
      @param target The constructor to invoke.
      @param argumentsList An array of argument values to be passed to the constructor.
      @param newTarget The constructor to be used as the `new.target` object.
    *)
    val construct: target:_Function -> argumentsList:any ArrayLike.t_1 -> ?newTarget:_Function -> unit -> any [@@js.global "construct"]
    (**
      Adds a property to an object, or modifies attributes of an existing property.
      @param target Object on which to add or modify the property. This can be a native JavaScript object
      (that is, a user-defined object or a built in object) or a DOM object.
      @param propertyKey The property name.
      @param attributes Descriptor for the property. It can be for a data property or an accessor property.
    *)
    val defineProperty: target:untyped_object -> propertyKey:PropertyKey.t_0 -> attributes:PropertyDescriptor.t_0 -> bool [@@js.global "defineProperty"]
    (**
      Removes a property from an object, equivalent to `delete target\[propertyKey\]`,
      except it won't throw if `target\[propertyKey\]` is non-configurable.
      @param target Object from which to remove the own property.
      @param propertyKey The property name.
    *)
    val deleteProperty: target:untyped_object -> propertyKey:PropertyKey.t_0 -> bool [@@js.global "deleteProperty"]
    (**
      Gets the property of target, equivalent to `target\[propertyKey\]` when `receiver === target`.
      @param target Object that contains the property on itself or in its prototype chain.
      @param propertyKey The property name.
      @param receiver The reference to use as the `this` value in the getter function,
      if `target\[propertyKey\]` is an accessor property.
    *)
    val get_: target:untyped_object -> propertyKey:PropertyKey.t_0 -> ?receiver:any -> unit -> any [@@js.global "get"]
    (**
      Gets the own property descriptor of the specified object.
      An own property descriptor is one that is defined directly on the object and is not inherited from the object's prototype.
      @param target Object that contains the property.
      @param propertyKey The property name.
    *)
    val getOwnPropertyDescriptor: target:untyped_object -> propertyKey:PropertyKey.t_0 -> PropertyDescriptor.t_0 or_undefined [@@js.global "getOwnPropertyDescriptor"]
    (**
      Returns the prototype of an object.
      @param target The object that references the prototype.
    *)
    val getPrototypeOf: target:untyped_object -> untyped_object or_null [@@js.global "getPrototypeOf"]
    (**
      Equivalent to `propertyKey in target`.
      @param target Object that contains the property on itself or in its prototype chain.
      @param propertyKey Name of the property.
    *)
    val has: target:untyped_object -> propertyKey:PropertyKey.t_0 -> bool [@@js.global "has"]
    (**
      Returns a value that indicates whether new properties can be added to an object.
      @param target Object to test.
    *)
    val isExtensible: target:untyped_object -> bool [@@js.global "isExtensible"]
    (**
      Returns the string and symbol keys of the own properties of an object. The own properties of an object
      are those that are defined directly on that object, and are not inherited from the object's prototype.
      @param target Object that contains the own properties.
    *)
    val ownKeys: target:untyped_object -> symbol or_string list [@@js.global "ownKeys"]
    (**
      Prevents the addition of new properties to an object.
      @param target Object to make non-extensible.
      @return Whether the object has been made non-extensible.
    *)
    val preventExtensions: target:untyped_object -> bool [@@js.global "preventExtensions"]
    (**
      Sets the property of target, equivalent to `target\[propertyKey\] = value` when `receiver === target`.
      @param target Object that contains the property on itself or in its prototype chain.
      @param propertyKey Name of the property.
      @param receiver The reference to use as the `this` value in the setter function,
      if `target\[propertyKey\]` is an accessor property.
    *)
    val set_: target:untyped_object -> propertyKey:PropertyKey.t_0 -> value:any -> ?receiver:any -> unit -> bool [@@js.global "set"]
    (**
      Sets the prototype of a specified object o to object proto or null.
      @param target The object to change its prototype.
      @param proto The value of the new prototype or null.
      @return Whether setting the prototype was successful.
    *)
    val setPrototypeOf: target:untyped_object -> proto:untyped_object or_null -> bool [@@js.global "setPrototypeOf"]
  end
  module[@js.scope "SymbolConstructor"] SymbolConstructor : sig
    type t = _SymbolConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** A reference to the prototype. *)
    val get_prototype: t -> _Symbol [@@js.get "prototype"]
    (**
      Returns a new unique Symbol value.
      @param description Description of the new Symbol object.
    *)
    val apply: t -> ?description:string or_number -> unit -> symbol [@@js.apply]
    (**
      Returns a Symbol object from the global symbol registry matching the given key if found.
      Otherwise, returns a new symbol with this key.
      @param key key to search for.
    *)
    val for_: t -> key:string -> symbol [@@js.call "for"]
    (**
      Returns a key from the global symbol registry matching the given Symbol if found.
      Otherwise, returns a undefined.
      @param sym Symbol to find the key for.
    *)
    val keyFor: t -> sym:symbol -> string or_undefined [@@js.call "keyFor"]
  end
  val symbol: _SymbolConstructor [@@js.global "Symbol"]
  module[@js.scope "SymbolConstructor"] SymbolConstructor : sig
    type t = _SymbolConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      A method that determines if a constructor object recognizes an object as one of the
      constructor’s instances. Called by the semantics of the instanceof operator.
    *)
    val get_hasInstance: t -> symbol [@@js.get "hasInstance"]
    (**
      A Boolean value that if true indicates that an object should flatten to its array elements
      by Array.prototype.concat.
    *)
    val get_isConcatSpreadable: t -> symbol [@@js.get "isConcatSpreadable"]
    (**
      A regular expression method that matches the regular expression against a string. Called
      by the String.prototype.match method.
    *)
    val get_match: t -> symbol [@@js.get "match"]
    (**
      A regular expression method that replaces matched substrings of a string. Called by the
      String.prototype.replace method.
    *)
    val get_replace: t -> symbol [@@js.get "replace"]
    (**
      A regular expression method that returns the index within a string that matches the
      regular expression. Called by the String.prototype.search method.
    *)
    val get_search: t -> symbol [@@js.get "search"]
    (**
      A function valued property that is the constructor function that is used to create
      derived objects.
    *)
    val get_species: t -> symbol [@@js.get "species"]
    (**
      A regular expression method that splits a string at the indices that match the regular
      expression. Called by the String.prototype.split method.
    *)
    val get_split: t -> symbol [@@js.get "split"]
    (**
      A method that converts an object to a corresponding primitive value.
      Called by the ToPrimitive abstract operation.
    *)
    val get_toPrimitive: t -> symbol [@@js.get "toPrimitive"]
    (**
      A String value that is used in the creation of the default string description of an object.
      Called by the built-in method Object.prototype.toString.
    *)
    val get_toStringTag: t -> symbol [@@js.get "toStringTag"]
    (**
      An Object whose own property names are property names that are excluded from the 'with'
      environment bindings of the associated objects.
    *)
    val get_unscopables: t -> symbol [@@js.get "unscopables"]
  end
  module[@js.scope "Symbol"] Symbol : sig
    type t = _Symbol
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** Converts a Symbol object to a symbol. *)
    val _Symbol_toPrimitive_: t -> hint:string -> symbol [@@js.call "[Symbol.toPrimitive]"]
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Array"] Array : sig
    type 'T t = 'T _Array
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    (**
      Returns an object whose properties have the value 'true'
      when they will be absent when used in a 'with' statement.
    *)
    val _Symbol_unscopables_: 'T t -> anonymous_interface_1 [@@js.call "[Symbol.unscopables]"]
    val to_ml: 'T t -> 'T list [@@js.cast]
    val of_ml: 'T list -> 'T t [@@js.cast]
  end
  module[@js.scope "Date"] Date : sig
    type t = _Date
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** Converts a Date object to a string. *)
    val _Symbol_toPrimitive_: t -> hint:([`L_s13_default] [@js.enum]) -> string [@@js.call "[Symbol.toPrimitive]"]
    (** Converts a Date object to a string. *)
    val _Symbol_toPrimitive_': t -> hint:([`L_s15_string] [@js.enum]) -> string [@@js.call "[Symbol.toPrimitive]"]
    (** Converts a Date object to a number. *)
    val _Symbol_toPrimitive_'': t -> hint:([`L_s14_number] [@js.enum]) -> float [@@js.call "[Symbol.toPrimitive]"]
    (**
      Converts a Date object to a string or number.
      @param hint The strings "number", "string", or "default" to specify what primitive to return.
      @raise exn \{TypeError\} If 'hint' was given something other than "number", "string", or "default".
      @return A number if 'hint' was "number", a string if 'hint' was "string" or "default".
    *)
    val _Symbol_toPrimitive_''': t -> hint:string -> string or_number [@@js.call "[Symbol.toPrimitive]"]
  end
  module[@js.scope "Map"] Map : sig
    type ('K, 'V) t = ('K, 'V) _Map
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    val get__Symbol_toStringTag_: ('K, 'V) t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "WeakMap"] WeakMap : sig
    type ('K, 'V) t = ('K, 'V) _WeakMap
    val t_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    type ('K, 'V) t_2 = ('K, 'V) t
    val t_2_to_js: ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    val get__Symbol_toStringTag_: ('K, 'V) t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Set"] Set : sig
    type 'T t = 'T _Set
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get__Symbol_toStringTag_: 'T t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "WeakSet"] WeakSet : sig
    type 'T t = 'T _WeakSet
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get__Symbol_toStringTag_: 'T t -> string [@@js.get "[Symbol.toStringTag]"]
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
  module[@js.scope "Function"] Function : sig
    type t = _Function
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Determines whether the given value inherits from this function if this function was used
      as a constructor function.
      
      A constructor function can control which objects are recognized as its instances by
      'instanceof' by overriding this method.
    *)
    val _Symbol_hasInstance_: t -> value:any -> bool [@@js.call "[Symbol.hasInstance]"]
  end
  module[@js.scope "GeneratorFunction"] GeneratorFunction : sig
    type t = _GeneratorFunction
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Math"] Math : sig
    type t = _Math
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> string [@@js.get "[Symbol.toStringTag]"]
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
  end
  module[@js.scope "RegExp"] RegExp : sig
    type t = _RegExp
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Matches a string with this regular expression, and returns an array containing the results of
      that search.
      @param string A string to search within.
    *)
    val _Symbol_match_: t -> string:string -> RegExpMatchArray.t_0 or_null [@@js.call "[Symbol.match]"]
    (**
      Replaces text in a string, using this regular expression.
      @param string A String object or string literal whose contents matching against
      this regular expression will be replaced
      @param replaceValue A String object or string literal containing the text to replace for every
      successful match of this regular expression.
    *)
    val _Symbol_replace_: t -> string:string -> replaceValue:string -> string [@@js.call "[Symbol.replace]"]
    (**
      Replaces text in a string, using this regular expression.
      @param string A String object or string literal whose contents matching against
      this regular expression will be replaced
      @param replacer A function that returns the replacement text.
    *)
    val _Symbol_replace_': t -> string:string -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "[Symbol.replace]"]
    (**
      Finds the position beginning first substring match in a regular expression search
      using this regular expression.
      @param string The string to search within.
    *)
    val _Symbol_search_: t -> string:string -> float [@@js.call "[Symbol.search]"]
    (**
      Returns an array of substrings that were delimited by strings in the original input that
      match against this regular expression.
      
      If the regular expression contains capturing parentheses, then each time this
      regular expression matches, the results (including any undefined results) of the
      capturing parentheses are spliced.
      @param string string value to split
      @param limit if not undefined, the output array is truncated so that it contains no more
      than 'limit' elements.
    *)
    val _Symbol_split_: t -> string:string -> ?limit:float -> unit -> string list [@@js.call "[Symbol.split]"]
  end
  module[@js.scope "RegExpConstructor"] RegExpConstructor : sig
    type t = _RegExpConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
  end
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Matches a string or an object that supports being matched against, and returns an array
      containing the results of that search, or null if no matches are found.
      @param matcher An object that supports being matched against.
    *)
    val match_: t -> matcher:anonymous_interface_3 -> RegExpMatchArray.t_0 or_null [@@js.call "match"]
    (**
      Replaces text in a string, using an object that supports replacement within a string.
      @param searchValue A object can search for and replace matches within a string.
      @param replaceValue A string containing the text to replace for every successful match of searchValue in this string.
    *)
    val replace: t -> searchValue:anonymous_interface_4 -> replaceValue:string -> string [@@js.call "replace"]
    (**
      Replaces text in a string, using an object that supports replacement within a string.
      @param searchValue A object can search for and replace matches within a string.
      @param replacer A function that returns the replacement text.
    *)
    val replace': t -> searchValue:anonymous_interface_5 -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replace"]
    (**
      Finds the first substring match in a regular expression search.
      @param searcher An object which supports searching within a string.
    *)
    val search: t -> searcher:anonymous_interface_6 -> float [@@js.call "search"]
    (**
      Split a string into substrings using the specified separator and return them as an array.
      @param splitter An object that can split a string.
      @param limit A value used to limit the number of elements returned in the array.
    *)
    val split: t -> splitter:anonymous_interface_7 -> ?limit:float -> unit -> string list [@@js.call "split"]
    val to_ml: t -> string [@@js.cast]
    val of_ml: string -> t [@@js.cast]
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
  module[@js.scope "Int8Array"] Int8Array : sig
    type t = _Int8Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s4_Int8Array[@js "Int8Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Uint8Array"] Uint8Array : sig
    type t = _Uint8Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s11_Uint8Array[@js "Uint8Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Uint8ClampedArray"] Uint8ClampedArray : sig
    type t = _Uint8ClampedArray
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s12_Uint8ClampedArray[@js "Uint8ClampedArray"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Int16Array"] Int16Array : sig
    type t = _Int16Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s2_Int16Array[@js "Int16Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Uint16Array"] Uint16Array : sig
    type t = _Uint16Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s9_Uint16Array[@js "Uint16Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Int32Array"] Int32Array : sig
    type t = _Int32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s3_Int32Array[@js "Int32Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Uint32Array"] Uint32Array : sig
    type t = _Uint32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s10_Uint32Array[@js "Uint32Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Float32Array"] Float32Array : sig
    type t = _Float32Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s0_Float32Array[@js "Float32Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "Float64Array"] Float64Array : sig
    type t = _Float64Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s1_Float64Array[@js "Float64Array"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "ArrayConstructor"] ArrayConstructor : sig
    type t = _ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
  end
  module[@js.scope "MapConstructor"] MapConstructor : sig
    type t = _MapConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
  end
  module[@js.scope "SetConstructor"] SetConstructor : sig
    type t = _SetConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
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
