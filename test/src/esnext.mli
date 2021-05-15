[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(*
  
    unknown identifiers:
    - Error
    - Iterable<T1>
    - Promise<T1>
    - PromiseLike<T1>

*)
[@@@js.stop]
module type Missing = sig
  module Error : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Iterable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
    module Error : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Iterable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _AggregateError = [`AggregateError] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _AggregateErrorConstructor = [`AggregateErrorConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FinalizationRegistry = [`FinalizationRegistry] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FinalizationRegistryConstructor = [`FinalizationRegistryConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_NumberFormat = [`Intl_NumberFormat] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_NumberFormatPart = [`Intl_NumberFormatPart] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_NumberFormatPartTypes = ([`L_s2_compact[@js "compact"] | `L_s3_currency[@js "currency"] | `L_s4_decimal[@js "decimal"] | `L_s5_exponentInteger[@js "exponentInteger"] | `L_s6_exponentMinusSign[@js "exponentMinusSign"] | `L_s7_exponentSeparator[@js "exponentSeparator"] | `L_s8_fraction[@js "fraction"] | `L_s9_group[@js "group"] | `L_s10_infinity[@js "infinity"] | `L_s11_integer[@js "integer"] | `L_s12_literal[@js "literal"] | `L_s13_minusSign[@js "minusSign"] | `L_s14_nan[@js "nan"] | `L_s15_percentSign[@js "percentSign"] | `L_s16_plusSign[@js "plusSign"] | `L_s17_unit[@js "unit"] | `L_s18_unknown[@js "unknown"]] [@js.enum])
      and _PromiseConstructor = [`PromiseConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _WeakRef = [`WeakRef of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _WeakRefConstructor = [`WeakRefConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
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
  module[@js.scope "AggregateError"] AggregateError : sig
    type t = _AggregateError
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_errors: t -> any list [@@js.get "errors"]
    val set_errors: t -> any list -> unit [@@js.set "errors"]
    val cast: t -> Error.t_0 [@@js.cast]
  end
  module[@js.scope "AggregateErrorConstructor"] AggregateErrorConstructor : sig
    type t = _AggregateErrorConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> errors:any Iterable.t_1 -> ?message:string -> unit -> _AggregateError [@@js.apply_newable]
    val apply: t -> errors:any Iterable.t_1 -> ?message:string -> unit -> _AggregateError [@@js.apply]
    val get_prototype: t -> _AggregateError [@@js.get "prototype"]
  end
  val aggregateError: _AggregateErrorConstructor [@@js.global "AggregateError"]
  (** Represents the completion of an asynchronous operation *)
  module[@js.scope "PromiseConstructor"] PromiseConstructor : sig
    type t = _PromiseConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      The any function returns a promise that is fulfilled by the first given promise to be fulfilled, or rejected with an AggregateError containing an array of rejection reasons if all of the given promises are rejected. It resolves all elements of the passed iterable to promises as it runs this algorithm.
      @param values An array or iterable of Promises.
      @return A new Promise.
    *)
    val any: t -> values:(('T, 'T PromiseLike.t_1) union2 Iterable.t_1, ('T, 'T PromiseLike.t_1) union2) or_array -> 'T Promise.t_1 [@@js.call "any"]
  end
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Replace all instances of a substring in a string, using a regular expression or search string.
      @param searchValue A string to search for.
      @param replaceValue A string containing the text to replace for every successful match of searchValue in this string.
    *)
    val replaceAll: t -> searchValue:regexp or_string -> replaceValue:string -> string [@@js.call "replaceAll"]
    (**
      Replace all instances of a substring in a string, using a regular expression or search string.
      @param searchValue A string to search for.
      @param replacer A function that returns the replacement text.
    *)
    val replaceAll': t -> searchValue:regexp or_string -> replacer:(substring:string -> args:(any list [@js.variadic]) -> string) -> string [@@js.call "replaceAll"]
    val to_ml: t -> string [@@js.cast]
    val of_ml: string -> t [@@js.cast]
  end
  module[@js.scope "WeakRef"] WeakRef : sig
    type 'T t = 'T _WeakRef
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get__Symbol_toStringTag_: 'T t -> ([`L_s1_WeakRef[@js "WeakRef"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
    (**
      Returns the WeakRef instance's target object, or undefined if the target object has been
      reclaimed.
    *)
    val deref: 'T t -> 'T or_undefined [@@js.call "deref"]
  end
  module[@js.scope "WeakRefConstructor"] WeakRefConstructor : sig
    type t = _WeakRefConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_prototype: t -> any _WeakRef [@@js.get "prototype"]
    (**
      Creates a WeakRef instance for the given target object.
      @param target The target object for the WeakRef instance.
    *)
    val create: t -> ?target:'T -> unit -> 'T _WeakRef [@@js.apply_newable]
  end
  val weakRef: _WeakRefConstructor [@@js.global "WeakRef"]
  module[@js.scope "FinalizationRegistry"] FinalizationRegistry : sig
    type t = _FinalizationRegistry
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__Symbol_toStringTag_: t -> ([`L_s0_FinalizationRegistry[@js "FinalizationRegistry"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
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
  end
  module[@js.scope "FinalizationRegistryConstructor"] FinalizationRegistryConstructor : sig
    type t = _FinalizationRegistryConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_prototype: t -> _FinalizationRegistry [@@js.get "prototype"]
    (**
      Creates a finalization registry with an associated cleanup callback
      @param cleanupCallback The callback to call after an object in the registry has been reclaimed.
    *)
    val create: t -> cleanupCallback:(heldValue:any -> unit) -> _FinalizationRegistry [@@js.apply_newable]
  end
  val finalizationRegistry: _FinalizationRegistryConstructor [@@js.global "FinalizationRegistry"]
end
