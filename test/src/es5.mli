[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib

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
    type ('A, 'A0, 'A1, 'A2, 'A3, 'R) anonymous_interface_5 = [`anonymous_interface_5] intf
    [@@js.custom { of_js=(fun _A _A0 _A1 _A2 _A3 _R -> Obj.magic); to_js=(fun _A _A0 _A1 _A2 _A3 _R -> Obj.magic) }]
    type ('A, 'A0, 'A1, 'A2, 'R) anonymous_interface_6 = [`anonymous_interface_6] intf
    [@@js.custom { of_js=(fun _A _A0 _A1 _A2 _R -> Obj.magic); to_js=(fun _A _A0 _A1 _A2 _R -> Obj.magic) }]
    type ('A, 'A0, 'A1, 'R) anonymous_interface_7 = [`anonymous_interface_7] intf
    [@@js.custom { of_js=(fun _A _A0 _A1 _R -> Obj.magic); to_js=(fun _A _A0 _A1 _R -> Obj.magic) }]
    type ('A, 'A0, 'R) anonymous_interface_8 = [`anonymous_interface_8] intf
    [@@js.custom { of_js=(fun _A _A0 _R -> Obj.magic); to_js=(fun _A _A0 _R -> Obj.magic) }]
    type ('A, 'R) anonymous_interface_9 = [`anonymous_interface_9] intf
    [@@js.custom { of_js=(fun _A _R -> Obj.magic); to_js=(fun _A _R -> Obj.magic) }]
    type ('A, 'T) anonymous_interface_10 = [`anonymous_interface_10] intf
    [@@js.custom { of_js=(fun _A _T -> Obj.magic); to_js=(fun _A _T -> Obj.magic) }]
    type ('AX, 'R) anonymous_interface_11 = [`anonymous_interface_11] intf
    [@@js.custom { of_js=(fun _AX _R -> Obj.magic); to_js=(fun _AX _R -> Obj.magic) }]
    type 'T anonymous_interface_12 = [`anonymous_interface_12] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  end
  module Types : sig
    open AnonymousInterfaces
    type 'T _Array = [`Array of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _ArrayBuffer = [`ArrayBuffer] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _ArrayBufferConstructor = [`ArrayBufferConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _ArrayBufferLike = _ArrayBuffer
    and _ArrayBufferTypes = [`ArrayBufferTypes] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _ArrayBufferView = [`ArrayBufferView] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _ArrayConstructor = [`ArrayConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _ArrayLike = [`ArrayLike of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _Boolean = [`Boolean] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _BooleanConstructor = [`BooleanConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _CallableFunction = [`CallableFunction | `Function] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'S _Capitalize = Ojs.t
    and _ClassDecorator = [`ClassDecorator] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _ConcatArray = [`ConcatArray of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _ConstructorParameters = (* FIXME: unknown type 'T extends new (...args: infer P) => any ? P : never' *)any
    and _DataView = [`DataView] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _DataViewConstructor = [`DataViewConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Date = [`Date] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _DateConstructor = [`DateConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Error = [`Error] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _ErrorConstructor = [`ErrorConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _EvalError = [`EvalError | `Error] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _EvalErrorConstructor = [`EvalErrorConstructor | `ErrorConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and ('T, 'U) _Exclude = (* FIXME: unknown type 'T extends U ? never : T' *)any
    and ('T, 'U) _Extract = (* FIXME: unknown type 'T extends U ? T : never' *)any
    and _Float32Array = [`Float32Array] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Float32ArrayConstructor = [`Float32ArrayConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Float64Array = [`Float64Array] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Float64ArrayConstructor = [`Float64ArrayConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Function = untyped_function
    and _FunctionConstructor = [`FunctionConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _IArguments = [`IArguments] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _ImportMeta = [`ImportMeta] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _InstanceType = (* FIXME: unknown type 'T extends new (...args: any) => infer R ? R : any' *)any
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
    and _Intl_Collator = [`Intl_Collator] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_CollatorOptions = [`Intl_CollatorOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_DateTimeFormat = [`Intl_DateTimeFormat] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_DateTimeFormatOptions = [`Intl_DateTimeFormatOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_NumberFormat = [`Intl_NumberFormat] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_NumberFormatOptions = [`Intl_NumberFormatOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_ResolvedCollatorOptions = [`Intl_ResolvedCollatorOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_ResolvedDateTimeFormatOptions = [`Intl_ResolvedDateTimeFormatOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Intl_ResolvedNumberFormatOptions = [`Intl_ResolvedNumberFormatOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _JSON = [`JSON] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'S _Lowercase = Ojs.t
    and _Math = [`Math] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _MethodDecorator = [`MethodDecorator] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _NewableFunction = [`NewableFunction | `Function] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _NonNullable = (* FIXME: unknown type 'T extends null | undefined ? never : T' *)any
    and _Number = [`Number] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _NumberConstructor = [`NumberConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Object = untyped_object
    and _ObjectConstructor = [`ObjectConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and ('T, 'K) _Omit = ('T, ((* FIXME: unknown type ''T' *)any, 'K) _Exclude) _Pick
    and 'T _OmitThisParameter = (* FIXME: unknown type 'unknown extends ThisParameterType<T> ? T : T extends (...args: infer A) => infer R ? (...args: A) => R : T' *)any
    and _ParameterDecorator = [`ParameterDecorator] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _Parameters = (* FIXME: unknown type 'T extends (...args: infer P) => any ? P : never' *)any
    and 'T _Partial = (* FIXME: unknown type '{
        [P in keyof T]?: T[P];
    }' *)any
    and ('T, 'K) _Pick = (* FIXME: unknown type '{
        [P in K]: T[P];
    }' *)any
    and 'T _Promise = [`Promise of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _PromiseConstructorLike = anonymous_interface_1
    and 'T _PromiseLike = [`PromiseLike of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _PropertyDecorator = [`PropertyDecorator] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _PropertyDescriptor = [`PropertyDescriptor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _PropertyDescriptorMap = [`PropertyDescriptorMap] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _PropertyKey = symbol or_string or_number
    and _RangeError = [`RangeError | `Error] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _RangeErrorConstructor = [`RangeErrorConstructor | `ErrorConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _Readonly = (* FIXME: unknown type '{
        readonly [P in keyof T]: T[P];
    }' *)any
    and 'T _ReadonlyArray = [`ReadonlyArray of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('K, 'T) _Record = (* FIXME: unknown type '{
        [P in K]: T;
    }' *)any
    and _ReferenceError = [`ReferenceError | `Error] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _ReferenceErrorConstructor = [`ReferenceErrorConstructor | `ErrorConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _RegExp = regexp
    and _RegExpConstructor = [`RegExpConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _RegExpExecArray = [`RegExpExecArray | `Array of string] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _RegExpMatchArray = [`RegExpMatchArray | `Array of string] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _Required = (* FIXME: unknown type '{
        [P in keyof T]-?: T[P];
    }' *)any
    and 'T _ReturnType = (* FIXME: unknown type 'T extends (...args: any) => infer R ? R : any' *)any
    and _String = [`String] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _StringConstructor = [`StringConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _Symbol = symbol
    and _SyntaxError = [`SyntaxError | `Error] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _SyntaxErrorConstructor = [`SyntaxErrorConstructor | `ErrorConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _TemplateStringsArray = [`TemplateStringsArray | `ReadonlyArray of string] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _ThisParameterType = (* FIXME: unknown type 'T extends (this: infer U, ...args: any[]) => any ? U : unknown' *)any
    and 'T _ThisType = [`ThisType of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _TypeError = [`TypeError | `Error] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _TypeErrorConstructor = [`TypeErrorConstructor | `ErrorConstructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _TypedPropertyDescriptor = [`TypedPropertyDescriptor of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _URIError = [`URIError | `Error] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _URIErrorConstructor = [`URIErrorConstructor | `ErrorConstructor] intf
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
    and 'S _Uncapitalize = Ojs.t
    and 'S _Uppercase = Ojs.t
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
  val create: t -> args:((* FIXME: type 'Any' cannot be used for variadic argument *)any list [@js.variadic]) -> any [@@js.apply_newable]
end
module AnonymousInterface1 : sig
  type t = anonymous_interface_1
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> executor:(resolve:(value:('T, 'T _PromiseLike) union2 -> unit) -> reject:(?reason:any -> unit -> unit) -> unit) -> 'T _PromiseLike [@@js.apply_newable]
end
module AnonymousInterface2 : sig
  type t = anonymous_interface_2
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?locales:string list or_string -> ?options:_Intl_CollatorOptions -> unit -> _Intl_Collator [@@js.apply_newable]
  val apply: t -> ?locales:string list or_string -> ?options:_Intl_CollatorOptions -> unit -> _Intl_Collator [@@js.apply]
  val supportedLocalesOf: t -> locales:string list or_string -> ?options:_Intl_CollatorOptions -> unit -> string list [@@js.call "supportedLocalesOf"]
end
module AnonymousInterface3 : sig
  type t = anonymous_interface_3
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?locales:string list or_string -> ?options:_Intl_DateTimeFormatOptions -> unit -> _Intl_DateTimeFormat [@@js.apply_newable]
  val apply: t -> ?locales:string list or_string -> ?options:_Intl_DateTimeFormatOptions -> unit -> _Intl_DateTimeFormat [@@js.apply]
  val supportedLocalesOf: t -> locales:string list or_string -> ?options:_Intl_DateTimeFormatOptions -> unit -> string list [@@js.call "supportedLocalesOf"]
end
module AnonymousInterface4 : sig
  type t = anonymous_interface_4
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?locales:string list or_string -> ?options:_Intl_NumberFormatOptions -> unit -> _Intl_NumberFormat [@@js.apply_newable]
  val apply: t -> ?locales:string list or_string -> ?options:_Intl_NumberFormatOptions -> unit -> _Intl_NumberFormat [@@js.apply]
  val supportedLocalesOf: t -> locales:string list or_string -> ?options:_Intl_NumberFormatOptions -> unit -> string list [@@js.call "supportedLocalesOf"]
end
module AnonymousInterface5 : sig
  type ('A, 'A0, 'A1, 'A2, 'A3, 'R) t = ('A, 'A0, 'A1, 'A2, 'A3, 'R) anonymous_interface_5
  val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('A2 -> Ojs.t) -> ('A3 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'A2, 'A3, 'R) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'A2) -> (Ojs.t -> 'A3) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'A2, 'A3, 'R) t
  type ('A, 'A0, 'A1, 'A2, 'A3, 'R) t_6 = ('A, 'A0, 'A1, 'A2, 'A3, 'R) t
  val t_6_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('A2 -> Ojs.t) -> ('A3 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'A2, 'A3, 'R) t_6 -> Ojs.t
  val t_6_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'A2) -> (Ojs.t -> 'A3) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'A2, 'A3, 'R) t_6
  val create: ('A, 'A0, 'A1, 'A2, 'A3, 'R) t -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
end
module AnonymousInterface6 : sig
  type ('A, 'A0, 'A1, 'A2, 'R) t = ('A, 'A0, 'A1, 'A2, 'R) anonymous_interface_6
  val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('A2 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'A2, 'R) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'A2) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'A2, 'R) t
  type ('A, 'A0, 'A1, 'A2, 'R) t_5 = ('A, 'A0, 'A1, 'A2, 'R) t
  val t_5_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('A2 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'A2, 'R) t_5 -> Ojs.t
  val t_5_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'A2) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'A2, 'R) t_5
  val create: ('A, 'A0, 'A1, 'A2, 'R) t -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
end
module AnonymousInterface7 : sig
  type ('A, 'A0, 'A1, 'R) t = ('A, 'A0, 'A1, 'R) anonymous_interface_7
  val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'R) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'R) t
  type ('A, 'A0, 'A1, 'R) t_4 = ('A, 'A0, 'A1, 'R) t
  val t_4_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('A1 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'A1, 'R) t_4 -> Ojs.t
  val t_4_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'A1) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'A1, 'R) t_4
  val create: ('A, 'A0, 'A1, 'R) t -> arg0:'A0 -> arg1:'A1 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
end
module AnonymousInterface8 : sig
  type ('A, 'A0, 'R) t = ('A, 'A0, 'R) anonymous_interface_8
  val t_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'R) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'R) t
  type ('A, 'A0, 'R) t_3 = ('A, 'A0, 'R) t
  val t_3_to_js: ('A -> Ojs.t) -> ('A0 -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'A0, 'R) t_3 -> Ojs.t
  val t_3_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'A0) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'A0, 'R) t_3
  val create: ('A, 'A0, 'R) t -> arg0:'A0 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
end
module AnonymousInterface9 : sig
  type ('A, 'R) t = ('A, 'R) anonymous_interface_9
  val t_to_js: ('A -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'R) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'R) t
  type ('A, 'R) t_2 = ('A, 'R) t
  val t_2_to_js: ('A -> Ojs.t) -> ('R -> Ojs.t) -> ('A, 'R) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'R) -> Ojs.t -> ('A, 'R) t_2
  val create: ('A, 'R) t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.apply_newable]
end
module AnonymousInterface10 : sig
  type ('A, 'T) t = ('A, 'T) anonymous_interface_10
  val t_to_js: ('A -> Ojs.t) -> ('T -> Ojs.t) -> ('A, 'T) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'T) -> Ojs.t -> ('A, 'T) t
  type ('A, 'T) t_2 = ('A, 'T) t
  val t_2_to_js: ('A -> Ojs.t) -> ('T -> Ojs.t) -> ('A, 'T) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'A) -> (Ojs.t -> 'T) -> Ojs.t -> ('A, 'T) t_2
  val create: ('A, 'T) t -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'T [@@js.apply_newable]
end
module AnonymousInterface11 : sig
  type ('AX, 'R) t = ('AX, 'R) anonymous_interface_11
  val t_to_js: ('AX -> Ojs.t) -> ('R -> Ojs.t) -> ('AX, 'R) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'AX) -> (Ojs.t -> 'R) -> Ojs.t -> ('AX, 'R) t
  type ('AX, 'R) t_2 = ('AX, 'R) t
  val t_2_to_js: ('AX -> Ojs.t) -> ('R -> Ojs.t) -> ('AX, 'R) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'AX) -> (Ojs.t -> 'R) -> Ojs.t -> ('AX, 'R) t_2
  val create: ('AX, 'R) t -> args:('AX list [@js.variadic]) -> 'R [@@js.apply_newable]
end
module AnonymousInterface12 : sig
  type 'T t = 'T anonymous_interface_12
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val create: 'T t -> 'T [@@js.apply_newable]
end
val naN: float [@@js.global "NaN"]
val infinity: float [@@js.global "Infinity"]
(**
  Evaluates JavaScript code and executes it.
  @param x A String value that contains valid JavaScript code.
*)
val eval: x:string -> any [@@js.global "eval"]
(**
  Converts a string to an integer.
  @param s A string to convert into a number.
  @param radix A value between 2 and 36 that specifies the base of the number in numString.
  If this argument is not supplied, strings with a prefix of '0x' are considered hexadecimal.
  All other strings are considered decimal.
*)
val parseInt: s:string -> ?radix:float -> unit -> float [@@js.global "parseInt"]
(**
  Converts a string to a floating-point number.
  @param string A string that contains a floating-point number.
*)
val parseFloat: string:string -> float [@@js.global "parseFloat"]
(**
  Returns a Boolean value that indicates whether a value is the reserved value NaN (not a number).
  @param number A numeric value.
*)
val isNaN: number:float -> bool [@@js.global "isNaN"]
(**
  Determines whether a supplied number is finite.
  @param number Any numeric value.
*)
val isFinite: number:float -> bool [@@js.global "isFinite"]
(**
  Gets the unencoded version of an encoded Uniform Resource Identifier (URI).
  @param encodedURI A value representing an encoded URI.
*)
val decodeURI: encodedURI:string -> string [@@js.global "decodeURI"]
(**
  Gets the unencoded version of an encoded component of a Uniform Resource Identifier (URI).
  @param encodedURIComponent A value representing an encoded URI component.
*)
val decodeURIComponent: encodedURIComponent:string -> string [@@js.global "decodeURIComponent"]
(**
  Encodes a text string as a valid Uniform Resource Identifier (URI)
  @param uri A value representing an encoded URI.
*)
val encodeURI: uri:string -> string [@@js.global "encodeURI"]
(**
  Encodes a text string as a valid component of a Uniform Resource Identifier (URI).
  @param uriComponent A value representing an encoded URI component.
*)
val encodeURIComponent: uriComponent:bool or_string or_number -> string [@@js.global "encodeURIComponent"]
(**
  Computes a new string in which certain characters have been replaced by a hexadecimal escape sequence.
  @param string A string value
*)
val escape: string:string -> string [@@js.global "escape"]
(**
  Computes a new string in which hexadecimal escape sequences are replaced with the character that it represents.
  @param string A string value
*)
val unescape: string:string -> string [@@js.global "unescape"]
module[@js.scope "Symbol"] Symbol : sig
  type t = _Symbol
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** Returns a string representation of an object. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> symbol [@@js.call "valueOf"]
end
module PropertyKey : sig
  type t = _PropertyKey
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module[@js.scope "PropertyDescriptor"] PropertyDescriptor : sig
  type t = _PropertyDescriptor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_configurable: t -> bool [@@js.get "configurable"]
  val set_configurable: t -> bool -> unit [@@js.set "configurable"]
  val get_enumerable: t -> bool [@@js.get "enumerable"]
  val set_enumerable: t -> bool -> unit [@@js.set "enumerable"]
  val get_value: t -> any [@@js.get "value"]
  val set_value: t -> any -> unit [@@js.set "value"]
  val get_writable: t -> bool [@@js.get "writable"]
  val set_writable: t -> bool -> unit [@@js.set "writable"]
  val get_: t -> any [@@js.call "get"]
  val set_: t -> v:any -> unit [@@js.call "set"]
end
module[@js.scope "PropertyDescriptorMap"] PropertyDescriptorMap : sig
  type t = _PropertyDescriptorMap
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> string -> _PropertyDescriptor [@@js.index_get]
  val set: t -> string -> _PropertyDescriptor -> unit [@@js.index_set]
end
(** Provides functionality common to all JavaScript objects. *)
module[@js.scope "Object"] Object : sig
  type t = _Object
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The initial value of Object.prototype.constructor is the standard built-in Object constructor. *)
  (** The initial value of Object.prototype.constructor is the standard built-in Object constructor. *)
  val get_constructor: t -> _Function [@@js.get "constructor"]
  (** The initial value of Object.prototype.constructor is the standard built-in Object constructor. *)
  val set_constructor: t -> _Function -> unit [@@js.set "constructor"]
  (** Returns a string representation of an object. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns a date converted to a string using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  (**
    Determines whether an object has a property with the specified name.
    @param v A property name.
  *)
  val hasOwnProperty: t -> v:_PropertyKey -> bool [@@js.call "hasOwnProperty"]
  (**
    Determines whether an object exists in another object's prototype chain.
    @param v Another object whose prototype chain is to be checked.
  *)
  val isPrototypeOf: t -> v:t -> bool [@@js.call "isPrototypeOf"]
  (**
    Determines whether a specified property is enumerable.
    @param v A property name.
  *)
  val propertyIsEnumerable: t -> v:_PropertyKey -> bool [@@js.call "propertyIsEnumerable"]
end
module[@js.scope "ObjectConstructor"] ObjectConstructor : sig
  type t = _ObjectConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?value:any -> unit -> _Object [@@js.apply_newable]
  val apply: t -> any [@@js.apply]
  val apply': t -> value:any -> any [@@js.apply]
  (** A reference to the prototype for a class of objects. *)
  val get_prototype: t -> _Object [@@js.get "prototype"]
  (**
    Returns the prototype of an object.
    @param o The object that references the prototype.
  *)
  val getPrototypeOf: t -> o:any -> any [@@js.call "getPrototypeOf"]
  (**
    Gets the own property descriptor of the specified object.
    An own property descriptor is one that is defined directly on the object and is not inherited from the object's prototype.
    @param o Object that contains the property.
    @param p Name of the property.
  *)
  val getOwnPropertyDescriptor: t -> o:any -> p:_PropertyKey -> _PropertyDescriptor or_undefined [@@js.call "getOwnPropertyDescriptor"]
  (**
    Returns the names of the own properties of an object. The own properties of an object are those that are defined directly
    on that object, and are not inherited from the object's prototype. The properties of an object include both fields (objects) and functions.
    @param o Object that contains the own properties.
  *)
  val getOwnPropertyNames: t -> o:any -> string list [@@js.call "getOwnPropertyNames"]
  (**
    Creates an object that has the specified prototype or that has null prototype.
    @param o Object to use as a prototype. May be null.
  *)
  val create_: t -> o:untyped_object or_null -> any [@@js.call "create"]
  (**
    Creates an object that has the specified prototype, and that optionally contains specified properties.
    @param o Object to use as a prototype. May be null
    @param properties JavaScript object that contains one or more property descriptors.
  *)
  val create_': t -> o:untyped_object or_null -> properties:(_PropertyDescriptorMap, any _ThisType) intersection2 -> any [@@js.call "create"]
  (**
    Adds a property to an object, or modifies attributes of an existing property.
    @param o Object on which to add or modify the property. This can be a native JavaScript object (that is, a user-defined object or a built in object) or a DOM object.
    @param p The property name.
    @param attributes Descriptor for the property. It can be for a data property or an accessor property.
  *)
  val defineProperty: t -> o:any -> p:_PropertyKey -> attributes:(_PropertyDescriptor, any _ThisType) intersection2 -> any [@@js.call "defineProperty"]
  (**
    Adds one or more properties to an object, and/or modifies attributes of existing properties.
    @param o Object on which to add or modify the properties. This can be a native JavaScript object or a DOM object.
    @param properties JavaScript object that contains one or more descriptor objects. Each descriptor object describes a data property or an accessor property.
  *)
  val defineProperties: t -> o:any -> properties:(_PropertyDescriptorMap, any _ThisType) intersection2 -> any [@@js.call "defineProperties"]
  (**
    Prevents the modification of attributes of existing properties, and prevents the addition of new properties.
    @param o Object on which to lock the attributes.
  *)
  val seal: t -> o:'T -> 'T [@@js.call "seal"]
  (**
    Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
    @param o Object on which to lock the attributes.
  *)
  val freeze: t -> a:'T list -> 'T list [@@js.call "freeze"]
  (**
    Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
    @param o Object on which to lock the attributes.
  *)
  val freeze': t -> f:'T -> 'T [@@js.call "freeze"]
  (**
    Prevents the modification of existing property attributes and values, and prevents the addition of new properties.
    @param o Object on which to lock the attributes.
  *)
  val freeze'': t -> o:'T -> 'T _Readonly [@@js.call "freeze"]
  (**
    Prevents the addition of new properties to an object.
    @param o Object to make non-extensible.
  *)
  val preventExtensions: t -> o:'T -> 'T [@@js.call "preventExtensions"]
  (**
    Returns true if existing property attributes cannot be modified in an object and new properties cannot be added to the object.
    @param o Object to test.
  *)
  val isSealed: t -> o:any -> bool [@@js.call "isSealed"]
  (**
    Returns true if existing property attributes and values cannot be modified in an object, and new properties cannot be added to the object.
    @param o Object to test.
  *)
  val isFrozen: t -> o:any -> bool [@@js.call "isFrozen"]
  (**
    Returns a value that indicates whether new properties can be added to an object.
    @param o Object to test.
  *)
  val isExtensible: t -> o:any -> bool [@@js.call "isExtensible"]
  (**
    Returns the names of the enumerable string properties and methods of an object.
    @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
  *)
  val keys: t -> o:untyped_object -> string list [@@js.call "keys"]
end
(** Provides functionality common to all JavaScript objects. *)
val object_: _ObjectConstructor [@@js.global "Object"]
(** Creates a new function. *)
module[@js.scope "Function"] Function : sig
  type t = _Function
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function.
    @param thisArg The object to be used as the this object.
    @param argArray A set of arguments to be passed to the function.
  *)
  val apply_: t -> this:t -> thisArg:any -> ?argArray:any -> unit -> any [@@js.call "apply"]
  (**
    Calls a method of an object, substituting another object for the current object.
    @param thisArg The object to be used as the current object.
    @param argArray A list of arguments to be passed to the method.
  *)
  val call: t -> this:t -> thisArg:any -> argArray:(any list [@js.variadic]) -> any [@@js.call "call"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
    @param thisArg An object to which the this keyword can refer inside the new function.
    @param argArray A list of arguments to be passed to the new function.
  *)
  val bind: t -> this:t -> thisArg:any -> argArray:(any list [@js.variadic]) -> any [@@js.call "bind"]
  (** Returns a string representation of a function. *)
  val toString: t -> string [@@js.call "toString"]
  val get_prototype: t -> any [@@js.get "prototype"]
  val set_prototype: t -> any -> unit [@@js.set "prototype"]
  val get_length: t -> float [@@js.get "length"]
  val get_arguments: t -> any [@@js.get "arguments"]
  val set_arguments: t -> any -> unit [@@js.set "arguments"]
  val get_caller: t -> t [@@js.get "caller"]
  val set_caller: t -> t -> unit [@@js.set "caller"]
end
module[@js.scope "FunctionConstructor"] FunctionConstructor : sig
  type t = _FunctionConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Creates a new function.
    @param args A list of arguments the function accepts.
  *)
  val create: t -> args:(string list [@js.variadic]) -> _Function [@@js.apply_newable]
  val apply: t -> args:(string list [@js.variadic]) -> _Function [@@js.apply]
  val get_prototype: t -> _Function [@@js.get "prototype"]
end
(** Creates a new function. *)
val function_: _FunctionConstructor [@@js.global "Function"]
(** Extracts the type of the 'this' parameter of a function type, or 'unknown' if the function type has no 'this' parameter. *)
module ThisParameterType : sig
  type 'T t = 'T _ThisParameterType
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Removes the 'this' parameter from a function type. *)
module OmitThisParameter : sig
  type 'T t = 'T _OmitThisParameter
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
module[@js.scope "CallableFunction"] CallableFunction : sig
  type t = _CallableFunction
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Calls the function with the specified object as the this value and the elements of specified array as the arguments.
    @param thisArg The object to be used as the this object.
    @param args An array of argument values to be passed to the function.
  *)
  val apply_: t -> this:(this:'T -> 'R) -> thisArg:'T -> 'R [@@js.call "apply"]
  (** Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function. *)
  val apply_': t -> this:(this:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> args:'A -> 'R [@@js.call "apply"]
  (**
    Calls the function with the specified object as the this value and the specified rest arguments as the arguments.
    @param thisArg The object to be used as the this object.
    @param args Argument values to be passed to the function.
  *)
  val call: t -> this:(this:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@@js.call "call"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
    @param thisArg The object to be used as the this object.
    @param args Arguments to bind to the parameters of the function.
  *)
  val bind: t -> this:'T -> thisArg:'T _ThisParameterType -> 'T _OmitThisParameter [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind': t -> this:(this:'T -> arg0:'A0 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> (args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'': t -> this:(this:'T -> arg0:'A0 -> arg1:'A1 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> arg1:'A1 -> (args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind''': t -> this:(this:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> (args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'''': t -> this:(this:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R) -> thisArg:'T -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> (args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  (* val bind''''': t -> this:(this:'T -> args:('AX list [@js.variadic]) -> 'R) -> thisArg:'T -> args:('AX list [@js.variadic]) -> (args':('AX list [@js.variadic]) -> 'R [@js.dummy]) [@@js.call "bind"] *)
  val cast: t -> _Function [@@js.cast]
end
module[@js.scope "NewableFunction"] NewableFunction : sig
  type t = _NewableFunction
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Calls the function with the specified object as the this value and the elements of specified array as the arguments.
    @param thisArg The object to be used as the this object.
    @param args An array of argument values to be passed to the function.
  *)
  val apply_: t -> this:'T anonymous_interface_12 -> thisArg:'T -> unit [@@js.call "apply"]
  (** Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function. *)
  val apply_': t -> this:('A, 'T) anonymous_interface_10 -> thisArg:'T -> args:'A -> unit [@@js.call "apply"]
  (**
    Calls the function with the specified object as the this value and the specified rest arguments as the arguments.
    @param thisArg The object to be used as the this object.
    @param args Argument values to be passed to the function.
  *)
  val call: t -> this:('A, 'T) anonymous_interface_10 -> thisArg:'T -> args:((* FIXME: type ''A' cannot be used for variadic argument *)any list [@js.variadic]) -> unit [@@js.call "call"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
    @param thisArg The object to be used as the this object.
    @param args Arguments to bind to the parameters of the function.
  *)
  val bind: t -> this:'T -> thisArg:any -> 'T [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind': t -> this:('A, 'A0, 'R) anonymous_interface_8 -> thisArg:any -> arg0:'A0 -> ('A, 'R) anonymous_interface_9 [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'': t -> this:('A, 'A0, 'A1, 'R) anonymous_interface_7 -> thisArg:any -> arg0:'A0 -> arg1:'A1 -> ('A, 'R) anonymous_interface_9 [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind''': t -> this:('A, 'A0, 'A1, 'A2, 'R) anonymous_interface_6 -> thisArg:any -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> ('A, 'R) anonymous_interface_9 [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind'''': t -> this:('A, 'A0, 'A1, 'A2, 'A3, 'R) anonymous_interface_5 -> thisArg:any -> arg0:'A0 -> arg1:'A1 -> arg2:'A2 -> arg3:'A3 -> ('A, 'R) anonymous_interface_9 [@@js.call "bind"]
  (**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  *)
  val bind''''': t -> this:('AX, 'R) anonymous_interface_11 -> thisArg:any -> args:('AX list [@js.variadic]) -> ('AX, 'R) anonymous_interface_11 [@@js.call "bind"]
  val cast: t -> _Function [@@js.cast]
end
module[@js.scope "IArguments"] IArguments : sig
  type t = _IArguments
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> float -> any [@@js.index_get]
  val set: t -> float -> any -> unit [@@js.index_set]
  val get_length: t -> float [@@js.get "length"]
  val set_length: t -> float -> unit [@@js.set "length"]
  val get_callee: t -> _Function [@@js.get "callee"]
  val set_callee: t -> _Function -> unit [@@js.set "callee"]
end
(**
  Allows manipulation and formatting of text strings and determination and location of substrings within strings.
  Allows manipulation and formatting of text strings and determination and location of substrings within strings.
*)
module[@js.scope "String"] String : sig
  type t = _String
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Determines whether two strings are equivalent in the current or specified locale.
    @param that String to compare to target string
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used. This parameter must conform to BCP 47 standards; see the Intl.Collator object for details.
    @param options An object that contains one or more properties that specify comparison options. see the Intl.Collator object for details.
  *)
  val localeCompare: t -> that:string -> ?locales:string list or_string -> ?options:_Intl_CollatorOptions -> unit -> float [@@js.call "localeCompare"]
  (** Returns a string representation of a string. *)
  val toString: t -> string [@@js.call "toString"]
  (**
    Returns the character at the specified index.
    @param pos The zero-based index of the desired character.
  *)
  val charAt: t -> pos:float -> string [@@js.call "charAt"]
  (**
    Returns the Unicode value of the character at the specified location.
    @param index The zero-based index of the desired character. If there is no character at the specified index, NaN is returned.
  *)
  val charCodeAt: t -> index:float -> float [@@js.call "charCodeAt"]
  (**
    Returns a string that contains the concatenation of two or more strings.
    @param strings The strings to append to the end of the string.
  *)
  val concat: t -> strings:(string list [@js.variadic]) -> string [@@js.call "concat"]
  (**
    Returns the position of the first occurrence of a substring.
    @param searchString The substring to search for in the string
    @param position The index at which to begin searching the String object. If omitted, search starts at the beginning of the string.
  *)
  val indexOf: t -> searchString:string -> ?position:float -> unit -> float [@@js.call "indexOf"]
  (**
    Returns the last occurrence of a substring in the string.
    @param searchString The substring to search for.
    @param position The index at which to begin searching. If omitted, the search begins at the end of the string.
  *)
  val lastIndexOf: t -> searchString:string -> ?position:float -> unit -> float [@@js.call "lastIndexOf"]
  (**
    Determines whether two strings are equivalent in the current locale.
    @param that String to compare to target string
  *)
  val localeCompare': t -> that:string -> float [@@js.call "localeCompare"]
  (**
    Matches a string with a regular expression, and returns an array containing the results of that search.
    @param regexp A variable name or string literal containing the regular expression pattern and flags.
  *)
  val match_: t -> regexp:_RegExp or_string -> _RegExpMatchArray or_null [@@js.call "match"]
  (**
    Replaces text in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replaceValue A string containing the text to replace for every successful match of searchValue in this string.
  *)
  val replace: t -> searchValue:_RegExp or_string -> replaceValue:string -> string [@@js.call "replace"]
  (**
    Replaces text in a string, using a regular expression or search string.
    @param searchValue A string to search for.
    @param replacer A function that returns the replacement text.
  *)
  val replace': t -> searchValue:_RegExp or_string -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replace"]
  (**
    Finds the first substring match in a regular expression search.
    @param regexp The regular expression pattern and applicable flags.
  *)
  val search: t -> regexp:_RegExp or_string -> float [@@js.call "search"]
  (**
    Returns a section of a string.
    @param start The index to the beginning of the specified portion of stringObj.
    @param end The index to the end of the specified portion of stringObj. The substring includes the characters up to, but not including, the character indicated by end.
    If this value is not specified, the substring continues to the end of stringObj.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> string [@@js.call "slice"]
  (**
    Split a string into substrings using the specified separator and return them as an array.
    @param separator A string that identifies character or characters to use in separating the string. If omitted, a single-element array containing the entire string is returned.
    @param limit A value used to limit the number of elements returned in the array.
  *)
  val split: t -> separator:_RegExp or_string -> ?limit:float -> unit -> string list [@@js.call "split"]
  (**
    Returns the substring at the specified location within a String object.
    @param start The zero-based index number indicating the beginning of the substring.
    @param end Zero-based index number indicating the end of the substring. The substring includes the characters up to, but not including, the character indicated by end.
    If end is omitted, the characters from start through the end of the original string are returned.
  *)
  val substring: t -> start:float -> ?end_:float -> unit -> string [@@js.call "substring"]
  (** Converts all the alphabetic characters in a string to lowercase. *)
  val toLowerCase: t -> string [@@js.call "toLowerCase"]
  (** Converts all alphabetic characters to lowercase, taking into account the host environment's current locale. *)
  val toLocaleLowerCase: t -> ?locales:string list or_string -> unit -> string [@@js.call "toLocaleLowerCase"]
  (** Converts all the alphabetic characters in a string to uppercase. *)
  val toUpperCase: t -> string [@@js.call "toUpperCase"]
  (** Returns a string where all alphabetic characters have been converted to uppercase, taking into account the host environment's current locale. *)
  val toLocaleUpperCase: t -> ?locales:string list or_string -> unit -> string [@@js.call "toLocaleUpperCase"]
  (** Removes the leading and trailing white space and line terminator characters from a string. *)
  val trim: t -> string [@@js.call "trim"]
  (** Returns the length of a String object. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Gets a substring beginning at the specified location and having the specified length.
    @param from The starting position of the desired substring. The index of the first character in the string is zero.
    @param length The number of characters to include in the returned substring.
  *)
  val substr: t -> from:float -> ?length:float -> unit -> string [@@js.call "substr"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> string [@@js.call "valueOf"]
  val get: t -> float -> string [@@js.index_get]
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
  val create: t -> ?value:any -> unit -> _String [@@js.apply_newable]
  val apply: t -> ?value:any -> unit -> string [@@js.apply]
  val get_prototype: t -> _String [@@js.get "prototype"]
  val fromCharCode: t -> codes:(float list [@js.variadic]) -> string [@@js.call "fromCharCode"]
end
(** Allows manipulation and formatting of text strings and determination and location of substrings within strings. *)
val string: _StringConstructor [@@js.global "String"]
module[@js.scope "Boolean"] Boolean : sig
  type t = _Boolean
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> bool [@@js.call "valueOf"]
  val to_ml: t -> bool [@@js.cast]
  val of_ml: bool -> t [@@js.cast]
end
module[@js.scope "BooleanConstructor"] BooleanConstructor : sig
  type t = _BooleanConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?value:any -> unit -> _Boolean [@@js.apply_newable]
  val apply: t -> ?value:'T -> unit -> bool [@@js.apply]
  val get_prototype: t -> _Boolean [@@js.get "prototype"]
end
val boolean: _BooleanConstructor [@@js.global "Boolean"]
(**
  An object that represents a number of any kind. All JavaScript numbers are 64-bit floating-point numbers.
  An object that represents a number of any kind. All JavaScript numbers are 64-bit floating-point numbers.
*)
module[@js.scope "Number"] Number : sig
  type t = _Number
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Converts a number to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleString: t -> ?locales:string list or_string -> ?options:_Intl_NumberFormatOptions -> unit -> string [@@js.call "toLocaleString"]
  (**
    Returns a string representation of an object.
    @param radix Specifies a radix for converting numeric values to strings. This value is only used for numbers.
  *)
  val toString: t -> ?radix:float -> unit -> string [@@js.call "toString"]
  (**
    Returns a string representing a number in fixed-point notation.
    @param fractionDigits Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  *)
  val toFixed: t -> ?fractionDigits:float -> unit -> string [@@js.call "toFixed"]
  (**
    Returns a string containing a number represented in exponential notation.
    @param fractionDigits Number of digits after the decimal point. Must be in the range 0 - 20, inclusive.
  *)
  val toExponential: t -> ?fractionDigits:float -> unit -> string [@@js.call "toExponential"]
  (**
    Returns a string containing a number represented either in exponential or fixed-point notation with a specified number of digits.
    @param precision Number of significant digits. Must be in the range 1 - 21, inclusive.
  *)
  val toPrecision: t -> ?precision:float -> unit -> string [@@js.call "toPrecision"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> float [@@js.call "valueOf"]
  val to_ml: t -> float [@@js.cast]
  val of_ml: float -> t [@@js.cast]
end
module[@js.scope "NumberConstructor"] NumberConstructor : sig
  type t = _NumberConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?value:any -> unit -> _Number [@@js.apply_newable]
  val apply: t -> ?value:any -> unit -> float [@@js.apply]
  val get_prototype: t -> _Number [@@js.get "prototype"]
  (** The largest number that can be represented in JavaScript. Equal to approximately 1.79E+308. *)
  val get_MAX_VALUE: t -> float [@@js.get "MAX_VALUE"]
  (** The closest number to zero that can be represented in JavaScript. Equal to approximately 5.00E-324. *)
  val get_MIN_VALUE: t -> float [@@js.get "MIN_VALUE"]
  (**
    A value that is not a number.
    In equality comparisons, NaN does not equal any value, including itself. To test whether a value is equivalent to NaN, use the isNaN function.
  *)
  val get_NaN: t -> float [@@js.get "NaN"]
  (**
    A value that is less than the largest negative number that can be represented in JavaScript.
    JavaScript displays NEGATIVE_INFINITY values as -infinity.
  *)
  val get_NEGATIVE_INFINITY: t -> float [@@js.get "NEGATIVE_INFINITY"]
  (**
    A value greater than the largest number that can be represented in JavaScript.
    JavaScript displays POSITIVE_INFINITY values as infinity.
  *)
  val get_POSITIVE_INFINITY: t -> float [@@js.get "POSITIVE_INFINITY"]
end
(** An object that represents a number of any kind. All JavaScript numbers are 64-bit floating-point numbers. *)
val number: _NumberConstructor [@@js.global "Number"]
module[@js.scope "TemplateStringsArray"] TemplateStringsArray : sig
  type t = _TemplateStringsArray
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_raw: t -> string list [@@js.get "raw"]
  val cast: t -> string _ReadonlyArray [@@js.cast]
end
(**
  The type of `import.meta`.

  If you need to declare that a given property exists on `import.meta`,
  this type may be augmented via interface merging.
*)
module ImportMeta : sig
  type t = _ImportMeta
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
(** An intrinsic object that provides basic mathematics functionality and constants. *)
module[@js.scope "Math"] Math : sig
  type t = _Math
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The mathematical constant e. This is Euler's number, the base of natural logarithms. *)
  val get_E: t -> float [@@js.get "E"]
  (** The natural logarithm of 10. *)
  val get_LN10: t -> float [@@js.get "LN10"]
  (** The natural logarithm of 2. *)
  val get_LN2: t -> float [@@js.get "LN2"]
  (** The base-2 logarithm of e. *)
  val get_LOG2E: t -> float [@@js.get "LOG2E"]
  (** The base-10 logarithm of e. *)
  val get_LOG10E: t -> float [@@js.get "LOG10E"]
  (** Pi. This is the ratio of the circumference of a circle to its diameter. *)
  val get_PI: t -> float [@@js.get "PI"]
  (** The square root of 0.5, or, equivalently, one divided by the square root of 2. *)
  val get_SQRT1_2: t -> float [@@js.get "SQRT1_2"]
  (** The square root of 2. *)
  val get_SQRT2: t -> float [@@js.get "SQRT2"]
  (**
    Returns the absolute value of a number (the value without regard to whether it is positive or negative).
    For example, the absolute value of -5 is the same as the absolute value of 5.
    @param x A numeric expression for which the absolute value is needed.
  *)
  val abs: t -> x:float -> float [@@js.call "abs"]
  (**
    Returns the arc cosine (or inverse cosine) of a number.
    @param x A numeric expression.
  *)
  val acos: t -> x:float -> float [@@js.call "acos"]
  (**
    Returns the arcsine of a number.
    @param x A numeric expression.
  *)
  val asin: t -> x:float -> float [@@js.call "asin"]
  (**
    Returns the arctangent of a number.
    @param x A numeric expression for which the arctangent is needed.
  *)
  val atan: t -> x:float -> float [@@js.call "atan"]
  (**
    Returns the angle (in radians) from the X axis to a point.
    @param y A numeric expression representing the cartesian y-coordinate.
    @param x A numeric expression representing the cartesian x-coordinate.
  *)
  val atan2: t -> y:float -> x:float -> float [@@js.call "atan2"]
  (**
    Returns the smallest integer greater than or equal to its numeric argument.
    @param x A numeric expression.
  *)
  val ceil: t -> x:float -> float [@@js.call "ceil"]
  (**
    Returns the cosine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val cos: t -> x:float -> float [@@js.call "cos"]
  (**
    Returns e (the base of natural logarithms) raised to a power.
    @param x A numeric expression representing the power of e.
  *)
  val exp: t -> x:float -> float [@@js.call "exp"]
  (**
    Returns the greatest integer less than or equal to its numeric argument.
    @param x A numeric expression.
  *)
  val floor: t -> x:float -> float [@@js.call "floor"]
  (**
    Returns the natural logarithm (base e) of a number.
    @param x A numeric expression.
  *)
  val log: t -> x:float -> float [@@js.call "log"]
  (**
    Returns the larger of a set of supplied numeric expressions.
    @param values Numeric expressions to be evaluated.
  *)
  val max: t -> values:(float list [@js.variadic]) -> float [@@js.call "max"]
  (**
    Returns the smaller of a set of supplied numeric expressions.
    @param values Numeric expressions to be evaluated.
  *)
  val min: t -> values:(float list [@js.variadic]) -> float [@@js.call "min"]
  (**
    Returns the value of a base expression taken to a specified power.
    @param x The base value of the expression.
    @param y The exponent value of the expression.
  *)
  val pow: t -> x:float -> y:float -> float [@@js.call "pow"]
  (** Returns a pseudorandom number between 0 and 1. *)
  val random: t -> float [@@js.call "random"]
  (**
    Returns a supplied numeric expression rounded to the nearest integer.
    @param x The value to be rounded to the nearest integer.
  *)
  val round: t -> x:float -> float [@@js.call "round"]
  (**
    Returns the sine of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val sin: t -> x:float -> float [@@js.call "sin"]
  (**
    Returns the square root of a number.
    @param x A numeric expression.
  *)
  val sqrt: t -> x:float -> float [@@js.call "sqrt"]
  (**
    Returns the tangent of a number.
    @param x A numeric expression that contains an angle measured in radians.
  *)
  val tan: t -> x:float -> float [@@js.call "tan"]
end
(** An intrinsic object that provides basic mathematics functionality and constants. *)
val math: _Math [@@js.global "Math"]
(**
  Enables basic storage and retrieval of dates and times.
  Enables basic storage and retrieval of dates and times.
*)
module[@js.scope "Date"] Date : sig
  type t = _Date
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Converts a date and time to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleString: t -> ?locales:string list or_string -> ?options:_Intl_DateTimeFormatOptions -> unit -> string [@@js.call "toLocaleString"]
  (**
    Converts a date to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleDateString: t -> ?locales:string list or_string -> ?options:_Intl_DateTimeFormatOptions -> unit -> string [@@js.call "toLocaleDateString"]
  (**
    Converts a time to a string by using the current or specified locale.
    @param locales A locale string or array of locale strings that contain one or more language or locale tags. If you include more than one locale string, list them in descending order of priority so that the first entry is the preferred locale. If you omit this parameter, the default locale of the JavaScript runtime is used.
    @param options An object that contains one or more properties that specify comparison options.
  *)
  val toLocaleTimeString: t -> ?locales:string list or_string -> ?options:_Intl_DateTimeFormatOptions -> unit -> string [@@js.call "toLocaleTimeString"]
  (** Returns a string representation of a date. The format of the string depends on the locale. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns a date as a string value. *)
  val toDateString: t -> string [@@js.call "toDateString"]
  (** Returns a time as a string value. *)
  val toTimeString: t -> string [@@js.call "toTimeString"]
  (** Returns a value as a string value appropriate to the host environment's current locale. *)
  val toLocaleString': t -> string [@@js.call "toLocaleString"]
  (** Returns a date as a string value appropriate to the host environment's current locale. *)
  val toLocaleDateString': t -> string [@@js.call "toLocaleDateString"]
  (** Returns a time as a string value appropriate to the host environment's current locale. *)
  val toLocaleTimeString': t -> string [@@js.call "toLocaleTimeString"]
  (** Returns the stored time value in milliseconds since midnight, January 1, 1970 UTC. *)
  val valueOf: t -> float [@@js.call "valueOf"]
  (** Gets the time value in milliseconds. *)
  val getTime: t -> float [@@js.call "getTime"]
  (** Gets the year, using local time. *)
  val getFullYear: t -> float [@@js.call "getFullYear"]
  (** Gets the year using Universal Coordinated Time (UTC). *)
  val getUTCFullYear: t -> float [@@js.call "getUTCFullYear"]
  (** Gets the month, using local time. *)
  val getMonth: t -> float [@@js.call "getMonth"]
  (** Gets the month of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCMonth: t -> float [@@js.call "getUTCMonth"]
  (** Gets the day-of-the-month, using local time. *)
  val getDate: t -> float [@@js.call "getDate"]
  (** Gets the day-of-the-month, using Universal Coordinated Time (UTC). *)
  val getUTCDate: t -> float [@@js.call "getUTCDate"]
  (** Gets the day of the week, using local time. *)
  val getDay: t -> float [@@js.call "getDay"]
  (** Gets the day of the week using Universal Coordinated Time (UTC). *)
  val getUTCDay: t -> float [@@js.call "getUTCDay"]
  (** Gets the hours in a date, using local time. *)
  val getHours: t -> float [@@js.call "getHours"]
  (** Gets the hours value in a Date object using Universal Coordinated Time (UTC). *)
  val getUTCHours: t -> float [@@js.call "getUTCHours"]
  (** Gets the minutes of a Date object, using local time. *)
  val getMinutes: t -> float [@@js.call "getMinutes"]
  (** Gets the minutes of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCMinutes: t -> float [@@js.call "getUTCMinutes"]
  (** Gets the seconds of a Date object, using local time. *)
  val getSeconds: t -> float [@@js.call "getSeconds"]
  (** Gets the seconds of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCSeconds: t -> float [@@js.call "getUTCSeconds"]
  (** Gets the milliseconds of a Date, using local time. *)
  val getMilliseconds: t -> float [@@js.call "getMilliseconds"]
  (** Gets the milliseconds of a Date object using Universal Coordinated Time (UTC). *)
  val getUTCMilliseconds: t -> float [@@js.call "getUTCMilliseconds"]
  (** Gets the difference in minutes between the time on the local computer and Universal Coordinated Time (UTC). *)
  val getTimezoneOffset: t -> float [@@js.call "getTimezoneOffset"]
  (**
    Sets the date and time value in the Date object.
    @param time A numeric value representing the number of elapsed milliseconds since midnight, January 1, 1970 GMT.
  *)
  val setTime: t -> time:float -> float [@@js.call "setTime"]
  (**
    Sets the milliseconds value in the Date object using local time.
    @param ms A numeric value equal to the millisecond value.
  *)
  val setMilliseconds: t -> ms:float -> float [@@js.call "setMilliseconds"]
  (**
    Sets the milliseconds value in the Date object using Universal Coordinated Time (UTC).
    @param ms A numeric value equal to the millisecond value.
  *)
  val setUTCMilliseconds: t -> ms:float -> float [@@js.call "setUTCMilliseconds"]
  (**
    Sets the seconds value in the Date object using local time.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setSeconds: t -> sec:float -> ?ms:float -> unit -> float [@@js.call "setSeconds"]
  (**
    Sets the seconds value in the Date object using Universal Coordinated Time (UTC).
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setUTCSeconds: t -> sec:float -> ?ms:float -> unit -> float [@@js.call "setUTCSeconds"]
  (**
    Sets the minutes value in the Date object using local time.
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setMinutes: t -> min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setMinutes"]
  (**
    Sets the minutes value in the Date object using Universal Coordinated Time (UTC).
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setUTCMinutes: t -> min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setUTCMinutes"]
  (**
    Sets the hour value in the Date object using local time.
    @param hours A numeric value equal to the hours value.
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setHours: t -> hours:float -> ?min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setHours"]
  (**
    Sets the hours value in the Date object using Universal Coordinated Time (UTC).
    @param hours A numeric value equal to the hours value.
    @param min A numeric value equal to the minutes value.
    @param sec A numeric value equal to the seconds value.
    @param ms A numeric value equal to the milliseconds value.
  *)
  val setUTCHours: t -> hours:float -> ?min:float -> ?sec:float -> ?ms:float -> unit -> float [@@js.call "setUTCHours"]
  (**
    Sets the numeric day-of-the-month value of the Date object using local time.
    @param date A numeric value equal to the day of the month.
  *)
  val setDate: t -> date:float -> float [@@js.call "setDate"]
  (**
    Sets the numeric day of the month in the Date object using Universal Coordinated Time (UTC).
    @param date A numeric value equal to the day of the month.
  *)
  val setUTCDate: t -> date:float -> float [@@js.call "setUTCDate"]
  (**
    Sets the month value in the Date object using local time.
    @param month A numeric value equal to the month. The value for January is 0, and other month values follow consecutively.
    @param date A numeric value representing the day of the month. If this value is not supplied, the value from a call to the getDate method is used.
  *)
  val setMonth: t -> month:float -> ?date:float -> unit -> float [@@js.call "setMonth"]
  (**
    Sets the month value in the Date object using Universal Coordinated Time (UTC).
    @param month A numeric value equal to the month. The value for January is 0, and other month values follow consecutively.
    @param date A numeric value representing the day of the month. If it is not supplied, the value from a call to the getUTCDate method is used.
  *)
  val setUTCMonth: t -> month:float -> ?date:float -> unit -> float [@@js.call "setUTCMonth"]
  (**
    Sets the year of the Date object using local time.
    @param year A numeric value for the year.
    @param month A zero-based numeric value for the month (0 for January, 11 for December). Must be specified if numDate is specified.
    @param date A numeric value equal for the day of the month.
  *)
  val setFullYear: t -> year:float -> ?month:float -> ?date:float -> unit -> float [@@js.call "setFullYear"]
  (**
    Sets the year value in the Date object using Universal Coordinated Time (UTC).
    @param year A numeric value equal to the year.
    @param month A numeric value equal to the month. The value for January is 0, and other month values follow consecutively. Must be supplied if numDate is supplied.
    @param date A numeric value equal to the day of the month.
  *)
  val setUTCFullYear: t -> year:float -> ?month:float -> ?date:float -> unit -> float [@@js.call "setUTCFullYear"]
  (** Returns a date converted to a string using Universal Coordinated Time (UTC). *)
  val toUTCString: t -> string [@@js.call "toUTCString"]
  (** Returns a date as a string value in ISO format. *)
  val toISOString: t -> string [@@js.call "toISOString"]
  (** Used by the JSON.stringify method to enable the transformation of an object's data for JavaScript Object Notation (JSON) serialization. *)
  val toJSON: t -> ?key:any -> unit -> string [@@js.call "toJSON"]
end
module[@js.scope "DateConstructor"] DateConstructor : sig
  type t = _DateConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> _Date [@@js.apply_newable]
  val create': t -> value:string or_number -> _Date [@@js.apply_newable]
  val create'': t -> year:float -> month:float -> ?date:float -> ?hours:float -> ?minutes:float -> ?seconds:float -> ?ms:float -> unit -> _Date [@@js.apply_newable]
  val apply: t -> string [@@js.apply]
  val get_prototype: t -> _Date [@@js.get "prototype"]
  (**
    Parses a string containing a date, and returns the number of milliseconds between that date and midnight, January 1, 1970.
    @param s A date string
  *)
  val parse: t -> s:string -> float [@@js.call "parse"]
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
  val uTC: t -> year:float -> month:float -> ?date:float -> ?hours:float -> ?minutes:float -> ?seconds:float -> ?ms:float -> unit -> float [@@js.call "UTC"]
  val now: t -> float [@@js.call "now"]
end
(** Enables basic storage and retrieval of dates and times. *)
val date: _DateConstructor [@@js.global "Date"]
module[@js.scope "RegExpMatchArray"] RegExpMatchArray : sig
  type t = _RegExpMatchArray
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_index: t -> float [@@js.get "index"]
  val set_index: t -> float -> unit [@@js.set "index"]
  val get_input: t -> string [@@js.get "input"]
  val set_input: t -> string -> unit [@@js.set "input"]
  val cast: t -> string _Array [@@js.cast]
end
module[@js.scope "RegExpExecArray"] RegExpExecArray : sig
  type t = _RegExpExecArray
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_index: t -> float [@@js.get "index"]
  val set_index: t -> float -> unit [@@js.set "index"]
  val get_input: t -> string [@@js.get "input"]
  val set_input: t -> string -> unit [@@js.set "input"]
  val cast: t -> string _Array [@@js.cast]
end
module[@js.scope "RegExp"] RegExp : sig
  type t = _RegExp
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Executes a search on a string using a regular expression pattern, and returns an array containing the results of that search.
    @param string The String object or string literal on which to perform the search.
  *)
  val exec: t -> string:string -> _RegExpExecArray or_null [@@js.call "exec"]
  (**
    Returns a Boolean value that indicates whether or not a pattern exists in a searched string.
    @param string String on which to perform the search.
  *)
  val test: t -> string:string -> bool [@@js.call "test"]
  (** Returns a copy of the text of the regular expression pattern. Read-only. The regExp argument is a Regular expression object. It can be a variable name or a literal. *)
  val get_source: t -> string [@@js.get "source"]
  (** Returns a Boolean value indicating the state of the global flag (g) used with a regular expression. Default is false. Read-only. *)
  val get_global: t -> bool [@@js.get "global"]
  (** Returns a Boolean value indicating the state of the ignoreCase flag (i) used with a regular expression. Default is false. Read-only. *)
  val get_ignoreCase: t -> bool [@@js.get "ignoreCase"]
  (** Returns a Boolean value indicating the state of the multiline flag (m) used with a regular expression. Default is false. Read-only. *)
  val get_multiline: t -> bool [@@js.get "multiline"]
  val get_lastIndex: t -> float [@@js.get "lastIndex"]
  val set_lastIndex: t -> float -> unit [@@js.set "lastIndex"]
  val compile: t -> t [@@js.call "compile"]
end
module[@js.scope "RegExpConstructor"] RegExpConstructor : sig
  type t = _RegExpConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> pattern:_RegExp or_string -> _RegExp [@@js.apply_newable]
  val create': t -> pattern:string -> ?flags:string -> unit -> _RegExp [@@js.apply_newable]
  val apply: t -> pattern:_RegExp or_string -> _RegExp [@@js.apply]
  val apply': t -> pattern:string -> ?flags:string -> unit -> _RegExp [@@js.apply]
  val get_prototype: t -> _RegExp [@@js.get "prototype"]
  val get__1: t -> string [@@js.get "$1"]
  val set__1: t -> string -> unit [@@js.set "$1"]
  val get__2: t -> string [@@js.get "$2"]
  val set__2: t -> string -> unit [@@js.set "$2"]
  val get__3: t -> string [@@js.get "$3"]
  val set__3: t -> string -> unit [@@js.set "$3"]
  val get__4: t -> string [@@js.get "$4"]
  val set__4: t -> string -> unit [@@js.set "$4"]
  val get__5: t -> string [@@js.get "$5"]
  val set__5: t -> string -> unit [@@js.set "$5"]
  val get__6: t -> string [@@js.get "$6"]
  val set__6: t -> string -> unit [@@js.set "$6"]
  val get__7: t -> string [@@js.get "$7"]
  val set__7: t -> string -> unit [@@js.set "$7"]
  val get__8: t -> string [@@js.get "$8"]
  val set__8: t -> string -> unit [@@js.set "$8"]
  val get__9: t -> string [@@js.get "$9"]
  val set__9: t -> string -> unit [@@js.set "$9"]
  val get_lastMatch: t -> string [@@js.get "lastMatch"]
  val set_lastMatch: t -> string -> unit [@@js.set "lastMatch"]
end
val regExp: _RegExpConstructor [@@js.global "RegExp"]
module[@js.scope "Error"] Error : sig
  type t = _Error
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_name: t -> string [@@js.get "name"]
  val set_name: t -> string -> unit [@@js.set "name"]
  val get_message: t -> string [@@js.get "message"]
  val set_message: t -> string -> unit [@@js.set "message"]
  val get_stack: t -> string [@@js.get "stack"]
  val set_stack: t -> string -> unit [@@js.set "stack"]
end
module[@js.scope "ErrorConstructor"] ErrorConstructor : sig
  type t = _ErrorConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?message:string -> unit -> _Error [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> _Error [@@js.apply]
  val get_prototype: t -> _Error [@@js.get "prototype"]
end
val error: _ErrorConstructor [@@js.global "Error"]
module[@js.scope "EvalError"] EvalError : sig
  type t = _EvalError
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast: t -> _Error [@@js.cast]
end
module[@js.scope "EvalErrorConstructor"] EvalErrorConstructor : sig
  type t = _EvalErrorConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?message:string -> unit -> _EvalError [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> _EvalError [@@js.apply]
  val get_prototype: t -> _EvalError [@@js.get "prototype"]
  val cast: t -> _ErrorConstructor [@@js.cast]
end
val evalError: _EvalErrorConstructor [@@js.global "EvalError"]
module[@js.scope "RangeError"] RangeError : sig
  type t = _RangeError
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast: t -> _Error [@@js.cast]
end
module[@js.scope "RangeErrorConstructor"] RangeErrorConstructor : sig
  type t = _RangeErrorConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?message:string -> unit -> _RangeError [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> _RangeError [@@js.apply]
  val get_prototype: t -> _RangeError [@@js.get "prototype"]
  val cast: t -> _ErrorConstructor [@@js.cast]
end
val rangeError: _RangeErrorConstructor [@@js.global "RangeError"]
module[@js.scope "ReferenceError"] ReferenceError : sig
  type t = _ReferenceError
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast: t -> _Error [@@js.cast]
end
module[@js.scope "ReferenceErrorConstructor"] ReferenceErrorConstructor : sig
  type t = _ReferenceErrorConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?message:string -> unit -> _ReferenceError [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> _ReferenceError [@@js.apply]
  val get_prototype: t -> _ReferenceError [@@js.get "prototype"]
  val cast: t -> _ErrorConstructor [@@js.cast]
end
val referenceError: _ReferenceErrorConstructor [@@js.global "ReferenceError"]
module[@js.scope "SyntaxError"] SyntaxError : sig
  type t = _SyntaxError
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast: t -> _Error [@@js.cast]
end
module[@js.scope "SyntaxErrorConstructor"] SyntaxErrorConstructor : sig
  type t = _SyntaxErrorConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?message:string -> unit -> _SyntaxError [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> _SyntaxError [@@js.apply]
  val get_prototype: t -> _SyntaxError [@@js.get "prototype"]
  val cast: t -> _ErrorConstructor [@@js.cast]
end
val syntaxError: _SyntaxErrorConstructor [@@js.global "SyntaxError"]
module[@js.scope "TypeError"] TypeError : sig
  type t = _TypeError
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast: t -> _Error [@@js.cast]
end
module[@js.scope "TypeErrorConstructor"] TypeErrorConstructor : sig
  type t = _TypeErrorConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?message:string -> unit -> _TypeError [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> _TypeError [@@js.apply]
  val get_prototype: t -> _TypeError [@@js.get "prototype"]
  val cast: t -> _ErrorConstructor [@@js.cast]
end
val typeError: _TypeErrorConstructor [@@js.global "TypeError"]
module[@js.scope "URIError"] URIError : sig
  type t = _URIError
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast: t -> _Error [@@js.cast]
end
module[@js.scope "URIErrorConstructor"] URIErrorConstructor : sig
  type t = _URIErrorConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> ?message:string -> unit -> _URIError [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> _URIError [@@js.apply]
  val get_prototype: t -> _URIError [@@js.get "prototype"]
  val cast: t -> _ErrorConstructor [@@js.cast]
end
val uRIError: _URIErrorConstructor [@@js.global "URIError"]
(** An intrinsic object that provides functions to convert JavaScript values to and from the JavaScript Object Notation (JSON) format. *)
module[@js.scope "JSON"] JSON : sig
  type t = _JSON
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (**
    Converts a JavaScript Object Notation (JSON) string into an object.
    @param text A valid JSON string.
    @param reviver A function that transforms the results. This function is called for each member of the object.
    If a member contains nested objects, the nested objects are transformed before the parent object is.
  *)
  val parse: t -> text:string -> ?reviver:(this:any -> key:string -> value:any -> any) -> unit -> any [@@js.call "parse"]
  (**
    Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
    @param value A JavaScript value, usually an object or array, to be converted.
    @param replacer A function that transforms the results.
    @param space Adds indentation, white space, and line break characters to the return-value JSON text to make it easier to read.
  *)
  val stringify: t -> value:any -> ?replacer:(this:any -> key:string -> value:any -> any) -> ?space:string or_number -> unit -> string [@@js.call "stringify"]
  (**
    Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
    @param value A JavaScript value, usually an object or array, to be converted.
    @param replacer An array of strings and numbers that acts as an approved list for selecting the object properties that will be stringified.
    @param space Adds indentation, white space, and line break characters to the return-value JSON text to make it easier to read.
  *)
  val stringify': t -> value:any -> ?replacer:string or_number list or_null -> ?space:string or_number -> unit -> string [@@js.call "stringify"]
end
(** An intrinsic object that provides functions to convert JavaScript values to and from the JavaScript Object Notation (JSON) format. *)
val jSON: _JSON [@@js.global "JSON"]
module[@js.scope "ReadonlyArray"] ReadonlyArray : sig
  type 'T t = 'T _ReadonlyArray
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (** Gets the length of the array. This is a number one higher than the highest element defined in an array. *)
  val get_length: 'T t -> float [@@js.get "length"]
  (** Returns a string representation of an array. *)
  val toString: 'T t -> string [@@js.call "toString"]
  (** Returns a string representation of an array. The elements are converted to string using their toLocalString methods. *)
  val toLocaleString: 'T t -> string [@@js.call "toLocaleString"]
  (**
    Combines two or more arrays.
    @param items Additional items to add to the end of array1.
  *)
  val concat: 'T t -> items:('T _ConcatArray list [@js.variadic]) -> 'T list [@@js.call "concat"]
  (**
    Combines two or more arrays.
    @param items Additional items to add to the end of array1.
  *)
  val concat': 'T t -> items:(('T, 'T _ConcatArray) union2 list [@js.variadic]) -> 'T list [@@js.call "concat"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: 'T t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: 'T t -> ?start:float -> ?end_:float -> unit -> 'T list [@@js.call "slice"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at index 0.
  *)
  val indexOf: 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Returns the index of the last occurrence of a specified value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at the last index in the array.
  *)
  val lastIndexOf: 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'T t -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every': 'T t -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'T t -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'T t -> callbackfn:(value:'T -> index:float -> array:'T list -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'T t -> callbackfn:(value:'T -> index:float -> array:'T list -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "map"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'T t -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> 'S list [@@js.call "filter"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter': 'T t -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> 'T list [@@js.call "filter"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce: 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduce"]
  (** Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduce': 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce'': 'T t -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight: 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduceRight"]
  (** Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduceRight': 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight'': 'T t -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  val get: 'T t -> float -> 'T [@@js.index_get]
  val to_ml: 'T t -> 'T list [@@js.cast]
  val of_ml: 'T list -> 'T t [@@js.cast]
end
module[@js.scope "ConcatArray"] ConcatArray : sig
  type 'T t = 'T _ConcatArray
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_length: 'T t -> float [@@js.get "length"]
  val get: 'T t -> float -> 'T [@@js.index_get]
  val join: 'T t -> ?separator:string -> unit -> string [@@js.call "join"]
  val slice: 'T t -> ?start:float -> ?end_:float -> unit -> 'T list [@@js.call "slice"]
end
module[@js.scope "Array"] Array : sig
  type 'T t = 'T _Array
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (** Gets or sets the length of the array. This is a number one higher than the highest index in the array. *)
  (** Gets or sets the length of the array. This is a number one higher than the highest index in the array. *)
  val get_length: 'T t -> float [@@js.get "length"]
  (** Gets or sets the length of the array. This is a number one higher than the highest index in the array. *)
  val set_length: 'T t -> float -> unit [@@js.set "length"]
  (** Returns a string representation of an array. *)
  val toString: 'T t -> string [@@js.call "toString"]
  (** Returns a string representation of an array. The elements are converted to string using their toLocalString methods. *)
  val toLocaleString: 'T t -> string [@@js.call "toLocaleString"]
  (**
    Removes the last element from an array and returns it.
    If the array is empty, undefined is returned and the array is not modified.
  *)
  val pop: 'T t -> 'T or_undefined [@@js.call "pop"]
  (**
    Appends new elements to the end of an array, and returns the new length of the array.
    @param items New elements to add to the array.
  *)
  val push: 'T t -> items:('T list [@js.variadic]) -> float [@@js.call "push"]
  (**
    Combines two or more arrays.
    This method returns a new array without modifying any existing arrays.
    @param items Additional arrays and/or items to add to the end of the array.
  *)
  val concat: 'T t -> items:('T _ConcatArray list [@js.variadic]) -> 'T list [@@js.call "concat"]
  (**
    Combines two or more arrays.
    This method returns a new array without modifying any existing arrays.
    @param items Additional arrays and/or items to add to the end of the array.
  *)
  val concat': 'T t -> items:(('T, 'T _ConcatArray) union2 list [@js.variadic]) -> 'T list [@@js.call "concat"]
  (**
    Adds all the elements of an array into a string, separated by the specified separator string.
    @param separator A string used to separate one element of the array from the next in the resulting string. If omitted, the array elements are separated with a comma.
  *)
  val join: 'T t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Reverses the elements in an array in place.
    This method mutates the array and returns a reference to the same array.
  *)
  val reverse: 'T t -> 'T list [@@js.call "reverse"]
  (**
    Removes the first element from an array and returns it.
    If the array is empty, undefined is returned and the array is not modified.
  *)
  val shift: 'T t -> 'T or_undefined [@@js.call "shift"]
  (**
    Returns a copy of a section of an array.
    For both start and end, a negative index can be used to indicate an offset from the end of the array.
    For example, -2 refers to the second to last element of the array.
    @param start The beginning index of the specified portion of the array.
    If start is undefined, then the slice begins at index 0.
    @param end The end index of the specified portion of the array. This is exclusive of the element at the index 'end'.
    If end is undefined, then the slice extends to the end of the array.
  *)
  val slice: 'T t -> ?start:float -> ?end_:float -> unit -> 'T list [@@js.call "slice"]
  (**
    Sorts an array in place.
    This method mutates the array and returns a reference to the same array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: 'T t -> ?compareFn:(a:'T -> b:'T -> float) -> unit -> 'T t [@@js.call "sort"]
  (**
    Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
    @param start The zero-based location in the array from which to start removing elements.
    @param deleteCount The number of elements to remove.
    @return An array containing the elements that were deleted.
  *)
  val splice: 'T t -> start:float -> ?deleteCount:float -> unit -> 'T list [@@js.call "splice"]
  (**
    Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
    @param start The zero-based location in the array from which to start removing elements.
    @param deleteCount The number of elements to remove.
    @param items Elements to insert into the array in place of the deleted elements.
    @return An array containing the elements that were deleted.
  *)
  val splice': 'T t -> start:float -> deleteCount:float -> items:('T list [@js.variadic]) -> 'T list [@@js.call "splice"]
  (**
    Inserts new elements at the start of an array, and returns the new length of the array.
    @param items Elements to insert at the start of the array.
  *)
  val unshift: 'T t -> items:('T list [@js.variadic]) -> float [@@js.call "unshift"]
  (**
    Returns the index of the first occurrence of a value in an array, or -1 if it is not present.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the search starts at index 0.
  *)
  val indexOf: 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Returns the index of the last occurrence of a specified value in an array, or -1 if it is not present.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin searching backward. If fromIndex is omitted, the search starts at the last index in the array.
  *)
  val lastIndexOf: 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: 'T t -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every': 'T t -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: 'T t -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: 'T t -> callbackfn:(value:'T -> index:float -> array:'T list -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
  *)
  val map: 'T t -> callbackfn:(value:'T -> index:float -> array:'T list -> 'U) -> ?thisArg:any -> unit -> 'U list [@@js.call "map"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: 'T t -> predicate:(value:'T -> index:float -> array:'T list -> bool) -> ?thisArg:any -> unit -> 'S list [@@js.call "filter"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
  *)
  val filter': 'T t -> predicate:(value:'T -> index:float -> array:'T list -> unknown) -> ?thisArg:any -> unit -> 'T list [@@js.call "filter"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce: 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduce"]
  (** Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduce': 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduce method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduce'': 'T t -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight: 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> 'T [@@js.call "reduceRight"]
  (** Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function. *)
  val reduceRight': 'T t -> callbackfn:(previousValue:'T -> currentValue:'T -> currentIndex:float -> array:'T list -> 'T) -> initialValue:'T -> 'T [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
    @param callbackfn A function that accepts up to four arguments. The reduceRight method calls the callbackfn function one time for each element in the array.
    @param initialValue If initialValue is specified, it is used as the initial value to start the accumulation. The first call to the callbackfn function provides this value as an argument instead of an array value.
  *)
  val reduceRight'': 'T t -> callbackfn:(previousValue:'U -> currentValue:'T -> currentIndex:float -> array:'T list -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  val get: 'T t -> float -> 'T [@@js.index_get]
  val set: 'T t -> float -> 'T -> unit [@@js.index_set]
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
  val create: t -> ?arrayLength:float -> unit -> any list [@@js.apply_newable]
  val create': t -> arrayLength:float -> 'T list [@@js.apply_newable]
  val create'': t -> items:('T list [@js.variadic]) -> 'T list [@@js.apply_newable]
  val apply: t -> ?arrayLength:float -> unit -> any list [@@js.apply]
  val apply': t -> arrayLength:float -> 'T list [@@js.apply]
  val apply'': t -> items:('T list [@js.variadic]) -> 'T list [@@js.apply]
  val isArray: t -> arg:any -> bool [@@js.call "isArray"]
  val get_prototype: t -> any list [@@js.get "prototype"]
end
val array: _ArrayConstructor [@@js.global "Array"]
module[@js.scope "TypedPropertyDescriptor"] TypedPropertyDescriptor : sig
  type 'T t = 'T _TypedPropertyDescriptor
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_enumerable: 'T t -> bool [@@js.get "enumerable"]
  val set_enumerable: 'T t -> bool -> unit [@@js.set "enumerable"]
  val get_configurable: 'T t -> bool [@@js.get "configurable"]
  val set_configurable: 'T t -> bool -> unit [@@js.set "configurable"]
  val get_writable: 'T t -> bool [@@js.get "writable"]
  val set_writable: 'T t -> bool -> unit [@@js.set "writable"]
  val get_value: 'T t -> 'T [@@js.get "value"]
  val set_value: 'T t -> 'T -> unit [@@js.set "value"]
  val get_: 'T t -> 'T [@@js.call "get"]
  val set_: 'T t -> value:'T -> unit [@@js.call "set"]
end
module[@js.scope "ClassDecorator"] ClassDecorator : sig
  type t = _ClassDecorator
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: t -> target:'TFunction -> ('TFunction, unit) union2 [@@js.apply]
end
module[@js.scope "PropertyDecorator"] PropertyDecorator : sig
  type t = _PropertyDecorator
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: t -> target:_Object -> propertyKey:symbol or_string -> unit [@@js.apply]
end
module[@js.scope "MethodDecorator"] MethodDecorator : sig
  type t = _MethodDecorator
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: t -> target:_Object -> propertyKey:symbol or_string -> descriptor:'T _TypedPropertyDescriptor -> (unit, 'T _TypedPropertyDescriptor) union2 [@@js.apply]
end
module[@js.scope "ParameterDecorator"] ParameterDecorator : sig
  type t = _ParameterDecorator
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: t -> target:_Object -> propertyKey:symbol or_string -> parameterIndex:float -> unit [@@js.apply]
end
module PromiseConstructorLike : sig
  type t = _PromiseConstructorLike
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module[@js.scope "PromiseLike"] PromiseLike : sig
  type 'T t = 'T _PromiseLike
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (**
    Attaches callbacks for the resolution and/or rejection of the Promise.
    @param onfulfilled The callback to execute when the Promise is resolved.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of which ever callback is executed.
  *)
  val then_: 'T t -> ?onfulfilled:(value:'T -> ('TResult1, 'TResult1 t) union2) or_null_or_undefined -> ?onrejected:(reason:any -> ('TResult2, 'TResult2 t) union2) or_null_or_undefined -> unit -> ('TResult1, 'TResult2) union2 t [@@js.call "then"]
end
(** Represents the completion of an asynchronous operation *)
module[@js.scope "Promise"] Promise : sig
  type 'T t = 'T _Promise
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  (**
    Attaches callbacks for the resolution and/or rejection of the Promise.
    @param onfulfilled The callback to execute when the Promise is resolved.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of which ever callback is executed.
  *)
  val then_: 'T t -> ?onfulfilled:(value:'T -> ('TResult1, 'TResult1 _PromiseLike) union2) or_null_or_undefined -> ?onrejected:(reason:any -> ('TResult2, 'TResult2 _PromiseLike) union2) or_null_or_undefined -> unit -> ('TResult1, 'TResult2) union2 t [@@js.call "then"]
  (**
    Attaches a callback for only the rejection of the Promise.
    @param onrejected The callback to execute when the Promise is rejected.
    @return A Promise for the completion of the callback.
  *)
  val catch: 'T t -> ?onrejected:(reason:any -> ('TResult, 'TResult _PromiseLike) union2) or_null_or_undefined -> unit -> ('T, 'TResult) union2 t [@@js.call "catch"]
end
module[@js.scope "ArrayLike"] ArrayLike : sig
  type 'T t = 'T _ArrayLike
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_length: 'T t -> float [@@js.get "length"]
  val get: 'T t -> float -> 'T [@@js.index_get]
end
(** Make all properties in T optional *)
module Partial : sig
  type 'T t = 'T _Partial
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Make all properties in T required *)
module Required : sig
  type 'T t = 'T _Required
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Make all properties in T readonly *)
module Readonly : sig
  type 'T t = 'T _Readonly
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** From T, pick a set of properties whose keys are in the union K *)
module Pick : sig
  type ('T, 'K) t = ('T, 'K) _Pick
  val t_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t
  type ('T, 'K) t_2 = ('T, 'K) t
  val t_2_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t_2
end
(** Construct a type with a set of properties K of type T *)
module Record : sig
  type ('K, 'T) t = ('K, 'T) _Record
  val t_to_js: ('K -> Ojs.t) -> ('T -> Ojs.t) -> ('K, 'T) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'T) -> Ojs.t -> ('K, 'T) t
  type ('K, 'T) t_2 = ('K, 'T) t
  val t_2_to_js: ('K -> Ojs.t) -> ('T -> Ojs.t) -> ('K, 'T) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'K) -> (Ojs.t -> 'T) -> Ojs.t -> ('K, 'T) t_2
end
(** Exclude from T those types that are assignable to U *)
module Exclude : sig
  type ('T, 'U) t = ('T, 'U) _Exclude
  val t_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
  type ('T, 'U) t_2 = ('T, 'U) t
  val t_2_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t_2
end
(** Extract from T those types that are assignable to U *)
module Extract : sig
  type ('T, 'U) t = ('T, 'U) _Extract
  val t_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
  type ('T, 'U) t_2 = ('T, 'U) t
  val t_2_to_js: ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t_2
end
(** Construct a type with the properties of T except for those in type K. *)
module Omit : sig
  type ('T, 'K) t = ('T, 'K) _Omit
  val t_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t
  type ('T, 'K) t_2 = ('T, 'K) t
  val t_2_to_js: ('T -> Ojs.t) -> ('K -> Ojs.t) -> ('T, 'K) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'K) -> Ojs.t -> ('T, 'K) t_2
end
(** Exclude null and undefined from T *)
module NonNullable : sig
  type 'T t = 'T _NonNullable
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Obtain the parameters of a function type in a tuple *)
module Parameters : sig
  type 'T t = 'T _Parameters
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Obtain the parameters of a constructor function type in a tuple *)
module ConstructorParameters : sig
  type 'T t = 'T _ConstructorParameters
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Obtain the return type of a function type *)
module ReturnType : sig
  type 'T t = 'T _ReturnType
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Obtain the return type of a constructor function type *)
module InstanceType : sig
  type 'T t = 'T _InstanceType
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(** Convert string literal type to uppercase *)
module Uppercase : sig
  type 'S t = 'S _Uppercase
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  type 'S t_1 = 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end
(** Convert string literal type to lowercase *)
module Lowercase : sig
  type 'S t = 'S _Lowercase
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  type 'S t_1 = 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end
(** Convert first character of string literal type to uppercase *)
module Capitalize : sig
  type 'S t = 'S _Capitalize
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  type 'S t_1 = 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end
(** Convert first character of string literal type to lowercase *)
module Uncapitalize : sig
  type 'S t = 'S _Uncapitalize
  val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
  val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
  type 'S t_1 = 'S t
  val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
end
(** Marker for contextual 'this' type *)
module ThisType : sig
  type 'T t = 'T _ThisType
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
(**
  Represents a raw buffer of binary data, which is used to store data for the
  different typed arrays. ArrayBuffers cannot be read from or written to directly,
  but can be passed to a typed array or DataView Object to interpret the raw
  buffer as needed.
*)
module[@js.scope "ArrayBuffer"] ArrayBuffer : sig
  type t = _ArrayBuffer
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** Read-only. The length of the ArrayBuffer (in bytes). *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** Returns a section of an ArrayBuffer. *)
  val slice: t -> begin_:float -> ?end_:float -> unit -> t [@@js.call "slice"]
end
(** Allowed ArrayBuffer types for the buffer of an ArrayBufferView and related Typed Arrays. *)
module[@js.scope "ArrayBufferTypes"] ArrayBufferTypes : sig
  type t = _ArrayBufferTypes
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_ArrayBuffer: t -> _ArrayBuffer [@@js.get "ArrayBuffer"]
  val set_ArrayBuffer: t -> _ArrayBuffer -> unit [@@js.set "ArrayBuffer"]
end
module ArrayBufferLike : sig
  type t = _ArrayBufferLike
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module[@js.scope "ArrayBufferConstructor"] ArrayBufferConstructor : sig
  type t = _ArrayBufferConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _ArrayBuffer [@@js.get "prototype"]
  val create: t -> byteLength:float -> _ArrayBuffer [@@js.apply_newable]
  val isView: t -> arg:any -> bool [@@js.call "isView"]
end
(**
  Represents a raw buffer of binary data, which is used to store data for the
  different typed arrays. ArrayBuffers cannot be read from or written to directly,
  but can be passed to a typed array or DataView Object to interpret the raw
  buffer as needed.
*)
val arrayBuffer: _ArrayBufferConstructor [@@js.global "ArrayBuffer"]
module[@js.scope "ArrayBufferView"] ArrayBufferView : sig
  type t = _ArrayBufferView
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The ArrayBuffer instance referenced by the array. *)
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The ArrayBuffer instance referenced by the array. *)
  val set_buffer: t -> _ArrayBufferLike -> unit [@@js.set "buffer"]
  (** The length in bytes of the array. *)
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The length in bytes of the array. *)
  val set_byteLength: t -> float -> unit [@@js.set "byteLength"]
  (** The offset in bytes of the array. *)
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (** The offset in bytes of the array. *)
  val set_byteOffset: t -> float -> unit [@@js.set "byteOffset"]
end
module[@js.scope "DataView"] DataView : sig
  type t = _DataView
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_buffer: t -> _ArrayBuffer [@@js.get "buffer"]
  val get_byteLength: t -> float [@@js.get "byteLength"]
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Gets the Float32 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getFloat32: t -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getFloat32"]
  (**
    Gets the Float64 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getFloat64: t -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getFloat64"]
  (**
    Gets the Int8 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getInt8: t -> byteOffset:float -> float [@@js.call "getInt8"]
  (**
    Gets the Int16 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getInt16: t -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getInt16"]
  (**
    Gets the Int32 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getInt32: t -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getInt32"]
  (**
    Gets the Uint8 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getUint8: t -> byteOffset:float -> float [@@js.call "getUint8"]
  (**
    Gets the Uint16 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getUint16: t -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getUint16"]
  (**
    Gets the Uint32 value at the specified byte offset from the start of the view. There is
    no alignment constraint; multi-byte values may be fetched from any offset.
    @param byteOffset The place in the buffer at which the value should be retrieved.
  *)
  val getUint32: t -> byteOffset:float -> ?littleEndian:bool -> unit -> float [@@js.call "getUint32"]
  (**
    Stores an Float32 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setFloat32: t -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setFloat32"]
  (**
    Stores an Float64 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setFloat64: t -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setFloat64"]
  (**
    Stores an Int8 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
  *)
  val setInt8: t -> byteOffset:float -> value:float -> unit [@@js.call "setInt8"]
  (**
    Stores an Int16 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setInt16: t -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setInt16"]
  (**
    Stores an Int32 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setInt32: t -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setInt32"]
  (**
    Stores an Uint8 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
  *)
  val setUint8: t -> byteOffset:float -> value:float -> unit [@@js.call "setUint8"]
  (**
    Stores an Uint16 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setUint16: t -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setUint16"]
  (**
    Stores an Uint32 value at the specified byte offset from the start of the view.
    @param byteOffset The place in the buffer at which the value should be set.
    @param value The value to set.
    @param littleEndian If false or undefined, a big-endian value should be written,
    otherwise a little-endian value should be written.
  *)
  val setUint32: t -> byteOffset:float -> value:float -> ?littleEndian:bool -> unit -> unit [@@js.call "setUint32"]
end
module[@js.scope "DataViewConstructor"] DataViewConstructor : sig
  type t = _DataViewConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _DataView [@@js.get "prototype"]
  val create: t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?byteLength:float -> unit -> _DataView [@@js.apply_newable]
end
val dataView: _DataViewConstructor [@@js.global "DataView"]
(**
  A typed array of 8-bit integer values. The contents are initialized to 0. If the requested
  number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Int8Array"] Int8Array : sig
  type t = _Int8Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Int8Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Int8ArrayConstructor"] Int8ArrayConstructor : sig
  type t = _Int8ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Int8Array [@@js.get "prototype"]
  val create: t -> length:float -> _Int8Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Int8Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Int8Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Int8Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Int8Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Int8Array [@@js.call "from"]
end
(**
  A typed array of 8-bit integer values. The contents are initialized to 0. If the requested
  number of bytes could not be allocated an exception is raised.
*)
val int8Array: _Int8ArrayConstructor [@@js.global "Int8Array"]
(**
  A typed array of 8-bit unsigned integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Uint8Array"] Uint8Array : sig
  type t = _Uint8Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Uint8Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Uint8ArrayConstructor"] Uint8ArrayConstructor : sig
  type t = _Uint8ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Uint8Array [@@js.get "prototype"]
  val create: t -> length:float -> _Uint8Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Uint8Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Uint8Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Uint8Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Uint8Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Uint8Array [@@js.call "from"]
end
(**
  A typed array of 8-bit unsigned integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
val uint8Array: _Uint8ArrayConstructor [@@js.global "Uint8Array"]
(**
  A typed array of 8-bit unsigned integer (clamped) values. The contents are initialized to 0.
  If the requested number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Uint8ClampedArray"] Uint8ClampedArray : sig
  type t = _Uint8ClampedArray
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Uint8ClampedArray view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Uint8ClampedArrayConstructor"] Uint8ClampedArrayConstructor : sig
  type t = _Uint8ClampedArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Uint8ClampedArray [@@js.get "prototype"]
  val create: t -> length:float -> _Uint8ClampedArray [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Uint8ClampedArray [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Uint8ClampedArray [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Uint8ClampedArray [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Uint8ClampedArray [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Uint8ClampedArray [@@js.call "from"]
end
(**
  A typed array of 8-bit unsigned integer (clamped) values. The contents are initialized to 0.
  If the requested number of bytes could not be allocated an exception is raised.
*)
val uint8ClampedArray: _Uint8ClampedArrayConstructor [@@js.global "Uint8ClampedArray"]
(**
  A typed array of 16-bit signed integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Int16Array"] Int16Array : sig
  type t = _Int16Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Int16Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Int16ArrayConstructor"] Int16ArrayConstructor : sig
  type t = _Int16ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Int16Array [@@js.get "prototype"]
  val create: t -> length:float -> _Int16Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Int16Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Int16Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Int16Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Int16Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Int16Array [@@js.call "from"]
end
(**
  A typed array of 16-bit signed integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
val int16Array: _Int16ArrayConstructor [@@js.global "Int16Array"]
(**
  A typed array of 16-bit unsigned integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Uint16Array"] Uint16Array : sig
  type t = _Uint16Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Uint16Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Uint16ArrayConstructor"] Uint16ArrayConstructor : sig
  type t = _Uint16ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Uint16Array [@@js.get "prototype"]
  val create: t -> length:float -> _Uint16Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Uint16Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Uint16Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Uint16Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Uint16Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Uint16Array [@@js.call "from"]
end
(**
  A typed array of 16-bit unsigned integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
val uint16Array: _Uint16ArrayConstructor [@@js.global "Uint16Array"]
(**
  A typed array of 32-bit signed integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Int32Array"] Int32Array : sig
  type t = _Int32Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Int32Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Int32ArrayConstructor"] Int32ArrayConstructor : sig
  type t = _Int32ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Int32Array [@@js.get "prototype"]
  val create: t -> length:float -> _Int32Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Int32Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Int32Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Int32Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Int32Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Int32Array [@@js.call "from"]
end
(**
  A typed array of 32-bit signed integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
val int32Array: _Int32ArrayConstructor [@@js.global "Int32Array"]
(**
  A typed array of 32-bit unsigned integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Uint32Array"] Uint32Array : sig
  type t = _Uint32Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Uint32Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Uint32ArrayConstructor"] Uint32ArrayConstructor : sig
  type t = _Uint32ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Uint32Array [@@js.get "prototype"]
  val create: t -> length:float -> _Uint32Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Uint32Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Uint32Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Uint32Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Uint32Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Uint32Array [@@js.call "from"]
end
(**
  A typed array of 32-bit unsigned integer values. The contents are initialized to 0. If the
  requested number of bytes could not be allocated an exception is raised.
*)
val uint32Array: _Uint32ArrayConstructor [@@js.global "Uint32Array"]
(**
  A typed array of 32-bit float values. The contents are initialized to 0. If the requested number
  of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Float32Array"] Float32Array : sig
  type t = _Float32Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    Gets a new Float32Array view of the ArrayBuffer store for this array, referencing the elements
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  (** Converts a number to a string by using the current locale. *)
  val toLocaleString: t -> string [@@js.call "toLocaleString"]
  (** Returns a string representation of an array. *)
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Float32ArrayConstructor"] Float32ArrayConstructor : sig
  type t = _Float32ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Float32Array [@@js.get "prototype"]
  val create: t -> length:float -> _Float32Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Float32Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Float32Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Float32Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Float32Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Float32Array [@@js.call "from"]
end
(**
  A typed array of 32-bit float values. The contents are initialized to 0. If the requested number
  of bytes could not be allocated an exception is raised.
*)
val float32Array: _Float32ArrayConstructor [@@js.global "Float32Array"]
(**
  A typed array of 64-bit float values. The contents are initialized to 0. If the requested
  number of bytes could not be allocated an exception is raised.
*)
module[@js.scope "Float64Array"] Float64Array : sig
  type t = _Float64Array
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (** The ArrayBuffer instance referenced by the array. *)
  val get_buffer: t -> _ArrayBufferLike [@@js.get "buffer"]
  (** The length in bytes of the array. *)
  val get_byteLength: t -> float [@@js.get "byteLength"]
  (** The offset in bytes of the array. *)
  val get_byteOffset: t -> float [@@js.get "byteOffset"]
  (**
    Returns the this object after copying a section of the array identified by start and end
    to the same array starting at position target
    @param target If target is negative, it is treated as length+target where length is the
    length of the array.
    @param start If start is negative, it is treated as length+start. If end is negative, it
    is treated as length+end.
    @param end If not specified, length of the this object is used as its default value.
  *)
  val copyWithin: t -> target:float -> start:float -> ?end_:float -> unit -> t [@@js.call "copyWithin"]
  (**
    Determines whether all the members of an array satisfy the specified test.
    @param predicate A function that accepts up to three arguments. The every method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value false, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val every: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
  (**
    Returns the this object after filling the section identified by start and end with value
    @param value value to fill array section with
    @param start index to start filling the array at. If start is negative, it is treated as
    length+start where length is the length of the array.
    @param end index to stop filling the array at. If end is negative, it is treated as
    length+end.
  *)
  val fill: t -> value:float -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
  (**
    Returns the elements of an array that meet the condition specified in a callback function.
    @param predicate A function that accepts up to three arguments. The filter method calls
    the predicate function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val filter: t -> predicate:(value:float -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
  (**
    Returns the value of the first element in the array where predicate is true, and undefined
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found, find
    immediately returns that element value. Otherwise, find returns undefined.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val find: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float or_undefined [@@js.call "find"]
  (**
    Returns the index of the first element in the array where predicate is true, and -1
    otherwise.
    @param predicate find calls predicate once for each element of the array, in ascending
    order, until it finds one where predicate returns true. If such an element is found,
    findIndex immediately returns that element index. Otherwise, findIndex returns -1.
    @param thisArg If provided, it will be used as the this value for each invocation of
    predicate. If it is not provided, undefined is used instead.
  *)
  val findIndex: t -> predicate:(value:float -> index:float -> obj:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
  (**
    Performs the specified action for each element in an array.
    @param callbackfn A function that accepts up to three arguments. forEach calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val forEach: t -> callbackfn:(value:float -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  (**
    Returns the index of the first occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val indexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
  (**
    Adds all the elements of an array separated by the specified separator string.
    @param separator A string used to separate one element of an array from the next in the
    resulting String. If omitted, the array elements are separated with a comma.
  *)
  val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
  (**
    Returns the index of the last occurrence of a value in an array.
    @param searchElement The value to locate in the array.
    @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
    search starts at index 0.
  *)
  val lastIndexOf: t -> searchElement:float -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
  (** The length of the array. *)
  val get_length: t -> float [@@js.get "length"]
  (**
    Calls a defined callback function on each element of an array, and returns an array that
    contains the results.
    @param callbackfn A function that accepts up to three arguments. The map method calls the
    callbackfn function one time for each element in the array.
    @param thisArg An object to which the this keyword can refer in the callbackfn function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val map: t -> callbackfn:(value:float -> index:float -> array:t -> float) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
  val reduce: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduce"]
  (**
    Calls the specified callback function for all the elements in an array. The return value of
    the callback function is the accumulated result, and is provided as an argument in the next
    call to the callback function.
  *)
  val reduce': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduce"]
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
  val reduce'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
  val reduceRight: t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> float [@@js.call "reduceRight"]
  (**
    Calls the specified callback function for all the elements in an array, in descending order.
    The return value of the callback function is the accumulated result, and is provided as an
    argument in the next call to the callback function.
  *)
  val reduceRight': t -> callbackfn:(previousValue:float -> currentValue:float -> currentIndex:float -> array:t -> float) -> initialValue:float -> float [@@js.call "reduceRight"]
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
  val reduceRight'': t -> callbackfn:(previousValue:'U -> currentValue:float -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
  (** Reverses the elements in an Array. *)
  val reverse: t -> t [@@js.call "reverse"]
  (**
    Sets a value or an array of values.
    @param array A typed or untyped array of values to set.
    @param offset The index in the current array at which the values are to be written.
  *)
  val set_: t -> array:float _ArrayLike -> ?offset:float -> unit -> unit [@@js.call "set"]
  (**
    Returns a section of an array.
    @param start The beginning of the specified portion of the array.
    @param end The end of the specified portion of the array. This is exclusive of the element at the index 'end'.
  *)
  val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
  (**
    Determines whether the specified callback function returns true for any element of an array.
    @param predicate A function that accepts up to three arguments. The some method calls
    the predicate function for each element in the array until the predicate returns a value
    which is coercible to the Boolean value true, or until the end of the array.
    @param thisArg An object to which the this keyword can refer in the predicate function.
    If thisArg is omitted, undefined is used as the this value.
  *)
  val some: t -> predicate:(value:float -> index:float -> array:t -> unknown) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
  (**
    Sorts an array.
    @param compareFn Function used to determine the order of the elements. It is expected to return
    a negative value if first argument is less than second argument, zero if they're equal and a positive
    value otherwise. If omitted, the elements are sorted in ascending, ASCII character order.
    ```ts
    \[11,2,22,1\].sort((a, b) => a - b)
    ```
  *)
  val sort: t -> ?compareFn:(a:float -> b:float -> float) -> unit -> t [@@js.call "sort"]
  (**
    at begin, inclusive, up to end, exclusive.
    @param begin The index of the beginning of the array.
    @param end The index of the end of the array.
  *)
  val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
  val toString: t -> string [@@js.call "toString"]
  (** Returns the primitive value of the specified object. *)
  val valueOf: t -> t [@@js.call "valueOf"]
  val get: t -> float -> float [@@js.index_get]
  val set: t -> float -> float -> unit [@@js.index_set]
end
module[@js.scope "Float64ArrayConstructor"] Float64ArrayConstructor : sig
  type t = _Float64ArrayConstructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_prototype: t -> _Float64Array [@@js.get "prototype"]
  val create: t -> length:float -> _Float64Array [@@js.apply_newable]
  val create': t -> array:(_ArrayBufferLike, float _ArrayLike) union2 -> _Float64Array [@@js.apply_newable]
  val create'': t -> buffer:_ArrayBufferLike -> ?byteOffset:float -> ?length:float -> unit -> _Float64Array [@@js.apply_newable]
  (** The size in bytes of each element in the array. *)
  val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
  (**
    Returns a new array from a set of elements.
    @param items A set of elements to include in the new array object.
  *)
  val of_: t -> items:(float list [@js.variadic]) -> _Float64Array [@@js.call "of"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
  *)
  val from: t -> arrayLike:float _ArrayLike -> _Float64Array [@@js.call "from"]
  (**
    Creates an array from an array-like or iterable object.
    @param arrayLike An array-like or iterable object to convert to an array.
    @param mapfn A mapping function to call on every element of the array.
    @param thisArg Value of 'this' used to invoke the mapfn.
  *)
  val from': t -> arrayLike:'T _ArrayLike -> mapfn:(v:'T -> k:float -> float) -> ?thisArg:any -> unit -> _Float64Array [@@js.call "from"]
end
(**
  A typed array of 64-bit float values. The contents are initialized to 0. If the requested
  number of bytes could not be allocated an exception is raised.
*)
val float64Array: _Float64ArrayConstructor [@@js.global "Float64Array"]
module[@js.scope "Intl"] Intl : sig
  module[@js.scope "CollatorOptions"] CollatorOptions : sig
    type t = _Intl_CollatorOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_usage: t -> string [@@js.get "usage"]
    val set_usage: t -> string -> unit [@@js.set "usage"]
    val get_localeMatcher: t -> string [@@js.get "localeMatcher"]
    val set_localeMatcher: t -> string -> unit [@@js.set "localeMatcher"]
    val get_numeric: t -> bool [@@js.get "numeric"]
    val set_numeric: t -> bool -> unit [@@js.set "numeric"]
    val get_caseFirst: t -> string [@@js.get "caseFirst"]
    val set_caseFirst: t -> string -> unit [@@js.set "caseFirst"]
    val get_sensitivity: t -> string [@@js.get "sensitivity"]
    val set_sensitivity: t -> string -> unit [@@js.set "sensitivity"]
    val get_ignorePunctuation: t -> bool [@@js.get "ignorePunctuation"]
    val set_ignorePunctuation: t -> bool -> unit [@@js.set "ignorePunctuation"]
  end
  module[@js.scope "ResolvedCollatorOptions"] ResolvedCollatorOptions : sig
    type t = _Intl_ResolvedCollatorOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_locale: t -> string [@@js.get "locale"]
    val set_locale: t -> string -> unit [@@js.set "locale"]
    val get_usage: t -> string [@@js.get "usage"]
    val set_usage: t -> string -> unit [@@js.set "usage"]
    val get_sensitivity: t -> string [@@js.get "sensitivity"]
    val set_sensitivity: t -> string -> unit [@@js.set "sensitivity"]
    val get_ignorePunctuation: t -> bool [@@js.get "ignorePunctuation"]
    val set_ignorePunctuation: t -> bool -> unit [@@js.set "ignorePunctuation"]
    val get_collation: t -> string [@@js.get "collation"]
    val set_collation: t -> string -> unit [@@js.set "collation"]
    val get_caseFirst: t -> string [@@js.get "caseFirst"]
    val set_caseFirst: t -> string -> unit [@@js.set "caseFirst"]
    val get_numeric: t -> bool [@@js.get "numeric"]
    val set_numeric: t -> bool -> unit [@@js.set "numeric"]
  end
  module[@js.scope "Collator"] Collator : sig
    type t = _Intl_Collator
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val compare: t -> x:string -> y:string -> float [@@js.call "compare"]
    val resolvedOptions: t -> _Intl_ResolvedCollatorOptions [@@js.call "resolvedOptions"]
  end
  val collator: anonymous_interface_2 [@@js.global "Collator"]
  module[@js.scope "NumberFormatOptions"] NumberFormatOptions : sig
    type t = _Intl_NumberFormatOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_localeMatcher: t -> string [@@js.get "localeMatcher"]
    val set_localeMatcher: t -> string -> unit [@@js.set "localeMatcher"]
    val get_style: t -> string [@@js.get "style"]
    val set_style: t -> string -> unit [@@js.set "style"]
    val get_currency: t -> string [@@js.get "currency"]
    val set_currency: t -> string -> unit [@@js.set "currency"]
    val get_currencyDisplay: t -> string [@@js.get "currencyDisplay"]
    val set_currencyDisplay: t -> string -> unit [@@js.set "currencyDisplay"]
    val get_currencySign: t -> string [@@js.get "currencySign"]
    val set_currencySign: t -> string -> unit [@@js.set "currencySign"]
    val get_useGrouping: t -> bool [@@js.get "useGrouping"]
    val set_useGrouping: t -> bool -> unit [@@js.set "useGrouping"]
    val get_minimumIntegerDigits: t -> float [@@js.get "minimumIntegerDigits"]
    val set_minimumIntegerDigits: t -> float -> unit [@@js.set "minimumIntegerDigits"]
    val get_minimumFractionDigits: t -> float [@@js.get "minimumFractionDigits"]
    val set_minimumFractionDigits: t -> float -> unit [@@js.set "minimumFractionDigits"]
    val get_maximumFractionDigits: t -> float [@@js.get "maximumFractionDigits"]
    val set_maximumFractionDigits: t -> float -> unit [@@js.set "maximumFractionDigits"]
    val get_minimumSignificantDigits: t -> float [@@js.get "minimumSignificantDigits"]
    val set_minimumSignificantDigits: t -> float -> unit [@@js.set "minimumSignificantDigits"]
    val get_maximumSignificantDigits: t -> float [@@js.get "maximumSignificantDigits"]
    val set_maximumSignificantDigits: t -> float -> unit [@@js.set "maximumSignificantDigits"]
  end
  module[@js.scope "ResolvedNumberFormatOptions"] ResolvedNumberFormatOptions : sig
    type t = _Intl_ResolvedNumberFormatOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_locale: t -> string [@@js.get "locale"]
    val set_locale: t -> string -> unit [@@js.set "locale"]
    val get_numberingSystem: t -> string [@@js.get "numberingSystem"]
    val set_numberingSystem: t -> string -> unit [@@js.set "numberingSystem"]
    val get_style: t -> string [@@js.get "style"]
    val set_style: t -> string -> unit [@@js.set "style"]
    val get_currency: t -> string [@@js.get "currency"]
    val set_currency: t -> string -> unit [@@js.set "currency"]
    val get_currencyDisplay: t -> string [@@js.get "currencyDisplay"]
    val set_currencyDisplay: t -> string -> unit [@@js.set "currencyDisplay"]
    val get_minimumIntegerDigits: t -> float [@@js.get "minimumIntegerDigits"]
    val set_minimumIntegerDigits: t -> float -> unit [@@js.set "minimumIntegerDigits"]
    val get_minimumFractionDigits: t -> float [@@js.get "minimumFractionDigits"]
    val set_minimumFractionDigits: t -> float -> unit [@@js.set "minimumFractionDigits"]
    val get_maximumFractionDigits: t -> float [@@js.get "maximumFractionDigits"]
    val set_maximumFractionDigits: t -> float -> unit [@@js.set "maximumFractionDigits"]
    val get_minimumSignificantDigits: t -> float [@@js.get "minimumSignificantDigits"]
    val set_minimumSignificantDigits: t -> float -> unit [@@js.set "minimumSignificantDigits"]
    val get_maximumSignificantDigits: t -> float [@@js.get "maximumSignificantDigits"]
    val set_maximumSignificantDigits: t -> float -> unit [@@js.set "maximumSignificantDigits"]
    val get_useGrouping: t -> bool [@@js.get "useGrouping"]
    val set_useGrouping: t -> bool -> unit [@@js.set "useGrouping"]
  end
  module[@js.scope "NumberFormat"] NumberFormat : sig
    type t = _Intl_NumberFormat
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val format: t -> value:float -> string [@@js.call "format"]
    val resolvedOptions: t -> _Intl_ResolvedNumberFormatOptions [@@js.call "resolvedOptions"]
  end
  val numberFormat: anonymous_interface_4 [@@js.global "NumberFormat"]
  module[@js.scope "DateTimeFormatOptions"] DateTimeFormatOptions : sig
    type t = _Intl_DateTimeFormatOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_localeMatcher: t -> ([`L_s2_best_fit[@js "best fit"] | `L_s4_lookup[@js "lookup"]] [@js.enum]) [@@js.get "localeMatcher"]
    val set_localeMatcher: t -> ([`L_s2_best_fit | `L_s4_lookup] [@js.enum]) -> unit [@@js.set "localeMatcher"]
    val get_weekday: t -> ([`L_s3_long[@js "long"] | `L_s5_narrow[@js "narrow"] | `L_s7_short[@js "short"]] [@js.enum]) [@@js.get "weekday"]
    val set_weekday: t -> ([`L_s3_long | `L_s5_narrow | `L_s7_short] [@js.enum]) -> unit [@@js.set "weekday"]
    val get_era: t -> ([`L_s3_long[@js "long"] | `L_s5_narrow[@js "narrow"] | `L_s7_short[@js "short"]] [@js.enum]) [@@js.get "era"]
    val set_era: t -> ([`L_s3_long | `L_s5_narrow | `L_s7_short] [@js.enum]) -> unit [@@js.set "era"]
    val get_year: t -> ([`L_s0_2_digit[@js "2-digit"] | `L_s6_numeric[@js "numeric"]] [@js.enum]) [@@js.get "year"]
    val set_year: t -> ([`L_s0_2_digit | `L_s6_numeric] [@js.enum]) -> unit [@@js.set "year"]
    val get_month: t -> ([`L_s0_2_digit[@js "2-digit"] | `L_s3_long[@js "long"] | `L_s5_narrow[@js "narrow"] | `L_s6_numeric[@js "numeric"] | `L_s7_short[@js "short"]] [@js.enum]) [@@js.get "month"]
    val set_month: t -> ([`L_s0_2_digit | `L_s3_long | `L_s5_narrow | `L_s6_numeric | `L_s7_short] [@js.enum]) -> unit [@@js.set "month"]
    val get_day: t -> ([`L_s0_2_digit[@js "2-digit"] | `L_s6_numeric[@js "numeric"]] [@js.enum]) [@@js.get "day"]
    val set_day: t -> ([`L_s0_2_digit | `L_s6_numeric] [@js.enum]) -> unit [@@js.set "day"]
    val get_hour: t -> ([`L_s0_2_digit[@js "2-digit"] | `L_s6_numeric[@js "numeric"]] [@js.enum]) [@@js.get "hour"]
    val set_hour: t -> ([`L_s0_2_digit | `L_s6_numeric] [@js.enum]) -> unit [@@js.set "hour"]
    val get_minute: t -> ([`L_s0_2_digit[@js "2-digit"] | `L_s6_numeric[@js "numeric"]] [@js.enum]) [@@js.get "minute"]
    val set_minute: t -> ([`L_s0_2_digit | `L_s6_numeric] [@js.enum]) -> unit [@@js.set "minute"]
    val get_second: t -> ([`L_s0_2_digit[@js "2-digit"] | `L_s6_numeric[@js "numeric"]] [@js.enum]) [@@js.get "second"]
    val set_second: t -> ([`L_s0_2_digit | `L_s6_numeric] [@js.enum]) -> unit [@@js.set "second"]
    val get_timeZoneName: t -> ([`L_s3_long[@js "long"] | `L_s7_short[@js "short"]] [@js.enum]) [@@js.get "timeZoneName"]
    val set_timeZoneName: t -> ([`L_s3_long | `L_s7_short] [@js.enum]) -> unit [@@js.set "timeZoneName"]
    val get_formatMatcher: t -> ([`L_s1_basic[@js "basic"] | `L_s2_best_fit[@js "best fit"]] [@js.enum]) [@@js.get "formatMatcher"]
    val set_formatMatcher: t -> ([`L_s1_basic | `L_s2_best_fit] [@js.enum]) -> unit [@@js.set "formatMatcher"]
    val get_hour12: t -> bool [@@js.get "hour12"]
    val set_hour12: t -> bool -> unit [@@js.set "hour12"]
    val get_timeZone: t -> string [@@js.get "timeZone"]
    val set_timeZone: t -> string -> unit [@@js.set "timeZone"]
  end
  module[@js.scope "ResolvedDateTimeFormatOptions"] ResolvedDateTimeFormatOptions : sig
    type t = _Intl_ResolvedDateTimeFormatOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_locale: t -> string [@@js.get "locale"]
    val set_locale: t -> string -> unit [@@js.set "locale"]
    val get_calendar: t -> string [@@js.get "calendar"]
    val set_calendar: t -> string -> unit [@@js.set "calendar"]
    val get_numberingSystem: t -> string [@@js.get "numberingSystem"]
    val set_numberingSystem: t -> string -> unit [@@js.set "numberingSystem"]
    val get_timeZone: t -> string [@@js.get "timeZone"]
    val set_timeZone: t -> string -> unit [@@js.set "timeZone"]
    val get_hour12: t -> bool [@@js.get "hour12"]
    val set_hour12: t -> bool -> unit [@@js.set "hour12"]
    val get_weekday: t -> string [@@js.get "weekday"]
    val set_weekday: t -> string -> unit [@@js.set "weekday"]
    val get_era: t -> string [@@js.get "era"]
    val set_era: t -> string -> unit [@@js.set "era"]
    val get_year: t -> string [@@js.get "year"]
    val set_year: t -> string -> unit [@@js.set "year"]
    val get_month: t -> string [@@js.get "month"]
    val set_month: t -> string -> unit [@@js.set "month"]
    val get_day: t -> string [@@js.get "day"]
    val set_day: t -> string -> unit [@@js.set "day"]
    val get_hour: t -> string [@@js.get "hour"]
    val set_hour: t -> string -> unit [@@js.set "hour"]
    val get_minute: t -> string [@@js.get "minute"]
    val set_minute: t -> string -> unit [@@js.set "minute"]
    val get_second: t -> string [@@js.get "second"]
    val set_second: t -> string -> unit [@@js.set "second"]
    val get_timeZoneName: t -> string [@@js.get "timeZoneName"]
    val set_timeZoneName: t -> string -> unit [@@js.set "timeZoneName"]
  end
  module[@js.scope "DateTimeFormat"] DateTimeFormat : sig
    type t = _Intl_DateTimeFormat
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val format: t -> ?date:_Date or_number -> unit -> string [@@js.call "format"]
    val resolvedOptions: t -> _Intl_ResolvedDateTimeFormatOptions [@@js.call "resolvedOptions"]
  end
  val dateTimeFormat: anonymous_interface_3 [@@js.global "DateTimeFormat"]
end
