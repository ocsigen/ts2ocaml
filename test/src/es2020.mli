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
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _Atomics = [`Atomics] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigInt = bigint
      and _BigInt64Array = [`BigInt64Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigInt64ArrayConstructor = [`BigInt64ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigIntConstructor = [`BigIntConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigIntToLocaleStringOptions = [`BigIntToLocaleStringOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigUint64Array = [`BigUint64Array] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _BigUint64ArrayConstructor = [`BigUint64ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DataView = [`DataView] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_BCP47LanguageTag = string
      and _Intl_DateTimeFormatOptions = [`Intl_DateTimeFormatOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_NumberFormat = [`Intl_NumberFormat] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_NumberFormatOptions = [`Intl_NumberFormatOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_RelativeTimeFormat = [`Intl_RelativeTimeFormat] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_RelativeTimeFormatLocaleMatcher = ([`L_s5_best_fit[@js "best fit"] | `L_s17_lookup[@js "lookup"]] [@js.enum])
      and _Intl_RelativeTimeFormatNumeric = ([`L_s3_always[@js "always"] | `L_s4_auto[@js "auto"]] [@js.enum])
      and _Intl_RelativeTimeFormatOptions = [`Intl_RelativeTimeFormatOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_RelativeTimeFormatPart = [`Intl_RelativeTimeFormatPart] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_RelativeTimeFormatStyle = ([`L_s16_long[@js "long"] | `L_s23_narrow[@js "narrow"] | `L_s31_short[@js "short"]] [@js.enum])
      and _Intl_RelativeTimeFormatUnit = ([`L_s6_day[@js "day"] | `L_s7_days[@js "days"] | `L_s14_hour[@js "hour"] | `L_s15_hours[@js "hours"] | `L_s19_minute[@js "minute"] | `L_s20_minutes[@js "minutes"] | `L_s21_month[@js "month"] | `L_s22_months[@js "months"] | `L_s26_quarter[@js "quarter"] | `L_s27_quarters[@js "quarters"] | `L_s29_second[@js "second"] | `L_s30_seconds[@js "seconds"] | `L_s33_week[@js "week"] | `L_s34_weeks[@js "weeks"] | `L_s35_year[@js "year"] | `L_s36_years[@js "years"]] [@js.enum])
      and _Intl_ResolvedNumberFormatOptions = [`Intl_ResolvedNumberFormatOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_ResolvedRelativeTimeFormatOptions = [`Intl_ResolvedRelativeTimeFormatOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _PromiseConstructor = [`PromiseConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _PromiseFulfilledResult = [`PromiseFulfilledResult of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _PromiseRejectedResult = [`PromiseRejectedResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T _PromiseSettledResult = ([`U_s8_fulfilled of 'T _PromiseFulfilledResult [@js "fulfilled"] | `U_s28_rejected of _PromiseRejectedResult [@js "rejected"]] [@js.union on_field "status"])
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
  module AnonymousInterface0 : sig
    type t = anonymous_interface_0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Constructor creates \[Intl.RelativeTimeFormat\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat)
      objects
      @param locales - A string with a \[BCP 47 language tag\](http://tools.ietf.org/html/rfc5646), or an array of such strings.
      For the general form and interpretation of the locales argument,
      see the \[`Intl` page\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_identification_and_negotiation).
      @param options - An \[object\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat#Parameters)
      with some or all of options of the formatting.
      An object with some or all of the following properties:
      - `localeMatcher` - The locale matching algorithm to use.
      Possible values are `"lookup"` and `"best fit"`; the default is `"best fit"`.
      For information about this option, see \[Intl page\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation).
      - `numeric` - The format of output message.
      Possible values are: `"always"` (default, e.g., `1 day ago`) or `"auto"` (e.g., `yesterday`).
      The `"auto"` value allows to not always have to use numeric values in the output.
      - `style` - The length of the internationalized message. Possible values are:
      `"long"` (default, e.g., in 1 month),
      `"short"` (e.g., in 1 mo.)
      or `"narrow"` (e.g., in 1 mo.). The narrow style could be similar to the short style for some locales.
      @return \[Intl.RelativeTimeFormat\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat) object.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat).
      
      \[Specification\](https://tc39.es/ecma402/#sec-intl-relativetimeformat-constructor).
    *)
    val create: t -> ?locales:(_Intl_BCP47LanguageTag, _Intl_BCP47LanguageTag) or_array -> ?options:_Intl_RelativeTimeFormatOptions -> unit -> _Intl_RelativeTimeFormat [@@js.apply_newable]
    (**
      Returns an array containing those of the provided locales
      that are supported in date and time formatting
      without having to fall back to the runtime's default locale.
      @param locales - A string with a \[BCP 47 language tag\](http://tools.ietf.org/html/rfc5646), or an array of such strings.
      For the general form and interpretation of the locales argument,
      see the \[`Intl` page\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_identification_and_negotiation).
      @param options - An \[object\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat#Parameters)
      with some or all of options of the formatting.
      An object with some or all of the following properties:
      - `localeMatcher` - The locale matching algorithm to use.
      Possible values are `"lookup"` and `"best fit"`; the default is `"best fit"`.
      For information about this option, see \[Intl page\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation).
      - `numeric` - The format of output message.
      Possible values are: `"always"` (default, e.g., `1 day ago`) or `"auto"` (e.g., `yesterday`).
      The `"auto"` value allows to not always have to use numeric values in the output.
      - `style` - The length of the internationalized message. Possible values are:
      `"long"` (default, e.g., in 1 month),
      `"short"` (e.g., in 1 mo.)
      or `"narrow"` (e.g., in 1 mo.). The narrow style could be similar to the short style for some locales.
      @return An array containing those of the provided locales
      that are supported in date and time formatting
      without having to fall back to the runtime's default locale.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/supportedLocalesOf).
      
      \[Specification\](https://tc39.es/ecma402/#sec-Intl.RelativeTimeFormat.supportedLocalesOf).
    *)
    val supportedLocalesOf: t -> locales:(_Intl_BCP47LanguageTag, _Intl_BCP47LanguageTag) or_array -> ?options:_Intl_RelativeTimeFormatOptions -> unit -> _Intl_BCP47LanguageTag list [@@js.call "supportedLocalesOf"]
  end
  module[@js.scope "BigIntToLocaleStringOptions"] BigIntToLocaleStringOptions : sig
    type t = _BigIntToLocaleStringOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** The locale matching algorithm to use.The default is "best fit". For information about this option, see the \{\@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation Intl page\}. *)
    (** The locale matching algorithm to use.The default is "best fit". For information about this option, see the \{\@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation Intl page\}. *)
    val get_localeMatcher: t -> string [@@js.get "localeMatcher"]
    (** The locale matching algorithm to use.The default is "best fit". For information about this option, see the \{\@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation Intl page\}. *)
    val set_localeMatcher: t -> string -> unit [@@js.set "localeMatcher"]
    (** The formatting style to use , the default is "decimal". *)
    (** The formatting style to use , the default is "decimal". *)
    val get_style: t -> string [@@js.get "style"]
    (** The formatting style to use , the default is "decimal". *)
    val set_style: t -> string -> unit [@@js.set "style"]
    val get_numberingSystem: t -> string [@@js.get "numberingSystem"]
    val set_numberingSystem: t -> string -> unit [@@js.set "numberingSystem"]
    (** The unit to use in unit formatting, Possible values are core unit identifiers, defined in UTS #35, Part 2, Section 6. A subset of units from the full list was selected for use in ECMAScript. Pairs of simple units can be concatenated with "-per-" to make a compound unit. There is no default value; if the style is "unit", the unit property must be provided. *)
    (** The unit to use in unit formatting, Possible values are core unit identifiers, defined in UTS #35, Part 2, Section 6. A subset of units from the full list was selected for use in ECMAScript. Pairs of simple units can be concatenated with "-per-" to make a compound unit. There is no default value; if the style is "unit", the unit property must be provided. *)
    val get_unit: t -> string [@@js.get "unit"]
    (** The unit to use in unit formatting, Possible values are core unit identifiers, defined in UTS #35, Part 2, Section 6. A subset of units from the full list was selected for use in ECMAScript. Pairs of simple units can be concatenated with "-per-" to make a compound unit. There is no default value; if the style is "unit", the unit property must be provided. *)
    val set_unit: t -> string -> unit [@@js.set "unit"]
    (** The unit formatting style to use in unit formatting, the defaults is "short". *)
    (** The unit formatting style to use in unit formatting, the defaults is "short". *)
    val get_unitDisplay: t -> string [@@js.get "unitDisplay"]
    (** The unit formatting style to use in unit formatting, the defaults is "short". *)
    val set_unitDisplay: t -> string -> unit [@@js.set "unitDisplay"]
    (** The currency to use in currency formatting. Possible values are the ISO 4217 currency codes, such as "USD" for the US dollar, "EUR" for the euro, or "CNY" for the Chinese RMB — see the Current currency & funds code list. There is no default value; if the style is "currency", the currency property must be provided. It is only used when \[\[Style\]\] has the value "currency". *)
    (** The currency to use in currency formatting. Possible values are the ISO 4217 currency codes, such as "USD" for the US dollar, "EUR" for the euro, or "CNY" for the Chinese RMB — see the Current currency & funds code list. There is no default value; if the style is "currency", the currency property must be provided. It is only used when \[\[Style\]\] has the value "currency". *)
    val get_currency: t -> string [@@js.get "currency"]
    (** The currency to use in currency formatting. Possible values are the ISO 4217 currency codes, such as "USD" for the US dollar, "EUR" for the euro, or "CNY" for the Chinese RMB — see the Current currency & funds code list. There is no default value; if the style is "currency", the currency property must be provided. It is only used when \[\[Style\]\] has the value "currency". *)
    val set_currency: t -> string -> unit [@@js.set "currency"]
    (**
      How to display the currency in currency formatting. It is only used when \[\[Style\]\] has the value "currency". The default is "symbol".
      
      "symbol" to use a localized currency symbol such as €,
      
      "code" to use the ISO currency code,
      
      "name" to use a localized currency name such as "dollar"
    *)
    (**
      How to display the currency in currency formatting. It is only used when \[\[Style\]\] has the value "currency". The default is "symbol".
      
      "symbol" to use a localized currency symbol such as €,
      
      "code" to use the ISO currency code,
      
      "name" to use a localized currency name such as "dollar"
    *)
    val get_currencyDisplay: t -> string [@@js.get "currencyDisplay"]
    (**
      How to display the currency in currency formatting. It is only used when \[\[Style\]\] has the value "currency". The default is "symbol".
      
      "symbol" to use a localized currency symbol such as €,
      
      "code" to use the ISO currency code,
      
      "name" to use a localized currency name such as "dollar"
    *)
    val set_currencyDisplay: t -> string -> unit [@@js.set "currencyDisplay"]
    (** Whether to use grouping separators, such as thousands separators or thousand/lakh/crore separators. The default is true. *)
    (** Whether to use grouping separators, such as thousands separators or thousand/lakh/crore separators. The default is true. *)
    val get_useGrouping: t -> bool [@@js.get "useGrouping"]
    (** Whether to use grouping separators, such as thousands separators or thousand/lakh/crore separators. The default is true. *)
    val set_useGrouping: t -> bool -> unit [@@js.set "useGrouping"]
    (** The minimum number of integer digits to use. Possible values are from 1 to 21; the default is 1. *)
    (** The minimum number of integer digits to use. Possible values are from 1 to 21; the default is 1. *)
    val get_minimumIntegerDigits: t -> ([`L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_20[@js 20] | `L_n_21[@js 21]] [@js.enum]) [@@js.get "minimumIntegerDigits"]
    (** The minimum number of integer digits to use. Possible values are from 1 to 21; the default is 1. *)
    val set_minimumIntegerDigits: t -> ([`L_n_1 | `L_n_2 | `L_n_3 | `L_n_4 | `L_n_5 | `L_n_6 | `L_n_7 | `L_n_8 | `L_n_9 | `L_n_10 | `L_n_11 | `L_n_12 | `L_n_13 | `L_n_14 | `L_n_15 | `L_n_16 | `L_n_17 | `L_n_18 | `L_n_19 | `L_n_20 | `L_n_21] [@js.enum]) -> unit [@@js.set "minimumIntegerDigits"]
    (** The minimum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number and percent formatting is 0; the default for currency formatting is the number of minor unit digits provided by the \{\@link http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list\} (2 if the list doesn't provide that information). *)
    (** The minimum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number and percent formatting is 0; the default for currency formatting is the number of minor unit digits provided by the \{\@link http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list\} (2 if the list doesn't provide that information). *)
    val get_minimumFractionDigits: t -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_20[@js 20]] [@js.enum]) [@@js.get "minimumFractionDigits"]
    (** The minimum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number and percent formatting is 0; the default for currency formatting is the number of minor unit digits provided by the \{\@link http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list\} (2 if the list doesn't provide that information). *)
    val set_minimumFractionDigits: t -> ([`L_n_0 | `L_n_1 | `L_n_2 | `L_n_3 | `L_n_4 | `L_n_5 | `L_n_6 | `L_n_7 | `L_n_8 | `L_n_9 | `L_n_10 | `L_n_11 | `L_n_12 | `L_n_13 | `L_n_14 | `L_n_15 | `L_n_16 | `L_n_17 | `L_n_18 | `L_n_19 | `L_n_20] [@js.enum]) -> unit [@@js.set "minimumFractionDigits"]
    (** The maximum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number formatting is the larger of minimumFractionDigits and 3; the default for currency formatting is the larger of minimumFractionDigits and the number of minor unit digits provided by the \{\@link http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list\} (2 if the list doesn't provide that information); the default for percent formatting is the larger of minimumFractionDigits and 0. *)
    (** The maximum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number formatting is the larger of minimumFractionDigits and 3; the default for currency formatting is the larger of minimumFractionDigits and the number of minor unit digits provided by the \{\@link http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list\} (2 if the list doesn't provide that information); the default for percent formatting is the larger of minimumFractionDigits and 0. *)
    val get_maximumFractionDigits: t -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_20[@js 20]] [@js.enum]) [@@js.get "maximumFractionDigits"]
    (** The maximum number of fraction digits to use. Possible values are from 0 to 20; the default for plain number formatting is the larger of minimumFractionDigits and 3; the default for currency formatting is the larger of minimumFractionDigits and the number of minor unit digits provided by the \{\@link http://www.currency-iso.org/en/home/tables/table-a1.html ISO 4217 currency codes list\} (2 if the list doesn't provide that information); the default for percent formatting is the larger of minimumFractionDigits and 0. *)
    val set_maximumFractionDigits: t -> ([`L_n_0 | `L_n_1 | `L_n_2 | `L_n_3 | `L_n_4 | `L_n_5 | `L_n_6 | `L_n_7 | `L_n_8 | `L_n_9 | `L_n_10 | `L_n_11 | `L_n_12 | `L_n_13 | `L_n_14 | `L_n_15 | `L_n_16 | `L_n_17 | `L_n_18 | `L_n_19 | `L_n_20] [@js.enum]) -> unit [@@js.set "maximumFractionDigits"]
    (** The minimum number of significant digits to use. Possible values are from 1 to 21; the default is 1. *)
    (** The minimum number of significant digits to use. Possible values are from 1 to 21; the default is 1. *)
    val get_minimumSignificantDigits: t -> ([`L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_20[@js 20] | `L_n_21[@js 21]] [@js.enum]) [@@js.get "minimumSignificantDigits"]
    (** The minimum number of significant digits to use. Possible values are from 1 to 21; the default is 1. *)
    val set_minimumSignificantDigits: t -> ([`L_n_1 | `L_n_2 | `L_n_3 | `L_n_4 | `L_n_5 | `L_n_6 | `L_n_7 | `L_n_8 | `L_n_9 | `L_n_10 | `L_n_11 | `L_n_12 | `L_n_13 | `L_n_14 | `L_n_15 | `L_n_16 | `L_n_17 | `L_n_18 | `L_n_19 | `L_n_20 | `L_n_21] [@js.enum]) -> unit [@@js.set "minimumSignificantDigits"]
    (** The maximum number of significant digits to use. Possible values are from 1 to 21; the default is 21. *)
    (** The maximum number of significant digits to use. Possible values are from 1 to 21; the default is 21. *)
    val get_maximumSignificantDigits: t -> ([`L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3] | `L_n_4[@js 4] | `L_n_5[@js 5] | `L_n_6[@js 6] | `L_n_7[@js 7] | `L_n_8[@js 8] | `L_n_9[@js 9] | `L_n_10[@js 10] | `L_n_11[@js 11] | `L_n_12[@js 12] | `L_n_13[@js 13] | `L_n_14[@js 14] | `L_n_15[@js 15] | `L_n_16[@js 16] | `L_n_17[@js 17] | `L_n_18[@js 18] | `L_n_19[@js 19] | `L_n_20[@js 20] | `L_n_21[@js 21]] [@js.enum]) [@@js.get "maximumSignificantDigits"]
    (** The maximum number of significant digits to use. Possible values are from 1 to 21; the default is 21. *)
    val set_maximumSignificantDigits: t -> ([`L_n_1 | `L_n_2 | `L_n_3 | `L_n_4 | `L_n_5 | `L_n_6 | `L_n_7 | `L_n_8 | `L_n_9 | `L_n_10 | `L_n_11 | `L_n_12 | `L_n_13 | `L_n_14 | `L_n_15 | `L_n_16 | `L_n_17 | `L_n_18 | `L_n_19 | `L_n_20 | `L_n_21] [@js.enum]) -> unit [@@js.set "maximumSignificantDigits"]
    (**
      The formatting that should be displayed for the number, the defaults is "standard"
      
          "standard" plain number formatting
      
          "scientific" return the order-of-magnitude for formatted number.
      
          "engineering" return the exponent of ten when divisible by three
      
          "compact" string representing exponent, defaults is using the "short" form
    *)
    (**
      The formatting that should be displayed for the number, the defaults is "standard"
      
          "standard" plain number formatting
      
          "scientific" return the order-of-magnitude for formatted number.
      
          "engineering" return the exponent of ten when divisible by three
      
          "compact" string representing exponent, defaults is using the "short" form
    *)
    val get_notation: t -> string [@@js.get "notation"]
    (**
      The formatting that should be displayed for the number, the defaults is "standard"
      
          "standard" plain number formatting
      
          "scientific" return the order-of-magnitude for formatted number.
      
          "engineering" return the exponent of ten when divisible by three
      
          "compact" string representing exponent, defaults is using the "short" form
    *)
    val set_notation: t -> string -> unit [@@js.set "notation"]
    (** used only when notation is "compact" *)
    (** used only when notation is "compact" *)
    val get_compactDisplay: t -> string [@@js.get "compactDisplay"]
    (** used only when notation is "compact" *)
    val set_compactDisplay: t -> string -> unit [@@js.set "compactDisplay"]
  end
  module[@js.scope "BigInt"] BigInt : sig
    type t = _BigInt
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Returns a string representation of an object.
      @param radix Specifies a radix for converting numeric values to strings.
    *)
    val toString: t -> ?radix:float -> unit -> string [@@js.call "toString"]
    (** Returns a string representation appropriate to the host environment's current locale. *)
    val toLocaleString: t -> ?locales:string -> ?options:_BigIntToLocaleStringOptions -> unit -> string [@@js.call "toLocaleString"]
    (** Returns the primitive value of the specified object. *)
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
    (**
      Interprets the low bits of a BigInt as a 2's-complement signed integer.
      All higher bits are discarded.
      @param bits The number of low bits to use
      @param int The BigInt whose bits to extract
    *)
    val asIntN: t -> bits:float -> int:bigint -> bigint [@@js.call "asIntN"]
    (**
      Interprets the low bits of a BigInt as an unsigned integer.
      All higher bits are discarded.
      @param bits The number of low bits to use
      @param int The BigInt whose bits to extract
    *)
    val asUintN: t -> bits:float -> int:bigint -> bigint [@@js.call "asUintN"]
  end
  val bigInt: _BigIntConstructor [@@js.global "BigInt"]
  (**
    A typed array of 64-bit signed integer values. The contents are initialized to 0. If the
    requested number of bytes could not be allocated, an exception is raised.
  *)
  module[@js.scope "BigInt64Array"] BigInt64Array : sig
    type t = _BigInt64Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** The size in bytes of each element in the array. *)
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    (** The ArrayBuffer instance referenced by the array. *)
    val get_buffer: t -> ArrayBufferLike.t_0 [@@js.get "buffer"]
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
    (** Yields index, value pairs for every entry in the array. *)
    val entries: t -> (float * bigint) IterableIterator.t_1 [@@js.call "entries"]
    (**
      Determines whether all the members of an array satisfy the specified test.
      @param predicate A function that accepts up to three arguments. The every method calls
      the predicate function for each element in the array until the predicate returns false,
      or until the end of the array.
      @param thisArg An object to which the this keyword can refer in the predicate function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val every: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
    (**
      Returns the this object after filling the section identified by start and end with value
      @param value value to fill array section with
      @param start index to start filling the array at. If start is negative, it is treated as
      length+start where length is the length of the array.
      @param end index to stop filling the array at. If end is negative, it is treated as
      length+end.
    *)
    val fill: t -> value:bigint -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
    (**
      Returns the elements of an array that meet the condition specified in a callback function.
      @param predicate A function that accepts up to three arguments. The filter method calls
      the predicate function one time for each element in the array.
      @param thisArg An object to which the this keyword can refer in the predicate function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val filter: t -> predicate:(value:bigint -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
    (**
      Returns the value of the first element in the array where predicate is true, and undefined
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found, find
      immediately returns that element value. Otherwise, find returns undefined.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
    val find: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bigint or_undefined [@@js.call "find"]
    (**
      Returns the index of the first element in the array where predicate is true, and -1
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found,
      findIndex immediately returns that element index. Otherwise, findIndex returns -1.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
    val findIndex: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
    (**
      Performs the specified action for each element in an array.
      @param callbackfn A function that accepts up to three arguments. forEach calls the
      callbackfn function one time for each element in the array.
      @param thisArg An object to which the this keyword can refer in the callbackfn function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val forEach: t -> callbackfn:(value:bigint -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    (**
      Determines whether an array includes a certain element, returning true or false as appropriate.
      @param searchElement The element to search for.
      @param fromIndex The position in this array at which to begin searching for searchElement.
    *)
    val includes: t -> searchElement:bigint -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
    (**
      Returns the index of the first occurrence of a value in an array.
      @param searchElement The value to locate in the array.
      @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
      search starts at index 0.
    *)
    val indexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
    (**
      Adds all the elements of an array separated by the specified separator string.
      @param separator A string used to separate one element of an array from the next in the
      resulting String. If omitted, the array elements are separated with a comma.
    *)
    val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
    (** Yields each index in the array. *)
    val keys: t -> float IterableIterator.t_1 [@@js.call "keys"]
    (**
      Returns the index of the last occurrence of a value in an array.
      @param searchElement The value to locate in the array.
      @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
      search starts at index 0.
    *)
    val lastIndexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
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
    val map: t -> callbackfn:(value:bigint -> index:float -> array:t -> bigint) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
    val reduce: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduce"]
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
    val reduce': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
    val reduceRight: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduceRight"]
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
    val reduceRight': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
    (** Reverses the elements in the array. *)
    val reverse: t -> t [@@js.call "reverse"]
    (**
      Sets a value or an array of values.
      @param array A typed or untyped array of values to set.
      @param offset The index in the current array at which the values are to be written.
    *)
    val set_: t -> array:bigint ArrayLike.t_1 -> ?offset:float -> unit -> unit [@@js.call "set"]
    (**
      Returns a section of an array.
      @param start The beginning of the specified portion of the array.
      @param end The end of the specified portion of the array.
    *)
    val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
    (**
      Determines whether the specified callback function returns true for any element of an array.
      @param predicate A function that accepts up to three arguments. The some method calls the
      predicate function for each element in the array until the predicate returns true, or until
      the end of the array.
      @param thisArg An object to which the this keyword can refer in the predicate function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val some: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
    (**
      Sorts the array.
      @param compareFn The function used to determine the order of the elements. If omitted, the elements are sorted in ascending order.
    *)
    val sort: t -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number) -> unit -> t [@@js.call "sort"]
    (**
      Gets a new BigInt64Array view of the ArrayBuffer store for this array, referencing the elements
      at begin, inclusive, up to end, exclusive.
      @param begin The index of the beginning of the array.
      @param end The index of the end of the array.
    *)
    val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
    (** Converts the array to a string by using the current locale. *)
    val toLocaleString: t -> string [@@js.call "toLocaleString"]
    (** Returns a string representation of the array. *)
    val toString: t -> string [@@js.call "toString"]
    (** Returns the primitive value of the specified object. *)
    val valueOf: t -> t [@@js.call "valueOf"]
    (** Yields each value in the array. *)
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
    (** The size in bytes of each element in the array. *)
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    (**
      Returns a new array from a set of elements.
      @param items A set of elements to include in the new array object.
    *)
    val of_: t -> items:(bigint list [@js.variadic]) -> _BigInt64Array [@@js.call "of"]
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:bigint ArrayLike.t_1 -> _BigInt64Array [@@js.call "from"]
    (** Creates an array from an array-like or iterable object. *)
    val from': t -> arrayLike:'U ArrayLike.t_1 -> mapfn:(v:'U -> k:float -> bigint) -> ?thisArg:any -> unit -> _BigInt64Array [@@js.call "from"]
  end
  (**
    A typed array of 64-bit signed integer values. The contents are initialized to 0. If the
    requested number of bytes could not be allocated, an exception is raised.
  *)
  val bigInt64Array: _BigInt64ArrayConstructor [@@js.global "BigInt64Array"]
  (**
    A typed array of 64-bit unsigned integer values. The contents are initialized to 0. If the
    requested number of bytes could not be allocated, an exception is raised.
  *)
  module[@js.scope "BigUint64Array"] BigUint64Array : sig
    type t = _BigUint64Array
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** The size in bytes of each element in the array. *)
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    (** The ArrayBuffer instance referenced by the array. *)
    val get_buffer: t -> ArrayBufferLike.t_0 [@@js.get "buffer"]
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
    (** Yields index, value pairs for every entry in the array. *)
    val entries: t -> (float * bigint) IterableIterator.t_1 [@@js.call "entries"]
    (**
      Determines whether all the members of an array satisfy the specified test.
      @param predicate A function that accepts up to three arguments. The every method calls
      the predicate function for each element in the array until the predicate returns false,
      or until the end of the array.
      @param thisArg An object to which the this keyword can refer in the predicate function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val every: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "every"]
    (**
      Returns the this object after filling the section identified by start and end with value
      @param value value to fill array section with
      @param start index to start filling the array at. If start is negative, it is treated as
      length+start where length is the length of the array.
      @param end index to stop filling the array at. If end is negative, it is treated as
      length+end.
    *)
    val fill: t -> value:bigint -> ?start:float -> ?end_:float -> unit -> t [@@js.call "fill"]
    (**
      Returns the elements of an array that meet the condition specified in a callback function.
      @param predicate A function that accepts up to three arguments. The filter method calls
      the predicate function one time for each element in the array.
      @param thisArg An object to which the this keyword can refer in the predicate function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val filter: t -> predicate:(value:bigint -> index:float -> array:t -> any) -> ?thisArg:any -> unit -> t [@@js.call "filter"]
    (**
      Returns the value of the first element in the array where predicate is true, and undefined
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found, find
      immediately returns that element value. Otherwise, find returns undefined.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
    val find: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bigint or_undefined [@@js.call "find"]
    (**
      Returns the index of the first element in the array where predicate is true, and -1
      otherwise.
      @param predicate find calls predicate once for each element of the array, in ascending
      order, until it finds one where predicate returns true. If such an element is found,
      findIndex immediately returns that element index. Otherwise, findIndex returns -1.
      @param thisArg If provided, it will be used as the this value for each invocation of
      predicate. If it is not provided, undefined is used instead.
    *)
    val findIndex: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> float [@@js.call "findIndex"]
    (**
      Performs the specified action for each element in an array.
      @param callbackfn A function that accepts up to three arguments. forEach calls the
      callbackfn function one time for each element in the array.
      @param thisArg An object to which the this keyword can refer in the callbackfn function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val forEach: t -> callbackfn:(value:bigint -> index:float -> array:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
    (**
      Determines whether an array includes a certain element, returning true or false as appropriate.
      @param searchElement The element to search for.
      @param fromIndex The position in this array at which to begin searching for searchElement.
    *)
    val includes: t -> searchElement:bigint -> ?fromIndex:float -> unit -> bool [@@js.call "includes"]
    (**
      Returns the index of the first occurrence of a value in an array.
      @param searchElement The value to locate in the array.
      @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
      search starts at index 0.
    *)
    val indexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "indexOf"]
    (**
      Adds all the elements of an array separated by the specified separator string.
      @param separator A string used to separate one element of an array from the next in the
      resulting String. If omitted, the array elements are separated with a comma.
    *)
    val join: t -> ?separator:string -> unit -> string [@@js.call "join"]
    (** Yields each index in the array. *)
    val keys: t -> float IterableIterator.t_1 [@@js.call "keys"]
    (**
      Returns the index of the last occurrence of a value in an array.
      @param searchElement The value to locate in the array.
      @param fromIndex The array index at which to begin the search. If fromIndex is omitted, the
      search starts at index 0.
    *)
    val lastIndexOf: t -> searchElement:bigint -> ?fromIndex:float -> unit -> float [@@js.call "lastIndexOf"]
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
    val map: t -> callbackfn:(value:bigint -> index:float -> array:t -> bigint) -> ?thisArg:any -> unit -> t [@@js.call "map"]
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
    val reduce: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduce"]
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
    val reduce': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduce"]
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
    val reduceRight: t -> callbackfn:(previousValue:bigint -> currentValue:bigint -> currentIndex:float -> array:t -> bigint) -> bigint [@@js.call "reduceRight"]
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
    val reduceRight': t -> callbackfn:(previousValue:'U -> currentValue:bigint -> currentIndex:float -> array:t -> 'U) -> initialValue:'U -> 'U [@@js.call "reduceRight"]
    (** Reverses the elements in the array. *)
    val reverse: t -> t [@@js.call "reverse"]
    (**
      Sets a value or an array of values.
      @param array A typed or untyped array of values to set.
      @param offset The index in the current array at which the values are to be written.
    *)
    val set_: t -> array:bigint ArrayLike.t_1 -> ?offset:float -> unit -> unit [@@js.call "set"]
    (**
      Returns a section of an array.
      @param start The beginning of the specified portion of the array.
      @param end The end of the specified portion of the array.
    *)
    val slice: t -> ?start:float -> ?end_:float -> unit -> t [@@js.call "slice"]
    (**
      Determines whether the specified callback function returns true for any element of an array.
      @param predicate A function that accepts up to three arguments. The some method calls the
      predicate function for each element in the array until the predicate returns true, or until
      the end of the array.
      @param thisArg An object to which the this keyword can refer in the predicate function.
      If thisArg is omitted, undefined is used as the this value.
    *)
    val some: t -> predicate:(value:bigint -> index:float -> array:t -> bool) -> ?thisArg:any -> unit -> bool [@@js.call "some"]
    (**
      Sorts the array.
      @param compareFn The function used to determine the order of the elements. If omitted, the elements are sorted in ascending order.
    *)
    val sort: t -> ?compareFn:(a:bigint -> b:bigint -> bigint or_number) -> unit -> t [@@js.call "sort"]
    (**
      Gets a new BigUint64Array view of the ArrayBuffer store for this array, referencing the elements
      at begin, inclusive, up to end, exclusive.
      @param begin The index of the beginning of the array.
      @param end The index of the end of the array.
    *)
    val subarray: t -> ?begin_:float -> ?end_:float -> unit -> t [@@js.call "subarray"]
    (** Converts the array to a string by using the current locale. *)
    val toLocaleString: t -> string [@@js.call "toLocaleString"]
    (** Returns a string representation of the array. *)
    val toString: t -> string [@@js.call "toString"]
    (** Returns the primitive value of the specified object. *)
    val valueOf: t -> t [@@js.call "valueOf"]
    (** Yields each value in the array. *)
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
    (** The size in bytes of each element in the array. *)
    val get_BYTES_PER_ELEMENT: t -> float [@@js.get "BYTES_PER_ELEMENT"]
    (**
      Returns a new array from a set of elements.
      @param items A set of elements to include in the new array object.
    *)
    val of_: t -> items:(bigint list [@js.variadic]) -> _BigUint64Array [@@js.call "of"]
    (**
      Creates an array from an array-like or iterable object.
      @param arrayLike An array-like or iterable object to convert to an array.
      @param mapfn A mapping function to call on every element of the array.
      @param thisArg Value of 'this' used to invoke the mapfn.
    *)
    val from: t -> arrayLike:bigint ArrayLike.t_1 -> _BigUint64Array [@@js.call "from"]
    (** Creates an array from an array-like or iterable object. *)
    val from': t -> arrayLike:'U ArrayLike.t_1 -> mapfn:(v:'U -> k:float -> bigint) -> ?thisArg:any -> unit -> _BigUint64Array [@@js.call "from"]
  end
  (**
    A typed array of 64-bit unsigned integer values. The contents are initialized to 0. If the
    requested number of bytes could not be allocated, an exception is raised.
  *)
  val bigUint64Array: _BigUint64ArrayConstructor [@@js.global "BigUint64Array"]
  module[@js.scope "DataView"] DataView : sig
    type t = _DataView
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Gets the BigInt64 value at the specified byte offset from the start of the view. There is
      no alignment constraint; multi-byte values may be fetched from any offset.
      @param byteOffset The place in the buffer at which the value should be retrieved.
    *)
    val getBigInt64: t -> byteOffset:float -> ?littleEndian:bool -> unit -> bigint [@@js.call "getBigInt64"]
    (**
      Gets the BigUint64 value at the specified byte offset from the start of the view. There is
      no alignment constraint; multi-byte values may be fetched from any offset.
      @param byteOffset The place in the buffer at which the value should be retrieved.
    *)
    val getBigUint64: t -> byteOffset:float -> ?littleEndian:bool -> unit -> bigint [@@js.call "getBigUint64"]
    (**
      Stores a BigInt64 value at the specified byte offset from the start of the view.
      @param byteOffset The place in the buffer at which the value should be set.
      @param value The value to set.
      @param littleEndian If false or undefined, a big-endian value should be written,
      otherwise a little-endian value should be written.
    *)
    val setBigInt64: t -> byteOffset:float -> value:bigint -> ?littleEndian:bool -> unit -> unit [@@js.call "setBigInt64"]
    (**
      Stores a BigUint64 value at the specified byte offset from the start of the view.
      @param byteOffset The place in the buffer at which the value should be set.
      @param value The value to set.
      @param littleEndian If false or undefined, a big-endian value should be written,
      otherwise a little-endian value should be written.
    *)
    val setBigUint64: t -> byteOffset:float -> value:bigint -> ?littleEndian:bool -> unit -> unit [@@js.call "setBigUint64"]
  end
  module[@js.scope "Intl"] Intl : sig
    module[@js.scope "NumberFormat"] NumberFormat : sig
      type t = _Intl_NumberFormat
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val format: t -> value:bigint or_number -> string [@@js.call "format"]
      val resolvedOptions: t -> _Intl_ResolvedNumberFormatOptions [@@js.call "resolvedOptions"]
    end
  end
  module[@js.scope "Intl"] Intl : sig
    (**
      \[BCP 47 language tag\](http://tools.ietf.org/html/rfc5646) definition.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl#locales_argument).
      
      \[Wikipedia\](https://en.wikipedia.org/wiki/IETF_language_tag).
    *)
    module BCP47LanguageTag : sig
      type t = _Intl_BCP47LanguageTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      Unit to use in the relative time internationalized message.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/format#Parameters).
      
      \[Specification\](https://tc39.es/ecma402/#sec-singularrelativetimeunit).
    *)
    module RelativeTimeFormatUnit : sig
      type t = _Intl_RelativeTimeFormatUnit
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      The locale matching algorithm to use.
      
      \[MDN\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Intl#Locale_negotiation).
      
      \[Specification\](https://tc39.es/ecma402/#sec-InitializeRelativeTimeFormat).
    *)
    module RelativeTimeFormatLocaleMatcher : sig
      type t = _Intl_RelativeTimeFormatLocaleMatcher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      The format of output message.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat#Parameters).
      
      \[Specification\](https://tc39.es/ecma402/#sec-InitializeRelativeTimeFormat).
    *)
    module RelativeTimeFormatNumeric : sig
      type t = _Intl_RelativeTimeFormatNumeric
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      The length of the internationalized message.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat#Parameters).
      
      \[Specification\](https://tc39.es/ecma402/#sec-InitializeRelativeTimeFormat).
    *)
    module RelativeTimeFormatStyle : sig
      type t = _Intl_RelativeTimeFormatStyle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      An object with some or all of properties of `options` parameter
      of `Intl.RelativeTimeFormat` constructor.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/RelativeTimeFormat#Parameters).
      
      \[Specification\](https://tc39.es/ecma402/#sec-InitializeRelativeTimeFormat).
    *)
    module[@js.scope "RelativeTimeFormatOptions"] RelativeTimeFormatOptions : sig
      type t = _Intl_RelativeTimeFormatOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_localeMatcher: t -> _Intl_RelativeTimeFormatLocaleMatcher [@@js.get "localeMatcher"]
      val set_localeMatcher: t -> _Intl_RelativeTimeFormatLocaleMatcher -> unit [@@js.set "localeMatcher"]
      val get_numeric: t -> _Intl_RelativeTimeFormatNumeric [@@js.get "numeric"]
      val set_numeric: t -> _Intl_RelativeTimeFormatNumeric -> unit [@@js.set "numeric"]
      val get_style: t -> _Intl_RelativeTimeFormatStyle [@@js.get "style"]
      val set_style: t -> _Intl_RelativeTimeFormatStyle -> unit [@@js.set "style"]
    end
    (**
      An object with properties reflecting the locale
      and formatting options computed during initialization
      of the `Intel.RelativeTimeFormat` object
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/resolvedOptions#Description).
      
      \[Specification\](https://tc39.es/ecma402/#table-relativetimeformat-resolvedoptions-properties)
    *)
    module[@js.scope "ResolvedRelativeTimeFormatOptions"] ResolvedRelativeTimeFormatOptions : sig
      type t = _Intl_ResolvedRelativeTimeFormatOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_locale: t -> _Intl_BCP47LanguageTag [@@js.get "locale"]
      val set_locale: t -> _Intl_BCP47LanguageTag -> unit [@@js.set "locale"]
      val get_style: t -> _Intl_RelativeTimeFormatStyle [@@js.get "style"]
      val set_style: t -> _Intl_RelativeTimeFormatStyle -> unit [@@js.set "style"]
      val get_numeric: t -> _Intl_RelativeTimeFormatNumeric [@@js.get "numeric"]
      val set_numeric: t -> _Intl_RelativeTimeFormatNumeric -> unit [@@js.set "numeric"]
      val get_numberingSystem: t -> string [@@js.get "numberingSystem"]
      val set_numberingSystem: t -> string -> unit [@@js.set "numberingSystem"]
    end
    (**
      An object representing the relative time format in parts
      that can be used for custom locale-aware formatting.
      
      \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/formatToParts#Using_formatToParts).
      
      \[Specification\](https://tc39.es/ecma402/#sec-FormatRelativeTimeToParts).
    *)
    module[@js.scope "RelativeTimeFormatPart"] RelativeTimeFormatPart : sig
      type t = _Intl_RelativeTimeFormatPart
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_type: t -> string [@@js.get "type"]
      val set_type: t -> string -> unit [@@js.set "type"]
      val get_value: t -> string [@@js.get "value"]
      val set_value: t -> string -> unit [@@js.set "value"]
      val get_unit: t -> _Intl_RelativeTimeFormatUnit [@@js.get "unit"]
      val set_unit: t -> _Intl_RelativeTimeFormatUnit -> unit [@@js.set "unit"]
    end
    (**
      The \[`Intl.RelativeTimeFormat`\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat)
      object is a constructor for objects that enable language-sensitive relative time formatting.
      
      Part of \[Intl object\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl)
      namespace and the \[ECMAScript Internationalization API\](https://www.ecma-international.org/publications/standards/Ecma-402.htm).
      
      \[Compatibility\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat#Browser_compatibility).
      
      \[Polyfills\](https://github.com/tc39/proposal-intl-relative-time#polyfills).
    *)
    module[@js.scope "RelativeTimeFormat"] RelativeTimeFormat : sig
      type t = _Intl_RelativeTimeFormat
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
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
        @param unit - \[Unit\](https://tc39.es/ecma402/#sec-singularrelativetimeunit)
        to use in the relative time internationalized message.
        Possible values are: `"year"`, `"quarter"`, `"month"`, `"week"`,
        `"day"`, `"hour"`, `"minute"`, `"second"`.
        Plural forms are also permitted.
        @raise exn `RangeError` if `unit` was given something other than `unit` possible values
        @return Internationalized relative time message as string
        
        \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/format).
        
        \[Specification\](https://tc39.es/ecma402/#sec-Intl.RelativeTimeFormat.prototype.format).
      *)
      val format: t -> value:float -> unit:_Intl_RelativeTimeFormatUnit -> string [@@js.call "format"]
      (**
        A version of the format method which it returns an array of objects
        which represent "parts" of the object,
        separating the formatted number into its constituent parts
        and separating it from other surrounding text.
        These objects have two properties:
        `type` a NumberFormat formatToParts type, and `value`,
        which is the String which is the component of the output.
        If a "part" came from NumberFormat,
        it will have a unit property which indicates the `unit` being formatted;
        literals which are part of the larger frame will not have this property.
        @param value - Numeric value to use in the internationalized relative time message
        @param unit - \[Unit\](https://tc39.es/ecma402/#sec-singularrelativetimeunit)
        to use in the relative time internationalized message.
        Possible values are: `"year"`, `"quarter"`, `"month"`, `"week"`,
        `"day"`, `"hour"`, `"minute"`, `"second"`.
        Plural forms are also permitted.
        @raise exn `RangeError` if `unit` was given something other than `unit` possible values
        @return Array of \[FormatRelativeTimeToParts\](https://tc39.es/ecma402/#sec-FormatRelativeTimeToParts)
        
        \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/formatToParts).
        
        \[Specification\](https://tc39.es/ecma402/#sec-Intl.RelativeTimeFormat.prototype.formatToParts).
      *)
      val formatToParts: t -> value:float -> unit:_Intl_RelativeTimeFormatUnit -> _Intl_RelativeTimeFormatPart list [@@js.call "formatToParts"]
      (**
        Provides access to the locale and options computed during initialization of this `Intl.RelativeTimeFormat` object.
        @return A new object with properties reflecting the locale
        and formatting options computed during initialization
        of the `Intel.RelativeTimeFormat` object.
        
        \[MDN\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat/resolvedOptions).
        
        \[Specification\](https://tc39.es/ecma402/#sec-intl.relativetimeformat.prototype.resolvedoptions)
      *)
      val resolvedOptions: t -> _Intl_ResolvedRelativeTimeFormatOptions [@@js.call "resolvedOptions"]
    end
    (**
      The \[`Intl.RelativeTimeFormat`\](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/RelativeTimeFormat)
      object is a constructor for objects that enable language-sensitive relative time formatting.
      
      Part of \[Intl object\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl)
      namespace and the \[ECMAScript Internationalization API\](https://www.ecma-international.org/publications/standards/Ecma-402.htm).
      
      \[Compatibility\](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/RelativeTimeFormat#Browser_compatibility).
      
      \[Polyfills\](https://github.com/tc39/proposal-intl-relative-time#polyfills).
    *)
    val relativeTimeFormat: anonymous_interface_0 [@@js.global "RelativeTimeFormat"]
    module[@js.scope "NumberFormatOptions"] NumberFormatOptions : sig
      type t = _Intl_NumberFormatOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_compactDisplay: t -> string [@@js.get "compactDisplay"]
      val set_compactDisplay: t -> string -> unit [@@js.set "compactDisplay"]
      val get_notation: t -> string [@@js.get "notation"]
      val set_notation: t -> string -> unit [@@js.set "notation"]
      val get_signDisplay: t -> string [@@js.get "signDisplay"]
      val set_signDisplay: t -> string -> unit [@@js.set "signDisplay"]
      val get_unit: t -> string [@@js.get "unit"]
      val set_unit: t -> string -> unit [@@js.set "unit"]
      val get_unitDisplay: t -> string [@@js.get "unitDisplay"]
      val set_unitDisplay: t -> string -> unit [@@js.set "unitDisplay"]
    end
    module[@js.scope "ResolvedNumberFormatOptions"] ResolvedNumberFormatOptions : sig
      type t = _Intl_ResolvedNumberFormatOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_compactDisplay: t -> string [@@js.get "compactDisplay"]
      val set_compactDisplay: t -> string -> unit [@@js.set "compactDisplay"]
      val get_notation: t -> string [@@js.get "notation"]
      val set_notation: t -> string -> unit [@@js.set "notation"]
      val get_signDisplay: t -> string [@@js.get "signDisplay"]
      val set_signDisplay: t -> string -> unit [@@js.set "signDisplay"]
      val get_unit: t -> string [@@js.get "unit"]
      val set_unit: t -> string -> unit [@@js.set "unit"]
      val get_unitDisplay: t -> string [@@js.get "unitDisplay"]
      val set_unitDisplay: t -> string -> unit [@@js.set "unitDisplay"]
    end
    module[@js.scope "DateTimeFormatOptions"] DateTimeFormatOptions : sig
      type t = _Intl_DateTimeFormatOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_dateStyle: t -> ([`L_s9_full[@js "full"] | `L_s16_long[@js "long"] | `L_s18_medium[@js "medium"] | `L_s31_short[@js "short"]] [@js.enum]) [@@js.get "dateStyle"]
      val set_dateStyle: t -> ([`L_s9_full | `L_s16_long | `L_s18_medium | `L_s31_short] [@js.enum]) -> unit [@@js.set "dateStyle"]
      val get_timeStyle: t -> ([`L_s9_full[@js "full"] | `L_s16_long[@js "long"] | `L_s18_medium[@js "medium"] | `L_s31_short[@js "short"]] [@js.enum]) [@@js.get "timeStyle"]
      val set_timeStyle: t -> ([`L_s9_full | `L_s16_long | `L_s18_medium | `L_s31_short] [@js.enum]) -> unit [@@js.set "timeStyle"]
      val get_calendar: t -> string [@@js.get "calendar"]
      val set_calendar: t -> string -> unit [@@js.set "calendar"]
      val get_dayPeriod: t -> ([`L_s16_long[@js "long"] | `L_s23_narrow[@js "narrow"] | `L_s31_short[@js "short"]] [@js.enum]) [@@js.get "dayPeriod"]
      val set_dayPeriod: t -> ([`L_s16_long | `L_s23_narrow | `L_s31_short] [@js.enum]) -> unit [@@js.set "dayPeriod"]
      val get_numberingSystem: t -> string [@@js.get "numberingSystem"]
      val set_numberingSystem: t -> string -> unit [@@js.set "numberingSystem"]
      val get_hourCycle: t -> ([`L_s10_h11[@js "h11"] | `L_s11_h12[@js "h12"] | `L_s12_h23[@js "h23"] | `L_s13_h24[@js "h24"]] [@js.enum]) [@@js.get "hourCycle"]
      val set_hourCycle: t -> ([`L_s10_h11 | `L_s11_h12 | `L_s12_h23 | `L_s13_h24] [@js.enum]) -> unit [@@js.set "hourCycle"]
      val get_fractionalSecondDigits: t -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3]] [@js.enum]) [@@js.get "fractionalSecondDigits"]
      val set_fractionalSecondDigits: t -> ([`L_n_0 | `L_n_1 | `L_n_2 | `L_n_3] [@js.enum]) -> unit [@@js.set "fractionalSecondDigits"]
    end
  end
  module[@js.scope "PromiseFulfilledResult"] PromiseFulfilledResult : sig
    type 'T t = 'T _PromiseFulfilledResult
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get_status: 'T t -> ([`L_s8_fulfilled[@js "fulfilled"]] [@js.enum]) [@@js.get "status"]
    val set_status: 'T t -> ([`L_s8_fulfilled] [@js.enum]) -> unit [@@js.set "status"]
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
    val get_status: t -> ([`L_s28_rejected[@js "rejected"]] [@js.enum]) [@@js.get "status"]
    val set_status: t -> ([`L_s28_rejected] [@js.enum]) -> unit [@@js.set "status"]
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
    (**
      Creates a Promise that is resolved with an array of results when all
      of the provided Promises resolve or reject.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val allSettled: t -> values:'T -> (* FIXME: unknown type '{ -readonly [P in keyof T]: PromiseSettledResult<T[P] extends PromiseLike<infer U> ? U : T[P]> }' *)any Promise.t_1 [@@js.call "allSettled"]
    (**
      Creates a Promise that is resolved with an array of results when all
      of the provided Promises resolve or reject.
      @param values An array of Promises.
      @return A new Promise.
    *)
    val allSettled': t -> values:'T Iterable.t_1 -> (* FIXME: unknown type 'T extends PromiseLike<infer U> ? U : T' *)any _PromiseSettledResult list Promise.t_1 [@@js.call "allSettled"]
  end
  module[@js.scope "Atomics"] Atomics : sig
    type t = _Atomics
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Adds a value to the value at the given position in the array, returning the original value.
      Until this atomic operation completes, any other read or write operation against the array
      will block.
    *)
    val add: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> value:bigint -> bigint [@@js.call "add"]
    (**
      Stores the bitwise AND of a value with the value at the given position in the array,
      returning the original value. Until this atomic operation completes, any other read or
      write operation against the array will block.
    *)
    val and_: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> value:bigint -> bigint [@@js.call "and"]
    (**
      Replaces the value at the given position in the array if the original value equals the given
      expected value, returning the original value. Until this atomic operation completes, any
      other read or write operation against the array will block.
    *)
    val compareExchange: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> expectedValue:bigint -> replacementValue:bigint -> bigint [@@js.call "compareExchange"]
    (**
      Replaces the value at the given position in the array, returning the original value. Until
      this atomic operation completes, any other read or write operation against the array will
      block.
    *)
    val exchange: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> value:bigint -> bigint [@@js.call "exchange"]
    (**
      Returns the value at the given position in the array. Until this atomic operation completes,
      any other read or write operation against the array will block.
    *)
    val load: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> bigint [@@js.call "load"]
    (**
      Stores the bitwise OR of a value with the value at the given position in the array,
      returning the original value. Until this atomic operation completes, any other read or write
      operation against the array will block.
    *)
    val or_: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> value:bigint -> bigint [@@js.call "or"]
    (**
      Stores a value at the given position in the array, returning the new value. Until this
      atomic operation completes, any other read or write operation against the array will block.
    *)
    val store: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> value:bigint -> bigint [@@js.call "store"]
    (**
      Subtracts a value from the value at the given position in the array, returning the original
      value. Until this atomic operation completes, any other read or write operation against the
      array will block.
    *)
    val sub: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> value:bigint -> bigint [@@js.call "sub"]
    (**
      If the value at the given position in the array is equal to the provided value, the current
      agent is put to sleep causing execution to suspend until the timeout expires (returning
      `"timed-out"`) or until the agent is awoken (returning `"ok"`); otherwise, returns
      `"not-equal"`.
    *)
    val wait: t -> typedArray:_BigInt64Array -> index:float -> value:bigint -> ?timeout:float -> unit -> ([`L_s24_not_equal[@js "not-equal"] | `L_s25_ok[@js "ok"] | `L_s32_timed_out[@js "timed-out"]] [@js.enum]) [@@js.call "wait"]
    (**
      Wakes up sleeping agents that are waiting on the given index of the array, returning the
      number of agents that were awoken.
      @param typedArray A shared BigInt64Array.
      @param index The position in the typedArray to wake up on.
      @param count The number of sleeping agents to notify. Defaults to +Infinity.
    *)
    val notify: t -> typedArray:_BigInt64Array -> index:float -> ?count:float -> unit -> float [@@js.call "notify"]
    (**
      Stores the bitwise XOR of a value with the value at the given position in the array,
      returning the original value. Until this atomic operation completes, any other read or write
      operation against the array will block.
    *)
    val xor: t -> typedArray:([`U_s1_BigInt64Array of _BigInt64Array  | `U_s2_BigUint64Array of _BigUint64Array ] [@js.union on_field "[Symbol.toStringTag]"]) -> index:float -> value:bigint -> bigint [@@js.call "xor"]
  end
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Matches a string with a regular expression, and returns an iterable of matches
      containing the results of that search.
      @param regexp A variable name or string literal containing the regular expression pattern and flags.
    *)
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
    (**
      A regular expression method that matches the regular expression against a string. Called
      by the String.prototype.matchAll method.
    *)
    val get_matchAll: t -> symbol [@@js.get "matchAll"]
  end
  module[@js.scope "RegExp"] RegExp : sig
    type t = _RegExp
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Matches a string with this regular expression, and returns an iterable of matches
      containing the results of that search.
      @param string A string to search within.
    *)
    val _Symbol_matchAll_: t -> str:string -> RegExpMatchArray.t_0 IterableIterator.t_1 [@@js.call "[Symbol.matchAll]"]
  end
end
