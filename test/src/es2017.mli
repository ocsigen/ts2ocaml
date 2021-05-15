[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(*
  
    unknown identifiers:
    - ArrayLike<T1>
    - Date
    - Float32Array
    - Float64Array
    - Int16Array
    - Int32Array
    - Int8Array
    - PropertyDescriptor
    - Uint16Array
    - Uint32Array
    - Uint8Array
    - Uint8ClampedArray

*)
[@@@js.stop]
module type Missing = sig
  module ArrayLike : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Date : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Float32Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Float64Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Int16Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Int32Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Int8Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module PropertyDescriptor : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Uint16Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Uint32Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Uint8Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Uint8ClampedArray : sig
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
    module Date : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Float32Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Float64Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Int16Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Int32Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Int8Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module PropertyDescriptor : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Uint16Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Uint32Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Uint8Array : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Uint8ClampedArray : sig
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
    end
    module Types : sig
      open AnonymousInterfaces
      type _ArrayBufferTypes = [`ArrayBufferTypes] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Atomics = [`Atomics] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float32ArrayConstructor = [`Float32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Float64ArrayConstructor = [`Float64ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int16ArrayConstructor = [`Int16ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int32ArrayConstructor = [`Int32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Int8ArrayConstructor = [`Int8ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_DateTimeFormat = [`Intl_DateTimeFormat] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_DateTimeFormatPart = [`Intl_DateTimeFormatPart] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Intl_DateTimeFormatPartTypes = ([`L_s2_day[@js "day"] | `L_s3_dayPeriod[@js "dayPeriod"] | `L_s4_era[@js "era"] | `L_s5_hour[@js "hour"] | `L_s6_literal[@js "literal"] | `L_s7_minute[@js "minute"] | `L_s8_month[@js "month"] | `L_s11_second[@js "second"] | `L_s12_timeZoneName[@js "timeZoneName"] | `L_s14_weekday[@js "weekday"] | `L_s15_year[@js "year"]] [@js.enum])
      and _ObjectConstructor = [`ObjectConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SharedArrayBuffer = [`SharedArrayBuffer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SharedArrayBufferConstructor = [`SharedArrayBufferConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _String = [`String] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint16ArrayConstructor = [`Uint16ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint32ArrayConstructor = [`Uint32ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ArrayConstructor = [`Uint8ArrayConstructor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Uint8ClampedArrayConstructor = [`Uint8ClampedArrayConstructor] intf
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
    val get: t -> string -> 'T [@@js.index_get]
    val set: t -> string -> 'T -> unit [@@js.index_set]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get: t -> string -> PropertyDescriptor.t_0 [@@js.index_get]
    val set: t -> string -> PropertyDescriptor.t_0 -> unit [@@js.index_set]
  end
  module[@js.scope "Intl"] Intl : sig
    module DateTimeFormatPartTypes : sig
      type t = _Intl_DateTimeFormatPartTypes
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "DateTimeFormatPart"] DateTimeFormatPart : sig
      type t = _Intl_DateTimeFormatPart
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_type: t -> _Intl_DateTimeFormatPartTypes [@@js.get "type"]
      val set_type: t -> _Intl_DateTimeFormatPartTypes -> unit [@@js.set "type"]
      val get_value: t -> string [@@js.get "value"]
      val set_value: t -> string -> unit [@@js.set "value"]
    end
    module[@js.scope "DateTimeFormat"] DateTimeFormat : sig
      type t = _Intl_DateTimeFormat
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val formatToParts: t -> ?date:Date.t_0 or_number -> unit -> _Intl_DateTimeFormatPart list [@@js.call "formatToParts"]
    end
  end
  module[@js.scope "ObjectConstructor"] ObjectConstructor : sig
    type t = _ObjectConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Returns an array of values of the enumerable properties of an object
      @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
    *)
    val values: t -> o:(anonymous_interface_1, 'T ArrayLike.t_1) union2 -> 'T list [@@js.call "values"]
    (**
      Returns an array of values of the enumerable properties of an object
      @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
    *)
    val values': t -> o:anonymous_interface_0 -> any list [@@js.call "values"]
    (**
      Returns an array of key/values of the enumerable properties of an object
      @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
    *)
    val entries: t -> o:(anonymous_interface_1, 'T ArrayLike.t_1) union2 -> (string * 'T) list [@@js.call "entries"]
    (**
      Returns an array of key/values of the enumerable properties of an object
      @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
    *)
    val entries': t -> o:anonymous_interface_0 -> (string * any) list [@@js.call "entries"]
    (**
      Returns an object containing all own property descriptors of an object
      @param o Object that contains the properties and methods. This can be an object that you created or an existing Document Object Model (DOM) object.
    *)
    val getOwnPropertyDescriptors: t -> o:'T -> ((* FIXME: unknown type '{[P in keyof T]: TypedPropertyDescriptor<T[P]>}' *)any, anonymous_interface_2) intersection2 [@@js.call "getOwnPropertyDescriptors"]
  end
  module[@js.scope "SharedArrayBuffer"] SharedArrayBuffer : sig
    type t = _SharedArrayBuffer
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** Read-only. The length of the ArrayBuffer (in bytes). *)
    val get_byteLength: t -> float [@@js.get "byteLength"]
    (** Returns a section of an SharedArrayBuffer. *)
    val slice: t -> begin_:float -> ?end_:float -> unit -> t [@@js.call "slice"]
    val get__Symbol_species_: t -> t [@@js.get "[Symbol.species]"]
    val get__Symbol_toStringTag_: t -> ([`L_s1_SharedArrayBuffer[@js "SharedArrayBuffer"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  module[@js.scope "SharedArrayBufferConstructor"] SharedArrayBufferConstructor : sig
    type t = _SharedArrayBufferConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_prototype: t -> _SharedArrayBuffer [@@js.get "prototype"]
    val create: t -> byteLength:float -> _SharedArrayBuffer [@@js.apply_newable]
  end
  val sharedArrayBuffer: _SharedArrayBufferConstructor [@@js.global "SharedArrayBuffer"]
  module[@js.scope "ArrayBufferTypes"] ArrayBufferTypes : sig
    type t = _ArrayBufferTypes
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_SharedArrayBuffer: t -> _SharedArrayBuffer [@@js.get "SharedArrayBuffer"]
    val set_SharedArrayBuffer: t -> _SharedArrayBuffer -> unit [@@js.set "SharedArrayBuffer"]
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
    val add: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> value:float -> float [@@js.call "add"]
    (**
      Stores the bitwise AND of a value with the value at the given position in the array,
      returning the original value. Until this atomic operation completes, any other read or
      write operation against the array will block.
    *)
    val and_: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> value:float -> float [@@js.call "and"]
    (**
      Replaces the value at the given position in the array if the original value equals the given
      expected value, returning the original value. Until this atomic operation completes, any
      other read or write operation against the array will block.
    *)
    val compareExchange: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> expectedValue:float -> replacementValue:float -> float [@@js.call "compareExchange"]
    (**
      Replaces the value at the given position in the array, returning the original value. Until
      this atomic operation completes, any other read or write operation against the array will
      block.
    *)
    val exchange: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> value:float -> float [@@js.call "exchange"]
    (**
      Returns a value indicating whether high-performance algorithms can use atomic operations
      (`true`) or must use locks (`false`) for the given number of bytes-per-element of a typed
      array.
    *)
    val isLockFree: t -> size:float -> bool [@@js.call "isLockFree"]
    (**
      Returns the value at the given position in the array. Until this atomic operation completes,
      any other read or write operation against the array will block.
    *)
    val load: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> float [@@js.call "load"]
    (**
      Stores the bitwise OR of a value with the value at the given position in the array,
      returning the original value. Until this atomic operation completes, any other read or write
      operation against the array will block.
    *)
    val or_: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> value:float -> float [@@js.call "or"]
    (**
      Stores a value at the given position in the array, returning the new value. Until this
      atomic operation completes, any other read or write operation against the array will block.
    *)
    val store: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> value:float -> float [@@js.call "store"]
    (**
      Subtracts a value from the value at the given position in the array, returning the original
      value. Until this atomic operation completes, any other read or write operation against the
      array will block.
    *)
    val sub: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> value:float -> float [@@js.call "sub"]
    (**
      If the value at the given position in the array is equal to the provided value, the current
      agent is put to sleep causing execution to suspend until the timeout expires (returning
      `"timed-out"`) or until the agent is awoken (returning `"ok"`); otherwise, returns
      `"not-equal"`.
    *)
    val wait: t -> typedArray:Int32Array.t_0 -> index:float -> value:float -> ?timeout:float -> unit -> ([`L_s9_not_equal[@js "not-equal"] | `L_s10_ok[@js "ok"] | `L_s13_timed_out[@js "timed-out"]] [@js.enum]) [@@js.call "wait"]
    (**
      Wakes up sleeping agents that are waiting on the given index of the array, returning the
      number of agents that were awoken.
      @param typedArray A shared Int32Array.
      @param index The position in the typedArray to wake up on.
      @param count The number of sleeping agents to notify. Defaults to +Infinity.
    *)
    val notify: t -> typedArray:Int32Array.t_0 -> index:float -> ?count:float -> unit -> float [@@js.call "notify"]
    (**
      Stores the bitwise XOR of a value with the value at the given position in the array,
      returning the original value. Until this atomic operation completes, any other read or write
      operation against the array will block.
    *)
    val xor: t -> typedArray:(Int16Array.t_0, Int32Array.t_0, Int8Array.t_0, Uint16Array.t_0, Uint32Array.t_0, Uint8Array.t_0) union6 -> index:float -> value:float -> float [@@js.call "xor"]
    val get__Symbol_toStringTag_: t -> ([`L_s0_Atomics[@js "Atomics"]] [@js.enum]) [@@js.get "[Symbol.toStringTag]"]
  end
  val atomics: _Atomics [@@js.global "Atomics"]
  module[@js.scope "String"] String : sig
    type t = _String
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (**
      Pads the current string with a given string (possibly repeated) so that the resulting string reaches a given length.
      The padding is applied from the start (left) of the current string.
      @param maxLength The length of the resulting string once the current string has been padded.
      If this parameter is smaller than the current string's length, the current string will be returned as it is.
      @param fillString The string to pad the current string with.
      If this string is too long, it will be truncated and the left-most part will be applied.
      The default value for this parameter is " " (U+0020).
    *)
    val padStart: t -> maxLength:float -> ?fillString:string -> unit -> string [@@js.call "padStart"]
    (**
      Pads the current string with a given string (possibly repeated) so that the resulting string reaches a given length.
      The padding is applied from the end (right) of the current string.
      @param maxLength The length of the resulting string once the current string has been padded.
      If this parameter is smaller than the current string's length, the current string will be returned as it is.
      @param fillString The string to pad the current string with.
      If this string is too long, it will be truncated and the left-most part will be applied.
      The default value for this parameter is " " (U+0020).
    *)
    val padEnd: t -> maxLength:float -> ?fillString:string -> unit -> string [@@js.call "padEnd"]
    val to_ml: t -> string [@@js.cast]
    val of_ml: string -> t [@@js.cast]
  end
  module[@js.scope "Int8ArrayConstructor"] Int8ArrayConstructor : sig
    type t = _Int8ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Int8Array.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Uint8ArrayConstructor"] Uint8ArrayConstructor : sig
    type t = _Uint8ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Uint8Array.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Uint8ClampedArrayConstructor"] Uint8ClampedArrayConstructor : sig
    type t = _Uint8ClampedArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Uint8ClampedArray.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Int16ArrayConstructor"] Int16ArrayConstructor : sig
    type t = _Int16ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Int16Array.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Uint16ArrayConstructor"] Uint16ArrayConstructor : sig
    type t = _Uint16ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Uint16Array.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Int32ArrayConstructor"] Int32ArrayConstructor : sig
    type t = _Int32ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Int32Array.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Uint32ArrayConstructor"] Uint32ArrayConstructor : sig
    type t = _Uint32ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Uint32Array.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Float32ArrayConstructor"] Float32ArrayConstructor : sig
    type t = _Float32ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Float32Array.t_0 [@@js.apply_newable]
  end
  module[@js.scope "Float64ArrayConstructor"] Float64ArrayConstructor : sig
    type t = _Float64ArrayConstructor
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: t -> Float64Array.t_0 [@@js.apply_newable]
  end
end
