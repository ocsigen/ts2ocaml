[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - IteratorResult<T1, T2>
  - PromiseLike<T1>
 *)
[@@@js.stop]
module type Missing = sig
  module IteratorResult : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module PromiseLike : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module IteratorResult : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module PromiseLike : sig
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
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_1 = [`anonymous_interface_1] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type ('T, 'TReturn, 'TNext) _AsyncGenerator = [`AsyncGenerator of ('T * 'TReturn * 'TNext) | `AsyncIterator of ('T * 'TReturn * 'TNext)] intf
      [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
      and _AsyncGeneratorFunction = [`AsyncGeneratorFunction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _AsyncGeneratorFunctionConstructor = [`AsyncGeneratorFunctionConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _AsyncIterable = [`AsyncIterable of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T _AsyncIterableIterator = [`AsyncIterableIterator of 'T | `AsyncIterator of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ('T, 'TReturn, 'TNext) _AsyncIterator = [`AsyncIterator of ('T * 'TReturn * 'TNext)] intf
      [@@js.custom { of_js=(fun _T _TReturn _TNext -> Obj.magic); to_js=(fun _T _TReturn _TNext -> Obj.magic) }]
      and _Intl_LDMLPluralRule = ([`L_s2_few[@js "few"] | `L_s4_many[@js "many"] | `L_s5_one[@js "one"] | `L_s7_other[@js "other"] | `L_s8_two[@js "two"] | `L_s9_zero[@js "zero"]] [@js.enum])
      and _Intl_PluralRuleType = ([`L_s1_cardinal[@js "cardinal"] | `L_s6_ordinal[@js "ordinal"]] [@js.enum])
      and _Intl_PluralRules = [`Intl_PluralRules] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_PluralRulesOptions = [`Intl_PluralRulesOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_ResolvedPluralRulesOptions = [`Intl_ResolvedPluralRulesOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _Promise = [`Promise of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _RegExp = regexp
      and _RegExpExecArray = [`RegExpExecArray] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _RegExpMatchArray = [`RegExpMatchArray] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SymbolConstructor = [`SymbolConstructor] intf
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
    val get: t -> string -> string [@@js.index_get]
    val set: t -> string -> string -> unit [@@js.index_set]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> ?locales:string list or_string -> ?options:_Intl_PluralRulesOptions -> unit -> _Intl_PluralRules [@@js.apply_newable]
    val apply: t -> ?locales:string list or_string -> ?options:_Intl_PluralRulesOptions -> unit -> _Intl_PluralRules [@@js.apply]
    val supportedLocalesOf: t -> locales:string list or_string -> ?options:_Intl_PluralRulesOptions -> unit -> string list [@@js.call "supportedLocalesOf"]
  end
  module[@js.scope "AsyncGenerator"] AsyncGenerator : sig
    type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _AsyncGenerator
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
    val next: ('T, 'TReturn, 'TNext) t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) IteratorResult.t_2 _Promise [@@js.call "next"]
    val return: ('T, 'TReturn, 'TNext) t -> value:('TReturn, 'TReturn PromiseLike.t_1) union2 -> ('T, 'TReturn) IteratorResult.t_2 _Promise [@@js.call "return"]
    val throw: ('T, 'TReturn, 'TNext) t -> e:any -> ('T, 'TReturn) IteratorResult.t_2 _Promise [@@js.call "throw"]
    val _Symbol_asyncIterator_: ('T, 'TReturn, 'TNext) t -> ('T, 'TReturn, 'TNext) t [@@js.call "[Symbol.asyncIterator]"]
    val cast: ('T, 'TReturn, 'TNext) t -> ('T, 'TReturn, 'TNext) _AsyncIterator [@@js.cast]
  end
  module[@js.scope "AsyncGeneratorFunction"] AsyncGeneratorFunction : sig
    type t = _AsyncGeneratorFunction
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> args:(any list [@js.variadic]) -> (unknown, any, unknown) _AsyncGenerator [@@js.apply_newable]
    val apply: t -> args:(any list [@js.variadic]) -> (unknown, any, unknown) _AsyncGenerator [@@js.apply]
    val get_length: t -> float [@@js.get "length"]
    val get_name: t -> string [@@js.get "name"]
    val get_prototype: t -> (unknown, any, unknown) _AsyncGenerator [@@js.get "prototype"]
  end
  module[@js.scope "AsyncGeneratorFunctionConstructor"] AsyncGeneratorFunctionConstructor : sig
    type t = _AsyncGeneratorFunctionConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> args:(string list [@js.variadic]) -> _AsyncGeneratorFunction [@@js.apply_newable]
    val apply: t -> args:(string list [@js.variadic]) -> _AsyncGeneratorFunction [@@js.apply]
    val get_length: t -> float [@@js.get "length"]
    val get_name: t -> string [@@js.get "name"]
    val get_prototype: t -> _AsyncGeneratorFunction [@@js.get "prototype"]
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
    type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _AsyncIterator
    val t_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t
    type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t
    val t_3_to_js: ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('TNext -> Ojs.t) -> ('T, 'TReturn, 'TNext) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> (Ojs.t -> 'TNext) -> Ojs.t -> ('T, 'TReturn, 'TNext) t_3
    val next: ('T, 'TReturn, 'TNext) t -> args:((* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic argument *)any list [@js.variadic]) -> ('T, 'TReturn) IteratorResult.t_2 _Promise [@@js.call "next"]
    val return: ('T, 'TReturn, 'TNext) t -> ?value:('TReturn, 'TReturn PromiseLike.t_1) union2 -> unit -> ('T, 'TReturn) IteratorResult.t_2 _Promise [@@js.call "return"]
    val throw: ('T, 'TReturn, 'TNext) t -> ?e:any -> unit -> ('T, 'TReturn) IteratorResult.t_2 _Promise [@@js.call "throw"]
  end
  module[@js.scope "AsyncIterable"] AsyncIterable : sig
    type 'T t = 'T _AsyncIterable
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_asyncIterator_: 'T t -> ('T, any, never or_undefined) _AsyncIterator [@@js.call "[Symbol.asyncIterator]"]
  end
  module[@js.scope "AsyncIterableIterator"] AsyncIterableIterator : sig
    type 'T t = 'T _AsyncIterableIterator
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val _Symbol_asyncIterator_: 'T t -> 'T t [@@js.call "[Symbol.asyncIterator]"]
    val cast: 'T t -> ('T, any, never or_undefined) _AsyncIterator [@@js.cast]
  end
  module[@js.scope "Intl"] Intl : sig
    module LDMLPluralRule : sig
      type t = _Intl_LDMLPluralRule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module PluralRuleType : sig
      type t = _Intl_PluralRuleType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "PluralRulesOptions"] PluralRulesOptions : sig
      type t = _Intl_PluralRulesOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_localeMatcher: t -> ([`L_s0_best_fit[@js "best fit"] | `L_s3_lookup[@js "lookup"]] [@js.enum]) [@@js.get "localeMatcher"]
      val set_localeMatcher: t -> ([`L_s0_best_fit | `L_s3_lookup] [@js.enum]) -> unit [@@js.set "localeMatcher"]
      val get_type: t -> _Intl_PluralRuleType [@@js.get "type"]
      val set_type: t -> _Intl_PluralRuleType -> unit [@@js.set "type"]
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
    module[@js.scope "ResolvedPluralRulesOptions"] ResolvedPluralRulesOptions : sig
      type t = _Intl_ResolvedPluralRulesOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_locale: t -> string [@@js.get "locale"]
      val set_locale: t -> string -> unit [@@js.set "locale"]
      val get_pluralCategories: t -> _Intl_LDMLPluralRule list [@@js.get "pluralCategories"]
      val set_pluralCategories: t -> _Intl_LDMLPluralRule list -> unit [@@js.set "pluralCategories"]
      val get_type: t -> _Intl_PluralRuleType [@@js.get "type"]
      val set_type: t -> _Intl_PluralRuleType -> unit [@@js.set "type"]
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
    module[@js.scope "PluralRules"] PluralRules : sig
      type t = _Intl_PluralRules
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val resolvedOptions: t -> _Intl_ResolvedPluralRulesOptions [@@js.call "resolvedOptions"]
      val select: t -> n:float -> _Intl_LDMLPluralRule [@@js.call "select"]
    end
    val pluralRules: anonymous_interface_1 [@@js.global "PluralRules"]
  end
  module[@js.scope "Promise"] Promise : sig
    type 'T t = 'T _Promise
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val finally: 'T t -> ?onfinally:(unit -> unit) or_null_or_undefined -> unit -> 'T t [@@js.call "finally"]
  end
  module[@js.scope "RegExpMatchArray"] RegExpMatchArray : sig
    type t = _RegExpMatchArray
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_groups: t -> anonymous_interface_0 [@@js.get "groups"]
    val set_groups: t -> anonymous_interface_0 -> unit [@@js.set "groups"]
  end
  module[@js.scope "RegExpExecArray"] RegExpExecArray : sig
    type t = _RegExpExecArray
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_groups: t -> anonymous_interface_0 [@@js.get "groups"]
    val set_groups: t -> anonymous_interface_0 -> unit [@@js.set "groups"]
  end
  module[@js.scope "RegExp"] RegExp : sig
    type t = _RegExp
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dotAll: t -> bool [@@js.get "dotAll"]
  end
end
