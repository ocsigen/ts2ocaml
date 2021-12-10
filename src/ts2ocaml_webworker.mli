[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_min
open Ts2ocaml_es

module DOMHighResTimeStamp : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module PerformanceMeasureOptions : sig
  type t = [`PerformanceMeasureOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceMeasureOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceMeasureOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceMeasureOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_detail: 'tags this -> any [@@js.get "detail"]
  val set_detail: 'tags this -> any -> unit [@@js.set "detail"]
  val get_duration: 'tags this -> DOMHighResTimeStamp.t [@@js.get "duration"]
  val set_duration: 'tags this -> DOMHighResTimeStamp.t -> unit [@@js.set "duration"]
  val get_end: 'tags this -> DOMHighResTimeStamp.t or_string [@@js.get "end"]
  val set_end: 'tags this -> DOMHighResTimeStamp.t or_string -> unit [@@js.set "end"]
  val get_start: 'tags this -> DOMHighResTimeStamp.t or_string [@@js.get "start"]
  val set_start: 'tags this -> DOMHighResTimeStamp.t or_string -> unit [@@js.set "start"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface71 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PerformanceEntry.t [@@js.get "prototype"]
  val set_prototype: t -> PerformanceEntry.t -> unit [@@js.set "prototype"]
  val create: t -> PerformanceEntry.t [@@js.apply_newable]
end

(** Encapsulates a single performance metric that is part of the performance timeline. A performance entry can be directly created by making a performance mark or measure (for example by calling the mark() method) at an explicit point in an application. Performance entries are also created in indirect ways such as loading a resource (such as an image). *)
and[@js.scope "PerformanceEntry"] PerformanceEntry : sig
  type t = [`PerformanceEntry] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceEntry]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceEntry]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceEntry ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_duration: 'tags this -> DOMHighResTimeStamp.t [@@js.get "duration"]
  val get_entryType: 'tags this -> string [@@js.get "entryType"]
  val get_name: 'tags this -> string [@@js.get "name"]
  val get_startTime: 'tags this -> DOMHighResTimeStamp.t [@@js.get "startTime"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface73 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PerformanceMeasure.t [@@js.get "prototype"]
  val set_prototype: t -> PerformanceMeasure.t -> unit [@@js.set "prototype"]
  val create: t -> PerformanceMeasure.t [@@js.apply_newable]
end

(** PerformanceMeasure is an abstract interface for PerformanceEntry objects with an entryType of "measure". Entries of this type are created by calling performance.measure() to add a named DOMHighResTimeStamp (the measure) between two marks to the browser's performance timeline. *)
and[@js.scope "PerformanceMeasure"] PerformanceMeasure : sig
  type t = [`PerformanceEntry | `PerformanceMeasure] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceEntry | `PerformanceMeasure]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceEntry | `PerformanceMeasure]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceMeasure ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_detail: 'tags this -> any [@@js.get "detail"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module PerformanceMarkOptions : sig
  type t = [`PerformanceMarkOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceMarkOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceMarkOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceMarkOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_detail: 'tags this -> any [@@js.get "detail"]
  val set_detail: 'tags this -> any -> unit [@@js.set "detail"]
  val get_startTime: 'tags this -> DOMHighResTimeStamp.t [@@js.get "startTime"]
  val set_startTime: 'tags this -> DOMHighResTimeStamp.t -> unit [@@js.set "startTime"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface72 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PerformanceMark.t [@@js.get "prototype"]
  val set_prototype: t -> PerformanceMark.t -> unit [@@js.set "prototype"]
  val create: t -> markName:string -> ?markOptions:PerformanceMarkOptions.t -> unit -> PerformanceMark.t [@@js.apply_newable]
end

(** PerformanceMark is an abstract interface for PerformanceEntry objects with an entryType of "mark". Entries of this type are created by calling performance.mark() to add a named DOMHighResTimeStamp (the mark) to the browser's performance timeline. *)
and[@js.scope "PerformanceMark"] PerformanceMark : sig
  type t = [`PerformanceEntry | `PerformanceMark] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceEntry | `PerformanceMark]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceEntry | `PerformanceMark]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceMark ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_detail: 'tags this -> any [@@js.get "detail"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: markName:string -> ?markOptions:PerformanceMarkOptions.t -> unit -> t [@@js.create]
end
module PerformanceEntryList : sig
  type t = PerformanceEntry.t list
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module EventInit : sig
  type t = [`EventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_bubbles: 'tags this -> bool [@@js.get "bubbles"]
  val set_bubbles: 'tags this -> bool -> unit [@@js.set "bubbles"]
  val get_cancelable: 'tags this -> bool [@@js.get "cancelable"]
  val set_cancelable: 'tags this -> bool -> unit [@@js.set "cancelable"]
  val get_composed: 'tags this -> bool [@@js.get "composed"]
  val set_composed: 'tags this -> bool -> unit [@@js.set "composed"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EventListenerOptions : sig
  type t = [`EventListenerOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventListenerOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventListenerOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventListenerOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_capture: 'tags this -> bool [@@js.get "capture"]
  val set_capture: 'tags this -> bool -> unit [@@js.set "capture"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** A signal object that allows you to communicate with a DOM request (such as a Fetch) and abort it if required via an AbortController object. *)
module[@js.scope "AbortSignal"] rec AbortSignal : sig
  type t = [`AbortSignal | `EventTarget] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbortSignal | `EventTarget]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbortSignal | `EventTarget]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AbortSignal ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns true if this AbortSignal's AbortController has signaled to abort, and false otherwise. *)
  val get_aborted: 'tags this -> bool [@@js.get "aborted"]
  val get_onabort: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onabort"]
  val set_onabort: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onabort"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'AbortSignalEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'AbortSignalEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
and AddEventListenerOptions : sig
  type t = [`AddEventListenerOptions | `EventListenerOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AddEventListenerOptions | `EventListenerOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AddEventListenerOptions | `EventListenerOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AddEventListenerOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_once: 'tags this -> bool [@@js.get "once"]
  val set_once: 'tags this -> bool -> unit [@@js.set "once"]
  val get_passive: 'tags this -> bool [@@js.get "passive"]
  val set_passive: 'tags this -> bool -> unit [@@js.set "passive"]
  val get_signal: 'tags this -> AbortSignal.t [@@js.get "signal"]
  val set_signal: 'tags this -> AbortSignal.t -> unit [@@js.set "signal"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
and AnonymousInterface1 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> AbortSignal.t [@@js.get "prototype"]
  val set_prototype: t -> AbortSignal.t -> unit [@@js.set "prototype"]
  val create: t -> AbortSignal.t [@@js.apply_newable]
end
and AnonymousInterface28 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Event.t [@@js.get "prototype"]
  val set_prototype: t -> Event.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:EventInit.t -> unit -> Event.t [@@js.apply_newable]
  val get_AT_TARGET: t -> float [@@js.get "AT_TARGET"]
  val get_BUBBLING_PHASE: t -> float [@@js.get "BUBBLING_PHASE"]
  val get_CAPTURING_PHASE: t -> float [@@js.get "CAPTURING_PHASE"]
  val get_NONE: t -> float [@@js.get "NONE"]
end
and AnonymousInterface30 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> EventTarget.t [@@js.get "prototype"]
  val set_prototype: t -> EventTarget.t -> unit [@@js.set "prototype"]
  val create: t -> EventTarget.t [@@js.apply_newable]
end

(** An event which takes place in the DOM. *)
and[@js.scope "Event"] Event : sig
  type t = [`Event] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Event ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns true or false depending on how event was initialized. True if event goes through its target's ancestors in reverse tree order, and false otherwise. *)
  val get_bubbles: 'tags this -> bool [@@js.get "bubbles"]
  val get_cancelBubble: 'tags this -> bool [@@js.get "cancelBubble"]
  val set_cancelBubble: 'tags this -> bool -> unit [@@js.set "cancelBubble"]
  
  (** Returns true or false depending on how event was initialized. Its return value does not always carry meaning, but true can indicate that part of the operation during which event was dispatched, can be canceled by invoking the preventDefault() method. *)
  val get_cancelable: 'tags this -> bool [@@js.get "cancelable"]
  
  (** Returns true or false depending on how event was initialized. True if event invokes listeners past a ShadowRoot node that is the root of its target, and false otherwise. *)
  val get_composed: 'tags this -> bool [@@js.get "composed"]
  
  (** Returns the object whose event listener's callback is currently being invoked. *)
  val get_currentTarget: 'tags this -> EventTarget.t or_null [@@js.get "currentTarget"]
  
  (** Returns true if preventDefault() was invoked successfully to indicate cancelation, and false otherwise. *)
  val get_defaultPrevented: 'tags this -> bool [@@js.get "defaultPrevented"]
  
  (** Returns the event's phase, which is one of NONE, CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE. *)
  val get_eventPhase: 'tags this -> float [@@js.get "eventPhase"]
  
  (** Returns true if event was dispatched by the user agent, and false otherwise. *)
  val get_isTrusted: 'tags this -> bool [@@js.get "isTrusted"]
  
  (** @deprecated  *)
  val get_returnValue: 'tags this -> bool [@@js.get "returnValue"]
  
  (** @deprecated  *)
  val set_returnValue: 'tags this -> bool -> unit [@@js.set "returnValue"]
  
  (** @deprecated  *)
  val get_srcElement: 'tags this -> EventTarget.t or_null [@@js.get "srcElement"]
  
  (** Returns the object to which event is dispatched (its target). *)
  val get_target: 'tags this -> EventTarget.t or_null [@@js.get "target"]
  
  (** Returns the event's timestamp as the number of milliseconds measured relative to the time origin. *)
  val get_timeStamp: 'tags this -> DOMHighResTimeStamp.t [@@js.get "timeStamp"]
  
  (** Returns the type of event, e.g. "click", "hashchange", or "submit". *)
  val get_type: 'tags this -> string [@@js.get "type"]
  
  (** Returns the invocation target objects of event's path (objects on which listeners will be invoked), except for any nodes in shadow trees of which the shadow root's mode is "closed" that are not reachable from event's currentTarget. *)
  val composedPath: 'tags this -> EventTarget.t list [@@js.call "composedPath"]
  
  (** @deprecated  *)
  val initEvent: 'tags this -> type_:string -> ?bubbles:bool -> ?cancelable:bool -> unit -> unit [@@js.call "initEvent"]
  
  (** If invoked when the cancelable attribute value is true, and while executing a listener for the event with passive set to false, signals to the operation that caused event to be dispatched that it needs to be canceled. *)
  val preventDefault: 'tags this -> unit [@@js.call "preventDefault"]
  
  (** Invoking this method prevents event from reaching any registered event listeners after the current one finishes running and, when dispatched in a tree, also prevents event from reaching any other objects. *)
  val stopImmediatePropagation: 'tags this -> unit [@@js.call "stopImmediatePropagation"]
  
  (** When dispatched in a tree, invoking this method prevents event from reaching any objects other than the current object. *)
  val stopPropagation: 'tags this -> unit [@@js.call "stopPropagation"]
  val get_AT_TARGET: 'tags this -> float [@@js.get "AT_TARGET"]
  val get_BUBBLING_PHASE: 'tags this -> float [@@js.get "BUBBLING_PHASE"]
  val get_CAPTURING_PHASE: 'tags this -> float [@@js.get "CAPTURING_PHASE"]
  val get_NONE: 'tags this -> float [@@js.get "NONE"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:EventInit.t -> unit -> t [@@js.create]
  val at_target: unit -> float [@@js.get "AT_TARGET"]
  val bubbling_phase: unit -> float [@@js.get "BUBBLING_PHASE"]
  val capturing_phase: unit -> float [@@js.get "CAPTURING_PHASE"]
  val none: unit -> float [@@js.get "NONE"]
end
and EventListener : sig
  type t = [`EventListener] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventListener]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventListener]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventListener ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> evt:Event.t -> unit [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
and EventListenerObject : sig
  type t = [`EventListenerObject] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventListenerObject]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventListenerObject]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventListenerObject ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val handleEvent: 'tags this -> object_:Event.t -> unit [@@js.call "handleEvent"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
and EventListenerOrEventListenerObject : sig
  type t = (EventListener.t, EventListenerObject.t) union2
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end

(** EventTarget is a DOM interface implemented by objects that can receive events and may have listeners for them. *)
and[@js.scope "EventTarget"] EventTarget : sig
  type t = [`EventTarget] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventTarget ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:string -> callback:EventListenerOrEventListenerObject.t or_null -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise. *)
  val dispatchEvent: 'tags this -> event:Event.t -> bool [@@js.call "dispatchEvent"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:string -> callback:EventListenerOrEventListenerObject.t or_null -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface70 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Performance.t [@@js.get "prototype"]
  val set_prototype: t -> Performance.t -> unit [@@js.set "prototype"]
  val create: t -> Performance.t [@@js.apply_newable]
end

(** Provides access to performance-related information for the current page. It's part of the High Resolution Time API, but is enhanced by the Performance Timeline API, the Navigation Timing API, the User Timing API, and the Resource Timing API. *)
and[@js.scope "Performance"] Performance : sig
  type t = [`EventTarget | `Performance] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `Performance]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `Performance]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Performance ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onresourcetimingbufferfull: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onresourcetimingbufferfull"]
  val set_onresourcetimingbufferfull: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onresourcetimingbufferfull"]
  val get_timeOrigin: 'tags this -> DOMHighResTimeStamp.t [@@js.get "timeOrigin"]
  val clearMarks: 'tags this -> ?markName:string -> unit -> unit [@@js.call "clearMarks"]
  val clearMeasures: 'tags this -> ?measureName:string -> unit -> unit [@@js.call "clearMeasures"]
  val clearResourceTimings: 'tags this -> unit [@@js.call "clearResourceTimings"]
  val getEntries: 'tags this -> PerformanceEntryList.t [@@js.call "getEntries"]
  val getEntriesByName: 'tags this -> name:string -> ?type_:string -> unit -> PerformanceEntryList.t [@@js.call "getEntriesByName"]
  val getEntriesByType: 'tags this -> type_:string -> PerformanceEntryList.t [@@js.call "getEntriesByType"]
  val mark: 'tags this -> markName:string -> ?markOptions:PerformanceMarkOptions.t -> unit -> PerformanceMark.t [@@js.call "mark"]
  val measure: 'tags this -> measureName:string -> ?startOrMeasureOptions:PerformanceMeasureOptions.t or_string -> ?endMark:string -> unit -> PerformanceMeasure.t [@@js.call "measure"]
  val now: 'tags this -> DOMHighResTimeStamp.t [@@js.call "now"]
  val setResourceTimingBufferSize: 'tags this -> maxSize:float -> unit [@@js.call "setResourceTimingBufferSize"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'PerformanceEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'PerformanceEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module[@js.scope "performance"] PerformanceStatic : sig
  val onresourcetimingbufferfull: unit -> (this:Performance.t -> ev:Event.t -> any) or_null [@@js.get "onresourcetimingbufferfull"]
  val timeOrigin: unit -> DOMHighResTimeStamp.t [@@js.get "timeOrigin"]
  val clearMarks: ?markName:string -> unit -> unit [@@js.global "clearMarks"]
  val clearMeasures: ?measureName:string -> unit -> unit [@@js.global "clearMeasures"]
  val clearResourceTimings: unit -> unit [@@js.global "clearResourceTimings"]
  val getEntries: unit -> PerformanceEntryList.t [@@js.global "getEntries"]
  val getEntriesByName: name:string -> ?type_:string -> unit -> PerformanceEntryList.t [@@js.global "getEntriesByName"]
  val getEntriesByType: string -> PerformanceEntryList.t [@@js.global "getEntriesByType"]
  val mark: markName:string -> ?markOptions:PerformanceMarkOptions.t -> unit -> PerformanceMark.t [@@js.global "mark"]
  val measure: measureName:string -> ?startOrMeasureOptions:PerformanceMeasureOptions.t or_string -> ?endMark:string -> unit -> PerformanceMeasure.t [@@js.global "measure"]
  val now: unit -> DOMHighResTimeStamp.t [@@js.global "now"]
  val setResourceTimingBufferSize: float -> unit [@@js.global "setResourceTimingBufferSize"]
  val toJSON: unit -> any [@@js.global "toJSON"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: type_:'K -> listener:(this:Performance.t -> ev:(* FIXME: unknown type 'PerformanceEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.global "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.global "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: type_:'K -> listener:(this:Performance.t -> ev:(* FIXME: unknown type 'PerformanceEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.global "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.global "removeEventListener"]
end
module StorageEstimate : sig
  type t = [`StorageEstimate] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`StorageEstimate]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`StorageEstimate]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `StorageEstimate ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_quota: 'tags this -> float [@@js.get "quota"]
  val set_quota: 'tags this -> float -> unit [@@js.set "quota"]
  val get_usage: 'tags this -> float [@@js.get "usage"]
  val set_usage: 'tags this -> float -> unit [@@js.set "usage"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface99 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> StorageManager.t [@@js.get "prototype"]
  val set_prototype: t -> StorageManager.t -> unit [@@js.set "prototype"]
  val create: t -> StorageManager.t [@@js.apply_newable]
end

(** Available only in secure contexts. *)
and[@js.scope "StorageManager"] StorageManager : sig
  type t = [`StorageManager] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`StorageManager]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`StorageManager]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `StorageManager ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val estimate: 'tags this -> StorageEstimate.t Promise.t_1 [@@js.call "estimate"]
  val persisted: 'tags this -> bool Promise.t_1 [@@js.call "persisted"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end

(** Available only in secure contexts. *)
module NavigatorStorage : sig
  type t = [`NavigatorStorage] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NavigatorStorage]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NavigatorStorage]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NavigatorStorage ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_storage: 'tags this -> StorageManager.t [@@js.get "storage"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module NavigatorOnLine : sig
  type t = [`NavigatorOnLine] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NavigatorOnLine]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NavigatorOnLine]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NavigatorOnLine ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onLine: 'tags this -> bool [@@js.get "onLine"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ConnectionType : sig
  type t = ([`L_s116_mixed[@js "mixed"] | `L_s128_none[@js "none"] | `L_s142_other[@js "other"] | `L_s196_unknown[@js "unknown"] | `L_s207_wifi[@js "wifi"] | `L_s46_bluetooth[@js "bluetooth"] | `L_s47_cellular[@js "cellular"] | `L_s68_ethernet[@js "ethernet"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface66 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> NetworkInformation.t [@@js.get "prototype"]
  val set_prototype: t -> NetworkInformation.t -> unit [@@js.set "prototype"]
  val create: t -> NetworkInformation.t [@@js.apply_newable]
end
and[@js.scope "NetworkInformation"] NetworkInformation : sig
  type t = [`EventTarget | `NetworkInformation] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `NetworkInformation]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `NetworkInformation]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NetworkInformation ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_type: 'tags this -> ConnectionType.t [@@js.get "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module NavigatorNetworkInformation : sig
  type t = [`NavigatorNetworkInformation] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NavigatorNetworkInformation]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NavigatorNetworkInformation]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NavigatorNetworkInformation ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_connection: 'tags this -> NetworkInformation.t [@@js.get "connection"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module NavigatorLanguage : sig
  type t = [`NavigatorLanguage] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NavigatorLanguage]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NavigatorLanguage]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NavigatorLanguage ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_language: 'tags this -> string [@@js.get "language"]
  val get_languages: 'tags this -> string list [@@js.get "languages"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module NavigatorID : sig
  type t = [`NavigatorID] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NavigatorID]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NavigatorID]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NavigatorID ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** @deprecated  *)
  val get_appCodeName: 'tags this -> string [@@js.get "appCodeName"]
  
  (** @deprecated  *)
  val get_appName: 'tags this -> string [@@js.get "appName"]
  
  (** @deprecated  *)
  val get_appVersion: 'tags this -> string [@@js.get "appVersion"]
  
  (** @deprecated  *)
  val get_platform: 'tags this -> string [@@js.get "platform"]
  
  (** @deprecated  *)
  val get_product: 'tags this -> string [@@js.get "product"]
  val get_userAgent: 'tags this -> string [@@js.get "userAgent"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module NavigatorConcurrentHardware : sig
  type t = [`NavigatorConcurrentHardware] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NavigatorConcurrentHardware]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NavigatorConcurrentHardware]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NavigatorConcurrentHardware ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hardwareConcurrency: 'tags this -> float [@@js.get "hardwareConcurrency"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MediaEncodingType : sig
  type t = ([`L_s165_record[@js "record"] | `L_s206_webrtc[@js "webrtc"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module TransferFunction : sig
  type t = ([`L_s151_pq[@js "pq"] | `L_s183_srgb[@js "srgb"] | `L_s86_hlg[@js "hlg"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module HdrMetadataType : sig
  type t = ([`L_s179_smpteSt2086[@js "smpteSt2086"] | `L_s180_smpteSt2094_10[@js "smpteSt2094-10"] | `L_s181_smpteSt2094_40[@js "smpteSt2094-40"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ColorGamut : sig
  type t = ([`L_s144_p3[@js "p3"] | `L_s164_rec2020[@js "rec2020"] | `L_s183_srgb[@js "srgb"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module VideoConfiguration : sig
  type t = [`VideoConfiguration] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`VideoConfiguration]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`VideoConfiguration]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `VideoConfiguration ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_bitrate: 'tags this -> float [@@js.get "bitrate"]
  val set_bitrate: 'tags this -> float -> unit [@@js.set "bitrate"]
  val get_colorGamut: 'tags this -> ColorGamut.t [@@js.get "colorGamut"]
  val set_colorGamut: 'tags this -> ColorGamut.t -> unit [@@js.set "colorGamut"]
  val get_contentType: 'tags this -> string [@@js.get "contentType"]
  val set_contentType: 'tags this -> string -> unit [@@js.set "contentType"]
  val get_framerate: 'tags this -> float [@@js.get "framerate"]
  val set_framerate: 'tags this -> float -> unit [@@js.set "framerate"]
  val get_hdrMetadataType: 'tags this -> HdrMetadataType.t [@@js.get "hdrMetadataType"]
  val set_hdrMetadataType: 'tags this -> HdrMetadataType.t -> unit [@@js.set "hdrMetadataType"]
  val get_height: 'tags this -> float [@@js.get "height"]
  val set_height: 'tags this -> float -> unit [@@js.set "height"]
  val get_scalabilityMode: 'tags this -> string [@@js.get "scalabilityMode"]
  val set_scalabilityMode: 'tags this -> string -> unit [@@js.set "scalabilityMode"]
  val get_transferFunction: 'tags this -> TransferFunction.t [@@js.get "transferFunction"]
  val set_transferFunction: 'tags this -> TransferFunction.t -> unit [@@js.set "transferFunction"]
  val get_width: 'tags this -> float [@@js.get "width"]
  val set_width: 'tags this -> float -> unit [@@js.set "width"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AudioConfiguration : sig
  type t = [`AudioConfiguration] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AudioConfiguration]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AudioConfiguration]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AudioConfiguration ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_bitrate: 'tags this -> float [@@js.get "bitrate"]
  val set_bitrate: 'tags this -> float -> unit [@@js.set "bitrate"]
  val get_channels: 'tags this -> string [@@js.get "channels"]
  val set_channels: 'tags this -> string -> unit [@@js.set "channels"]
  val get_contentType: 'tags this -> string [@@js.get "contentType"]
  val set_contentType: 'tags this -> string -> unit [@@js.set "contentType"]
  val get_samplerate: 'tags this -> float [@@js.get "samplerate"]
  val set_samplerate: 'tags this -> float -> unit [@@js.set "samplerate"]
  val get_spatialRendering: 'tags this -> bool [@@js.get "spatialRendering"]
  val set_spatialRendering: 'tags this -> bool -> unit [@@js.set "spatialRendering"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MediaConfiguration : sig
  type t = [`MediaConfiguration] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MediaConfiguration]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MediaConfiguration]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MediaConfiguration ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_audio: 'tags this -> AudioConfiguration.t [@@js.get "audio"]
  val set_audio: 'tags this -> AudioConfiguration.t -> unit [@@js.set "audio"]
  val get_video: 'tags this -> VideoConfiguration.t [@@js.get "video"]
  val set_video: 'tags this -> VideoConfiguration.t -> unit [@@js.set "video"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MediaEncodingConfiguration : sig
  type t = [`MediaConfiguration | `MediaEncodingConfiguration] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MediaConfiguration | `MediaEncodingConfiguration]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MediaConfiguration | `MediaEncodingConfiguration]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MediaEncodingConfiguration ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_type: 'tags this -> MediaEncodingType.t [@@js.get "type"]
  val set_type: 'tags this -> MediaEncodingType.t -> unit [@@js.set "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MediaCapabilitiesInfo : sig
  type t = [`MediaCapabilitiesInfo] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MediaCapabilitiesInfo]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MediaCapabilitiesInfo]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MediaCapabilitiesInfo ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_powerEfficient: 'tags this -> bool [@@js.get "powerEfficient"]
  val set_powerEfficient: 'tags this -> bool -> unit [@@js.set "powerEfficient"]
  val get_smooth: 'tags this -> bool [@@js.get "smooth"]
  val set_smooth: 'tags this -> bool -> unit [@@js.set "smooth"]
  val get_supported: 'tags this -> bool [@@js.get "supported"]
  val set_supported: 'tags this -> bool -> unit [@@js.set "supported"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MediaCapabilitiesEncodingInfo : sig
  type t = [`MediaCapabilitiesEncodingInfo | `MediaCapabilitiesInfo] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MediaCapabilitiesEncodingInfo | `MediaCapabilitiesInfo]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MediaCapabilitiesEncodingInfo | `MediaCapabilitiesInfo]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MediaCapabilitiesEncodingInfo ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_configuration: 'tags this -> MediaEncodingConfiguration.t [@@js.get "configuration"]
  val set_configuration: 'tags this -> MediaEncodingConfiguration.t -> unit [@@js.set "configuration"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MediaDecodingType : sig
  type t = ([`L_s111_media_source[@js "media-source"] | `L_s206_webrtc[@js "webrtc"] | `L_s73_file[@js "file"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module MediaDecodingConfiguration : sig
  type t = [`MediaConfiguration | `MediaDecodingConfiguration] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MediaConfiguration | `MediaDecodingConfiguration]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MediaConfiguration | `MediaDecodingConfiguration]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MediaDecodingConfiguration ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_type: 'tags this -> MediaDecodingType.t [@@js.get "type"]
  val set_type: 'tags this -> MediaDecodingType.t -> unit [@@js.set "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MediaCapabilitiesDecodingInfo : sig
  type t = [`MediaCapabilitiesDecodingInfo | `MediaCapabilitiesInfo] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MediaCapabilitiesDecodingInfo | `MediaCapabilitiesInfo]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MediaCapabilitiesDecodingInfo | `MediaCapabilitiesInfo]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MediaCapabilitiesDecodingInfo ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_configuration: 'tags this -> MediaDecodingConfiguration.t [@@js.get "configuration"]
  val set_configuration: 'tags this -> MediaDecodingConfiguration.t -> unit [@@js.set "configuration"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface60 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> MediaCapabilities.t [@@js.get "prototype"]
  val set_prototype: t -> MediaCapabilities.t -> unit [@@js.set "prototype"]
  val create: t -> MediaCapabilities.t [@@js.apply_newable]
end
and[@js.scope "MediaCapabilities"] MediaCapabilities : sig
  type t = [`MediaCapabilities] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MediaCapabilities]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MediaCapabilities]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MediaCapabilities ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val decodingInfo: 'tags this -> configuration:MediaDecodingConfiguration.t -> MediaCapabilitiesDecodingInfo.t Promise.t_1 [@@js.call "decodingInfo"]
  val encodingInfo: 'tags this -> configuration:MediaEncodingConfiguration.t -> MediaCapabilitiesEncodingInfo.t Promise.t_1 [@@js.call "encodingInfo"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module[@js.scope "navigator"] NavigatorStatic : sig
  val mediaCapabilities: unit -> MediaCapabilities.t [@@js.get "mediaCapabilities"]
end
module[@js.scope "location"] LocationStatic : sig
  val hash: unit -> string [@@js.get "hash"]
  val host: unit -> string [@@js.get "host"]
  val hostname: unit -> string [@@js.get "hostname"]
  val href: unit -> string [@@js.get "href"]
  val toString: unit -> string [@@js.global "toString"]
  val origin: unit -> string [@@js.get "origin"]
  val pathname: unit -> string [@@js.get "pathname"]
  val port: unit -> string [@@js.get "port"]
  val protocol: unit -> string [@@js.get "protocol"]
  val search: unit -> string [@@js.get "search"]
end
module IDBVersionChangeEventInit : sig
  type t = [`EventInit | `IDBVersionChangeEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `IDBVersionChangeEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `IDBVersionChangeEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBVersionChangeEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_newVersion: 'tags this -> float or_null [@@js.get "newVersion"]
  val set_newVersion: 'tags this -> float or_null -> unit [@@js.set "newVersion"]
  val get_oldVersion: 'tags this -> float [@@js.get "oldVersion"]
  val set_oldVersion: 'tags this -> float -> unit [@@js.set "oldVersion"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface54 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBVersionChangeEvent.t [@@js.get "prototype"]
  val set_prototype: t -> IDBVersionChangeEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:IDBVersionChangeEventInit.t -> unit -> IDBVersionChangeEvent.t [@@js.apply_newable]
end

(** This IndexedDB API interface indicates that the version of the database has changed, as the result of an IDBOpenDBRequest.onupgradeneeded event handler function. *)
and[@js.scope "IDBVersionChangeEvent"] IDBVersionChangeEvent : sig
  type t = [`Event | `IDBVersionChangeEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `IDBVersionChangeEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `IDBVersionChangeEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBVersionChangeEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_newVersion: 'tags this -> float or_null [@@js.get "newVersion"]
  val get_oldVersion: 'tags this -> float [@@js.get "oldVersion"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:IDBVersionChangeEventInit.t -> unit -> t [@@js.create]
end
module IDBObjectStoreParameters : sig
  type t = [`IDBObjectStoreParameters] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBObjectStoreParameters]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBObjectStoreParameters]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBObjectStoreParameters ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_autoIncrement: 'tags this -> bool [@@js.get "autoIncrement"]
  val set_autoIncrement: 'tags this -> bool -> unit [@@js.set "autoIncrement"]
  val get_keyPath: 'tags this -> string list or_string or_null [@@js.get "keyPath"]
  val set_keyPath: 'tags this -> string list or_string or_null -> unit [@@js.set "keyPath"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module IDBIndexParameters : sig
  type t = [`IDBIndexParameters] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBIndexParameters]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBIndexParameters]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBIndexParameters ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_multiEntry: 'tags this -> bool [@@js.get "multiEntry"]
  val set_multiEntry: 'tags this -> bool -> unit [@@js.set "multiEntry"]
  val get_unique: 'tags this -> bool [@@js.get "unique"]
  val set_unique: 'tags this -> bool -> unit [@@js.set "unique"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module BufferSource : sig
  type t = (ArrayBuffer.t_0, ArrayBufferView.t_0) union2
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module IDBValidKey : sig
  type t = ((BufferSource.t, Date.t_0) union2, t) or_array or_string or_number
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module IDBTransactionMode : sig
  type t = ([`L_s161_readonly[@js "readonly"] | `L_s162_readwrite[@js "readwrite"] | `L_s203_versionchange[@js "versionchange"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module IDBRequestReadyState : sig
  type t = ([`L_s147_pending[@js "pending"] | `L_s63_done[@js "done"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface17 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMException.t [@@js.get "prototype"]
  val set_prototype: t -> DOMException.t -> unit [@@js.set "prototype"]
  val create: t -> ?message:string -> ?name:string -> unit -> DOMException.t [@@js.apply_newable]
  val get_ABORT_ERR: t -> float [@@js.get "ABORT_ERR"]
  val get_DATA_CLONE_ERR: t -> float [@@js.get "DATA_CLONE_ERR"]
  val get_DOMSTRING_SIZE_ERR: t -> float [@@js.get "DOMSTRING_SIZE_ERR"]
  val get_HIERARCHY_REQUEST_ERR: t -> float [@@js.get "HIERARCHY_REQUEST_ERR"]
  val get_INDEX_SIZE_ERR: t -> float [@@js.get "INDEX_SIZE_ERR"]
  val get_INUSE_ATTRIBUTE_ERR: t -> float [@@js.get "INUSE_ATTRIBUTE_ERR"]
  val get_INVALID_ACCESS_ERR: t -> float [@@js.get "INVALID_ACCESS_ERR"]
  val get_INVALID_CHARACTER_ERR: t -> float [@@js.get "INVALID_CHARACTER_ERR"]
  val get_INVALID_MODIFICATION_ERR: t -> float [@@js.get "INVALID_MODIFICATION_ERR"]
  val get_INVALID_NODE_TYPE_ERR: t -> float [@@js.get "INVALID_NODE_TYPE_ERR"]
  val get_INVALID_STATE_ERR: t -> float [@@js.get "INVALID_STATE_ERR"]
  val get_NAMESPACE_ERR: t -> float [@@js.get "NAMESPACE_ERR"]
  val get_NETWORK_ERR: t -> float [@@js.get "NETWORK_ERR"]
  val get_NOT_FOUND_ERR: t -> float [@@js.get "NOT_FOUND_ERR"]
  val get_NOT_SUPPORTED_ERR: t -> float [@@js.get "NOT_SUPPORTED_ERR"]
  val get_NO_DATA_ALLOWED_ERR: t -> float [@@js.get "NO_DATA_ALLOWED_ERR"]
  val get_NO_MODIFICATION_ALLOWED_ERR: t -> float [@@js.get "NO_MODIFICATION_ALLOWED_ERR"]
  val get_QUOTA_EXCEEDED_ERR: t -> float [@@js.get "QUOTA_EXCEEDED_ERR"]
  val get_SECURITY_ERR: t -> float [@@js.get "SECURITY_ERR"]
  val get_SYNTAX_ERR: t -> float [@@js.get "SYNTAX_ERR"]
  val get_TIMEOUT_ERR: t -> float [@@js.get "TIMEOUT_ERR"]
  val get_TYPE_MISMATCH_ERR: t -> float [@@js.get "TYPE_MISMATCH_ERR"]
  val get_URL_MISMATCH_ERR: t -> float [@@js.get "URL_MISMATCH_ERR"]
  val get_VALIDATION_ERR: t -> float [@@js.get "VALIDATION_ERR"]
  val get_WRONG_DOCUMENT_ERR: t -> float [@@js.get "WRONG_DOCUMENT_ERR"]
end

(** An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API. *)
and[@js.scope "DOMException"] DOMException : sig
  type t = [`DOMException | Error.tags_0] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMException | Error.tags_0]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMException | Error.tags_0]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMException ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_code: 'tags this -> float [@@js.get "code"]
  val get_message: 'tags this -> string [@@js.get "message"]
  val get_name: 'tags this -> string [@@js.get "name"]
  val get_ABORT_ERR: 'tags this -> float [@@js.get "ABORT_ERR"]
  val get_DATA_CLONE_ERR: 'tags this -> float [@@js.get "DATA_CLONE_ERR"]
  val get_DOMSTRING_SIZE_ERR: 'tags this -> float [@@js.get "DOMSTRING_SIZE_ERR"]
  val get_HIERARCHY_REQUEST_ERR: 'tags this -> float [@@js.get "HIERARCHY_REQUEST_ERR"]
  val get_INDEX_SIZE_ERR: 'tags this -> float [@@js.get "INDEX_SIZE_ERR"]
  val get_INUSE_ATTRIBUTE_ERR: 'tags this -> float [@@js.get "INUSE_ATTRIBUTE_ERR"]
  val get_INVALID_ACCESS_ERR: 'tags this -> float [@@js.get "INVALID_ACCESS_ERR"]
  val get_INVALID_CHARACTER_ERR: 'tags this -> float [@@js.get "INVALID_CHARACTER_ERR"]
  val get_INVALID_MODIFICATION_ERR: 'tags this -> float [@@js.get "INVALID_MODIFICATION_ERR"]
  val get_INVALID_NODE_TYPE_ERR: 'tags this -> float [@@js.get "INVALID_NODE_TYPE_ERR"]
  val get_INVALID_STATE_ERR: 'tags this -> float [@@js.get "INVALID_STATE_ERR"]
  val get_NAMESPACE_ERR: 'tags this -> float [@@js.get "NAMESPACE_ERR"]
  val get_NETWORK_ERR: 'tags this -> float [@@js.get "NETWORK_ERR"]
  val get_NOT_FOUND_ERR: 'tags this -> float [@@js.get "NOT_FOUND_ERR"]
  val get_NOT_SUPPORTED_ERR: 'tags this -> float [@@js.get "NOT_SUPPORTED_ERR"]
  val get_NO_DATA_ALLOWED_ERR: 'tags this -> float [@@js.get "NO_DATA_ALLOWED_ERR"]
  val get_NO_MODIFICATION_ALLOWED_ERR: 'tags this -> float [@@js.get "NO_MODIFICATION_ALLOWED_ERR"]
  val get_QUOTA_EXCEEDED_ERR: 'tags this -> float [@@js.get "QUOTA_EXCEEDED_ERR"]
  val get_SECURITY_ERR: 'tags this -> float [@@js.get "SECURITY_ERR"]
  val get_SYNTAX_ERR: 'tags this -> float [@@js.get "SYNTAX_ERR"]
  val get_TIMEOUT_ERR: 'tags this -> float [@@js.get "TIMEOUT_ERR"]
  val get_TYPE_MISMATCH_ERR: 'tags this -> float [@@js.get "TYPE_MISMATCH_ERR"]
  val get_URL_MISMATCH_ERR: 'tags this -> float [@@js.get "URL_MISMATCH_ERR"]
  val get_VALIDATION_ERR: 'tags this -> float [@@js.get "VALIDATION_ERR"]
  val get_WRONG_DOCUMENT_ERR: 'tags this -> float [@@js.get "WRONG_DOCUMENT_ERR"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?message:string -> ?name:string -> unit -> t [@@js.create]
  val abort_err: unit -> float [@@js.get "ABORT_ERR"]
  val data_clone_err: unit -> float [@@js.get "DATA_CLONE_ERR"]
  val domstring_size_err: unit -> float [@@js.get "DOMSTRING_SIZE_ERR"]
  val hierarchy_request_err: unit -> float [@@js.get "HIERARCHY_REQUEST_ERR"]
  val index_size_err: unit -> float [@@js.get "INDEX_SIZE_ERR"]
  val inuse_attribute_err: unit -> float [@@js.get "INUSE_ATTRIBUTE_ERR"]
  val invalid_access_err: unit -> float [@@js.get "INVALID_ACCESS_ERR"]
  val invalid_character_err: unit -> float [@@js.get "INVALID_CHARACTER_ERR"]
  val invalid_modification_err: unit -> float [@@js.get "INVALID_MODIFICATION_ERR"]
  val invalid_node_type_err: unit -> float [@@js.get "INVALID_NODE_TYPE_ERR"]
  val invalid_state_err: unit -> float [@@js.get "INVALID_STATE_ERR"]
  val namespace_err: unit -> float [@@js.get "NAMESPACE_ERR"]
  val network_err: unit -> float [@@js.get "NETWORK_ERR"]
  val not_found_err: unit -> float [@@js.get "NOT_FOUND_ERR"]
  val not_supported_err: unit -> float [@@js.get "NOT_SUPPORTED_ERR"]
  val no_data_allowed_err: unit -> float [@@js.get "NO_DATA_ALLOWED_ERR"]
  val no_modification_allowed_err: unit -> float [@@js.get "NO_MODIFICATION_ALLOWED_ERR"]
  val quota_exceeded_err: unit -> float [@@js.get "QUOTA_EXCEEDED_ERR"]
  val security_err: unit -> float [@@js.get "SECURITY_ERR"]
  val syntax_err: unit -> float [@@js.get "SYNTAX_ERR"]
  val timeout_err: unit -> float [@@js.get "TIMEOUT_ERR"]
  val type_mismatch_err: unit -> float [@@js.get "TYPE_MISMATCH_ERR"]
  val url_mismatch_err: unit -> float [@@js.get "URL_MISMATCH_ERR"]
  val validation_err: unit -> float [@@js.get "VALIDATION_ERR"]
  val wrong_document_err: unit -> float [@@js.get "WRONG_DOCUMENT_ERR"]
end
module rec AnonymousInterface49 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBKeyRange.t [@@js.get "prototype"]
  val set_prototype: t -> IDBKeyRange.t -> unit [@@js.set "prototype"]
  val create: t -> IDBKeyRange.t [@@js.apply_newable]
  
  (** Returns a new IDBKeyRange spanning from lower to upper. If lowerOpen is true, lower is not included in the range. If upperOpen is true, upper is not included in the range. *)
  val bound: t -> lower:any -> upper:any -> ?lowerOpen:bool -> ?upperOpen:bool -> unit -> IDBKeyRange.t [@@js.call "bound"]
  
  (** Returns a new IDBKeyRange starting at key with no upper bound. If open is true, key is not included in the range. *)
  val lowerBound: t -> lower:any -> ?open_:bool -> unit -> IDBKeyRange.t [@@js.call "lowerBound"]
  
  (** Returns a new IDBKeyRange spanning only key. *)
  val only: t -> value:any -> IDBKeyRange.t [@@js.call "only"]
  
  (** Returns a new IDBKeyRange with no lower bound and ending at key. If open is true, key is not included in the range. *)
  val upperBound: t -> upper:any -> ?open_:bool -> unit -> IDBKeyRange.t [@@js.call "upperBound"]
end

(** A key range can be a single value or a range with upper and lower bounds or endpoints. If the key range has both upper and lower bounds, then it is bounded; if it has no bounds, it is unbounded. A bounded key range can either be open (the endpoints are excluded) or closed (the endpoints are included). To retrieve all keys within a certain range, you can use the following code constructs: *)
and[@js.scope "IDBKeyRange"] IDBKeyRange : sig
  type t = [`IDBKeyRange] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBKeyRange]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBKeyRange]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBKeyRange ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns lower bound, or undefined if none. *)
  val get_lower: 'tags this -> any [@@js.get "lower"]
  
  (** Returns true if the lower open flag is set, and false otherwise. *)
  val get_lowerOpen: 'tags this -> bool [@@js.get "lowerOpen"]
  
  (** Returns upper bound, or undefined if none. *)
  val get_upper: 'tags this -> any [@@js.get "upper"]
  
  (** Returns true if the upper open flag is set, and false otherwise. *)
  val get_upperOpen: 'tags this -> bool [@@js.get "upperOpen"]
  
  (** Returns true if key is included in the range, and false otherwise. *)
  val includes: 'tags this -> key:any -> bool [@@js.call "includes"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
  
  (** Returns a new IDBKeyRange spanning from lower to upper. If lowerOpen is true, lower is not included in the range. If upperOpen is true, upper is not included in the range. *)
  val bound: lower:any -> upper:any -> ?lowerOpen:bool -> ?upperOpen:bool -> unit -> t [@@js.global "bound"]
  
  (** Returns a new IDBKeyRange starting at key with no upper bound. If open is true, key is not included in the range. *)
  val lowerBound: lower:any -> ?open_:bool -> unit -> t [@@js.global "lowerBound"]
  
  (** Returns a new IDBKeyRange spanning only key. *)
  val only: any -> t [@@js.global "only"]
  
  (** Returns a new IDBKeyRange with no lower bound and ending at key. If open is true, key is not included in the range. *)
  val upperBound: upper:any -> ?open_:bool -> unit -> t [@@js.global "upperBound"]
end
module IDBCursorDirection : sig
  type t = ([`L_s121_next[@js "next"] | `L_s122_nextunique[@js "nextunique"] | `L_s153_prev[@js "prev"] | `L_s154_prevunique[@js "prevunique"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface25 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMStringList.t [@@js.get "prototype"]
  val set_prototype: t -> DOMStringList.t -> unit [@@js.set "prototype"]
  val create: t -> DOMStringList.t [@@js.apply_newable]
end

(** A type returned by some APIs which contains a list of DOMString (strings). *)
and[@js.scope "DOMStringList"] DOMStringList : sig
  type t = [`DOMStringList | string ArrayLike.tags_1 | string IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMStringList | string ArrayLike.tags_1 | string IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMStringList | string ArrayLike.tags_1 | string IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMStringList ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the number of strings in strings. *)
  val get_length: 'tags this -> float [@@js.get "length"]
  
  (** Returns true if strings contains string, and false otherwise. *)
  val contains: 'tags this -> string:string -> bool [@@js.call "contains"]
  
  (** Returns the string with index index from strings. *)
  val item: 'tags this -> index:float -> string or_null [@@js.call "item"]
  val get: 'tags this -> float -> string [@@js.index_get]
  val set: 'tags this -> float -> string -> unit [@@js.index_set]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface44 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBCursor.t [@@js.get "prototype"]
  val set_prototype: t -> IDBCursor.t -> unit [@@js.set "prototype"]
  val create: t -> IDBCursor.t [@@js.apply_newable]
end
and AnonymousInterface45 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBCursorWithValue.t [@@js.get "prototype"]
  val set_prototype: t -> IDBCursorWithValue.t -> unit [@@js.set "prototype"]
  val create: t -> IDBCursorWithValue.t [@@js.apply_newable]
end
and AnonymousInterface46 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBDatabase.t [@@js.get "prototype"]
  val set_prototype: t -> IDBDatabase.t -> unit [@@js.set "prototype"]
  val create: t -> IDBDatabase.t [@@js.apply_newable]
end
and AnonymousInterface48 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBIndex.t [@@js.get "prototype"]
  val set_prototype: t -> IDBIndex.t -> unit [@@js.set "prototype"]
  val create: t -> IDBIndex.t [@@js.apply_newable]
end
and AnonymousInterface50 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBObjectStore.t [@@js.get "prototype"]
  val set_prototype: t -> IDBObjectStore.t -> unit [@@js.set "prototype"]
  val create: t -> IDBObjectStore.t [@@js.apply_newable]
end
and AnonymousInterface52 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBRequest.t_0 [@@js.get "prototype"]
  val set_prototype: t -> IDBRequest.t_0 -> unit [@@js.set "prototype"]
  val create: t -> IDBRequest.t_0 [@@js.apply_newable]
end
and AnonymousInterface53 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBTransaction.t [@@js.get "prototype"]
  val set_prototype: t -> IDBTransaction.t -> unit [@@js.set "prototype"]
  val create: t -> IDBTransaction.t [@@js.apply_newable]
end

(** This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database. *)
and[@js.scope "IDBCursor"] IDBCursor : sig
  type t = [`IDBCursor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBCursor]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBCursor]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBCursor ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the direction ("next", "nextunique", "prev" or "prevunique") of the cursor. *)
  val get_direction: 'tags this -> IDBCursorDirection.t [@@js.get "direction"]
  
  (** Returns the key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished. *)
  val get_key: 'tags this -> IDBValidKey.t [@@js.get "key"]
  
  (** Returns the effective key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished. *)
  val get_primaryKey: 'tags this -> IDBValidKey.t [@@js.get "primaryKey"]
  val get_request: 'tags this -> IDBRequest.t_0 [@@js.get "request"]
  
  (** Returns the IDBObjectStore or IDBIndex the cursor was opened from. *)
  val get_source: 'tags this -> (IDBIndex.t, IDBObjectStore.t) union2 [@@js.get "source"]
  
  (** Advances the cursor through the next count records in range. *)
  val advance: 'tags this -> count:float -> unit [@@js.call "advance"]
  
  (** Advances the cursor to the next record in range. *)
  val continue: 'tags this -> ?key:IDBValidKey.t -> unit -> unit [@@js.call "continue"]
  
  (** Advances the cursor to the next record in range matching or after key and primaryKey. Throws an "InvalidAccessError" DOMException if the source is not an index. *)
  val continuePrimaryKey: 'tags this -> key:IDBValidKey.t -> primaryKey:IDBValidKey.t -> unit [@@js.call "continuePrimaryKey"]
  
  (**
    Delete the record pointed at by the cursor with a new value.
    
    If successful, request's result will be undefined.
  *)
  val delete: 'tags this -> never or_undefined IDBRequest.t [@@js.call "delete"]
  
  (**
    Updated the record pointed at by the cursor with a new value.
    
    Throws a "DataError" DOMException if the effective object store uses in-line keys and the key would have changed.
    
    If successful, request's result will be the record's key.
  *)
  val update: 'tags this -> value:any -> IDBValidKey.t IDBRequest.t [@@js.call "update"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end

(** This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database. It is the same as the IDBCursor, except that it includes the value property. *)
and[@js.scope "IDBCursorWithValue"] IDBCursorWithValue : sig
  type t = [`IDBCursor | `IDBCursorWithValue] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBCursor | `IDBCursorWithValue]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBCursor | `IDBCursorWithValue]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBCursorWithValue ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the cursor's current value. *)
  val get_value: 'tags this -> any [@@js.get "value"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end

(** This IndexedDB API interface provides a connection to a database; you can use an IDBDatabase object to open a transaction on your database then create, manipulate, and delete objects (data) in that database. The interface provides the only way to get and manage versions of the database. *)
and[@js.scope "IDBDatabase"] IDBDatabase : sig
  type t = [`EventTarget | `IDBDatabase] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `IDBDatabase]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `IDBDatabase]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBDatabase ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the name of the database. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (** Returns a list of the names of object stores in the database. *)
  val get_objectStoreNames: 'tags this -> DOMStringList.t [@@js.get "objectStoreNames"]
  val get_onabort: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onabort"]
  val set_onabort: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onabort"]
  val get_onclose: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onclose"]
  val set_onclose: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onclose"]
  val get_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onerror"]
  val get_onversionchange: 'tags this -> (this:t -> ev:IDBVersionChangeEvent.t -> any) or_null [@@js.get "onversionchange"]
  val set_onversionchange: 'tags this -> (this:t -> ev:IDBVersionChangeEvent.t -> any) or_null -> unit [@@js.set "onversionchange"]
  
  (** Returns the version of the database. *)
  val get_version: 'tags this -> float [@@js.get "version"]
  
  (** Closes the connection once all running transactions have finished. *)
  val close: 'tags this -> unit [@@js.call "close"]
  
  (**
    Creates a new object store with the given name and options and returns a new IDBObjectStore.
    
    Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
  *)
  val createObjectStore: 'tags this -> name:string -> ?options:IDBObjectStoreParameters.t -> unit -> IDBObjectStore.t [@@js.call "createObjectStore"]
  
  (**
    Deletes the object store with the given name.
    
    Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
  *)
  val deleteObjectStore: 'tags this -> name:string -> unit [@@js.call "deleteObjectStore"]
  
  (** Returns a new transaction with the given mode ("readonly" or "readwrite") and scope which can be a single object store name or an array of names. *)
  val transaction: 'tags this -> storeNames:string list or_string -> ?mode:IDBTransactionMode.t -> unit -> IDBTransaction.t [@@js.call "transaction"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'IDBDatabaseEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'IDBDatabaseEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Returns a new transaction with the given mode ("readonly" or "readwrite") and scope which can be a single object store name or an array of names. *)
  val transaction': 'tags this -> storeNames:string Iterable.t_1 or_string -> ?mode:IDBTransactionMode.t -> unit -> IDBTransaction.t [@@js.call "transaction"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end

(** IDBIndex interface of the IndexedDB API provides asynchronous access to an index in a database. An index is a kind of object store for looking up records in another object store, called the referenced object store. You use this interface to retrieve data. *)
and[@js.scope "IDBIndex"] IDBIndex : sig
  type t = [`IDBIndex] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBIndex]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBIndex]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBIndex ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_keyPath: 'tags this -> string list or_string [@@js.get "keyPath"]
  val get_multiEntry: 'tags this -> bool [@@js.get "multiEntry"]
  
  (** Returns the name of the index. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (** Returns the name of the index. *)
  val set_name: 'tags this -> string -> unit [@@js.set "name"]
  
  (** Returns the IDBObjectStore the index belongs to. *)
  val get_objectStore: 'tags this -> IDBObjectStore.t [@@js.get "objectStore"]
  val get_unique: 'tags this -> bool [@@js.get "unique"]
  
  (**
    Retrieves the number of records matching the given key or key range in query.
    
    If successful, request's result will be the count.
  *)
  val count: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 -> unit -> float IDBRequest.t [@@js.call "count"]
  
  (**
    Retrieves the value of the first record matching the given key or key range in query.
    
    If successful, request's result will be the value, or undefined if there was no matching record.
  *)
  val get_: 'tags this -> query:(IDBKeyRange.t, IDBValidKey.t) union2 -> any IDBRequest.t [@@js.call "get"]
  
  (**
    Retrieves the values of the records matching the given key or key range in query (up to count if given).
    
    If successful, request's result will be an Array of the values.
  *)
  val getAll: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?count:float -> unit -> any list IDBRequest.t [@@js.call "getAll"]
  
  (**
    Retrieves the keys of records matching the given key or key range in query (up to count if given).
    
    If successful, request's result will be an Array of the keys.
  *)
  val getAllKeys: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?count:float -> unit -> IDBValidKey.t list IDBRequest.t [@@js.call "getAllKeys"]
  
  (**
    Retrieves the key of the first record matching the given key or key range in query.
    
    If successful, request's result will be the key, or undefined if there was no matching record.
  *)
  val getKey: 'tags this -> query:(IDBKeyRange.t, IDBValidKey.t) union2 -> IDBValidKey.t or_undefined IDBRequest.t [@@js.call "getKey"]
  
  (**
    Opens a cursor over the records matching query, ordered by direction. If query is null, all records in index are matched.
    
    If successful, request's result will be an IDBCursorWithValue, or null if there were no matching records.
  *)
  val openCursor: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?direction:IDBCursorDirection.t -> unit -> IDBCursorWithValue.t or_null IDBRequest.t [@@js.call "openCursor"]
  
  (**
    Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in index are matched.
    
    If successful, request's result will be an IDBCursor, or null if there were no matching records.
  *)
  val openKeyCursor: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?direction:IDBCursorDirection.t -> unit -> IDBCursor.t or_null IDBRequest.t [@@js.call "openKeyCursor"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end

(** This example shows a variety of different uses of object stores, from updating the data structure with IDBObjectStore.createIndex inside an onupgradeneeded function, to adding a new item to our object store with IDBObjectStore.add. For a full working example, see our To-do Notifications app (view example live.) *)
and[@js.scope "IDBObjectStore"] IDBObjectStore : sig
  type t = [`IDBObjectStore] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBObjectStore]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBObjectStore]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBObjectStore ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns true if the store has a key generator, and false otherwise. *)
  val get_autoIncrement: 'tags this -> bool [@@js.get "autoIncrement"]
  
  (** Returns a list of the names of indexes in the store. *)
  val get_indexNames: 'tags this -> DOMStringList.t [@@js.get "indexNames"]
  
  (** Returns the key path of the store, or null if none. *)
  val get_keyPath: 'tags this -> string list or_string [@@js.get "keyPath"]
  
  (** Returns the name of the store. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  
  (** Returns the name of the store. *)
  val set_name: 'tags this -> string -> unit [@@js.set "name"]
  
  (** Returns the associated transaction. *)
  val get_transaction: 'tags this -> IDBTransaction.t [@@js.get "transaction"]
  
  (**
    Adds or updates a record in store with the given value and key.
    
    If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.
    
    If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.
    
    If successful, request's result will be the record's key.
  *)
  val add: 'tags this -> value:any -> ?key:IDBValidKey.t -> unit -> IDBValidKey.t IDBRequest.t [@@js.call "add"]
  
  (**
    Deletes all records in store.
    
    If successful, request's result will be undefined.
  *)
  val clear: 'tags this -> never or_undefined IDBRequest.t [@@js.call "clear"]
  
  (**
    Retrieves the number of records matching the given key or key range in query.
    
    If successful, request's result will be the count.
  *)
  val count: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 -> unit -> float IDBRequest.t [@@js.call "count"]
  
  (**
    Creates a new index in store with the given name, keyPath and options and returns a new IDBIndex. If the keyPath and options define constraints that cannot be satisfied with the data already in store the upgrade transaction will abort with a "ConstraintError" DOMException.
    
    Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
  *)
  val createIndex: 'tags this -> name:string -> keyPath:string list or_string -> ?options:IDBIndexParameters.t -> unit -> IDBIndex.t [@@js.call "createIndex"]
  
  (**
    Deletes records in store with the given key or in the given key range in query.
    
    If successful, request's result will be undefined.
  *)
  val delete: 'tags this -> query:(IDBKeyRange.t, IDBValidKey.t) union2 -> never or_undefined IDBRequest.t [@@js.call "delete"]
  
  (**
    Deletes the index in store with the given name.
    
    Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
  *)
  val deleteIndex: 'tags this -> name:string -> unit [@@js.call "deleteIndex"]
  
  (**
    Retrieves the value of the first record matching the given key or key range in query.
    
    If successful, request's result will be the value, or undefined if there was no matching record.
  *)
  val get_: 'tags this -> query:(IDBKeyRange.t, IDBValidKey.t) union2 -> any IDBRequest.t [@@js.call "get"]
  
  (**
    Retrieves the values of the records matching the given key or key range in query (up to count if given).
    
    If successful, request's result will be an Array of the values.
  *)
  val getAll: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?count:float -> unit -> any list IDBRequest.t [@@js.call "getAll"]
  
  (**
    Retrieves the keys of records matching the given key or key range in query (up to count if given).
    
    If successful, request's result will be an Array of the keys.
  *)
  val getAllKeys: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?count:float -> unit -> IDBValidKey.t list IDBRequest.t [@@js.call "getAllKeys"]
  
  (**
    Retrieves the key of the first record matching the given key or key range in query.
    
    If successful, request's result will be the key, or undefined if there was no matching record.
  *)
  val getKey: 'tags this -> query:(IDBKeyRange.t, IDBValidKey.t) union2 -> IDBValidKey.t or_undefined IDBRequest.t [@@js.call "getKey"]
  val index: 'tags this -> name:string -> IDBIndex.t [@@js.call "index"]
  
  (**
    Opens a cursor over the records matching query, ordered by direction. If query is null, all records in store are matched.
    
    If successful, request's result will be an IDBCursorWithValue pointing at the first matching record, or null if there were no matching records.
  *)
  val openCursor: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?direction:IDBCursorDirection.t -> unit -> IDBCursorWithValue.t or_null IDBRequest.t [@@js.call "openCursor"]
  
  (**
    Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in store are matched.
    
    If successful, request's result will be an IDBCursor pointing at the first matching record, or null if there were no matching records.
  *)
  val openKeyCursor: 'tags this -> ?query:(IDBKeyRange.t, IDBValidKey.t) union2 or_null -> ?direction:IDBCursorDirection.t -> unit -> IDBCursor.t or_null IDBRequest.t [@@js.call "openKeyCursor"]
  
  (**
    Adds or updates a record in store with the given value and key.
    
    If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.
    
    If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.
    
    If successful, request's result will be the record's key.
  *)
  val put: 'tags this -> value:any -> ?key:IDBValidKey.t -> unit -> IDBValidKey.t IDBRequest.t [@@js.call "put"]
  
  (**
    Creates a new index in store with the given name, keyPath and options and returns a new IDBIndex. If the keyPath and options define constraints that cannot be satisfied with the data already in store the upgrade transaction will abort with a "ConstraintError" DOMException.
    
    Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
  *)
  val createIndex': 'tags this -> name:string -> keyPath:string Iterable.t_1 or_string -> ?options:IDBIndexParameters.t -> unit -> IDBIndex.t [@@js.call "createIndex"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end

(** The request object does not initially contain any information about the result of the operation, but once information becomes available, an event is fired on the request, and the information becomes available through the properties of the IDBRequest instance. *)
and[@js.scope "IDBRequest"] IDBRequest : sig
  type 'T t = [`EventTarget | `IDBRequest of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`EventTarget | `IDBRequest of 'T]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`EventTarget | `IDBRequest of 'T]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `IDBRequest of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** When a request is completed, returns the error (a DOMException), or null if the request succeeded. Throws a "InvalidStateError" DOMException if the request is still pending. *)
  val get_error: ('tags, 'T) this -> DOMException.t or_null [@@js.get "error"]
  val get_onerror: ('tags, 'T) this -> (this:'T t -> ev:Event.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: ('tags, 'T) this -> (this:'T t -> ev:Event.t -> any) or_null -> unit [@@js.set "onerror"]
  val get_onsuccess: ('tags, 'T) this -> (this:'T t -> ev:Event.t -> any) or_null [@@js.get "onsuccess"]
  val set_onsuccess: ('tags, 'T) this -> (this:'T t -> ev:Event.t -> any) or_null -> unit [@@js.set "onsuccess"]
  
  (** Returns "pending" until a request is complete, then returns "done". *)
  val get_readyState: ('tags, 'T) this -> IDBRequestReadyState.t [@@js.get "readyState"]
  
  (** When a request is completed, returns the result, or undefined if the request failed. Throws a "InvalidStateError" DOMException if the request is still pending. *)
  val get_result: ('tags, 'T) this -> 'T [@@js.get "result"]
  
  (** Returns the IDBObjectStore, IDBIndex, or IDBCursor the request was made against, or null if is was an open request. *)
  val get_source: ('tags, 'T) this -> (IDBCursor.t, IDBIndex.t, IDBObjectStore.t) union3 [@@js.get "source"]
  
  (** Returns the IDBTransaction the request was made within. If this as an open request, then it returns an upgrade transaction while it is running, or null otherwise. *)
  val get_transaction: ('tags, 'T) this -> IDBTransaction.t or_null [@@js.get "transaction"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: ('tags, 'T) this -> type_:'K -> listener:(this:'T t -> ev:(* FIXME: unknown type 'IDBRequestEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': ('tags, 'T) this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: ('tags, 'T) this -> type_:'K -> listener:(this:'T t -> ev:(* FIXME: unknown type 'IDBRequestEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': ('tags, 'T) this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: unit -> t_0 [@@js.create]
end
and[@js.scope "IDBTransaction"] IDBTransaction : sig
  type t = [`EventTarget | `IDBTransaction] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `IDBTransaction]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `IDBTransaction]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBTransaction ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the transaction's connection. *)
  val get_db: 'tags this -> IDBDatabase.t [@@js.get "db"]
  
  (** If the transaction was aborted, returns the error (a DOMException) providing the reason. *)
  val get_error: 'tags this -> DOMException.t or_null [@@js.get "error"]
  
  (** Returns the mode the transaction was created with ("readonly" or "readwrite"), or "versionchange" for an upgrade transaction. *)
  val get_mode: 'tags this -> IDBTransactionMode.t [@@js.get "mode"]
  
  (** Returns a list of the names of object stores in the transaction's scope. For an upgrade transaction this is all object stores in the database. *)
  val get_objectStoreNames: 'tags this -> DOMStringList.t [@@js.get "objectStoreNames"]
  val get_onabort: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onabort"]
  val set_onabort: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onabort"]
  val get_oncomplete: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "oncomplete"]
  val set_oncomplete: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "oncomplete"]
  val get_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onerror"]
  
  (** Aborts the transaction. All pending requests will fail with a "AbortError" DOMException and all changes made to the database will be reverted. *)
  val abort: 'tags this -> unit [@@js.call "abort"]
  val commit: 'tags this -> unit [@@js.call "commit"]
  
  (** Returns an IDBObjectStore in the transaction's scope. *)
  val objectStore: 'tags this -> name:string -> IDBObjectStore.t [@@js.call "objectStore"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'IDBTransactionEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'IDBTransactionEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface51 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBOpenDBRequest.t [@@js.get "prototype"]
  val set_prototype: t -> IDBOpenDBRequest.t -> unit [@@js.set "prototype"]
  val create: t -> IDBOpenDBRequest.t [@@js.apply_newable]
end

(** Also inherits methods from its parents IDBRequest and EventTarget. *)
and[@js.scope "IDBOpenDBRequest"] IDBOpenDBRequest : sig
  type t = [`EventTarget | `IDBOpenDBRequest | `IDBRequest of IDBDatabase.t] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `IDBOpenDBRequest | `IDBRequest of IDBDatabase.t]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `IDBOpenDBRequest | `IDBRequest of IDBDatabase.t]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBOpenDBRequest ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onblocked: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onblocked"]
  val set_onblocked: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onblocked"]
  val get_onupgradeneeded: 'tags this -> (this:t -> ev:IDBVersionChangeEvent.t -> any) or_null [@@js.get "onupgradeneeded"]
  val set_onupgradeneeded: 'tags this -> (this:t -> ev:IDBVersionChangeEvent.t -> any) or_null -> unit [@@js.set "onupgradeneeded"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'IDBOpenDBRequestEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'IDBOpenDBRequestEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module IDBDatabaseInfo : sig
  type t = [`IDBDatabaseInfo] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBDatabaseInfo]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBDatabaseInfo]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBDatabaseInfo ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_name: 'tags this -> string [@@js.get "name"]
  val set_name: 'tags this -> string -> unit [@@js.set "name"]
  val get_version: 'tags this -> float [@@js.get "version"]
  val set_version: 'tags this -> float -> unit [@@js.set "version"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module[@js.scope "indexedDB"] IndexedDBStatic : sig
  
  (**
    Compares two values as keys. Returns -1 if key1 precedes key2, 1 if key2 precedes key1, and 0 if the keys are equal.
    
    Throws a "DataError" DOMException if either input is not a valid key.
  *)
  val cmp: first:any -> second:any -> float [@@js.global "cmp"]
  val databases: unit -> IDBDatabaseInfo.t list Promise.t_1 [@@js.global "databases"]
  
  (** Attempts to delete the named database. If the database already exists and there are open connections that don't close in response to a versionchange event, the request will be blocked until all they close. If the request is successful request's result will be null. *)
  val deleteDatabase: string -> IDBOpenDBRequest.t [@@js.global "deleteDatabase"]
  
  (** Attempts to open a connection to the named database with the current version, or 1 if it does not already exist. If the request is successful request's result will be the connection. *)
  val open_: name:string -> ?version:float -> unit -> IDBOpenDBRequest.t [@@js.global "open"]
end
module FontFaceSetLoadStatus : sig
  type t = ([`L_s100_loaded[@js "loaded"] | `L_s102_loading[@js "loading"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module FontFaceLoadStatus : sig
  type t = ([`L_s100_loaded[@js "loaded"] | `L_s102_loading[@js "loading"] | `L_s197_unloaded[@js "unloaded"] | `L_s67_error[@js "error"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module FontFaceDescriptors : sig
  type t = [`FontFaceDescriptors] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FontFaceDescriptors]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FontFaceDescriptors]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FontFaceDescriptors ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_display: 'tags this -> string [@@js.get "display"]
  val set_display: 'tags this -> string -> unit [@@js.set "display"]
  val get_featureSettings: 'tags this -> string [@@js.get "featureSettings"]
  val set_featureSettings: 'tags this -> string -> unit [@@js.set "featureSettings"]
  val get_stretch: 'tags this -> string [@@js.get "stretch"]
  val set_stretch: 'tags this -> string -> unit [@@js.set "stretch"]
  val get_style: 'tags this -> string [@@js.get "style"]
  val set_style: 'tags this -> string -> unit [@@js.set "style"]
  val get_unicodeRange: 'tags this -> string [@@js.get "unicodeRange"]
  val set_unicodeRange: 'tags this -> string -> unit [@@js.set "unicodeRange"]
  val get_variant: 'tags this -> string [@@js.get "variant"]
  val set_variant: 'tags this -> string -> unit [@@js.set "variant"]
  val get_weight: 'tags this -> string [@@js.get "weight"]
  val set_weight: 'tags this -> string -> unit [@@js.set "weight"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module BinaryData : sig
  type t = (ArrayBuffer.t_0, ArrayBufferView.t_0) union2
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface38 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FontFace.t [@@js.get "prototype"]
  val set_prototype: t -> FontFace.t -> unit [@@js.set "prototype"]
  val create: t -> family:string -> source:BinaryData.t or_string -> ?descriptors:FontFaceDescriptors.t -> unit -> FontFace.t [@@js.apply_newable]
end
and[@js.scope "FontFace"] FontFace : sig
  type t = [`FontFace] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FontFace]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FontFace]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FontFace ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_ascentOverride: 'tags this -> string [@@js.get "ascentOverride"]
  val set_ascentOverride: 'tags this -> string -> unit [@@js.set "ascentOverride"]
  val get_descentOverride: 'tags this -> string [@@js.get "descentOverride"]
  val set_descentOverride: 'tags this -> string -> unit [@@js.set "descentOverride"]
  val get_display: 'tags this -> string [@@js.get "display"]
  val set_display: 'tags this -> string -> unit [@@js.set "display"]
  val get_family: 'tags this -> string [@@js.get "family"]
  val set_family: 'tags this -> string -> unit [@@js.set "family"]
  val get_featureSettings: 'tags this -> string [@@js.get "featureSettings"]
  val set_featureSettings: 'tags this -> string -> unit [@@js.set "featureSettings"]
  val get_lineGapOverride: 'tags this -> string [@@js.get "lineGapOverride"]
  val set_lineGapOverride: 'tags this -> string -> unit [@@js.set "lineGapOverride"]
  val get_loaded: 'tags this -> t Promise.t_1 [@@js.get "loaded"]
  val get_status: 'tags this -> FontFaceLoadStatus.t [@@js.get "status"]
  val get_stretch: 'tags this -> string [@@js.get "stretch"]
  val set_stretch: 'tags this -> string -> unit [@@js.set "stretch"]
  val get_style: 'tags this -> string [@@js.get "style"]
  val set_style: 'tags this -> string -> unit [@@js.set "style"]
  val get_unicodeRange: 'tags this -> string [@@js.get "unicodeRange"]
  val set_unicodeRange: 'tags this -> string -> unit [@@js.set "unicodeRange"]
  val get_variant: 'tags this -> string [@@js.get "variant"]
  val set_variant: 'tags this -> string -> unit [@@js.set "variant"]
  val get_variationSettings: 'tags this -> string [@@js.get "variationSettings"]
  val set_variationSettings: 'tags this -> string -> unit [@@js.set "variationSettings"]
  val get_weight: 'tags this -> string [@@js.get "weight"]
  val set_weight: 'tags this -> string -> unit [@@js.set "weight"]
  val load: 'tags this -> t Promise.t_1 [@@js.call "load"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: family:string -> source:BinaryData.t or_string -> ?descriptors:FontFaceDescriptors.t -> unit -> t [@@js.create]
end
module rec AnonymousInterface39 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FontFaceSet.t [@@js.get "prototype"]
  val set_prototype: t -> FontFaceSet.t -> unit [@@js.set "prototype"]
  val create: t -> initialFaces:FontFace.t list -> FontFaceSet.t [@@js.apply_newable]
end
and[@js.scope "FontFaceSet"] FontFaceSet : sig
  type t = [`EventTarget | `FontFaceSet | FontFace.t Set.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `FontFaceSet | FontFace.t Set.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `FontFaceSet | FontFace.t Set.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FontFaceSet ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onloading: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onloading"]
  val set_onloading: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onloading"]
  val get_onloadingdone: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onloadingdone"]
  val set_onloadingdone: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onloadingdone"]
  val get_onloadingerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onloadingerror"]
  val set_onloadingerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onloadingerror"]
  val get_ready: 'tags this -> t Promise.t_1 [@@js.get "ready"]
  val get_status: 'tags this -> FontFaceSetLoadStatus.t [@@js.get "status"]
  val check: 'tags this -> font:string -> ?text:string -> unit -> bool [@@js.call "check"]
  val load: 'tags this -> font:string -> ?text:string -> unit -> FontFace.t list Promise.t_1 [@@js.call "load"]
  val forEach: 'tags this -> callbackfn:(value:FontFace.t -> key:FontFace.t -> parent:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'FontFaceSetEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'FontFaceSetEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: FontFace.t list -> t [@@js.create]
end
module[@js.scope "fonts"] FontsStatic : sig
  val onloading: unit -> (this:FontFaceSet.t -> ev:Event.t -> any) or_null [@@js.get "onloading"]
  val onloadingdone: unit -> (this:FontFaceSet.t -> ev:Event.t -> any) or_null [@@js.get "onloadingdone"]
  val onloadingerror: unit -> (this:FontFaceSet.t -> ev:Event.t -> any) or_null [@@js.get "onloadingerror"]
  val ready: unit -> FontFaceSet.t Promise.t_1 [@@js.get "ready"]
  val status: unit -> FontFaceSetLoadStatus.t [@@js.get "status"]
  val check: font:string -> ?text:string -> unit -> bool [@@js.global "check"]
  val load: font:string -> ?text:string -> unit -> FontFace.t list Promise.t_1 [@@js.global "load"]
  val forEach: callbackfn:(value:FontFace.t -> key:FontFace.t -> parent:FontFaceSet.t -> unit) -> ?thisArg:any -> unit -> unit [@@js.global "forEach"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: type_:'K -> listener:(this:FontFaceSet.t -> ev:(* FIXME: unknown type 'FontFaceSetEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.global "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.global "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: type_:'K -> listener:(this:FontFaceSet.t -> ev:(* FIXME: unknown type 'FontFaceSetEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.global "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.global "removeEventListener"]
end
module Algorithm : sig
  type t = [`Algorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Algorithm ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_name: 'tags this -> string [@@js.get "name"]
  val set_name: 'tags this -> string -> unit [@@js.set "name"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module RsaPssParams : sig
  type t = [`Algorithm | `RsaPssParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `RsaPssParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `RsaPssParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RsaPssParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_saltLength: 'tags this -> float [@@js.get "saltLength"]
  val set_saltLength: 'tags this -> float -> unit [@@js.set "saltLength"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module RsaOaepParams : sig
  type t = [`Algorithm | `RsaOaepParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `RsaOaepParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `RsaOaepParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RsaOaepParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_label: 'tags this -> BufferSource.t [@@js.get "label"]
  val set_label: 'tags this -> BufferSource.t -> unit [@@js.set "label"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module BigInteger : sig
  type t = Uint8Array.t_0
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RsaKeyGenParams : sig
  type t = [`Algorithm | `RsaKeyGenParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `RsaKeyGenParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `RsaKeyGenParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RsaKeyGenParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_modulusLength: 'tags this -> float [@@js.get "modulusLength"]
  val set_modulusLength: 'tags this -> float -> unit [@@js.set "modulusLength"]
  val get_publicExponent: 'tags this -> BigInteger.t [@@js.get "publicExponent"]
  val set_publicExponent: 'tags this -> BigInteger.t -> unit [@@js.set "publicExponent"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AlgorithmIdentifier : sig
  type t = Algorithm.t or_string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module HashAlgorithmIdentifier : sig
  type t = AlgorithmIdentifier.t
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RsaHashedKeyGenParams : sig
  type t = [`Algorithm | `RsaHashedKeyGenParams | `RsaKeyGenParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `RsaHashedKeyGenParams | `RsaKeyGenParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `RsaHashedKeyGenParams | `RsaKeyGenParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RsaHashedKeyGenParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> HashAlgorithmIdentifier.t [@@js.get "hash"]
  val set_hash: 'tags this -> HashAlgorithmIdentifier.t -> unit [@@js.set "hash"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module RsaHashedImportParams : sig
  type t = [`Algorithm | `RsaHashedImportParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `RsaHashedImportParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `RsaHashedImportParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RsaHashedImportParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> HashAlgorithmIdentifier.t [@@js.get "hash"]
  val set_hash: 'tags this -> HashAlgorithmIdentifier.t -> unit [@@js.set "hash"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module Pbkdf2Params : sig
  type t = [`Algorithm | `Pbkdf2Params] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `Pbkdf2Params]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `Pbkdf2Params]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Pbkdf2Params ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> HashAlgorithmIdentifier.t [@@js.get "hash"]
  val set_hash: 'tags this -> HashAlgorithmIdentifier.t -> unit [@@js.set "hash"]
  val get_iterations: 'tags this -> float [@@js.get "iterations"]
  val set_iterations: 'tags this -> float -> unit [@@js.set "iterations"]
  val get_salt: 'tags this -> BufferSource.t [@@js.get "salt"]
  val set_salt: 'tags this -> BufferSource.t -> unit [@@js.set "salt"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module KeyFormat : sig
  type t = ([`L_s150_pkcs8[@js "pkcs8"] | `L_s160_raw[@js "raw"] | `L_s182_spki[@js "spki"] | `L_s97_jwk[@js "jwk"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RsaOtherPrimesInfo : sig
  type t = [`RsaOtherPrimesInfo] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`RsaOtherPrimesInfo]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`RsaOtherPrimesInfo]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RsaOtherPrimesInfo ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_d: 'tags this -> string [@@js.get "d"]
  val set_d: 'tags this -> string -> unit [@@js.set "d"]
  val get_r: 'tags this -> string [@@js.get "r"]
  val set_r: 'tags this -> string -> unit [@@js.set "r"]
  val get_t: 'tags this -> string [@@js.get "t"]
  val set_t: 'tags this -> string -> unit [@@js.set "t"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module JsonWebKey : sig
  type t = [`JsonWebKey] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`JsonWebKey]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`JsonWebKey]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `JsonWebKey ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_alg: 'tags this -> string [@@js.get "alg"]
  val set_alg: 'tags this -> string -> unit [@@js.set "alg"]
  val get_crv: 'tags this -> string [@@js.get "crv"]
  val set_crv: 'tags this -> string -> unit [@@js.set "crv"]
  val get_d: 'tags this -> string [@@js.get "d"]
  val set_d: 'tags this -> string -> unit [@@js.set "d"]
  val get_dp: 'tags this -> string [@@js.get "dp"]
  val set_dp: 'tags this -> string -> unit [@@js.set "dp"]
  val get_dq: 'tags this -> string [@@js.get "dq"]
  val set_dq: 'tags this -> string -> unit [@@js.set "dq"]
  val get_e: 'tags this -> string [@@js.get "e"]
  val set_e: 'tags this -> string -> unit [@@js.set "e"]
  val get_ext: 'tags this -> bool [@@js.get "ext"]
  val set_ext: 'tags this -> bool -> unit [@@js.set "ext"]
  val get_k: 'tags this -> string [@@js.get "k"]
  val set_k: 'tags this -> string -> unit [@@js.set "k"]
  val get_key_ops: 'tags this -> string list [@@js.get "key_ops"]
  val set_key_ops: 'tags this -> string list -> unit [@@js.set "key_ops"]
  val get_kty: 'tags this -> string [@@js.get "kty"]
  val set_kty: 'tags this -> string -> unit [@@js.set "kty"]
  val get_n: 'tags this -> string [@@js.get "n"]
  val set_n: 'tags this -> string -> unit [@@js.set "n"]
  val get_oth: 'tags this -> RsaOtherPrimesInfo.t list [@@js.get "oth"]
  val set_oth: 'tags this -> RsaOtherPrimesInfo.t list -> unit [@@js.set "oth"]
  val get_p: 'tags this -> string [@@js.get "p"]
  val set_p: 'tags this -> string -> unit [@@js.set "p"]
  val get_q: 'tags this -> string [@@js.get "q"]
  val set_q: 'tags this -> string -> unit [@@js.set "q"]
  val get_qi: 'tags this -> string [@@js.get "qi"]
  val set_qi: 'tags this -> string -> unit [@@js.set "qi"]
  val get_use: 'tags this -> string [@@js.get "use"]
  val set_use: 'tags this -> string -> unit [@@js.set "use"]
  val get_x: 'tags this -> string [@@js.get "x"]
  val set_x: 'tags this -> string -> unit [@@js.set "x"]
  val get_y: 'tags this -> string [@@js.get "y"]
  val set_y: 'tags this -> string -> unit [@@js.set "y"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module HmacKeyGenParams : sig
  type t = [`Algorithm | `HmacKeyGenParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `HmacKeyGenParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `HmacKeyGenParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `HmacKeyGenParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> HashAlgorithmIdentifier.t [@@js.get "hash"]
  val set_hash: 'tags this -> HashAlgorithmIdentifier.t -> unit [@@js.set "hash"]
  val get_length: 'tags this -> float [@@js.get "length"]
  val set_length: 'tags this -> float -> unit [@@js.set "length"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module HmacImportParams : sig
  type t = [`Algorithm | `HmacImportParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `HmacImportParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `HmacImportParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `HmacImportParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> HashAlgorithmIdentifier.t [@@js.get "hash"]
  val set_hash: 'tags this -> HashAlgorithmIdentifier.t -> unit [@@js.set "hash"]
  val get_length: 'tags this -> float [@@js.get "length"]
  val set_length: 'tags this -> float -> unit [@@js.set "length"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module HkdfParams : sig
  type t = [`Algorithm | `HkdfParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `HkdfParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `HkdfParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `HkdfParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> HashAlgorithmIdentifier.t [@@js.get "hash"]
  val set_hash: 'tags this -> HashAlgorithmIdentifier.t -> unit [@@js.set "hash"]
  val get_info: 'tags this -> BufferSource.t [@@js.get "info"]
  val set_info: 'tags this -> BufferSource.t -> unit [@@js.set "info"]
  val get_salt: 'tags this -> BufferSource.t [@@js.get "salt"]
  val set_salt: 'tags this -> BufferSource.t -> unit [@@js.set "salt"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EcdsaParams : sig
  type t = [`Algorithm | `EcdsaParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `EcdsaParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `EcdsaParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EcdsaParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> HashAlgorithmIdentifier.t [@@js.get "hash"]
  val set_hash: 'tags this -> HashAlgorithmIdentifier.t -> unit [@@js.set "hash"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module KeyUsage : sig
  type t = ([`L_s178_sign[@js "sign"] | `L_s199_unwrapKey[@js "unwrapKey"] | `L_s202_verify[@js "verify"] | `L_s210_wrapKey[@js "wrapKey"] | `L_s56_decrypt[@js "decrypt"] | `L_s59_deriveBits[@js "deriveBits"] | `L_s60_deriveKey[@js "deriveKey"] | `L_s65_encrypt[@js "encrypt"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module KeyType : sig
  type t = ([`L_s155_private[@js "private"] | `L_s158_public[@js "public"] | `L_s175_secret[@js "secret"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module KeyAlgorithm : sig
  type t = [`KeyAlgorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`KeyAlgorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`KeyAlgorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `KeyAlgorithm ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_name: 'tags this -> string [@@js.get "name"]
  val set_name: 'tags this -> string -> unit [@@js.set "name"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface15 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> CryptoKey.t [@@js.get "prototype"]
  val set_prototype: t -> CryptoKey.t -> unit [@@js.set "prototype"]
  val create: t -> CryptoKey.t [@@js.apply_newable]
end

(**
  The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
  Available only in secure contexts.
*)
and[@js.scope "CryptoKey"] CryptoKey : sig
  type t = [`CryptoKey] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CryptoKey]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CryptoKey]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CryptoKey ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_algorithm: 'tags this -> KeyAlgorithm.t [@@js.get "algorithm"]
  val get_extractable: 'tags this -> bool [@@js.get "extractable"]
  val get_type: 'tags this -> KeyType.t [@@js.get "type"]
  val get_usages: 'tags this -> KeyUsage.t list [@@js.get "usages"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module EcdhKeyDeriveParams : sig
  type t = [`Algorithm | `EcdhKeyDeriveParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `EcdhKeyDeriveParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `EcdhKeyDeriveParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EcdhKeyDeriveParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_public: 'tags this -> CryptoKey.t [@@js.get "public"]
  val set_public: 'tags this -> CryptoKey.t -> unit [@@js.set "public"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module NamedCurve : sig
  type t = string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module EcKeyImportParams : sig
  type t = [`Algorithm | `EcKeyImportParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `EcKeyImportParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `EcKeyImportParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EcKeyImportParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_namedCurve: 'tags this -> NamedCurve.t [@@js.get "namedCurve"]
  val set_namedCurve: 'tags this -> NamedCurve.t -> unit [@@js.set "namedCurve"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EcKeyGenParams : sig
  type t = [`Algorithm | `EcKeyGenParams] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Algorithm | `EcKeyGenParams]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Algorithm | `EcKeyGenParams]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EcKeyGenParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_namedCurve: 'tags this -> NamedCurve.t [@@js.get "namedCurve"]
  val set_namedCurve: 'tags this -> NamedCurve.t -> unit [@@js.set "namedCurve"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module CryptoKeyPair : sig
  type t = [`CryptoKeyPair] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CryptoKeyPair]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CryptoKeyPair]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CryptoKeyPair ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_privateKey: 'tags this -> CryptoKey.t [@@js.get "privateKey"]
  val set_privateKey: 'tags this -> CryptoKey.t -> unit [@@js.set "privateKey"]
  val get_publicKey: 'tags this -> CryptoKey.t [@@js.get "publicKey"]
  val set_publicKey: 'tags this -> CryptoKey.t -> unit [@@js.set "publicKey"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AesKeyGenParams : sig
  type t = [`AesKeyGenParams | `Algorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AesKeyGenParams | `Algorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AesKeyGenParams | `Algorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AesKeyGenParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_length: 'tags this -> float [@@js.get "length"]
  val set_length: 'tags this -> float -> unit [@@js.set "length"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AesKeyAlgorithm : sig
  type t = [`AesKeyAlgorithm | `KeyAlgorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AesKeyAlgorithm | `KeyAlgorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AesKeyAlgorithm | `KeyAlgorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AesKeyAlgorithm ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_length: 'tags this -> float [@@js.get "length"]
  val set_length: 'tags this -> float -> unit [@@js.set "length"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AesGcmParams : sig
  type t = [`AesGcmParams | `Algorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AesGcmParams | `Algorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AesGcmParams | `Algorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AesGcmParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_additionalData: 'tags this -> BufferSource.t [@@js.get "additionalData"]
  val set_additionalData: 'tags this -> BufferSource.t -> unit [@@js.set "additionalData"]
  val get_iv: 'tags this -> BufferSource.t [@@js.get "iv"]
  val set_iv: 'tags this -> BufferSource.t -> unit [@@js.set "iv"]
  val get_tagLength: 'tags this -> float [@@js.get "tagLength"]
  val set_tagLength: 'tags this -> float -> unit [@@js.set "tagLength"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AesDerivedKeyParams : sig
  type t = [`AesDerivedKeyParams | `Algorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AesDerivedKeyParams | `Algorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AesDerivedKeyParams | `Algorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AesDerivedKeyParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_length: 'tags this -> float [@@js.get "length"]
  val set_length: 'tags this -> float -> unit [@@js.set "length"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AesCtrParams : sig
  type t = [`AesCtrParams | `Algorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AesCtrParams | `Algorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AesCtrParams | `Algorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AesCtrParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_counter: 'tags this -> BufferSource.t [@@js.get "counter"]
  val set_counter: 'tags this -> BufferSource.t -> unit [@@js.set "counter"]
  val get_length: 'tags this -> float [@@js.get "length"]
  val set_length: 'tags this -> float -> unit [@@js.set "length"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AesCbcParams : sig
  type t = [`AesCbcParams | `Algorithm] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AesCbcParams | `Algorithm]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AesCbcParams | `Algorithm]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AesCbcParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_iv: 'tags this -> BufferSource.t [@@js.get "iv"]
  val set_iv: 'tags this -> BufferSource.t -> unit [@@js.set "iv"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface100 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> SubtleCrypto.t [@@js.get "prototype"]
  val set_prototype: t -> SubtleCrypto.t -> unit [@@js.set "prototype"]
  val create: t -> SubtleCrypto.t [@@js.apply_newable]
end

(**
  This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
  Available only in secure contexts.
*)
and[@js.scope "SubtleCrypto"] SubtleCrypto : sig
  type t = [`SubtleCrypto] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`SubtleCrypto]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`SubtleCrypto]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `SubtleCrypto ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val decrypt: 'tags this -> algorithm:(AesCbcParams.t, AesCtrParams.t, AesGcmParams.t, AlgorithmIdentifier.t, RsaOaepParams.t) union5 -> key:CryptoKey.t -> data:BufferSource.t -> any Promise.t_1 [@@js.call "decrypt"]
  val deriveBits: 'tags this -> algorithm:(AlgorithmIdentifier.t, EcdhKeyDeriveParams.t, HkdfParams.t, Pbkdf2Params.t) union4 -> baseKey:CryptoKey.t -> length:float -> ArrayBuffer.t_0 Promise.t_1 [@@js.call "deriveBits"]
  val deriveKey: 'tags this -> algorithm:(AlgorithmIdentifier.t, EcdhKeyDeriveParams.t, HkdfParams.t, Pbkdf2Params.t) union4 -> baseKey:CryptoKey.t -> derivedKeyType:(AesDerivedKeyParams.t, AlgorithmIdentifier.t, HkdfParams.t, HmacImportParams.t, Pbkdf2Params.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKey.t Promise.t_1 [@@js.call "deriveKey"]
  val digest: 'tags this -> algorithm:AlgorithmIdentifier.t -> data:BufferSource.t -> ArrayBuffer.t_0 Promise.t_1 [@@js.call "digest"]
  val encrypt: 'tags this -> algorithm:(AesCbcParams.t, AesCtrParams.t, AesGcmParams.t, AlgorithmIdentifier.t, RsaOaepParams.t) union5 -> key:CryptoKey.t -> data:BufferSource.t -> any Promise.t_1 [@@js.call "encrypt"]
  val exportKey: 'tags this -> format:([`L_s97_jwk[@js "jwk"]] [@js.enum]) -> key:CryptoKey.t -> JsonWebKey.t Promise.t_1 [@@js.call "exportKey"]
  val exportKey': 'tags this -> format:(KeyFormat.t, ([`L_s97_jwk[@js "jwk"]] [@js.enum])) Exclude.t_2 -> key:CryptoKey.t -> ArrayBuffer.t_0 Promise.t_1 [@@js.call "exportKey"]
  val generateKey: 'tags this -> algorithm:(EcKeyGenParams.t, RsaHashedKeyGenParams.t) union2 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKeyPair.t Promise.t_1 [@@js.call "generateKey"]
  val generateKey': 'tags this -> algorithm:(AesKeyGenParams.t, HmacKeyGenParams.t, Pbkdf2Params.t) union3 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKey.t Promise.t_1 [@@js.call "generateKey"]
  val generateKey'': 'tags this -> algorithm:AlgorithmIdentifier.t -> extractable:bool -> keyUsages:KeyUsage.t list -> (CryptoKey.t, CryptoKeyPair.t) union2 Promise.t_1 [@@js.call "generateKey"]
  val importKey: 'tags this -> format:([`L_s97_jwk[@js "jwk"]] [@js.enum]) -> keyData:JsonWebKey.t -> algorithm:(AesKeyAlgorithm.t, AlgorithmIdentifier.t, EcKeyImportParams.t, HmacImportParams.t, RsaHashedImportParams.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKey.t Promise.t_1 [@@js.call "importKey"]
  val importKey': 'tags this -> format:(KeyFormat.t, ([`L_s97_jwk[@js "jwk"]] [@js.enum])) Exclude.t_2 -> keyData:BufferSource.t -> algorithm:(AesKeyAlgorithm.t, AlgorithmIdentifier.t, EcKeyImportParams.t, HmacImportParams.t, RsaHashedImportParams.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKey.t Promise.t_1 [@@js.call "importKey"]
  val sign: 'tags this -> algorithm:(AlgorithmIdentifier.t, EcdsaParams.t, RsaPssParams.t) union3 -> key:CryptoKey.t -> data:BufferSource.t -> ArrayBuffer.t_0 Promise.t_1 [@@js.call "sign"]
  val unwrapKey: 'tags this -> format:KeyFormat.t -> wrappedKey:BufferSource.t -> unwrappingKey:CryptoKey.t -> unwrapAlgorithm:(AesCbcParams.t, AesCtrParams.t, AesGcmParams.t, AlgorithmIdentifier.t, RsaOaepParams.t) union5 -> unwrappedKeyAlgorithm:(AesKeyAlgorithm.t, AlgorithmIdentifier.t, EcKeyImportParams.t, HmacImportParams.t, RsaHashedImportParams.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKey.t Promise.t_1 [@@js.call "unwrapKey"]
  val verify: 'tags this -> algorithm:(AlgorithmIdentifier.t, EcdsaParams.t, RsaPssParams.t) union3 -> key:CryptoKey.t -> signature:BufferSource.t -> data:BufferSource.t -> bool Promise.t_1 [@@js.call "verify"]
  val wrapKey: 'tags this -> format:KeyFormat.t -> key:CryptoKey.t -> wrappingKey:CryptoKey.t -> wrapAlgorithm:(AesCbcParams.t, AesCtrParams.t, AesGcmParams.t, AlgorithmIdentifier.t, RsaOaepParams.t) union5 -> ArrayBuffer.t_0 Promise.t_1 [@@js.call "wrapKey"]
  val deriveKey': 'tags this -> algorithm:(AlgorithmIdentifier.t, EcdhKeyDeriveParams.t, HkdfParams.t, Pbkdf2Params.t) union4 -> baseKey:CryptoKey.t -> derivedKeyType:(AesDerivedKeyParams.t, AlgorithmIdentifier.t, HkdfParams.t, HmacImportParams.t, Pbkdf2Params.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t Iterable.t_1 -> CryptoKey.t Promise.t_1 [@@js.call "deriveKey"]
  val generateKey''': 'tags this -> algorithm:(EcKeyGenParams.t, RsaHashedKeyGenParams.t) union2 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKeyPair.t Promise.t_1 [@@js.call "generateKey"]
  val generateKey'''': 'tags this -> algorithm:(AesKeyGenParams.t, HmacKeyGenParams.t, Pbkdf2Params.t) union3 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKey.t Promise.t_1 [@@js.call "generateKey"]
  val generateKey''''': 'tags this -> algorithm:AlgorithmIdentifier.t -> extractable:bool -> keyUsages:KeyUsage.t Iterable.t_1 -> (CryptoKey.t, CryptoKeyPair.t) union2 Promise.t_1 [@@js.call "generateKey"]
  val importKey'': 'tags this -> format:([`L_s97_jwk[@js "jwk"]] [@js.enum]) -> keyData:JsonWebKey.t -> algorithm:(AesKeyAlgorithm.t, AlgorithmIdentifier.t, EcKeyImportParams.t, HmacImportParams.t, RsaHashedImportParams.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t list -> CryptoKey.t Promise.t_1 [@@js.call "importKey"]
  val importKey''': 'tags this -> format:(KeyFormat.t, ([`L_s97_jwk[@js "jwk"]] [@js.enum])) Exclude.t_2 -> keyData:BufferSource.t -> algorithm:(AesKeyAlgorithm.t, AlgorithmIdentifier.t, EcKeyImportParams.t, HmacImportParams.t, RsaHashedImportParams.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t Iterable.t_1 -> CryptoKey.t Promise.t_1 [@@js.call "importKey"]
  val unwrapKey': 'tags this -> format:KeyFormat.t -> wrappedKey:BufferSource.t -> unwrappingKey:CryptoKey.t -> unwrapAlgorithm:(AesCbcParams.t, AesCtrParams.t, AesGcmParams.t, AlgorithmIdentifier.t, RsaOaepParams.t) union5 -> unwrappedKeyAlgorithm:(AesKeyAlgorithm.t, AlgorithmIdentifier.t, EcKeyImportParams.t, HmacImportParams.t, RsaHashedImportParams.t) union5 -> extractable:bool -> keyUsages:KeyUsage.t Iterable.t_1 -> CryptoKey.t Promise.t_1 [@@js.call "unwrapKey"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module[@js.scope "crypto"] CryptoStatic : sig
  
  (** Available only in secure contexts. *)
  val subtle: unit -> SubtleCrypto.t [@@js.get "subtle"]
  val getRandomValues: 'T -> 'T [@@js.global "getRandomValues"]
end
module[@js.scope "console"] ConsoleStatic : sig
  val assert_: ?condition:bool -> data:(any list [@js.variadic]) -> unit -> unit [@@js.global "assert"]
  val clear: unit -> unit [@@js.global "clear"]
  val count: ?label:string -> unit -> unit [@@js.global "count"]
  val countReset: ?label:string -> unit -> unit [@@js.global "countReset"]
  val debug: (any list [@js.variadic]) -> unit [@@js.global "debug"]
  val dir: ?item:any -> ?options:any -> unit -> unit [@@js.global "dir"]
  val dirxml: (any list [@js.variadic]) -> unit [@@js.global "dirxml"]
  val error: (any list [@js.variadic]) -> unit [@@js.global "error"]
  val group: (any list [@js.variadic]) -> unit [@@js.global "group"]
  val groupCollapsed: (any list [@js.variadic]) -> unit [@@js.global "groupCollapsed"]
  val groupEnd: unit -> unit [@@js.global "groupEnd"]
  val info: (any list [@js.variadic]) -> unit [@@js.global "info"]
  val log: (any list [@js.variadic]) -> unit [@@js.global "log"]
  val table: ?tabularData:any -> ?properties:string list -> unit -> unit [@@js.global "table"]
  val time: ?label:string -> unit -> unit [@@js.global "time"]
  val timeEnd: ?label:string -> unit -> unit [@@js.global "timeEnd"]
  val timeLog: ?label:string -> data:(any list [@js.variadic]) -> unit -> unit [@@js.global "timeLog"]
  val timeStamp: ?label:string -> unit -> unit [@@js.global "timeStamp"]
  val trace: (any list [@js.variadic]) -> unit [@@js.global "trace"]
  val warn: (any list [@js.variadic]) -> unit [@@js.global "warn"]
end
module CacheQueryOptions : sig
  type t = [`CacheQueryOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CacheQueryOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CacheQueryOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CacheQueryOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_ignoreMethod: 'tags this -> bool [@@js.get "ignoreMethod"]
  val set_ignoreMethod: 'tags this -> bool -> unit [@@js.set "ignoreMethod"]
  val get_ignoreSearch: 'tags this -> bool [@@js.get "ignoreSearch"]
  val set_ignoreSearch: 'tags this -> bool -> unit [@@js.set "ignoreSearch"]
  val get_ignoreVary: 'tags this -> bool [@@js.get "ignoreVary"]
  val set_ignoreVary: 'tags this -> bool -> unit [@@js.set "ignoreVary"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MultiCacheQueryOptions : sig
  type t = [`CacheQueryOptions | `MultiCacheQueryOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CacheQueryOptions | `MultiCacheQueryOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CacheQueryOptions | `MultiCacheQueryOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MultiCacheQueryOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_cacheName: 'tags this -> string [@@js.get "cacheName"]
  val set_cacheName: 'tags this -> string -> unit [@@js.set "cacheName"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module RequestDestination : sig
  type t = ([`L_s0[@js ""] | `L_s109_manifest[@js "manifest"] | `L_s132_object[@js "object"] | `L_s145_paintworklet[@js "paintworklet"] | `L_s169_report[@js "report"] | `L_s174_script[@js "script"] | `L_s176_sharedworker[@js "sharedworker"] | `L_s187_style[@js "style"] | `L_s193_track[@js "track"] | `L_s204_video[@js "video"] | `L_s209_worker[@js "worker"] | `L_s212_xslt[@js "xslt"] | `L_s38_audio[@js "audio"] | `L_s39_audioworklet[@js "audioworklet"] | `L_s62_document[@js "document"] | `L_s64_embed[@js "embed"] | `L_s76_font[@js "font"] | `L_s78_frame[@js "frame"] | `L_s89_iframe[@js "iframe"] | `L_s90_image[@js "image"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RequestRedirect : sig
  type t = ([`L_s110_manual[@js "manual"] | `L_s67_error[@js "error"] | `L_s75_follow[@js "follow"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RequestMode : sig
  type t = ([`L_s119_navigate[@js "navigate"] | `L_s124_no_cors[@js "no-cors"] | `L_s172_same_origin[@js "same-origin"] | `L_s55_cors[@js "cors"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RequestCache : sig
  type t = ([`L_s123_no_cache[@js "no-cache"] | `L_s127_no_store[@js "no-store"] | `L_s136_only_if_cached[@js "only-if-cached"] | `L_s168_reload[@js "reload"] | `L_s57_default[@js "default"] | `L_s77_force_cache[@js "force-cache"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ReferrerPolicy : sig
  type t = ([`L_s0[@js ""] | `L_s125_no_referrer[@js "no-referrer"] | `L_s126_no_referrer_when_downgrade[@js "no-referrer-when-downgrade"] | `L_s140_origin[@js "origin"] | `L_s141_origin_when_cross_origin[@js "origin-when-cross-origin"] | `L_s172_same_origin[@js "same-origin"] | `L_s185_strict_origin[@js "strict-origin"] | `L_s186_strict_origin_when_cross_origin[@js "strict-origin-when-cross-origin"] | `L_s198_unsafe_url[@js "unsafe-url"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RequestCredentials : sig
  type t = ([`L_s134_omit[@js "omit"] | `L_s172_same_origin[@js "same-origin"] | `L_s92_include[@js "include"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface43 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Headers.t [@@js.get "prototype"]
  val set_prototype: t -> Headers.t -> unit [@@js.set "prototype"]
  val create: t -> ?init:HeadersInit.t -> unit -> Headers.t [@@js.apply_newable]
end

(** This Fetch API interface allows you to perform various actions on HTTP request and response headers. These actions include retrieving, setting, adding to, and removing. A Headers object has an associated header list, which is initially empty and consists of zero or more name and value pairs.  You can add to this using methods like append() (see Examples.) In all methods of this interface, header names are matched by case-insensitive byte sequence. *)
and[@js.scope "Headers"] Headers : sig
  type t = [`Headers | (string * string) IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Headers | (string * string) IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Headers | (string * string) IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Headers ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val append: 'tags this -> name:string -> value:string -> unit [@@js.call "append"]
  val delete: 'tags this -> name:string -> unit [@@js.call "delete"]
  val get_: 'tags this -> name:string -> string or_null [@@js.call "get"]
  val has: 'tags this -> name:string -> bool [@@js.call "has"]
  val set_: 'tags this -> name:string -> value:string -> unit [@@js.call "set"]
  val forEach: 'tags this -> callbackfn:(value:string -> key:string -> parent:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (** Returns an iterator allowing to go through all key/value pairs contained in this object. *)
  val entries: 'tags this -> (string * string) IterableIterator.t_1 [@@js.call "entries"]
  
  (** Returns an iterator allowing to go through all keys of the key/value pairs contained in this object. *)
  val keys: 'tags this -> string IterableIterator.t_1 [@@js.call "keys"]
  
  (** Returns an iterator allowing to go through all values of the key/value pairs contained in this object. *)
  val values: 'tags this -> string IterableIterator.t_1 [@@js.call "values"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?init:HeadersInit.t -> unit -> t [@@js.create]
end
and HeadersInit : sig
  type t = ((Headers.t, (string, string) Record.t_2) union2, string list) or_array
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module EndingType : sig
  type t = ([`L_s118_native[@js "native"] | `L_s194_transparent[@js "transparent"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module BlobPropertyBag : sig
  type t = [`BlobPropertyBag] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BlobPropertyBag]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BlobPropertyBag]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `BlobPropertyBag ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_endings: 'tags this -> EndingType.t [@@js.get "endings"]
  val set_endings: 'tags this -> EndingType.t -> unit [@@js.set "endings"]
  val get_type: 'tags this -> string [@@js.get "type"]
  val set_type: 'tags this -> string -> unit [@@js.set "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module FilePropertyBag : sig
  type t = [`BlobPropertyBag | `FilePropertyBag] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BlobPropertyBag | `FilePropertyBag]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BlobPropertyBag | `FilePropertyBag]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FilePropertyBag ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_lastModified: 'tags this -> float [@@js.get "lastModified"]
  val set_lastModified: 'tags this -> float -> unit [@@js.set "lastModified"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module StreamPipeOptions : sig
  type t = [`StreamPipeOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`StreamPipeOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`StreamPipeOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `StreamPipeOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_preventAbort: 'tags this -> bool [@@js.get "preventAbort"]
  val set_preventAbort: 'tags this -> bool -> unit [@@js.set "preventAbort"]
  val get_preventCancel: 'tags this -> bool [@@js.get "preventCancel"]
  val set_preventCancel: 'tags this -> bool -> unit [@@js.set "preventCancel"]
  
  (**
    Pipes this readable stream to a given writable stream destination. The way in which the piping process behaves under various error conditions can be customized with a number of passed options. It returns a promise that fulfills when the piping process completes successfully, or rejects if any errors were encountered.
    
    Piping a stream will lock it for the duration of the pipe, preventing any other consumer from acquiring a reader.
    
    Errors and closures of the source and destination streams propagate as follows:
    
    An error in this source readable stream will abort destination, unless preventAbort is truthy. The returned promise will be rejected with the source's error, or with any error that occurs during aborting the destination.
    
    An error in destination will cancel this source readable stream, unless preventCancel is truthy. The returned promise will be rejected with the destination's error, or with any error that occurs during canceling the source.
    
    When this source readable stream closes, destination will be closed, unless preventClose is truthy. The returned promise will be fulfilled once this process completes, unless an error is encountered while closing the destination, in which case it will be rejected with that error.
    
    If destination starts out closed or closing, this source readable stream will be canceled, unless preventCancel is true. The returned promise will be rejected with an error indicating piping to a closed stream failed, or with any error that occurs during canceling the source.
    
    The signal option can be set to an AbortSignal to allow aborting an ongoing pipe operation via the corresponding AbortController. In this case, this source readable stream will be canceled, and destination aborted, unless the respective options preventCancel or preventAbort are set.
  *)
  val get_preventClose: 'tags this -> bool [@@js.get "preventClose"]
  
  (**
    Pipes this readable stream to a given writable stream destination. The way in which the piping process behaves under various error conditions can be customized with a number of passed options. It returns a promise that fulfills when the piping process completes successfully, or rejects if any errors were encountered.
    
    Piping a stream will lock it for the duration of the pipe, preventing any other consumer from acquiring a reader.
    
    Errors and closures of the source and destination streams propagate as follows:
    
    An error in this source readable stream will abort destination, unless preventAbort is truthy. The returned promise will be rejected with the source's error, or with any error that occurs during aborting the destination.
    
    An error in destination will cancel this source readable stream, unless preventCancel is truthy. The returned promise will be rejected with the destination's error, or with any error that occurs during canceling the source.
    
    When this source readable stream closes, destination will be closed, unless preventClose is truthy. The returned promise will be fulfilled once this process completes, unless an error is encountered while closing the destination, in which case it will be rejected with that error.
    
    If destination starts out closed or closing, this source readable stream will be canceled, unless preventCancel is true. The returned promise will be rejected with an error indicating piping to a closed stream failed, or with any error that occurs during canceling the source.
    
    The signal option can be set to an AbortSignal to allow aborting an ongoing pipe operation via the corresponding AbortController. In this case, this source readable stream will be canceled, and destination aborted, unless the respective options preventCancel or preventAbort are set.
  *)
  val set_preventClose: 'tags this -> bool -> unit [@@js.set "preventClose"]
  val get_signal: 'tags this -> AbortSignal.t [@@js.get "signal"]
  val set_signal: 'tags this -> AbortSignal.t -> unit [@@js.set "signal"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface135 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WritableStreamDefaultController.t [@@js.get "prototype"]
  val set_prototype: t -> WritableStreamDefaultController.t -> unit [@@js.set "prototype"]
  val create: t -> WritableStreamDefaultController.t [@@js.apply_newable]
end

(** This Streams API interface represents a controller allowing control of a WritableStream's state. When constructing a WritableStream, the underlying sink is given a corresponding WritableStreamDefaultController instance to manipulate. *)
and[@js.scope "WritableStreamDefaultController"] WritableStreamDefaultController : sig
  type t = [`WritableStreamDefaultController] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WritableStreamDefaultController]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WritableStreamDefaultController]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WritableStreamDefaultController ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val error: 'tags this -> ?e:any -> unit -> unit [@@js.call "error"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module UnderlyingSinkWriteCallback : sig
  type 'W t = [`UnderlyingSinkWriteCallback of 'W] intf [@@js.custom { of_js=(fun _W -> Obj.magic); to_js=(fun _W -> Obj.magic) }]
  type 'W t_1 = 'W t
  [@@@js.stop]
  type 'W tags = [`UnderlyingSinkWriteCallback of 'W]
  type 'W tags_1 = 'W tags
  [@@@js.start]
  [@@@js.implem 
    type 'W tags = [`UnderlyingSinkWriteCallback of 'W]
    type 'W tags_1 = 'W tags
  ]
  type ('tags, 'W) this = 'tags intf constraint 'tags = [> `UnderlyingSinkWriteCallback of 'W ]
  val t_to_js: ('W -> Ojs.t) -> 'W t -> Ojs.t
  val t_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t
  val t_1_to_js: ('W -> Ojs.t) -> 'W t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t_1
  val apply: ('tags, 'W) this -> chunk:'W -> controller:WritableStreamDefaultController.t -> (unit, unit PromiseLike.t_1) union2 [@@js.apply]
  val cast_from: (('tags, 'W) this -> 'W t) [@@js.custom let cast_from = Obj.magic]
end
module UnderlyingSinkStartCallback : sig
  type t = [`UnderlyingSinkStartCallback] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`UnderlyingSinkStartCallback]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`UnderlyingSinkStartCallback]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `UnderlyingSinkStartCallback ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> controller:WritableStreamDefaultController.t -> any [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module UnderlyingSinkCloseCallback : sig
  type t = [`UnderlyingSinkCloseCallback] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`UnderlyingSinkCloseCallback]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`UnderlyingSinkCloseCallback]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `UnderlyingSinkCloseCallback ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> (unit, unit PromiseLike.t_1) union2 [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module UnderlyingSinkAbortCallback : sig
  type t = [`UnderlyingSinkAbortCallback] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`UnderlyingSinkAbortCallback]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`UnderlyingSinkAbortCallback]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `UnderlyingSinkAbortCallback ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> ?reason:any -> unit -> (unit, unit PromiseLike.t_1) union2 [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module UnderlyingSink : sig
  type 'W t = [`UnderlyingSink of 'W] intf [@@js.custom { of_js=(fun _W -> Obj.magic); to_js=(fun _W -> Obj.magic) }]
  type 'W t_1 = 'W t
  type t_0 = any t
  [@@@js.stop]
  type 'W tags = [`UnderlyingSink of 'W]
  type 'W tags_1 = 'W tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'W tags = [`UnderlyingSink of 'W]
    type 'W tags_1 = 'W tags
    type tags_0 = any tags
  ]
  type ('tags, 'W) this = 'tags intf constraint 'tags = [> `UnderlyingSink of 'W ]
  val t_to_js: ('W -> Ojs.t) -> 'W t -> Ojs.t
  val t_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t
  val t_1_to_js: ('W -> Ojs.t) -> 'W t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_abort: ('tags, 'W) this -> UnderlyingSinkAbortCallback.t [@@js.get "abort"]
  val set_abort: ('tags, 'W) this -> UnderlyingSinkAbortCallback.t -> unit [@@js.set "abort"]
  val get_close: ('tags, 'W) this -> UnderlyingSinkCloseCallback.t [@@js.get "close"]
  val set_close: ('tags, 'W) this -> UnderlyingSinkCloseCallback.t -> unit [@@js.set "close"]
  val get_start: ('tags, 'W) this -> UnderlyingSinkStartCallback.t [@@js.get "start"]
  val set_start: ('tags, 'W) this -> UnderlyingSinkStartCallback.t -> unit [@@js.set "start"]
  val get_type: ('tags, 'W) this -> never or_undefined [@@js.get "type"]
  val set_type: ('tags, 'W) this -> never or_undefined -> unit [@@js.set "type"]
  val get_write: ('tags, 'W) this -> 'W UnderlyingSinkWriteCallback.t [@@js.get "write"]
  val set_write: ('tags, 'W) this -> 'W UnderlyingSinkWriteCallback.t -> unit [@@js.set "write"]
  val cast_from: (('tags, 'W) this -> 'W t) [@@js.custom let cast_from = Obj.magic]
end
module QueuingStrategySize : sig
  type 'T t = [`QueuingStrategySize of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`QueuingStrategySize of 'T]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`QueuingStrategySize of 'T]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `QueuingStrategySize of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: ('tags, 'T) this -> chunk:'T -> float [@@js.apply]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
end
module QueuingStrategy : sig
  type 'T t = [`QueuingStrategy of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`QueuingStrategy of 'T]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`QueuingStrategy of 'T]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `QueuingStrategy of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_highWaterMark: ('tags, 'T) this -> float [@@js.get "highWaterMark"]
  val set_highWaterMark: ('tags, 'T) this -> float -> unit [@@js.set "highWaterMark"]
  val get_size: ('tags, 'T) this -> 'T QueuingStrategySize.t [@@js.get "size"]
  val set_size: ('tags, 'T) this -> 'T QueuingStrategySize.t -> unit [@@js.set "size"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface134 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WritableStream.t_0 [@@js.get "prototype"]
  val set_prototype: t -> WritableStream.t_0 -> unit [@@js.set "prototype"]
  val create: t -> ?underlyingSink:'W UnderlyingSink.t -> ?strategy:'W QueuingStrategy.t -> unit -> 'W WritableStream.t [@@js.apply_newable]
end
and AnonymousInterface136 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WritableStreamDefaultWriter.t_0 [@@js.get "prototype"]
  val set_prototype: t -> WritableStreamDefaultWriter.t_0 -> unit [@@js.set "prototype"]
  val create: t -> stream:'W WritableStream.t -> 'W WritableStreamDefaultWriter.t [@@js.apply_newable]
end

(** This Streams API interface provides a standard abstraction for writing streaming data to a destination, known as a sink. This object comes with built-in backpressure and queuing. *)
and[@js.scope "WritableStream"] WritableStream : sig
  type 'W t = [`WritableStream of 'W] intf [@@js.custom { of_js=(fun _W -> Obj.magic); to_js=(fun _W -> Obj.magic) }]
  type 'W t_1 = 'W t
  type t_0 = any t
  [@@@js.stop]
  type 'W tags = [`WritableStream of 'W]
  type 'W tags_1 = 'W tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'W tags = [`WritableStream of 'W]
    type 'W tags_1 = 'W tags
    type tags_0 = any tags
  ]
  type ('tags, 'W) this = 'tags intf constraint 'tags = [> `WritableStream of 'W ]
  val t_to_js: ('W -> Ojs.t) -> 'W t -> Ojs.t
  val t_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t
  val t_1_to_js: ('W -> Ojs.t) -> 'W t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_locked: ('tags, 'W) this -> bool [@@js.get "locked"]
  val abort: ('tags, 'W) this -> ?reason:any -> unit -> unit Promise.t_1 [@@js.call "abort"]
  val close: ('tags, 'W) this -> unit Promise.t_1 [@@js.call "close"]
  val getWriter: ('tags, 'W) this -> 'W WritableStreamDefaultWriter.t [@@js.call "getWriter"]
  val cast_from: (('tags, 'W) this -> 'W t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: ?underlyingSink:'W UnderlyingSink.t -> ?strategy:'W QueuingStrategy.t -> unit -> 'W t [@@js.create]
end

(** This Streams API interface is the object returned by WritableStream.getWriter() and once created locks the < writer to the WritableStream ensuring that no other streams can write to the underlying sink. *)
and[@js.scope "WritableStreamDefaultWriter"] WritableStreamDefaultWriter : sig
  type 'W t = [`WritableStreamDefaultWriter of 'W] intf [@@js.custom { of_js=(fun _W -> Obj.magic); to_js=(fun _W -> Obj.magic) }]
  type 'W t_1 = 'W t
  type t_0 = any t
  [@@@js.stop]
  type 'W tags = [`WritableStreamDefaultWriter of 'W]
  type 'W tags_1 = 'W tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'W tags = [`WritableStreamDefaultWriter of 'W]
    type 'W tags_1 = 'W tags
    type tags_0 = any tags
  ]
  type ('tags, 'W) this = 'tags intf constraint 'tags = [> `WritableStreamDefaultWriter of 'W ]
  val t_to_js: ('W -> Ojs.t) -> 'W t -> Ojs.t
  val t_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t
  val t_1_to_js: ('W -> Ojs.t) -> 'W t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'W) -> Ojs.t -> 'W t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_closed: ('tags, 'W) this -> never or_undefined Promise.t_1 [@@js.get "closed"]
  val get_desiredSize: ('tags, 'W) this -> float or_null [@@js.get "desiredSize"]
  val get_ready: ('tags, 'W) this -> never or_undefined Promise.t_1 [@@js.get "ready"]
  val abort: ('tags, 'W) this -> ?reason:any -> unit -> unit Promise.t_1 [@@js.call "abort"]
  val close: ('tags, 'W) this -> unit Promise.t_1 [@@js.call "close"]
  val releaseLock: ('tags, 'W) this -> unit [@@js.call "releaseLock"]
  val write: ('tags, 'W) this -> ?chunk:'W -> unit -> unit Promise.t_1 [@@js.call "write"]
  val cast_from: (('tags, 'W) this -> 'W t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: 'W WritableStream.t -> 'W t [@@js.create]
end
module ReadableStreamGenericReader : sig
  type t = [`ReadableStreamGenericReader] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ReadableStreamGenericReader]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ReadableStreamGenericReader]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ReadableStreamGenericReader ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_closed: 'tags this -> never or_undefined Promise.t_1 [@@js.get "closed"]
  val cancel: 'tags this -> ?reason:any -> unit -> unit Promise.t_1 [@@js.call "cancel"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ReadableStreamDefaultReadValueResult : sig
  type 'T t = [`ReadableStreamDefaultReadValueResult of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  [@@@js.stop]
  type 'T tags = [`ReadableStreamDefaultReadValueResult of 'T]
  type 'T tags_1 = 'T tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ReadableStreamDefaultReadValueResult of 'T]
    type 'T tags_1 = 'T tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ReadableStreamDefaultReadValueResult of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val get_done: ('tags, 'T) this -> ([`L_b_false[@js false]] [@js.enum]) [@@js.get "done"]
  val set_done: ('tags, 'T) this -> ([`L_b_false[@js false]] [@js.enum]) -> unit [@@js.set "done"]
  val get_value: ('tags, 'T) this -> 'T [@@js.get "value"]
  val set_value: ('tags, 'T) this -> 'T -> unit [@@js.set "value"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
end
module ReadableStreamDefaultReadDoneResult : sig
  type t = [`ReadableStreamDefaultReadDoneResult] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ReadableStreamDefaultReadDoneResult]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ReadableStreamDefaultReadDoneResult]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ReadableStreamDefaultReadDoneResult ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_done: 'tags this -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "done"]
  val set_done: 'tags this -> ([`L_b_true[@js true]] [@js.enum]) -> unit [@@js.set "done"]
  val get_value: 'tags this -> never or_undefined [@@js.get "value"]
  val set_value: 'tags this -> never or_undefined -> unit [@@js.set "value"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ReadableStreamDefaultReadResult : sig
  type 'T t = ([`U_b_false of 'T ReadableStreamDefaultReadValueResult.t [@js false] | `U_b_true of ReadableStreamDefaultReadDoneResult.t [@js true]] [@js.union on_field "done"])
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
module rec AnonymousInterface88 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ReadableStreamDefaultController.t_0 [@@js.get "prototype"]
  val set_prototype: t -> ReadableStreamDefaultController.t_0 -> unit [@@js.set "prototype"]
  val create: t -> ReadableStreamDefaultController.t_0 [@@js.apply_newable]
end
and[@js.scope "ReadableStreamDefaultController"] ReadableStreamDefaultController : sig
  type 'R t = [`ReadableStreamDefaultController of 'R] intf [@@js.custom { of_js=(fun _R -> Obj.magic); to_js=(fun _R -> Obj.magic) }]
  type 'R t_1 = 'R t
  type t_0 = any t
  [@@@js.stop]
  type 'R tags = [`ReadableStreamDefaultController of 'R]
  type 'R tags_1 = 'R tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'R tags = [`ReadableStreamDefaultController of 'R]
    type 'R tags_1 = 'R tags
    type tags_0 = any tags
  ]
  type ('tags, 'R) this = 'tags intf constraint 'tags = [> `ReadableStreamDefaultController of 'R ]
  val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
  val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
  val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_desiredSize: ('tags, 'R) this -> float or_null [@@js.get "desiredSize"]
  val close: ('tags, 'R) this -> unit [@@js.call "close"]
  val enqueue: ('tags, 'R) this -> ?chunk:'R -> unit -> unit [@@js.call "enqueue"]
  val error: ('tags, 'R) this -> ?e:any -> unit -> unit [@@js.call "error"]
  val cast_from: (('tags, 'R) this -> 'R t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: unit -> t_0 [@@js.create]
end
module ReadableStreamController : sig
  type 'T t = 'T ReadableStreamDefaultController.t
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
module UnderlyingSourceStartCallback : sig
  type 'R t = [`UnderlyingSourceStartCallback of 'R] intf [@@js.custom { of_js=(fun _R -> Obj.magic); to_js=(fun _R -> Obj.magic) }]
  type 'R t_1 = 'R t
  [@@@js.stop]
  type 'R tags = [`UnderlyingSourceStartCallback of 'R]
  type 'R tags_1 = 'R tags
  [@@@js.start]
  [@@@js.implem 
    type 'R tags = [`UnderlyingSourceStartCallback of 'R]
    type 'R tags_1 = 'R tags
  ]
  type ('tags, 'R) this = 'tags intf constraint 'tags = [> `UnderlyingSourceStartCallback of 'R ]
  val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
  val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
  val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
  val apply: ('tags, 'R) this -> controller:'R ReadableStreamController.t -> any [@@js.apply]
  val cast_from: (('tags, 'R) this -> 'R t) [@@js.custom let cast_from = Obj.magic]
end
module UnderlyingSourcePullCallback : sig
  type 'R t = [`UnderlyingSourcePullCallback of 'R] intf [@@js.custom { of_js=(fun _R -> Obj.magic); to_js=(fun _R -> Obj.magic) }]
  type 'R t_1 = 'R t
  [@@@js.stop]
  type 'R tags = [`UnderlyingSourcePullCallback of 'R]
  type 'R tags_1 = 'R tags
  [@@@js.start]
  [@@@js.implem 
    type 'R tags = [`UnderlyingSourcePullCallback of 'R]
    type 'R tags_1 = 'R tags
  ]
  type ('tags, 'R) this = 'tags intf constraint 'tags = [> `UnderlyingSourcePullCallback of 'R ]
  val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
  val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
  val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
  val apply: ('tags, 'R) this -> controller:'R ReadableStreamController.t -> (unit, unit PromiseLike.t_1) union2 [@@js.apply]
  val cast_from: (('tags, 'R) this -> 'R t) [@@js.custom let cast_from = Obj.magic]
end
module UnderlyingSourceCancelCallback : sig
  type t = [`UnderlyingSourceCancelCallback] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`UnderlyingSourceCancelCallback]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`UnderlyingSourceCancelCallback]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `UnderlyingSourceCancelCallback ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> ?reason:any -> unit -> (unit, unit PromiseLike.t_1) union2 [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module UnderlyingSource : sig
  type 'R t = [`UnderlyingSource of 'R] intf [@@js.custom { of_js=(fun _R -> Obj.magic); to_js=(fun _R -> Obj.magic) }]
  type 'R t_1 = 'R t
  type t_0 = any t
  [@@@js.stop]
  type 'R tags = [`UnderlyingSource of 'R]
  type 'R tags_1 = 'R tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'R tags = [`UnderlyingSource of 'R]
    type 'R tags_1 = 'R tags
    type tags_0 = any tags
  ]
  type ('tags, 'R) this = 'tags intf constraint 'tags = [> `UnderlyingSource of 'R ]
  val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
  val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
  val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_cancel: ('tags, 'R) this -> UnderlyingSourceCancelCallback.t [@@js.get "cancel"]
  val set_cancel: ('tags, 'R) this -> UnderlyingSourceCancelCallback.t -> unit [@@js.set "cancel"]
  val get_pull: ('tags, 'R) this -> 'R UnderlyingSourcePullCallback.t [@@js.get "pull"]
  val set_pull: ('tags, 'R) this -> 'R UnderlyingSourcePullCallback.t -> unit [@@js.set "pull"]
  val get_start: ('tags, 'R) this -> 'R UnderlyingSourceStartCallback.t [@@js.get "start"]
  val set_start: ('tags, 'R) this -> 'R UnderlyingSourceStartCallback.t -> unit [@@js.set "start"]
  val get_type: ('tags, 'R) this -> never or_undefined [@@js.get "type"]
  val set_type: ('tags, 'R) this -> never or_undefined -> unit [@@js.set "type"]
  val cast_from: (('tags, 'R) this -> 'R t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface87 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ReadableStream.t_0 [@@js.get "prototype"]
  val set_prototype: t -> ReadableStream.t_0 -> unit [@@js.set "prototype"]
  val create: t -> ?underlyingSource:'R UnderlyingSource.t -> ?strategy:'R QueuingStrategy.t -> unit -> 'R ReadableStream.t [@@js.apply_newable]
end
and AnonymousInterface89 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ReadableStreamDefaultReader.t_0 [@@js.get "prototype"]
  val set_prototype: t -> ReadableStreamDefaultReader.t_0 -> unit [@@js.set "prototype"]
  val create: t -> stream:'R ReadableStream.t -> 'R ReadableStreamDefaultReader.t [@@js.apply_newable]
end

(** This Streams API interface represents a readable stream of byte data. The Fetch API offers a concrete instance of a ReadableStream through the body property of a Response object. *)
and[@js.scope "ReadableStream"] ReadableStream : sig
  type 'R t = [`ReadableStream of 'R] intf [@@js.custom { of_js=(fun _R -> Obj.magic); to_js=(fun _R -> Obj.magic) }]
  type 'R t_1 = 'R t
  type t_0 = any t
  [@@@js.stop]
  type 'R tags = [`ReadableStream of 'R]
  type 'R tags_1 = 'R tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'R tags = [`ReadableStream of 'R]
    type 'R tags_1 = 'R tags
    type tags_0 = any tags
  ]
  type ('tags, 'R) this = 'tags intf constraint 'tags = [> `ReadableStream of 'R ]
  val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
  val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
  val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_locked: ('tags, 'R) this -> bool [@@js.get "locked"]
  val cancel: ('tags, 'R) this -> ?reason:any -> unit -> unit Promise.t_1 [@@js.call "cancel"]
  val getReader: ('tags, 'R) this -> 'R ReadableStreamDefaultReader.t [@@js.call "getReader"]
  val pipeThrough: ('tags, 'R) this -> transform:('T, 'R) ReadableWritablePair.t -> ?options:StreamPipeOptions.t -> unit -> 'T t [@@js.call "pipeThrough"]
  val pipeTo: ('tags, 'R) this -> destination:'R WritableStream.t -> ?options:StreamPipeOptions.t -> unit -> unit Promise.t_1 [@@js.call "pipeTo"]
  val tee: ('tags, 'R) this -> ('R t * 'R t) [@@js.call "tee"]
  val cast_from: (('tags, 'R) this -> 'R t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: ?underlyingSource:'R UnderlyingSource.t -> ?strategy:'R QueuingStrategy.t -> unit -> 'R t [@@js.create]
end
and[@js.scope "ReadableStreamDefaultReader"] ReadableStreamDefaultReader : sig
  type 'R t = [`ReadableStreamDefaultReader of 'R | `ReadableStreamGenericReader] intf [@@js.custom { of_js=(fun _R -> Obj.magic); to_js=(fun _R -> Obj.magic) }]
  type 'R t_1 = 'R t
  type t_0 = any t
  [@@@js.stop]
  type 'R tags = [`ReadableStreamDefaultReader of 'R | `ReadableStreamGenericReader]
  type 'R tags_1 = 'R tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'R tags = [`ReadableStreamDefaultReader of 'R | `ReadableStreamGenericReader]
    type 'R tags_1 = 'R tags
    type tags_0 = any tags
  ]
  type ('tags, 'R) this = 'tags intf constraint 'tags = [> `ReadableStreamDefaultReader of 'R ]
  val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
  val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
  val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val read: ('tags, 'R) this -> 'R ReadableStreamDefaultReadResult.t Promise.t_1 [@@js.call "read"]
  val releaseLock: ('tags, 'R) this -> unit [@@js.call "releaseLock"]
  val cast_from: (('tags, 'R) this -> 'R t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: 'R ReadableStream.t -> 'R t [@@js.create]
end
and ReadableWritablePair : sig
  type ('R, 'W) t = [`ReadableWritablePair of ('R * 'W)] intf [@@js.custom { of_js=(fun _R _W -> Obj.magic); to_js=(fun _R _W -> Obj.magic) }]
  type ('R, 'W) t_2 = ('R, 'W) t
  type 'R t_1 = ('R, any) t
  type t_0 = (any, any) t
  [@@@js.stop]
  type ('R, 'W) tags = [`ReadableWritablePair of ('R * 'W)]
  type ('R, 'W) tags_2 = ('R, 'W) tags
  type 'R tags_1 = ('R, any) tags
  type tags_0 = (any, any) tags
  [@@@js.start]
  [@@@js.implem 
    type ('R, 'W) tags = [`ReadableWritablePair of ('R * 'W)]
    type ('R, 'W) tags_2 = ('R, 'W) tags
    type 'R tags_1 = ('R, any) tags
    type tags_0 = (any, any) tags
  ]
  type ('tags, 'R, 'W) this = 'tags intf constraint 'tags = [> `ReadableWritablePair of ('R * 'W) ]
  val t_to_js: ('R -> Ojs.t) -> ('W -> Ojs.t) -> ('R, 'W) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'W) -> Ojs.t -> ('R, 'W) t
  val t_2_to_js: ('R -> Ojs.t) -> ('W -> Ojs.t) -> ('R, 'W) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'W) -> Ojs.t -> ('R, 'W) t_2
  val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_readable: ('tags, 'R, 'W) this -> 'R ReadableStream.t [@@js.get "readable"]
  val set_readable: ('tags, 'R, 'W) this -> 'R ReadableStream.t -> unit [@@js.set "readable"]
  
  (**
    Provides a convenient, chainable way of piping this readable stream through a transform stream (or any other \{ writable, readable \} pair). It simply pipes the stream into the writable side of the supplied pair, and returns the readable side for further use.
    
    Piping a stream will lock it for the duration of the pipe, preventing any other consumer from acquiring a reader.
  *)
  val get_writable: ('tags, 'R, 'W) this -> 'W WritableStream.t [@@js.get "writable"]
  
  (**
    Provides a convenient, chainable way of piping this readable stream through a transform stream (or any other \{ writable, readable \} pair). It simply pipes the stream into the writable side of the supplied pair, and returns the readable side for further use.
    
    Piping a stream will lock it for the duration of the pipe, preventing any other consumer from acquiring a reader.
  *)
  val set_writable: ('tags, 'R, 'W) this -> 'W WritableStream.t -> unit [@@js.set "writable"]
  val cast_from: (('tags, 'R, 'W) this -> ('R, 'W) t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface2 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Blob.t [@@js.get "prototype"]
  val set_prototype: t -> Blob.t -> unit [@@js.set "prototype"]
  val create: t -> ?blobParts:BlobPart.t list -> ?options:BlobPropertyBag.t -> unit -> Blob.t [@@js.apply_newable]
end

(** A file-like object of immutable, raw data. Blobs represent data that isn't necessarily in a JavaScript-native format. The File interface is based on Blob, inheriting blob functionality and expanding it to support files on the user's system. *)
and[@js.scope "Blob"] Blob : sig
  type t = [`Blob] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Blob]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Blob]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Blob ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_size: 'tags this -> float [@@js.get "size"]
  val get_type: 'tags this -> string [@@js.get "type"]
  val arrayBuffer: 'tags this -> ArrayBuffer.t_0 Promise.t_1 [@@js.call "arrayBuffer"]
  val slice: 'tags this -> ?start:float -> ?end_:float -> ?contentType:string -> unit -> t [@@js.call "slice"]
  val stream: 'tags this -> ReadableStream.t_0 [@@js.call "stream"]
  val text: 'tags this -> string Promise.t_1 [@@js.call "text"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?blobParts:BlobPart.t list -> ?options:BlobPropertyBag.t -> unit -> t [@@js.create]
end
and BlobPart : sig
  type t = (Blob.t, BufferSource.t) union2 or_string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface34 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> File.t [@@js.get "prototype"]
  val set_prototype: t -> File.t -> unit [@@js.set "prototype"]
  val create: t -> fileBits:BlobPart.t list -> fileName:string -> ?options:FilePropertyBag.t -> unit -> File.t [@@js.apply_newable]
end

(** Provides information about files and allows JavaScript in a web page to access their content. *)
and[@js.scope "File"] File : sig
  type t = [`Blob | `File] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Blob | `File]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Blob | `File]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `File ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_lastModified: 'tags this -> float [@@js.get "lastModified"]
  val get_name: 'tags this -> string [@@js.get "name"]
  val get_webkitRelativePath: 'tags this -> string [@@js.get "webkitRelativePath"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: fileBits:BlobPart.t list -> fileName:string -> ?options:FilePropertyBag.t -> unit -> t [@@js.create]
end
module FormDataEntryValue : sig
  type t = File.t or_string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface41 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FormData.t [@@js.get "prototype"]
  val set_prototype: t -> FormData.t -> unit [@@js.set "prototype"]
  val create: t -> FormData.t [@@js.apply_newable]
end

(** Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data". *)
and[@js.scope "FormData"] FormData : sig
  type t = [`FormData | (string * FormDataEntryValue.t) IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FormData | (string * FormDataEntryValue.t) IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FormData | (string * FormDataEntryValue.t) IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FormData ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val append: 'tags this -> name:string -> value:Blob.t or_string -> ?fileName:string -> unit -> unit [@@js.call "append"]
  val delete: 'tags this -> name:string -> unit [@@js.call "delete"]
  val get_: 'tags this -> name:string -> FormDataEntryValue.t or_null [@@js.call "get"]
  val getAll: 'tags this -> name:string -> FormDataEntryValue.t list [@@js.call "getAll"]
  val has: 'tags this -> name:string -> bool [@@js.call "has"]
  val set_: 'tags this -> name:string -> value:Blob.t or_string -> ?fileName:string -> unit -> unit [@@js.call "set"]
  val forEach: 'tags this -> callbackfn:(value:FormDataEntryValue.t -> key:string -> parent:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (** Returns an array of key, value pairs for every entry in the list. *)
  val entries: 'tags this -> (string * FormDataEntryValue.t) IterableIterator.t_1 [@@js.call "entries"]
  
  (** Returns a list of keys in the list. *)
  val keys: 'tags this -> string IterableIterator.t_1 [@@js.call "keys"]
  
  (** Returns a list of values in the list. *)
  val values: 'tags this -> FormDataEntryValue.t IterableIterator.t_1 [@@js.call "values"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface110 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> URLSearchParams.t [@@js.get "prototype"]
  val set_prototype: t -> URLSearchParams.t -> unit [@@js.set "prototype"]
  val create: t -> ?init:((URLSearchParams.t, (string, string) Record.t_2) union2, string list) or_array or_string -> unit -> URLSearchParams.t [@@js.apply_newable]
  val toString: t -> string [@@js.call "toString"]
end
and[@js.scope "URLSearchParams"] URLSearchParams : sig
  type t = [`URLSearchParams | (string * string) IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`URLSearchParams | (string * string) IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`URLSearchParams | (string * string) IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `URLSearchParams ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Appends a specified key/value pair as a new search parameter. *)
  val append: 'tags this -> name:string -> value:string -> unit [@@js.call "append"]
  
  (** Deletes the given search parameter, and its associated value, from the list of all search parameters. *)
  val delete: 'tags this -> name:string -> unit [@@js.call "delete"]
  
  (** Returns the first value associated to the given search parameter. *)
  val get_: 'tags this -> name:string -> string or_null [@@js.call "get"]
  
  (** Returns all the values association with a given search parameter. *)
  val getAll: 'tags this -> name:string -> string list [@@js.call "getAll"]
  
  (** Returns a Boolean indicating if such a search parameter exists. *)
  val has: 'tags this -> name:string -> bool [@@js.call "has"]
  
  (** Sets the value associated to a given search parameter to the given value. If there were several values, delete the others. *)
  val set_: 'tags this -> name:string -> value:string -> unit [@@js.call "set"]
  val sort: 'tags this -> unit [@@js.call "sort"]
  
  (** Returns a string containing a query string suitable for use in a URL. Does not include the question mark. *)
  val toString: 'tags this -> string [@@js.call "toString"]
  val forEach: 'tags this -> callbackfn:(value:string -> key:string -> parent:t -> unit) -> ?thisArg:any -> unit -> unit [@@js.call "forEach"]
  
  (** Returns an array of key, value pairs for every entry in the search params. *)
  val entries: 'tags this -> (string * string) IterableIterator.t_1 [@@js.call "entries"]
  
  (** Returns a list of keys in the search params. *)
  val keys: 'tags this -> string IterableIterator.t_1 [@@js.call "keys"]
  
  (** Returns a list of values in the search params. *)
  val values: 'tags this -> string IterableIterator.t_1 [@@js.call "values"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?init:((t, (string, string) Record.t_2) union2, string list) or_array or_string -> unit -> t [@@js.create]
  val toString': unit -> string [@@js.global "toString"]
end
module XMLHttpRequestBodyInit : sig
  type t = (Blob.t, BufferSource.t, FormData.t, URLSearchParams.t) union4 or_string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module BodyInit : sig
  type t = (ReadableStream.t_0, XMLHttpRequestBodyInit.t) union2
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RequestInit : sig
  type t = [`RequestInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`RequestInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`RequestInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RequestInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** A BodyInit object or null to set request's body. *)
  val get_body: 'tags this -> BodyInit.t or_null [@@js.get "body"]
  
  (** A BodyInit object or null to set request's body. *)
  val set_body: 'tags this -> BodyInit.t or_null -> unit [@@js.set "body"]
  
  (** A string indicating how the request will interact with the browser's cache to set request's cache. *)
  val get_cache: 'tags this -> RequestCache.t [@@js.get "cache"]
  
  (** A string indicating how the request will interact with the browser's cache to set request's cache. *)
  val set_cache: 'tags this -> RequestCache.t -> unit [@@js.set "cache"]
  
  (** A string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL. Sets request's credentials. *)
  val get_credentials: 'tags this -> RequestCredentials.t [@@js.get "credentials"]
  
  (** A string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL. Sets request's credentials. *)
  val set_credentials: 'tags this -> RequestCredentials.t -> unit [@@js.set "credentials"]
  
  (** A Headers object, an object literal, or an array of two-item arrays to set request's headers. *)
  val get_headers: 'tags this -> HeadersInit.t [@@js.get "headers"]
  
  (** A Headers object, an object literal, or an array of two-item arrays to set request's headers. *)
  val set_headers: 'tags this -> HeadersInit.t -> unit [@@js.set "headers"]
  
  (** A cryptographic hash of the resource to be fetched by request. Sets request's integrity. *)
  val get_integrity: 'tags this -> string [@@js.get "integrity"]
  
  (** A cryptographic hash of the resource to be fetched by request. Sets request's integrity. *)
  val set_integrity: 'tags this -> string -> unit [@@js.set "integrity"]
  
  (** A boolean to set request's keepalive. *)
  val get_keepalive: 'tags this -> bool [@@js.get "keepalive"]
  
  (** A boolean to set request's keepalive. *)
  val set_keepalive: 'tags this -> bool -> unit [@@js.set "keepalive"]
  
  (** A string to set request's method. *)
  val get_method: 'tags this -> string [@@js.get "method"]
  
  (** A string to set request's method. *)
  val set_method: 'tags this -> string -> unit [@@js.set "method"]
  
  (** A string to indicate whether the request will use CORS, or will be restricted to same-origin URLs. Sets request's mode. *)
  val get_mode: 'tags this -> RequestMode.t [@@js.get "mode"]
  
  (** A string to indicate whether the request will use CORS, or will be restricted to same-origin URLs. Sets request's mode. *)
  val set_mode: 'tags this -> RequestMode.t -> unit [@@js.set "mode"]
  
  (** A string indicating whether request follows redirects, results in an error upon encountering a redirect, or returns the redirect (in an opaque fashion). Sets request's redirect. *)
  val get_redirect: 'tags this -> RequestRedirect.t [@@js.get "redirect"]
  
  (** A string indicating whether request follows redirects, results in an error upon encountering a redirect, or returns the redirect (in an opaque fashion). Sets request's redirect. *)
  val set_redirect: 'tags this -> RequestRedirect.t -> unit [@@js.set "redirect"]
  
  (** A string whose value is a same-origin URL, "about:client", or the empty string, to set request's referrer. *)
  val get_referrer: 'tags this -> string [@@js.get "referrer"]
  
  (** A string whose value is a same-origin URL, "about:client", or the empty string, to set request's referrer. *)
  val set_referrer: 'tags this -> string -> unit [@@js.set "referrer"]
  
  (** A referrer policy to set request's referrerPolicy. *)
  val get_referrerPolicy: 'tags this -> ReferrerPolicy.t [@@js.get "referrerPolicy"]
  
  (** A referrer policy to set request's referrerPolicy. *)
  val set_referrerPolicy: 'tags this -> ReferrerPolicy.t -> unit [@@js.set "referrerPolicy"]
  
  (** An AbortSignal to set request's signal. *)
  val get_signal: 'tags this -> AbortSignal.t or_null [@@js.get "signal"]
  
  (** An AbortSignal to set request's signal. *)
  val set_signal: 'tags this -> AbortSignal.t or_null -> unit [@@js.set "signal"]
  
  (** Can only be null. Used to disassociate request from any Window. *)
  val get_window: 'tags this -> never or_null [@@js.get "window"]
  
  (** Can only be null. Used to disassociate request from any Window. *)
  val set_window: 'tags this -> never or_null -> unit [@@js.set "window"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module Body : sig
  type t = [`Body] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Body]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Body]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Body ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_body: 'tags this -> Uint8Array.t_0 ReadableStream.t or_null [@@js.get "body"]
  val get_bodyUsed: 'tags this -> bool [@@js.get "bodyUsed"]
  val arrayBuffer: 'tags this -> ArrayBuffer.t_0 Promise.t_1 [@@js.call "arrayBuffer"]
  val blob: 'tags this -> Blob.t Promise.t_1 [@@js.call "blob"]
  val formData: 'tags this -> FormData.t Promise.t_1 [@@js.call "formData"]
  val json: 'tags this -> any Promise.t_1 [@@js.call "json"]
  val text: 'tags this -> string Promise.t_1 [@@js.call "text"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface90 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Request.t [@@js.get "prototype"]
  val set_prototype: t -> Request.t -> unit [@@js.set "prototype"]
  val create: t -> input:RequestInfo.t -> ?init:RequestInit.t -> unit -> Request.t [@@js.apply_newable]
end

(** This Fetch API interface represents a resource request. *)
and[@js.scope "Request"] Request : sig
  type t = [`Body | `Request] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Body | `Request]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Body | `Request]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Request ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the cache mode associated with request, which is a string indicating how the request will interact with the browser's cache when fetching. *)
  val get_cache: 'tags this -> RequestCache.t [@@js.get "cache"]
  
  (** Returns the credentials mode associated with request, which is a string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL. *)
  val get_credentials: 'tags this -> RequestCredentials.t [@@js.get "credentials"]
  
  (** Returns the kind of resource requested by request, e.g., "document" or "script". *)
  val get_destination: 'tags this -> RequestDestination.t [@@js.get "destination"]
  
  (** Returns a Headers object consisting of the headers associated with request. Note that headers added in the network layer by the user agent will not be accounted for in this object, e.g., the "Host" header. *)
  val get_headers: 'tags this -> Headers.t [@@js.get "headers"]
  
  (** Returns request's subresource integrity metadata, which is a cryptographic hash of the resource being fetched. Its value consists of multiple hashes separated by whitespace. \[SRI\] *)
  val get_integrity: 'tags this -> string [@@js.get "integrity"]
  
  (** Returns a boolean indicating whether or not request can outlive the global in which it was created. *)
  val get_keepalive: 'tags this -> bool [@@js.get "keepalive"]
  
  (** Returns request's HTTP method, which is "GET" by default. *)
  val get_method: 'tags this -> string [@@js.get "method"]
  
  (** Returns the mode associated with request, which is a string indicating whether the request will use CORS, or will be restricted to same-origin URLs. *)
  val get_mode: 'tags this -> RequestMode.t [@@js.get "mode"]
  
  (** Returns the redirect mode associated with request, which is a string indicating how redirects for the request will be handled during fetching. A request will follow redirects by default. *)
  val get_redirect: 'tags this -> RequestRedirect.t [@@js.get "redirect"]
  
  (** Returns the referrer of request. Its value can be a same-origin URL if explicitly set in init, the empty string to indicate no referrer, and "about:client" when defaulting to the global's default. This is used during fetching to determine the value of the `Referer` header of the request being made. *)
  val get_referrer: 'tags this -> string [@@js.get "referrer"]
  
  (** Returns the referrer policy associated with request. This is used during fetching to compute the value of the request's referrer. *)
  val get_referrerPolicy: 'tags this -> ReferrerPolicy.t [@@js.get "referrerPolicy"]
  
  (** Returns the signal associated with request, which is an AbortSignal object indicating whether or not request has been aborted, and its abort event handler. *)
  val get_signal: 'tags this -> AbortSignal.t [@@js.get "signal"]
  
  (** Returns the URL of request as a string. *)
  val get_url: 'tags this -> string [@@js.get "url"]
  val clone: 'tags this -> t [@@js.call "clone"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: input:RequestInfo.t -> ?init:RequestInit.t -> unit -> t [@@js.create]
end
and RequestInfo : sig
  type t = Request.t or_string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ResponseType : sig
  type t = ([`L_s137_opaque[@js "opaque"] | `L_s138_opaqueredirect[@js "opaqueredirect"] | `L_s43_basic[@js "basic"] | `L_s55_cors[@js "cors"] | `L_s57_default[@js "default"] | `L_s67_error[@js "error"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ResponseInit : sig
  type t = [`ResponseInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ResponseInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ResponseInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ResponseInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_headers: 'tags this -> HeadersInit.t [@@js.get "headers"]
  val set_headers: 'tags this -> HeadersInit.t -> unit [@@js.set "headers"]
  val get_status: 'tags this -> float [@@js.get "status"]
  val set_status: 'tags this -> float -> unit [@@js.set "status"]
  val get_statusText: 'tags this -> string [@@js.get "statusText"]
  val set_statusText: 'tags this -> string -> unit [@@js.set "statusText"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface109 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> URL.t [@@js.get "prototype"]
  val set_prototype: t -> URL.t -> unit [@@js.set "prototype"]
  val create: t -> url:URL.t or_string -> ?base:URL.t or_string -> unit -> URL.t [@@js.apply_newable]
  val createObjectURL: t -> obj:Blob.t -> string [@@js.call "createObjectURL"]
  val revokeObjectURL: t -> url:string -> unit [@@js.call "revokeObjectURL"]
end

(** The URL interface represents an object providing static methods used for creating object URLs. *)
and[@js.scope "URL"] URL : sig
  type t = [`URL] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`URL]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`URL]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `URL ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> string [@@js.get "hash"]
  val set_hash: 'tags this -> string -> unit [@@js.set "hash"]
  val get_host: 'tags this -> string [@@js.get "host"]
  val set_host: 'tags this -> string -> unit [@@js.set "host"]
  val get_hostname: 'tags this -> string [@@js.get "hostname"]
  val set_hostname: 'tags this -> string -> unit [@@js.set "hostname"]
  val get_href: 'tags this -> string [@@js.get "href"]
  val set_href: 'tags this -> string -> unit [@@js.set "href"]
  val toString: 'tags this -> string [@@js.call "toString"]
  val get_origin: 'tags this -> string [@@js.get "origin"]
  val get_password: 'tags this -> string [@@js.get "password"]
  val set_password: 'tags this -> string -> unit [@@js.set "password"]
  val get_pathname: 'tags this -> string [@@js.get "pathname"]
  val set_pathname: 'tags this -> string -> unit [@@js.set "pathname"]
  val get_port: 'tags this -> string [@@js.get "port"]
  val set_port: 'tags this -> string -> unit [@@js.set "port"]
  val get_protocol: 'tags this -> string [@@js.get "protocol"]
  val set_protocol: 'tags this -> string -> unit [@@js.set "protocol"]
  val get_search: 'tags this -> string [@@js.get "search"]
  val set_search: 'tags this -> string -> unit [@@js.set "search"]
  val get_searchParams: 'tags this -> URLSearchParams.t [@@js.get "searchParams"]
  val get_username: 'tags this -> string [@@js.get "username"]
  val set_username: 'tags this -> string -> unit [@@js.set "username"]
  val toJSON: 'tags this -> string [@@js.call "toJSON"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: url:t or_string -> ?base:t or_string -> unit -> t [@@js.create]
  val createObjectURL: Blob.t -> string [@@js.global "createObjectURL"]
  val revokeObjectURL: string -> unit [@@js.global "revokeObjectURL"]
end
module rec AnonymousInterface91 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Response.t [@@js.get "prototype"]
  val set_prototype: t -> Response.t -> unit [@@js.set "prototype"]
  val create: t -> ?body:BodyInit.t or_null -> ?init:ResponseInit.t -> unit -> Response.t [@@js.apply_newable]
  val error: t -> Response.t [@@js.call "error"]
  val redirect: t -> url:URL.t or_string -> ?status:float -> unit -> Response.t [@@js.call "redirect"]
end

(** This Fetch API interface represents the response to a request. *)
and[@js.scope "Response"] Response : sig
  type t = [`Body | `Response] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Body | `Response]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Body | `Response]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Response ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_headers: 'tags this -> Headers.t [@@js.get "headers"]
  val get_ok: 'tags this -> bool [@@js.get "ok"]
  val get_redirected: 'tags this -> bool [@@js.get "redirected"]
  val get_status: 'tags this -> float [@@js.get "status"]
  val get_statusText: 'tags this -> string [@@js.get "statusText"]
  val get_type: 'tags this -> ResponseType.t [@@js.get "type"]
  val get_url: 'tags this -> string [@@js.get "url"]
  val clone: 'tags this -> t [@@js.call "clone"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?body:BodyInit.t or_null -> ?init:ResponseInit.t -> unit -> t [@@js.create]
  val error: unit -> t [@@js.global "error"]
  val redirect: url:URL.t or_string -> ?status:float -> unit -> t [@@js.global "redirect"]
end
module rec AnonymousInterface5 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Cache.t [@@js.get "prototype"]
  val set_prototype: t -> Cache.t -> unit [@@js.set "prototype"]
  val create: t -> Cache.t [@@js.apply_newable]
end

(**
  Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
  Available only in secure contexts.
*)
and[@js.scope "Cache"] Cache : sig
  type t = [`Cache] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Cache]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Cache]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Cache ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val add: 'tags this -> request:RequestInfo.t -> unit Promise.t_1 [@@js.call "add"]
  val addAll: 'tags this -> requests:RequestInfo.t list -> unit Promise.t_1 [@@js.call "addAll"]
  val delete: 'tags this -> request:RequestInfo.t -> ?options:CacheQueryOptions.t -> unit -> bool Promise.t_1 [@@js.call "delete"]
  val keys: 'tags this -> ?request:RequestInfo.t -> ?options:CacheQueryOptions.t -> unit -> Request.t list Promise.t_1 [@@js.call "keys"]
  val match_: 'tags this -> request:RequestInfo.t -> ?options:CacheQueryOptions.t -> unit -> Response.t or_undefined Promise.t_1 [@@js.call "match"]
  val matchAll: 'tags this -> ?request:RequestInfo.t -> ?options:CacheQueryOptions.t -> unit -> Response.t list Promise.t_1 [@@js.call "matchAll"]
  val put: 'tags this -> request:RequestInfo.t -> response:Response.t -> unit Promise.t_1 [@@js.call "put"]
  val addAll': 'tags this -> requests:RequestInfo.t Iterable.t_1 -> unit Promise.t_1 [@@js.call "addAll"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module[@js.scope "caches"] CachesStatic : sig
  val delete: string -> bool Promise.t_1 [@@js.global "delete"]
  val has: string -> bool Promise.t_1 [@@js.global "has"]
  val keys: unit -> string list Promise.t_1 [@@js.global "keys"]
  val match_: request:RequestInfo.t -> ?options:MultiCacheQueryOptions.t -> unit -> Response.t or_undefined Promise.t_1 [@@js.global "match"]
  val open_: string -> Cache.t Promise.t_1 [@@js.global "open"]
end
module XMLHttpRequestResponseType : sig
  type t = ([`L_s0[@js ""] | `L_s190_text[@js "text"] | `L_s37_arraybuffer[@js "arraybuffer"] | `L_s44_blob[@js "blob"] | `L_s62_document[@js "document"] | `L_s96_json[@js "json"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ProgressEventInit : sig
  type t = [`EventInit | `ProgressEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `ProgressEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `ProgressEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ProgressEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_lengthComputable: 'tags this -> bool [@@js.get "lengthComputable"]
  val set_lengthComputable: 'tags this -> bool -> unit [@@js.set "lengthComputable"]
  val get_loaded: 'tags this -> float [@@js.get "loaded"]
  val set_loaded: 'tags this -> float -> unit [@@js.set "loaded"]
  val get_total: 'tags this -> float [@@js.get "total"]
  val set_total: 'tags this -> float -> unit [@@js.set "total"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface80 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ProgressEvent.t_0 [@@js.get "prototype"]
  val set_prototype: t -> ProgressEvent.t_0 -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:ProgressEventInit.t -> unit -> ProgressEvent.t_0 [@@js.apply_newable]
end

(** Events measuring progress of an underlying process, like an HTTP request (for an XMLHttpRequest, or the loading of the underlying resource of an <img>, <audio>, <video>, <style> or <link>). *)
and[@js.scope "ProgressEvent"] ProgressEvent : sig
  type 'T t = [`Event | `ProgressEvent of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = EventTarget.t t
  [@@@js.stop]
  type 'T tags = [`Event | `ProgressEvent of 'T]
  type 'T tags_1 = 'T tags
  type tags_0 = EventTarget.t tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`Event | `ProgressEvent of 'T]
    type 'T tags_1 = 'T tags
    type tags_0 = EventTarget.t tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `ProgressEvent of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_lengthComputable: ('tags, 'T) this -> bool [@@js.get "lengthComputable"]
  val get_loaded: ('tags, 'T) this -> float [@@js.get "loaded"]
  
  (** Returns the object to which event is dispatched (its target). *)
  val get_target: ('tags, 'T) this -> 'T or_null [@@js.get "target"]
  val get_total: ('tags, 'T) this -> float [@@js.get "total"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:ProgressEventInit.t -> unit -> t_0 [@@js.create]
end
module rec AnonymousInterface137 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> XMLHttpRequest.t [@@js.get "prototype"]
  val set_prototype: t -> XMLHttpRequest.t -> unit [@@js.set "prototype"]
  val create: t -> XMLHttpRequest.t [@@js.apply_newable]
  val get_DONE: t -> float [@@js.get "DONE"]
  val get_HEADERS_RECEIVED: t -> float [@@js.get "HEADERS_RECEIVED"]
  val get_LOADING: t -> float [@@js.get "LOADING"]
  val get_OPENED: t -> float [@@js.get "OPENED"]
  val get_UNSENT: t -> float [@@js.get "UNSENT"]
end
and AnonymousInterface138 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> XMLHttpRequestEventTarget.t [@@js.get "prototype"]
  val set_prototype: t -> XMLHttpRequestEventTarget.t -> unit [@@js.set "prototype"]
  val create: t -> XMLHttpRequestEventTarget.t [@@js.apply_newable]
end
and AnonymousInterface139 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> XMLHttpRequestUpload.t [@@js.get "prototype"]
  val set_prototype: t -> XMLHttpRequestUpload.t -> unit [@@js.set "prototype"]
  val create: t -> XMLHttpRequestUpload.t [@@js.apply_newable]
end

(** Use XMLHttpRequest (XHR) objects to interact with servers. You can retrieve data from a URL without having to do a full page refresh. This enables a Web page to update just part of a page without disrupting what the user is doing. *)
and[@js.scope "XMLHttpRequest"] XMLHttpRequest : sig
  type t = [`EventTarget | `XMLHttpRequest | `XMLHttpRequestEventTarget] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `XMLHttpRequest | `XMLHttpRequestEventTarget]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `XMLHttpRequest | `XMLHttpRequestEventTarget]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `XMLHttpRequest ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onreadystatechange: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onreadystatechange"]
  val set_onreadystatechange: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onreadystatechange"]
  
  (** Returns client's state. *)
  val get_readyState: 'tags this -> float [@@js.get "readyState"]
  
  (** Returns the response body. *)
  val get_response: 'tags this -> any [@@js.get "response"]
  
  (**
    Returns response as text.
    
    Throws an "InvalidStateError" DOMException if responseType is not the empty string or "text".
  *)
  val get_responseText: 'tags this -> string [@@js.get "responseText"]
  
  (**
    Returns the response type.
    
    Can be set to change the response type. Values are: the empty string (default), "arraybuffer", "blob", "document", "json", and "text".
    
    When set: setting to "document" is ignored if current global object is not a Window object.
    
    When set: throws an "InvalidStateError" DOMException if state is loading or done.
    
    When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
  *)
  val get_responseType: 'tags this -> XMLHttpRequestResponseType.t [@@js.get "responseType"]
  
  (**
    Returns the response type.
    
    Can be set to change the response type. Values are: the empty string (default), "arraybuffer", "blob", "document", "json", and "text".
    
    When set: setting to "document" is ignored if current global object is not a Window object.
    
    When set: throws an "InvalidStateError" DOMException if state is loading or done.
    
    When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
  *)
  val set_responseType: 'tags this -> XMLHttpRequestResponseType.t -> unit [@@js.set "responseType"]
  val get_responseURL: 'tags this -> string [@@js.get "responseURL"]
  val get_status: 'tags this -> float [@@js.get "status"]
  val get_statusText: 'tags this -> string [@@js.get "statusText"]
  
  (**
    Can be set to a time in milliseconds. When set to a non-zero value will cause fetching to terminate after the given time has passed. When the time has passed, the request has not yet completed, and this's synchronous flag is unset, a timeout event will then be dispatched, or a "TimeoutError" DOMException will be thrown otherwise (for the send() method).
    
    When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
  *)
  val get_timeout: 'tags this -> float [@@js.get "timeout"]
  
  (**
    Can be set to a time in milliseconds. When set to a non-zero value will cause fetching to terminate after the given time has passed. When the time has passed, the request has not yet completed, and this's synchronous flag is unset, a timeout event will then be dispatched, or a "TimeoutError" DOMException will be thrown otherwise (for the send() method).
    
    When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
  *)
  val set_timeout: 'tags this -> float -> unit [@@js.set "timeout"]
  
  (** Returns the associated XMLHttpRequestUpload object. It can be used to gather transmission information when data is transferred to a server. *)
  val get_upload: 'tags this -> XMLHttpRequestUpload.t [@@js.get "upload"]
  
  (**
    True when credentials are to be included in a cross-origin request. False when they are to be excluded in a cross-origin request and when cookies are to be ignored in its response. Initially false.
    
    When set: throws an "InvalidStateError" DOMException if state is not unsent or opened, or if the send() flag is set.
  *)
  val get_withCredentials: 'tags this -> bool [@@js.get "withCredentials"]
  
  (**
    True when credentials are to be included in a cross-origin request. False when they are to be excluded in a cross-origin request and when cookies are to be ignored in its response. Initially false.
    
    When set: throws an "InvalidStateError" DOMException if state is not unsent or opened, or if the send() flag is set.
  *)
  val set_withCredentials: 'tags this -> bool -> unit [@@js.set "withCredentials"]
  
  (** Cancels any network activity. *)
  val abort: 'tags this -> unit [@@js.call "abort"]
  val getAllResponseHeaders: 'tags this -> string [@@js.call "getAllResponseHeaders"]
  val getResponseHeader: 'tags this -> name:string -> string or_null [@@js.call "getResponseHeader"]
  
  (**
    Sets the request method, request URL, and synchronous flag.
    
    Throws a "SyntaxError" DOMException if either method is not a valid method or url cannot be parsed.
    
    Throws a "SecurityError" DOMException if method is a case-insensitive match for `CONNECT`, `TRACE`, or `TRACK`.
    
    Throws an "InvalidAccessError" DOMException if async is false, current global object is a Window object, and the timeout attribute is not zero or the responseType attribute is not the empty string.
  *)
  val open_: 'tags this -> method_:string -> url:URL.t or_string -> unit [@@js.call "open"]
  
  (**
    Sets the request method, request URL, and synchronous flag.
    
    Throws a "SyntaxError" DOMException if either method is not a valid method or url cannot be parsed.
    
    Throws a "SecurityError" DOMException if method is a case-insensitive match for `CONNECT`, `TRACE`, or `TRACK`.
    
    Throws an "InvalidAccessError" DOMException if async is false, current global object is a Window object, and the timeout attribute is not zero or the responseType attribute is not the empty string.
  *)
  val open_': 'tags this -> method_:string -> url:URL.t or_string -> async:bool -> ?username:string or_null -> ?password:string or_null -> unit -> unit [@@js.call "open"]
  
  (**
    Acts as if the `Content-Type` header value for a response is mime. (It does not change the header.)
    
    Throws an "InvalidStateError" DOMException if state is loading or done.
  *)
  val overrideMimeType: 'tags this -> mime:string -> unit [@@js.call "overrideMimeType"]
  
  (**
    Initiates the request. The body argument provides the request body, if any, and is ignored if the request method is GET or HEAD.
    
    Throws an "InvalidStateError" DOMException if either state is not opened or the send() flag is set.
  *)
  val send: 'tags this -> ?body:XMLHttpRequestBodyInit.t or_null -> unit -> unit [@@js.call "send"]
  
  (**
    Combines a header in author request headers.
    
    Throws an "InvalidStateError" DOMException if either state is not opened or the send() flag is set.
    
    Throws a "SyntaxError" DOMException if name is not a header name or if value is not a header value.
  *)
  val setRequestHeader: 'tags this -> name:string -> value:string -> unit [@@js.call "setRequestHeader"]
  val get_DONE: 'tags this -> float [@@js.get "DONE"]
  val get_HEADERS_RECEIVED: 'tags this -> float [@@js.get "HEADERS_RECEIVED"]
  val get_LOADING: 'tags this -> float [@@js.get "LOADING"]
  val get_OPENED: 'tags this -> float [@@js.get "OPENED"]
  val get_UNSENT: 'tags this -> float [@@js.get "UNSENT"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'XMLHttpRequestEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'XMLHttpRequestEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
  val done_: unit -> float [@@js.get "DONE"]
  val headers_received: unit -> float [@@js.get "HEADERS_RECEIVED"]
  val loading: unit -> float [@@js.get "LOADING"]
  val opened: unit -> float [@@js.get "OPENED"]
  val unsent: unit -> float [@@js.get "UNSENT"]
end
and[@js.scope "XMLHttpRequestEventTarget"] XMLHttpRequestEventTarget : sig
  type t = [`EventTarget | `XMLHttpRequestEventTarget] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `XMLHttpRequestEventTarget]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `XMLHttpRequestEventTarget]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `XMLHttpRequestEventTarget ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onabort: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null [@@js.get "onabort"]
  val set_onabort: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null -> unit [@@js.set "onabort"]
  val get_onerror: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null -> unit [@@js.set "onerror"]
  val get_onload: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null [@@js.get "onload"]
  val set_onload: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null -> unit [@@js.set "onload"]
  val get_onloadend: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null [@@js.get "onloadend"]
  val set_onloadend: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null -> unit [@@js.set "onloadend"]
  val get_onloadstart: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null [@@js.get "onloadstart"]
  val set_onloadstart: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null -> unit [@@js.set "onloadstart"]
  val get_onprogress: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null [@@js.get "onprogress"]
  val set_onprogress: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null -> unit [@@js.set "onprogress"]
  val get_ontimeout: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null [@@js.get "ontimeout"]
  val set_ontimeout: 'tags this -> (this:XMLHttpRequest.t -> ev:ProgressEvent.t_0 -> any) or_null -> unit [@@js.set "ontimeout"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'XMLHttpRequestEventTargetEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'XMLHttpRequestEventTargetEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
and[@js.scope "XMLHttpRequestUpload"] XMLHttpRequestUpload : sig
  type t = [`EventTarget | `XMLHttpRequestEventTarget | `XMLHttpRequestUpload] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `XMLHttpRequestEventTarget | `XMLHttpRequestUpload]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `XMLHttpRequestEventTarget | `XMLHttpRequestUpload]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `XMLHttpRequestUpload ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'XMLHttpRequestEventTargetEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'XMLHttpRequestEventTargetEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module XMLHttpRequestEventTargetEventMap : sig
  type t = [`XMLHttpRequestEventTargetEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`XMLHttpRequestEventTargetEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`XMLHttpRequestEventTargetEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `XMLHttpRequestEventTargetEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_abort: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t [@@js.get "abort"]
  val set_abort: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t -> unit [@@js.set "abort"]
  val get_error: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t [@@js.get "error"]
  val set_error: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t -> unit [@@js.set "error"]
  val get_load: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t [@@js.get "load"]
  val set_load: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t -> unit [@@js.set "load"]
  val get_loadend: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t [@@js.get "loadend"]
  val set_loadend: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t -> unit [@@js.set "loadend"]
  val get_loadstart: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t [@@js.get "loadstart"]
  val set_loadstart: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t -> unit [@@js.set "loadstart"]
  val get_progress: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t [@@js.get "progress"]
  val set_progress: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t -> unit [@@js.set "progress"]
  val get_timeout: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t [@@js.get "timeout"]
  val set_timeout: 'tags this -> XMLHttpRequestEventTarget.t ProgressEvent.t -> unit [@@js.set "timeout"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module XMLHttpRequestEventMap : sig
  type t = [`XMLHttpRequestEventMap | `XMLHttpRequestEventTargetEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`XMLHttpRequestEventMap | `XMLHttpRequestEventTargetEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`XMLHttpRequestEventMap | `XMLHttpRequestEventTargetEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `XMLHttpRequestEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_readystatechange: 'tags this -> Event.t [@@js.get "readystatechange"]
  val set_readystatechange: 'tags this -> Event.t -> unit [@@js.set "readystatechange"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ServiceWorkerState : sig
  type t = ([`L_s146_parsed[@js "parsed"] | `L_s166_redundant[@js "redundant"] | `L_s33_activated[@js "activated"] | `L_s34_activating[@js "activating"] | `L_s94_installed[@js "installed"] | `L_s95_installing[@js "installing"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface55 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ImageBitmap.t [@@js.get "prototype"]
  val set_prototype: t -> ImageBitmap.t -> unit [@@js.set "prototype"]
  val create: t -> ImageBitmap.t [@@js.apply_newable]
end
and[@js.scope "ImageBitmap"] ImageBitmap : sig
  type t = [`ImageBitmap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImageBitmap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImageBitmap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImageBitmap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the intrinsic height of the image, in CSS pixels. *)
  val get_height: 'tags this -> float [@@js.get "height"]
  
  (** Returns the intrinsic width of the image, in CSS pixels. *)
  val get_width: 'tags this -> float [@@js.get "width"]
  
  (** Releases imageBitmap's underlying bitmap data. *)
  val close: 'tags this -> unit [@@js.call "close"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module StructuredSerializeOptions : sig
  type t = [`StructuredSerializeOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`StructuredSerializeOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`StructuredSerializeOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `StructuredSerializeOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_transfer: 'tags this -> any list [@@js.get "transfer"]
  val set_transfer: 'tags this -> any list -> unit [@@js.set "transfer"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ErrorEventInit : sig
  type t = [`ErrorEventInit | `EventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ErrorEventInit | `EventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ErrorEventInit | `EventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ErrorEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_colno: 'tags this -> float [@@js.get "colno"]
  val set_colno: 'tags this -> float -> unit [@@js.set "colno"]
  val get_error: 'tags this -> any [@@js.get "error"]
  val set_error: 'tags this -> any -> unit [@@js.set "error"]
  val get_filename: 'tags this -> string [@@js.get "filename"]
  val set_filename: 'tags this -> string -> unit [@@js.set "filename"]
  val get_lineno: 'tags this -> float [@@js.get "lineno"]
  val set_lineno: 'tags this -> float -> unit [@@js.set "lineno"]
  val get_message: 'tags this -> string [@@js.get "message"]
  val set_message: 'tags this -> string -> unit [@@js.set "message"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface27 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ErrorEvent.t [@@js.get "prototype"]
  val set_prototype: t -> ErrorEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:ErrorEventInit.t -> unit -> ErrorEvent.t [@@js.apply_newable]
end

(** Events providing information related to errors in scripts or in files. *)
and[@js.scope "ErrorEvent"] ErrorEvent : sig
  type t = [`ErrorEvent | `Event] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ErrorEvent | `Event]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ErrorEvent | `Event]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ErrorEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_colno: 'tags this -> float [@@js.get "colno"]
  val get_error: 'tags this -> any [@@js.get "error"]
  val get_filename: 'tags this -> string [@@js.get "filename"]
  val get_lineno: 'tags this -> float [@@js.get "lineno"]
  val get_message: 'tags this -> string [@@js.get "message"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:ErrorEventInit.t -> unit -> t [@@js.create]
end
module AbstractWorker : sig
  type t = [`AbstractWorker] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbstractWorker]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbstractWorker]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AbstractWorker ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onerror: 'tags this -> (this:t -> ev:ErrorEvent.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:ErrorEvent.t -> any) or_null -> unit [@@js.set "onerror"]
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'AbstractWorkerEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'AbstractWorkerEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface63 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> MessageEvent.t_0 [@@js.get "prototype"]
  val set_prototype: t -> MessageEvent.t_0 -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:'T MessageEventInit.t -> unit -> 'T MessageEvent.t [@@js.apply_newable]
end
and AnonymousInterface64 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> MessagePort.t [@@js.get "prototype"]
  val set_prototype: t -> MessagePort.t -> unit [@@js.set "prototype"]
  val create: t -> MessagePort.t [@@js.apply_newable]
end
and AnonymousInterface94 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ServiceWorker.t [@@js.get "prototype"]
  val set_prototype: t -> ServiceWorker.t -> unit [@@js.set "prototype"]
  val create: t -> ServiceWorker.t [@@js.apply_newable]
end

(** A message received by a target object. *)
and[@js.scope "MessageEvent"] MessageEvent : sig
  type 'T t = [`Event | `MessageEvent of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`Event | `MessageEvent of 'T]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`Event | `MessageEvent of 'T]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `MessageEvent of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the data of the message. *)
  val get_data: ('tags, 'T) this -> 'T [@@js.get "data"]
  
  (** Returns the last event ID string, for server-sent events. *)
  val get_lastEventId: ('tags, 'T) this -> string [@@js.get "lastEventId"]
  
  (** Returns the origin of the message, for server-sent events and cross-document messaging. *)
  val get_origin: ('tags, 'T) this -> string [@@js.get "origin"]
  
  (** Returns the MessagePort array sent with the message, for cross-document messaging and channel messaging. *)
  val get_ports: ('tags, 'T) this -> MessagePort.t list [@@js.get "ports"]
  
  (** Returns the WindowProxy of the source window, for cross-document messaging, and the MessagePort being attached, in the connect event fired at SharedWorkerGlobalScope objects. *)
  val get_source: ('tags, 'T) this -> MessageEventSource.t or_null [@@js.get "source"]
  
  (** @deprecated  *)
  val initMessageEvent: ('tags, 'T) this -> type_:string -> ?bubbles:bool -> ?cancelable:bool -> ?data:any -> ?origin:string -> ?lastEventId:string -> ?source:MessageEventSource.t or_null -> ?ports:MessagePort.t list -> unit -> unit [@@js.call "initMessageEvent"]
  
  (** @deprecated  *)
  val initMessageEvent': ('tags, 'T) this -> type_:string -> ?bubbles:bool -> ?cancelable:bool -> ?data:any -> ?origin:string -> ?lastEventId:string -> ?source:MessageEventSource.t or_null -> ?ports:MessagePort.t Iterable.t_1 -> unit -> unit [@@js.call "initMessageEvent"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:'T MessageEventInit.t -> unit -> 'T t [@@js.create]
end
and MessageEventInit : sig
  type 'T t = [`EventInit | `MessageEventInit of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`EventInit | `MessageEventInit of 'T]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`EventInit | `MessageEventInit of 'T]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `MessageEventInit of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_data: ('tags, 'T) this -> 'T [@@js.get "data"]
  val set_data: ('tags, 'T) this -> 'T -> unit [@@js.set "data"]
  val get_lastEventId: ('tags, 'T) this -> string [@@js.get "lastEventId"]
  val set_lastEventId: ('tags, 'T) this -> string -> unit [@@js.set "lastEventId"]
  val get_origin: ('tags, 'T) this -> string [@@js.get "origin"]
  val set_origin: ('tags, 'T) this -> string -> unit [@@js.set "origin"]
  val get_ports: ('tags, 'T) this -> MessagePort.t list [@@js.get "ports"]
  val set_ports: ('tags, 'T) this -> MessagePort.t list -> unit [@@js.set "ports"]
  val get_source: ('tags, 'T) this -> MessageEventSource.t or_null [@@js.get "source"]
  val set_source: ('tags, 'T) this -> MessageEventSource.t or_null -> unit [@@js.set "source"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
end
and MessageEventSource : sig
  type t = (MessagePort.t, ServiceWorker.t) union2
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end

(** This Channel Messaging API interface represents one of the two ports of a MessageChannel, allowing messages to be sent from one port and listening out for them arriving at the other. *)
and[@js.scope "MessagePort"] MessagePort : sig
  type t = [`EventTarget | `MessagePort] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `MessagePort]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `MessagePort]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MessagePort ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessageerror"]
  val set_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessageerror"]
  
  (** Disconnects the port, so that it is no longer active. *)
  val close: 'tags this -> unit [@@js.call "close"]
  
  (**
    Posts a message through the channel. Objects listed in transfer are transferred, not just cloned, meaning that they are no longer usable on the sending side.
    
    Throws a "DataCloneError" DOMException if transfer contains duplicate objects or port, or if message could not be cloned.
  *)
  val postMessage: 'tags this -> message:any -> transfer:Transferable.t list -> unit [@@js.call "postMessage"]
  
  (**
    Posts a message through the channel. Objects listed in transfer are transferred, not just cloned, meaning that they are no longer usable on the sending side.
    
    Throws a "DataCloneError" DOMException if transfer contains duplicate objects or port, or if message could not be cloned.
  *)
  val postMessage': 'tags this -> message:any -> ?options:StructuredSerializeOptions.t -> unit -> unit [@@js.call "postMessage"]
  
  (** Begins dispatching messages received on the port. *)
  val start: 'tags this -> unit [@@js.call "start"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'MessagePortEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'MessagePortEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end

(**
  This ServiceWorker API interface provides a reference to a service worker. Multiple browsing contexts (e.g. pages, workers, etc.) can be associated with the same service worker, each through a unique ServiceWorker object.
  Available only in secure contexts.
*)
and[@js.scope "ServiceWorker"] ServiceWorker : sig
  type t = [`AbstractWorker | `EventTarget | `ServiceWorker] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbstractWorker | `EventTarget | `ServiceWorker]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbstractWorker | `EventTarget | `ServiceWorker]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorker ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onstatechange: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onstatechange"]
  val set_onstatechange: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onstatechange"]
  val get_scriptURL: 'tags this -> string [@@js.get "scriptURL"]
  val get_state: 'tags this -> ServiceWorkerState.t [@@js.get "state"]
  val postMessage: 'tags this -> message:any -> transfer:Transferable.t list -> unit [@@js.call "postMessage"]
  val postMessage': 'tags this -> message:any -> ?options:StructuredSerializeOptions.t -> unit -> unit [@@js.call "postMessage"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
and Transferable : sig
  type t = (ArrayBuffer.t_0, ImageBitmap.t, MessagePort.t) union3
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module AbstractWorkerEventMap : sig
  type t = [`AbstractWorkerEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbstractWorkerEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbstractWorkerEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AbstractWorkerEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_error: 'tags this -> ErrorEvent.t [@@js.get "error"]
  val set_error: 'tags this -> ErrorEvent.t -> unit [@@js.set "error"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WorkerEventMap : sig
  type t = [`AbstractWorkerEventMap | `WorkerEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbstractWorkerEventMap | `WorkerEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbstractWorkerEventMap | `WorkerEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WorkerEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_message: 'tags this -> MessageEvent.t_0 [@@js.get "message"]
  val set_message: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "message"]
  val get_messageerror: 'tags this -> MessageEvent.t_0 [@@js.get "messageerror"]
  val set_messageerror: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "messageerror"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module CloseEventInit : sig
  type t = [`CloseEventInit | `EventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CloseEventInit | `EventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CloseEventInit | `EventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CloseEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_code: 'tags this -> float [@@js.get "code"]
  val set_code: 'tags this -> float -> unit [@@js.set "code"]
  val get_reason: 'tags this -> string [@@js.get "reason"]
  val set_reason: 'tags this -> string -> unit [@@js.set "reason"]
  val get_wasClean: 'tags this -> bool [@@js.get "wasClean"]
  val set_wasClean: 'tags this -> bool -> unit [@@js.set "wasClean"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface11 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> CloseEvent.t [@@js.get "prototype"]
  val set_prototype: t -> CloseEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:CloseEventInit.t -> unit -> CloseEvent.t [@@js.apply_newable]
end

(** A CloseEvent is sent to clients using WebSockets when the connection is closed. This is delivered to the listener indicated by the WebSocket object's onclose attribute. *)
and[@js.scope "CloseEvent"] CloseEvent : sig
  type t = [`CloseEvent | `Event] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CloseEvent | `Event]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CloseEvent | `Event]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CloseEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the WebSocket connection close code provided by the server. *)
  val get_code: 'tags this -> float [@@js.get "code"]
  
  (** Returns the WebSocket connection close reason provided by the server. *)
  val get_reason: 'tags this -> string [@@js.get "reason"]
  
  (** Returns true if the connection closed cleanly; false otherwise. *)
  val get_wasClean: 'tags this -> bool [@@js.get "wasClean"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:CloseEventInit.t -> unit -> t [@@js.create]
end
module WebSocketEventMap : sig
  type t = [`WebSocketEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebSocketEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebSocketEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebSocketEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_close: 'tags this -> CloseEvent.t [@@js.get "close"]
  val set_close: 'tags this -> CloseEvent.t -> unit [@@js.set "close"]
  val get_error: 'tags this -> Event.t [@@js.get "error"]
  val set_error: 'tags this -> Event.t -> unit [@@js.set "error"]
  val get_message: 'tags this -> MessageEvent.t_0 [@@js.get "message"]
  val set_message: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "message"]
  val get_open: 'tags this -> Event.t [@@js.get "open"]
  val set_open: 'tags this -> Event.t -> unit [@@js.set "open"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module PromiseRejectionEventInit : sig
  type t = [`EventInit | `PromiseRejectionEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `PromiseRejectionEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `PromiseRejectionEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PromiseRejectionEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_promise: 'tags this -> any Promise.t_1 [@@js.get "promise"]
  val set_promise: 'tags this -> any Promise.t_1 -> unit [@@js.set "promise"]
  val get_reason: 'tags this -> any [@@js.get "reason"]
  val set_reason: 'tags this -> any -> unit [@@js.set "reason"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface81 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PromiseRejectionEvent.t [@@js.get "prototype"]
  val set_prototype: t -> PromiseRejectionEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> eventInitDict:PromiseRejectionEventInit.t -> PromiseRejectionEvent.t [@@js.apply_newable]
end
and[@js.scope "PromiseRejectionEvent"] PromiseRejectionEvent : sig
  type t = [`Event | `PromiseRejectionEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `PromiseRejectionEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `PromiseRejectionEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PromiseRejectionEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_promise: 'tags this -> any Promise.t_1 [@@js.get "promise"]
  val get_reason: 'tags this -> any [@@js.get "reason"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> eventInitDict:PromiseRejectionEventInit.t -> t [@@js.create]
end
module WorkerGlobalScopeEventMap : sig
  type t = [`WorkerGlobalScopeEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WorkerGlobalScopeEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WorkerGlobalScopeEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WorkerGlobalScopeEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_error: 'tags this -> ErrorEvent.t [@@js.get "error"]
  val set_error: 'tags this -> ErrorEvent.t -> unit [@@js.set "error"]
  val get_languagechange: 'tags this -> Event.t [@@js.get "languagechange"]
  val set_languagechange: 'tags this -> Event.t -> unit [@@js.set "languagechange"]
  val get_offline: 'tags this -> Event.t [@@js.get "offline"]
  val set_offline: 'tags this -> Event.t -> unit [@@js.set "offline"]
  val get_online: 'tags this -> Event.t [@@js.get "online"]
  val set_online: 'tags this -> Event.t -> unit [@@js.set "online"]
  val get_rejectionhandled: 'tags this -> PromiseRejectionEvent.t [@@js.get "rejectionhandled"]
  val set_rejectionhandled: 'tags this -> PromiseRejectionEvent.t -> unit [@@js.set "rejectionhandled"]
  val get_unhandledrejection: 'tags this -> PromiseRejectionEvent.t [@@js.get "unhandledrejection"]
  val set_unhandledrejection: 'tags this -> PromiseRejectionEvent.t -> unit [@@js.set "unhandledrejection"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module SharedWorkerGlobalScopeEventMap : sig
  type t = [`SharedWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`SharedWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`SharedWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `SharedWorkerGlobalScopeEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_connect: 'tags this -> MessageEvent.t_0 [@@js.get "connect"]
  val set_connect: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "connect"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ServiceWorkerRegistrationEventMap : sig
  type t = [`ServiceWorkerRegistrationEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ServiceWorkerRegistrationEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ServiceWorkerRegistrationEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorkerRegistrationEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_updatefound: 'tags this -> Event.t [@@js.get "updatefound"]
  val set_updatefound: 'tags this -> Event.t -> unit [@@js.set "updatefound"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface84 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PushMessageData.t [@@js.get "prototype"]
  val set_prototype: t -> PushMessageData.t -> unit [@@js.set "prototype"]
  val create: t -> PushMessageData.t [@@js.apply_newable]
end

(**
  This Push API interface provides methods which let you retrieve the push data sent by a server in various formats.
  Available only in secure contexts.
*)
and[@js.scope "PushMessageData"] PushMessageData : sig
  type t = [`PushMessageData] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PushMessageData]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PushMessageData]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushMessageData ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val arrayBuffer: 'tags this -> ArrayBuffer.t_0 [@@js.call "arrayBuffer"]
  val blob: 'tags this -> Blob.t [@@js.call "blob"]
  val json: 'tags this -> any [@@js.call "json"]
  val text: 'tags this -> string [@@js.call "text"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module PushMessageDataInit : sig
  type t = BufferSource.t or_string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ExtendableEventInit : sig
  type t = [`EventInit | `ExtendableEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `ExtendableEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `ExtendableEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ExtendableEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module PushEventInit : sig
  type t = [`EventInit | `ExtendableEventInit | `PushEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `ExtendableEventInit | `PushEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `ExtendableEventInit | `PushEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_data: 'tags this -> PushMessageDataInit.t [@@js.get "data"]
  val set_data: 'tags this -> PushMessageDataInit.t -> unit [@@js.set "data"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface31 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ExtendableEvent.t [@@js.get "prototype"]
  val set_prototype: t -> ExtendableEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:ExtendableEventInit.t -> unit -> ExtendableEvent.t [@@js.apply_newable]
end

(** Extends the lifetime of the install and activate events dispatched on the global scope as part of the service worker lifecycle. This ensures that any functional events (like FetchEvent) are not dispatched until it upgrades database schemas and deletes the outdated cache entries. *)
and[@js.scope "ExtendableEvent"] ExtendableEvent : sig
  type t = [`Event | `ExtendableEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `ExtendableEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `ExtendableEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ExtendableEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val waitUntil: 'tags this -> f:any -> unit [@@js.call "waitUntil"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:ExtendableEventInit.t -> unit -> t [@@js.create]
end
module rec AnonymousInterface82 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PushEvent.t [@@js.get "prototype"]
  val set_prototype: t -> PushEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:PushEventInit.t -> unit -> PushEvent.t [@@js.apply_newable]
end

(**
  This Push API interface represents a push message that has been received. This event is sent to the global scope of a ServiceWorker. It contains the information sent from an application server to a PushSubscription.
  Available only in secure contexts.
*)
and[@js.scope "PushEvent"] PushEvent : sig
  type t = [`Event | `ExtendableEvent | `PushEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `ExtendableEvent | `PushEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `ExtendableEvent | `PushEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_data: 'tags this -> PushMessageData.t or_null [@@js.get "data"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:PushEventInit.t -> unit -> t [@@js.create]
end
module NotificationPermission : sig
  type t = ([`L_s57_default[@js "default"] | `L_s58_denied[@js "denied"] | `L_s82_granted[@js "granted"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module VibratePattern : sig
  type t = float list or_number
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module NotificationAction : sig
  type t = [`NotificationAction] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NotificationAction]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NotificationAction]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NotificationAction ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_action: 'tags this -> string [@@js.get "action"]
  val set_action: 'tags this -> string -> unit [@@js.set "action"]
  val get_icon: 'tags this -> string [@@js.get "icon"]
  val set_icon: 'tags this -> string -> unit [@@js.set "icon"]
  val get_title: 'tags this -> string [@@js.get "title"]
  val set_title: 'tags this -> string -> unit [@@js.set "title"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module DOMTimeStamp : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module NotificationDirection : sig
  type t = ([`L_s108_ltr[@js "ltr"] | `L_s171_rtl[@js "rtl"] | `L_s41_auto[@js "auto"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module NotificationOptions : sig
  type t = [`NotificationOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NotificationOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NotificationOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NotificationOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_actions: 'tags this -> NotificationAction.t list [@@js.get "actions"]
  val set_actions: 'tags this -> NotificationAction.t list -> unit [@@js.set "actions"]
  val get_badge: 'tags this -> string [@@js.get "badge"]
  val set_badge: 'tags this -> string -> unit [@@js.set "badge"]
  val get_body: 'tags this -> string [@@js.get "body"]
  val set_body: 'tags this -> string -> unit [@@js.set "body"]
  val get_data: 'tags this -> any [@@js.get "data"]
  val set_data: 'tags this -> any -> unit [@@js.set "data"]
  val get_dir: 'tags this -> NotificationDirection.t [@@js.get "dir"]
  val set_dir: 'tags this -> NotificationDirection.t -> unit [@@js.set "dir"]
  val get_icon: 'tags this -> string [@@js.get "icon"]
  val set_icon: 'tags this -> string -> unit [@@js.set "icon"]
  val get_image: 'tags this -> string [@@js.get "image"]
  val set_image: 'tags this -> string -> unit [@@js.set "image"]
  val get_lang: 'tags this -> string [@@js.get "lang"]
  val set_lang: 'tags this -> string -> unit [@@js.set "lang"]
  val get_renotify: 'tags this -> bool [@@js.get "renotify"]
  val set_renotify: 'tags this -> bool -> unit [@@js.set "renotify"]
  val get_requireInteraction: 'tags this -> bool [@@js.get "requireInteraction"]
  val set_requireInteraction: 'tags this -> bool -> unit [@@js.set "requireInteraction"]
  val get_silent: 'tags this -> bool [@@js.get "silent"]
  val set_silent: 'tags this -> bool -> unit [@@js.set "silent"]
  val get_tag: 'tags this -> string [@@js.get "tag"]
  val set_tag: 'tags this -> string -> unit [@@js.set "tag"]
  val get_timestamp: 'tags this -> DOMTimeStamp.t [@@js.get "timestamp"]
  val set_timestamp: 'tags this -> DOMTimeStamp.t -> unit [@@js.set "timestamp"]
  val get_vibrate: 'tags this -> VibratePattern.t [@@js.get "vibrate"]
  val set_vibrate: 'tags this -> VibratePattern.t -> unit [@@js.set "vibrate"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface67 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Notification.t [@@js.get "prototype"]
  val set_prototype: t -> Notification.t -> unit [@@js.set "prototype"]
  val create: t -> title:string -> ?options:NotificationOptions.t -> unit -> Notification.t [@@js.apply_newable]
  val get_permission: t -> NotificationPermission.t [@@js.get "permission"]
end

(** This Notifications API interface is used to configure and display desktop notifications to the user. *)
and[@js.scope "Notification"] Notification : sig
  type t = [`EventTarget | `Notification] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `Notification]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `Notification]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Notification ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_body: 'tags this -> string [@@js.get "body"]
  val get_data: 'tags this -> any [@@js.get "data"]
  val get_dir: 'tags this -> NotificationDirection.t [@@js.get "dir"]
  val get_icon: 'tags this -> string [@@js.get "icon"]
  val get_lang: 'tags this -> string [@@js.get "lang"]
  val get_onclick: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onclick"]
  val set_onclick: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onclick"]
  val get_onclose: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onclose"]
  val set_onclose: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onclose"]
  val get_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onerror"]
  val get_onshow: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onshow"]
  val set_onshow: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onshow"]
  val get_tag: 'tags this -> string [@@js.get "tag"]
  val get_title: 'tags this -> string [@@js.get "title"]
  val close: 'tags this -> unit [@@js.call "close"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'NotificationEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'NotificationEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: title:string -> ?options:NotificationOptions.t -> unit -> t [@@js.create]
  val permission: unit -> NotificationPermission.t [@@js.get "permission"]
end
module NotificationEventInit : sig
  type t = [`EventInit | `ExtendableEventInit | `NotificationEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `ExtendableEventInit | `NotificationEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `ExtendableEventInit | `NotificationEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NotificationEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_action: 'tags this -> string [@@js.get "action"]
  val set_action: 'tags this -> string -> unit [@@js.set "action"]
  val get_notification: 'tags this -> Notification.t [@@js.get "notification"]
  val set_notification: 'tags this -> Notification.t -> unit [@@js.set "notification"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface68 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> NotificationEvent.t [@@js.get "prototype"]
  val set_prototype: t -> NotificationEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> eventInitDict:NotificationEventInit.t -> NotificationEvent.t [@@js.apply_newable]
end

(** The parameter passed into the onnotificationclick handler, the NotificationEvent interface represents a notification click event that is dispatched on the ServiceWorkerGlobalScope of a ServiceWorker. *)
and[@js.scope "NotificationEvent"] NotificationEvent : sig
  type t = [`Event | `ExtendableEvent | `NotificationEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `ExtendableEvent | `NotificationEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `ExtendableEvent | `NotificationEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NotificationEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_action: 'tags this -> string [@@js.get "action"]
  val get_notification: 'tags this -> Notification.t [@@js.get "notification"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> eventInitDict:NotificationEventInit.t -> t [@@js.create]
end
module FetchEventInit : sig
  type t = [`EventInit | `ExtendableEventInit | `FetchEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `ExtendableEventInit | `FetchEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `ExtendableEventInit | `FetchEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FetchEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_clientId: 'tags this -> string [@@js.get "clientId"]
  val set_clientId: 'tags this -> string -> unit [@@js.set "clientId"]
  val get_handled: 'tags this -> never or_undefined Promise.t_1 [@@js.get "handled"]
  val set_handled: 'tags this -> never or_undefined Promise.t_1 -> unit [@@js.set "handled"]
  val get_preloadResponse: 'tags this -> any Promise.t_1 [@@js.get "preloadResponse"]
  val set_preloadResponse: 'tags this -> any Promise.t_1 -> unit [@@js.set "preloadResponse"]
  val get_replacesClientId: 'tags this -> string [@@js.get "replacesClientId"]
  val set_replacesClientId: 'tags this -> string -> unit [@@js.set "replacesClientId"]
  val get_request: 'tags this -> Request.t [@@js.get "request"]
  val set_request: 'tags this -> Request.t -> unit [@@js.set "request"]
  val get_resultingClientId: 'tags this -> string [@@js.get "resultingClientId"]
  val set_resultingClientId: 'tags this -> string -> unit [@@js.set "resultingClientId"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface33 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FetchEvent.t [@@js.get "prototype"]
  val set_prototype: t -> FetchEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> eventInitDict:FetchEventInit.t -> FetchEvent.t [@@js.apply_newable]
end

(** This is the event type for fetch events dispatched on the service worker global scope. It contains information about the fetch, including the request and how the receiver will treat the response. It provides the event.respondWith() method, which allows us to provide a response to this fetch. *)
and[@js.scope "FetchEvent"] FetchEvent : sig
  type t = [`Event | `ExtendableEvent | `FetchEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `ExtendableEvent | `FetchEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `ExtendableEvent | `FetchEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FetchEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_clientId: 'tags this -> string [@@js.get "clientId"]
  val get_handled: 'tags this -> never or_undefined Promise.t_1 [@@js.get "handled"]
  val get_request: 'tags this -> Request.t [@@js.get "request"]
  val get_resultingClientId: 'tags this -> string [@@js.get "resultingClientId"]
  val respondWith: 'tags this -> r:(Response.t, Response.t PromiseLike.t_1) union2 -> unit [@@js.call "respondWith"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> eventInitDict:FetchEventInit.t -> t [@@js.create]
end
module FrameType : sig
  type t = ([`L_s120_nested[@js "nested"] | `L_s128_none[@js "none"] | `L_s192_top_level[@js "top-level"] | `L_s42_auxiliary[@js "auxiliary"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ClientTypes : sig
  type t = ([`L_s176_sharedworker[@js "sharedworker"] | `L_s208_window[@js "window"] | `L_s209_worker[@js "worker"] | `L_s35_all[@js "all"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface9 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Client.t [@@js.get "prototype"]
  val set_prototype: t -> Client.t -> unit [@@js.set "prototype"]
  val create: t -> Client.t [@@js.apply_newable]
end

(** The Client interface represents an executable context such as a Worker, or a SharedWorker. Window clients are represented by the more-specific WindowClient. You can get Client/WindowClient objects from methods such as Clients.matchAll() and Clients.get(). *)
and[@js.scope "Client"] Client : sig
  type t = [`Client] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Client]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Client]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Client ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_frameType: 'tags this -> FrameType.t [@@js.get "frameType"]
  val get_id: 'tags this -> string [@@js.get "id"]
  val get_type: 'tags this -> ClientTypes.t [@@js.get "type"]
  val get_url: 'tags this -> string [@@js.get "url"]
  val postMessage: 'tags this -> message:any -> transfer:Transferable.t list -> unit [@@js.call "postMessage"]
  val postMessage': 'tags this -> message:any -> ?options:StructuredSerializeOptions.t -> unit -> unit [@@js.call "postMessage"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module ExtendableMessageEventInit : sig
  type t = [`EventInit | `ExtendableEventInit | `ExtendableMessageEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `ExtendableEventInit | `ExtendableMessageEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `ExtendableEventInit | `ExtendableMessageEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ExtendableMessageEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_data: 'tags this -> any [@@js.get "data"]
  val set_data: 'tags this -> any -> unit [@@js.set "data"]
  val get_lastEventId: 'tags this -> string [@@js.get "lastEventId"]
  val set_lastEventId: 'tags this -> string -> unit [@@js.set "lastEventId"]
  val get_origin: 'tags this -> string [@@js.get "origin"]
  val set_origin: 'tags this -> string -> unit [@@js.set "origin"]
  val get_ports: 'tags this -> MessagePort.t list [@@js.get "ports"]
  val set_ports: 'tags this -> MessagePort.t list -> unit [@@js.set "ports"]
  val get_source: 'tags this -> ((([`U_s42_auxiliary of Client.t [@js "auxiliary"] | `U_s120_nested of Client.t [@js "nested"] | `U_s128_none of Client.t [@js "none"] | `U_s192_top_level of Client.t [@js "top-level"]] [@js.union on_field "frameType"]), ([`U_s33_activated of ServiceWorker.t [@js "activated"] | `U_s34_activating of ServiceWorker.t [@js "activating"] | `U_s94_installed of ServiceWorker.t [@js "installed"] | `U_s95_installing of ServiceWorker.t [@js "installing"] | `U_s146_parsed of ServiceWorker.t [@js "parsed"] | `U_s166_redundant of ServiceWorker.t [@js "redundant"]] [@js.union on_field "state"])) union2, MessagePort.t) or_ or_null [@@js.get "source"]
  val set_source: 'tags this -> ((([`U_s42_auxiliary of Client.t  | `U_s120_nested of Client.t  | `U_s128_none of Client.t  | `U_s192_top_level of Client.t ] [@js.union on_field "frameType"]), ([`U_s33_activated of ServiceWorker.t  | `U_s34_activating of ServiceWorker.t  | `U_s94_installed of ServiceWorker.t  | `U_s95_installing of ServiceWorker.t  | `U_s146_parsed of ServiceWorker.t  | `U_s166_redundant of ServiceWorker.t ] [@js.union on_field "state"])) union2, MessagePort.t) or_ or_null -> unit [@@js.set "source"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface32 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ExtendableMessageEvent.t [@@js.get "prototype"]
  val set_prototype: t -> ExtendableMessageEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:ExtendableMessageEventInit.t -> unit -> ExtendableMessageEvent.t [@@js.apply_newable]
end

(** This ServiceWorker API interface represents the event object of a message event fired on a service worker (when a channel message is received on the ServiceWorkerGlobalScope from another context) — extends the lifetime of such events. *)
and[@js.scope "ExtendableMessageEvent"] ExtendableMessageEvent : sig
  type t = [`Event | `ExtendableEvent | `ExtendableMessageEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `ExtendableEvent | `ExtendableMessageEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `ExtendableEvent | `ExtendableMessageEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ExtendableMessageEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_data: 'tags this -> any [@@js.get "data"]
  val get_lastEventId: 'tags this -> string [@@js.get "lastEventId"]
  val get_origin: 'tags this -> string [@@js.get "origin"]
  val get_ports: 'tags this -> MessagePort.t list [@@js.get "ports"]
  val get_source: 'tags this -> ((([`U_s42_auxiliary of Client.t [@js "auxiliary"] | `U_s120_nested of Client.t [@js "nested"] | `U_s128_none of Client.t [@js "none"] | `U_s192_top_level of Client.t [@js "top-level"]] [@js.union on_field "frameType"]), ([`U_s33_activated of ServiceWorker.t [@js "activated"] | `U_s34_activating of ServiceWorker.t [@js "activating"] | `U_s94_installed of ServiceWorker.t [@js "installed"] | `U_s95_installing of ServiceWorker.t [@js "installing"] | `U_s146_parsed of ServiceWorker.t [@js "parsed"] | `U_s166_redundant of ServiceWorker.t [@js "redundant"]] [@js.union on_field "state"])) union2, MessagePort.t) or_ or_null [@@js.get "source"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:ExtendableMessageEventInit.t -> unit -> t [@@js.create]
end
module ServiceWorkerGlobalScopeEventMap : sig
  type t = [`ServiceWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ServiceWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ServiceWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorkerGlobalScopeEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_activate: 'tags this -> ExtendableEvent.t [@@js.get "activate"]
  val set_activate: 'tags this -> ExtendableEvent.t -> unit [@@js.set "activate"]
  val get_fetch: 'tags this -> FetchEvent.t [@@js.get "fetch"]
  val set_fetch: 'tags this -> FetchEvent.t -> unit [@@js.set "fetch"]
  val get_install: 'tags this -> ExtendableEvent.t [@@js.get "install"]
  val set_install: 'tags this -> ExtendableEvent.t -> unit [@@js.set "install"]
  val get_message: 'tags this -> ExtendableMessageEvent.t [@@js.get "message"]
  val set_message: 'tags this -> ExtendableMessageEvent.t -> unit [@@js.set "message"]
  val get_messageerror: 'tags this -> MessageEvent.t_0 [@@js.get "messageerror"]
  val set_messageerror: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "messageerror"]
  val get_notificationclick: 'tags this -> NotificationEvent.t [@@js.get "notificationclick"]
  val set_notificationclick: 'tags this -> NotificationEvent.t -> unit [@@js.set "notificationclick"]
  val get_notificationclose: 'tags this -> NotificationEvent.t [@@js.get "notificationclose"]
  val set_notificationclose: 'tags this -> NotificationEvent.t -> unit [@@js.set "notificationclose"]
  val get_push: 'tags this -> PushEvent.t [@@js.get "push"]
  val set_push: 'tags this -> PushEvent.t -> unit [@@js.set "push"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ServiceWorkerEventMap : sig
  type t = [`AbstractWorkerEventMap | `ServiceWorkerEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbstractWorkerEventMap | `ServiceWorkerEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbstractWorkerEventMap | `ServiceWorkerEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorkerEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_statechange: 'tags this -> Event.t [@@js.get "statechange"]
  val set_statechange: 'tags this -> Event.t -> unit [@@js.set "statechange"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ServiceWorkerContainerEventMap : sig
  type t = [`ServiceWorkerContainerEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ServiceWorkerContainerEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ServiceWorkerContainerEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorkerContainerEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_controllerchange: 'tags this -> Event.t [@@js.get "controllerchange"]
  val set_controllerchange: 'tags this -> Event.t -> unit [@@js.set "controllerchange"]
  val get_message: 'tags this -> MessageEvent.t_0 [@@js.get "message"]
  val set_message: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "message"]
  val get_messageerror: 'tags this -> MessageEvent.t_0 [@@js.get "messageerror"]
  val set_messageerror: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "messageerror"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ReadableStreamReader : sig
  type 'T t = 'T ReadableStreamDefaultReader.t
  type 'T t_1 = 'T t
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
end
module PermissionStatusEventMap : sig
  type t = [`PermissionStatusEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PermissionStatusEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PermissionStatusEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PermissionStatusEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_change: 'tags this -> Event.t [@@js.get "change"]
  val set_change: 'tags this -> Event.t -> unit [@@js.set "change"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module PerformanceEventMap : sig
  type t = [`PerformanceEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_resourcetimingbufferfull: 'tags this -> Event.t [@@js.get "resourcetimingbufferfull"]
  val set_resourcetimingbufferfull: 'tags this -> Event.t -> unit [@@js.set "resourcetimingbufferfull"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module OnErrorEventHandlerNonNull : sig
  type t = [`OnErrorEventHandlerNonNull] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OnErrorEventHandlerNonNull]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OnErrorEventHandlerNonNull]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OnErrorEventHandlerNonNull ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> event:Event.t or_string -> ?source:string -> ?lineno:float -> ?colno:float -> ?error:Error.t_0 -> unit -> any [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module OnErrorEventHandler : sig
  type t = OnErrorEventHandlerNonNull.t or_null
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module OES_fbo_render_mipmap : sig
  type t = [`OES_fbo_render_mipmap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_fbo_render_mipmap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_fbo_render_mipmap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_fbo_render_mipmap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module NotificationEventMap : sig
  type t = [`NotificationEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NotificationEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NotificationEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `NotificationEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_click: 'tags this -> Event.t [@@js.get "click"]
  val set_click: 'tags this -> Event.t -> unit [@@js.set "click"]
  val get_close: 'tags this -> Event.t [@@js.get "close"]
  val set_close: 'tags this -> Event.t -> unit [@@js.set "close"]
  val get_error: 'tags this -> Event.t [@@js.get "error"]
  val set_error: 'tags this -> Event.t -> unit [@@js.set "error"]
  val get_show: 'tags this -> Event.t [@@js.get "show"]
  val set_show: 'tags this -> Event.t -> unit [@@js.set "show"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module MessagePortEventMap : sig
  type t = [`MessagePortEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MessagePortEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MessagePortEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MessagePortEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_message: 'tags this -> MessageEvent.t_0 [@@js.get "message"]
  val set_message: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "message"]
  val get_messageerror: 'tags this -> MessageEvent.t_0 [@@js.get "messageerror"]
  val set_messageerror: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "messageerror"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(**
  The type of `import.meta`.
  
  If you need to declare that a given property exists on `import.meta`,
  this type may be augmented via interface merging.
*)
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
  val get_url: 'tags this -> string [@@js.get "url"]
  val set_url: 'tags this -> string -> unit [@@js.set "url"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ImageBitmapRenderingContextSettings : sig
  type t = [`ImageBitmapRenderingContextSettings] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImageBitmapRenderingContextSettings]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImageBitmapRenderingContextSettings]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImageBitmapRenderingContextSettings ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_alpha: 'tags this -> bool [@@js.get "alpha"]
  val set_alpha: 'tags this -> bool -> unit [@@js.set "alpha"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module IDBTransactionEventMap : sig
  type t = [`IDBTransactionEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBTransactionEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBTransactionEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBTransactionEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_abort: 'tags this -> Event.t [@@js.get "abort"]
  val set_abort: 'tags this -> Event.t -> unit [@@js.set "abort"]
  val get_complete: 'tags this -> Event.t [@@js.get "complete"]
  val set_complete: 'tags this -> Event.t -> unit [@@js.set "complete"]
  val get_error: 'tags this -> Event.t [@@js.get "error"]
  val set_error: 'tags this -> Event.t -> unit [@@js.set "error"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module IDBRequestEventMap : sig
  type t = [`IDBRequestEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBRequestEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBRequestEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBRequestEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_error: 'tags this -> Event.t [@@js.get "error"]
  val set_error: 'tags this -> Event.t -> unit [@@js.set "error"]
  val get_success: 'tags this -> Event.t [@@js.get "success"]
  val set_success: 'tags this -> Event.t -> unit [@@js.set "success"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module IDBOpenDBRequestEventMap : sig
  type t = [`IDBOpenDBRequestEventMap | `IDBRequestEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBOpenDBRequestEventMap | `IDBRequestEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBOpenDBRequestEventMap | `IDBRequestEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBOpenDBRequestEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_blocked: 'tags this -> Event.t [@@js.get "blocked"]
  val set_blocked: 'tags this -> Event.t -> unit [@@js.set "blocked"]
  val get_upgradeneeded: 'tags this -> IDBVersionChangeEvent.t [@@js.get "upgradeneeded"]
  val set_upgradeneeded: 'tags this -> IDBVersionChangeEvent.t -> unit [@@js.set "upgradeneeded"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module IDBDatabaseEventMap : sig
  type t = [`IDBDatabaseEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBDatabaseEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBDatabaseEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBDatabaseEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_abort: 'tags this -> Event.t [@@js.get "abort"]
  val set_abort: 'tags this -> Event.t -> unit [@@js.set "abort"]
  val get_close: 'tags this -> Event.t [@@js.get "close"]
  val set_close: 'tags this -> Event.t -> unit [@@js.set "close"]
  val get_error: 'tags this -> Event.t [@@js.get "error"]
  val set_error: 'tags this -> Event.t -> unit [@@js.set "error"]
  val get_versionchange: 'tags this -> IDBVersionChangeEvent.t [@@js.get "versionchange"]
  val set_versionchange: 'tags this -> IDBVersionChangeEvent.t -> unit [@@js.set "versionchange"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module FontFaceSetEventMap : sig
  type t = [`FontFaceSetEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FontFaceSetEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FontFaceSetEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FontFaceSetEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_loading: 'tags this -> Event.t [@@js.get "loading"]
  val set_loading: 'tags this -> Event.t -> unit [@@js.set "loading"]
  val get_loadingdone: 'tags this -> Event.t [@@js.get "loadingdone"]
  val set_loadingdone: 'tags this -> Event.t -> unit [@@js.set "loadingdone"]
  val get_loadingerror: 'tags this -> Event.t [@@js.get "loadingerror"]
  val set_loadingerror: 'tags this -> Event.t -> unit [@@js.set "loadingerror"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface36 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FileReader.t [@@js.get "prototype"]
  val set_prototype: t -> FileReader.t -> unit [@@js.set "prototype"]
  val create: t -> FileReader.t [@@js.apply_newable]
  val get_DONE: t -> float [@@js.get "DONE"]
  val get_EMPTY: t -> float [@@js.get "EMPTY"]
  val get_LOADING: t -> float [@@js.get "LOADING"]
end

(** Lets web applications asynchronously read the contents of files (or raw data buffers) stored on the user's computer, using File or Blob objects to specify the file or data to read. *)
and[@js.scope "FileReader"] FileReader : sig
  type t = [`EventTarget | `FileReader] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `FileReader]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `FileReader]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FileReader ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_error: 'tags this -> DOMException.t or_null [@@js.get "error"]
  val get_onabort: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null [@@js.get "onabort"]
  val set_onabort: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null -> unit [@@js.set "onabort"]
  val get_onerror: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null -> unit [@@js.set "onerror"]
  val get_onload: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null [@@js.get "onload"]
  val set_onload: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null -> unit [@@js.set "onload"]
  val get_onloadend: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null [@@js.get "onloadend"]
  val set_onloadend: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null -> unit [@@js.set "onloadend"]
  val get_onloadstart: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null [@@js.get "onloadstart"]
  val set_onloadstart: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null -> unit [@@js.set "onloadstart"]
  val get_onprogress: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null [@@js.get "onprogress"]
  val set_onprogress: 'tags this -> (this:t -> ev:t ProgressEvent.t -> any) or_null -> unit [@@js.set "onprogress"]
  val get_readyState: 'tags this -> float [@@js.get "readyState"]
  val get_result: 'tags this -> ArrayBuffer.t_0 or_string or_null [@@js.get "result"]
  val abort: 'tags this -> unit [@@js.call "abort"]
  val readAsArrayBuffer: 'tags this -> blob:Blob.t -> unit [@@js.call "readAsArrayBuffer"]
  val readAsBinaryString: 'tags this -> blob:Blob.t -> unit [@@js.call "readAsBinaryString"]
  val readAsDataURL: 'tags this -> blob:Blob.t -> unit [@@js.call "readAsDataURL"]
  val readAsText: 'tags this -> blob:Blob.t -> ?encoding:string -> unit -> unit [@@js.call "readAsText"]
  val get_DONE: 'tags this -> float [@@js.get "DONE"]
  val get_EMPTY: 'tags this -> float [@@js.get "EMPTY"]
  val get_LOADING: 'tags this -> float [@@js.get "LOADING"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'FileReaderEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'FileReaderEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
  val done_: unit -> float [@@js.get "DONE"]
  val empty: unit -> float [@@js.get "EMPTY"]
  val loading: unit -> float [@@js.get "LOADING"]
end
module FileReaderEventMap : sig
  type t = [`FileReaderEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FileReaderEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FileReaderEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FileReaderEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_abort: 'tags this -> FileReader.t ProgressEvent.t [@@js.get "abort"]
  val set_abort: 'tags this -> FileReader.t ProgressEvent.t -> unit [@@js.set "abort"]
  val get_error: 'tags this -> FileReader.t ProgressEvent.t [@@js.get "error"]
  val set_error: 'tags this -> FileReader.t ProgressEvent.t -> unit [@@js.set "error"]
  val get_load: 'tags this -> FileReader.t ProgressEvent.t [@@js.get "load"]
  val set_load: 'tags this -> FileReader.t ProgressEvent.t -> unit [@@js.set "load"]
  val get_loadend: 'tags this -> FileReader.t ProgressEvent.t [@@js.get "loadend"]
  val set_loadend: 'tags this -> FileReader.t ProgressEvent.t -> unit [@@js.set "loadend"]
  val get_loadstart: 'tags this -> FileReader.t ProgressEvent.t [@@js.get "loadstart"]
  val set_loadstart: 'tags this -> FileReader.t ProgressEvent.t -> unit [@@js.set "loadstart"]
  val get_progress: 'tags this -> FileReader.t ProgressEvent.t [@@js.get "progress"]
  val set_progress: 'tags this -> FileReader.t ProgressEvent.t -> unit [@@js.set "progress"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EventSourceEventMap : sig
  type t = [`EventSourceEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventSourceEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventSourceEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventSourceEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_error: 'tags this -> Event.t [@@js.get "error"]
  val set_error: 'tags this -> Event.t -> unit [@@js.set "error"]
  val get_message: 'tags this -> MessageEvent.t_0 [@@js.get "message"]
  val set_message: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "message"]
  val get_open: 'tags this -> Event.t [@@js.get "open"]
  val set_open: 'tags this -> Event.t -> unit [@@js.set "open"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module GLenum : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module EXT_texture_compression_rgtc : sig
  type t = [`EXT_texture_compression_rgtc] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_texture_compression_rgtc]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_texture_compression_rgtc]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_texture_compression_rgtc ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_COMPRESSED_RED_GREEN_RGTC2_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RED_GREEN_RGTC2_EXT"]
  val get_COMPRESSED_RED_RGTC1_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RED_RGTC1_EXT"]
  val get_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT"]
  val get_COMPRESSED_SIGNED_RED_RGTC1_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SIGNED_RED_RGTC1_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module DedicatedWorkerGlobalScopeEventMap : sig
  type t = [`DedicatedWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DedicatedWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DedicatedWorkerGlobalScopeEventMap | `WorkerGlobalScopeEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DedicatedWorkerGlobalScopeEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_message: 'tags this -> MessageEvent.t_0 [@@js.get "message"]
  val set_message: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "message"]
  val get_messageerror: 'tags this -> MessageEvent.t_0 [@@js.get "messageerror"]
  val set_messageerror: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "messageerror"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module Console : sig
  type t = [`Console] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Console]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Console]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Console ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val assert_: 'tags this -> ?condition:bool -> data:(any list [@js.variadic]) -> unit -> unit [@@js.call "assert"]
  val clear: 'tags this -> unit [@@js.call "clear"]
  val count: 'tags this -> ?label:string -> unit -> unit [@@js.call "count"]
  val countReset: 'tags this -> ?label:string -> unit -> unit [@@js.call "countReset"]
  val debug: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "debug"]
  val dir: 'tags this -> ?item:any -> ?options:any -> unit -> unit [@@js.call "dir"]
  val dirxml: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "dirxml"]
  val error: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "error"]
  val group: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "group"]
  val groupCollapsed: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "groupCollapsed"]
  val groupEnd: 'tags this -> unit [@@js.call "groupEnd"]
  val info: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "info"]
  val log: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "log"]
  val table: 'tags this -> ?tabularData:any -> ?properties:string list -> unit -> unit [@@js.call "table"]
  val time: 'tags this -> ?label:string -> unit -> unit [@@js.call "time"]
  val timeEnd: 'tags this -> ?label:string -> unit -> unit [@@js.call "timeEnd"]
  val timeLog: 'tags this -> ?label:string -> data:(any list [@js.variadic]) -> unit -> unit [@@js.call "timeLog"]
  val timeStamp: 'tags this -> ?label:string -> unit -> unit [@@js.call "timeStamp"]
  val trace: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "trace"]
  val warn: 'tags this -> data:(any list [@js.variadic]) -> unit [@@js.call "warn"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module BroadcastChannelEventMap : sig
  type t = [`BroadcastChannelEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BroadcastChannelEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BroadcastChannelEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `BroadcastChannelEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_message: 'tags this -> MessageEvent.t_0 [@@js.get "message"]
  val set_message: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "message"]
  val get_messageerror: 'tags this -> MessageEvent.t_0 [@@js.get "messageerror"]
  val set_messageerror: 'tags this -> MessageEvent.t_0 -> unit [@@js.set "messageerror"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface133 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WorkerNavigator.t [@@js.get "prototype"]
  val set_prototype: t -> WorkerNavigator.t -> unit [@@js.set "prototype"]
  val create: t -> WorkerNavigator.t [@@js.apply_newable]
end

(** A subset of the Navigator interface allowed to be accessed from a Worker. Such an object is initialized for each worker and is available via the WorkerGlobalScope.navigator property obtained by calling window.self.navigator. *)
and[@js.scope "WorkerNavigator"] WorkerNavigator : sig
  type t = [`NavigatorConcurrentHardware | `NavigatorID | `NavigatorLanguage | `NavigatorNetworkInformation | `NavigatorOnLine | `NavigatorStorage | `WorkerNavigator] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`NavigatorConcurrentHardware | `NavigatorID | `NavigatorLanguage | `NavigatorNetworkInformation | `NavigatorOnLine | `NavigatorStorage | `WorkerNavigator]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NavigatorConcurrentHardware | `NavigatorID | `NavigatorLanguage | `NavigatorNetworkInformation | `NavigatorOnLine | `NavigatorStorage | `WorkerNavigator]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WorkerNavigator ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_mediaCapabilities: 'tags this -> MediaCapabilities.t [@@js.get "mediaCapabilities"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface132 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WorkerLocation.t [@@js.get "prototype"]
  val set_prototype: t -> WorkerLocation.t -> unit [@@js.set "prototype"]
  val create: t -> WorkerLocation.t [@@js.apply_newable]
end

(** The absolute location of the script executed by the Worker. Such an object is initialized for each worker and is available via the WorkerGlobalScope.location property obtained by calling self.location. *)
and[@js.scope "WorkerLocation"] WorkerLocation : sig
  type t = [`WorkerLocation] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WorkerLocation]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WorkerLocation]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WorkerLocation ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_hash: 'tags this -> string [@@js.get "hash"]
  val get_host: 'tags this -> string [@@js.get "host"]
  val get_hostname: 'tags this -> string [@@js.get "hostname"]
  val get_href: 'tags this -> string [@@js.get "href"]
  val toString: 'tags this -> string [@@js.call "toString"]
  val get_origin: 'tags this -> string [@@js.get "origin"]
  val get_pathname: 'tags this -> string [@@js.get "pathname"]
  val get_port: 'tags this -> string [@@js.get "port"]
  val get_protocol: 'tags this -> string [@@js.get "protocol"]
  val get_search: 'tags this -> string [@@js.get "search"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module VoidFunction : sig
  type t = [`VoidFunction] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`VoidFunction]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`VoidFunction]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `VoidFunction ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> unit [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module TimerHandler : sig
  type t = untyped_function or_string
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end

(** @deprecated this is not available in most browsers *)
module OffscreenCanvas : sig
  type t = [`EventTarget | `OffscreenCanvas] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `OffscreenCanvas]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `OffscreenCanvas]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OffscreenCanvas ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module CanvasImageSource : sig
  type t = (ImageBitmap.t, OffscreenCanvas.t) union2
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module PredefinedColorSpace : sig
  type t = ([`L_s183_srgb[@js "srgb"] | `L_s61_display_p3[@js "display-p3"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ImageDataSettings : sig
  type t = [`ImageDataSettings] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImageDataSettings]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImageDataSettings]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImageDataSettings ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_colorSpace: 'tags this -> PredefinedColorSpace.t [@@js.get "colorSpace"]
  val set_colorSpace: 'tags this -> PredefinedColorSpace.t -> unit [@@js.set "colorSpace"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface57 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ImageData.t [@@js.get "prototype"]
  val set_prototype: t -> ImageData.t -> unit [@@js.set "prototype"]
  val create: t -> sw:float -> sh:float -> ?settings:ImageDataSettings.t -> unit -> ImageData.t [@@js.apply_newable]
  val create': t -> data:Uint8ClampedArray.t_0 -> sw:float -> ?sh:float -> ?settings:ImageDataSettings.t -> unit -> ImageData.t [@@js.apply_newable]
end

(** The underlying pixel data of an area of a <canvas> element. It is created using the ImageData() constructor or creator methods on the CanvasRenderingContext2D object associated with a canvas: createImageData() and getImageData(). It can also be used to set a part of the canvas by using putImageData(). *)
and[@js.scope "ImageData"] ImageData : sig
  type t = [`ImageData] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImageData]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImageData]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImageData ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255. *)
  val get_data: 'tags this -> Uint8ClampedArray.t_0 [@@js.get "data"]
  
  (** Returns the actual dimensions of the data in the ImageData object, in pixels. *)
  val get_height: 'tags this -> float [@@js.get "height"]
  
  (** Returns the actual dimensions of the data in the ImageData object, in pixels. *)
  val get_width: 'tags this -> float [@@js.get "width"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: sw:float -> sh:float -> ?settings:ImageDataSettings.t -> unit -> t [@@js.create]
  val create': data:Uint8ClampedArray.t_0 -> sw:float -> ?sh:float -> ?settings:ImageDataSettings.t -> unit -> t [@@js.create]
end
module ImageBitmapSource : sig
  type t = (Blob.t, CanvasImageSource.t, ImageData.t) union3
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ResizeQuality : sig
  type t = ([`L_s106_low[@js "low"] | `L_s112_medium[@js "medium"] | `L_s149_pixelated[@js "pixelated"] | `L_s84_high[@js "high"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module PremultiplyAlpha : sig
  type t = ([`L_s128_none[@js "none"] | `L_s152_premultiply[@js "premultiply"] | `L_s57_default[@js "default"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ImageOrientation : sig
  type t = ([`L_s128_none[@js "none"] | `L_s74_flipY[@js "flipY"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ColorSpaceConversion : sig
  type t = ([`L_s128_none[@js "none"] | `L_s57_default[@js "default"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module ImageBitmapOptions : sig
  type t = [`ImageBitmapOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImageBitmapOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImageBitmapOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImageBitmapOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_colorSpaceConversion: 'tags this -> ColorSpaceConversion.t [@@js.get "colorSpaceConversion"]
  val set_colorSpaceConversion: 'tags this -> ColorSpaceConversion.t -> unit [@@js.set "colorSpaceConversion"]
  val get_imageOrientation: 'tags this -> ImageOrientation.t [@@js.get "imageOrientation"]
  val set_imageOrientation: 'tags this -> ImageOrientation.t -> unit [@@js.set "imageOrientation"]
  val get_premultiplyAlpha: 'tags this -> PremultiplyAlpha.t [@@js.get "premultiplyAlpha"]
  val set_premultiplyAlpha: 'tags this -> PremultiplyAlpha.t -> unit [@@js.set "premultiplyAlpha"]
  val get_resizeHeight: 'tags this -> float [@@js.get "resizeHeight"]
  val set_resizeHeight: 'tags this -> float -> unit [@@js.set "resizeHeight"]
  val get_resizeQuality: 'tags this -> ResizeQuality.t [@@js.get "resizeQuality"]
  val set_resizeQuality: 'tags this -> ResizeQuality.t -> unit [@@js.set "resizeQuality"]
  val get_resizeWidth: 'tags this -> float [@@js.get "resizeWidth"]
  val set_resizeWidth: 'tags this -> float -> unit [@@js.set "resizeWidth"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface47 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> IDBFactory.t [@@js.get "prototype"]
  val set_prototype: t -> IDBFactory.t -> unit [@@js.set "prototype"]
  val create: t -> IDBFactory.t [@@js.apply_newable]
end

(** In the following code snippet, we make a request to open a database, and include handlers for the success and error cases. For a full working example, see our To-do Notifications app (view example live.) *)
and[@js.scope "IDBFactory"] IDBFactory : sig
  type t = [`IDBFactory] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`IDBFactory]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`IDBFactory]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `IDBFactory ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Compares two values as keys. Returns -1 if key1 precedes key2, 1 if key2 precedes key1, and 0 if the keys are equal.
    
    Throws a "DataError" DOMException if either input is not a valid key.
  *)
  val cmp: 'tags this -> first:any -> second:any -> float [@@js.call "cmp"]
  val databases: 'tags this -> IDBDatabaseInfo.t list Promise.t_1 [@@js.call "databases"]
  
  (** Attempts to delete the named database. If the database already exists and there are open connections that don't close in response to a versionchange event, the request will be blocked until all they close. If the request is successful request's result will be null. *)
  val deleteDatabase: 'tags this -> name:string -> IDBOpenDBRequest.t [@@js.call "deleteDatabase"]
  
  (** Attempts to open a connection to the named database with the current version, or 1 if it does not already exist. If the request is successful request's result will be the connection. *)
  val open_: 'tags this -> name:string -> ?version:float -> unit -> IDBOpenDBRequest.t [@@js.call "open"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface14 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Crypto.t [@@js.get "prototype"]
  val set_prototype: t -> Crypto.t -> unit [@@js.set "prototype"]
  val create: t -> Crypto.t [@@js.apply_newable]
end

(** Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives. *)
and[@js.scope "Crypto"] Crypto : sig
  type t = [`Crypto] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Crypto]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Crypto]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Crypto ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Available only in secure contexts. *)
  val get_subtle: 'tags this -> SubtleCrypto.t [@@js.get "subtle"]
  val getRandomValues: 'tags this -> array:'T -> 'T [@@js.call "getRandomValues"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface6 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> CacheStorage.t [@@js.get "prototype"]
  val set_prototype: t -> CacheStorage.t -> unit [@@js.set "prototype"]
  val create: t -> CacheStorage.t [@@js.apply_newable]
end

(**
  The storage for Cache objects.
  Available only in secure contexts.
*)
and[@js.scope "CacheStorage"] CacheStorage : sig
  type t = [`CacheStorage] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CacheStorage]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CacheStorage]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CacheStorage ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val delete: 'tags this -> cacheName:string -> bool Promise.t_1 [@@js.call "delete"]
  val has: 'tags this -> cacheName:string -> bool Promise.t_1 [@@js.call "has"]
  val keys: 'tags this -> string list Promise.t_1 [@@js.call "keys"]
  val match_: 'tags this -> request:RequestInfo.t -> ?options:MultiCacheQueryOptions.t -> unit -> Response.t or_undefined Promise.t_1 [@@js.call "match"]
  val open_: 'tags this -> cacheName:string -> Cache.t Promise.t_1 [@@js.call "open"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module WindowOrWorkerGlobalScope : sig
  type t = [`WindowOrWorkerGlobalScope] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WindowOrWorkerGlobalScope]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WindowOrWorkerGlobalScope]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WindowOrWorkerGlobalScope ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Available only in secure contexts. *)
  val get_caches: 'tags this -> CacheStorage.t [@@js.get "caches"]
  val get_crossOriginIsolated: 'tags this -> bool [@@js.get "crossOriginIsolated"]
  val get_crypto: 'tags this -> Crypto.t [@@js.get "crypto"]
  val get_indexedDB: 'tags this -> IDBFactory.t [@@js.get "indexedDB"]
  val get_isSecureContext: 'tags this -> bool [@@js.get "isSecureContext"]
  val get_origin: 'tags this -> string [@@js.get "origin"]
  val get_performance: 'tags this -> Performance.t [@@js.get "performance"]
  val atob: 'tags this -> data:string -> string [@@js.call "atob"]
  val btoa: 'tags this -> data:string -> string [@@js.call "btoa"]
  val clearInterval: 'tags this -> ?handle:float -> unit -> unit [@@js.call "clearInterval"]
  val clearTimeout: 'tags this -> ?handle:float -> unit -> unit [@@js.call "clearTimeout"]
  val createImageBitmap: 'tags this -> image:ImageBitmapSource.t -> ?options:ImageBitmapOptions.t -> unit -> ImageBitmap.t Promise.t_1 [@@js.call "createImageBitmap"]
  val createImageBitmap': 'tags this -> image:ImageBitmapSource.t -> sx:float -> sy:float -> sw:float -> sh:float -> ?options:ImageBitmapOptions.t -> unit -> ImageBitmap.t Promise.t_1 [@@js.call "createImageBitmap"]
  val fetch: 'tags this -> input:RequestInfo.t -> ?init:RequestInit.t -> unit -> Response.t Promise.t_1 [@@js.call "fetch"]
  val queueMicrotask: 'tags this -> callback:VoidFunction.t -> unit [@@js.call "queueMicrotask"]
  val setInterval: 'tags this -> handler:TimerHandler.t -> ?timeout:float -> arguments:(any list [@js.variadic]) -> unit -> float [@@js.call "setInterval"]
  val setTimeout: 'tags this -> handler:TimerHandler.t -> ?timeout:float -> arguments:(any list [@js.variadic]) -> unit -> float [@@js.call "setTimeout"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module FontFaceSource : sig
  type t = [`FontFaceSource] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FontFaceSource]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FontFaceSource]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FontFaceSource ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_fonts: 'tags this -> FontFaceSet.t [@@js.get "fonts"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface131 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WorkerGlobalScope.t [@@js.get "prototype"]
  val set_prototype: t -> WorkerGlobalScope.t -> unit [@@js.set "prototype"]
  val create: t -> WorkerGlobalScope.t [@@js.apply_newable]
end

(** This Web Workers API interface is an interface representing the scope of any worker. Workers have no browsing context; this scope contains the information usually conveyed by Window objects — in this case event handlers, the console or the associated WorkerNavigator object. Each WorkerGlobalScope has its own event loop. *)
and[@js.scope "WorkerGlobalScope"] WorkerGlobalScope : sig
  type t = [`EventTarget | `FontFaceSource | `WindowOrWorkerGlobalScope | `WorkerGlobalScope] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `FontFaceSource | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `FontFaceSource | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WorkerGlobalScope ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns workerGlobal's WorkerLocation object. *)
  val get_location: 'tags this -> WorkerLocation.t [@@js.get "location"]
  
  (** Returns workerGlobal's WorkerNavigator object. *)
  val get_navigator: 'tags this -> WorkerNavigator.t [@@js.get "navigator"]
  val get_onerror: 'tags this -> (this:t -> ev:ErrorEvent.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:ErrorEvent.t -> any) or_null -> unit [@@js.set "onerror"]
  val get_onlanguagechange: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onlanguagechange"]
  val set_onlanguagechange: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onlanguagechange"]
  val get_onoffline: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onoffline"]
  val set_onoffline: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onoffline"]
  val get_ononline: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "ononline"]
  val set_ononline: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "ononline"]
  val get_onrejectionhandled: 'tags this -> (this:t -> ev:PromiseRejectionEvent.t -> any) or_null [@@js.get "onrejectionhandled"]
  val set_onrejectionhandled: 'tags this -> (this:t -> ev:PromiseRejectionEvent.t -> any) or_null -> unit [@@js.set "onrejectionhandled"]
  val get_onunhandledrejection: 'tags this -> (this:t -> ev:PromiseRejectionEvent.t -> any) or_null [@@js.get "onunhandledrejection"]
  val set_onunhandledrejection: 'tags this -> (this:t -> ev:PromiseRejectionEvent.t -> any) or_null -> unit [@@js.set "onunhandledrejection"]
  
  (** Returns workerGlobal. *)
  val get_self: 'tags this -> (t, (* FIXME: unknown type 'typeof globalThis' *)any) intersection2 [@@js.get "self"]
  
  (** Fetches each URL in urls, executes them one-by-one in the order they are passed, and then returns (or throws if something went amiss). *)
  val importScripts: 'tags this -> urls:(URL.t or_string list [@js.variadic]) -> unit [@@js.call "importScripts"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'WorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'WorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface98 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> SharedWorkerGlobalScope.t [@@js.get "prototype"]
  val set_prototype: t -> SharedWorkerGlobalScope.t -> unit [@@js.set "prototype"]
  val create: t -> SharedWorkerGlobalScope.t [@@js.apply_newable]
end
and[@js.scope "SharedWorkerGlobalScope"] SharedWorkerGlobalScope : sig
  type t = [`EventTarget | `FontFaceSource | `SharedWorkerGlobalScope | `WindowOrWorkerGlobalScope | `WorkerGlobalScope] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `FontFaceSource | `SharedWorkerGlobalScope | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `FontFaceSource | `SharedWorkerGlobalScope | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `SharedWorkerGlobalScope ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns sharedWorkerGlobal's name, i.e. the value given to the SharedWorker constructor. Multiple SharedWorker objects can correspond to the same shared worker (and SharedWorkerGlobalScope), by reusing the same name. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  val get_onconnect: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onconnect"]
  val set_onconnect: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onconnect"]
  
  (** Aborts sharedWorkerGlobal. *)
  val close: 'tags this -> unit [@@js.call "close"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'SharedWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'SharedWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module GetNotificationOptions : sig
  type t = [`GetNotificationOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`GetNotificationOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`GetNotificationOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `GetNotificationOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_tag: 'tags this -> string [@@js.get "tag"]
  val set_tag: 'tags this -> string -> unit [@@js.set "tag"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module ServiceWorkerUpdateViaCache : sig
  type t = ([`L_s128_none[@js "none"] | `L_s35_all[@js "all"] | `L_s91_imports[@js "imports"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module PushSubscriptionOptionsInit : sig
  type t = [`PushSubscriptionOptionsInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PushSubscriptionOptionsInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PushSubscriptionOptionsInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushSubscriptionOptionsInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_applicationServerKey: 'tags this -> BufferSource.t or_string or_null [@@js.get "applicationServerKey"]
  val set_applicationServerKey: 'tags this -> BufferSource.t or_string or_null -> unit [@@js.set "applicationServerKey"]
  val get_userVisibleOnly: 'tags this -> bool [@@js.get "userVisibleOnly"]
  val set_userVisibleOnly: 'tags this -> bool -> unit [@@js.set "userVisibleOnly"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface86 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PushSubscriptionOptions.t [@@js.get "prototype"]
  val set_prototype: t -> PushSubscriptionOptions.t -> unit [@@js.set "prototype"]
  val create: t -> PushSubscriptionOptions.t [@@js.apply_newable]
end

(** Available only in secure contexts. *)
and[@js.scope "PushSubscriptionOptions"] PushSubscriptionOptions : sig
  type t = [`PushSubscriptionOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PushSubscriptionOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PushSubscriptionOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushSubscriptionOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_applicationServerKey: 'tags this -> ArrayBuffer.t_0 or_null [@@js.get "applicationServerKey"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module PushSubscriptionJSON : sig
  type t = [`PushSubscriptionJSON] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PushSubscriptionJSON]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PushSubscriptionJSON]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushSubscriptionJSON ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_endpoint: 'tags this -> string [@@js.get "endpoint"]
  val set_endpoint: 'tags this -> string -> unit [@@js.set "endpoint"]
  val get_expirationTime: 'tags this -> DOMTimeStamp.t or_null [@@js.get "expirationTime"]
  val set_expirationTime: 'tags this -> DOMTimeStamp.t or_null -> unit [@@js.set "expirationTime"]
  val get_keys: 'tags this -> (string, string) Record.t_2 [@@js.get "keys"]
  val set_keys: 'tags this -> (string, string) Record.t_2 -> unit [@@js.set "keys"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module PushEncryptionKeyName : sig
  type t = ([`L_s143_p256dh[@js "p256dh"] | `L_s40_auth[@js "auth"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface85 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PushSubscription.t [@@js.get "prototype"]
  val set_prototype: t -> PushSubscription.t -> unit [@@js.set "prototype"]
  val create: t -> PushSubscription.t [@@js.apply_newable]
end

(**
  This Push API interface provides a subcription's URL endpoint and allows unsubscription from a push service.
  Available only in secure contexts.
*)
and[@js.scope "PushSubscription"] PushSubscription : sig
  type t = [`PushSubscription] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PushSubscription]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PushSubscription]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushSubscription ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_endpoint: 'tags this -> string [@@js.get "endpoint"]
  val get_options: 'tags this -> PushSubscriptionOptions.t [@@js.get "options"]
  val getKey: 'tags this -> name:PushEncryptionKeyName.t -> ArrayBuffer.t_0 or_null [@@js.call "getKey"]
  val toJSON: 'tags this -> PushSubscriptionJSON.t [@@js.call "toJSON"]
  val unsubscribe: 'tags this -> bool Promise.t_1 [@@js.call "unsubscribe"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module PushPermissionState : sig
  type t = ([`L_s157_prompt[@js "prompt"] | `L_s58_denied[@js "denied"] | `L_s82_granted[@js "granted"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface83 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PushManager.t [@@js.get "prototype"]
  val set_prototype: t -> PushManager.t -> unit [@@js.set "prototype"]
  val create: t -> PushManager.t [@@js.apply_newable]
  val get_supportedContentEncodings: t -> string list [@@js.get "supportedContentEncodings"]
end

(**
  This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
  Available only in secure contexts.
*)
and[@js.scope "PushManager"] PushManager : sig
  type t = [`PushManager] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PushManager]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PushManager]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PushManager ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val getSubscription: 'tags this -> PushSubscription.t or_null Promise.t_1 [@@js.call "getSubscription"]
  val permissionState: 'tags this -> ?options:PushSubscriptionOptionsInit.t -> unit -> PushPermissionState.t Promise.t_1 [@@js.call "permissionState"]
  val subscribe: 'tags this -> ?options:PushSubscriptionOptionsInit.t -> unit -> PushSubscription.t Promise.t_1 [@@js.call "subscribe"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
  val supportedContentEncodings: unit -> string list [@@js.get "supportedContentEncodings"]
end
module rec AnonymousInterface97 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ServiceWorkerRegistration.t [@@js.get "prototype"]
  val set_prototype: t -> ServiceWorkerRegistration.t -> unit [@@js.set "prototype"]
  val create: t -> ServiceWorkerRegistration.t [@@js.apply_newable]
end

(**
  This ServiceWorker API interface represents the service worker registration. You register a service worker to control one or more pages that share the same origin.
  Available only in secure contexts.
*)
and[@js.scope "ServiceWorkerRegistration"] ServiceWorkerRegistration : sig
  type t = [`EventTarget | `ServiceWorkerRegistration] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `ServiceWorkerRegistration]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `ServiceWorkerRegistration]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorkerRegistration ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_active: 'tags this -> ServiceWorker.t or_null [@@js.get "active"]
  val get_installing: 'tags this -> ServiceWorker.t or_null [@@js.get "installing"]
  val get_onupdatefound: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onupdatefound"]
  val set_onupdatefound: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onupdatefound"]
  val get_pushManager: 'tags this -> PushManager.t [@@js.get "pushManager"]
  val get_scope: 'tags this -> string [@@js.get "scope"]
  val get_updateViaCache: 'tags this -> ServiceWorkerUpdateViaCache.t [@@js.get "updateViaCache"]
  val get_waiting: 'tags this -> ServiceWorker.t or_null [@@js.get "waiting"]
  val getNotifications: 'tags this -> ?filter:GetNotificationOptions.t -> unit -> Notification.t list Promise.t_1 [@@js.call "getNotifications"]
  val showNotification: 'tags this -> title:string -> ?options:NotificationOptions.t -> unit -> unit Promise.t_1 [@@js.call "showNotification"]
  val unregister: 'tags this -> bool Promise.t_1 [@@js.call "unregister"]
  val update: 'tags this -> unit Promise.t_1 [@@js.call "update"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerRegistrationEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerRegistrationEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module VisibilityState : sig
  type t = ([`L_s205_visible[@js "visible"] | `L_s83_hidden[@js "hidden"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface129 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WindowClient.t [@@js.get "prototype"]
  val set_prototype: t -> WindowClient.t -> unit [@@js.set "prototype"]
  val create: t -> WindowClient.t [@@js.apply_newable]
end

(** This ServiceWorker API interface represents the scope of a service worker client that is a document in a browser context, controlled by an active worker. The service worker client independently selects and uses a service worker for its own loading and sub-resources. *)
and[@js.scope "WindowClient"] WindowClient : sig
  type t = [`Client | `WindowClient] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Client | `WindowClient]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Client | `WindowClient]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WindowClient ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_focused: 'tags this -> bool [@@js.get "focused"]
  val get_visibilityState: 'tags this -> VisibilityState.t [@@js.get "visibilityState"]
  val focus: 'tags this -> t Promise.t_1 [@@js.call "focus"]
  val navigate: 'tags this -> url:URL.t or_string -> t or_null Promise.t_1 [@@js.call "navigate"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module ClientQueryOptions : sig
  type t = [`ClientQueryOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ClientQueryOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ClientQueryOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ClientQueryOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_includeUncontrolled: 'tags this -> bool [@@js.get "includeUncontrolled"]
  val set_includeUncontrolled: 'tags this -> bool -> unit [@@js.set "includeUncontrolled"]
  val get_type: 'tags this -> ClientTypes.t [@@js.get "type"]
  val set_type: 'tags this -> ClientTypes.t -> unit [@@js.set "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface10 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Clients.t [@@js.get "prototype"]
  val set_prototype: t -> Clients.t -> unit [@@js.set "prototype"]
  val create: t -> Clients.t [@@js.apply_newable]
end

(** Provides access to Client objects. Access it via self.clients within a service worker. *)
and[@js.scope "Clients"] Clients : sig
  type t = [`Clients] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Clients]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Clients]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Clients ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val claim: 'tags this -> unit Promise.t_1 [@@js.call "claim"]
  val get_: 'tags this -> id:string -> Client.t or_undefined Promise.t_1 [@@js.call "get"]
  val matchAll: 'tags this -> ?options:'T -> unit -> (* FIXME: unknown type 'T["type"] extends "window" ? WindowClient : Client' *)any list Promise.t_1 [@@js.call "matchAll"]
  val openWindow: 'tags this -> url:URL.t or_string -> WindowClient.t or_null Promise.t_1 [@@js.call "openWindow"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface96 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ServiceWorkerGlobalScope.t [@@js.get "prototype"]
  val set_prototype: t -> ServiceWorkerGlobalScope.t -> unit [@@js.set "prototype"]
  val create: t -> ServiceWorkerGlobalScope.t [@@js.apply_newable]
end

(** This ServiceWorker API interface represents the global execution context of a service worker. *)
and[@js.scope "ServiceWorkerGlobalScope"] ServiceWorkerGlobalScope : sig
  type t = [`EventTarget | `FontFaceSource | `ServiceWorkerGlobalScope | `WindowOrWorkerGlobalScope | `WorkerGlobalScope] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `FontFaceSource | `ServiceWorkerGlobalScope | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `FontFaceSource | `ServiceWorkerGlobalScope | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorkerGlobalScope ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_clients: 'tags this -> Clients.t [@@js.get "clients"]
  val get_onactivate: 'tags this -> (this:t -> ev:ExtendableEvent.t -> any) or_null [@@js.get "onactivate"]
  val set_onactivate: 'tags this -> (this:t -> ev:ExtendableEvent.t -> any) or_null -> unit [@@js.set "onactivate"]
  val get_onfetch: 'tags this -> (this:t -> ev:FetchEvent.t -> any) or_null [@@js.get "onfetch"]
  val set_onfetch: 'tags this -> (this:t -> ev:FetchEvent.t -> any) or_null -> unit [@@js.set "onfetch"]
  val get_oninstall: 'tags this -> (this:t -> ev:ExtendableEvent.t -> any) or_null [@@js.get "oninstall"]
  val set_oninstall: 'tags this -> (this:t -> ev:ExtendableEvent.t -> any) or_null -> unit [@@js.set "oninstall"]
  val get_onmessage: 'tags this -> (this:t -> ev:ExtendableMessageEvent.t -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:ExtendableMessageEvent.t -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessageerror"]
  val set_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessageerror"]
  val get_onnotificationclick: 'tags this -> (this:t -> ev:NotificationEvent.t -> any) or_null [@@js.get "onnotificationclick"]
  val set_onnotificationclick: 'tags this -> (this:t -> ev:NotificationEvent.t -> any) or_null -> unit [@@js.set "onnotificationclick"]
  val get_onnotificationclose: 'tags this -> (this:t -> ev:NotificationEvent.t -> any) or_null [@@js.get "onnotificationclose"]
  val set_onnotificationclose: 'tags this -> (this:t -> ev:NotificationEvent.t -> any) or_null -> unit [@@js.set "onnotificationclose"]
  val get_onpush: 'tags this -> (this:t -> ev:PushEvent.t -> any) or_null [@@js.get "onpush"]
  val set_onpush: 'tags this -> (this:t -> ev:PushEvent.t -> any) or_null -> unit [@@js.set "onpush"]
  val get_registration: 'tags this -> ServiceWorkerRegistration.t [@@js.get "registration"]
  val skipWaiting: 'tags this -> unit Promise.t_1 [@@js.call "skipWaiting"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module WorkerType : sig
  type t = ([`L_s117_module[@js "module"] | `L_s49_classic[@js "classic"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module RegistrationOptions : sig
  type t = [`RegistrationOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`RegistrationOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`RegistrationOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `RegistrationOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_scope: 'tags this -> string [@@js.get "scope"]
  val set_scope: 'tags this -> string -> unit [@@js.set "scope"]
  val get_type: 'tags this -> WorkerType.t [@@js.get "type"]
  val set_type: 'tags this -> WorkerType.t -> unit [@@js.set "type"]
  val get_updateViaCache: 'tags this -> ServiceWorkerUpdateViaCache.t [@@js.get "updateViaCache"]
  val set_updateViaCache: 'tags this -> ServiceWorkerUpdateViaCache.t -> unit [@@js.set "updateViaCache"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface95 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ServiceWorkerContainer.t [@@js.get "prototype"]
  val set_prototype: t -> ServiceWorkerContainer.t -> unit [@@js.set "prototype"]
  val create: t -> ServiceWorkerContainer.t [@@js.apply_newable]
end

(**
  The ServiceWorkerContainer interface of the ServiceWorker API provides an object representing the service worker as an overall unit in the network ecosystem, including facilities to register, unregister and update service workers, and access the state of service workers and their registrations.
  Available only in secure contexts.
*)
and[@js.scope "ServiceWorkerContainer"] ServiceWorkerContainer : sig
  type t = [`EventTarget | `ServiceWorkerContainer] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `ServiceWorkerContainer]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `ServiceWorkerContainer]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ServiceWorkerContainer ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_controller: 'tags this -> ServiceWorker.t or_null [@@js.get "controller"]
  val get_oncontrollerchange: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "oncontrollerchange"]
  val set_oncontrollerchange: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "oncontrollerchange"]
  val get_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessageerror"]
  val set_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessageerror"]
  val get_ready: 'tags this -> ServiceWorkerRegistration.t Promise.t_1 [@@js.get "ready"]
  val getRegistration: 'tags this -> ?clientURL:URL.t or_string -> unit -> ServiceWorkerRegistration.t or_undefined Promise.t_1 [@@js.call "getRegistration"]
  val getRegistrations: 'tags this -> ServiceWorkerRegistration.t list Promise.t_1 [@@js.call "getRegistrations"]
  val register: 'tags this -> scriptURL:URL.t or_string -> ?options:RegistrationOptions.t -> unit -> ServiceWorkerRegistration.t Promise.t_1 [@@js.call "register"]
  val startMessages: 'tags this -> unit [@@js.call "startMessages"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerContainerEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'ServiceWorkerContainerEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module SecurityPolicyViolationEventDisposition : sig
  type t = ([`L_s169_report[@js "report"] | `L_s66_enforce[@js "enforce"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module SecurityPolicyViolationEventInit : sig
  type t = [`EventInit | `SecurityPolicyViolationEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `SecurityPolicyViolationEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `SecurityPolicyViolationEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `SecurityPolicyViolationEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_blockedURI: 'tags this -> string [@@js.get "blockedURI"]
  val set_blockedURI: 'tags this -> string -> unit [@@js.set "blockedURI"]
  val get_columnNumber: 'tags this -> float [@@js.get "columnNumber"]
  val set_columnNumber: 'tags this -> float -> unit [@@js.set "columnNumber"]
  val get_disposition: 'tags this -> SecurityPolicyViolationEventDisposition.t [@@js.get "disposition"]
  val set_disposition: 'tags this -> SecurityPolicyViolationEventDisposition.t -> unit [@@js.set "disposition"]
  val get_documentURI: 'tags this -> string [@@js.get "documentURI"]
  val set_documentURI: 'tags this -> string -> unit [@@js.set "documentURI"]
  val get_effectiveDirective: 'tags this -> string [@@js.get "effectiveDirective"]
  val set_effectiveDirective: 'tags this -> string -> unit [@@js.set "effectiveDirective"]
  val get_lineNumber: 'tags this -> float [@@js.get "lineNumber"]
  val set_lineNumber: 'tags this -> float -> unit [@@js.set "lineNumber"]
  val get_originalPolicy: 'tags this -> string [@@js.get "originalPolicy"]
  val set_originalPolicy: 'tags this -> string -> unit [@@js.set "originalPolicy"]
  val get_referrer: 'tags this -> string [@@js.get "referrer"]
  val set_referrer: 'tags this -> string -> unit [@@js.set "referrer"]
  val get_sample: 'tags this -> string [@@js.get "sample"]
  val set_sample: 'tags this -> string -> unit [@@js.set "sample"]
  val get_sourceFile: 'tags this -> string [@@js.get "sourceFile"]
  val set_sourceFile: 'tags this -> string -> unit [@@js.set "sourceFile"]
  val get_statusCode: 'tags this -> float [@@js.get "statusCode"]
  val set_statusCode: 'tags this -> float -> unit [@@js.set "statusCode"]
  val get_violatedDirective: 'tags this -> string [@@js.get "violatedDirective"]
  val set_violatedDirective: 'tags this -> string -> unit [@@js.set "violatedDirective"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface93 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> SecurityPolicyViolationEvent.t [@@js.get "prototype"]
  val set_prototype: t -> SecurityPolicyViolationEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:SecurityPolicyViolationEventInit.t -> unit -> SecurityPolicyViolationEvent.t [@@js.apply_newable]
end

(** Inherits from Event, and represents the event object of an event sent on a document or worker when its content security policy is violated. *)
and[@js.scope "SecurityPolicyViolationEvent"] SecurityPolicyViolationEvent : sig
  type t = [`Event | `SecurityPolicyViolationEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `SecurityPolicyViolationEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `SecurityPolicyViolationEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `SecurityPolicyViolationEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_blockedURI: 'tags this -> string [@@js.get "blockedURI"]
  val get_columnNumber: 'tags this -> float [@@js.get "columnNumber"]
  val get_disposition: 'tags this -> SecurityPolicyViolationEventDisposition.t [@@js.get "disposition"]
  val get_documentURI: 'tags this -> string [@@js.get "documentURI"]
  val get_effectiveDirective: 'tags this -> string [@@js.get "effectiveDirective"]
  val get_lineNumber: 'tags this -> float [@@js.get "lineNumber"]
  val get_originalPolicy: 'tags this -> string [@@js.get "originalPolicy"]
  val get_referrer: 'tags this -> string [@@js.get "referrer"]
  val get_sample: 'tags this -> string [@@js.get "sample"]
  val get_sourceFile: 'tags this -> string [@@js.get "sourceFile"]
  val get_statusCode: 'tags this -> float [@@js.get "statusCode"]
  val get_violatedDirective: 'tags this -> string [@@js.get "violatedDirective"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:SecurityPolicyViolationEventInit.t -> unit -> t [@@js.create]
end
module DOMMatrix2DInit : sig
  type t = [`DOMMatrix2DInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMMatrix2DInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMMatrix2DInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMMatrix2DInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_a: 'tags this -> float [@@js.get "a"]
  val set_a: 'tags this -> float -> unit [@@js.set "a"]
  val get_b: 'tags this -> float [@@js.get "b"]
  val set_b: 'tags this -> float -> unit [@@js.set "b"]
  val get_c: 'tags this -> float [@@js.get "c"]
  val set_c: 'tags this -> float -> unit [@@js.set "c"]
  val get_d: 'tags this -> float [@@js.get "d"]
  val set_d: 'tags this -> float -> unit [@@js.set "d"]
  val get_e: 'tags this -> float [@@js.get "e"]
  val set_e: 'tags this -> float -> unit [@@js.set "e"]
  val get_f: 'tags this -> float [@@js.get "f"]
  val set_f: 'tags this -> float -> unit [@@js.set "f"]
  val get_m11: 'tags this -> float [@@js.get "m11"]
  val set_m11: 'tags this -> float -> unit [@@js.set "m11"]
  val get_m12: 'tags this -> float [@@js.get "m12"]
  val set_m12: 'tags this -> float -> unit [@@js.set "m12"]
  val get_m21: 'tags this -> float [@@js.get "m21"]
  val set_m21: 'tags this -> float -> unit [@@js.set "m21"]
  val get_m22: 'tags this -> float [@@js.get "m22"]
  val set_m22: 'tags this -> float -> unit [@@js.set "m22"]
  val get_m41: 'tags this -> float [@@js.get "m41"]
  val set_m41: 'tags this -> float -> unit [@@js.set "m41"]
  val get_m42: 'tags this -> float [@@js.get "m42"]
  val set_m42: 'tags this -> float -> unit [@@js.set "m42"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface8 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> CanvasPattern.t [@@js.get "prototype"]
  val set_prototype: t -> CanvasPattern.t -> unit [@@js.set "prototype"]
  val create: t -> CanvasPattern.t [@@js.apply_newable]
end

(** An opaque object describing a pattern, based on an image, a canvas, or a video, created by the CanvasRenderingContext2D.createPattern() method. *)
and[@js.scope "CanvasPattern"] CanvasPattern : sig
  type t = [`CanvasPattern] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CanvasPattern]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CanvasPattern]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CanvasPattern ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Sets the transformation matrix that will be used when rendering the pattern during a fill or stroke painting operation. *)
  val setTransform: 'tags this -> ?transform:DOMMatrix2DInit.t -> unit -> unit [@@js.call "setTransform"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module PermissionName : sig
  type t = ([`L_s131_notifications[@js "notifications"] | `L_s148_persistent_storage[@js "persistent-storage"] | `L_s159_push[@js "push"] | `L_s173_screen_wake_lock[@js "screen-wake-lock"] | `L_s211_xr_spatial_tracking[@js "xr-spatial-tracking"] | `L_s80_geolocation[@js "geolocation"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module PermissionDescriptor : sig
  type t = [`PermissionDescriptor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PermissionDescriptor]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PermissionDescriptor]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PermissionDescriptor ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_name: 'tags this -> PermissionName.t [@@js.get "name"]
  val set_name: 'tags this -> PermissionName.t -> unit [@@js.set "name"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module PermissionState : sig
  type t = ([`L_s157_prompt[@js "prompt"] | `L_s58_denied[@js "denied"] | `L_s82_granted[@js "granted"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface78 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PermissionStatus.t [@@js.get "prototype"]
  val set_prototype: t -> PermissionStatus.t -> unit [@@js.set "prototype"]
  val create: t -> PermissionStatus.t [@@js.apply_newable]
end
and[@js.scope "PermissionStatus"] PermissionStatus : sig
  type t = [`EventTarget | `PermissionStatus] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `PermissionStatus]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `PermissionStatus]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PermissionStatus ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onchange: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onchange"]
  val set_onchange: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onchange"]
  val get_state: 'tags this -> PermissionState.t [@@js.get "state"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'PermissionStatusEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'PermissionStatusEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface79 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Permissions.t [@@js.get "prototype"]
  val set_prototype: t -> Permissions.t -> unit [@@js.set "prototype"]
  val create: t -> Permissions.t [@@js.apply_newable]
end
and[@js.scope "Permissions"] Permissions : sig
  type t = [`Permissions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Permissions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Permissions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Permissions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val query: 'tags this -> permissionDesc:PermissionDescriptor.t -> PermissionStatus.t Promise.t_1 [@@js.call "query"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface77 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PerformanceServerTiming.t [@@js.get "prototype"]
  val set_prototype: t -> PerformanceServerTiming.t -> unit [@@js.set "prototype"]
  val create: t -> PerformanceServerTiming.t [@@js.apply_newable]
end
and[@js.scope "PerformanceServerTiming"] PerformanceServerTiming : sig
  type t = [`PerformanceServerTiming] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceServerTiming]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceServerTiming]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceServerTiming ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_description: 'tags this -> string [@@js.get "description"]
  val get_duration: 'tags this -> DOMHighResTimeStamp.t [@@js.get "duration"]
  val get_name: 'tags this -> string [@@js.get "name"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface76 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PerformanceResourceTiming.t [@@js.get "prototype"]
  val set_prototype: t -> PerformanceResourceTiming.t -> unit [@@js.set "prototype"]
  val create: t -> PerformanceResourceTiming.t [@@js.apply_newable]
end

(** Enables retrieval and analysis of detailed network timing data regarding the loading of an application's resources. An application can use the timing metrics to determine, for example, the length of time it takes to fetch a specific resource, such as an XMLHttpRequest, <SVG>, image, or script. *)
and[@js.scope "PerformanceResourceTiming"] PerformanceResourceTiming : sig
  type t = [`PerformanceEntry | `PerformanceResourceTiming] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceEntry | `PerformanceResourceTiming]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceEntry | `PerformanceResourceTiming]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceResourceTiming ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_connectEnd: 'tags this -> DOMHighResTimeStamp.t [@@js.get "connectEnd"]
  val get_connectStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "connectStart"]
  val get_decodedBodySize: 'tags this -> float [@@js.get "decodedBodySize"]
  val get_domainLookupEnd: 'tags this -> DOMHighResTimeStamp.t [@@js.get "domainLookupEnd"]
  val get_domainLookupStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "domainLookupStart"]
  val get_encodedBodySize: 'tags this -> float [@@js.get "encodedBodySize"]
  val get_fetchStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "fetchStart"]
  val get_initiatorType: 'tags this -> string [@@js.get "initiatorType"]
  val get_nextHopProtocol: 'tags this -> string [@@js.get "nextHopProtocol"]
  val get_redirectEnd: 'tags this -> DOMHighResTimeStamp.t [@@js.get "redirectEnd"]
  val get_redirectStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "redirectStart"]
  val get_requestStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "requestStart"]
  val get_responseEnd: 'tags this -> DOMHighResTimeStamp.t [@@js.get "responseEnd"]
  val get_responseStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "responseStart"]
  val get_secureConnectionStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "secureConnectionStart"]
  val get_serverTiming: 'tags this -> PerformanceServerTiming.t list [@@js.get "serverTiming"]
  val get_transferSize: 'tags this -> float [@@js.get "transferSize"]
  val get_workerStart: 'tags this -> DOMHighResTimeStamp.t [@@js.get "workerStart"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module PerformanceObserverInit : sig
  type t = [`PerformanceObserverInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceObserverInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceObserverInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceObserverInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_buffered: 'tags this -> bool [@@js.get "buffered"]
  val set_buffered: 'tags this -> bool -> unit [@@js.set "buffered"]
  val get_entryTypes: 'tags this -> string list [@@js.get "entryTypes"]
  val set_entryTypes: 'tags this -> string list -> unit [@@js.set "entryTypes"]
  val get_type: 'tags this -> string [@@js.get "type"]
  val set_type: 'tags this -> string -> unit [@@js.set "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface75 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PerformanceObserverEntryList.t [@@js.get "prototype"]
  val set_prototype: t -> PerformanceObserverEntryList.t -> unit [@@js.set "prototype"]
  val create: t -> PerformanceObserverEntryList.t [@@js.apply_newable]
end
and[@js.scope "PerformanceObserverEntryList"] PerformanceObserverEntryList : sig
  type t = [`PerformanceObserverEntryList] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceObserverEntryList]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceObserverEntryList]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceObserverEntryList ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val getEntries: 'tags this -> PerformanceEntryList.t [@@js.call "getEntries"]
  val getEntriesByName: 'tags this -> name:string -> ?type_:string -> unit -> PerformanceEntryList.t [@@js.call "getEntriesByName"]
  val getEntriesByType: 'tags this -> type_:string -> PerformanceEntryList.t [@@js.call "getEntriesByType"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface74 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> PerformanceObserver.t [@@js.get "prototype"]
  val set_prototype: t -> PerformanceObserver.t -> unit [@@js.set "prototype"]
  val create: t -> callback:PerformanceObserverCallback.t -> PerformanceObserver.t [@@js.apply_newable]
  val get_supportedEntryTypes: t -> string list [@@js.get "supportedEntryTypes"]
end
and[@js.scope "PerformanceObserver"] PerformanceObserver : sig
  type t = [`PerformanceObserver] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceObserver]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceObserver]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceObserver ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val disconnect: 'tags this -> unit [@@js.call "disconnect"]
  val observe: 'tags this -> ?options:PerformanceObserverInit.t -> unit -> unit [@@js.call "observe"]
  val takeRecords: 'tags this -> PerformanceEntryList.t [@@js.call "takeRecords"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: PerformanceObserverCallback.t -> t [@@js.create]
  val supportedEntryTypes: unit -> string list [@@js.get "supportedEntryTypes"]
end
and PerformanceObserverCallback : sig
  type t = [`PerformanceObserverCallback] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`PerformanceObserverCallback]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`PerformanceObserverCallback]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `PerformanceObserverCallback ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> entries:PerformanceObserverEntryList.t -> observer:PerformanceObserver.t -> unit [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface7 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> CanvasGradient.t [@@js.get "prototype"]
  val set_prototype: t -> CanvasGradient.t -> unit [@@js.set "prototype"]
  val create: t -> CanvasGradient.t [@@js.apply_newable]
end

(** An opaque object describing a gradient. It is returned by the methods CanvasRenderingContext2D.createLinearGradient() or CanvasRenderingContext2D.createRadialGradient(). *)
and[@js.scope "CanvasGradient"] CanvasGradient : sig
  type t = [`CanvasGradient] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CanvasGradient]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CanvasGradient]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CanvasGradient ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Adds a color stop with the given color to the gradient at the given offset. 0.0 is the offset at one end of the gradient, 1.0 is the offset at the other end.
    
    Throws an "IndexSizeError" DOMException if the offset is out of range. Throws a "SyntaxError" DOMException if the color cannot be parsed.
  *)
  val addColorStop: 'tags this -> offset:float -> color:string -> unit [@@js.call "addColorStop"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module CanvasPath : sig
  type t = [`CanvasPath] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CanvasPath]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CanvasPath]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CanvasPath ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val arc: 'tags this -> x:float -> y:float -> radius:float -> startAngle:float -> endAngle:float -> ?counterclockwise:bool -> unit -> unit [@@js.call "arc"]
  val arcTo: 'tags this -> x1:float -> y1:float -> x2:float -> y2:float -> radius:float -> unit [@@js.call "arcTo"]
  val bezierCurveTo: 'tags this -> cp1x:float -> cp1y:float -> cp2x:float -> cp2y:float -> x:float -> y:float -> unit [@@js.call "bezierCurveTo"]
  val closePath: 'tags this -> unit [@@js.call "closePath"]
  val ellipse: 'tags this -> x:float -> y:float -> radiusX:float -> radiusY:float -> rotation:float -> startAngle:float -> endAngle:float -> ?counterclockwise:bool -> unit -> unit [@@js.call "ellipse"]
  val lineTo: 'tags this -> x:float -> y:float -> unit [@@js.call "lineTo"]
  val moveTo: 'tags this -> x:float -> y:float -> unit [@@js.call "moveTo"]
  val quadraticCurveTo: 'tags this -> cpx:float -> cpy:float -> x:float -> y:float -> unit [@@js.call "quadraticCurveTo"]
  val rect: 'tags this -> x:float -> y:float -> w:float -> h:float -> unit [@@js.call "rect"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface69 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Path2D.t [@@js.get "prototype"]
  val set_prototype: t -> Path2D.t -> unit [@@js.set "prototype"]
  val create: t -> ?path:Path2D.t or_string -> unit -> Path2D.t [@@js.apply_newable]
end

(** This Canvas 2D API interface is used to declare a path that can then be used on a CanvasRenderingContext2D object. The path methods of the CanvasRenderingContext2D interface are also present on this interface, which gives you the convenience of being able to retain and replay your path whenever desired. *)
and[@js.scope "Path2D"] Path2D : sig
  type t = [`CanvasPath | `Path2D] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CanvasPath | `Path2D]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CanvasPath | `Path2D]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Path2D ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Adds to the path the path given by the argument. *)
  val addPath: 'tags this -> path:t -> ?transform:DOMMatrix2DInit.t -> unit -> unit [@@js.call "addPath"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?path:t or_string -> unit -> t [@@js.create]
end
module rec AnonymousInterface62 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> MessageChannel.t [@@js.get "prototype"]
  val set_prototype: t -> MessageChannel.t -> unit [@@js.set "prototype"]
  val create: t -> MessageChannel.t [@@js.apply_newable]
end

(** This Channel Messaging API interface allows us to create a new message channel and send data through it via its two MessagePort properties. *)
and[@js.scope "MessageChannel"] MessageChannel : sig
  type t = [`MessageChannel] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`MessageChannel]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`MessageChannel]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `MessageChannel ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the first MessagePort object. *)
  val get_port1: 'tags this -> MessagePort.t [@@js.get "port1"]
  
  (** Returns the second MessagePort object. *)
  val get_port2: 'tags this -> MessagePort.t [@@js.get "port2"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface56 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ImageBitmapRenderingContext.t [@@js.get "prototype"]
  val set_prototype: t -> ImageBitmapRenderingContext.t -> unit [@@js.set "prototype"]
  val create: t -> ImageBitmapRenderingContext.t [@@js.apply_newable]
end
and[@js.scope "ImageBitmapRenderingContext"] ImageBitmapRenderingContext : sig
  type t = [`ImageBitmapRenderingContext] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ImageBitmapRenderingContext]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ImageBitmapRenderingContext]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ImageBitmapRenderingContext ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Transfers the underlying bitmap data from imageBitmap to context, and the bitmap becomes the contents of the canvas element to which context is bound. *)
  val transferFromImageBitmap: 'tags this -> bitmap:ImageBitmap.t or_null -> unit [@@js.call "transferFromImageBitmap"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module FontFaceSetLoadEventInit : sig
  type t = [`EventInit | `FontFaceSetLoadEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `FontFaceSetLoadEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `FontFaceSetLoadEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FontFaceSetLoadEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_fontfaces: 'tags this -> FontFace.t list [@@js.get "fontfaces"]
  val set_fontfaces: 'tags this -> FontFace.t list -> unit [@@js.set "fontfaces"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface40 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FontFaceSetLoadEvent.t [@@js.get "prototype"]
  val set_prototype: t -> FontFaceSetLoadEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:FontFaceSetLoadEventInit.t -> unit -> FontFaceSetLoadEvent.t [@@js.apply_newable]
end
and[@js.scope "FontFaceSetLoadEvent"] FontFaceSetLoadEvent : sig
  type t = [`Event | `FontFaceSetLoadEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `FontFaceSetLoadEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `FontFaceSetLoadEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FontFaceSetLoadEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_fontfaces: 'tags this -> FontFace.t list [@@js.get "fontfaces"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:FontFaceSetLoadEventInit.t -> unit -> t [@@js.create]
end
module QueuingStrategyInit : sig
  type t = [`QueuingStrategyInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`QueuingStrategyInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`QueuingStrategyInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `QueuingStrategyInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Creates a new ByteLengthQueuingStrategy with the provided high water mark.
    
    Note that the provided high water mark will not be validated ahead of time. Instead, if it is negative, NaN, or not a number, the resulting ByteLengthQueuingStrategy will cause the corresponding stream constructor to throw.
  *)
  val get_highWaterMark: 'tags this -> float [@@js.get "highWaterMark"]
  
  (**
    Creates a new ByteLengthQueuingStrategy with the provided high water mark.
    
    Note that the provided high water mark will not be validated ahead of time. Instead, if it is negative, NaN, or not a number, the resulting ByteLengthQueuingStrategy will cause the corresponding stream constructor to throw.
  *)
  val set_highWaterMark: 'tags this -> float -> unit [@@js.set "highWaterMark"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface4 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> ByteLengthQueuingStrategy.t [@@js.get "prototype"]
  val set_prototype: t -> ByteLengthQueuingStrategy.t -> unit [@@js.set "prototype"]
  val create: t -> init:QueuingStrategyInit.t -> ByteLengthQueuingStrategy.t [@@js.apply_newable]
end

(** This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams. *)
and[@js.scope "ByteLengthQueuingStrategy"] ByteLengthQueuingStrategy : sig
  type t = [`ByteLengthQueuingStrategy | `QueuingStrategy of ArrayBufferView.t_0] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ByteLengthQueuingStrategy | `QueuingStrategy of ArrayBufferView.t_0]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ByteLengthQueuingStrategy | `QueuingStrategy of ArrayBufferView.t_0]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ByteLengthQueuingStrategy ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_highWaterMark: 'tags this -> float [@@js.get "highWaterMark"]
  val get_size: 'tags this -> ArrayBufferView.t_0 QueuingStrategySize.t [@@js.get "size"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: QueuingStrategyInit.t -> t [@@js.create]
end
module rec AnonymousInterface37 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FileReaderSync.t [@@js.get "prototype"]
  val set_prototype: t -> FileReaderSync.t -> unit [@@js.set "prototype"]
  val create: t -> FileReaderSync.t [@@js.apply_newable]
end

(** Allows to read File or Blob objects in a synchronous way. *)
and[@js.scope "FileReaderSync"] FileReaderSync : sig
  type t = [`FileReaderSync] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FileReaderSync]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FileReaderSync]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FileReaderSync ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val readAsArrayBuffer: 'tags this -> blob:Blob.t -> ArrayBuffer.t_0 [@@js.call "readAsArrayBuffer"]
  
  (** @deprecated  *)
  val readAsBinaryString: 'tags this -> blob:Blob.t -> string [@@js.call "readAsBinaryString"]
  val readAsDataURL: 'tags this -> blob:Blob.t -> string [@@js.call "readAsDataURL"]
  val readAsText: 'tags this -> blob:Blob.t -> ?encoding:string -> unit -> string [@@js.call "readAsText"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface35 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> FileList.t [@@js.get "prototype"]
  val set_prototype: t -> FileList.t -> unit [@@js.set "prototype"]
  val create: t -> FileList.t [@@js.apply_newable]
end

(** An object of this type is returned by the files property of the HTML <input> element; this lets you access the list of files selected with the <input type="file"> element. It's also used for a list of files dropped into web content when using the drag and drop API; see the DataTransfer object for details on this usage. *)
and[@js.scope "FileList"] FileList : sig
  type t = [`FileList | File.t ArrayLike.tags_1 | File.t IterableIterator.tags_1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FileList | File.t ArrayLike.tags_1 | File.t IterableIterator.tags_1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FileList | File.t ArrayLike.tags_1 | File.t IterableIterator.tags_1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FileList ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_length: 'tags this -> float [@@js.get "length"]
  val item: 'tags this -> index:float -> File.t or_null [@@js.call "item"]
  val get: 'tags this -> float -> File.t [@@js.index_get]
  val set: 'tags this -> float -> File.t -> unit [@@js.index_set]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface3 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> BroadcastChannel.t [@@js.get "prototype"]
  val set_prototype: t -> BroadcastChannel.t -> unit [@@js.set "prototype"]
  val create: t -> name:string -> BroadcastChannel.t [@@js.apply_newable]
end
and[@js.scope "BroadcastChannel"] BroadcastChannel : sig
  type t = [`BroadcastChannel | `EventTarget] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`BroadcastChannel | `EventTarget]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`BroadcastChannel | `EventTarget]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `BroadcastChannel ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the channel name (as passed to the constructor). *)
  val get_name: 'tags this -> string [@@js.get "name"]
  val get_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessageerror"]
  val set_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessageerror"]
  
  (** Closes the BroadcastChannel object, opening it up to garbage collection. *)
  val close: 'tags this -> unit [@@js.call "close"]
  
  (** Sends the given message to other BroadcastChannel objects set up for this channel. Messages can be structured objects, e.g. nested objects and arrays. *)
  val postMessage: 'tags this -> message:any -> unit [@@js.call "postMessage"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'BroadcastChannelEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'BroadcastChannelEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: string -> t [@@js.create]
end
module EventSourceInit : sig
  type t = [`EventSourceInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventSourceInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventSourceInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventSourceInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_withCredentials: 'tags this -> bool [@@js.get "withCredentials"]
  val set_withCredentials: 'tags this -> bool -> unit [@@js.set "withCredentials"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface29 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> EventSource.t [@@js.get "prototype"]
  val set_prototype: t -> EventSource.t -> unit [@@js.set "prototype"]
  val create: t -> url:URL.t or_string -> ?eventSourceInitDict:EventSourceInit.t -> unit -> EventSource.t [@@js.apply_newable]
  val get_CLOSED: t -> float [@@js.get "CLOSED"]
  val get_CONNECTING: t -> float [@@js.get "CONNECTING"]
  val get_OPEN: t -> float [@@js.get "OPEN"]
end
and[@js.scope "EventSource"] EventSource : sig
  type t = [`EventSource | `EventTarget] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventSource | `EventTarget]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventSource | `EventTarget]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EventSource ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onerror"]
  val get_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onopen: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onopen"]
  val set_onopen: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onopen"]
  
  (** Returns the state of this EventSource object's connection. It can have the values described below. *)
  val get_readyState: 'tags this -> float [@@js.get "readyState"]
  
  (** Returns the URL providing the event stream. *)
  val get_url: 'tags this -> string [@@js.get "url"]
  
  (** Returns true if the credentials mode for connection requests to the URL providing the event stream is set to "include", and false otherwise. *)
  val get_withCredentials: 'tags this -> bool [@@js.get "withCredentials"]
  
  (** Aborts any instances of the fetch algorithm started for this EventSource object, and sets the readyState attribute to CLOSED. *)
  val close: 'tags this -> unit [@@js.call "close"]
  val get_CLOSED: 'tags this -> float [@@js.get "CLOSED"]
  val get_CONNECTING: 'tags this -> float [@@js.get "CONNECTING"]
  val get_OPEN: 'tags this -> float [@@js.get "OPEN"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'EventSourceEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'EventSourceEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: url:URL.t or_string -> ?eventSourceInitDict:EventSourceInit.t -> unit -> t [@@js.create]
  val closed: unit -> float [@@js.get "CLOSED"]
  val connecting: unit -> float [@@js.get "CONNECTING"]
  val open_: unit -> float [@@js.get "OPEN"]
end
module FrameRequestCallback : sig
  type t = [`FrameRequestCallback] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`FrameRequestCallback]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`FrameRequestCallback]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `FrameRequestCallback ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val apply: 'tags this -> time:DOMHighResTimeStamp.t -> unit [@@js.apply]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module AnimationFrameProvider : sig
  type t = [`AnimationFrameProvider] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AnimationFrameProvider]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AnimationFrameProvider]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AnimationFrameProvider ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cancelAnimationFrame: 'tags this -> handle:float -> unit [@@js.call "cancelAnimationFrame"]
  val requestAnimationFrame: 'tags this -> callback:FrameRequestCallback.t -> float [@@js.call "requestAnimationFrame"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface26 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DedicatedWorkerGlobalScope.t [@@js.get "prototype"]
  val set_prototype: t -> DedicatedWorkerGlobalScope.t -> unit [@@js.set "prototype"]
  val create: t -> DedicatedWorkerGlobalScope.t [@@js.apply_newable]
end

(** (the Worker global scope) is accessible through the self keyword. Some additional global functions, namespaces objects, and constructors, not typically associated with the worker global scope, but available on it, are listed in the JavaScript Reference. See also: Functions available to workers. *)
and[@js.scope "DedicatedWorkerGlobalScope"] DedicatedWorkerGlobalScope : sig
  type t = [`AnimationFrameProvider | `DedicatedWorkerGlobalScope | `EventTarget | `FontFaceSource | `WindowOrWorkerGlobalScope | `WorkerGlobalScope] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AnimationFrameProvider | `DedicatedWorkerGlobalScope | `EventTarget | `FontFaceSource | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AnimationFrameProvider | `DedicatedWorkerGlobalScope | `EventTarget | `FontFaceSource | `WindowOrWorkerGlobalScope | `WorkerGlobalScope]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DedicatedWorkerGlobalScope ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns dedicatedWorkerGlobal's name, i.e. the value given to the Worker constructor. Primarily useful for debugging. *)
  val get_name: 'tags this -> string [@@js.get "name"]
  val get_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessageerror"]
  val set_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessageerror"]
  
  (** Aborts dedicatedWorkerGlobal. *)
  val close: 'tags this -> unit [@@js.call "close"]
  
  (** Clones message and transmits it to the Worker object associated with dedicatedWorkerGlobal. transfer can be passed as a list of objects that are to be transferred rather than cloned. *)
  val postMessage: 'tags this -> message:any -> transfer:Transferable.t list -> unit [@@js.call "postMessage"]
  
  (** Clones message and transmits it to the Worker object associated with dedicatedWorkerGlobal. transfer can be passed as a list of objects that are to be transferred rather than cloned. *)
  val postMessage': 'tags this -> message:any -> ?options:StructuredSerializeOptions.t -> unit -> unit [@@js.call "postMessage"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'DedicatedWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'DedicatedWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module DOMRectInit : sig
  type t = [`DOMRectInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMRectInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMRectInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMRectInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_height: 'tags this -> float [@@js.get "height"]
  val set_height: 'tags this -> float -> unit [@@js.set "height"]
  val get_width: 'tags this -> float [@@js.get "width"]
  val set_width: 'tags this -> float -> unit [@@js.set "width"]
  val get_x: 'tags this -> float [@@js.get "x"]
  val set_x: 'tags this -> float -> unit [@@js.set "x"]
  val get_y: 'tags this -> float [@@js.get "y"]
  val set_y: 'tags this -> float -> unit [@@js.set "y"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface24 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMRectReadOnly.t [@@js.get "prototype"]
  val set_prototype: t -> DOMRectReadOnly.t -> unit [@@js.set "prototype"]
  val create: t -> ?x:float -> ?y:float -> ?width:float -> ?height:float -> unit -> DOMRectReadOnly.t [@@js.apply_newable]
  val fromRect: t -> ?other:DOMRectInit.t -> unit -> DOMRectReadOnly.t [@@js.call "fromRect"]
end
and[@js.scope "DOMRectReadOnly"] DOMRectReadOnly : sig
  type t = [`DOMRectReadOnly] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMRectReadOnly]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMRectReadOnly]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMRectReadOnly ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_bottom: 'tags this -> float [@@js.get "bottom"]
  val get_height: 'tags this -> float [@@js.get "height"]
  val get_left: 'tags this -> float [@@js.get "left"]
  val get_right: 'tags this -> float [@@js.get "right"]
  val get_top: 'tags this -> float [@@js.get "top"]
  val get_width: 'tags this -> float [@@js.get "width"]
  val get_x: 'tags this -> float [@@js.get "x"]
  val get_y: 'tags this -> float [@@js.get "y"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?x:float -> ?y:float -> ?width:float -> ?height:float -> unit -> t [@@js.create]
  val fromRect: ?other:DOMRectInit.t -> unit -> t [@@js.global "fromRect"]
end
module rec AnonymousInterface23 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMRect.t [@@js.get "prototype"]
  val set_prototype: t -> DOMRect.t -> unit [@@js.set "prototype"]
  val create: t -> ?x:float -> ?y:float -> ?width:float -> ?height:float -> unit -> DOMRect.t [@@js.apply_newable]
  val fromRect: t -> ?other:DOMRectInit.t -> unit -> DOMRect.t [@@js.call "fromRect"]
end
and[@js.scope "DOMRect"] DOMRect : sig
  type t = [`DOMRect | `DOMRectReadOnly] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMRect | `DOMRectReadOnly]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMRect | `DOMRectReadOnly]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMRect ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_height: 'tags this -> float [@@js.get "height"]
  val set_height: 'tags this -> float -> unit [@@js.set "height"]
  val get_width: 'tags this -> float [@@js.get "width"]
  val set_width: 'tags this -> float -> unit [@@js.set "width"]
  val get_x: 'tags this -> float [@@js.get "x"]
  val set_x: 'tags this -> float -> unit [@@js.set "x"]
  val get_y: 'tags this -> float [@@js.get "y"]
  val set_y: 'tags this -> float -> unit [@@js.set "y"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?x:float -> ?y:float -> ?width:float -> ?height:float -> unit -> t [@@js.create]
  val fromRect: ?other:DOMRectInit.t -> unit -> t [@@js.global "fromRect"]
end
module DOMPointInit : sig
  type t = [`DOMPointInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMPointInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMPointInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMPointInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_w: 'tags this -> float [@@js.get "w"]
  val set_w: 'tags this -> float -> unit [@@js.set "w"]
  val get_x: 'tags this -> float [@@js.get "x"]
  val set_x: 'tags this -> float -> unit [@@js.set "x"]
  val get_y: 'tags this -> float [@@js.get "y"]
  val set_y: 'tags this -> float -> unit [@@js.set "y"]
  val get_z: 'tags this -> float [@@js.get "z"]
  val set_z: 'tags this -> float -> unit [@@js.set "z"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module DOMQuadInit : sig
  type t = [`DOMQuadInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMQuadInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMQuadInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMQuadInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_p1: 'tags this -> DOMPointInit.t [@@js.get "p1"]
  val set_p1: 'tags this -> DOMPointInit.t -> unit [@@js.set "p1"]
  val get_p2: 'tags this -> DOMPointInit.t [@@js.get "p2"]
  val set_p2: 'tags this -> DOMPointInit.t -> unit [@@js.set "p2"]
  val get_p3: 'tags this -> DOMPointInit.t [@@js.get "p3"]
  val set_p3: 'tags this -> DOMPointInit.t -> unit [@@js.set "p3"]
  val get_p4: 'tags this -> DOMPointInit.t [@@js.get "p4"]
  val set_p4: 'tags this -> DOMPointInit.t -> unit [@@js.set "p4"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module DOMMatrixInit : sig
  type t = [`DOMMatrix2DInit | `DOMMatrixInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMMatrix2DInit | `DOMMatrixInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMMatrix2DInit | `DOMMatrixInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMMatrixInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_is2D: 'tags this -> bool [@@js.get "is2D"]
  val set_is2D: 'tags this -> bool -> unit [@@js.set "is2D"]
  val get_m13: 'tags this -> float [@@js.get "m13"]
  val set_m13: 'tags this -> float -> unit [@@js.set "m13"]
  val get_m14: 'tags this -> float [@@js.get "m14"]
  val set_m14: 'tags this -> float -> unit [@@js.set "m14"]
  val get_m23: 'tags this -> float [@@js.get "m23"]
  val set_m23: 'tags this -> float -> unit [@@js.set "m23"]
  val get_m24: 'tags this -> float [@@js.get "m24"]
  val set_m24: 'tags this -> float -> unit [@@js.set "m24"]
  val get_m31: 'tags this -> float [@@js.get "m31"]
  val set_m31: 'tags this -> float -> unit [@@js.set "m31"]
  val get_m32: 'tags this -> float [@@js.get "m32"]
  val set_m32: 'tags this -> float -> unit [@@js.set "m32"]
  val get_m33: 'tags this -> float [@@js.get "m33"]
  val set_m33: 'tags this -> float -> unit [@@js.set "m33"]
  val get_m34: 'tags this -> float [@@js.get "m34"]
  val set_m34: 'tags this -> float -> unit [@@js.set "m34"]
  val get_m43: 'tags this -> float [@@js.get "m43"]
  val set_m43: 'tags this -> float -> unit [@@js.set "m43"]
  val get_m44: 'tags this -> float [@@js.get "m44"]
  val set_m44: 'tags this -> float -> unit [@@js.set "m44"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface20 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMPoint.t [@@js.get "prototype"]
  val set_prototype: t -> DOMPoint.t -> unit [@@js.set "prototype"]
  val create: t -> ?x:float -> ?y:float -> ?z:float -> ?w:float -> unit -> DOMPoint.t [@@js.apply_newable]
  val fromPoint: t -> ?other:DOMPointInit.t -> unit -> DOMPoint.t [@@js.call "fromPoint"]
end
and AnonymousInterface21 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMPointReadOnly.t [@@js.get "prototype"]
  val set_prototype: t -> DOMPointReadOnly.t -> unit [@@js.set "prototype"]
  val create: t -> ?x:float -> ?y:float -> ?z:float -> ?w:float -> unit -> DOMPointReadOnly.t [@@js.apply_newable]
  val fromPoint: t -> ?other:DOMPointInit.t -> unit -> DOMPointReadOnly.t [@@js.call "fromPoint"]
end
and[@js.scope "DOMPoint"] DOMPoint : sig
  type t = [`DOMPoint | `DOMPointReadOnly] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMPoint | `DOMPointReadOnly]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMPoint | `DOMPointReadOnly]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMPoint ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_w: 'tags this -> float [@@js.get "w"]
  val set_w: 'tags this -> float -> unit [@@js.set "w"]
  val get_x: 'tags this -> float [@@js.get "x"]
  val set_x: 'tags this -> float -> unit [@@js.set "x"]
  val get_y: 'tags this -> float [@@js.get "y"]
  val set_y: 'tags this -> float -> unit [@@js.set "y"]
  val get_z: 'tags this -> float [@@js.get "z"]
  val set_z: 'tags this -> float -> unit [@@js.set "z"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?x:float -> ?y:float -> ?z:float -> ?w:float -> unit -> t [@@js.create]
  val fromPoint: ?other:DOMPointInit.t -> unit -> t [@@js.global "fromPoint"]
end
and[@js.scope "DOMPointReadOnly"] DOMPointReadOnly : sig
  type t = [`DOMPointReadOnly] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMPointReadOnly]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMPointReadOnly]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMPointReadOnly ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_w: 'tags this -> float [@@js.get "w"]
  val get_x: 'tags this -> float [@@js.get "x"]
  val get_y: 'tags this -> float [@@js.get "y"]
  val get_z: 'tags this -> float [@@js.get "z"]
  val matrixTransform: 'tags this -> ?matrix:DOMMatrixInit.t -> unit -> DOMPoint.t [@@js.call "matrixTransform"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?x:float -> ?y:float -> ?z:float -> ?w:float -> unit -> t [@@js.create]
  val fromPoint: ?other:DOMPointInit.t -> unit -> t [@@js.global "fromPoint"]
end
module rec AnonymousInterface22 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMQuad.t [@@js.get "prototype"]
  val set_prototype: t -> DOMQuad.t -> unit [@@js.set "prototype"]
  val create: t -> ?p1:DOMPointInit.t -> ?p2:DOMPointInit.t -> ?p3:DOMPointInit.t -> ?p4:DOMPointInit.t -> unit -> DOMQuad.t [@@js.apply_newable]
  val fromQuad: t -> ?other:DOMQuadInit.t -> unit -> DOMQuad.t [@@js.call "fromQuad"]
  val fromRect: t -> ?other:DOMRectInit.t -> unit -> DOMQuad.t [@@js.call "fromRect"]
end
and[@js.scope "DOMQuad"] DOMQuad : sig
  type t = [`DOMQuad] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMQuad]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMQuad]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMQuad ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_p1: 'tags this -> DOMPoint.t [@@js.get "p1"]
  val get_p2: 'tags this -> DOMPoint.t [@@js.get "p2"]
  val get_p3: 'tags this -> DOMPoint.t [@@js.get "p3"]
  val get_p4: 'tags this -> DOMPoint.t [@@js.get "p4"]
  val getBounds: 'tags this -> DOMRect.t [@@js.call "getBounds"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?p1:DOMPointInit.t -> ?p2:DOMPointInit.t -> ?p3:DOMPointInit.t -> ?p4:DOMPointInit.t -> unit -> t [@@js.create]
  val fromQuad: ?other:DOMQuadInit.t -> unit -> t [@@js.global "fromQuad"]
  val fromRect: ?other:DOMRectInit.t -> unit -> t [@@js.global "fromRect"]
end
module rec AnonymousInterface18 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMMatrix.t [@@js.get "prototype"]
  val set_prototype: t -> DOMMatrix.t -> unit [@@js.set "prototype"]
  val create: t -> ?init:float list or_string -> unit -> DOMMatrix.t [@@js.apply_newable]
  val fromFloat32Array: t -> array32:Float32Array.t_0 -> DOMMatrix.t [@@js.call "fromFloat32Array"]
  val fromFloat64Array: t -> array64:Float64Array.t_0 -> DOMMatrix.t [@@js.call "fromFloat64Array"]
  val fromMatrix: t -> ?other:DOMMatrixInit.t -> unit -> DOMMatrix.t [@@js.call "fromMatrix"]
end
and AnonymousInterface19 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> DOMMatrixReadOnly.t [@@js.get "prototype"]
  val set_prototype: t -> DOMMatrixReadOnly.t -> unit [@@js.set "prototype"]
  val create: t -> ?init:float list or_string -> unit -> DOMMatrixReadOnly.t [@@js.apply_newable]
  val fromFloat32Array: t -> array32:Float32Array.t_0 -> DOMMatrixReadOnly.t [@@js.call "fromFloat32Array"]
  val fromFloat64Array: t -> array64:Float64Array.t_0 -> DOMMatrixReadOnly.t [@@js.call "fromFloat64Array"]
  val fromMatrix: t -> ?other:DOMMatrixInit.t -> unit -> DOMMatrixReadOnly.t [@@js.call "fromMatrix"]
end
and[@js.scope "DOMMatrix"] DOMMatrix : sig
  type t = [`DOMMatrix | `DOMMatrixReadOnly] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMMatrix | `DOMMatrixReadOnly]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMMatrix | `DOMMatrixReadOnly]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMMatrix ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_a: 'tags this -> float [@@js.get "a"]
  val set_a: 'tags this -> float -> unit [@@js.set "a"]
  val get_b: 'tags this -> float [@@js.get "b"]
  val set_b: 'tags this -> float -> unit [@@js.set "b"]
  val get_c: 'tags this -> float [@@js.get "c"]
  val set_c: 'tags this -> float -> unit [@@js.set "c"]
  val get_d: 'tags this -> float [@@js.get "d"]
  val set_d: 'tags this -> float -> unit [@@js.set "d"]
  val get_e: 'tags this -> float [@@js.get "e"]
  val set_e: 'tags this -> float -> unit [@@js.set "e"]
  val get_f: 'tags this -> float [@@js.get "f"]
  val set_f: 'tags this -> float -> unit [@@js.set "f"]
  val get_m11: 'tags this -> float [@@js.get "m11"]
  val set_m11: 'tags this -> float -> unit [@@js.set "m11"]
  val get_m12: 'tags this -> float [@@js.get "m12"]
  val set_m12: 'tags this -> float -> unit [@@js.set "m12"]
  val get_m13: 'tags this -> float [@@js.get "m13"]
  val set_m13: 'tags this -> float -> unit [@@js.set "m13"]
  val get_m14: 'tags this -> float [@@js.get "m14"]
  val set_m14: 'tags this -> float -> unit [@@js.set "m14"]
  val get_m21: 'tags this -> float [@@js.get "m21"]
  val set_m21: 'tags this -> float -> unit [@@js.set "m21"]
  val get_m22: 'tags this -> float [@@js.get "m22"]
  val set_m22: 'tags this -> float -> unit [@@js.set "m22"]
  val get_m23: 'tags this -> float [@@js.get "m23"]
  val set_m23: 'tags this -> float -> unit [@@js.set "m23"]
  val get_m24: 'tags this -> float [@@js.get "m24"]
  val set_m24: 'tags this -> float -> unit [@@js.set "m24"]
  val get_m31: 'tags this -> float [@@js.get "m31"]
  val set_m31: 'tags this -> float -> unit [@@js.set "m31"]
  val get_m32: 'tags this -> float [@@js.get "m32"]
  val set_m32: 'tags this -> float -> unit [@@js.set "m32"]
  val get_m33: 'tags this -> float [@@js.get "m33"]
  val set_m33: 'tags this -> float -> unit [@@js.set "m33"]
  val get_m34: 'tags this -> float [@@js.get "m34"]
  val set_m34: 'tags this -> float -> unit [@@js.set "m34"]
  val get_m41: 'tags this -> float [@@js.get "m41"]
  val set_m41: 'tags this -> float -> unit [@@js.set "m41"]
  val get_m42: 'tags this -> float [@@js.get "m42"]
  val set_m42: 'tags this -> float -> unit [@@js.set "m42"]
  val get_m43: 'tags this -> float [@@js.get "m43"]
  val set_m43: 'tags this -> float -> unit [@@js.set "m43"]
  val get_m44: 'tags this -> float [@@js.get "m44"]
  val set_m44: 'tags this -> float -> unit [@@js.set "m44"]
  val invertSelf: 'tags this -> t [@@js.call "invertSelf"]
  val multiplySelf: 'tags this -> ?other:DOMMatrixInit.t -> unit -> t [@@js.call "multiplySelf"]
  val preMultiplySelf: 'tags this -> ?other:DOMMatrixInit.t -> unit -> t [@@js.call "preMultiplySelf"]
  val rotateAxisAngleSelf: 'tags this -> ?x:float -> ?y:float -> ?z:float -> ?angle:float -> unit -> t [@@js.call "rotateAxisAngleSelf"]
  val rotateFromVectorSelf: 'tags this -> ?x:float -> ?y:float -> unit -> t [@@js.call "rotateFromVectorSelf"]
  val rotateSelf: 'tags this -> ?rotX:float -> ?rotY:float -> ?rotZ:float -> unit -> t [@@js.call "rotateSelf"]
  val scale3dSelf: 'tags this -> ?scale:float -> ?originX:float -> ?originY:float -> ?originZ:float -> unit -> t [@@js.call "scale3dSelf"]
  val scaleSelf: 'tags this -> ?scaleX:float -> ?scaleY:float -> ?scaleZ:float -> ?originX:float -> ?originY:float -> ?originZ:float -> unit -> t [@@js.call "scaleSelf"]
  val skewXSelf: 'tags this -> ?sx:float -> unit -> t [@@js.call "skewXSelf"]
  val skewYSelf: 'tags this -> ?sy:float -> unit -> t [@@js.call "skewYSelf"]
  val translateSelf: 'tags this -> ?tx:float -> ?ty:float -> ?tz:float -> unit -> t [@@js.call "translateSelf"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?init:float list or_string -> unit -> t [@@js.create]
  val fromFloat32Array: Float32Array.t_0 -> t [@@js.global "fromFloat32Array"]
  val fromFloat64Array: Float64Array.t_0 -> t [@@js.global "fromFloat64Array"]
  val fromMatrix: ?other:DOMMatrixInit.t -> unit -> t [@@js.global "fromMatrix"]
end
and[@js.scope "DOMMatrixReadOnly"] DOMMatrixReadOnly : sig
  type t = [`DOMMatrixReadOnly] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`DOMMatrixReadOnly]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`DOMMatrixReadOnly]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `DOMMatrixReadOnly ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_a: 'tags this -> float [@@js.get "a"]
  val get_b: 'tags this -> float [@@js.get "b"]
  val get_c: 'tags this -> float [@@js.get "c"]
  val get_d: 'tags this -> float [@@js.get "d"]
  val get_e: 'tags this -> float [@@js.get "e"]
  val get_f: 'tags this -> float [@@js.get "f"]
  val get_is2D: 'tags this -> bool [@@js.get "is2D"]
  val get_isIdentity: 'tags this -> bool [@@js.get "isIdentity"]
  val get_m11: 'tags this -> float [@@js.get "m11"]
  val get_m12: 'tags this -> float [@@js.get "m12"]
  val get_m13: 'tags this -> float [@@js.get "m13"]
  val get_m14: 'tags this -> float [@@js.get "m14"]
  val get_m21: 'tags this -> float [@@js.get "m21"]
  val get_m22: 'tags this -> float [@@js.get "m22"]
  val get_m23: 'tags this -> float [@@js.get "m23"]
  val get_m24: 'tags this -> float [@@js.get "m24"]
  val get_m31: 'tags this -> float [@@js.get "m31"]
  val get_m32: 'tags this -> float [@@js.get "m32"]
  val get_m33: 'tags this -> float [@@js.get "m33"]
  val get_m34: 'tags this -> float [@@js.get "m34"]
  val get_m41: 'tags this -> float [@@js.get "m41"]
  val get_m42: 'tags this -> float [@@js.get "m42"]
  val get_m43: 'tags this -> float [@@js.get "m43"]
  val get_m44: 'tags this -> float [@@js.get "m44"]
  val flipX: 'tags this -> DOMMatrix.t [@@js.call "flipX"]
  val flipY: 'tags this -> DOMMatrix.t [@@js.call "flipY"]
  val inverse: 'tags this -> DOMMatrix.t [@@js.call "inverse"]
  val multiply: 'tags this -> ?other:DOMMatrixInit.t -> unit -> DOMMatrix.t [@@js.call "multiply"]
  val rotate: 'tags this -> ?rotX:float -> ?rotY:float -> ?rotZ:float -> unit -> DOMMatrix.t [@@js.call "rotate"]
  val rotateAxisAngle: 'tags this -> ?x:float -> ?y:float -> ?z:float -> ?angle:float -> unit -> DOMMatrix.t [@@js.call "rotateAxisAngle"]
  val rotateFromVector: 'tags this -> ?x:float -> ?y:float -> unit -> DOMMatrix.t [@@js.call "rotateFromVector"]
  val scale: 'tags this -> ?scaleX:float -> ?scaleY:float -> ?scaleZ:float -> ?originX:float -> ?originY:float -> ?originZ:float -> unit -> DOMMatrix.t [@@js.call "scale"]
  val scale3d: 'tags this -> ?scale:float -> ?originX:float -> ?originY:float -> ?originZ:float -> unit -> DOMMatrix.t [@@js.call "scale3d"]
  
  (** @deprecated  *)
  val scaleNonUniform: 'tags this -> ?scaleX:float -> ?scaleY:float -> unit -> DOMMatrix.t [@@js.call "scaleNonUniform"]
  val skewX: 'tags this -> ?sx:float -> unit -> DOMMatrix.t [@@js.call "skewX"]
  val skewY: 'tags this -> ?sy:float -> unit -> DOMMatrix.t [@@js.call "skewY"]
  val toFloat32Array: 'tags this -> Float32Array.t_0 [@@js.call "toFloat32Array"]
  val toFloat64Array: 'tags this -> Float64Array.t_0 [@@js.call "toFloat64Array"]
  val toJSON: 'tags this -> any [@@js.call "toJSON"]
  val transformPoint: 'tags this -> ?point:DOMPointInit.t -> unit -> DOMPoint.t [@@js.call "transformPoint"]
  val translate: 'tags this -> ?tx:float -> ?ty:float -> ?tz:float -> unit -> DOMMatrix.t [@@js.call "translate"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?init:float list or_string -> unit -> t [@@js.create]
  val fromFloat32Array: Float32Array.t_0 -> t [@@js.global "fromFloat32Array"]
  val fromFloat64Array: Float64Array.t_0 -> t [@@js.global "fromFloat64Array"]
  val fromMatrix: ?other:DOMMatrixInit.t -> unit -> t [@@js.global "fromMatrix"]
end
module CustomEventInit : sig
  type 'T t = [`CustomEventInit of 'T | `EventInit] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`CustomEventInit of 'T | `EventInit]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`CustomEventInit of 'T | `EventInit]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `CustomEventInit of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_detail: ('tags, 'T) this -> 'T [@@js.get "detail"]
  val set_detail: ('tags, 'T) this -> 'T -> unit [@@js.set "detail"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface16 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> CustomEvent.t_0 [@@js.get "prototype"]
  val set_prototype: t -> CustomEvent.t_0 -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInitDict:'T CustomEventInit.t -> unit -> 'T CustomEvent.t [@@js.apply_newable]
end
and[@js.scope "CustomEvent"] CustomEvent : sig
  type 'T t = [`CustomEvent of 'T | `Event] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  type 'T t_1 = 'T t
  type t_0 = any t
  [@@@js.stop]
  type 'T tags = [`CustomEvent of 'T | `Event]
  type 'T tags_1 = 'T tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`CustomEvent of 'T | `Event]
    type 'T tags_1 = 'T tags
    type tags_0 = any tags
  ]
  type ('tags, 'T) this = 'tags intf constraint 'tags = [> `CustomEvent of 'T ]
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns any custom data event was created with. Typically used for synthetic events. *)
  val get_detail: ('tags, 'T) this -> 'T [@@js.get "detail"]
  
  (** @deprecated  *)
  val initCustomEvent: ('tags, 'T) this -> type_:string -> ?bubbles:bool -> ?cancelable:bool -> ?detail:'T -> unit -> unit [@@js.call "initCustomEvent"]
  val cast_from: (('tags, 'T) this -> 'T t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: type_:string -> ?eventInitDict:'T CustomEventInit.t -> unit -> 'T t [@@js.create]
end
module WorkerOptions : sig
  type t = [`WorkerOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WorkerOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WorkerOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WorkerOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_credentials: 'tags this -> RequestCredentials.t [@@js.get "credentials"]
  val set_credentials: 'tags this -> RequestCredentials.t -> unit [@@js.set "credentials"]
  val get_name: 'tags this -> string [@@js.get "name"]
  val set_name: 'tags this -> string -> unit [@@js.set "name"]
  val get_type: 'tags this -> WorkerType.t [@@js.get "type"]
  val set_type: 'tags this -> WorkerType.t -> unit [@@js.set "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface130 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> Worker.t [@@js.get "prototype"]
  val set_prototype: t -> Worker.t -> unit [@@js.set "prototype"]
  val create: t -> scriptURL:URL.t or_string -> ?options:WorkerOptions.t -> unit -> Worker.t [@@js.apply_newable]
end

(** This Web Workers API interface represents a background task that can be easily created and can send messages back to its creator. Creating a worker is as simple as calling the Worker() constructor and specifying a script to be run in the worker thread. *)
and[@js.scope "Worker"] Worker : sig
  type t = [`AbstractWorker | `EventTarget | `Worker] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbstractWorker | `EventTarget | `Worker]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbstractWorker | `EventTarget | `Worker]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `Worker ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessageerror"]
  val set_onmessageerror: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessageerror"]
  
  (** Clones message and transmits it to worker's global environment. transfer can be passed as a list of objects that are to be transferred rather than cloned. *)
  val postMessage: 'tags this -> message:any -> transfer:Transferable.t list -> unit [@@js.call "postMessage"]
  
  (** Clones message and transmits it to worker's global environment. transfer can be passed as a list of objects that are to be transferred rather than cloned. *)
  val postMessage': 'tags this -> message:any -> ?options:StructuredSerializeOptions.t -> unit -> unit [@@js.call "postMessage"]
  
  (** Aborts worker's associated global environment. *)
  val terminate: 'tags this -> unit [@@js.call "terminate"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'WorkerEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'WorkerEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: scriptURL:URL.t or_string -> ?options:WorkerOptions.t -> unit -> t [@@js.create]
end
module rec AnonymousInterface13 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> CountQueuingStrategy.t [@@js.get "prototype"]
  val set_prototype: t -> CountQueuingStrategy.t -> unit [@@js.set "prototype"]
  val create: t -> init:QueuingStrategyInit.t -> CountQueuingStrategy.t [@@js.apply_newable]
end

(** This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams. *)
and[@js.scope "CountQueuingStrategy"] CountQueuingStrategy : sig
  type t = [`CountQueuingStrategy | `QueuingStrategy of any] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`CountQueuingStrategy | `QueuingStrategy of any]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`CountQueuingStrategy | `QueuingStrategy of any]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `CountQueuingStrategy ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_highWaterMark: 'tags this -> float [@@js.get "highWaterMark"]
  val get_size: 'tags this -> QueuingStrategySize.t_0 [@@js.get "size"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: QueuingStrategyInit.t -> t [@@js.create]
end
module BinaryType : sig
  type t = ([`L_s37_arraybuffer[@js "arraybuffer"] | `L_s44_blob[@js "blob"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module rec AnonymousInterface128 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebSocket.t [@@js.get "prototype"]
  val set_prototype: t -> WebSocket.t -> unit [@@js.set "prototype"]
  val create: t -> url:URL.t or_string -> ?protocols:string list or_string -> unit -> WebSocket.t [@@js.apply_newable]
  val get_CLOSED: t -> float [@@js.get "CLOSED"]
  val get_CLOSING: t -> float [@@js.get "CLOSING"]
  val get_CONNECTING: t -> float [@@js.get "CONNECTING"]
  val get_OPEN: t -> float [@@js.get "OPEN"]
end

(** Provides the API for creating and managing a WebSocket connection to a server, as well as for sending and receiving data on the connection. *)
and[@js.scope "WebSocket"] WebSocket : sig
  type t = [`EventTarget | `WebSocket] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventTarget | `WebSocket]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventTarget | `WebSocket]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebSocket ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Returns a string that indicates how binary data from the WebSocket object is exposed to scripts:
    
    Can be set, to change how binary data is returned. The default is "blob".
  *)
  val get_binaryType: 'tags this -> BinaryType.t [@@js.get "binaryType"]
  
  (**
    Returns a string that indicates how binary data from the WebSocket object is exposed to scripts:
    
    Can be set, to change how binary data is returned. The default is "blob".
  *)
  val set_binaryType: 'tags this -> BinaryType.t -> unit [@@js.set "binaryType"]
  
  (**
    Returns the number of bytes of application data (UTF-8 text and binary data) that have been queued using send() but not yet been transmitted to the network.
    
    If the WebSocket connection is closed, this attribute's value will only increase with each call to the send() method. (The number does not reset to zero once the connection closes.)
  *)
  val get_bufferedAmount: 'tags this -> float [@@js.get "bufferedAmount"]
  
  (** Returns the extensions selected by the server, if any. *)
  val get_extensions: 'tags this -> string [@@js.get "extensions"]
  val get_onclose: 'tags this -> (this:t -> ev:CloseEvent.t -> any) or_null [@@js.get "onclose"]
  val set_onclose: 'tags this -> (this:t -> ev:CloseEvent.t -> any) or_null -> unit [@@js.set "onclose"]
  val get_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onerror"]
  val set_onerror: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onerror"]
  val get_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
  val set_onmessage: 'tags this -> (this:t -> ev:MessageEvent.t_0 -> any) or_null -> unit [@@js.set "onmessage"]
  val get_onopen: 'tags this -> (this:t -> ev:Event.t -> any) or_null [@@js.get "onopen"]
  val set_onopen: 'tags this -> (this:t -> ev:Event.t -> any) or_null -> unit [@@js.set "onopen"]
  
  (** Returns the subprotocol selected by the server, if any. It can be used in conjunction with the array form of the constructor's second argument to perform subprotocol negotiation. *)
  val get_protocol: 'tags this -> string [@@js.get "protocol"]
  
  (** Returns the state of the WebSocket object's connection. It can have the values described below. *)
  val get_readyState: 'tags this -> float [@@js.get "readyState"]
  
  (** Returns the URL that was used to establish the WebSocket connection. *)
  val get_url: 'tags this -> string [@@js.get "url"]
  
  (** Closes the WebSocket connection, optionally using code as the the WebSocket connection close code and reason as the the WebSocket connection close reason. *)
  val close: 'tags this -> ?code:float -> ?reason:string -> unit -> unit [@@js.call "close"]
  
  (** Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView. *)
  val send: 'tags this -> data:(ArrayBufferLike.t_0, ArrayBufferView.t_0, Blob.t) union3 or_string -> unit [@@js.call "send"]
  val get_CLOSED: 'tags this -> float [@@js.get "CLOSED"]
  val get_CLOSING: 'tags this -> float [@@js.get "CLOSING"]
  val get_CONNECTING: 'tags this -> float [@@js.get "CONNECTING"]
  val get_OPEN: 'tags this -> float [@@js.get "OPEN"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'WebSocketEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
    
    The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
    
    When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
    
    When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.
    
    When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
    
    If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.
    
    The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
  *)
  val addEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.call "addEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener: 'tags this -> type_:'K -> listener:(this:t -> ev:(* FIXME: unknown type 'WebSocketEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  
  (** Removes the event listener in target's event listener list with the same type, callback, and options. *)
  val removeEventListener': 'tags this -> type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.call "removeEventListener"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: url:URL.t or_string -> ?protocols:string list or_string -> unit -> t [@@js.create]
  val closed: unit -> float [@@js.get "CLOSED"]
  val closing: unit -> float [@@js.get "CLOSING"]
  val connecting: unit -> float [@@js.get "CONNECTING"]
  val open_: unit -> float [@@js.get "OPEN"]
end
module rec AnonymousInterface126 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLUniformLocation.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLUniformLocation.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLUniformLocation.t [@@js.apply_newable]
end

(** Part of the WebGL API and represents the location of a uniform variable in a shader program. *)
and[@js.scope "WebGLUniformLocation"] WebGLUniformLocation : sig
  type t = [`WebGLUniformLocation] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLUniformLocation]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLUniformLocation]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLUniformLocation ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module TexImageSource : sig
  type t = (ImageBitmap.t, ImageData.t, OffscreenCanvas.t) union3
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLint : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module Int32List : sig
  type t = (Int32Array.t_0, GLint.t) or_array
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLsizeiptr : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLboolean : sig
  type t = bool
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLfloat : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module Float32List : sig
  type t = (Float32Array.t_0, GLfloat.t) or_array
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLsizei : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLintptr : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module WebGLRenderingContextOverloads : sig
  type t = [`WebGLRenderingContextOverloads] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLRenderingContextOverloads]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLRenderingContextOverloads]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLRenderingContextOverloads ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val bufferData: 'tags this -> target:GLenum.t -> size:GLsizeiptr.t -> usage:GLenum.t -> unit [@@js.call "bufferData"]
  val bufferData': 'tags this -> target:GLenum.t -> data:BufferSource.t or_null -> usage:GLenum.t -> unit [@@js.call "bufferData"]
  val bufferSubData: 'tags this -> target:GLenum.t -> offset:GLintptr.t -> data:BufferSource.t -> unit [@@js.call "bufferSubData"]
  val compressedTexImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> data:ArrayBufferView.t_0 -> unit [@@js.call "compressedTexImage2D"]
  val compressedTexSubImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> data:ArrayBufferView.t_0 -> unit [@@js.call "compressedTexSubImage2D"]
  val readPixels: 'tags this -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> pixels:ArrayBufferView.t_0 or_null -> unit [@@js.call "readPixels"]
  val texImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> pixels:ArrayBufferView.t_0 or_null -> unit [@@js.call "texImage2D"]
  val texImage2D': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texImage2D"]
  val texSubImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> pixels:ArrayBufferView.t_0 or_null -> unit [@@js.call "texSubImage2D"]
  val texSubImage2D': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texSubImage2D"]
  val uniform1fv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Float32List.t -> unit [@@js.call "uniform1fv"]
  val uniform1iv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Int32List.t -> unit [@@js.call "uniform1iv"]
  val uniform2fv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Float32List.t -> unit [@@js.call "uniform2fv"]
  val uniform2iv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Int32List.t -> unit [@@js.call "uniform2iv"]
  val uniform3fv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Float32List.t -> unit [@@js.call "uniform3fv"]
  val uniform3iv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Int32List.t -> unit [@@js.call "uniform3iv"]
  val uniform4fv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Float32List.t -> unit [@@js.call "uniform4fv"]
  val uniform4iv: 'tags this -> location:WebGLUniformLocation.t or_null -> v:Int32List.t -> unit [@@js.call "uniform4iv"]
  val uniformMatrix2fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> value:Float32List.t -> unit [@@js.call "uniformMatrix2fv"]
  val uniformMatrix3fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> value:Float32List.t -> unit [@@js.call "uniformMatrix3fv"]
  val uniformMatrix4fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> value:Float32List.t -> unit [@@js.call "uniformMatrix4fv"]
  val uniform1fv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLfloat.t Iterable.t_1 -> unit [@@js.call "uniform1fv"]
  val uniform1iv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLint.t Iterable.t_1 -> unit [@@js.call "uniform1iv"]
  val uniform2fv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLfloat.t Iterable.t_1 -> unit [@@js.call "uniform2fv"]
  val uniform2iv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLint.t Iterable.t_1 -> unit [@@js.call "uniform2iv"]
  val uniform3fv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLfloat.t Iterable.t_1 -> unit [@@js.call "uniform3fv"]
  val uniform3iv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLint.t Iterable.t_1 -> unit [@@js.call "uniform3iv"]
  val uniform4fv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLfloat.t Iterable.t_1 -> unit [@@js.call "uniform4fv"]
  val uniform4iv': 'tags this -> location:WebGLUniformLocation.t or_null -> v:GLint.t Iterable.t_1 -> unit [@@js.call "uniform4iv"]
  val uniformMatrix2fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> value:GLfloat.t Iterable.t_1 -> unit [@@js.call "uniformMatrix2fv"]
  val uniformMatrix3fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> value:GLfloat.t Iterable.t_1 -> unit [@@js.call "uniformMatrix3fv"]
  val uniformMatrix4fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> value:GLfloat.t Iterable.t_1 -> unit [@@js.call "uniformMatrix4fv"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface122 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLShaderPrecisionFormat.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLShaderPrecisionFormat.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLShaderPrecisionFormat.t [@@js.apply_newable]
end

(** Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getShaderPrecisionFormat() method. *)
and[@js.scope "WebGLShaderPrecisionFormat"] WebGLShaderPrecisionFormat : sig
  type t = [`WebGLShaderPrecisionFormat] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLShaderPrecisionFormat]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLShaderPrecisionFormat]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLShaderPrecisionFormat ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_precision: 'tags this -> GLint.t [@@js.get "precision"]
  val get_rangeMax: 'tags this -> GLint.t [@@js.get "rangeMax"]
  val get_rangeMin: 'tags this -> GLint.t [@@js.get "rangeMin"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface118 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLRenderbuffer.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLRenderbuffer.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLRenderbuffer.t [@@js.apply_newable]
end

(** Part of the WebGL API and represents a buffer that can contain an image, or can be source or target of an rendering operation. *)
and[@js.scope "WebGLRenderbuffer"] WebGLRenderbuffer : sig
  type t = [`WebGLRenderbuffer] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLRenderbuffer]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLRenderbuffer]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLRenderbuffer ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface115 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLFramebuffer.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLFramebuffer.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLFramebuffer.t [@@js.apply_newable]
end

(** Part of the WebGL API and represents a collection of buffers that serve as a rendering destination. *)
and[@js.scope "WebGLFramebuffer"] WebGLFramebuffer : sig
  type t = [`WebGLFramebuffer] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLFramebuffer]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLFramebuffer]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLFramebuffer ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module WebGLPowerPreference : sig
  type t = ([`L_s107_low_power[@js "low-power"] | `L_s57_default[@js "default"] | `L_s85_high_performance[@js "high-performance"]] [@js.enum])
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module WebGLContextAttributes : sig
  type t = [`WebGLContextAttributes] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLContextAttributes]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLContextAttributes]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLContextAttributes ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_alpha: 'tags this -> bool [@@js.get "alpha"]
  val set_alpha: 'tags this -> bool -> unit [@@js.set "alpha"]
  val get_antialias: 'tags this -> bool [@@js.get "antialias"]
  val set_antialias: 'tags this -> bool -> unit [@@js.set "antialias"]
  val get_depth: 'tags this -> bool [@@js.get "depth"]
  val set_depth: 'tags this -> bool -> unit [@@js.set "depth"]
  val get_desynchronized: 'tags this -> bool [@@js.get "desynchronized"]
  val set_desynchronized: 'tags this -> bool -> unit [@@js.set "desynchronized"]
  val get_failIfMajorPerformanceCaveat: 'tags this -> bool [@@js.get "failIfMajorPerformanceCaveat"]
  val set_failIfMajorPerformanceCaveat: 'tags this -> bool -> unit [@@js.set "failIfMajorPerformanceCaveat"]
  val get_powerPreference: 'tags this -> WebGLPowerPreference.t [@@js.get "powerPreference"]
  val set_powerPreference: 'tags this -> WebGLPowerPreference.t -> unit [@@js.set "powerPreference"]
  val get_premultipliedAlpha: 'tags this -> bool [@@js.get "premultipliedAlpha"]
  val set_premultipliedAlpha: 'tags this -> bool -> unit [@@js.set "premultipliedAlpha"]
  val get_preserveDrawingBuffer: 'tags this -> bool [@@js.get "preserveDrawingBuffer"]
  val set_preserveDrawingBuffer: 'tags this -> bool -> unit [@@js.set "preserveDrawingBuffer"]
  val get_stencil: 'tags this -> bool [@@js.get "stencil"]
  val set_stencil: 'tags this -> bool -> unit [@@js.set "stencil"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_lose_context : sig
  type t = [`WEBGL_lose_context] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_lose_context]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_lose_context]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_lose_context ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val loseContext: 'tags this -> unit [@@js.call "loseContext"]
  val restoreContext: 'tags this -> unit [@@js.call "restoreContext"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_draw_buffers : sig
  type t = [`WEBGL_draw_buffers] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_draw_buffers]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_draw_buffers]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_draw_buffers ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val drawBuffersWEBGL: 'tags this -> buffers:GLenum.t list -> unit [@@js.call "drawBuffersWEBGL"]
  val get_COLOR_ATTACHMENT0_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT0_WEBGL"]
  val get_COLOR_ATTACHMENT10_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT10_WEBGL"]
  val get_COLOR_ATTACHMENT11_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT11_WEBGL"]
  val get_COLOR_ATTACHMENT12_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT12_WEBGL"]
  val get_COLOR_ATTACHMENT13_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT13_WEBGL"]
  val get_COLOR_ATTACHMENT14_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT14_WEBGL"]
  val get_COLOR_ATTACHMENT15_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT15_WEBGL"]
  val get_COLOR_ATTACHMENT1_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT1_WEBGL"]
  val get_COLOR_ATTACHMENT2_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT2_WEBGL"]
  val get_COLOR_ATTACHMENT3_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT3_WEBGL"]
  val get_COLOR_ATTACHMENT4_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT4_WEBGL"]
  val get_COLOR_ATTACHMENT5_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT5_WEBGL"]
  val get_COLOR_ATTACHMENT6_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT6_WEBGL"]
  val get_COLOR_ATTACHMENT7_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT7_WEBGL"]
  val get_COLOR_ATTACHMENT8_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT8_WEBGL"]
  val get_COLOR_ATTACHMENT9_WEBGL: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT9_WEBGL"]
  val get_DRAW_BUFFER0_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER0_WEBGL"]
  val get_DRAW_BUFFER10_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER10_WEBGL"]
  val get_DRAW_BUFFER11_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER11_WEBGL"]
  val get_DRAW_BUFFER12_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER12_WEBGL"]
  val get_DRAW_BUFFER13_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER13_WEBGL"]
  val get_DRAW_BUFFER14_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER14_WEBGL"]
  val get_DRAW_BUFFER15_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER15_WEBGL"]
  val get_DRAW_BUFFER1_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER1_WEBGL"]
  val get_DRAW_BUFFER2_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER2_WEBGL"]
  val get_DRAW_BUFFER3_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER3_WEBGL"]
  val get_DRAW_BUFFER4_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER4_WEBGL"]
  val get_DRAW_BUFFER5_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER5_WEBGL"]
  val get_DRAW_BUFFER6_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER6_WEBGL"]
  val get_DRAW_BUFFER7_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER7_WEBGL"]
  val get_DRAW_BUFFER8_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER8_WEBGL"]
  val get_DRAW_BUFFER9_WEBGL: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER9_WEBGL"]
  val get_MAX_COLOR_ATTACHMENTS_WEBGL: 'tags this -> GLenum.t [@@js.get "MAX_COLOR_ATTACHMENTS_WEBGL"]
  val get_MAX_DRAW_BUFFERS_WEBGL: 'tags this -> GLenum.t [@@js.get "MAX_DRAW_BUFFERS_WEBGL"]
  val drawBuffersWEBGL': 'tags this -> buffers:GLenum.t Iterable.t_1 -> unit [@@js.call "drawBuffersWEBGL"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The WEBGL_depth_texture extension is part of the WebGL API and defines 2D depth and depth-stencil textures. *)
module WEBGL_depth_texture : sig
  type t = [`WEBGL_depth_texture] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_depth_texture]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_depth_texture]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_depth_texture ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_UNSIGNED_INT_24_8_WEBGL: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_24_8_WEBGL"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface121 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLShader.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLShader.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLShader.t [@@js.apply_newable]
end

(** The WebGLShader is part of the WebGL API and can either be a vertex or a fragment shader. A WebGLProgram requires both types of shaders. *)
and[@js.scope "WebGLShader"] WebGLShader : sig
  type t = [`WebGLShader] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLShader]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLShader]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLShader ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module WEBGL_debug_shaders : sig
  type t = [`WEBGL_debug_shaders] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_debug_shaders]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_debug_shaders]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_debug_shaders ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val getTranslatedShaderSource: 'tags this -> shader:WebGLShader.t -> string [@@js.call "getTranslatedShaderSource"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The WEBGL_debug_renderer_info extension is part of the WebGL API and exposes two constants with information about the graphics driver for debugging purposes. *)
module WEBGL_debug_renderer_info : sig
  type t = [`WEBGL_debug_renderer_info] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_debug_renderer_info]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_debug_renderer_info]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_debug_renderer_info ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_UNMASKED_RENDERER_WEBGL: 'tags this -> GLenum.t [@@js.get "UNMASKED_RENDERER_WEBGL"]
  val get_UNMASKED_VENDOR_WEBGL: 'tags this -> GLenum.t [@@js.get "UNMASKED_VENDOR_WEBGL"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_compressed_texture_s3tc_srgb : sig
  type t = [`WEBGL_compressed_texture_s3tc_srgb] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_compressed_texture_s3tc_srgb]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_compressed_texture_s3tc_srgb]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_compressed_texture_s3tc_srgb ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT"]
  val get_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT"]
  val get_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT"]
  val get_COMPRESSED_SRGB_S3TC_DXT1_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB_S3TC_DXT1_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The WEBGL_compressed_texture_s3tc extension is part of the WebGL API and exposes four S3TC compressed texture formats. *)
module WEBGL_compressed_texture_s3tc : sig
  type t = [`WEBGL_compressed_texture_s3tc] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_compressed_texture_s3tc]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_compressed_texture_s3tc]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_compressed_texture_s3tc ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_COMPRESSED_RGBA_S3TC_DXT1_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_S3TC_DXT1_EXT"]
  val get_COMPRESSED_RGBA_S3TC_DXT3_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_S3TC_DXT3_EXT"]
  val get_COMPRESSED_RGBA_S3TC_DXT5_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_S3TC_DXT5_EXT"]
  val get_COMPRESSED_RGB_S3TC_DXT1_EXT: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGB_S3TC_DXT1_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_compressed_texture_pvrtc : sig
  type t = [`WEBGL_compressed_texture_pvrtc] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_compressed_texture_pvrtc]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_compressed_texture_pvrtc]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_compressed_texture_pvrtc ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_PVRTC_2BPPV1_IMG"]
  val get_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_PVRTC_4BPPV1_IMG"]
  val get_COMPRESSED_RGB_PVRTC_2BPPV1_IMG: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGB_PVRTC_2BPPV1_IMG"]
  val get_COMPRESSED_RGB_PVRTC_4BPPV1_IMG: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGB_PVRTC_4BPPV1_IMG"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_compressed_texture_etc1 : sig
  type t = [`WEBGL_compressed_texture_etc1] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_compressed_texture_etc1]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_compressed_texture_etc1]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_compressed_texture_etc1 ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_COMPRESSED_RGB_ETC1_WEBGL: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGB_ETC1_WEBGL"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_compressed_texture_etc : sig
  type t = [`WEBGL_compressed_texture_etc] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_compressed_texture_etc]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_compressed_texture_etc]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_compressed_texture_etc ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_COMPRESSED_R11_EAC: 'tags this -> GLenum.t [@@js.get "COMPRESSED_R11_EAC"]
  val get_COMPRESSED_RG11_EAC: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RG11_EAC"]
  val get_COMPRESSED_RGB8_ETC2: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGB8_ETC2"]
  val get_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2"]
  val get_COMPRESSED_RGBA8_ETC2_EAC: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA8_ETC2_EAC"]
  val get_COMPRESSED_SIGNED_R11_EAC: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SIGNED_R11_EAC"]
  val get_COMPRESSED_SIGNED_RG11_EAC: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SIGNED_RG11_EAC"]
  val get_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ETC2_EAC"]
  val get_COMPRESSED_SRGB8_ETC2: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ETC2"]
  val get_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_compressed_texture_astc : sig
  type t = [`WEBGL_compressed_texture_astc] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_compressed_texture_astc]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_compressed_texture_astc]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_compressed_texture_astc ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val getSupportedProfiles: 'tags this -> string list [@@js.call "getSupportedProfiles"]
  val get_COMPRESSED_RGBA_ASTC_10x10_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_10x10_KHR"]
  val get_COMPRESSED_RGBA_ASTC_10x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_10x5_KHR"]
  val get_COMPRESSED_RGBA_ASTC_10x6_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_10x6_KHR"]
  val get_COMPRESSED_RGBA_ASTC_10x8_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_10x8_KHR"]
  val get_COMPRESSED_RGBA_ASTC_12x10_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_12x10_KHR"]
  val get_COMPRESSED_RGBA_ASTC_12x12_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_12x12_KHR"]
  val get_COMPRESSED_RGBA_ASTC_4x4_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_4x4_KHR"]
  val get_COMPRESSED_RGBA_ASTC_5x4_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_5x4_KHR"]
  val get_COMPRESSED_RGBA_ASTC_5x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_5x5_KHR"]
  val get_COMPRESSED_RGBA_ASTC_6x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_6x5_KHR"]
  val get_COMPRESSED_RGBA_ASTC_6x6_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_6x6_KHR"]
  val get_COMPRESSED_RGBA_ASTC_8x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_8x5_KHR"]
  val get_COMPRESSED_RGBA_ASTC_8x6_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_8x6_KHR"]
  val get_COMPRESSED_RGBA_ASTC_8x8_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_RGBA_ASTC_8x8_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR"]
  val get_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR: 'tags this -> GLenum.t [@@js.get "COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WEBGL_color_buffer_float : sig
  type t = [`WEBGL_color_buffer_float] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WEBGL_color_buffer_float]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WEBGL_color_buffer_float]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WEBGL_color_buffer_float ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT"]
  val get_RGBA32F_EXT: 'tags this -> GLenum.t [@@js.get "RGBA32F_EXT"]
  val get_UNSIGNED_NORMALIZED_EXT: 'tags this -> GLenum.t [@@js.get "UNSIGNED_NORMALIZED_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface124 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLTexture.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLTexture.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLTexture.t [@@js.apply_newable]
end

(** Part of the WebGL API and represents an opaque texture object providing storage and state for texturing operations. *)
and[@js.scope "WebGLTexture"] WebGLTexture : sig
  type t = [`WebGLTexture] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLTexture]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLTexture]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLTexture ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module OVR_multiview2 : sig
  type t = [`OVR_multiview2] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OVR_multiview2]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OVR_multiview2]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OVR_multiview2 ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val framebufferTextureMultiviewOVR: 'tags this -> target:GLenum.t -> attachment:GLenum.t -> texture:WebGLTexture.t or_null -> level:GLint.t -> baseViewIndex:GLint.t -> numViews:GLsizei.t -> unit [@@js.call "framebufferTextureMultiviewOVR"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR"]
  val get_FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR"]
  val get_MAX_VIEWS_OVR: 'tags this -> GLenum.t [@@js.get "MAX_VIEWS_OVR"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WebGLVertexArrayObjectOES : sig
  type t = [`WebGLVertexArrayObjectOES] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLVertexArrayObjectOES]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLVertexArrayObjectOES]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLVertexArrayObjectOES ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module OES_vertex_array_object : sig
  type t = [`OES_vertex_array_object] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_vertex_array_object]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_vertex_array_object]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_vertex_array_object ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val bindVertexArrayOES: 'tags this -> arrayObject:WebGLVertexArrayObjectOES.t or_null -> unit [@@js.call "bindVertexArrayOES"]
  val createVertexArrayOES: 'tags this -> WebGLVertexArrayObjectOES.t or_null [@@js.call "createVertexArrayOES"]
  val deleteVertexArrayOES: 'tags this -> arrayObject:WebGLVertexArrayObjectOES.t or_null -> unit [@@js.call "deleteVertexArrayOES"]
  val isVertexArrayOES: 'tags this -> arrayObject:WebGLVertexArrayObjectOES.t or_null -> GLboolean.t [@@js.call "isVertexArrayOES"]
  val get_VERTEX_ARRAY_BINDING_OES: 'tags this -> GLenum.t [@@js.get "VERTEX_ARRAY_BINDING_OES"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The OES_texture_half_float_linear extension is part of the WebGL API and allows linear filtering with half floating-point pixel types for textures. *)
module OES_texture_half_float_linear : sig
  type t = [`OES_texture_half_float_linear] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_texture_half_float_linear]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_texture_half_float_linear]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_texture_half_float_linear ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The OES_texture_half_float extension is part of the WebGL API and adds texture formats with 16- (aka half float) and 32-bit floating-point components. *)
module OES_texture_half_float : sig
  type t = [`OES_texture_half_float] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_texture_half_float]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_texture_half_float]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_texture_half_float ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_HALF_FLOAT_OES: 'tags this -> GLenum.t [@@js.get "HALF_FLOAT_OES"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The OES_texture_float_linear extension is part of the WebGL API and allows linear filtering with floating-point pixel types for textures. *)
module OES_texture_float_linear : sig
  type t = [`OES_texture_float_linear] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_texture_float_linear]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_texture_float_linear]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_texture_float_linear ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The OES_texture_float extension is part of the WebGL API and exposes floating-point pixel types for textures. *)
module OES_texture_float : sig
  type t = [`OES_texture_float] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_texture_float]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_texture_float]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_texture_float ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The OES_standard_derivatives extension is part of the WebGL API and adds the GLSL derivative functions dFdx, dFdy, and fwidth. *)
module OES_standard_derivatives : sig
  type t = [`OES_standard_derivatives] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_standard_derivatives]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_standard_derivatives]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_standard_derivatives ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_FRAGMENT_SHADER_DERIVATIVE_HINT_OES: 'tags this -> GLenum.t [@@js.get "FRAGMENT_SHADER_DERIVATIVE_HINT_OES"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The OES_element_index_uint extension is part of the WebGL API and adds support for gl.UNSIGNED_INT types to WebGLRenderingContext.drawElements(). *)
module OES_element_index_uint : sig
  type t = [`OES_element_index_uint] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`OES_element_index_uint]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`OES_element_index_uint]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `OES_element_index_uint ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module KHR_parallel_shader_compile : sig
  type t = [`KHR_parallel_shader_compile] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`KHR_parallel_shader_compile]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`KHR_parallel_shader_compile]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `KHR_parallel_shader_compile ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_COMPLETION_STATUS_KHR: 'tags this -> GLenum.t [@@js.get "COMPLETION_STATUS_KHR"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module GLclampf : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end

(** The EXT_texture_filter_anisotropic extension is part of the WebGL API and exposes two constants for anisotropic filtering (AF). *)
module EXT_texture_filter_anisotropic : sig
  type t = [`EXT_texture_filter_anisotropic] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_texture_filter_anisotropic]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_texture_filter_anisotropic]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_texture_filter_anisotropic ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_MAX_TEXTURE_MAX_ANISOTROPY_EXT: 'tags this -> GLenum.t [@@js.get "MAX_TEXTURE_MAX_ANISOTROPY_EXT"]
  val get_TEXTURE_MAX_ANISOTROPY_EXT: 'tags this -> GLenum.t [@@js.get "TEXTURE_MAX_ANISOTROPY_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EXT_shader_texture_lod : sig
  type t = [`EXT_shader_texture_lod] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_shader_texture_lod]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_shader_texture_lod]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_shader_texture_lod ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EXT_sRGB : sig
  type t = [`EXT_sRGB] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_sRGB]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_sRGB]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_sRGB ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT"]
  val get_SRGB8_ALPHA8_EXT: 'tags this -> GLenum.t [@@js.get "SRGB8_ALPHA8_EXT"]
  val get_SRGB_ALPHA_EXT: 'tags this -> GLenum.t [@@js.get "SRGB_ALPHA_EXT"]
  val get_SRGB_EXT: 'tags this -> GLenum.t [@@js.get "SRGB_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** The EXT_frag_depth extension is part of the WebGL API and enables to set a depth value of a fragment from within the fragment shader. *)
module EXT_frag_depth : sig
  type t = [`EXT_frag_depth] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_frag_depth]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_frag_depth]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_frag_depth ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EXT_float_blend : sig
  type t = [`EXT_float_blend] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_float_blend]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_float_blend]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_float_blend ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EXT_color_buffer_half_float : sig
  type t = [`EXT_color_buffer_half_float] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_color_buffer_half_float]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_color_buffer_half_float]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_color_buffer_half_float ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT"]
  val get_RGB16F_EXT: 'tags this -> GLenum.t [@@js.get "RGB16F_EXT"]
  val get_RGBA16F_EXT: 'tags this -> GLenum.t [@@js.get "RGBA16F_EXT"]
  val get_UNSIGNED_NORMALIZED_EXT: 'tags this -> GLenum.t [@@js.get "UNSIGNED_NORMALIZED_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EXT_color_buffer_float : sig
  type t = [`EXT_color_buffer_float] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_color_buffer_float]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_color_buffer_float]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_color_buffer_float ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module EXT_blend_minmax : sig
  type t = [`EXT_blend_minmax] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EXT_blend_minmax]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EXT_blend_minmax]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `EXT_blend_minmax ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_MAX_EXT: 'tags this -> GLenum.t [@@js.get "MAX_EXT"]
  val get_MIN_EXT: 'tags this -> GLenum.t [@@js.get "MIN_EXT"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface116 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLProgram.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLProgram.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLProgram.t [@@js.apply_newable]
end

(** The WebGLProgram is part of the WebGL API and is a combination of two compiled WebGLShaders consisting of a vertex shader and a fragment shader (both written in GLSL). *)
and[@js.scope "WebGLProgram"] WebGLProgram : sig
  type t = [`WebGLProgram] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLProgram]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLProgram]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLProgram ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface113 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLBuffer.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLBuffer.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLBuffer.t [@@js.apply_newable]
end

(** Part of the WebGL API and represents an opaque buffer object storing data such as vertices or colors. *)
and[@js.scope "WebGLBuffer"] WebGLBuffer : sig
  type t = [`WebGLBuffer] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLBuffer]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLBuffer]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLBuffer ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface112 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLActiveInfo.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLActiveInfo.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLActiveInfo.t [@@js.apply_newable]
end

(** Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getActiveAttrib() and WebGLRenderingContext.getActiveUniform() methods. *)
and[@js.scope "WebGLActiveInfo"] WebGLActiveInfo : sig
  type t = [`WebGLActiveInfo] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLActiveInfo]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLActiveInfo]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLActiveInfo ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_name: 'tags this -> string [@@js.get "name"]
  val get_size: 'tags this -> GLint.t [@@js.get "size"]
  val get_type: 'tags this -> GLenum.t [@@js.get "type"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module GLbitfield : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLuint : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end

(** The ANGLE_instanced_arrays extension is part of the WebGL API and allows to draw the same object, or groups of similar objects multiple times, if they share the same vertex data, primitive count and type. *)
module ANGLE_instanced_arrays : sig
  type t = [`ANGLE_instanced_arrays] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`ANGLE_instanced_arrays]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`ANGLE_instanced_arrays]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `ANGLE_instanced_arrays ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val drawArraysInstancedANGLE: 'tags this -> mode:GLenum.t -> first:GLint.t -> count:GLsizei.t -> primcount:GLsizei.t -> unit [@@js.call "drawArraysInstancedANGLE"]
  val drawElementsInstancedANGLE: 'tags this -> mode:GLenum.t -> count:GLsizei.t -> type_:GLenum.t -> offset:GLintptr.t -> primcount:GLsizei.t -> unit [@@js.call "drawElementsInstancedANGLE"]
  val vertexAttribDivisorANGLE: 'tags this -> index:GLuint.t -> divisor:GLuint.t -> unit [@@js.call "vertexAttribDivisorANGLE"]
  val get_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module WebGLRenderingContextBase : sig
  type t = [`WebGLRenderingContextBase] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLRenderingContextBase]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLRenderingContextBase]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLRenderingContextBase ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_drawingBufferHeight: 'tags this -> GLsizei.t [@@js.get "drawingBufferHeight"]
  val get_drawingBufferWidth: 'tags this -> GLsizei.t [@@js.get "drawingBufferWidth"]
  val activeTexture: 'tags this -> texture:GLenum.t -> unit [@@js.call "activeTexture"]
  val attachShader: 'tags this -> program:WebGLProgram.t -> shader:WebGLShader.t -> unit [@@js.call "attachShader"]
  val bindAttribLocation: 'tags this -> program:WebGLProgram.t -> index:GLuint.t -> name:string -> unit [@@js.call "bindAttribLocation"]
  val bindBuffer: 'tags this -> target:GLenum.t -> buffer:WebGLBuffer.t or_null -> unit [@@js.call "bindBuffer"]
  val bindFramebuffer: 'tags this -> target:GLenum.t -> framebuffer:WebGLFramebuffer.t or_null -> unit [@@js.call "bindFramebuffer"]
  val bindRenderbuffer: 'tags this -> target:GLenum.t -> renderbuffer:WebGLRenderbuffer.t or_null -> unit [@@js.call "bindRenderbuffer"]
  val bindTexture: 'tags this -> target:GLenum.t -> texture:WebGLTexture.t or_null -> unit [@@js.call "bindTexture"]
  val blendColor: 'tags this -> red:GLclampf.t -> green:GLclampf.t -> blue:GLclampf.t -> alpha:GLclampf.t -> unit [@@js.call "blendColor"]
  val blendEquation: 'tags this -> mode:GLenum.t -> unit [@@js.call "blendEquation"]
  val blendEquationSeparate: 'tags this -> modeRGB:GLenum.t -> modeAlpha:GLenum.t -> unit [@@js.call "blendEquationSeparate"]
  val blendFunc: 'tags this -> sfactor:GLenum.t -> dfactor:GLenum.t -> unit [@@js.call "blendFunc"]
  val blendFuncSeparate: 'tags this -> srcRGB:GLenum.t -> dstRGB:GLenum.t -> srcAlpha:GLenum.t -> dstAlpha:GLenum.t -> unit [@@js.call "blendFuncSeparate"]
  val checkFramebufferStatus: 'tags this -> target:GLenum.t -> GLenum.t [@@js.call "checkFramebufferStatus"]
  val clear: 'tags this -> mask:GLbitfield.t -> unit [@@js.call "clear"]
  val clearColor: 'tags this -> red:GLclampf.t -> green:GLclampf.t -> blue:GLclampf.t -> alpha:GLclampf.t -> unit [@@js.call "clearColor"]
  val clearDepth: 'tags this -> depth:GLclampf.t -> unit [@@js.call "clearDepth"]
  val clearStencil: 'tags this -> s:GLint.t -> unit [@@js.call "clearStencil"]
  val colorMask: 'tags this -> red:GLboolean.t -> green:GLboolean.t -> blue:GLboolean.t -> alpha:GLboolean.t -> unit [@@js.call "colorMask"]
  val compileShader: 'tags this -> shader:WebGLShader.t -> unit [@@js.call "compileShader"]
  val copyTexImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLenum.t -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> unit [@@js.call "copyTexImage2D"]
  val copyTexSubImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "copyTexSubImage2D"]
  val createBuffer: 'tags this -> WebGLBuffer.t or_null [@@js.call "createBuffer"]
  val createFramebuffer: 'tags this -> WebGLFramebuffer.t or_null [@@js.call "createFramebuffer"]
  val createProgram: 'tags this -> WebGLProgram.t or_null [@@js.call "createProgram"]
  val createRenderbuffer: 'tags this -> WebGLRenderbuffer.t or_null [@@js.call "createRenderbuffer"]
  val createShader: 'tags this -> type_:GLenum.t -> WebGLShader.t or_null [@@js.call "createShader"]
  val createTexture: 'tags this -> WebGLTexture.t or_null [@@js.call "createTexture"]
  val cullFace: 'tags this -> mode:GLenum.t -> unit [@@js.call "cullFace"]
  val deleteBuffer: 'tags this -> buffer:WebGLBuffer.t or_null -> unit [@@js.call "deleteBuffer"]
  val deleteFramebuffer: 'tags this -> framebuffer:WebGLFramebuffer.t or_null -> unit [@@js.call "deleteFramebuffer"]
  val deleteProgram: 'tags this -> program:WebGLProgram.t or_null -> unit [@@js.call "deleteProgram"]
  val deleteRenderbuffer: 'tags this -> renderbuffer:WebGLRenderbuffer.t or_null -> unit [@@js.call "deleteRenderbuffer"]
  val deleteShader: 'tags this -> shader:WebGLShader.t or_null -> unit [@@js.call "deleteShader"]
  val deleteTexture: 'tags this -> texture:WebGLTexture.t or_null -> unit [@@js.call "deleteTexture"]
  val depthFunc: 'tags this -> func:GLenum.t -> unit [@@js.call "depthFunc"]
  val depthMask: 'tags this -> flag:GLboolean.t -> unit [@@js.call "depthMask"]
  val depthRange: 'tags this -> zNear:GLclampf.t -> zFar:GLclampf.t -> unit [@@js.call "depthRange"]
  val detachShader: 'tags this -> program:WebGLProgram.t -> shader:WebGLShader.t -> unit [@@js.call "detachShader"]
  val disable: 'tags this -> cap:GLenum.t -> unit [@@js.call "disable"]
  val disableVertexAttribArray: 'tags this -> index:GLuint.t -> unit [@@js.call "disableVertexAttribArray"]
  val drawArrays: 'tags this -> mode:GLenum.t -> first:GLint.t -> count:GLsizei.t -> unit [@@js.call "drawArrays"]
  val drawElements: 'tags this -> mode:GLenum.t -> count:GLsizei.t -> type_:GLenum.t -> offset:GLintptr.t -> unit [@@js.call "drawElements"]
  val enable: 'tags this -> cap:GLenum.t -> unit [@@js.call "enable"]
  val enableVertexAttribArray: 'tags this -> index:GLuint.t -> unit [@@js.call "enableVertexAttribArray"]
  val finish: 'tags this -> unit [@@js.call "finish"]
  val flush: 'tags this -> unit [@@js.call "flush"]
  val framebufferRenderbuffer: 'tags this -> target:GLenum.t -> attachment:GLenum.t -> renderbuffertarget:GLenum.t -> renderbuffer:WebGLRenderbuffer.t or_null -> unit [@@js.call "framebufferRenderbuffer"]
  val framebufferTexture2D: 'tags this -> target:GLenum.t -> attachment:GLenum.t -> textarget:GLenum.t -> texture:WebGLTexture.t or_null -> level:GLint.t -> unit [@@js.call "framebufferTexture2D"]
  val frontFace: 'tags this -> mode:GLenum.t -> unit [@@js.call "frontFace"]
  val generateMipmap: 'tags this -> target:GLenum.t -> unit [@@js.call "generateMipmap"]
  val getActiveAttrib: 'tags this -> program:WebGLProgram.t -> index:GLuint.t -> WebGLActiveInfo.t or_null [@@js.call "getActiveAttrib"]
  val getActiveUniform: 'tags this -> program:WebGLProgram.t -> index:GLuint.t -> WebGLActiveInfo.t or_null [@@js.call "getActiveUniform"]
  val getAttachedShaders: 'tags this -> program:WebGLProgram.t -> WebGLShader.t list or_null [@@js.call "getAttachedShaders"]
  val getAttribLocation: 'tags this -> program:WebGLProgram.t -> name:string -> GLint.t [@@js.call "getAttribLocation"]
  val getBufferParameter: 'tags this -> target:GLenum.t -> pname:GLenum.t -> any [@@js.call "getBufferParameter"]
  val getContextAttributes: 'tags this -> WebGLContextAttributes.t or_null [@@js.call "getContextAttributes"]
  val getError: 'tags this -> GLenum.t [@@js.call "getError"]
  val getExtension: 'tags this -> extensionName:([`L_s2_EXT_blend_minmax[@js "EXT_blend_minmax"]] [@js.enum]) -> EXT_blend_minmax.t or_null [@@js.call "getExtension"]
  val getExtension': 'tags this -> extensionName:([`L_s3_EXT_color_buffer_float[@js "EXT_color_buffer_float"]] [@js.enum]) -> EXT_color_buffer_float.t or_null [@@js.call "getExtension"]
  val getExtension'': 'tags this -> extensionName:([`L_s4_EXT_color_buffer_half_float[@js "EXT_color_buffer_half_float"]] [@js.enum]) -> EXT_color_buffer_half_float.t or_null [@@js.call "getExtension"]
  val getExtension''': 'tags this -> extensionName:([`L_s5_EXT_float_blend[@js "EXT_float_blend"]] [@js.enum]) -> EXT_float_blend.t or_null [@@js.call "getExtension"]
  val getExtension'''': 'tags this -> extensionName:([`L_s9_EXT_texture_filter_anisotropic[@js "EXT_texture_filter_anisotropic"]] [@js.enum]) -> EXT_texture_filter_anisotropic.t or_null [@@js.call "getExtension"]
  val getExtension''''': 'tags this -> extensionName:([`L_s6_EXT_frag_depth[@js "EXT_frag_depth"]] [@js.enum]) -> EXT_frag_depth.t or_null [@@js.call "getExtension"]
  val getExtension'''''': 'tags this -> extensionName:([`L_s8_EXT_shader_texture_lod[@js "EXT_shader_texture_lod"]] [@js.enum]) -> EXT_shader_texture_lod.t or_null [@@js.call "getExtension"]
  val getExtension''''''': 'tags this -> extensionName:([`L_s7_EXT_sRGB[@js "EXT_sRGB"]] [@js.enum]) -> EXT_sRGB.t or_null [@@js.call "getExtension"]
  val getExtension'''''''': 'tags this -> extensionName:([`L_s10_KHR_parallel_shader_compile[@js "KHR_parallel_shader_compile"]] [@js.enum]) -> KHR_parallel_shader_compile.t or_null [@@js.call "getExtension"]
  val getExtension''''''''': 'tags this -> extensionName:([`L_s17_OES_vertex_array_object[@js "OES_vertex_array_object"]] [@js.enum]) -> OES_vertex_array_object.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''': 'tags this -> extensionName:([`L_s18_OVR_multiview2[@js "OVR_multiview2"]] [@js.enum]) -> OVR_multiview2.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''': 'tags this -> extensionName:([`L_s19_WEBGL_color_buffer_float[@js "WEBGL_color_buffer_float"]] [@js.enum]) -> WEBGL_color_buffer_float.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''': 'tags this -> extensionName:([`L_s20_WEBGL_compressed_texture_astc[@js "WEBGL_compressed_texture_astc"]] [@js.enum]) -> WEBGL_compressed_texture_astc.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''': 'tags this -> extensionName:([`L_s21_WEBGL_compressed_texture_etc[@js "WEBGL_compressed_texture_etc"]] [@js.enum]) -> WEBGL_compressed_texture_etc.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''': 'tags this -> extensionName:([`L_s22_WEBGL_compressed_texture_etc1[@js "WEBGL_compressed_texture_etc1"]] [@js.enum]) -> WEBGL_compressed_texture_etc1.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''': 'tags this -> extensionName:([`L_s23_WEBGL_compressed_texture_pvrtc[@js "WEBGL_compressed_texture_pvrtc"]] [@js.enum]) -> WEBGL_compressed_texture_pvrtc.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''': 'tags this -> extensionName:([`L_s25_WEBGL_compressed_texture_s3tc_srgb[@js "WEBGL_compressed_texture_s3tc_srgb"]] [@js.enum]) -> WEBGL_compressed_texture_s3tc_srgb.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''''': 'tags this -> extensionName:([`L_s27_WEBGL_debug_shaders[@js "WEBGL_debug_shaders"]] [@js.enum]) -> WEBGL_debug_shaders.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''''': 'tags this -> extensionName:([`L_s29_WEBGL_draw_buffers[@js "WEBGL_draw_buffers"]] [@js.enum]) -> WEBGL_draw_buffers.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''''''': 'tags this -> extensionName:([`L_s30_WEBGL_lose_context[@js "WEBGL_lose_context"]] [@js.enum]) -> WEBGL_lose_context.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''''''': 'tags this -> extensionName:([`L_s28_WEBGL_depth_texture[@js "WEBGL_depth_texture"]] [@js.enum]) -> WEBGL_depth_texture.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''''''''': 'tags this -> extensionName:([`L_s26_WEBGL_debug_renderer_info[@js "WEBGL_debug_renderer_info"]] [@js.enum]) -> WEBGL_debug_renderer_info.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''''''''': 'tags this -> extensionName:([`L_s24_WEBGL_compressed_texture_s3tc[@js "WEBGL_compressed_texture_s3tc"]] [@js.enum]) -> WEBGL_compressed_texture_s3tc.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''''''''''': 'tags this -> extensionName:([`L_s16_OES_texture_half_float_linear[@js "OES_texture_half_float_linear"]] [@js.enum]) -> OES_texture_half_float_linear.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''''''''''': 'tags this -> extensionName:([`L_s15_OES_texture_half_float[@js "OES_texture_half_float"]] [@js.enum]) -> OES_texture_half_float.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''''''''''''': 'tags this -> extensionName:([`L_s14_OES_texture_float_linear[@js "OES_texture_float_linear"]] [@js.enum]) -> OES_texture_float_linear.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''''''''''''': 'tags this -> extensionName:([`L_s13_OES_texture_float[@js "OES_texture_float"]] [@js.enum]) -> OES_texture_float.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''''''''''''''': 'tags this -> extensionName:([`L_s12_OES_standard_derivatives[@js "OES_standard_derivatives"]] [@js.enum]) -> OES_standard_derivatives.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''''''''''''''': 'tags this -> extensionName:([`L_s11_OES_element_index_uint[@js "OES_element_index_uint"]] [@js.enum]) -> OES_element_index_uint.t or_null [@@js.call "getExtension"]
  val getExtension''''''''''''''''''''''''''''': 'tags this -> extensionName:([`L_s1_ANGLE_instanced_arrays[@js "ANGLE_instanced_arrays"]] [@js.enum]) -> ANGLE_instanced_arrays.t or_null [@@js.call "getExtension"]
  val getExtension'''''''''''''''''''''''''''''': 'tags this -> name:string -> any [@@js.call "getExtension"]
  val getFramebufferAttachmentParameter: 'tags this -> target:GLenum.t -> attachment:GLenum.t -> pname:GLenum.t -> any [@@js.call "getFramebufferAttachmentParameter"]
  val getParameter: 'tags this -> pname:GLenum.t -> any [@@js.call "getParameter"]
  val getProgramInfoLog: 'tags this -> program:WebGLProgram.t -> string or_null [@@js.call "getProgramInfoLog"]
  val getProgramParameter: 'tags this -> program:WebGLProgram.t -> pname:GLenum.t -> any [@@js.call "getProgramParameter"]
  val getRenderbufferParameter: 'tags this -> target:GLenum.t -> pname:GLenum.t -> any [@@js.call "getRenderbufferParameter"]
  val getShaderInfoLog: 'tags this -> shader:WebGLShader.t -> string or_null [@@js.call "getShaderInfoLog"]
  val getShaderParameter: 'tags this -> shader:WebGLShader.t -> pname:GLenum.t -> any [@@js.call "getShaderParameter"]
  val getShaderPrecisionFormat: 'tags this -> shadertype:GLenum.t -> precisiontype:GLenum.t -> WebGLShaderPrecisionFormat.t or_null [@@js.call "getShaderPrecisionFormat"]
  val getShaderSource: 'tags this -> shader:WebGLShader.t -> string or_null [@@js.call "getShaderSource"]
  val getSupportedExtensions: 'tags this -> string list or_null [@@js.call "getSupportedExtensions"]
  val getTexParameter: 'tags this -> target:GLenum.t -> pname:GLenum.t -> any [@@js.call "getTexParameter"]
  val getUniform: 'tags this -> program:WebGLProgram.t -> location:WebGLUniformLocation.t -> any [@@js.call "getUniform"]
  val getUniformLocation: 'tags this -> program:WebGLProgram.t -> name:string -> WebGLUniformLocation.t or_null [@@js.call "getUniformLocation"]
  val getVertexAttrib: 'tags this -> index:GLuint.t -> pname:GLenum.t -> any [@@js.call "getVertexAttrib"]
  val getVertexAttribOffset: 'tags this -> index:GLuint.t -> pname:GLenum.t -> GLintptr.t [@@js.call "getVertexAttribOffset"]
  val hint: 'tags this -> target:GLenum.t -> mode:GLenum.t -> unit [@@js.call "hint"]
  val isBuffer: 'tags this -> buffer:WebGLBuffer.t or_null -> GLboolean.t [@@js.call "isBuffer"]
  val isContextLost: 'tags this -> bool [@@js.call "isContextLost"]
  val isEnabled: 'tags this -> cap:GLenum.t -> GLboolean.t [@@js.call "isEnabled"]
  val isFramebuffer: 'tags this -> framebuffer:WebGLFramebuffer.t or_null -> GLboolean.t [@@js.call "isFramebuffer"]
  val isProgram: 'tags this -> program:WebGLProgram.t or_null -> GLboolean.t [@@js.call "isProgram"]
  val isRenderbuffer: 'tags this -> renderbuffer:WebGLRenderbuffer.t or_null -> GLboolean.t [@@js.call "isRenderbuffer"]
  val isShader: 'tags this -> shader:WebGLShader.t or_null -> GLboolean.t [@@js.call "isShader"]
  val isTexture: 'tags this -> texture:WebGLTexture.t or_null -> GLboolean.t [@@js.call "isTexture"]
  val lineWidth: 'tags this -> width:GLfloat.t -> unit [@@js.call "lineWidth"]
  val linkProgram: 'tags this -> program:WebGLProgram.t -> unit [@@js.call "linkProgram"]
  val pixelStorei: 'tags this -> pname:GLenum.t -> param:(GLboolean.t, GLint.t) union2 -> unit [@@js.call "pixelStorei"]
  val polygonOffset: 'tags this -> factor:GLfloat.t -> units:GLfloat.t -> unit [@@js.call "polygonOffset"]
  val renderbufferStorage: 'tags this -> target:GLenum.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "renderbufferStorage"]
  val sampleCoverage: 'tags this -> value:GLclampf.t -> invert:GLboolean.t -> unit [@@js.call "sampleCoverage"]
  val scissor: 'tags this -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "scissor"]
  val shaderSource: 'tags this -> shader:WebGLShader.t -> source:string -> unit [@@js.call "shaderSource"]
  val stencilFunc: 'tags this -> func:GLenum.t -> ref:GLint.t -> mask:GLuint.t -> unit [@@js.call "stencilFunc"]
  val stencilFuncSeparate: 'tags this -> face:GLenum.t -> func:GLenum.t -> ref:GLint.t -> mask:GLuint.t -> unit [@@js.call "stencilFuncSeparate"]
  val stencilMask: 'tags this -> mask:GLuint.t -> unit [@@js.call "stencilMask"]
  val stencilMaskSeparate: 'tags this -> face:GLenum.t -> mask:GLuint.t -> unit [@@js.call "stencilMaskSeparate"]
  val stencilOp: 'tags this -> fail:GLenum.t -> zfail:GLenum.t -> zpass:GLenum.t -> unit [@@js.call "stencilOp"]
  val stencilOpSeparate: 'tags this -> face:GLenum.t -> fail:GLenum.t -> zfail:GLenum.t -> zpass:GLenum.t -> unit [@@js.call "stencilOpSeparate"]
  val texParameterf: 'tags this -> target:GLenum.t -> pname:GLenum.t -> param:GLfloat.t -> unit [@@js.call "texParameterf"]
  val texParameteri: 'tags this -> target:GLenum.t -> pname:GLenum.t -> param:GLint.t -> unit [@@js.call "texParameteri"]
  val uniform1f: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLfloat.t -> unit [@@js.call "uniform1f"]
  val uniform1i: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLint.t -> unit [@@js.call "uniform1i"]
  val uniform2f: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLfloat.t -> y:GLfloat.t -> unit [@@js.call "uniform2f"]
  val uniform2i: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLint.t -> y:GLint.t -> unit [@@js.call "uniform2i"]
  val uniform3f: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLfloat.t -> y:GLfloat.t -> z:GLfloat.t -> unit [@@js.call "uniform3f"]
  val uniform3i: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLint.t -> y:GLint.t -> z:GLint.t -> unit [@@js.call "uniform3i"]
  val uniform4f: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLfloat.t -> y:GLfloat.t -> z:GLfloat.t -> w:GLfloat.t -> unit [@@js.call "uniform4f"]
  val uniform4i: 'tags this -> location:WebGLUniformLocation.t or_null -> x:GLint.t -> y:GLint.t -> z:GLint.t -> w:GLint.t -> unit [@@js.call "uniform4i"]
  val useProgram: 'tags this -> program:WebGLProgram.t or_null -> unit [@@js.call "useProgram"]
  val validateProgram: 'tags this -> program:WebGLProgram.t -> unit [@@js.call "validateProgram"]
  val vertexAttrib1f: 'tags this -> index:GLuint.t -> x:GLfloat.t -> unit [@@js.call "vertexAttrib1f"]
  val vertexAttrib1fv: 'tags this -> index:GLuint.t -> values:Float32List.t -> unit [@@js.call "vertexAttrib1fv"]
  val vertexAttrib2f: 'tags this -> index:GLuint.t -> x:GLfloat.t -> y:GLfloat.t -> unit [@@js.call "vertexAttrib2f"]
  val vertexAttrib2fv: 'tags this -> index:GLuint.t -> values:Float32List.t -> unit [@@js.call "vertexAttrib2fv"]
  val vertexAttrib3f: 'tags this -> index:GLuint.t -> x:GLfloat.t -> y:GLfloat.t -> z:GLfloat.t -> unit [@@js.call "vertexAttrib3f"]
  val vertexAttrib3fv: 'tags this -> index:GLuint.t -> values:Float32List.t -> unit [@@js.call "vertexAttrib3fv"]
  val vertexAttrib4f: 'tags this -> index:GLuint.t -> x:GLfloat.t -> y:GLfloat.t -> z:GLfloat.t -> w:GLfloat.t -> unit [@@js.call "vertexAttrib4f"]
  val vertexAttrib4fv: 'tags this -> index:GLuint.t -> values:Float32List.t -> unit [@@js.call "vertexAttrib4fv"]
  val vertexAttribPointer: 'tags this -> index:GLuint.t -> size:GLint.t -> type_:GLenum.t -> normalized:GLboolean.t -> stride:GLsizei.t -> offset:GLintptr.t -> unit [@@js.call "vertexAttribPointer"]
  val viewport: 'tags this -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "viewport"]
  val get_ACTIVE_ATTRIBUTES: 'tags this -> GLenum.t [@@js.get "ACTIVE_ATTRIBUTES"]
  val get_ACTIVE_TEXTURE: 'tags this -> GLenum.t [@@js.get "ACTIVE_TEXTURE"]
  val get_ACTIVE_UNIFORMS: 'tags this -> GLenum.t [@@js.get "ACTIVE_UNIFORMS"]
  val get_ALIASED_LINE_WIDTH_RANGE: 'tags this -> GLenum.t [@@js.get "ALIASED_LINE_WIDTH_RANGE"]
  val get_ALIASED_POINT_SIZE_RANGE: 'tags this -> GLenum.t [@@js.get "ALIASED_POINT_SIZE_RANGE"]
  val get_ALPHA: 'tags this -> GLenum.t [@@js.get "ALPHA"]
  val get_ALPHA_BITS: 'tags this -> GLenum.t [@@js.get "ALPHA_BITS"]
  val get_ALWAYS: 'tags this -> GLenum.t [@@js.get "ALWAYS"]
  val get_ARRAY_BUFFER: 'tags this -> GLenum.t [@@js.get "ARRAY_BUFFER"]
  val get_ARRAY_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "ARRAY_BUFFER_BINDING"]
  val get_ATTACHED_SHADERS: 'tags this -> GLenum.t [@@js.get "ATTACHED_SHADERS"]
  val get_BACK: 'tags this -> GLenum.t [@@js.get "BACK"]
  val get_BLEND: 'tags this -> GLenum.t [@@js.get "BLEND"]
  val get_BLEND_COLOR: 'tags this -> GLenum.t [@@js.get "BLEND_COLOR"]
  val get_BLEND_DST_ALPHA: 'tags this -> GLenum.t [@@js.get "BLEND_DST_ALPHA"]
  val get_BLEND_DST_RGB: 'tags this -> GLenum.t [@@js.get "BLEND_DST_RGB"]
  val get_BLEND_EQUATION: 'tags this -> GLenum.t [@@js.get "BLEND_EQUATION"]
  val get_BLEND_EQUATION_ALPHA: 'tags this -> GLenum.t [@@js.get "BLEND_EQUATION_ALPHA"]
  val get_BLEND_EQUATION_RGB: 'tags this -> GLenum.t [@@js.get "BLEND_EQUATION_RGB"]
  val get_BLEND_SRC_ALPHA: 'tags this -> GLenum.t [@@js.get "BLEND_SRC_ALPHA"]
  val get_BLEND_SRC_RGB: 'tags this -> GLenum.t [@@js.get "BLEND_SRC_RGB"]
  val get_BLUE_BITS: 'tags this -> GLenum.t [@@js.get "BLUE_BITS"]
  val get_BOOL: 'tags this -> GLenum.t [@@js.get "BOOL"]
  val get_BOOL_VEC2: 'tags this -> GLenum.t [@@js.get "BOOL_VEC2"]
  val get_BOOL_VEC3: 'tags this -> GLenum.t [@@js.get "BOOL_VEC3"]
  val get_BOOL_VEC4: 'tags this -> GLenum.t [@@js.get "BOOL_VEC4"]
  val get_BROWSER_DEFAULT_WEBGL: 'tags this -> GLenum.t [@@js.get "BROWSER_DEFAULT_WEBGL"]
  val get_BUFFER_SIZE: 'tags this -> GLenum.t [@@js.get "BUFFER_SIZE"]
  val get_BUFFER_USAGE: 'tags this -> GLenum.t [@@js.get "BUFFER_USAGE"]
  val get_BYTE: 'tags this -> GLenum.t [@@js.get "BYTE"]
  val get_CCW: 'tags this -> GLenum.t [@@js.get "CCW"]
  val get_CLAMP_TO_EDGE: 'tags this -> GLenum.t [@@js.get "CLAMP_TO_EDGE"]
  val get_COLOR_ATTACHMENT0: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT0"]
  val get_COLOR_BUFFER_BIT: 'tags this -> GLenum.t [@@js.get "COLOR_BUFFER_BIT"]
  val get_COLOR_CLEAR_VALUE: 'tags this -> GLenum.t [@@js.get "COLOR_CLEAR_VALUE"]
  val get_COLOR_WRITEMASK: 'tags this -> GLenum.t [@@js.get "COLOR_WRITEMASK"]
  val get_COMPILE_STATUS: 'tags this -> GLenum.t [@@js.get "COMPILE_STATUS"]
  val get_COMPRESSED_TEXTURE_FORMATS: 'tags this -> GLenum.t [@@js.get "COMPRESSED_TEXTURE_FORMATS"]
  val get_CONSTANT_ALPHA: 'tags this -> GLenum.t [@@js.get "CONSTANT_ALPHA"]
  val get_CONSTANT_COLOR: 'tags this -> GLenum.t [@@js.get "CONSTANT_COLOR"]
  val get_CONTEXT_LOST_WEBGL: 'tags this -> GLenum.t [@@js.get "CONTEXT_LOST_WEBGL"]
  val get_CULL_FACE: 'tags this -> GLenum.t [@@js.get "CULL_FACE"]
  val get_CULL_FACE_MODE: 'tags this -> GLenum.t [@@js.get "CULL_FACE_MODE"]
  val get_CURRENT_PROGRAM: 'tags this -> GLenum.t [@@js.get "CURRENT_PROGRAM"]
  val get_CURRENT_VERTEX_ATTRIB: 'tags this -> GLenum.t [@@js.get "CURRENT_VERTEX_ATTRIB"]
  val get_CW: 'tags this -> GLenum.t [@@js.get "CW"]
  val get_DECR: 'tags this -> GLenum.t [@@js.get "DECR"]
  val get_DECR_WRAP: 'tags this -> GLenum.t [@@js.get "DECR_WRAP"]
  val get_DELETE_STATUS: 'tags this -> GLenum.t [@@js.get "DELETE_STATUS"]
  val get_DEPTH_ATTACHMENT: 'tags this -> GLenum.t [@@js.get "DEPTH_ATTACHMENT"]
  val get_DEPTH_BITS: 'tags this -> GLenum.t [@@js.get "DEPTH_BITS"]
  val get_DEPTH_BUFFER_BIT: 'tags this -> GLenum.t [@@js.get "DEPTH_BUFFER_BIT"]
  val get_DEPTH_CLEAR_VALUE: 'tags this -> GLenum.t [@@js.get "DEPTH_CLEAR_VALUE"]
  val get_DEPTH_COMPONENT: 'tags this -> GLenum.t [@@js.get "DEPTH_COMPONENT"]
  val get_DEPTH_COMPONENT16: 'tags this -> GLenum.t [@@js.get "DEPTH_COMPONENT16"]
  val get_DEPTH_FUNC: 'tags this -> GLenum.t [@@js.get "DEPTH_FUNC"]
  val get_DEPTH_RANGE: 'tags this -> GLenum.t [@@js.get "DEPTH_RANGE"]
  val get_DEPTH_STENCIL: 'tags this -> GLenum.t [@@js.get "DEPTH_STENCIL"]
  val get_DEPTH_STENCIL_ATTACHMENT: 'tags this -> GLenum.t [@@js.get "DEPTH_STENCIL_ATTACHMENT"]
  val get_DEPTH_TEST: 'tags this -> GLenum.t [@@js.get "DEPTH_TEST"]
  val get_DEPTH_WRITEMASK: 'tags this -> GLenum.t [@@js.get "DEPTH_WRITEMASK"]
  val get_DITHER: 'tags this -> GLenum.t [@@js.get "DITHER"]
  val get_DONT_CARE: 'tags this -> GLenum.t [@@js.get "DONT_CARE"]
  val get_DST_ALPHA: 'tags this -> GLenum.t [@@js.get "DST_ALPHA"]
  val get_DST_COLOR: 'tags this -> GLenum.t [@@js.get "DST_COLOR"]
  val get_DYNAMIC_DRAW: 'tags this -> GLenum.t [@@js.get "DYNAMIC_DRAW"]
  val get_ELEMENT_ARRAY_BUFFER: 'tags this -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER"]
  val get_ELEMENT_ARRAY_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER_BINDING"]
  val get_EQUAL: 'tags this -> GLenum.t [@@js.get "EQUAL"]
  val get_FASTEST: 'tags this -> GLenum.t [@@js.get "FASTEST"]
  val get_FLOAT: 'tags this -> GLenum.t [@@js.get "FLOAT"]
  val get_FLOAT_MAT2: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT2"]
  val get_FLOAT_MAT3: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT3"]
  val get_FLOAT_MAT4: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT4"]
  val get_FLOAT_VEC2: 'tags this -> GLenum.t [@@js.get "FLOAT_VEC2"]
  val get_FLOAT_VEC3: 'tags this -> GLenum.t [@@js.get "FLOAT_VEC3"]
  val get_FLOAT_VEC4: 'tags this -> GLenum.t [@@js.get "FLOAT_VEC4"]
  val get_FRAGMENT_SHADER: 'tags this -> GLenum.t [@@js.get "FRAGMENT_SHADER"]
  val get_FRAMEBUFFER: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER"]
  val get_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_NAME"]
  val get_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL"]
  val get_FRAMEBUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_BINDING"]
  val get_FRAMEBUFFER_COMPLETE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_COMPLETE"]
  val get_FRAMEBUFFER_INCOMPLETE_ATTACHMENT: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_ATTACHMENT"]
  val get_FRAMEBUFFER_INCOMPLETE_DIMENSIONS: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"]
  val get_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"]
  val get_FRAMEBUFFER_UNSUPPORTED: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_UNSUPPORTED"]
  val get_FRONT: 'tags this -> GLenum.t [@@js.get "FRONT"]
  val get_FRONT_AND_BACK: 'tags this -> GLenum.t [@@js.get "FRONT_AND_BACK"]
  val get_FRONT_FACE: 'tags this -> GLenum.t [@@js.get "FRONT_FACE"]
  val get_FUNC_ADD: 'tags this -> GLenum.t [@@js.get "FUNC_ADD"]
  val get_FUNC_REVERSE_SUBTRACT: 'tags this -> GLenum.t [@@js.get "FUNC_REVERSE_SUBTRACT"]
  val get_FUNC_SUBTRACT: 'tags this -> GLenum.t [@@js.get "FUNC_SUBTRACT"]
  val get_GENERATE_MIPMAP_HINT: 'tags this -> GLenum.t [@@js.get "GENERATE_MIPMAP_HINT"]
  val get_GEQUAL: 'tags this -> GLenum.t [@@js.get "GEQUAL"]
  val get_GREATER: 'tags this -> GLenum.t [@@js.get "GREATER"]
  val get_GREEN_BITS: 'tags this -> GLenum.t [@@js.get "GREEN_BITS"]
  val get_HIGH_FLOAT: 'tags this -> GLenum.t [@@js.get "HIGH_FLOAT"]
  val get_HIGH_INT: 'tags this -> GLenum.t [@@js.get "HIGH_INT"]
  val get_IMPLEMENTATION_COLOR_READ_FORMAT: 'tags this -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_FORMAT"]
  val get_IMPLEMENTATION_COLOR_READ_TYPE: 'tags this -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_TYPE"]
  val get_INCR: 'tags this -> GLenum.t [@@js.get "INCR"]
  val get_INCR_WRAP: 'tags this -> GLenum.t [@@js.get "INCR_WRAP"]
  val get_INT: 'tags this -> GLenum.t [@@js.get "INT"]
  val get_INT_VEC2: 'tags this -> GLenum.t [@@js.get "INT_VEC2"]
  val get_INT_VEC3: 'tags this -> GLenum.t [@@js.get "INT_VEC3"]
  val get_INT_VEC4: 'tags this -> GLenum.t [@@js.get "INT_VEC4"]
  val get_INVALID_ENUM: 'tags this -> GLenum.t [@@js.get "INVALID_ENUM"]
  val get_INVALID_FRAMEBUFFER_OPERATION: 'tags this -> GLenum.t [@@js.get "INVALID_FRAMEBUFFER_OPERATION"]
  val get_INVALID_OPERATION: 'tags this -> GLenum.t [@@js.get "INVALID_OPERATION"]
  val get_INVALID_VALUE: 'tags this -> GLenum.t [@@js.get "INVALID_VALUE"]
  val get_INVERT: 'tags this -> GLenum.t [@@js.get "INVERT"]
  val get_KEEP: 'tags this -> GLenum.t [@@js.get "KEEP"]
  val get_LEQUAL: 'tags this -> GLenum.t [@@js.get "LEQUAL"]
  val get_LESS: 'tags this -> GLenum.t [@@js.get "LESS"]
  val get_LINEAR: 'tags this -> GLenum.t [@@js.get "LINEAR"]
  val get_LINEAR_MIPMAP_LINEAR: 'tags this -> GLenum.t [@@js.get "LINEAR_MIPMAP_LINEAR"]
  val get_LINEAR_MIPMAP_NEAREST: 'tags this -> GLenum.t [@@js.get "LINEAR_MIPMAP_NEAREST"]
  val get_LINES: 'tags this -> GLenum.t [@@js.get "LINES"]
  val get_LINE_LOOP: 'tags this -> GLenum.t [@@js.get "LINE_LOOP"]
  val get_LINE_STRIP: 'tags this -> GLenum.t [@@js.get "LINE_STRIP"]
  val get_LINE_WIDTH: 'tags this -> GLenum.t [@@js.get "LINE_WIDTH"]
  val get_LINK_STATUS: 'tags this -> GLenum.t [@@js.get "LINK_STATUS"]
  val get_LOW_FLOAT: 'tags this -> GLenum.t [@@js.get "LOW_FLOAT"]
  val get_LOW_INT: 'tags this -> GLenum.t [@@js.get "LOW_INT"]
  val get_LUMINANCE: 'tags this -> GLenum.t [@@js.get "LUMINANCE"]
  val get_LUMINANCE_ALPHA: 'tags this -> GLenum.t [@@js.get "LUMINANCE_ALPHA"]
  val get_MAX_COMBINED_TEXTURE_IMAGE_UNITS: 'tags this -> GLenum.t [@@js.get "MAX_COMBINED_TEXTURE_IMAGE_UNITS"]
  val get_MAX_CUBE_MAP_TEXTURE_SIZE: 'tags this -> GLenum.t [@@js.get "MAX_CUBE_MAP_TEXTURE_SIZE"]
  val get_MAX_FRAGMENT_UNIFORM_VECTORS: 'tags this -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_VECTORS"]
  val get_MAX_RENDERBUFFER_SIZE: 'tags this -> GLenum.t [@@js.get "MAX_RENDERBUFFER_SIZE"]
  val get_MAX_TEXTURE_IMAGE_UNITS: 'tags this -> GLenum.t [@@js.get "MAX_TEXTURE_IMAGE_UNITS"]
  val get_MAX_TEXTURE_SIZE: 'tags this -> GLenum.t [@@js.get "MAX_TEXTURE_SIZE"]
  val get_MAX_VARYING_VECTORS: 'tags this -> GLenum.t [@@js.get "MAX_VARYING_VECTORS"]
  val get_MAX_VERTEX_ATTRIBS: 'tags this -> GLenum.t [@@js.get "MAX_VERTEX_ATTRIBS"]
  val get_MAX_VERTEX_TEXTURE_IMAGE_UNITS: 'tags this -> GLenum.t [@@js.get "MAX_VERTEX_TEXTURE_IMAGE_UNITS"]
  val get_MAX_VERTEX_UNIFORM_VECTORS: 'tags this -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_VECTORS"]
  val get_MAX_VIEWPORT_DIMS: 'tags this -> GLenum.t [@@js.get "MAX_VIEWPORT_DIMS"]
  val get_MEDIUM_FLOAT: 'tags this -> GLenum.t [@@js.get "MEDIUM_FLOAT"]
  val get_MEDIUM_INT: 'tags this -> GLenum.t [@@js.get "MEDIUM_INT"]
  val get_MIRRORED_REPEAT: 'tags this -> GLenum.t [@@js.get "MIRRORED_REPEAT"]
  val get_NEAREST: 'tags this -> GLenum.t [@@js.get "NEAREST"]
  val get_NEAREST_MIPMAP_LINEAR: 'tags this -> GLenum.t [@@js.get "NEAREST_MIPMAP_LINEAR"]
  val get_NEAREST_MIPMAP_NEAREST: 'tags this -> GLenum.t [@@js.get "NEAREST_MIPMAP_NEAREST"]
  val get_NEVER: 'tags this -> GLenum.t [@@js.get "NEVER"]
  val get_NICEST: 'tags this -> GLenum.t [@@js.get "NICEST"]
  val get_NONE: 'tags this -> GLenum.t [@@js.get "NONE"]
  val get_NOTEQUAL: 'tags this -> GLenum.t [@@js.get "NOTEQUAL"]
  val get_NO_ERROR: 'tags this -> GLenum.t [@@js.get "NO_ERROR"]
  val get_ONE: 'tags this -> GLenum.t [@@js.get "ONE"]
  val get_ONE_MINUS_CONSTANT_ALPHA: 'tags this -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_ALPHA"]
  val get_ONE_MINUS_CONSTANT_COLOR: 'tags this -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_COLOR"]
  val get_ONE_MINUS_DST_ALPHA: 'tags this -> GLenum.t [@@js.get "ONE_MINUS_DST_ALPHA"]
  val get_ONE_MINUS_DST_COLOR: 'tags this -> GLenum.t [@@js.get "ONE_MINUS_DST_COLOR"]
  val get_ONE_MINUS_SRC_ALPHA: 'tags this -> GLenum.t [@@js.get "ONE_MINUS_SRC_ALPHA"]
  val get_ONE_MINUS_SRC_COLOR: 'tags this -> GLenum.t [@@js.get "ONE_MINUS_SRC_COLOR"]
  val get_OUT_OF_MEMORY: 'tags this -> GLenum.t [@@js.get "OUT_OF_MEMORY"]
  val get_PACK_ALIGNMENT: 'tags this -> GLenum.t [@@js.get "PACK_ALIGNMENT"]
  val get_POINTS: 'tags this -> GLenum.t [@@js.get "POINTS"]
  val get_POLYGON_OFFSET_FACTOR: 'tags this -> GLenum.t [@@js.get "POLYGON_OFFSET_FACTOR"]
  val get_POLYGON_OFFSET_FILL: 'tags this -> GLenum.t [@@js.get "POLYGON_OFFSET_FILL"]
  val get_POLYGON_OFFSET_UNITS: 'tags this -> GLenum.t [@@js.get "POLYGON_OFFSET_UNITS"]
  val get_RED_BITS: 'tags this -> GLenum.t [@@js.get "RED_BITS"]
  val get_RENDERBUFFER: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER"]
  val get_RENDERBUFFER_ALPHA_SIZE: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_ALPHA_SIZE"]
  val get_RENDERBUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_BINDING"]
  val get_RENDERBUFFER_BLUE_SIZE: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_BLUE_SIZE"]
  val get_RENDERBUFFER_DEPTH_SIZE: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_DEPTH_SIZE"]
  val get_RENDERBUFFER_GREEN_SIZE: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_GREEN_SIZE"]
  val get_RENDERBUFFER_HEIGHT: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_HEIGHT"]
  val get_RENDERBUFFER_INTERNAL_FORMAT: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_INTERNAL_FORMAT"]
  val get_RENDERBUFFER_RED_SIZE: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_RED_SIZE"]
  val get_RENDERBUFFER_STENCIL_SIZE: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_STENCIL_SIZE"]
  val get_RENDERBUFFER_WIDTH: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_WIDTH"]
  val get_RENDERER: 'tags this -> GLenum.t [@@js.get "RENDERER"]
  val get_REPEAT: 'tags this -> GLenum.t [@@js.get "REPEAT"]
  val get_REPLACE: 'tags this -> GLenum.t [@@js.get "REPLACE"]
  val get_RGB: 'tags this -> GLenum.t [@@js.get "RGB"]
  val get_RGB565: 'tags this -> GLenum.t [@@js.get "RGB565"]
  val get_RGB5_A1: 'tags this -> GLenum.t [@@js.get "RGB5_A1"]
  val get_RGBA: 'tags this -> GLenum.t [@@js.get "RGBA"]
  val get_RGBA4: 'tags this -> GLenum.t [@@js.get "RGBA4"]
  val get_SAMPLER_2D: 'tags this -> GLenum.t [@@js.get "SAMPLER_2D"]
  val get_SAMPLER_CUBE: 'tags this -> GLenum.t [@@js.get "SAMPLER_CUBE"]
  val get_SAMPLES: 'tags this -> GLenum.t [@@js.get "SAMPLES"]
  val get_SAMPLE_ALPHA_TO_COVERAGE: 'tags this -> GLenum.t [@@js.get "SAMPLE_ALPHA_TO_COVERAGE"]
  val get_SAMPLE_BUFFERS: 'tags this -> GLenum.t [@@js.get "SAMPLE_BUFFERS"]
  val get_SAMPLE_COVERAGE: 'tags this -> GLenum.t [@@js.get "SAMPLE_COVERAGE"]
  val get_SAMPLE_COVERAGE_INVERT: 'tags this -> GLenum.t [@@js.get "SAMPLE_COVERAGE_INVERT"]
  val get_SAMPLE_COVERAGE_VALUE: 'tags this -> GLenum.t [@@js.get "SAMPLE_COVERAGE_VALUE"]
  val get_SCISSOR_BOX: 'tags this -> GLenum.t [@@js.get "SCISSOR_BOX"]
  val get_SCISSOR_TEST: 'tags this -> GLenum.t [@@js.get "SCISSOR_TEST"]
  val get_SHADER_TYPE: 'tags this -> GLenum.t [@@js.get "SHADER_TYPE"]
  val get_SHADING_LANGUAGE_VERSION: 'tags this -> GLenum.t [@@js.get "SHADING_LANGUAGE_VERSION"]
  val get_SHORT: 'tags this -> GLenum.t [@@js.get "SHORT"]
  val get_SRC_ALPHA: 'tags this -> GLenum.t [@@js.get "SRC_ALPHA"]
  val get_SRC_ALPHA_SATURATE: 'tags this -> GLenum.t [@@js.get "SRC_ALPHA_SATURATE"]
  val get_SRC_COLOR: 'tags this -> GLenum.t [@@js.get "SRC_COLOR"]
  val get_STATIC_DRAW: 'tags this -> GLenum.t [@@js.get "STATIC_DRAW"]
  val get_STENCIL_ATTACHMENT: 'tags this -> GLenum.t [@@js.get "STENCIL_ATTACHMENT"]
  val get_STENCIL_BACK_FAIL: 'tags this -> GLenum.t [@@js.get "STENCIL_BACK_FAIL"]
  val get_STENCIL_BACK_FUNC: 'tags this -> GLenum.t [@@js.get "STENCIL_BACK_FUNC"]
  val get_STENCIL_BACK_PASS_DEPTH_FAIL: 'tags this -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_FAIL"]
  val get_STENCIL_BACK_PASS_DEPTH_PASS: 'tags this -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_PASS"]
  val get_STENCIL_BACK_REF: 'tags this -> GLenum.t [@@js.get "STENCIL_BACK_REF"]
  val get_STENCIL_BACK_VALUE_MASK: 'tags this -> GLenum.t [@@js.get "STENCIL_BACK_VALUE_MASK"]
  val get_STENCIL_BACK_WRITEMASK: 'tags this -> GLenum.t [@@js.get "STENCIL_BACK_WRITEMASK"]
  val get_STENCIL_BITS: 'tags this -> GLenum.t [@@js.get "STENCIL_BITS"]
  val get_STENCIL_BUFFER_BIT: 'tags this -> GLenum.t [@@js.get "STENCIL_BUFFER_BIT"]
  val get_STENCIL_CLEAR_VALUE: 'tags this -> GLenum.t [@@js.get "STENCIL_CLEAR_VALUE"]
  val get_STENCIL_FAIL: 'tags this -> GLenum.t [@@js.get "STENCIL_FAIL"]
  val get_STENCIL_FUNC: 'tags this -> GLenum.t [@@js.get "STENCIL_FUNC"]
  val get_STENCIL_INDEX8: 'tags this -> GLenum.t [@@js.get "STENCIL_INDEX8"]
  val get_STENCIL_PASS_DEPTH_FAIL: 'tags this -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_FAIL"]
  val get_STENCIL_PASS_DEPTH_PASS: 'tags this -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_PASS"]
  val get_STENCIL_REF: 'tags this -> GLenum.t [@@js.get "STENCIL_REF"]
  val get_STENCIL_TEST: 'tags this -> GLenum.t [@@js.get "STENCIL_TEST"]
  val get_STENCIL_VALUE_MASK: 'tags this -> GLenum.t [@@js.get "STENCIL_VALUE_MASK"]
  val get_STENCIL_WRITEMASK: 'tags this -> GLenum.t [@@js.get "STENCIL_WRITEMASK"]
  val get_STREAM_DRAW: 'tags this -> GLenum.t [@@js.get "STREAM_DRAW"]
  val get_SUBPIXEL_BITS: 'tags this -> GLenum.t [@@js.get "SUBPIXEL_BITS"]
  val get_TEXTURE: 'tags this -> GLenum.t [@@js.get "TEXTURE"]
  val get_TEXTURE0: 'tags this -> GLenum.t [@@js.get "TEXTURE0"]
  val get_TEXTURE1: 'tags this -> GLenum.t [@@js.get "TEXTURE1"]
  val get_TEXTURE10: 'tags this -> GLenum.t [@@js.get "TEXTURE10"]
  val get_TEXTURE11: 'tags this -> GLenum.t [@@js.get "TEXTURE11"]
  val get_TEXTURE12: 'tags this -> GLenum.t [@@js.get "TEXTURE12"]
  val get_TEXTURE13: 'tags this -> GLenum.t [@@js.get "TEXTURE13"]
  val get_TEXTURE14: 'tags this -> GLenum.t [@@js.get "TEXTURE14"]
  val get_TEXTURE15: 'tags this -> GLenum.t [@@js.get "TEXTURE15"]
  val get_TEXTURE16: 'tags this -> GLenum.t [@@js.get "TEXTURE16"]
  val get_TEXTURE17: 'tags this -> GLenum.t [@@js.get "TEXTURE17"]
  val get_TEXTURE18: 'tags this -> GLenum.t [@@js.get "TEXTURE18"]
  val get_TEXTURE19: 'tags this -> GLenum.t [@@js.get "TEXTURE19"]
  val get_TEXTURE2: 'tags this -> GLenum.t [@@js.get "TEXTURE2"]
  val get_TEXTURE20: 'tags this -> GLenum.t [@@js.get "TEXTURE20"]
  val get_TEXTURE21: 'tags this -> GLenum.t [@@js.get "TEXTURE21"]
  val get_TEXTURE22: 'tags this -> GLenum.t [@@js.get "TEXTURE22"]
  val get_TEXTURE23: 'tags this -> GLenum.t [@@js.get "TEXTURE23"]
  val get_TEXTURE24: 'tags this -> GLenum.t [@@js.get "TEXTURE24"]
  val get_TEXTURE25: 'tags this -> GLenum.t [@@js.get "TEXTURE25"]
  val get_TEXTURE26: 'tags this -> GLenum.t [@@js.get "TEXTURE26"]
  val get_TEXTURE27: 'tags this -> GLenum.t [@@js.get "TEXTURE27"]
  val get_TEXTURE28: 'tags this -> GLenum.t [@@js.get "TEXTURE28"]
  val get_TEXTURE29: 'tags this -> GLenum.t [@@js.get "TEXTURE29"]
  val get_TEXTURE3: 'tags this -> GLenum.t [@@js.get "TEXTURE3"]
  val get_TEXTURE30: 'tags this -> GLenum.t [@@js.get "TEXTURE30"]
  val get_TEXTURE31: 'tags this -> GLenum.t [@@js.get "TEXTURE31"]
  val get_TEXTURE4: 'tags this -> GLenum.t [@@js.get "TEXTURE4"]
  val get_TEXTURE5: 'tags this -> GLenum.t [@@js.get "TEXTURE5"]
  val get_TEXTURE6: 'tags this -> GLenum.t [@@js.get "TEXTURE6"]
  val get_TEXTURE7: 'tags this -> GLenum.t [@@js.get "TEXTURE7"]
  val get_TEXTURE8: 'tags this -> GLenum.t [@@js.get "TEXTURE8"]
  val get_TEXTURE9: 'tags this -> GLenum.t [@@js.get "TEXTURE9"]
  val get_TEXTURE_2D: 'tags this -> GLenum.t [@@js.get "TEXTURE_2D"]
  val get_TEXTURE_BINDING_2D: 'tags this -> GLenum.t [@@js.get "TEXTURE_BINDING_2D"]
  val get_TEXTURE_BINDING_CUBE_MAP: 'tags this -> GLenum.t [@@js.get "TEXTURE_BINDING_CUBE_MAP"]
  val get_TEXTURE_CUBE_MAP: 'tags this -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_X: 'tags this -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_X"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_Y: 'tags this -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Y"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_Z: 'tags this -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Z"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_X: 'tags this -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_X"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_Y: 'tags this -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Y"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_Z: 'tags this -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Z"]
  val get_TEXTURE_MAG_FILTER: 'tags this -> GLenum.t [@@js.get "TEXTURE_MAG_FILTER"]
  val get_TEXTURE_MIN_FILTER: 'tags this -> GLenum.t [@@js.get "TEXTURE_MIN_FILTER"]
  val get_TEXTURE_WRAP_S: 'tags this -> GLenum.t [@@js.get "TEXTURE_WRAP_S"]
  val get_TEXTURE_WRAP_T: 'tags this -> GLenum.t [@@js.get "TEXTURE_WRAP_T"]
  val get_TRIANGLES: 'tags this -> GLenum.t [@@js.get "TRIANGLES"]
  val get_TRIANGLE_FAN: 'tags this -> GLenum.t [@@js.get "TRIANGLE_FAN"]
  val get_TRIANGLE_STRIP: 'tags this -> GLenum.t [@@js.get "TRIANGLE_STRIP"]
  val get_UNPACK_ALIGNMENT: 'tags this -> GLenum.t [@@js.get "UNPACK_ALIGNMENT"]
  val get_UNPACK_COLORSPACE_CONVERSION_WEBGL: 'tags this -> GLenum.t [@@js.get "UNPACK_COLORSPACE_CONVERSION_WEBGL"]
  val get_UNPACK_FLIP_Y_WEBGL: 'tags this -> GLenum.t [@@js.get "UNPACK_FLIP_Y_WEBGL"]
  val get_UNPACK_PREMULTIPLY_ALPHA_WEBGL: 'tags this -> GLenum.t [@@js.get "UNPACK_PREMULTIPLY_ALPHA_WEBGL"]
  val get_UNSIGNED_BYTE: 'tags this -> GLenum.t [@@js.get "UNSIGNED_BYTE"]
  val get_UNSIGNED_INT: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT"]
  val get_UNSIGNED_SHORT: 'tags this -> GLenum.t [@@js.get "UNSIGNED_SHORT"]
  val get_UNSIGNED_SHORT_4_4_4_4: 'tags this -> GLenum.t [@@js.get "UNSIGNED_SHORT_4_4_4_4"]
  val get_UNSIGNED_SHORT_5_5_5_1: 'tags this -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_5_5_1"]
  val get_UNSIGNED_SHORT_5_6_5: 'tags this -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_6_5"]
  val get_VALIDATE_STATUS: 'tags this -> GLenum.t [@@js.get "VALIDATE_STATUS"]
  val get_VENDOR: 'tags this -> GLenum.t [@@js.get "VENDOR"]
  val get_VERSION: 'tags this -> GLenum.t [@@js.get "VERSION"]
  val get_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_BUFFER_BINDING"]
  val get_VERTEX_ATTRIB_ARRAY_ENABLED: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_ENABLED"]
  val get_VERTEX_ATTRIB_ARRAY_NORMALIZED: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_NORMALIZED"]
  val get_VERTEX_ATTRIB_ARRAY_POINTER: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_POINTER"]
  val get_VERTEX_ATTRIB_ARRAY_SIZE: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_SIZE"]
  val get_VERTEX_ATTRIB_ARRAY_STRIDE: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_STRIDE"]
  val get_VERTEX_ATTRIB_ARRAY_TYPE: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_TYPE"]
  val get_VERTEX_SHADER: 'tags this -> GLenum.t [@@js.get "VERTEX_SHADER"]
  val get_VIEWPORT: 'tags this -> GLenum.t [@@js.get "VIEWPORT"]
  val get_ZERO: 'tags this -> GLenum.t [@@js.get "ZERO"]
  val vertexAttrib1fv': 'tags this -> index:GLuint.t -> values:GLfloat.t Iterable.t_1 -> unit [@@js.call "vertexAttrib1fv"]
  val vertexAttrib2fv': 'tags this -> index:GLuint.t -> values:GLfloat.t Iterable.t_1 -> unit [@@js.call "vertexAttrib2fv"]
  val vertexAttrib3fv': 'tags this -> index:GLuint.t -> values:GLfloat.t Iterable.t_1 -> unit [@@js.call "vertexAttrib3fv"]
  val vertexAttrib4fv': 'tags this -> index:GLuint.t -> values:GLfloat.t Iterable.t_1 -> unit [@@js.call "vertexAttrib4fv"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface119 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLRenderingContext.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLRenderingContext.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLRenderingContext.t [@@js.apply_newable]
  val get_ACTIVE_ATTRIBUTES: t -> GLenum.t [@@js.get "ACTIVE_ATTRIBUTES"]
  val get_ACTIVE_TEXTURE: t -> GLenum.t [@@js.get "ACTIVE_TEXTURE"]
  val get_ACTIVE_UNIFORMS: t -> GLenum.t [@@js.get "ACTIVE_UNIFORMS"]
  val get_ALIASED_LINE_WIDTH_RANGE: t -> GLenum.t [@@js.get "ALIASED_LINE_WIDTH_RANGE"]
  val get_ALIASED_POINT_SIZE_RANGE: t -> GLenum.t [@@js.get "ALIASED_POINT_SIZE_RANGE"]
  val get_ALPHA: t -> GLenum.t [@@js.get "ALPHA"]
  val get_ALPHA_BITS: t -> GLenum.t [@@js.get "ALPHA_BITS"]
  val get_ALWAYS: t -> GLenum.t [@@js.get "ALWAYS"]
  val get_ARRAY_BUFFER: t -> GLenum.t [@@js.get "ARRAY_BUFFER"]
  val get_ARRAY_BUFFER_BINDING: t -> GLenum.t [@@js.get "ARRAY_BUFFER_BINDING"]
  val get_ATTACHED_SHADERS: t -> GLenum.t [@@js.get "ATTACHED_SHADERS"]
  val get_BACK: t -> GLenum.t [@@js.get "BACK"]
  val get_BLEND: t -> GLenum.t [@@js.get "BLEND"]
  val get_BLEND_COLOR: t -> GLenum.t [@@js.get "BLEND_COLOR"]
  val get_BLEND_DST_ALPHA: t -> GLenum.t [@@js.get "BLEND_DST_ALPHA"]
  val get_BLEND_DST_RGB: t -> GLenum.t [@@js.get "BLEND_DST_RGB"]
  val get_BLEND_EQUATION: t -> GLenum.t [@@js.get "BLEND_EQUATION"]
  val get_BLEND_EQUATION_ALPHA: t -> GLenum.t [@@js.get "BLEND_EQUATION_ALPHA"]
  val get_BLEND_EQUATION_RGB: t -> GLenum.t [@@js.get "BLEND_EQUATION_RGB"]
  val get_BLEND_SRC_ALPHA: t -> GLenum.t [@@js.get "BLEND_SRC_ALPHA"]
  val get_BLEND_SRC_RGB: t -> GLenum.t [@@js.get "BLEND_SRC_RGB"]
  val get_BLUE_BITS: t -> GLenum.t [@@js.get "BLUE_BITS"]
  val get_BOOL: t -> GLenum.t [@@js.get "BOOL"]
  val get_BOOL_VEC2: t -> GLenum.t [@@js.get "BOOL_VEC2"]
  val get_BOOL_VEC3: t -> GLenum.t [@@js.get "BOOL_VEC3"]
  val get_BOOL_VEC4: t -> GLenum.t [@@js.get "BOOL_VEC4"]
  val get_BROWSER_DEFAULT_WEBGL: t -> GLenum.t [@@js.get "BROWSER_DEFAULT_WEBGL"]
  val get_BUFFER_SIZE: t -> GLenum.t [@@js.get "BUFFER_SIZE"]
  val get_BUFFER_USAGE: t -> GLenum.t [@@js.get "BUFFER_USAGE"]
  val get_BYTE: t -> GLenum.t [@@js.get "BYTE"]
  val get_CCW: t -> GLenum.t [@@js.get "CCW"]
  val get_CLAMP_TO_EDGE: t -> GLenum.t [@@js.get "CLAMP_TO_EDGE"]
  val get_COLOR_ATTACHMENT0: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT0"]
  val get_COLOR_BUFFER_BIT: t -> GLenum.t [@@js.get "COLOR_BUFFER_BIT"]
  val get_COLOR_CLEAR_VALUE: t -> GLenum.t [@@js.get "COLOR_CLEAR_VALUE"]
  val get_COLOR_WRITEMASK: t -> GLenum.t [@@js.get "COLOR_WRITEMASK"]
  val get_COMPILE_STATUS: t -> GLenum.t [@@js.get "COMPILE_STATUS"]
  val get_COMPRESSED_TEXTURE_FORMATS: t -> GLenum.t [@@js.get "COMPRESSED_TEXTURE_FORMATS"]
  val get_CONSTANT_ALPHA: t -> GLenum.t [@@js.get "CONSTANT_ALPHA"]
  val get_CONSTANT_COLOR: t -> GLenum.t [@@js.get "CONSTANT_COLOR"]
  val get_CONTEXT_LOST_WEBGL: t -> GLenum.t [@@js.get "CONTEXT_LOST_WEBGL"]
  val get_CULL_FACE: t -> GLenum.t [@@js.get "CULL_FACE"]
  val get_CULL_FACE_MODE: t -> GLenum.t [@@js.get "CULL_FACE_MODE"]
  val get_CURRENT_PROGRAM: t -> GLenum.t [@@js.get "CURRENT_PROGRAM"]
  val get_CURRENT_VERTEX_ATTRIB: t -> GLenum.t [@@js.get "CURRENT_VERTEX_ATTRIB"]
  val get_CW: t -> GLenum.t [@@js.get "CW"]
  val get_DECR: t -> GLenum.t [@@js.get "DECR"]
  val get_DECR_WRAP: t -> GLenum.t [@@js.get "DECR_WRAP"]
  val get_DELETE_STATUS: t -> GLenum.t [@@js.get "DELETE_STATUS"]
  val get_DEPTH_ATTACHMENT: t -> GLenum.t [@@js.get "DEPTH_ATTACHMENT"]
  val get_DEPTH_BITS: t -> GLenum.t [@@js.get "DEPTH_BITS"]
  val get_DEPTH_BUFFER_BIT: t -> GLenum.t [@@js.get "DEPTH_BUFFER_BIT"]
  val get_DEPTH_CLEAR_VALUE: t -> GLenum.t [@@js.get "DEPTH_CLEAR_VALUE"]
  val get_DEPTH_COMPONENT: t -> GLenum.t [@@js.get "DEPTH_COMPONENT"]
  val get_DEPTH_COMPONENT16: t -> GLenum.t [@@js.get "DEPTH_COMPONENT16"]
  val get_DEPTH_FUNC: t -> GLenum.t [@@js.get "DEPTH_FUNC"]
  val get_DEPTH_RANGE: t -> GLenum.t [@@js.get "DEPTH_RANGE"]
  val get_DEPTH_STENCIL: t -> GLenum.t [@@js.get "DEPTH_STENCIL"]
  val get_DEPTH_STENCIL_ATTACHMENT: t -> GLenum.t [@@js.get "DEPTH_STENCIL_ATTACHMENT"]
  val get_DEPTH_TEST: t -> GLenum.t [@@js.get "DEPTH_TEST"]
  val get_DEPTH_WRITEMASK: t -> GLenum.t [@@js.get "DEPTH_WRITEMASK"]
  val get_DITHER: t -> GLenum.t [@@js.get "DITHER"]
  val get_DONT_CARE: t -> GLenum.t [@@js.get "DONT_CARE"]
  val get_DST_ALPHA: t -> GLenum.t [@@js.get "DST_ALPHA"]
  val get_DST_COLOR: t -> GLenum.t [@@js.get "DST_COLOR"]
  val get_DYNAMIC_DRAW: t -> GLenum.t [@@js.get "DYNAMIC_DRAW"]
  val get_ELEMENT_ARRAY_BUFFER: t -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER"]
  val get_ELEMENT_ARRAY_BUFFER_BINDING: t -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER_BINDING"]
  val get_EQUAL: t -> GLenum.t [@@js.get "EQUAL"]
  val get_FASTEST: t -> GLenum.t [@@js.get "FASTEST"]
  val get_FLOAT: t -> GLenum.t [@@js.get "FLOAT"]
  val get_FLOAT_MAT2: t -> GLenum.t [@@js.get "FLOAT_MAT2"]
  val get_FLOAT_MAT3: t -> GLenum.t [@@js.get "FLOAT_MAT3"]
  val get_FLOAT_MAT4: t -> GLenum.t [@@js.get "FLOAT_MAT4"]
  val get_FLOAT_VEC2: t -> GLenum.t [@@js.get "FLOAT_VEC2"]
  val get_FLOAT_VEC3: t -> GLenum.t [@@js.get "FLOAT_VEC3"]
  val get_FLOAT_VEC4: t -> GLenum.t [@@js.get "FLOAT_VEC4"]
  val get_FRAGMENT_SHADER: t -> GLenum.t [@@js.get "FRAGMENT_SHADER"]
  val get_FRAMEBUFFER: t -> GLenum.t [@@js.get "FRAMEBUFFER"]
  val get_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_NAME"]
  val get_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL"]
  val get_FRAMEBUFFER_BINDING: t -> GLenum.t [@@js.get "FRAMEBUFFER_BINDING"]
  val get_FRAMEBUFFER_COMPLETE: t -> GLenum.t [@@js.get "FRAMEBUFFER_COMPLETE"]
  val get_FRAMEBUFFER_INCOMPLETE_ATTACHMENT: t -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_ATTACHMENT"]
  val get_FRAMEBUFFER_INCOMPLETE_DIMENSIONS: t -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"]
  val get_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: t -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"]
  val get_FRAMEBUFFER_UNSUPPORTED: t -> GLenum.t [@@js.get "FRAMEBUFFER_UNSUPPORTED"]
  val get_FRONT: t -> GLenum.t [@@js.get "FRONT"]
  val get_FRONT_AND_BACK: t -> GLenum.t [@@js.get "FRONT_AND_BACK"]
  val get_FRONT_FACE: t -> GLenum.t [@@js.get "FRONT_FACE"]
  val get_FUNC_ADD: t -> GLenum.t [@@js.get "FUNC_ADD"]
  val get_FUNC_REVERSE_SUBTRACT: t -> GLenum.t [@@js.get "FUNC_REVERSE_SUBTRACT"]
  val get_FUNC_SUBTRACT: t -> GLenum.t [@@js.get "FUNC_SUBTRACT"]
  val get_GENERATE_MIPMAP_HINT: t -> GLenum.t [@@js.get "GENERATE_MIPMAP_HINT"]
  val get_GEQUAL: t -> GLenum.t [@@js.get "GEQUAL"]
  val get_GREATER: t -> GLenum.t [@@js.get "GREATER"]
  val get_GREEN_BITS: t -> GLenum.t [@@js.get "GREEN_BITS"]
  val get_HIGH_FLOAT: t -> GLenum.t [@@js.get "HIGH_FLOAT"]
  val get_HIGH_INT: t -> GLenum.t [@@js.get "HIGH_INT"]
  val get_IMPLEMENTATION_COLOR_READ_FORMAT: t -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_FORMAT"]
  val get_IMPLEMENTATION_COLOR_READ_TYPE: t -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_TYPE"]
  val get_INCR: t -> GLenum.t [@@js.get "INCR"]
  val get_INCR_WRAP: t -> GLenum.t [@@js.get "INCR_WRAP"]
  val get_INT: t -> GLenum.t [@@js.get "INT"]
  val get_INT_VEC2: t -> GLenum.t [@@js.get "INT_VEC2"]
  val get_INT_VEC3: t -> GLenum.t [@@js.get "INT_VEC3"]
  val get_INT_VEC4: t -> GLenum.t [@@js.get "INT_VEC4"]
  val get_INVALID_ENUM: t -> GLenum.t [@@js.get "INVALID_ENUM"]
  val get_INVALID_FRAMEBUFFER_OPERATION: t -> GLenum.t [@@js.get "INVALID_FRAMEBUFFER_OPERATION"]
  val get_INVALID_OPERATION: t -> GLenum.t [@@js.get "INVALID_OPERATION"]
  val get_INVALID_VALUE: t -> GLenum.t [@@js.get "INVALID_VALUE"]
  val get_INVERT: t -> GLenum.t [@@js.get "INVERT"]
  val get_KEEP: t -> GLenum.t [@@js.get "KEEP"]
  val get_LEQUAL: t -> GLenum.t [@@js.get "LEQUAL"]
  val get_LESS: t -> GLenum.t [@@js.get "LESS"]
  val get_LINEAR: t -> GLenum.t [@@js.get "LINEAR"]
  val get_LINEAR_MIPMAP_LINEAR: t -> GLenum.t [@@js.get "LINEAR_MIPMAP_LINEAR"]
  val get_LINEAR_MIPMAP_NEAREST: t -> GLenum.t [@@js.get "LINEAR_MIPMAP_NEAREST"]
  val get_LINES: t -> GLenum.t [@@js.get "LINES"]
  val get_LINE_LOOP: t -> GLenum.t [@@js.get "LINE_LOOP"]
  val get_LINE_STRIP: t -> GLenum.t [@@js.get "LINE_STRIP"]
  val get_LINE_WIDTH: t -> GLenum.t [@@js.get "LINE_WIDTH"]
  val get_LINK_STATUS: t -> GLenum.t [@@js.get "LINK_STATUS"]
  val get_LOW_FLOAT: t -> GLenum.t [@@js.get "LOW_FLOAT"]
  val get_LOW_INT: t -> GLenum.t [@@js.get "LOW_INT"]
  val get_LUMINANCE: t -> GLenum.t [@@js.get "LUMINANCE"]
  val get_LUMINANCE_ALPHA: t -> GLenum.t [@@js.get "LUMINANCE_ALPHA"]
  val get_MAX_COMBINED_TEXTURE_IMAGE_UNITS: t -> GLenum.t [@@js.get "MAX_COMBINED_TEXTURE_IMAGE_UNITS"]
  val get_MAX_CUBE_MAP_TEXTURE_SIZE: t -> GLenum.t [@@js.get "MAX_CUBE_MAP_TEXTURE_SIZE"]
  val get_MAX_FRAGMENT_UNIFORM_VECTORS: t -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_VECTORS"]
  val get_MAX_RENDERBUFFER_SIZE: t -> GLenum.t [@@js.get "MAX_RENDERBUFFER_SIZE"]
  val get_MAX_TEXTURE_IMAGE_UNITS: t -> GLenum.t [@@js.get "MAX_TEXTURE_IMAGE_UNITS"]
  val get_MAX_TEXTURE_SIZE: t -> GLenum.t [@@js.get "MAX_TEXTURE_SIZE"]
  val get_MAX_VARYING_VECTORS: t -> GLenum.t [@@js.get "MAX_VARYING_VECTORS"]
  val get_MAX_VERTEX_ATTRIBS: t -> GLenum.t [@@js.get "MAX_VERTEX_ATTRIBS"]
  val get_MAX_VERTEX_TEXTURE_IMAGE_UNITS: t -> GLenum.t [@@js.get "MAX_VERTEX_TEXTURE_IMAGE_UNITS"]
  val get_MAX_VERTEX_UNIFORM_VECTORS: t -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_VECTORS"]
  val get_MAX_VIEWPORT_DIMS: t -> GLenum.t [@@js.get "MAX_VIEWPORT_DIMS"]
  val get_MEDIUM_FLOAT: t -> GLenum.t [@@js.get "MEDIUM_FLOAT"]
  val get_MEDIUM_INT: t -> GLenum.t [@@js.get "MEDIUM_INT"]
  val get_MIRRORED_REPEAT: t -> GLenum.t [@@js.get "MIRRORED_REPEAT"]
  val get_NEAREST: t -> GLenum.t [@@js.get "NEAREST"]
  val get_NEAREST_MIPMAP_LINEAR: t -> GLenum.t [@@js.get "NEAREST_MIPMAP_LINEAR"]
  val get_NEAREST_MIPMAP_NEAREST: t -> GLenum.t [@@js.get "NEAREST_MIPMAP_NEAREST"]
  val get_NEVER: t -> GLenum.t [@@js.get "NEVER"]
  val get_NICEST: t -> GLenum.t [@@js.get "NICEST"]
  val get_NONE: t -> GLenum.t [@@js.get "NONE"]
  val get_NOTEQUAL: t -> GLenum.t [@@js.get "NOTEQUAL"]
  val get_NO_ERROR: t -> GLenum.t [@@js.get "NO_ERROR"]
  val get_ONE: t -> GLenum.t [@@js.get "ONE"]
  val get_ONE_MINUS_CONSTANT_ALPHA: t -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_ALPHA"]
  val get_ONE_MINUS_CONSTANT_COLOR: t -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_COLOR"]
  val get_ONE_MINUS_DST_ALPHA: t -> GLenum.t [@@js.get "ONE_MINUS_DST_ALPHA"]
  val get_ONE_MINUS_DST_COLOR: t -> GLenum.t [@@js.get "ONE_MINUS_DST_COLOR"]
  val get_ONE_MINUS_SRC_ALPHA: t -> GLenum.t [@@js.get "ONE_MINUS_SRC_ALPHA"]
  val get_ONE_MINUS_SRC_COLOR: t -> GLenum.t [@@js.get "ONE_MINUS_SRC_COLOR"]
  val get_OUT_OF_MEMORY: t -> GLenum.t [@@js.get "OUT_OF_MEMORY"]
  val get_PACK_ALIGNMENT: t -> GLenum.t [@@js.get "PACK_ALIGNMENT"]
  val get_POINTS: t -> GLenum.t [@@js.get "POINTS"]
  val get_POLYGON_OFFSET_FACTOR: t -> GLenum.t [@@js.get "POLYGON_OFFSET_FACTOR"]
  val get_POLYGON_OFFSET_FILL: t -> GLenum.t [@@js.get "POLYGON_OFFSET_FILL"]
  val get_POLYGON_OFFSET_UNITS: t -> GLenum.t [@@js.get "POLYGON_OFFSET_UNITS"]
  val get_RED_BITS: t -> GLenum.t [@@js.get "RED_BITS"]
  val get_RENDERBUFFER: t -> GLenum.t [@@js.get "RENDERBUFFER"]
  val get_RENDERBUFFER_ALPHA_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_ALPHA_SIZE"]
  val get_RENDERBUFFER_BINDING: t -> GLenum.t [@@js.get "RENDERBUFFER_BINDING"]
  val get_RENDERBUFFER_BLUE_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_BLUE_SIZE"]
  val get_RENDERBUFFER_DEPTH_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_DEPTH_SIZE"]
  val get_RENDERBUFFER_GREEN_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_GREEN_SIZE"]
  val get_RENDERBUFFER_HEIGHT: t -> GLenum.t [@@js.get "RENDERBUFFER_HEIGHT"]
  val get_RENDERBUFFER_INTERNAL_FORMAT: t -> GLenum.t [@@js.get "RENDERBUFFER_INTERNAL_FORMAT"]
  val get_RENDERBUFFER_RED_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_RED_SIZE"]
  val get_RENDERBUFFER_STENCIL_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_STENCIL_SIZE"]
  val get_RENDERBUFFER_WIDTH: t -> GLenum.t [@@js.get "RENDERBUFFER_WIDTH"]
  val get_RENDERER: t -> GLenum.t [@@js.get "RENDERER"]
  val get_REPEAT: t -> GLenum.t [@@js.get "REPEAT"]
  val get_REPLACE: t -> GLenum.t [@@js.get "REPLACE"]
  val get_RGB: t -> GLenum.t [@@js.get "RGB"]
  val get_RGB565: t -> GLenum.t [@@js.get "RGB565"]
  val get_RGB5_A1: t -> GLenum.t [@@js.get "RGB5_A1"]
  val get_RGBA: t -> GLenum.t [@@js.get "RGBA"]
  val get_RGBA4: t -> GLenum.t [@@js.get "RGBA4"]
  val get_SAMPLER_2D: t -> GLenum.t [@@js.get "SAMPLER_2D"]
  val get_SAMPLER_CUBE: t -> GLenum.t [@@js.get "SAMPLER_CUBE"]
  val get_SAMPLES: t -> GLenum.t [@@js.get "SAMPLES"]
  val get_SAMPLE_ALPHA_TO_COVERAGE: t -> GLenum.t [@@js.get "SAMPLE_ALPHA_TO_COVERAGE"]
  val get_SAMPLE_BUFFERS: t -> GLenum.t [@@js.get "SAMPLE_BUFFERS"]
  val get_SAMPLE_COVERAGE: t -> GLenum.t [@@js.get "SAMPLE_COVERAGE"]
  val get_SAMPLE_COVERAGE_INVERT: t -> GLenum.t [@@js.get "SAMPLE_COVERAGE_INVERT"]
  val get_SAMPLE_COVERAGE_VALUE: t -> GLenum.t [@@js.get "SAMPLE_COVERAGE_VALUE"]
  val get_SCISSOR_BOX: t -> GLenum.t [@@js.get "SCISSOR_BOX"]
  val get_SCISSOR_TEST: t -> GLenum.t [@@js.get "SCISSOR_TEST"]
  val get_SHADER_TYPE: t -> GLenum.t [@@js.get "SHADER_TYPE"]
  val get_SHADING_LANGUAGE_VERSION: t -> GLenum.t [@@js.get "SHADING_LANGUAGE_VERSION"]
  val get_SHORT: t -> GLenum.t [@@js.get "SHORT"]
  val get_SRC_ALPHA: t -> GLenum.t [@@js.get "SRC_ALPHA"]
  val get_SRC_ALPHA_SATURATE: t -> GLenum.t [@@js.get "SRC_ALPHA_SATURATE"]
  val get_SRC_COLOR: t -> GLenum.t [@@js.get "SRC_COLOR"]
  val get_STATIC_DRAW: t -> GLenum.t [@@js.get "STATIC_DRAW"]
  val get_STENCIL_ATTACHMENT: t -> GLenum.t [@@js.get "STENCIL_ATTACHMENT"]
  val get_STENCIL_BACK_FAIL: t -> GLenum.t [@@js.get "STENCIL_BACK_FAIL"]
  val get_STENCIL_BACK_FUNC: t -> GLenum.t [@@js.get "STENCIL_BACK_FUNC"]
  val get_STENCIL_BACK_PASS_DEPTH_FAIL: t -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_FAIL"]
  val get_STENCIL_BACK_PASS_DEPTH_PASS: t -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_PASS"]
  val get_STENCIL_BACK_REF: t -> GLenum.t [@@js.get "STENCIL_BACK_REF"]
  val get_STENCIL_BACK_VALUE_MASK: t -> GLenum.t [@@js.get "STENCIL_BACK_VALUE_MASK"]
  val get_STENCIL_BACK_WRITEMASK: t -> GLenum.t [@@js.get "STENCIL_BACK_WRITEMASK"]
  val get_STENCIL_BITS: t -> GLenum.t [@@js.get "STENCIL_BITS"]
  val get_STENCIL_BUFFER_BIT: t -> GLenum.t [@@js.get "STENCIL_BUFFER_BIT"]
  val get_STENCIL_CLEAR_VALUE: t -> GLenum.t [@@js.get "STENCIL_CLEAR_VALUE"]
  val get_STENCIL_FAIL: t -> GLenum.t [@@js.get "STENCIL_FAIL"]
  val get_STENCIL_FUNC: t -> GLenum.t [@@js.get "STENCIL_FUNC"]
  val get_STENCIL_INDEX8: t -> GLenum.t [@@js.get "STENCIL_INDEX8"]
  val get_STENCIL_PASS_DEPTH_FAIL: t -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_FAIL"]
  val get_STENCIL_PASS_DEPTH_PASS: t -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_PASS"]
  val get_STENCIL_REF: t -> GLenum.t [@@js.get "STENCIL_REF"]
  val get_STENCIL_TEST: t -> GLenum.t [@@js.get "STENCIL_TEST"]
  val get_STENCIL_VALUE_MASK: t -> GLenum.t [@@js.get "STENCIL_VALUE_MASK"]
  val get_STENCIL_WRITEMASK: t -> GLenum.t [@@js.get "STENCIL_WRITEMASK"]
  val get_STREAM_DRAW: t -> GLenum.t [@@js.get "STREAM_DRAW"]
  val get_SUBPIXEL_BITS: t -> GLenum.t [@@js.get "SUBPIXEL_BITS"]
  val get_TEXTURE: t -> GLenum.t [@@js.get "TEXTURE"]
  val get_TEXTURE0: t -> GLenum.t [@@js.get "TEXTURE0"]
  val get_TEXTURE1: t -> GLenum.t [@@js.get "TEXTURE1"]
  val get_TEXTURE10: t -> GLenum.t [@@js.get "TEXTURE10"]
  val get_TEXTURE11: t -> GLenum.t [@@js.get "TEXTURE11"]
  val get_TEXTURE12: t -> GLenum.t [@@js.get "TEXTURE12"]
  val get_TEXTURE13: t -> GLenum.t [@@js.get "TEXTURE13"]
  val get_TEXTURE14: t -> GLenum.t [@@js.get "TEXTURE14"]
  val get_TEXTURE15: t -> GLenum.t [@@js.get "TEXTURE15"]
  val get_TEXTURE16: t -> GLenum.t [@@js.get "TEXTURE16"]
  val get_TEXTURE17: t -> GLenum.t [@@js.get "TEXTURE17"]
  val get_TEXTURE18: t -> GLenum.t [@@js.get "TEXTURE18"]
  val get_TEXTURE19: t -> GLenum.t [@@js.get "TEXTURE19"]
  val get_TEXTURE2: t -> GLenum.t [@@js.get "TEXTURE2"]
  val get_TEXTURE20: t -> GLenum.t [@@js.get "TEXTURE20"]
  val get_TEXTURE21: t -> GLenum.t [@@js.get "TEXTURE21"]
  val get_TEXTURE22: t -> GLenum.t [@@js.get "TEXTURE22"]
  val get_TEXTURE23: t -> GLenum.t [@@js.get "TEXTURE23"]
  val get_TEXTURE24: t -> GLenum.t [@@js.get "TEXTURE24"]
  val get_TEXTURE25: t -> GLenum.t [@@js.get "TEXTURE25"]
  val get_TEXTURE26: t -> GLenum.t [@@js.get "TEXTURE26"]
  val get_TEXTURE27: t -> GLenum.t [@@js.get "TEXTURE27"]
  val get_TEXTURE28: t -> GLenum.t [@@js.get "TEXTURE28"]
  val get_TEXTURE29: t -> GLenum.t [@@js.get "TEXTURE29"]
  val get_TEXTURE3: t -> GLenum.t [@@js.get "TEXTURE3"]
  val get_TEXTURE30: t -> GLenum.t [@@js.get "TEXTURE30"]
  val get_TEXTURE31: t -> GLenum.t [@@js.get "TEXTURE31"]
  val get_TEXTURE4: t -> GLenum.t [@@js.get "TEXTURE4"]
  val get_TEXTURE5: t -> GLenum.t [@@js.get "TEXTURE5"]
  val get_TEXTURE6: t -> GLenum.t [@@js.get "TEXTURE6"]
  val get_TEXTURE7: t -> GLenum.t [@@js.get "TEXTURE7"]
  val get_TEXTURE8: t -> GLenum.t [@@js.get "TEXTURE8"]
  val get_TEXTURE9: t -> GLenum.t [@@js.get "TEXTURE9"]
  val get_TEXTURE_2D: t -> GLenum.t [@@js.get "TEXTURE_2D"]
  val get_TEXTURE_BINDING_2D: t -> GLenum.t [@@js.get "TEXTURE_BINDING_2D"]
  val get_TEXTURE_BINDING_CUBE_MAP: t -> GLenum.t [@@js.get "TEXTURE_BINDING_CUBE_MAP"]
  val get_TEXTURE_CUBE_MAP: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_X: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_X"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_Y: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Y"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_Z: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Z"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_X: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_X"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_Y: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Y"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_Z: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Z"]
  val get_TEXTURE_MAG_FILTER: t -> GLenum.t [@@js.get "TEXTURE_MAG_FILTER"]
  val get_TEXTURE_MIN_FILTER: t -> GLenum.t [@@js.get "TEXTURE_MIN_FILTER"]
  val get_TEXTURE_WRAP_S: t -> GLenum.t [@@js.get "TEXTURE_WRAP_S"]
  val get_TEXTURE_WRAP_T: t -> GLenum.t [@@js.get "TEXTURE_WRAP_T"]
  val get_TRIANGLES: t -> GLenum.t [@@js.get "TRIANGLES"]
  val get_TRIANGLE_FAN: t -> GLenum.t [@@js.get "TRIANGLE_FAN"]
  val get_TRIANGLE_STRIP: t -> GLenum.t [@@js.get "TRIANGLE_STRIP"]
  val get_UNPACK_ALIGNMENT: t -> GLenum.t [@@js.get "UNPACK_ALIGNMENT"]
  val get_UNPACK_COLORSPACE_CONVERSION_WEBGL: t -> GLenum.t [@@js.get "UNPACK_COLORSPACE_CONVERSION_WEBGL"]
  val get_UNPACK_FLIP_Y_WEBGL: t -> GLenum.t [@@js.get "UNPACK_FLIP_Y_WEBGL"]
  val get_UNPACK_PREMULTIPLY_ALPHA_WEBGL: t -> GLenum.t [@@js.get "UNPACK_PREMULTIPLY_ALPHA_WEBGL"]
  val get_UNSIGNED_BYTE: t -> GLenum.t [@@js.get "UNSIGNED_BYTE"]
  val get_UNSIGNED_INT: t -> GLenum.t [@@js.get "UNSIGNED_INT"]
  val get_UNSIGNED_SHORT: t -> GLenum.t [@@js.get "UNSIGNED_SHORT"]
  val get_UNSIGNED_SHORT_4_4_4_4: t -> GLenum.t [@@js.get "UNSIGNED_SHORT_4_4_4_4"]
  val get_UNSIGNED_SHORT_5_5_5_1: t -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_5_5_1"]
  val get_UNSIGNED_SHORT_5_6_5: t -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_6_5"]
  val get_VALIDATE_STATUS: t -> GLenum.t [@@js.get "VALIDATE_STATUS"]
  val get_VENDOR: t -> GLenum.t [@@js.get "VENDOR"]
  val get_VERSION: t -> GLenum.t [@@js.get "VERSION"]
  val get_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_BUFFER_BINDING"]
  val get_VERTEX_ATTRIB_ARRAY_ENABLED: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_ENABLED"]
  val get_VERTEX_ATTRIB_ARRAY_NORMALIZED: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_NORMALIZED"]
  val get_VERTEX_ATTRIB_ARRAY_POINTER: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_POINTER"]
  val get_VERTEX_ATTRIB_ARRAY_SIZE: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_SIZE"]
  val get_VERTEX_ATTRIB_ARRAY_STRIDE: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_STRIDE"]
  val get_VERTEX_ATTRIB_ARRAY_TYPE: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_TYPE"]
  val get_VERTEX_SHADER: t -> GLenum.t [@@js.get "VERTEX_SHADER"]
  val get_VIEWPORT: t -> GLenum.t [@@js.get "VIEWPORT"]
  val get_ZERO: t -> GLenum.t [@@js.get "ZERO"]
end

(** Provides an interface to the OpenGL ES 2.0 graphics rendering context for the drawing surface of an HTML <canvas> element. *)
and[@js.scope "WebGLRenderingContext"] WebGLRenderingContext : sig
  type t = [`WebGLRenderingContext | `WebGLRenderingContextBase | `WebGLRenderingContextOverloads] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLRenderingContext | `WebGLRenderingContextBase | `WebGLRenderingContextOverloads]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLRenderingContext | `WebGLRenderingContextBase | `WebGLRenderingContextOverloads]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLRenderingContext ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
  val active_attributes: unit -> GLenum.t [@@js.get "ACTIVE_ATTRIBUTES"]
  val active_texture: unit -> GLenum.t [@@js.get "ACTIVE_TEXTURE"]
  val active_uniforms: unit -> GLenum.t [@@js.get "ACTIVE_UNIFORMS"]
  val aliased_line_width_range: unit -> GLenum.t [@@js.get "ALIASED_LINE_WIDTH_RANGE"]
  val aliased_point_size_range: unit -> GLenum.t [@@js.get "ALIASED_POINT_SIZE_RANGE"]
  val alpha: unit -> GLenum.t [@@js.get "ALPHA"]
  val alpha_bits: unit -> GLenum.t [@@js.get "ALPHA_BITS"]
  val always: unit -> GLenum.t [@@js.get "ALWAYS"]
  val array_buffer: unit -> GLenum.t [@@js.get "ARRAY_BUFFER"]
  val array_buffer_binding: unit -> GLenum.t [@@js.get "ARRAY_BUFFER_BINDING"]
  val attached_shaders: unit -> GLenum.t [@@js.get "ATTACHED_SHADERS"]
  val back: unit -> GLenum.t [@@js.get "BACK"]
  val blend: unit -> GLenum.t [@@js.get "BLEND"]
  val blend_color: unit -> GLenum.t [@@js.get "BLEND_COLOR"]
  val blend_dst_alpha: unit -> GLenum.t [@@js.get "BLEND_DST_ALPHA"]
  val blend_dst_rgb: unit -> GLenum.t [@@js.get "BLEND_DST_RGB"]
  val blend_equation: unit -> GLenum.t [@@js.get "BLEND_EQUATION"]
  val blend_equation_alpha: unit -> GLenum.t [@@js.get "BLEND_EQUATION_ALPHA"]
  val blend_equation_rgb: unit -> GLenum.t [@@js.get "BLEND_EQUATION_RGB"]
  val blend_src_alpha: unit -> GLenum.t [@@js.get "BLEND_SRC_ALPHA"]
  val blend_src_rgb: unit -> GLenum.t [@@js.get "BLEND_SRC_RGB"]
  val blue_bits: unit -> GLenum.t [@@js.get "BLUE_BITS"]
  val bool: unit -> GLenum.t [@@js.get "BOOL"]
  val bool_vec2: unit -> GLenum.t [@@js.get "BOOL_VEC2"]
  val bool_vec3: unit -> GLenum.t [@@js.get "BOOL_VEC3"]
  val bool_vec4: unit -> GLenum.t [@@js.get "BOOL_VEC4"]
  val browser_default_webgl: unit -> GLenum.t [@@js.get "BROWSER_DEFAULT_WEBGL"]
  val buffer_size: unit -> GLenum.t [@@js.get "BUFFER_SIZE"]
  val buffer_usage: unit -> GLenum.t [@@js.get "BUFFER_USAGE"]
  val byte: unit -> GLenum.t [@@js.get "BYTE"]
  val ccw: unit -> GLenum.t [@@js.get "CCW"]
  val clamp_to_edge: unit -> GLenum.t [@@js.get "CLAMP_TO_EDGE"]
  val color_attachment0: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT0"]
  val color_buffer_bit: unit -> GLenum.t [@@js.get "COLOR_BUFFER_BIT"]
  val color_clear_value: unit -> GLenum.t [@@js.get "COLOR_CLEAR_VALUE"]
  val color_writemask: unit -> GLenum.t [@@js.get "COLOR_WRITEMASK"]
  val compile_status: unit -> GLenum.t [@@js.get "COMPILE_STATUS"]
  val compressed_texture_formats: unit -> GLenum.t [@@js.get "COMPRESSED_TEXTURE_FORMATS"]
  val constant_alpha: unit -> GLenum.t [@@js.get "CONSTANT_ALPHA"]
  val constant_color: unit -> GLenum.t [@@js.get "CONSTANT_COLOR"]
  val context_lost_webgl: unit -> GLenum.t [@@js.get "CONTEXT_LOST_WEBGL"]
  val cull_face: unit -> GLenum.t [@@js.get "CULL_FACE"]
  val cull_face_mode: unit -> GLenum.t [@@js.get "CULL_FACE_MODE"]
  val current_program: unit -> GLenum.t [@@js.get "CURRENT_PROGRAM"]
  val current_vertex_attrib: unit -> GLenum.t [@@js.get "CURRENT_VERTEX_ATTRIB"]
  val cw: unit -> GLenum.t [@@js.get "CW"]
  val decr: unit -> GLenum.t [@@js.get "DECR"]
  val decr_wrap: unit -> GLenum.t [@@js.get "DECR_WRAP"]
  val delete_status: unit -> GLenum.t [@@js.get "DELETE_STATUS"]
  val depth_attachment: unit -> GLenum.t [@@js.get "DEPTH_ATTACHMENT"]
  val depth_bits: unit -> GLenum.t [@@js.get "DEPTH_BITS"]
  val depth_buffer_bit: unit -> GLenum.t [@@js.get "DEPTH_BUFFER_BIT"]
  val depth_clear_value: unit -> GLenum.t [@@js.get "DEPTH_CLEAR_VALUE"]
  val depth_component: unit -> GLenum.t [@@js.get "DEPTH_COMPONENT"]
  val depth_component16: unit -> GLenum.t [@@js.get "DEPTH_COMPONENT16"]
  val depth_func: unit -> GLenum.t [@@js.get "DEPTH_FUNC"]
  val depth_range: unit -> GLenum.t [@@js.get "DEPTH_RANGE"]
  val depth_stencil: unit -> GLenum.t [@@js.get "DEPTH_STENCIL"]
  val depth_stencil_attachment: unit -> GLenum.t [@@js.get "DEPTH_STENCIL_ATTACHMENT"]
  val depth_test: unit -> GLenum.t [@@js.get "DEPTH_TEST"]
  val depth_writemask: unit -> GLenum.t [@@js.get "DEPTH_WRITEMASK"]
  val dither: unit -> GLenum.t [@@js.get "DITHER"]
  val dont_care: unit -> GLenum.t [@@js.get "DONT_CARE"]
  val dst_alpha: unit -> GLenum.t [@@js.get "DST_ALPHA"]
  val dst_color: unit -> GLenum.t [@@js.get "DST_COLOR"]
  val dynamic_draw: unit -> GLenum.t [@@js.get "DYNAMIC_DRAW"]
  val element_array_buffer: unit -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER"]
  val element_array_buffer_binding: unit -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER_BINDING"]
  val equal: unit -> GLenum.t [@@js.get "EQUAL"]
  val fastest: unit -> GLenum.t [@@js.get "FASTEST"]
  val float: unit -> GLenum.t [@@js.get "FLOAT"]
  val float_mat2: unit -> GLenum.t [@@js.get "FLOAT_MAT2"]
  val float_mat3: unit -> GLenum.t [@@js.get "FLOAT_MAT3"]
  val float_mat4: unit -> GLenum.t [@@js.get "FLOAT_MAT4"]
  val float_vec2: unit -> GLenum.t [@@js.get "FLOAT_VEC2"]
  val float_vec3: unit -> GLenum.t [@@js.get "FLOAT_VEC3"]
  val float_vec4: unit -> GLenum.t [@@js.get "FLOAT_VEC4"]
  val fragment_shader: unit -> GLenum.t [@@js.get "FRAGMENT_SHADER"]
  val framebuffer: unit -> GLenum.t [@@js.get "FRAMEBUFFER"]
  val framebuffer_attachment_object_name: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_NAME"]
  val framebuffer_attachment_object_type: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE"]
  val framebuffer_attachment_texture_cube_map_face: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE"]
  val framebuffer_attachment_texture_level: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL"]
  val framebuffer_binding: unit -> GLenum.t [@@js.get "FRAMEBUFFER_BINDING"]
  val framebuffer_complete: unit -> GLenum.t [@@js.get "FRAMEBUFFER_COMPLETE"]
  val framebuffer_incomplete_attachment: unit -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_ATTACHMENT"]
  val framebuffer_incomplete_dimensions: unit -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"]
  val framebuffer_incomplete_missing_attachment: unit -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"]
  val framebuffer_unsupported: unit -> GLenum.t [@@js.get "FRAMEBUFFER_UNSUPPORTED"]
  val front: unit -> GLenum.t [@@js.get "FRONT"]
  val front_and_back: unit -> GLenum.t [@@js.get "FRONT_AND_BACK"]
  val front_face: unit -> GLenum.t [@@js.get "FRONT_FACE"]
  val func_add: unit -> GLenum.t [@@js.get "FUNC_ADD"]
  val func_reverse_subtract: unit -> GLenum.t [@@js.get "FUNC_REVERSE_SUBTRACT"]
  val func_subtract: unit -> GLenum.t [@@js.get "FUNC_SUBTRACT"]
  val generate_mipmap_hint: unit -> GLenum.t [@@js.get "GENERATE_MIPMAP_HINT"]
  val gequal: unit -> GLenum.t [@@js.get "GEQUAL"]
  val greater: unit -> GLenum.t [@@js.get "GREATER"]
  val green_bits: unit -> GLenum.t [@@js.get "GREEN_BITS"]
  val high_float: unit -> GLenum.t [@@js.get "HIGH_FLOAT"]
  val high_int: unit -> GLenum.t [@@js.get "HIGH_INT"]
  val implementation_color_read_format: unit -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_FORMAT"]
  val implementation_color_read_type: unit -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_TYPE"]
  val incr: unit -> GLenum.t [@@js.get "INCR"]
  val incr_wrap: unit -> GLenum.t [@@js.get "INCR_WRAP"]
  val int: unit -> GLenum.t [@@js.get "INT"]
  val int_vec2: unit -> GLenum.t [@@js.get "INT_VEC2"]
  val int_vec3: unit -> GLenum.t [@@js.get "INT_VEC3"]
  val int_vec4: unit -> GLenum.t [@@js.get "INT_VEC4"]
  val invalid_enum: unit -> GLenum.t [@@js.get "INVALID_ENUM"]
  val invalid_framebuffer_operation: unit -> GLenum.t [@@js.get "INVALID_FRAMEBUFFER_OPERATION"]
  val invalid_operation: unit -> GLenum.t [@@js.get "INVALID_OPERATION"]
  val invalid_value: unit -> GLenum.t [@@js.get "INVALID_VALUE"]
  val invert: unit -> GLenum.t [@@js.get "INVERT"]
  val keep: unit -> GLenum.t [@@js.get "KEEP"]
  val lequal: unit -> GLenum.t [@@js.get "LEQUAL"]
  val less: unit -> GLenum.t [@@js.get "LESS"]
  val linear: unit -> GLenum.t [@@js.get "LINEAR"]
  val linear_mipmap_linear: unit -> GLenum.t [@@js.get "LINEAR_MIPMAP_LINEAR"]
  val linear_mipmap_nearest: unit -> GLenum.t [@@js.get "LINEAR_MIPMAP_NEAREST"]
  val lines: unit -> GLenum.t [@@js.get "LINES"]
  val line_loop: unit -> GLenum.t [@@js.get "LINE_LOOP"]
  val line_strip: unit -> GLenum.t [@@js.get "LINE_STRIP"]
  val line_width: unit -> GLenum.t [@@js.get "LINE_WIDTH"]
  val link_status: unit -> GLenum.t [@@js.get "LINK_STATUS"]
  val low_float: unit -> GLenum.t [@@js.get "LOW_FLOAT"]
  val low_int: unit -> GLenum.t [@@js.get "LOW_INT"]
  val luminance: unit -> GLenum.t [@@js.get "LUMINANCE"]
  val luminance_alpha: unit -> GLenum.t [@@js.get "LUMINANCE_ALPHA"]
  val max_combined_texture_image_units: unit -> GLenum.t [@@js.get "MAX_COMBINED_TEXTURE_IMAGE_UNITS"]
  val max_cube_map_texture_size: unit -> GLenum.t [@@js.get "MAX_CUBE_MAP_TEXTURE_SIZE"]
  val max_fragment_uniform_vectors: unit -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_VECTORS"]
  val max_renderbuffer_size: unit -> GLenum.t [@@js.get "MAX_RENDERBUFFER_SIZE"]
  val max_texture_image_units: unit -> GLenum.t [@@js.get "MAX_TEXTURE_IMAGE_UNITS"]
  val max_texture_size: unit -> GLenum.t [@@js.get "MAX_TEXTURE_SIZE"]
  val max_varying_vectors: unit -> GLenum.t [@@js.get "MAX_VARYING_VECTORS"]
  val max_vertex_attribs: unit -> GLenum.t [@@js.get "MAX_VERTEX_ATTRIBS"]
  val max_vertex_texture_image_units: unit -> GLenum.t [@@js.get "MAX_VERTEX_TEXTURE_IMAGE_UNITS"]
  val max_vertex_uniform_vectors: unit -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_VECTORS"]
  val max_viewport_dims: unit -> GLenum.t [@@js.get "MAX_VIEWPORT_DIMS"]
  val medium_float: unit -> GLenum.t [@@js.get "MEDIUM_FLOAT"]
  val medium_int: unit -> GLenum.t [@@js.get "MEDIUM_INT"]
  val mirrored_repeat: unit -> GLenum.t [@@js.get "MIRRORED_REPEAT"]
  val nearest: unit -> GLenum.t [@@js.get "NEAREST"]
  val nearest_mipmap_linear: unit -> GLenum.t [@@js.get "NEAREST_MIPMAP_LINEAR"]
  val nearest_mipmap_nearest: unit -> GLenum.t [@@js.get "NEAREST_MIPMAP_NEAREST"]
  val never: unit -> GLenum.t [@@js.get "NEVER"]
  val nicest: unit -> GLenum.t [@@js.get "NICEST"]
  val none: unit -> GLenum.t [@@js.get "NONE"]
  val notequal: unit -> GLenum.t [@@js.get "NOTEQUAL"]
  val no_error: unit -> GLenum.t [@@js.get "NO_ERROR"]
  val one: unit -> GLenum.t [@@js.get "ONE"]
  val one_minus_constant_alpha: unit -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_ALPHA"]
  val one_minus_constant_color: unit -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_COLOR"]
  val one_minus_dst_alpha: unit -> GLenum.t [@@js.get "ONE_MINUS_DST_ALPHA"]
  val one_minus_dst_color: unit -> GLenum.t [@@js.get "ONE_MINUS_DST_COLOR"]
  val one_minus_src_alpha: unit -> GLenum.t [@@js.get "ONE_MINUS_SRC_ALPHA"]
  val one_minus_src_color: unit -> GLenum.t [@@js.get "ONE_MINUS_SRC_COLOR"]
  val out_of_memory: unit -> GLenum.t [@@js.get "OUT_OF_MEMORY"]
  val pack_alignment: unit -> GLenum.t [@@js.get "PACK_ALIGNMENT"]
  val points: unit -> GLenum.t [@@js.get "POINTS"]
  val polygon_offset_factor: unit -> GLenum.t [@@js.get "POLYGON_OFFSET_FACTOR"]
  val polygon_offset_fill: unit -> GLenum.t [@@js.get "POLYGON_OFFSET_FILL"]
  val polygon_offset_units: unit -> GLenum.t [@@js.get "POLYGON_OFFSET_UNITS"]
  val red_bits: unit -> GLenum.t [@@js.get "RED_BITS"]
  val renderbuffer: unit -> GLenum.t [@@js.get "RENDERBUFFER"]
  val renderbuffer_alpha_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_ALPHA_SIZE"]
  val renderbuffer_binding: unit -> GLenum.t [@@js.get "RENDERBUFFER_BINDING"]
  val renderbuffer_blue_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_BLUE_SIZE"]
  val renderbuffer_depth_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_DEPTH_SIZE"]
  val renderbuffer_green_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_GREEN_SIZE"]
  val renderbuffer_height: unit -> GLenum.t [@@js.get "RENDERBUFFER_HEIGHT"]
  val renderbuffer_internal_format: unit -> GLenum.t [@@js.get "RENDERBUFFER_INTERNAL_FORMAT"]
  val renderbuffer_red_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_RED_SIZE"]
  val renderbuffer_stencil_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_STENCIL_SIZE"]
  val renderbuffer_width: unit -> GLenum.t [@@js.get "RENDERBUFFER_WIDTH"]
  val renderer: unit -> GLenum.t [@@js.get "RENDERER"]
  val repeat: unit -> GLenum.t [@@js.get "REPEAT"]
  val replace: unit -> GLenum.t [@@js.get "REPLACE"]
  val rgb: unit -> GLenum.t [@@js.get "RGB"]
  val rgb565: unit -> GLenum.t [@@js.get "RGB565"]
  val rgb5_a1: unit -> GLenum.t [@@js.get "RGB5_A1"]
  val rgba: unit -> GLenum.t [@@js.get "RGBA"]
  val rgba4: unit -> GLenum.t [@@js.get "RGBA4"]
  val sampler_2d: unit -> GLenum.t [@@js.get "SAMPLER_2D"]
  val sampler_cube: unit -> GLenum.t [@@js.get "SAMPLER_CUBE"]
  val samples: unit -> GLenum.t [@@js.get "SAMPLES"]
  val sample_alpha_to_coverage: unit -> GLenum.t [@@js.get "SAMPLE_ALPHA_TO_COVERAGE"]
  val sample_buffers: unit -> GLenum.t [@@js.get "SAMPLE_BUFFERS"]
  val sample_coverage: unit -> GLenum.t [@@js.get "SAMPLE_COVERAGE"]
  val sample_coverage_invert: unit -> GLenum.t [@@js.get "SAMPLE_COVERAGE_INVERT"]
  val sample_coverage_value: unit -> GLenum.t [@@js.get "SAMPLE_COVERAGE_VALUE"]
  val scissor_box: unit -> GLenum.t [@@js.get "SCISSOR_BOX"]
  val scissor_test: unit -> GLenum.t [@@js.get "SCISSOR_TEST"]
  val shader_type: unit -> GLenum.t [@@js.get "SHADER_TYPE"]
  val shading_language_version: unit -> GLenum.t [@@js.get "SHADING_LANGUAGE_VERSION"]
  val short: unit -> GLenum.t [@@js.get "SHORT"]
  val src_alpha: unit -> GLenum.t [@@js.get "SRC_ALPHA"]
  val src_alpha_saturate: unit -> GLenum.t [@@js.get "SRC_ALPHA_SATURATE"]
  val src_color: unit -> GLenum.t [@@js.get "SRC_COLOR"]
  val static_draw: unit -> GLenum.t [@@js.get "STATIC_DRAW"]
  val stencil_attachment: unit -> GLenum.t [@@js.get "STENCIL_ATTACHMENT"]
  val stencil_back_fail: unit -> GLenum.t [@@js.get "STENCIL_BACK_FAIL"]
  val stencil_back_func: unit -> GLenum.t [@@js.get "STENCIL_BACK_FUNC"]
  val stencil_back_pass_depth_fail: unit -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_FAIL"]
  val stencil_back_pass_depth_pass: unit -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_PASS"]
  val stencil_back_ref: unit -> GLenum.t [@@js.get "STENCIL_BACK_REF"]
  val stencil_back_value_mask: unit -> GLenum.t [@@js.get "STENCIL_BACK_VALUE_MASK"]
  val stencil_back_writemask: unit -> GLenum.t [@@js.get "STENCIL_BACK_WRITEMASK"]
  val stencil_bits: unit -> GLenum.t [@@js.get "STENCIL_BITS"]
  val stencil_buffer_bit: unit -> GLenum.t [@@js.get "STENCIL_BUFFER_BIT"]
  val stencil_clear_value: unit -> GLenum.t [@@js.get "STENCIL_CLEAR_VALUE"]
  val stencil_fail: unit -> GLenum.t [@@js.get "STENCIL_FAIL"]
  val stencil_func: unit -> GLenum.t [@@js.get "STENCIL_FUNC"]
  val stencil_index8: unit -> GLenum.t [@@js.get "STENCIL_INDEX8"]
  val stencil_pass_depth_fail: unit -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_FAIL"]
  val stencil_pass_depth_pass: unit -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_PASS"]
  val stencil_ref: unit -> GLenum.t [@@js.get "STENCIL_REF"]
  val stencil_test: unit -> GLenum.t [@@js.get "STENCIL_TEST"]
  val stencil_value_mask: unit -> GLenum.t [@@js.get "STENCIL_VALUE_MASK"]
  val stencil_writemask: unit -> GLenum.t [@@js.get "STENCIL_WRITEMASK"]
  val stream_draw: unit -> GLenum.t [@@js.get "STREAM_DRAW"]
  val subpixel_bits: unit -> GLenum.t [@@js.get "SUBPIXEL_BITS"]
  val texture: unit -> GLenum.t [@@js.get "TEXTURE"]
  val texture0: unit -> GLenum.t [@@js.get "TEXTURE0"]
  val texture1: unit -> GLenum.t [@@js.get "TEXTURE1"]
  val texture10: unit -> GLenum.t [@@js.get "TEXTURE10"]
  val texture11: unit -> GLenum.t [@@js.get "TEXTURE11"]
  val texture12: unit -> GLenum.t [@@js.get "TEXTURE12"]
  val texture13: unit -> GLenum.t [@@js.get "TEXTURE13"]
  val texture14: unit -> GLenum.t [@@js.get "TEXTURE14"]
  val texture15: unit -> GLenum.t [@@js.get "TEXTURE15"]
  val texture16: unit -> GLenum.t [@@js.get "TEXTURE16"]
  val texture17: unit -> GLenum.t [@@js.get "TEXTURE17"]
  val texture18: unit -> GLenum.t [@@js.get "TEXTURE18"]
  val texture19: unit -> GLenum.t [@@js.get "TEXTURE19"]
  val texture2: unit -> GLenum.t [@@js.get "TEXTURE2"]
  val texture20: unit -> GLenum.t [@@js.get "TEXTURE20"]
  val texture21: unit -> GLenum.t [@@js.get "TEXTURE21"]
  val texture22: unit -> GLenum.t [@@js.get "TEXTURE22"]
  val texture23: unit -> GLenum.t [@@js.get "TEXTURE23"]
  val texture24: unit -> GLenum.t [@@js.get "TEXTURE24"]
  val texture25: unit -> GLenum.t [@@js.get "TEXTURE25"]
  val texture26: unit -> GLenum.t [@@js.get "TEXTURE26"]
  val texture27: unit -> GLenum.t [@@js.get "TEXTURE27"]
  val texture28: unit -> GLenum.t [@@js.get "TEXTURE28"]
  val texture29: unit -> GLenum.t [@@js.get "TEXTURE29"]
  val texture3: unit -> GLenum.t [@@js.get "TEXTURE3"]
  val texture30: unit -> GLenum.t [@@js.get "TEXTURE30"]
  val texture31: unit -> GLenum.t [@@js.get "TEXTURE31"]
  val texture4: unit -> GLenum.t [@@js.get "TEXTURE4"]
  val texture5: unit -> GLenum.t [@@js.get "TEXTURE5"]
  val texture6: unit -> GLenum.t [@@js.get "TEXTURE6"]
  val texture7: unit -> GLenum.t [@@js.get "TEXTURE7"]
  val texture8: unit -> GLenum.t [@@js.get "TEXTURE8"]
  val texture9: unit -> GLenum.t [@@js.get "TEXTURE9"]
  val texture_2d: unit -> GLenum.t [@@js.get "TEXTURE_2D"]
  val texture_binding_2d: unit -> GLenum.t [@@js.get "TEXTURE_BINDING_2D"]
  val texture_binding_cube_map: unit -> GLenum.t [@@js.get "TEXTURE_BINDING_CUBE_MAP"]
  val texture_cube_map: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP"]
  val texture_cube_map_negative_x: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_X"]
  val texture_cube_map_negative_y: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Y"]
  val texture_cube_map_negative_z: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Z"]
  val texture_cube_map_positive_x: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_X"]
  val texture_cube_map_positive_y: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Y"]
  val texture_cube_map_positive_z: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Z"]
  val texture_mag_filter: unit -> GLenum.t [@@js.get "TEXTURE_MAG_FILTER"]
  val texture_min_filter: unit -> GLenum.t [@@js.get "TEXTURE_MIN_FILTER"]
  val texture_wrap_s: unit -> GLenum.t [@@js.get "TEXTURE_WRAP_S"]
  val texture_wrap_t: unit -> GLenum.t [@@js.get "TEXTURE_WRAP_T"]
  val triangles: unit -> GLenum.t [@@js.get "TRIANGLES"]
  val triangle_fan: unit -> GLenum.t [@@js.get "TRIANGLE_FAN"]
  val triangle_strip: unit -> GLenum.t [@@js.get "TRIANGLE_STRIP"]
  val unpack_alignment: unit -> GLenum.t [@@js.get "UNPACK_ALIGNMENT"]
  val unpack_colorspace_conversion_webgl: unit -> GLenum.t [@@js.get "UNPACK_COLORSPACE_CONVERSION_WEBGL"]
  val unpack_flip_y_webgl: unit -> GLenum.t [@@js.get "UNPACK_FLIP_Y_WEBGL"]
  val unpack_premultiply_alpha_webgl: unit -> GLenum.t [@@js.get "UNPACK_PREMULTIPLY_ALPHA_WEBGL"]
  val unsigned_byte: unit -> GLenum.t [@@js.get "UNSIGNED_BYTE"]
  val unsigned_int: unit -> GLenum.t [@@js.get "UNSIGNED_INT"]
  val unsigned_short: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT"]
  val unsigned_short_4_4_4_4: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT_4_4_4_4"]
  val unsigned_short_5_5_5_1: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_5_5_1"]
  val unsigned_short_5_6_5: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_6_5"]
  val validate_status: unit -> GLenum.t [@@js.get "VALIDATE_STATUS"]
  val vendor: unit -> GLenum.t [@@js.get "VENDOR"]
  val version: unit -> GLenum.t [@@js.get "VERSION"]
  val vertex_attrib_array_buffer_binding: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_BUFFER_BINDING"]
  val vertex_attrib_array_enabled: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_ENABLED"]
  val vertex_attrib_array_normalized: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_NORMALIZED"]
  val vertex_attrib_array_pointer: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_POINTER"]
  val vertex_attrib_array_size: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_SIZE"]
  val vertex_attrib_array_stride: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_STRIDE"]
  val vertex_attrib_array_type: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_TYPE"]
  val vertex_shader: unit -> GLenum.t [@@js.get "VERTEX_SHADER"]
  val viewport: unit -> GLenum.t [@@js.get "VIEWPORT"]
  val zero: unit -> GLenum.t [@@js.get "ZERO"]
end
module WebGLContextEventInit : sig
  type t = [`EventInit | `WebGLContextEventInit] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`EventInit | `WebGLContextEventInit]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`EventInit | `WebGLContextEventInit]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLContextEventInit ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_statusMessage: 'tags this -> string [@@js.get "statusMessage"]
  val set_statusMessage: 'tags this -> string -> unit [@@js.set "statusMessage"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface114 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLContextEvent.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLContextEvent.t -> unit [@@js.set "prototype"]
  val create: t -> type_:string -> ?eventInit:WebGLContextEventInit.t -> unit -> WebGLContextEvent.t [@@js.apply_newable]
end

(** The WebContextEvent interface is part of the WebGL API and is an interface for an event that is generated in response to a status change to the WebGL rendering context. *)
and[@js.scope "WebGLContextEvent"] WebGLContextEvent : sig
  type t = [`Event | `WebGLContextEvent] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`Event | `WebGLContextEvent]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Event | `WebGLContextEvent]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLContextEvent ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_statusMessage: 'tags this -> string [@@js.get "statusMessage"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: type_:string -> ?eventInit:WebGLContextEventInit.t -> unit -> t [@@js.create]
end
module WebGL2RenderingContextOverloads : sig
  type t = [`WebGL2RenderingContextOverloads] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGL2RenderingContextOverloads]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGL2RenderingContextOverloads]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGL2RenderingContextOverloads ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val bufferData: 'tags this -> target:GLenum.t -> size:GLsizeiptr.t -> usage:GLenum.t -> unit [@@js.call "bufferData"]
  val bufferData': 'tags this -> target:GLenum.t -> srcData:BufferSource.t or_null -> usage:GLenum.t -> unit [@@js.call "bufferData"]
  val bufferData'': 'tags this -> target:GLenum.t -> srcData:ArrayBufferView.t_0 -> usage:GLenum.t -> srcOffset:GLuint.t -> ?length:GLuint.t -> unit -> unit [@@js.call "bufferData"]
  val bufferSubData: 'tags this -> target:GLenum.t -> dstByteOffset:GLintptr.t -> srcData:BufferSource.t -> unit [@@js.call "bufferSubData"]
  val bufferSubData': 'tags this -> target:GLenum.t -> dstByteOffset:GLintptr.t -> srcData:ArrayBufferView.t_0 -> srcOffset:GLuint.t -> ?length:GLuint.t -> unit -> unit [@@js.call "bufferSubData"]
  val compressedTexImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> imageSize:GLsizei.t -> offset:GLintptr.t -> unit [@@js.call "compressedTexImage2D"]
  val compressedTexImage2D': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> srcData:ArrayBufferView.t_0 -> ?srcOffset:GLuint.t -> ?srcLengthOverride:GLuint.t -> unit -> unit [@@js.call "compressedTexImage2D"]
  val compressedTexSubImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> imageSize:GLsizei.t -> offset:GLintptr.t -> unit [@@js.call "compressedTexSubImage2D"]
  val compressedTexSubImage2D': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> srcData:ArrayBufferView.t_0 -> ?srcOffset:GLuint.t -> ?srcLengthOverride:GLuint.t -> unit -> unit [@@js.call "compressedTexSubImage2D"]
  val readPixels: 'tags this -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> dstData:ArrayBufferView.t_0 or_null -> unit [@@js.call "readPixels"]
  val readPixels': 'tags this -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> offset:GLintptr.t -> unit [@@js.call "readPixels"]
  val readPixels'': 'tags this -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> dstData:ArrayBufferView.t_0 -> dstOffset:GLuint.t -> unit [@@js.call "readPixels"]
  val texImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> pixels:ArrayBufferView.t_0 or_null -> unit [@@js.call "texImage2D"]
  val texImage2D': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texImage2D"]
  val texImage2D'': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> pboOffset:GLintptr.t -> unit [@@js.call "texImage2D"]
  val texImage2D''': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texImage2D"]
  val texImage2D'''': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> srcData:ArrayBufferView.t_0 -> srcOffset:GLuint.t -> unit [@@js.call "texImage2D"]
  val texSubImage2D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> pixels:ArrayBufferView.t_0 or_null -> unit [@@js.call "texSubImage2D"]
  val texSubImage2D': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texSubImage2D"]
  val texSubImage2D'': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> pboOffset:GLintptr.t -> unit [@@js.call "texSubImage2D"]
  val texSubImage2D''': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texSubImage2D"]
  val texSubImage2D'''': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> srcData:ArrayBufferView.t_0 -> srcOffset:GLuint.t -> unit [@@js.call "texSubImage2D"]
  val uniform1fv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform1fv"]
  val uniform1iv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Int32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform1iv"]
  val uniform2fv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform2fv"]
  val uniform2iv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Int32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform2iv"]
  val uniform3fv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform3fv"]
  val uniform3iv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Int32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform3iv"]
  val uniform4fv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform4fv"]
  val uniform4iv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Int32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform4iv"]
  val uniformMatrix2fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix2fv"]
  val uniformMatrix3fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix3fv"]
  val uniformMatrix4fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix4fv"]
  val uniform1fv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform1fv"]
  val uniform1iv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform1iv"]
  val uniform2fv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform2fv"]
  val uniform2iv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform2iv"]
  val uniform3fv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform3fv"]
  val uniform3iv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform3iv"]
  val uniform4fv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform4fv"]
  val uniform4iv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform4iv"]
  val uniformMatrix2fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix2fv"]
  val uniformMatrix3fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix3fv"]
  val uniformMatrix4fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix4fv"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface127 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLVertexArrayObject.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLVertexArrayObject.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLVertexArrayObject.t [@@js.apply_newable]
end
and[@js.scope "WebGLVertexArrayObject"] WebGLVertexArrayObject : sig
  type t = [`WebGLVertexArrayObject] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLVertexArrayObject]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLVertexArrayObject]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLVertexArrayObject ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface125 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLTransformFeedback.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLTransformFeedback.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLTransformFeedback.t [@@js.apply_newable]
end
and[@js.scope "WebGLTransformFeedback"] WebGLTransformFeedback : sig
  type t = [`WebGLTransformFeedback] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLTransformFeedback]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLTransformFeedback]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLTransformFeedback ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface123 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLSync.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLSync.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLSync.t [@@js.apply_newable]
end
and[@js.scope "WebGLSync"] WebGLSync : sig
  type t = [`WebGLSync] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLSync]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLSync]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLSync ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface120 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLSampler.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLSampler.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLSampler.t [@@js.apply_newable]
end
and[@js.scope "WebGLSampler"] WebGLSampler : sig
  type t = [`WebGLSampler] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLSampler]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLSampler]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLSampler ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module rec AnonymousInterface117 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGLQuery.t [@@js.get "prototype"]
  val set_prototype: t -> WebGLQuery.t -> unit [@@js.set "prototype"]
  val create: t -> WebGLQuery.t [@@js.apply_newable]
end
and[@js.scope "WebGLQuery"] WebGLQuery : sig
  type t = [`WebGLQuery] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGLQuery]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGLQuery]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGLQuery ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module Uint32List : sig
  type t = (Uint32Array.t_0, GLuint.t) or_array
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLuint64 : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module GLint64 : sig
  type t = float
  type t_0 = t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
end
module WebGL2RenderingContextBase : sig
  type t = [`WebGL2RenderingContextBase] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGL2RenderingContextBase]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGL2RenderingContextBase]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGL2RenderingContextBase ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val beginQuery: 'tags this -> target:GLenum.t -> query:WebGLQuery.t -> unit [@@js.call "beginQuery"]
  val beginTransformFeedback: 'tags this -> primitiveMode:GLenum.t -> unit [@@js.call "beginTransformFeedback"]
  val bindBufferBase: 'tags this -> target:GLenum.t -> index:GLuint.t -> buffer:WebGLBuffer.t or_null -> unit [@@js.call "bindBufferBase"]
  val bindBufferRange: 'tags this -> target:GLenum.t -> index:GLuint.t -> buffer:WebGLBuffer.t or_null -> offset:GLintptr.t -> size:GLsizeiptr.t -> unit [@@js.call "bindBufferRange"]
  val bindSampler: 'tags this -> unit:GLuint.t -> sampler:WebGLSampler.t or_null -> unit [@@js.call "bindSampler"]
  val bindTransformFeedback: 'tags this -> target:GLenum.t -> tf:WebGLTransformFeedback.t or_null -> unit [@@js.call "bindTransformFeedback"]
  val bindVertexArray: 'tags this -> array:WebGLVertexArrayObject.t or_null -> unit [@@js.call "bindVertexArray"]
  val blitFramebuffer: 'tags this -> srcX0:GLint.t -> srcY0:GLint.t -> srcX1:GLint.t -> srcY1:GLint.t -> dstX0:GLint.t -> dstY0:GLint.t -> dstX1:GLint.t -> dstY1:GLint.t -> mask:GLbitfield.t -> filter:GLenum.t -> unit [@@js.call "blitFramebuffer"]
  val clearBufferfi: 'tags this -> buffer:GLenum.t -> drawbuffer:GLint.t -> depth:GLfloat.t -> stencil:GLint.t -> unit [@@js.call "clearBufferfi"]
  val clearBufferfv: 'tags this -> buffer:GLenum.t -> drawbuffer:GLint.t -> values:Float32List.t -> ?srcOffset:GLuint.t -> unit -> unit [@@js.call "clearBufferfv"]
  val clearBufferiv: 'tags this -> buffer:GLenum.t -> drawbuffer:GLint.t -> values:Int32List.t -> ?srcOffset:GLuint.t -> unit -> unit [@@js.call "clearBufferiv"]
  val clearBufferuiv: 'tags this -> buffer:GLenum.t -> drawbuffer:GLint.t -> values:Uint32List.t -> ?srcOffset:GLuint.t -> unit -> unit [@@js.call "clearBufferuiv"]
  val clientWaitSync: 'tags this -> sync:WebGLSync.t -> flags:GLbitfield.t -> timeout:GLuint64.t -> GLenum.t [@@js.call "clientWaitSync"]
  val compressedTexImage3D: 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> border:GLint.t -> imageSize:GLsizei.t -> offset:GLintptr.t -> unit [@@js.call "compressedTexImage3D"]
  val compressedTexImage3D': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> border:GLint.t -> srcData:ArrayBufferView.t_0 -> ?srcOffset:GLuint.t -> ?srcLengthOverride:GLuint.t -> unit -> unit [@@js.call "compressedTexImage3D"]
  val compressedTexSubImage3D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> zoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> format:GLenum.t -> imageSize:GLsizei.t -> offset:GLintptr.t -> unit [@@js.call "compressedTexSubImage3D"]
  val compressedTexSubImage3D': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> zoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> format:GLenum.t -> srcData:ArrayBufferView.t_0 -> ?srcOffset:GLuint.t -> ?srcLengthOverride:GLuint.t -> unit -> unit [@@js.call "compressedTexSubImage3D"]
  val copyBufferSubData: 'tags this -> readTarget:GLenum.t -> writeTarget:GLenum.t -> readOffset:GLintptr.t -> writeOffset:GLintptr.t -> size:GLsizeiptr.t -> unit [@@js.call "copyBufferSubData"]
  val copyTexSubImage3D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> zoffset:GLint.t -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "copyTexSubImage3D"]
  val createQuery: 'tags this -> WebGLQuery.t or_null [@@js.call "createQuery"]
  val createSampler: 'tags this -> WebGLSampler.t or_null [@@js.call "createSampler"]
  val createTransformFeedback: 'tags this -> WebGLTransformFeedback.t or_null [@@js.call "createTransformFeedback"]
  val createVertexArray: 'tags this -> WebGLVertexArrayObject.t or_null [@@js.call "createVertexArray"]
  val deleteQuery: 'tags this -> query:WebGLQuery.t or_null -> unit [@@js.call "deleteQuery"]
  val deleteSampler: 'tags this -> sampler:WebGLSampler.t or_null -> unit [@@js.call "deleteSampler"]
  val deleteSync: 'tags this -> sync:WebGLSync.t or_null -> unit [@@js.call "deleteSync"]
  val deleteTransformFeedback: 'tags this -> tf:WebGLTransformFeedback.t or_null -> unit [@@js.call "deleteTransformFeedback"]
  val deleteVertexArray: 'tags this -> vertexArray:WebGLVertexArrayObject.t or_null -> unit [@@js.call "deleteVertexArray"]
  val drawArraysInstanced: 'tags this -> mode:GLenum.t -> first:GLint.t -> count:GLsizei.t -> instanceCount:GLsizei.t -> unit [@@js.call "drawArraysInstanced"]
  val drawBuffers: 'tags this -> buffers:GLenum.t list -> unit [@@js.call "drawBuffers"]
  val drawElementsInstanced: 'tags this -> mode:GLenum.t -> count:GLsizei.t -> type_:GLenum.t -> offset:GLintptr.t -> instanceCount:GLsizei.t -> unit [@@js.call "drawElementsInstanced"]
  val drawRangeElements: 'tags this -> mode:GLenum.t -> start:GLuint.t -> end_:GLuint.t -> count:GLsizei.t -> type_:GLenum.t -> offset:GLintptr.t -> unit [@@js.call "drawRangeElements"]
  val endQuery: 'tags this -> target:GLenum.t -> unit [@@js.call "endQuery"]
  val endTransformFeedback: 'tags this -> unit [@@js.call "endTransformFeedback"]
  val fenceSync: 'tags this -> condition:GLenum.t -> flags:GLbitfield.t -> WebGLSync.t or_null [@@js.call "fenceSync"]
  val framebufferTextureLayer: 'tags this -> target:GLenum.t -> attachment:GLenum.t -> texture:WebGLTexture.t or_null -> level:GLint.t -> layer:GLint.t -> unit [@@js.call "framebufferTextureLayer"]
  val getActiveUniformBlockName: 'tags this -> program:WebGLProgram.t -> uniformBlockIndex:GLuint.t -> string or_null [@@js.call "getActiveUniformBlockName"]
  val getActiveUniformBlockParameter: 'tags this -> program:WebGLProgram.t -> uniformBlockIndex:GLuint.t -> pname:GLenum.t -> any [@@js.call "getActiveUniformBlockParameter"]
  val getActiveUniforms: 'tags this -> program:WebGLProgram.t -> uniformIndices:GLuint.t list -> pname:GLenum.t -> any [@@js.call "getActiveUniforms"]
  val getBufferSubData: 'tags this -> target:GLenum.t -> srcByteOffset:GLintptr.t -> dstBuffer:ArrayBufferView.t_0 -> ?dstOffset:GLuint.t -> ?length:GLuint.t -> unit -> unit [@@js.call "getBufferSubData"]
  val getFragDataLocation: 'tags this -> program:WebGLProgram.t -> name:string -> GLint.t [@@js.call "getFragDataLocation"]
  val getIndexedParameter: 'tags this -> target:GLenum.t -> index:GLuint.t -> any [@@js.call "getIndexedParameter"]
  val getInternalformatParameter: 'tags this -> target:GLenum.t -> internalformat:GLenum.t -> pname:GLenum.t -> any [@@js.call "getInternalformatParameter"]
  val getQuery: 'tags this -> target:GLenum.t -> pname:GLenum.t -> WebGLQuery.t or_null [@@js.call "getQuery"]
  val getQueryParameter: 'tags this -> query:WebGLQuery.t -> pname:GLenum.t -> any [@@js.call "getQueryParameter"]
  val getSamplerParameter: 'tags this -> sampler:WebGLSampler.t -> pname:GLenum.t -> any [@@js.call "getSamplerParameter"]
  val getSyncParameter: 'tags this -> sync:WebGLSync.t -> pname:GLenum.t -> any [@@js.call "getSyncParameter"]
  val getTransformFeedbackVarying: 'tags this -> program:WebGLProgram.t -> index:GLuint.t -> WebGLActiveInfo.t or_null [@@js.call "getTransformFeedbackVarying"]
  val getUniformBlockIndex: 'tags this -> program:WebGLProgram.t -> uniformBlockName:string -> GLuint.t [@@js.call "getUniformBlockIndex"]
  val getUniformIndices: 'tags this -> program:WebGLProgram.t -> uniformNames:string list -> GLuint.t list or_null [@@js.call "getUniformIndices"]
  val invalidateFramebuffer: 'tags this -> target:GLenum.t -> attachments:GLenum.t list -> unit [@@js.call "invalidateFramebuffer"]
  val invalidateSubFramebuffer: 'tags this -> target:GLenum.t -> attachments:GLenum.t list -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "invalidateSubFramebuffer"]
  val isQuery: 'tags this -> query:WebGLQuery.t or_null -> GLboolean.t [@@js.call "isQuery"]
  val isSampler: 'tags this -> sampler:WebGLSampler.t or_null -> GLboolean.t [@@js.call "isSampler"]
  val isSync: 'tags this -> sync:WebGLSync.t or_null -> GLboolean.t [@@js.call "isSync"]
  val isTransformFeedback: 'tags this -> tf:WebGLTransformFeedback.t or_null -> GLboolean.t [@@js.call "isTransformFeedback"]
  val isVertexArray: 'tags this -> vertexArray:WebGLVertexArrayObject.t or_null -> GLboolean.t [@@js.call "isVertexArray"]
  val pauseTransformFeedback: 'tags this -> unit [@@js.call "pauseTransformFeedback"]
  val readBuffer: 'tags this -> src:GLenum.t -> unit [@@js.call "readBuffer"]
  val renderbufferStorageMultisample: 'tags this -> target:GLenum.t -> samples:GLsizei.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "renderbufferStorageMultisample"]
  val resumeTransformFeedback: 'tags this -> unit [@@js.call "resumeTransformFeedback"]
  val samplerParameterf: 'tags this -> sampler:WebGLSampler.t -> pname:GLenum.t -> param:GLfloat.t -> unit [@@js.call "samplerParameterf"]
  val samplerParameteri: 'tags this -> sampler:WebGLSampler.t -> pname:GLenum.t -> param:GLint.t -> unit [@@js.call "samplerParameteri"]
  val texImage3D: 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> pboOffset:GLintptr.t -> unit [@@js.call "texImage3D"]
  val texImage3D': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texImage3D"]
  val texImage3D'': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> srcData:ArrayBufferView.t_0 or_null -> unit [@@js.call "texImage3D"]
  val texImage3D''': 'tags this -> target:GLenum.t -> level:GLint.t -> internalformat:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> border:GLint.t -> format:GLenum.t -> type_:GLenum.t -> srcData:ArrayBufferView.t_0 -> srcOffset:GLuint.t -> unit [@@js.call "texImage3D"]
  val texStorage2D: 'tags this -> target:GLenum.t -> levels:GLsizei.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "texStorage2D"]
  val texStorage3D: 'tags this -> target:GLenum.t -> levels:GLsizei.t -> internalformat:GLenum.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> unit [@@js.call "texStorage3D"]
  val texSubImage3D: 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> zoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> pboOffset:GLintptr.t -> unit [@@js.call "texSubImage3D"]
  val texSubImage3D': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> zoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> source:TexImageSource.t -> unit [@@js.call "texSubImage3D"]
  val texSubImage3D'': 'tags this -> target:GLenum.t -> level:GLint.t -> xoffset:GLint.t -> yoffset:GLint.t -> zoffset:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> depth:GLsizei.t -> format:GLenum.t -> type_:GLenum.t -> srcData:ArrayBufferView.t_0 or_null -> ?srcOffset:GLuint.t -> unit -> unit [@@js.call "texSubImage3D"]
  val transformFeedbackVaryings: 'tags this -> program:WebGLProgram.t -> varyings:string list -> bufferMode:GLenum.t -> unit [@@js.call "transformFeedbackVaryings"]
  val uniform1ui: 'tags this -> location:WebGLUniformLocation.t or_null -> v0:GLuint.t -> unit [@@js.call "uniform1ui"]
  val uniform1uiv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Uint32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform1uiv"]
  val uniform2ui: 'tags this -> location:WebGLUniformLocation.t or_null -> v0:GLuint.t -> v1:GLuint.t -> unit [@@js.call "uniform2ui"]
  val uniform2uiv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Uint32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform2uiv"]
  val uniform3ui: 'tags this -> location:WebGLUniformLocation.t or_null -> v0:GLuint.t -> v1:GLuint.t -> v2:GLuint.t -> unit [@@js.call "uniform3ui"]
  val uniform3uiv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Uint32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform3uiv"]
  val uniform4ui: 'tags this -> location:WebGLUniformLocation.t or_null -> v0:GLuint.t -> v1:GLuint.t -> v2:GLuint.t -> v3:GLuint.t -> unit [@@js.call "uniform4ui"]
  val uniform4uiv: 'tags this -> location:WebGLUniformLocation.t or_null -> data:Uint32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform4uiv"]
  val uniformBlockBinding: 'tags this -> program:WebGLProgram.t -> uniformBlockIndex:GLuint.t -> uniformBlockBinding:GLuint.t -> unit [@@js.call "uniformBlockBinding"]
  val uniformMatrix2x3fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix2x3fv"]
  val uniformMatrix2x4fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix2x4fv"]
  val uniformMatrix3x2fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix3x2fv"]
  val uniformMatrix3x4fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix3x4fv"]
  val uniformMatrix4x2fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix4x2fv"]
  val uniformMatrix4x3fv: 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:Float32List.t -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix4x3fv"]
  val vertexAttribDivisor: 'tags this -> index:GLuint.t -> divisor:GLuint.t -> unit [@@js.call "vertexAttribDivisor"]
  val vertexAttribI4i: 'tags this -> index:GLuint.t -> x:GLint.t -> y:GLint.t -> z:GLint.t -> w:GLint.t -> unit [@@js.call "vertexAttribI4i"]
  val vertexAttribI4iv: 'tags this -> index:GLuint.t -> values:Int32List.t -> unit [@@js.call "vertexAttribI4iv"]
  val vertexAttribI4ui: 'tags this -> index:GLuint.t -> x:GLuint.t -> y:GLuint.t -> z:GLuint.t -> w:GLuint.t -> unit [@@js.call "vertexAttribI4ui"]
  val vertexAttribI4uiv: 'tags this -> index:GLuint.t -> values:Uint32List.t -> unit [@@js.call "vertexAttribI4uiv"]
  val vertexAttribIPointer: 'tags this -> index:GLuint.t -> size:GLint.t -> type_:GLenum.t -> stride:GLsizei.t -> offset:GLintptr.t -> unit [@@js.call "vertexAttribIPointer"]
  val waitSync: 'tags this -> sync:WebGLSync.t -> flags:GLbitfield.t -> timeout:GLint64.t -> unit [@@js.call "waitSync"]
  val get_ACTIVE_UNIFORM_BLOCKS: 'tags this -> GLenum.t [@@js.get "ACTIVE_UNIFORM_BLOCKS"]
  val get_ALREADY_SIGNALED: 'tags this -> GLenum.t [@@js.get "ALREADY_SIGNALED"]
  val get_ANY_SAMPLES_PASSED: 'tags this -> GLenum.t [@@js.get "ANY_SAMPLES_PASSED"]
  val get_ANY_SAMPLES_PASSED_CONSERVATIVE: 'tags this -> GLenum.t [@@js.get "ANY_SAMPLES_PASSED_CONSERVATIVE"]
  val get_COLOR: 'tags this -> GLenum.t [@@js.get "COLOR"]
  val get_COLOR_ATTACHMENT1: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT1"]
  val get_COLOR_ATTACHMENT10: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT10"]
  val get_COLOR_ATTACHMENT11: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT11"]
  val get_COLOR_ATTACHMENT12: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT12"]
  val get_COLOR_ATTACHMENT13: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT13"]
  val get_COLOR_ATTACHMENT14: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT14"]
  val get_COLOR_ATTACHMENT15: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT15"]
  val get_COLOR_ATTACHMENT2: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT2"]
  val get_COLOR_ATTACHMENT3: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT3"]
  val get_COLOR_ATTACHMENT4: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT4"]
  val get_COLOR_ATTACHMENT5: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT5"]
  val get_COLOR_ATTACHMENT6: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT6"]
  val get_COLOR_ATTACHMENT7: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT7"]
  val get_COLOR_ATTACHMENT8: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT8"]
  val get_COLOR_ATTACHMENT9: 'tags this -> GLenum.t [@@js.get "COLOR_ATTACHMENT9"]
  val get_COMPARE_REF_TO_TEXTURE: 'tags this -> GLenum.t [@@js.get "COMPARE_REF_TO_TEXTURE"]
  val get_CONDITION_SATISFIED: 'tags this -> GLenum.t [@@js.get "CONDITION_SATISFIED"]
  val get_COPY_READ_BUFFER: 'tags this -> GLenum.t [@@js.get "COPY_READ_BUFFER"]
  val get_COPY_READ_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "COPY_READ_BUFFER_BINDING"]
  val get_COPY_WRITE_BUFFER: 'tags this -> GLenum.t [@@js.get "COPY_WRITE_BUFFER"]
  val get_COPY_WRITE_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "COPY_WRITE_BUFFER_BINDING"]
  val get_CURRENT_QUERY: 'tags this -> GLenum.t [@@js.get "CURRENT_QUERY"]
  val get_DEPTH: 'tags this -> GLenum.t [@@js.get "DEPTH"]
  val get_DEPTH24_STENCIL8: 'tags this -> GLenum.t [@@js.get "DEPTH24_STENCIL8"]
  val get_DEPTH32F_STENCIL8: 'tags this -> GLenum.t [@@js.get "DEPTH32F_STENCIL8"]
  val get_DEPTH_COMPONENT24: 'tags this -> GLenum.t [@@js.get "DEPTH_COMPONENT24"]
  val get_DEPTH_COMPONENT32F: 'tags this -> GLenum.t [@@js.get "DEPTH_COMPONENT32F"]
  val get_DRAW_BUFFER0: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER0"]
  val get_DRAW_BUFFER1: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER1"]
  val get_DRAW_BUFFER10: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER10"]
  val get_DRAW_BUFFER11: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER11"]
  val get_DRAW_BUFFER12: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER12"]
  val get_DRAW_BUFFER13: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER13"]
  val get_DRAW_BUFFER14: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER14"]
  val get_DRAW_BUFFER15: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER15"]
  val get_DRAW_BUFFER2: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER2"]
  val get_DRAW_BUFFER3: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER3"]
  val get_DRAW_BUFFER4: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER4"]
  val get_DRAW_BUFFER5: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER5"]
  val get_DRAW_BUFFER6: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER6"]
  val get_DRAW_BUFFER7: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER7"]
  val get_DRAW_BUFFER8: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER8"]
  val get_DRAW_BUFFER9: 'tags this -> GLenum.t [@@js.get "DRAW_BUFFER9"]
  val get_DRAW_FRAMEBUFFER: 'tags this -> GLenum.t [@@js.get "DRAW_FRAMEBUFFER"]
  val get_DRAW_FRAMEBUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "DRAW_FRAMEBUFFER_BINDING"]
  val get_DYNAMIC_COPY: 'tags this -> GLenum.t [@@js.get "DYNAMIC_COPY"]
  val get_DYNAMIC_READ: 'tags this -> GLenum.t [@@js.get "DYNAMIC_READ"]
  val get_FLOAT_32_UNSIGNED_INT_24_8_REV: 'tags this -> GLenum.t [@@js.get "FLOAT_32_UNSIGNED_INT_24_8_REV"]
  val get_FLOAT_MAT2x3: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT2x3"]
  val get_FLOAT_MAT2x4: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT2x4"]
  val get_FLOAT_MAT3x2: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT3x2"]
  val get_FLOAT_MAT3x4: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT3x4"]
  val get_FLOAT_MAT4x2: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT4x2"]
  val get_FLOAT_MAT4x3: 'tags this -> GLenum.t [@@js.get "FLOAT_MAT4x3"]
  val get_FRAGMENT_SHADER_DERIVATIVE_HINT: 'tags this -> GLenum.t [@@js.get "FRAGMENT_SHADER_DERIVATIVE_HINT"]
  val get_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_BLUE_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING"]
  val get_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE"]
  val get_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_GREEN_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_RED_SIZE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_RED_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER"]
  val get_FRAMEBUFFER_DEFAULT: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_DEFAULT"]
  val get_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: 'tags this -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MULTISAMPLE"]
  val get_HALF_FLOAT: 'tags this -> GLenum.t [@@js.get "HALF_FLOAT"]
  val get_INTERLEAVED_ATTRIBS: 'tags this -> GLenum.t [@@js.get "INTERLEAVED_ATTRIBS"]
  val get_INT_2_10_10_10_REV: 'tags this -> GLenum.t [@@js.get "INT_2_10_10_10_REV"]
  val get_INT_SAMPLER_2D: 'tags this -> GLenum.t [@@js.get "INT_SAMPLER_2D"]
  val get_INT_SAMPLER_2D_ARRAY: 'tags this -> GLenum.t [@@js.get "INT_SAMPLER_2D_ARRAY"]
  val get_INT_SAMPLER_3D: 'tags this -> GLenum.t [@@js.get "INT_SAMPLER_3D"]
  val get_INT_SAMPLER_CUBE: 'tags this -> GLenum.t [@@js.get "INT_SAMPLER_CUBE"]
  val get_INVALID_INDEX: 'tags this -> GLenum.t [@@js.get "INVALID_INDEX"]
  val get_MAX: 'tags this -> GLenum.t [@@js.get "MAX"]
  val get_MAX_3D_TEXTURE_SIZE: 'tags this -> GLenum.t [@@js.get "MAX_3D_TEXTURE_SIZE"]
  val get_MAX_ARRAY_TEXTURE_LAYERS: 'tags this -> GLenum.t [@@js.get "MAX_ARRAY_TEXTURE_LAYERS"]
  val get_MAX_CLIENT_WAIT_TIMEOUT_WEBGL: 'tags this -> GLenum.t [@@js.get "MAX_CLIENT_WAIT_TIMEOUT_WEBGL"]
  val get_MAX_COLOR_ATTACHMENTS: 'tags this -> GLenum.t [@@js.get "MAX_COLOR_ATTACHMENTS"]
  val get_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS"]
  val get_MAX_COMBINED_UNIFORM_BLOCKS: 'tags this -> GLenum.t [@@js.get "MAX_COMBINED_UNIFORM_BLOCKS"]
  val get_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS"]
  val get_MAX_DRAW_BUFFERS: 'tags this -> GLenum.t [@@js.get "MAX_DRAW_BUFFERS"]
  val get_MAX_ELEMENTS_INDICES: 'tags this -> GLenum.t [@@js.get "MAX_ELEMENTS_INDICES"]
  val get_MAX_ELEMENTS_VERTICES: 'tags this -> GLenum.t [@@js.get "MAX_ELEMENTS_VERTICES"]
  val get_MAX_ELEMENT_INDEX: 'tags this -> GLenum.t [@@js.get "MAX_ELEMENT_INDEX"]
  val get_MAX_FRAGMENT_INPUT_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_FRAGMENT_INPUT_COMPONENTS"]
  val get_MAX_FRAGMENT_UNIFORM_BLOCKS: 'tags this -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_BLOCKS"]
  val get_MAX_FRAGMENT_UNIFORM_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_COMPONENTS"]
  val get_MAX_PROGRAM_TEXEL_OFFSET: 'tags this -> GLenum.t [@@js.get "MAX_PROGRAM_TEXEL_OFFSET"]
  val get_MAX_SAMPLES: 'tags this -> GLenum.t [@@js.get "MAX_SAMPLES"]
  val get_MAX_SERVER_WAIT_TIMEOUT: 'tags this -> GLenum.t [@@js.get "MAX_SERVER_WAIT_TIMEOUT"]
  val get_MAX_TEXTURE_LOD_BIAS: 'tags this -> GLenum.t [@@js.get "MAX_TEXTURE_LOD_BIAS"]
  val get_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS"]
  val get_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: 'tags this -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS"]
  val get_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS"]
  val get_MAX_UNIFORM_BLOCK_SIZE: 'tags this -> GLenum.t [@@js.get "MAX_UNIFORM_BLOCK_SIZE"]
  val get_MAX_UNIFORM_BUFFER_BINDINGS: 'tags this -> GLenum.t [@@js.get "MAX_UNIFORM_BUFFER_BINDINGS"]
  val get_MAX_VARYING_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_VARYING_COMPONENTS"]
  val get_MAX_VERTEX_OUTPUT_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_VERTEX_OUTPUT_COMPONENTS"]
  val get_MAX_VERTEX_UNIFORM_BLOCKS: 'tags this -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_BLOCKS"]
  val get_MAX_VERTEX_UNIFORM_COMPONENTS: 'tags this -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_COMPONENTS"]
  val get_MIN: 'tags this -> GLenum.t [@@js.get "MIN"]
  val get_MIN_PROGRAM_TEXEL_OFFSET: 'tags this -> GLenum.t [@@js.get "MIN_PROGRAM_TEXEL_OFFSET"]
  val get_OBJECT_TYPE: 'tags this -> GLenum.t [@@js.get "OBJECT_TYPE"]
  val get_PACK_ROW_LENGTH: 'tags this -> GLenum.t [@@js.get "PACK_ROW_LENGTH"]
  val get_PACK_SKIP_PIXELS: 'tags this -> GLenum.t [@@js.get "PACK_SKIP_PIXELS"]
  val get_PACK_SKIP_ROWS: 'tags this -> GLenum.t [@@js.get "PACK_SKIP_ROWS"]
  val get_PIXEL_PACK_BUFFER: 'tags this -> GLenum.t [@@js.get "PIXEL_PACK_BUFFER"]
  val get_PIXEL_PACK_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "PIXEL_PACK_BUFFER_BINDING"]
  val get_PIXEL_UNPACK_BUFFER: 'tags this -> GLenum.t [@@js.get "PIXEL_UNPACK_BUFFER"]
  val get_PIXEL_UNPACK_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "PIXEL_UNPACK_BUFFER_BINDING"]
  val get_QUERY_RESULT: 'tags this -> GLenum.t [@@js.get "QUERY_RESULT"]
  val get_QUERY_RESULT_AVAILABLE: 'tags this -> GLenum.t [@@js.get "QUERY_RESULT_AVAILABLE"]
  val get_R11F_G11F_B10F: 'tags this -> GLenum.t [@@js.get "R11F_G11F_B10F"]
  val get_R16F: 'tags this -> GLenum.t [@@js.get "R16F"]
  val get_R16I: 'tags this -> GLenum.t [@@js.get "R16I"]
  val get_R16UI: 'tags this -> GLenum.t [@@js.get "R16UI"]
  val get_R32F: 'tags this -> GLenum.t [@@js.get "R32F"]
  val get_R32I: 'tags this -> GLenum.t [@@js.get "R32I"]
  val get_R32UI: 'tags this -> GLenum.t [@@js.get "R32UI"]
  val get_R8: 'tags this -> GLenum.t [@@js.get "R8"]
  val get_R8I: 'tags this -> GLenum.t [@@js.get "R8I"]
  val get_R8UI: 'tags this -> GLenum.t [@@js.get "R8UI"]
  val get_R8_SNORM: 'tags this -> GLenum.t [@@js.get "R8_SNORM"]
  val get_RASTERIZER_DISCARD: 'tags this -> GLenum.t [@@js.get "RASTERIZER_DISCARD"]
  val get_READ_BUFFER: 'tags this -> GLenum.t [@@js.get "READ_BUFFER"]
  val get_READ_FRAMEBUFFER: 'tags this -> GLenum.t [@@js.get "READ_FRAMEBUFFER"]
  val get_READ_FRAMEBUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "READ_FRAMEBUFFER_BINDING"]
  val get_RED: 'tags this -> GLenum.t [@@js.get "RED"]
  val get_RED_INTEGER: 'tags this -> GLenum.t [@@js.get "RED_INTEGER"]
  val get_RENDERBUFFER_SAMPLES: 'tags this -> GLenum.t [@@js.get "RENDERBUFFER_SAMPLES"]
  val get_RG: 'tags this -> GLenum.t [@@js.get "RG"]
  val get_RG16F: 'tags this -> GLenum.t [@@js.get "RG16F"]
  val get_RG16I: 'tags this -> GLenum.t [@@js.get "RG16I"]
  val get_RG16UI: 'tags this -> GLenum.t [@@js.get "RG16UI"]
  val get_RG32F: 'tags this -> GLenum.t [@@js.get "RG32F"]
  val get_RG32I: 'tags this -> GLenum.t [@@js.get "RG32I"]
  val get_RG32UI: 'tags this -> GLenum.t [@@js.get "RG32UI"]
  val get_RG8: 'tags this -> GLenum.t [@@js.get "RG8"]
  val get_RG8I: 'tags this -> GLenum.t [@@js.get "RG8I"]
  val get_RG8UI: 'tags this -> GLenum.t [@@js.get "RG8UI"]
  val get_RG8_SNORM: 'tags this -> GLenum.t [@@js.get "RG8_SNORM"]
  val get_RGB10_A2: 'tags this -> GLenum.t [@@js.get "RGB10_A2"]
  val get_RGB10_A2UI: 'tags this -> GLenum.t [@@js.get "RGB10_A2UI"]
  val get_RGB16F: 'tags this -> GLenum.t [@@js.get "RGB16F"]
  val get_RGB16I: 'tags this -> GLenum.t [@@js.get "RGB16I"]
  val get_RGB16UI: 'tags this -> GLenum.t [@@js.get "RGB16UI"]
  val get_RGB32F: 'tags this -> GLenum.t [@@js.get "RGB32F"]
  val get_RGB32I: 'tags this -> GLenum.t [@@js.get "RGB32I"]
  val get_RGB32UI: 'tags this -> GLenum.t [@@js.get "RGB32UI"]
  val get_RGB8: 'tags this -> GLenum.t [@@js.get "RGB8"]
  val get_RGB8I: 'tags this -> GLenum.t [@@js.get "RGB8I"]
  val get_RGB8UI: 'tags this -> GLenum.t [@@js.get "RGB8UI"]
  val get_RGB8_SNORM: 'tags this -> GLenum.t [@@js.get "RGB8_SNORM"]
  val get_RGB9_E5: 'tags this -> GLenum.t [@@js.get "RGB9_E5"]
  val get_RGBA16F: 'tags this -> GLenum.t [@@js.get "RGBA16F"]
  val get_RGBA16I: 'tags this -> GLenum.t [@@js.get "RGBA16I"]
  val get_RGBA16UI: 'tags this -> GLenum.t [@@js.get "RGBA16UI"]
  val get_RGBA32F: 'tags this -> GLenum.t [@@js.get "RGBA32F"]
  val get_RGBA32I: 'tags this -> GLenum.t [@@js.get "RGBA32I"]
  val get_RGBA32UI: 'tags this -> GLenum.t [@@js.get "RGBA32UI"]
  val get_RGBA8: 'tags this -> GLenum.t [@@js.get "RGBA8"]
  val get_RGBA8I: 'tags this -> GLenum.t [@@js.get "RGBA8I"]
  val get_RGBA8UI: 'tags this -> GLenum.t [@@js.get "RGBA8UI"]
  val get_RGBA8_SNORM: 'tags this -> GLenum.t [@@js.get "RGBA8_SNORM"]
  val get_RGBA_INTEGER: 'tags this -> GLenum.t [@@js.get "RGBA_INTEGER"]
  val get_RGB_INTEGER: 'tags this -> GLenum.t [@@js.get "RGB_INTEGER"]
  val get_RG_INTEGER: 'tags this -> GLenum.t [@@js.get "RG_INTEGER"]
  val get_SAMPLER_2D_ARRAY: 'tags this -> GLenum.t [@@js.get "SAMPLER_2D_ARRAY"]
  val get_SAMPLER_2D_ARRAY_SHADOW: 'tags this -> GLenum.t [@@js.get "SAMPLER_2D_ARRAY_SHADOW"]
  val get_SAMPLER_2D_SHADOW: 'tags this -> GLenum.t [@@js.get "SAMPLER_2D_SHADOW"]
  val get_SAMPLER_3D: 'tags this -> GLenum.t [@@js.get "SAMPLER_3D"]
  val get_SAMPLER_BINDING: 'tags this -> GLenum.t [@@js.get "SAMPLER_BINDING"]
  val get_SAMPLER_CUBE_SHADOW: 'tags this -> GLenum.t [@@js.get "SAMPLER_CUBE_SHADOW"]
  val get_SEPARATE_ATTRIBS: 'tags this -> GLenum.t [@@js.get "SEPARATE_ATTRIBS"]
  val get_SIGNALED: 'tags this -> GLenum.t [@@js.get "SIGNALED"]
  val get_SIGNED_NORMALIZED: 'tags this -> GLenum.t [@@js.get "SIGNED_NORMALIZED"]
  val get_SRGB: 'tags this -> GLenum.t [@@js.get "SRGB"]
  val get_SRGB8: 'tags this -> GLenum.t [@@js.get "SRGB8"]
  val get_SRGB8_ALPHA8: 'tags this -> GLenum.t [@@js.get "SRGB8_ALPHA8"]
  val get_STATIC_COPY: 'tags this -> GLenum.t [@@js.get "STATIC_COPY"]
  val get_STATIC_READ: 'tags this -> GLenum.t [@@js.get "STATIC_READ"]
  val get_STENCIL: 'tags this -> GLenum.t [@@js.get "STENCIL"]
  val get_STREAM_COPY: 'tags this -> GLenum.t [@@js.get "STREAM_COPY"]
  val get_STREAM_READ: 'tags this -> GLenum.t [@@js.get "STREAM_READ"]
  val get_SYNC_CONDITION: 'tags this -> GLenum.t [@@js.get "SYNC_CONDITION"]
  val get_SYNC_FENCE: 'tags this -> GLenum.t [@@js.get "SYNC_FENCE"]
  val get_SYNC_FLAGS: 'tags this -> GLenum.t [@@js.get "SYNC_FLAGS"]
  val get_SYNC_FLUSH_COMMANDS_BIT: 'tags this -> GLenum.t [@@js.get "SYNC_FLUSH_COMMANDS_BIT"]
  val get_SYNC_GPU_COMMANDS_COMPLETE: 'tags this -> GLenum.t [@@js.get "SYNC_GPU_COMMANDS_COMPLETE"]
  val get_SYNC_STATUS: 'tags this -> GLenum.t [@@js.get "SYNC_STATUS"]
  val get_TEXTURE_2D_ARRAY: 'tags this -> GLenum.t [@@js.get "TEXTURE_2D_ARRAY"]
  val get_TEXTURE_3D: 'tags this -> GLenum.t [@@js.get "TEXTURE_3D"]
  val get_TEXTURE_BASE_LEVEL: 'tags this -> GLenum.t [@@js.get "TEXTURE_BASE_LEVEL"]
  val get_TEXTURE_BINDING_2D_ARRAY: 'tags this -> GLenum.t [@@js.get "TEXTURE_BINDING_2D_ARRAY"]
  val get_TEXTURE_BINDING_3D: 'tags this -> GLenum.t [@@js.get "TEXTURE_BINDING_3D"]
  val get_TEXTURE_COMPARE_FUNC: 'tags this -> GLenum.t [@@js.get "TEXTURE_COMPARE_FUNC"]
  val get_TEXTURE_COMPARE_MODE: 'tags this -> GLenum.t [@@js.get "TEXTURE_COMPARE_MODE"]
  val get_TEXTURE_IMMUTABLE_FORMAT: 'tags this -> GLenum.t [@@js.get "TEXTURE_IMMUTABLE_FORMAT"]
  val get_TEXTURE_IMMUTABLE_LEVELS: 'tags this -> GLenum.t [@@js.get "TEXTURE_IMMUTABLE_LEVELS"]
  val get_TEXTURE_MAX_LEVEL: 'tags this -> GLenum.t [@@js.get "TEXTURE_MAX_LEVEL"]
  val get_TEXTURE_MAX_LOD: 'tags this -> GLenum.t [@@js.get "TEXTURE_MAX_LOD"]
  val get_TEXTURE_MIN_LOD: 'tags this -> GLenum.t [@@js.get "TEXTURE_MIN_LOD"]
  val get_TEXTURE_WRAP_R: 'tags this -> GLenum.t [@@js.get "TEXTURE_WRAP_R"]
  val get_TIMEOUT_EXPIRED: 'tags this -> GLenum.t [@@js.get "TIMEOUT_EXPIRED"]
  val get_TIMEOUT_IGNORED: 'tags this -> GLint64.t [@@js.get "TIMEOUT_IGNORED"]
  val get_TRANSFORM_FEEDBACK: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK"]
  val get_TRANSFORM_FEEDBACK_ACTIVE: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_ACTIVE"]
  val get_TRANSFORM_FEEDBACK_BINDING: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BINDING"]
  val get_TRANSFORM_FEEDBACK_BUFFER: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER"]
  val get_TRANSFORM_FEEDBACK_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_BINDING"]
  val get_TRANSFORM_FEEDBACK_BUFFER_MODE: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_MODE"]
  val get_TRANSFORM_FEEDBACK_BUFFER_SIZE: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_SIZE"]
  val get_TRANSFORM_FEEDBACK_BUFFER_START: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_START"]
  val get_TRANSFORM_FEEDBACK_PAUSED: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_PAUSED"]
  val get_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN"]
  val get_TRANSFORM_FEEDBACK_VARYINGS: 'tags this -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_VARYINGS"]
  val get_UNIFORM_ARRAY_STRIDE: 'tags this -> GLenum.t [@@js.get "UNIFORM_ARRAY_STRIDE"]
  val get_UNIFORM_BLOCK_ACTIVE_UNIFORMS: 'tags this -> GLenum.t [@@js.get "UNIFORM_BLOCK_ACTIVE_UNIFORMS"]
  val get_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: 'tags this -> GLenum.t [@@js.get "UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES"]
  val get_UNIFORM_BLOCK_BINDING: 'tags this -> GLenum.t [@@js.get "UNIFORM_BLOCK_BINDING"]
  val get_UNIFORM_BLOCK_DATA_SIZE: 'tags this -> GLenum.t [@@js.get "UNIFORM_BLOCK_DATA_SIZE"]
  val get_UNIFORM_BLOCK_INDEX: 'tags this -> GLenum.t [@@js.get "UNIFORM_BLOCK_INDEX"]
  val get_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: 'tags this -> GLenum.t [@@js.get "UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER"]
  val get_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: 'tags this -> GLenum.t [@@js.get "UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER"]
  val get_UNIFORM_BUFFER: 'tags this -> GLenum.t [@@js.get "UNIFORM_BUFFER"]
  val get_UNIFORM_BUFFER_BINDING: 'tags this -> GLenum.t [@@js.get "UNIFORM_BUFFER_BINDING"]
  val get_UNIFORM_BUFFER_OFFSET_ALIGNMENT: 'tags this -> GLenum.t [@@js.get "UNIFORM_BUFFER_OFFSET_ALIGNMENT"]
  val get_UNIFORM_BUFFER_SIZE: 'tags this -> GLenum.t [@@js.get "UNIFORM_BUFFER_SIZE"]
  val get_UNIFORM_BUFFER_START: 'tags this -> GLenum.t [@@js.get "UNIFORM_BUFFER_START"]
  val get_UNIFORM_IS_ROW_MAJOR: 'tags this -> GLenum.t [@@js.get "UNIFORM_IS_ROW_MAJOR"]
  val get_UNIFORM_MATRIX_STRIDE: 'tags this -> GLenum.t [@@js.get "UNIFORM_MATRIX_STRIDE"]
  val get_UNIFORM_OFFSET: 'tags this -> GLenum.t [@@js.get "UNIFORM_OFFSET"]
  val get_UNIFORM_SIZE: 'tags this -> GLenum.t [@@js.get "UNIFORM_SIZE"]
  val get_UNIFORM_TYPE: 'tags this -> GLenum.t [@@js.get "UNIFORM_TYPE"]
  val get_UNPACK_IMAGE_HEIGHT: 'tags this -> GLenum.t [@@js.get "UNPACK_IMAGE_HEIGHT"]
  val get_UNPACK_ROW_LENGTH: 'tags this -> GLenum.t [@@js.get "UNPACK_ROW_LENGTH"]
  val get_UNPACK_SKIP_IMAGES: 'tags this -> GLenum.t [@@js.get "UNPACK_SKIP_IMAGES"]
  val get_UNPACK_SKIP_PIXELS: 'tags this -> GLenum.t [@@js.get "UNPACK_SKIP_PIXELS"]
  val get_UNPACK_SKIP_ROWS: 'tags this -> GLenum.t [@@js.get "UNPACK_SKIP_ROWS"]
  val get_UNSIGNALED: 'tags this -> GLenum.t [@@js.get "UNSIGNALED"]
  val get_UNSIGNED_INT_10F_11F_11F_REV: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_10F_11F_11F_REV"]
  val get_UNSIGNED_INT_24_8: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_24_8"]
  val get_UNSIGNED_INT_2_10_10_10_REV: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_2_10_10_10_REV"]
  val get_UNSIGNED_INT_5_9_9_9_REV: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_5_9_9_9_REV"]
  val get_UNSIGNED_INT_SAMPLER_2D: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_2D"]
  val get_UNSIGNED_INT_SAMPLER_2D_ARRAY: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_2D_ARRAY"]
  val get_UNSIGNED_INT_SAMPLER_3D: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_3D"]
  val get_UNSIGNED_INT_SAMPLER_CUBE: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_CUBE"]
  val get_UNSIGNED_INT_VEC2: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_VEC2"]
  val get_UNSIGNED_INT_VEC3: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_VEC3"]
  val get_UNSIGNED_INT_VEC4: 'tags this -> GLenum.t [@@js.get "UNSIGNED_INT_VEC4"]
  val get_UNSIGNED_NORMALIZED: 'tags this -> GLenum.t [@@js.get "UNSIGNED_NORMALIZED"]
  val get_VERTEX_ARRAY_BINDING: 'tags this -> GLenum.t [@@js.get "VERTEX_ARRAY_BINDING"]
  val get_VERTEX_ATTRIB_ARRAY_DIVISOR: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_DIVISOR"]
  val get_VERTEX_ATTRIB_ARRAY_INTEGER: 'tags this -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_INTEGER"]
  val get_WAIT_FAILED: 'tags this -> GLenum.t [@@js.get "WAIT_FAILED"]
  val clearBufferfv': 'tags this -> buffer:GLenum.t -> drawbuffer:GLint.t -> values:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> unit -> unit [@@js.call "clearBufferfv"]
  val clearBufferiv': 'tags this -> buffer:GLenum.t -> drawbuffer:GLint.t -> values:GLint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> unit -> unit [@@js.call "clearBufferiv"]
  val clearBufferuiv': 'tags this -> buffer:GLenum.t -> drawbuffer:GLint.t -> values:GLuint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> unit -> unit [@@js.call "clearBufferuiv"]
  val drawBuffers': 'tags this -> buffers:GLenum.t Iterable.t_1 -> unit [@@js.call "drawBuffers"]
  val getActiveUniforms': 'tags this -> program:WebGLProgram.t -> uniformIndices:GLuint.t Iterable.t_1 -> pname:GLenum.t -> any [@@js.call "getActiveUniforms"]
  val getUniformIndices': 'tags this -> program:WebGLProgram.t -> uniformNames:string Iterable.t_1 -> GLuint.t Iterable.t_1 or_null [@@js.call "getUniformIndices"]
  val invalidateFramebuffer': 'tags this -> target:GLenum.t -> attachments:GLenum.t Iterable.t_1 -> unit [@@js.call "invalidateFramebuffer"]
  val invalidateSubFramebuffer': 'tags this -> target:GLenum.t -> attachments:GLenum.t Iterable.t_1 -> x:GLint.t -> y:GLint.t -> width:GLsizei.t -> height:GLsizei.t -> unit [@@js.call "invalidateSubFramebuffer"]
  val transformFeedbackVaryings': 'tags this -> program:WebGLProgram.t -> varyings:string Iterable.t_1 -> bufferMode:GLenum.t -> unit [@@js.call "transformFeedbackVaryings"]
  val uniform1uiv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLuint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform1uiv"]
  val uniform2uiv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLuint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform2uiv"]
  val uniform3uiv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLuint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform3uiv"]
  val uniform4uiv': 'tags this -> location:WebGLUniformLocation.t or_null -> data:GLuint.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniform4uiv"]
  val uniformMatrix2x3fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix2x3fv"]
  val uniformMatrix2x4fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix2x4fv"]
  val uniformMatrix3x2fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix3x2fv"]
  val uniformMatrix3x4fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix3x4fv"]
  val uniformMatrix4x2fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix4x2fv"]
  val uniformMatrix4x3fv': 'tags this -> location:WebGLUniformLocation.t or_null -> transpose:GLboolean.t -> data:GLfloat.t Iterable.t_1 -> ?srcOffset:GLuint.t -> ?srcLength:GLuint.t -> unit -> unit [@@js.call "uniformMatrix4x3fv"]
  val vertexAttribI4iv': 'tags this -> index:GLuint.t -> values:GLint.t Iterable.t_1 -> unit [@@js.call "vertexAttribI4iv"]
  val vertexAttribI4uiv': 'tags this -> index:GLuint.t -> values:GLuint.t Iterable.t_1 -> unit [@@js.call "vertexAttribI4uiv"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface111 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebGL2RenderingContext.t [@@js.get "prototype"]
  val set_prototype: t -> WebGL2RenderingContext.t -> unit [@@js.set "prototype"]
  val create: t -> WebGL2RenderingContext.t [@@js.apply_newable]
  val get_ACTIVE_UNIFORM_BLOCKS: t -> GLenum.t [@@js.get "ACTIVE_UNIFORM_BLOCKS"]
  val get_ALREADY_SIGNALED: t -> GLenum.t [@@js.get "ALREADY_SIGNALED"]
  val get_ANY_SAMPLES_PASSED: t -> GLenum.t [@@js.get "ANY_SAMPLES_PASSED"]
  val get_ANY_SAMPLES_PASSED_CONSERVATIVE: t -> GLenum.t [@@js.get "ANY_SAMPLES_PASSED_CONSERVATIVE"]
  val get_COLOR: t -> GLenum.t [@@js.get "COLOR"]
  val get_COLOR_ATTACHMENT1: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT1"]
  val get_COLOR_ATTACHMENT10: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT10"]
  val get_COLOR_ATTACHMENT11: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT11"]
  val get_COLOR_ATTACHMENT12: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT12"]
  val get_COLOR_ATTACHMENT13: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT13"]
  val get_COLOR_ATTACHMENT14: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT14"]
  val get_COLOR_ATTACHMENT15: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT15"]
  val get_COLOR_ATTACHMENT2: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT2"]
  val get_COLOR_ATTACHMENT3: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT3"]
  val get_COLOR_ATTACHMENT4: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT4"]
  val get_COLOR_ATTACHMENT5: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT5"]
  val get_COLOR_ATTACHMENT6: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT6"]
  val get_COLOR_ATTACHMENT7: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT7"]
  val get_COLOR_ATTACHMENT8: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT8"]
  val get_COLOR_ATTACHMENT9: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT9"]
  val get_COMPARE_REF_TO_TEXTURE: t -> GLenum.t [@@js.get "COMPARE_REF_TO_TEXTURE"]
  val get_CONDITION_SATISFIED: t -> GLenum.t [@@js.get "CONDITION_SATISFIED"]
  val get_COPY_READ_BUFFER: t -> GLenum.t [@@js.get "COPY_READ_BUFFER"]
  val get_COPY_READ_BUFFER_BINDING: t -> GLenum.t [@@js.get "COPY_READ_BUFFER_BINDING"]
  val get_COPY_WRITE_BUFFER: t -> GLenum.t [@@js.get "COPY_WRITE_BUFFER"]
  val get_COPY_WRITE_BUFFER_BINDING: t -> GLenum.t [@@js.get "COPY_WRITE_BUFFER_BINDING"]
  val get_CURRENT_QUERY: t -> GLenum.t [@@js.get "CURRENT_QUERY"]
  val get_DEPTH: t -> GLenum.t [@@js.get "DEPTH"]
  val get_DEPTH24_STENCIL8: t -> GLenum.t [@@js.get "DEPTH24_STENCIL8"]
  val get_DEPTH32F_STENCIL8: t -> GLenum.t [@@js.get "DEPTH32F_STENCIL8"]
  val get_DEPTH_COMPONENT24: t -> GLenum.t [@@js.get "DEPTH_COMPONENT24"]
  val get_DEPTH_COMPONENT32F: t -> GLenum.t [@@js.get "DEPTH_COMPONENT32F"]
  val get_DRAW_BUFFER0: t -> GLenum.t [@@js.get "DRAW_BUFFER0"]
  val get_DRAW_BUFFER1: t -> GLenum.t [@@js.get "DRAW_BUFFER1"]
  val get_DRAW_BUFFER10: t -> GLenum.t [@@js.get "DRAW_BUFFER10"]
  val get_DRAW_BUFFER11: t -> GLenum.t [@@js.get "DRAW_BUFFER11"]
  val get_DRAW_BUFFER12: t -> GLenum.t [@@js.get "DRAW_BUFFER12"]
  val get_DRAW_BUFFER13: t -> GLenum.t [@@js.get "DRAW_BUFFER13"]
  val get_DRAW_BUFFER14: t -> GLenum.t [@@js.get "DRAW_BUFFER14"]
  val get_DRAW_BUFFER15: t -> GLenum.t [@@js.get "DRAW_BUFFER15"]
  val get_DRAW_BUFFER2: t -> GLenum.t [@@js.get "DRAW_BUFFER2"]
  val get_DRAW_BUFFER3: t -> GLenum.t [@@js.get "DRAW_BUFFER3"]
  val get_DRAW_BUFFER4: t -> GLenum.t [@@js.get "DRAW_BUFFER4"]
  val get_DRAW_BUFFER5: t -> GLenum.t [@@js.get "DRAW_BUFFER5"]
  val get_DRAW_BUFFER6: t -> GLenum.t [@@js.get "DRAW_BUFFER6"]
  val get_DRAW_BUFFER7: t -> GLenum.t [@@js.get "DRAW_BUFFER7"]
  val get_DRAW_BUFFER8: t -> GLenum.t [@@js.get "DRAW_BUFFER8"]
  val get_DRAW_BUFFER9: t -> GLenum.t [@@js.get "DRAW_BUFFER9"]
  val get_DRAW_FRAMEBUFFER: t -> GLenum.t [@@js.get "DRAW_FRAMEBUFFER"]
  val get_DRAW_FRAMEBUFFER_BINDING: t -> GLenum.t [@@js.get "DRAW_FRAMEBUFFER_BINDING"]
  val get_DYNAMIC_COPY: t -> GLenum.t [@@js.get "DYNAMIC_COPY"]
  val get_DYNAMIC_READ: t -> GLenum.t [@@js.get "DYNAMIC_READ"]
  val get_FLOAT_32_UNSIGNED_INT_24_8_REV: t -> GLenum.t [@@js.get "FLOAT_32_UNSIGNED_INT_24_8_REV"]
  val get_FLOAT_MAT2x3: t -> GLenum.t [@@js.get "FLOAT_MAT2x3"]
  val get_FLOAT_MAT2x4: t -> GLenum.t [@@js.get "FLOAT_MAT2x4"]
  val get_FLOAT_MAT3x2: t -> GLenum.t [@@js.get "FLOAT_MAT3x2"]
  val get_FLOAT_MAT3x4: t -> GLenum.t [@@js.get "FLOAT_MAT3x4"]
  val get_FLOAT_MAT4x2: t -> GLenum.t [@@js.get "FLOAT_MAT4x2"]
  val get_FLOAT_MAT4x3: t -> GLenum.t [@@js.get "FLOAT_MAT4x3"]
  val get_FRAGMENT_SHADER_DERIVATIVE_HINT: t -> GLenum.t [@@js.get "FRAGMENT_SHADER_DERIVATIVE_HINT"]
  val get_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_BLUE_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING"]
  val get_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE"]
  val get_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_GREEN_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_RED_SIZE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_RED_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER"]
  val get_FRAMEBUFFER_DEFAULT: t -> GLenum.t [@@js.get "FRAMEBUFFER_DEFAULT"]
  val get_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: t -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MULTISAMPLE"]
  val get_HALF_FLOAT: t -> GLenum.t [@@js.get "HALF_FLOAT"]
  val get_INTERLEAVED_ATTRIBS: t -> GLenum.t [@@js.get "INTERLEAVED_ATTRIBS"]
  val get_INT_2_10_10_10_REV: t -> GLenum.t [@@js.get "INT_2_10_10_10_REV"]
  val get_INT_SAMPLER_2D: t -> GLenum.t [@@js.get "INT_SAMPLER_2D"]
  val get_INT_SAMPLER_2D_ARRAY: t -> GLenum.t [@@js.get "INT_SAMPLER_2D_ARRAY"]
  val get_INT_SAMPLER_3D: t -> GLenum.t [@@js.get "INT_SAMPLER_3D"]
  val get_INT_SAMPLER_CUBE: t -> GLenum.t [@@js.get "INT_SAMPLER_CUBE"]
  val get_INVALID_INDEX: t -> GLenum.t [@@js.get "INVALID_INDEX"]
  val get_MAX: t -> GLenum.t [@@js.get "MAX"]
  val get_MAX_3D_TEXTURE_SIZE: t -> GLenum.t [@@js.get "MAX_3D_TEXTURE_SIZE"]
  val get_MAX_ARRAY_TEXTURE_LAYERS: t -> GLenum.t [@@js.get "MAX_ARRAY_TEXTURE_LAYERS"]
  val get_MAX_CLIENT_WAIT_TIMEOUT_WEBGL: t -> GLenum.t [@@js.get "MAX_CLIENT_WAIT_TIMEOUT_WEBGL"]
  val get_MAX_COLOR_ATTACHMENTS: t -> GLenum.t [@@js.get "MAX_COLOR_ATTACHMENTS"]
  val get_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: t -> GLenum.t [@@js.get "MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS"]
  val get_MAX_COMBINED_UNIFORM_BLOCKS: t -> GLenum.t [@@js.get "MAX_COMBINED_UNIFORM_BLOCKS"]
  val get_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: t -> GLenum.t [@@js.get "MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS"]
  val get_MAX_DRAW_BUFFERS: t -> GLenum.t [@@js.get "MAX_DRAW_BUFFERS"]
  val get_MAX_ELEMENTS_INDICES: t -> GLenum.t [@@js.get "MAX_ELEMENTS_INDICES"]
  val get_MAX_ELEMENTS_VERTICES: t -> GLenum.t [@@js.get "MAX_ELEMENTS_VERTICES"]
  val get_MAX_ELEMENT_INDEX: t -> GLenum.t [@@js.get "MAX_ELEMENT_INDEX"]
  val get_MAX_FRAGMENT_INPUT_COMPONENTS: t -> GLenum.t [@@js.get "MAX_FRAGMENT_INPUT_COMPONENTS"]
  val get_MAX_FRAGMENT_UNIFORM_BLOCKS: t -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_BLOCKS"]
  val get_MAX_FRAGMENT_UNIFORM_COMPONENTS: t -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_COMPONENTS"]
  val get_MAX_PROGRAM_TEXEL_OFFSET: t -> GLenum.t [@@js.get "MAX_PROGRAM_TEXEL_OFFSET"]
  val get_MAX_SAMPLES: t -> GLenum.t [@@js.get "MAX_SAMPLES"]
  val get_MAX_SERVER_WAIT_TIMEOUT: t -> GLenum.t [@@js.get "MAX_SERVER_WAIT_TIMEOUT"]
  val get_MAX_TEXTURE_LOD_BIAS: t -> GLenum.t [@@js.get "MAX_TEXTURE_LOD_BIAS"]
  val get_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: t -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS"]
  val get_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: t -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS"]
  val get_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: t -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS"]
  val get_MAX_UNIFORM_BLOCK_SIZE: t -> GLenum.t [@@js.get "MAX_UNIFORM_BLOCK_SIZE"]
  val get_MAX_UNIFORM_BUFFER_BINDINGS: t -> GLenum.t [@@js.get "MAX_UNIFORM_BUFFER_BINDINGS"]
  val get_MAX_VARYING_COMPONENTS: t -> GLenum.t [@@js.get "MAX_VARYING_COMPONENTS"]
  val get_MAX_VERTEX_OUTPUT_COMPONENTS: t -> GLenum.t [@@js.get "MAX_VERTEX_OUTPUT_COMPONENTS"]
  val get_MAX_VERTEX_UNIFORM_BLOCKS: t -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_BLOCKS"]
  val get_MAX_VERTEX_UNIFORM_COMPONENTS: t -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_COMPONENTS"]
  val get_MIN: t -> GLenum.t [@@js.get "MIN"]
  val get_MIN_PROGRAM_TEXEL_OFFSET: t -> GLenum.t [@@js.get "MIN_PROGRAM_TEXEL_OFFSET"]
  val get_OBJECT_TYPE: t -> GLenum.t [@@js.get "OBJECT_TYPE"]
  val get_PACK_ROW_LENGTH: t -> GLenum.t [@@js.get "PACK_ROW_LENGTH"]
  val get_PACK_SKIP_PIXELS: t -> GLenum.t [@@js.get "PACK_SKIP_PIXELS"]
  val get_PACK_SKIP_ROWS: t -> GLenum.t [@@js.get "PACK_SKIP_ROWS"]
  val get_PIXEL_PACK_BUFFER: t -> GLenum.t [@@js.get "PIXEL_PACK_BUFFER"]
  val get_PIXEL_PACK_BUFFER_BINDING: t -> GLenum.t [@@js.get "PIXEL_PACK_BUFFER_BINDING"]
  val get_PIXEL_UNPACK_BUFFER: t -> GLenum.t [@@js.get "PIXEL_UNPACK_BUFFER"]
  val get_PIXEL_UNPACK_BUFFER_BINDING: t -> GLenum.t [@@js.get "PIXEL_UNPACK_BUFFER_BINDING"]
  val get_QUERY_RESULT: t -> GLenum.t [@@js.get "QUERY_RESULT"]
  val get_QUERY_RESULT_AVAILABLE: t -> GLenum.t [@@js.get "QUERY_RESULT_AVAILABLE"]
  val get_R11F_G11F_B10F: t -> GLenum.t [@@js.get "R11F_G11F_B10F"]
  val get_R16F: t -> GLenum.t [@@js.get "R16F"]
  val get_R16I: t -> GLenum.t [@@js.get "R16I"]
  val get_R16UI: t -> GLenum.t [@@js.get "R16UI"]
  val get_R32F: t -> GLenum.t [@@js.get "R32F"]
  val get_R32I: t -> GLenum.t [@@js.get "R32I"]
  val get_R32UI: t -> GLenum.t [@@js.get "R32UI"]
  val get_R8: t -> GLenum.t [@@js.get "R8"]
  val get_R8I: t -> GLenum.t [@@js.get "R8I"]
  val get_R8UI: t -> GLenum.t [@@js.get "R8UI"]
  val get_R8_SNORM: t -> GLenum.t [@@js.get "R8_SNORM"]
  val get_RASTERIZER_DISCARD: t -> GLenum.t [@@js.get "RASTERIZER_DISCARD"]
  val get_READ_BUFFER: t -> GLenum.t [@@js.get "READ_BUFFER"]
  val get_READ_FRAMEBUFFER: t -> GLenum.t [@@js.get "READ_FRAMEBUFFER"]
  val get_READ_FRAMEBUFFER_BINDING: t -> GLenum.t [@@js.get "READ_FRAMEBUFFER_BINDING"]
  val get_RED: t -> GLenum.t [@@js.get "RED"]
  val get_RED_INTEGER: t -> GLenum.t [@@js.get "RED_INTEGER"]
  val get_RENDERBUFFER_SAMPLES: t -> GLenum.t [@@js.get "RENDERBUFFER_SAMPLES"]
  val get_RG: t -> GLenum.t [@@js.get "RG"]
  val get_RG16F: t -> GLenum.t [@@js.get "RG16F"]
  val get_RG16I: t -> GLenum.t [@@js.get "RG16I"]
  val get_RG16UI: t -> GLenum.t [@@js.get "RG16UI"]
  val get_RG32F: t -> GLenum.t [@@js.get "RG32F"]
  val get_RG32I: t -> GLenum.t [@@js.get "RG32I"]
  val get_RG32UI: t -> GLenum.t [@@js.get "RG32UI"]
  val get_RG8: t -> GLenum.t [@@js.get "RG8"]
  val get_RG8I: t -> GLenum.t [@@js.get "RG8I"]
  val get_RG8UI: t -> GLenum.t [@@js.get "RG8UI"]
  val get_RG8_SNORM: t -> GLenum.t [@@js.get "RG8_SNORM"]
  val get_RGB10_A2: t -> GLenum.t [@@js.get "RGB10_A2"]
  val get_RGB10_A2UI: t -> GLenum.t [@@js.get "RGB10_A2UI"]
  val get_RGB16F: t -> GLenum.t [@@js.get "RGB16F"]
  val get_RGB16I: t -> GLenum.t [@@js.get "RGB16I"]
  val get_RGB16UI: t -> GLenum.t [@@js.get "RGB16UI"]
  val get_RGB32F: t -> GLenum.t [@@js.get "RGB32F"]
  val get_RGB32I: t -> GLenum.t [@@js.get "RGB32I"]
  val get_RGB32UI: t -> GLenum.t [@@js.get "RGB32UI"]
  val get_RGB8: t -> GLenum.t [@@js.get "RGB8"]
  val get_RGB8I: t -> GLenum.t [@@js.get "RGB8I"]
  val get_RGB8UI: t -> GLenum.t [@@js.get "RGB8UI"]
  val get_RGB8_SNORM: t -> GLenum.t [@@js.get "RGB8_SNORM"]
  val get_RGB9_E5: t -> GLenum.t [@@js.get "RGB9_E5"]
  val get_RGBA16F: t -> GLenum.t [@@js.get "RGBA16F"]
  val get_RGBA16I: t -> GLenum.t [@@js.get "RGBA16I"]
  val get_RGBA16UI: t -> GLenum.t [@@js.get "RGBA16UI"]
  val get_RGBA32F: t -> GLenum.t [@@js.get "RGBA32F"]
  val get_RGBA32I: t -> GLenum.t [@@js.get "RGBA32I"]
  val get_RGBA32UI: t -> GLenum.t [@@js.get "RGBA32UI"]
  val get_RGBA8: t -> GLenum.t [@@js.get "RGBA8"]
  val get_RGBA8I: t -> GLenum.t [@@js.get "RGBA8I"]
  val get_RGBA8UI: t -> GLenum.t [@@js.get "RGBA8UI"]
  val get_RGBA8_SNORM: t -> GLenum.t [@@js.get "RGBA8_SNORM"]
  val get_RGBA_INTEGER: t -> GLenum.t [@@js.get "RGBA_INTEGER"]
  val get_RGB_INTEGER: t -> GLenum.t [@@js.get "RGB_INTEGER"]
  val get_RG_INTEGER: t -> GLenum.t [@@js.get "RG_INTEGER"]
  val get_SAMPLER_2D_ARRAY: t -> GLenum.t [@@js.get "SAMPLER_2D_ARRAY"]
  val get_SAMPLER_2D_ARRAY_SHADOW: t -> GLenum.t [@@js.get "SAMPLER_2D_ARRAY_SHADOW"]
  val get_SAMPLER_2D_SHADOW: t -> GLenum.t [@@js.get "SAMPLER_2D_SHADOW"]
  val get_SAMPLER_3D: t -> GLenum.t [@@js.get "SAMPLER_3D"]
  val get_SAMPLER_BINDING: t -> GLenum.t [@@js.get "SAMPLER_BINDING"]
  val get_SAMPLER_CUBE_SHADOW: t -> GLenum.t [@@js.get "SAMPLER_CUBE_SHADOW"]
  val get_SEPARATE_ATTRIBS: t -> GLenum.t [@@js.get "SEPARATE_ATTRIBS"]
  val get_SIGNALED: t -> GLenum.t [@@js.get "SIGNALED"]
  val get_SIGNED_NORMALIZED: t -> GLenum.t [@@js.get "SIGNED_NORMALIZED"]
  val get_SRGB: t -> GLenum.t [@@js.get "SRGB"]
  val get_SRGB8: t -> GLenum.t [@@js.get "SRGB8"]
  val get_SRGB8_ALPHA8: t -> GLenum.t [@@js.get "SRGB8_ALPHA8"]
  val get_STATIC_COPY: t -> GLenum.t [@@js.get "STATIC_COPY"]
  val get_STATIC_READ: t -> GLenum.t [@@js.get "STATIC_READ"]
  val get_STENCIL: t -> GLenum.t [@@js.get "STENCIL"]
  val get_STREAM_COPY: t -> GLenum.t [@@js.get "STREAM_COPY"]
  val get_STREAM_READ: t -> GLenum.t [@@js.get "STREAM_READ"]
  val get_SYNC_CONDITION: t -> GLenum.t [@@js.get "SYNC_CONDITION"]
  val get_SYNC_FENCE: t -> GLenum.t [@@js.get "SYNC_FENCE"]
  val get_SYNC_FLAGS: t -> GLenum.t [@@js.get "SYNC_FLAGS"]
  val get_SYNC_FLUSH_COMMANDS_BIT: t -> GLenum.t [@@js.get "SYNC_FLUSH_COMMANDS_BIT"]
  val get_SYNC_GPU_COMMANDS_COMPLETE: t -> GLenum.t [@@js.get "SYNC_GPU_COMMANDS_COMPLETE"]
  val get_SYNC_STATUS: t -> GLenum.t [@@js.get "SYNC_STATUS"]
  val get_TEXTURE_2D_ARRAY: t -> GLenum.t [@@js.get "TEXTURE_2D_ARRAY"]
  val get_TEXTURE_3D: t -> GLenum.t [@@js.get "TEXTURE_3D"]
  val get_TEXTURE_BASE_LEVEL: t -> GLenum.t [@@js.get "TEXTURE_BASE_LEVEL"]
  val get_TEXTURE_BINDING_2D_ARRAY: t -> GLenum.t [@@js.get "TEXTURE_BINDING_2D_ARRAY"]
  val get_TEXTURE_BINDING_3D: t -> GLenum.t [@@js.get "TEXTURE_BINDING_3D"]
  val get_TEXTURE_COMPARE_FUNC: t -> GLenum.t [@@js.get "TEXTURE_COMPARE_FUNC"]
  val get_TEXTURE_COMPARE_MODE: t -> GLenum.t [@@js.get "TEXTURE_COMPARE_MODE"]
  val get_TEXTURE_IMMUTABLE_FORMAT: t -> GLenum.t [@@js.get "TEXTURE_IMMUTABLE_FORMAT"]
  val get_TEXTURE_IMMUTABLE_LEVELS: t -> GLenum.t [@@js.get "TEXTURE_IMMUTABLE_LEVELS"]
  val get_TEXTURE_MAX_LEVEL: t -> GLenum.t [@@js.get "TEXTURE_MAX_LEVEL"]
  val get_TEXTURE_MAX_LOD: t -> GLenum.t [@@js.get "TEXTURE_MAX_LOD"]
  val get_TEXTURE_MIN_LOD: t -> GLenum.t [@@js.get "TEXTURE_MIN_LOD"]
  val get_TEXTURE_WRAP_R: t -> GLenum.t [@@js.get "TEXTURE_WRAP_R"]
  val get_TIMEOUT_EXPIRED: t -> GLenum.t [@@js.get "TIMEOUT_EXPIRED"]
  val get_TIMEOUT_IGNORED: t -> GLint64.t [@@js.get "TIMEOUT_IGNORED"]
  val get_TRANSFORM_FEEDBACK: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK"]
  val get_TRANSFORM_FEEDBACK_ACTIVE: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_ACTIVE"]
  val get_TRANSFORM_FEEDBACK_BINDING: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BINDING"]
  val get_TRANSFORM_FEEDBACK_BUFFER: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER"]
  val get_TRANSFORM_FEEDBACK_BUFFER_BINDING: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_BINDING"]
  val get_TRANSFORM_FEEDBACK_BUFFER_MODE: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_MODE"]
  val get_TRANSFORM_FEEDBACK_BUFFER_SIZE: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_SIZE"]
  val get_TRANSFORM_FEEDBACK_BUFFER_START: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_START"]
  val get_TRANSFORM_FEEDBACK_PAUSED: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_PAUSED"]
  val get_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN"]
  val get_TRANSFORM_FEEDBACK_VARYINGS: t -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_VARYINGS"]
  val get_UNIFORM_ARRAY_STRIDE: t -> GLenum.t [@@js.get "UNIFORM_ARRAY_STRIDE"]
  val get_UNIFORM_BLOCK_ACTIVE_UNIFORMS: t -> GLenum.t [@@js.get "UNIFORM_BLOCK_ACTIVE_UNIFORMS"]
  val get_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: t -> GLenum.t [@@js.get "UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES"]
  val get_UNIFORM_BLOCK_BINDING: t -> GLenum.t [@@js.get "UNIFORM_BLOCK_BINDING"]
  val get_UNIFORM_BLOCK_DATA_SIZE: t -> GLenum.t [@@js.get "UNIFORM_BLOCK_DATA_SIZE"]
  val get_UNIFORM_BLOCK_INDEX: t -> GLenum.t [@@js.get "UNIFORM_BLOCK_INDEX"]
  val get_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: t -> GLenum.t [@@js.get "UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER"]
  val get_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: t -> GLenum.t [@@js.get "UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER"]
  val get_UNIFORM_BUFFER: t -> GLenum.t [@@js.get "UNIFORM_BUFFER"]
  val get_UNIFORM_BUFFER_BINDING: t -> GLenum.t [@@js.get "UNIFORM_BUFFER_BINDING"]
  val get_UNIFORM_BUFFER_OFFSET_ALIGNMENT: t -> GLenum.t [@@js.get "UNIFORM_BUFFER_OFFSET_ALIGNMENT"]
  val get_UNIFORM_BUFFER_SIZE: t -> GLenum.t [@@js.get "UNIFORM_BUFFER_SIZE"]
  val get_UNIFORM_BUFFER_START: t -> GLenum.t [@@js.get "UNIFORM_BUFFER_START"]
  val get_UNIFORM_IS_ROW_MAJOR: t -> GLenum.t [@@js.get "UNIFORM_IS_ROW_MAJOR"]
  val get_UNIFORM_MATRIX_STRIDE: t -> GLenum.t [@@js.get "UNIFORM_MATRIX_STRIDE"]
  val get_UNIFORM_OFFSET: t -> GLenum.t [@@js.get "UNIFORM_OFFSET"]
  val get_UNIFORM_SIZE: t -> GLenum.t [@@js.get "UNIFORM_SIZE"]
  val get_UNIFORM_TYPE: t -> GLenum.t [@@js.get "UNIFORM_TYPE"]
  val get_UNPACK_IMAGE_HEIGHT: t -> GLenum.t [@@js.get "UNPACK_IMAGE_HEIGHT"]
  val get_UNPACK_ROW_LENGTH: t -> GLenum.t [@@js.get "UNPACK_ROW_LENGTH"]
  val get_UNPACK_SKIP_IMAGES: t -> GLenum.t [@@js.get "UNPACK_SKIP_IMAGES"]
  val get_UNPACK_SKIP_PIXELS: t -> GLenum.t [@@js.get "UNPACK_SKIP_PIXELS"]
  val get_UNPACK_SKIP_ROWS: t -> GLenum.t [@@js.get "UNPACK_SKIP_ROWS"]
  val get_UNSIGNALED: t -> GLenum.t [@@js.get "UNSIGNALED"]
  val get_UNSIGNED_INT_10F_11F_11F_REV: t -> GLenum.t [@@js.get "UNSIGNED_INT_10F_11F_11F_REV"]
  val get_UNSIGNED_INT_24_8: t -> GLenum.t [@@js.get "UNSIGNED_INT_24_8"]
  val get_UNSIGNED_INT_2_10_10_10_REV: t -> GLenum.t [@@js.get "UNSIGNED_INT_2_10_10_10_REV"]
  val get_UNSIGNED_INT_5_9_9_9_REV: t -> GLenum.t [@@js.get "UNSIGNED_INT_5_9_9_9_REV"]
  val get_UNSIGNED_INT_SAMPLER_2D: t -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_2D"]
  val get_UNSIGNED_INT_SAMPLER_2D_ARRAY: t -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_2D_ARRAY"]
  val get_UNSIGNED_INT_SAMPLER_3D: t -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_3D"]
  val get_UNSIGNED_INT_SAMPLER_CUBE: t -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_CUBE"]
  val get_UNSIGNED_INT_VEC2: t -> GLenum.t [@@js.get "UNSIGNED_INT_VEC2"]
  val get_UNSIGNED_INT_VEC3: t -> GLenum.t [@@js.get "UNSIGNED_INT_VEC3"]
  val get_UNSIGNED_INT_VEC4: t -> GLenum.t [@@js.get "UNSIGNED_INT_VEC4"]
  val get_UNSIGNED_NORMALIZED: t -> GLenum.t [@@js.get "UNSIGNED_NORMALIZED"]
  val get_VERTEX_ARRAY_BINDING: t -> GLenum.t [@@js.get "VERTEX_ARRAY_BINDING"]
  val get_VERTEX_ATTRIB_ARRAY_DIVISOR: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_DIVISOR"]
  val get_VERTEX_ATTRIB_ARRAY_INTEGER: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_INTEGER"]
  val get_WAIT_FAILED: t -> GLenum.t [@@js.get "WAIT_FAILED"]
  val get_ACTIVE_ATTRIBUTES: t -> GLenum.t [@@js.get "ACTIVE_ATTRIBUTES"]
  val get_ACTIVE_TEXTURE: t -> GLenum.t [@@js.get "ACTIVE_TEXTURE"]
  val get_ACTIVE_UNIFORMS: t -> GLenum.t [@@js.get "ACTIVE_UNIFORMS"]
  val get_ALIASED_LINE_WIDTH_RANGE: t -> GLenum.t [@@js.get "ALIASED_LINE_WIDTH_RANGE"]
  val get_ALIASED_POINT_SIZE_RANGE: t -> GLenum.t [@@js.get "ALIASED_POINT_SIZE_RANGE"]
  val get_ALPHA: t -> GLenum.t [@@js.get "ALPHA"]
  val get_ALPHA_BITS: t -> GLenum.t [@@js.get "ALPHA_BITS"]
  val get_ALWAYS: t -> GLenum.t [@@js.get "ALWAYS"]
  val get_ARRAY_BUFFER: t -> GLenum.t [@@js.get "ARRAY_BUFFER"]
  val get_ARRAY_BUFFER_BINDING: t -> GLenum.t [@@js.get "ARRAY_BUFFER_BINDING"]
  val get_ATTACHED_SHADERS: t -> GLenum.t [@@js.get "ATTACHED_SHADERS"]
  val get_BACK: t -> GLenum.t [@@js.get "BACK"]
  val get_BLEND: t -> GLenum.t [@@js.get "BLEND"]
  val get_BLEND_COLOR: t -> GLenum.t [@@js.get "BLEND_COLOR"]
  val get_BLEND_DST_ALPHA: t -> GLenum.t [@@js.get "BLEND_DST_ALPHA"]
  val get_BLEND_DST_RGB: t -> GLenum.t [@@js.get "BLEND_DST_RGB"]
  val get_BLEND_EQUATION: t -> GLenum.t [@@js.get "BLEND_EQUATION"]
  val get_BLEND_EQUATION_ALPHA: t -> GLenum.t [@@js.get "BLEND_EQUATION_ALPHA"]
  val get_BLEND_EQUATION_RGB: t -> GLenum.t [@@js.get "BLEND_EQUATION_RGB"]
  val get_BLEND_SRC_ALPHA: t -> GLenum.t [@@js.get "BLEND_SRC_ALPHA"]
  val get_BLEND_SRC_RGB: t -> GLenum.t [@@js.get "BLEND_SRC_RGB"]
  val get_BLUE_BITS: t -> GLenum.t [@@js.get "BLUE_BITS"]
  val get_BOOL: t -> GLenum.t [@@js.get "BOOL"]
  val get_BOOL_VEC2: t -> GLenum.t [@@js.get "BOOL_VEC2"]
  val get_BOOL_VEC3: t -> GLenum.t [@@js.get "BOOL_VEC3"]
  val get_BOOL_VEC4: t -> GLenum.t [@@js.get "BOOL_VEC4"]
  val get_BROWSER_DEFAULT_WEBGL: t -> GLenum.t [@@js.get "BROWSER_DEFAULT_WEBGL"]
  val get_BUFFER_SIZE: t -> GLenum.t [@@js.get "BUFFER_SIZE"]
  val get_BUFFER_USAGE: t -> GLenum.t [@@js.get "BUFFER_USAGE"]
  val get_BYTE: t -> GLenum.t [@@js.get "BYTE"]
  val get_CCW: t -> GLenum.t [@@js.get "CCW"]
  val get_CLAMP_TO_EDGE: t -> GLenum.t [@@js.get "CLAMP_TO_EDGE"]
  val get_COLOR_ATTACHMENT0: t -> GLenum.t [@@js.get "COLOR_ATTACHMENT0"]
  val get_COLOR_BUFFER_BIT: t -> GLenum.t [@@js.get "COLOR_BUFFER_BIT"]
  val get_COLOR_CLEAR_VALUE: t -> GLenum.t [@@js.get "COLOR_CLEAR_VALUE"]
  val get_COLOR_WRITEMASK: t -> GLenum.t [@@js.get "COLOR_WRITEMASK"]
  val get_COMPILE_STATUS: t -> GLenum.t [@@js.get "COMPILE_STATUS"]
  val get_COMPRESSED_TEXTURE_FORMATS: t -> GLenum.t [@@js.get "COMPRESSED_TEXTURE_FORMATS"]
  val get_CONSTANT_ALPHA: t -> GLenum.t [@@js.get "CONSTANT_ALPHA"]
  val get_CONSTANT_COLOR: t -> GLenum.t [@@js.get "CONSTANT_COLOR"]
  val get_CONTEXT_LOST_WEBGL: t -> GLenum.t [@@js.get "CONTEXT_LOST_WEBGL"]
  val get_CULL_FACE: t -> GLenum.t [@@js.get "CULL_FACE"]
  val get_CULL_FACE_MODE: t -> GLenum.t [@@js.get "CULL_FACE_MODE"]
  val get_CURRENT_PROGRAM: t -> GLenum.t [@@js.get "CURRENT_PROGRAM"]
  val get_CURRENT_VERTEX_ATTRIB: t -> GLenum.t [@@js.get "CURRENT_VERTEX_ATTRIB"]
  val get_CW: t -> GLenum.t [@@js.get "CW"]
  val get_DECR: t -> GLenum.t [@@js.get "DECR"]
  val get_DECR_WRAP: t -> GLenum.t [@@js.get "DECR_WRAP"]
  val get_DELETE_STATUS: t -> GLenum.t [@@js.get "DELETE_STATUS"]
  val get_DEPTH_ATTACHMENT: t -> GLenum.t [@@js.get "DEPTH_ATTACHMENT"]
  val get_DEPTH_BITS: t -> GLenum.t [@@js.get "DEPTH_BITS"]
  val get_DEPTH_BUFFER_BIT: t -> GLenum.t [@@js.get "DEPTH_BUFFER_BIT"]
  val get_DEPTH_CLEAR_VALUE: t -> GLenum.t [@@js.get "DEPTH_CLEAR_VALUE"]
  val get_DEPTH_COMPONENT: t -> GLenum.t [@@js.get "DEPTH_COMPONENT"]
  val get_DEPTH_COMPONENT16: t -> GLenum.t [@@js.get "DEPTH_COMPONENT16"]
  val get_DEPTH_FUNC: t -> GLenum.t [@@js.get "DEPTH_FUNC"]
  val get_DEPTH_RANGE: t -> GLenum.t [@@js.get "DEPTH_RANGE"]
  val get_DEPTH_STENCIL: t -> GLenum.t [@@js.get "DEPTH_STENCIL"]
  val get_DEPTH_STENCIL_ATTACHMENT: t -> GLenum.t [@@js.get "DEPTH_STENCIL_ATTACHMENT"]
  val get_DEPTH_TEST: t -> GLenum.t [@@js.get "DEPTH_TEST"]
  val get_DEPTH_WRITEMASK: t -> GLenum.t [@@js.get "DEPTH_WRITEMASK"]
  val get_DITHER: t -> GLenum.t [@@js.get "DITHER"]
  val get_DONT_CARE: t -> GLenum.t [@@js.get "DONT_CARE"]
  val get_DST_ALPHA: t -> GLenum.t [@@js.get "DST_ALPHA"]
  val get_DST_COLOR: t -> GLenum.t [@@js.get "DST_COLOR"]
  val get_DYNAMIC_DRAW: t -> GLenum.t [@@js.get "DYNAMIC_DRAW"]
  val get_ELEMENT_ARRAY_BUFFER: t -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER"]
  val get_ELEMENT_ARRAY_BUFFER_BINDING: t -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER_BINDING"]
  val get_EQUAL: t -> GLenum.t [@@js.get "EQUAL"]
  val get_FASTEST: t -> GLenum.t [@@js.get "FASTEST"]
  val get_FLOAT: t -> GLenum.t [@@js.get "FLOAT"]
  val get_FLOAT_MAT2: t -> GLenum.t [@@js.get "FLOAT_MAT2"]
  val get_FLOAT_MAT3: t -> GLenum.t [@@js.get "FLOAT_MAT3"]
  val get_FLOAT_MAT4: t -> GLenum.t [@@js.get "FLOAT_MAT4"]
  val get_FLOAT_VEC2: t -> GLenum.t [@@js.get "FLOAT_VEC2"]
  val get_FLOAT_VEC3: t -> GLenum.t [@@js.get "FLOAT_VEC3"]
  val get_FLOAT_VEC4: t -> GLenum.t [@@js.get "FLOAT_VEC4"]
  val get_FRAGMENT_SHADER: t -> GLenum.t [@@js.get "FRAGMENT_SHADER"]
  val get_FRAMEBUFFER: t -> GLenum.t [@@js.get "FRAMEBUFFER"]
  val get_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_NAME"]
  val get_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE"]
  val get_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: t -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL"]
  val get_FRAMEBUFFER_BINDING: t -> GLenum.t [@@js.get "FRAMEBUFFER_BINDING"]
  val get_FRAMEBUFFER_COMPLETE: t -> GLenum.t [@@js.get "FRAMEBUFFER_COMPLETE"]
  val get_FRAMEBUFFER_INCOMPLETE_ATTACHMENT: t -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_ATTACHMENT"]
  val get_FRAMEBUFFER_INCOMPLETE_DIMENSIONS: t -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"]
  val get_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: t -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"]
  val get_FRAMEBUFFER_UNSUPPORTED: t -> GLenum.t [@@js.get "FRAMEBUFFER_UNSUPPORTED"]
  val get_FRONT: t -> GLenum.t [@@js.get "FRONT"]
  val get_FRONT_AND_BACK: t -> GLenum.t [@@js.get "FRONT_AND_BACK"]
  val get_FRONT_FACE: t -> GLenum.t [@@js.get "FRONT_FACE"]
  val get_FUNC_ADD: t -> GLenum.t [@@js.get "FUNC_ADD"]
  val get_FUNC_REVERSE_SUBTRACT: t -> GLenum.t [@@js.get "FUNC_REVERSE_SUBTRACT"]
  val get_FUNC_SUBTRACT: t -> GLenum.t [@@js.get "FUNC_SUBTRACT"]
  val get_GENERATE_MIPMAP_HINT: t -> GLenum.t [@@js.get "GENERATE_MIPMAP_HINT"]
  val get_GEQUAL: t -> GLenum.t [@@js.get "GEQUAL"]
  val get_GREATER: t -> GLenum.t [@@js.get "GREATER"]
  val get_GREEN_BITS: t -> GLenum.t [@@js.get "GREEN_BITS"]
  val get_HIGH_FLOAT: t -> GLenum.t [@@js.get "HIGH_FLOAT"]
  val get_HIGH_INT: t -> GLenum.t [@@js.get "HIGH_INT"]
  val get_IMPLEMENTATION_COLOR_READ_FORMAT: t -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_FORMAT"]
  val get_IMPLEMENTATION_COLOR_READ_TYPE: t -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_TYPE"]
  val get_INCR: t -> GLenum.t [@@js.get "INCR"]
  val get_INCR_WRAP: t -> GLenum.t [@@js.get "INCR_WRAP"]
  val get_INT: t -> GLenum.t [@@js.get "INT"]
  val get_INT_VEC2: t -> GLenum.t [@@js.get "INT_VEC2"]
  val get_INT_VEC3: t -> GLenum.t [@@js.get "INT_VEC3"]
  val get_INT_VEC4: t -> GLenum.t [@@js.get "INT_VEC4"]
  val get_INVALID_ENUM: t -> GLenum.t [@@js.get "INVALID_ENUM"]
  val get_INVALID_FRAMEBUFFER_OPERATION: t -> GLenum.t [@@js.get "INVALID_FRAMEBUFFER_OPERATION"]
  val get_INVALID_OPERATION: t -> GLenum.t [@@js.get "INVALID_OPERATION"]
  val get_INVALID_VALUE: t -> GLenum.t [@@js.get "INVALID_VALUE"]
  val get_INVERT: t -> GLenum.t [@@js.get "INVERT"]
  val get_KEEP: t -> GLenum.t [@@js.get "KEEP"]
  val get_LEQUAL: t -> GLenum.t [@@js.get "LEQUAL"]
  val get_LESS: t -> GLenum.t [@@js.get "LESS"]
  val get_LINEAR: t -> GLenum.t [@@js.get "LINEAR"]
  val get_LINEAR_MIPMAP_LINEAR: t -> GLenum.t [@@js.get "LINEAR_MIPMAP_LINEAR"]
  val get_LINEAR_MIPMAP_NEAREST: t -> GLenum.t [@@js.get "LINEAR_MIPMAP_NEAREST"]
  val get_LINES: t -> GLenum.t [@@js.get "LINES"]
  val get_LINE_LOOP: t -> GLenum.t [@@js.get "LINE_LOOP"]
  val get_LINE_STRIP: t -> GLenum.t [@@js.get "LINE_STRIP"]
  val get_LINE_WIDTH: t -> GLenum.t [@@js.get "LINE_WIDTH"]
  val get_LINK_STATUS: t -> GLenum.t [@@js.get "LINK_STATUS"]
  val get_LOW_FLOAT: t -> GLenum.t [@@js.get "LOW_FLOAT"]
  val get_LOW_INT: t -> GLenum.t [@@js.get "LOW_INT"]
  val get_LUMINANCE: t -> GLenum.t [@@js.get "LUMINANCE"]
  val get_LUMINANCE_ALPHA: t -> GLenum.t [@@js.get "LUMINANCE_ALPHA"]
  val get_MAX_COMBINED_TEXTURE_IMAGE_UNITS: t -> GLenum.t [@@js.get "MAX_COMBINED_TEXTURE_IMAGE_UNITS"]
  val get_MAX_CUBE_MAP_TEXTURE_SIZE: t -> GLenum.t [@@js.get "MAX_CUBE_MAP_TEXTURE_SIZE"]
  val get_MAX_FRAGMENT_UNIFORM_VECTORS: t -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_VECTORS"]
  val get_MAX_RENDERBUFFER_SIZE: t -> GLenum.t [@@js.get "MAX_RENDERBUFFER_SIZE"]
  val get_MAX_TEXTURE_IMAGE_UNITS: t -> GLenum.t [@@js.get "MAX_TEXTURE_IMAGE_UNITS"]
  val get_MAX_TEXTURE_SIZE: t -> GLenum.t [@@js.get "MAX_TEXTURE_SIZE"]
  val get_MAX_VARYING_VECTORS: t -> GLenum.t [@@js.get "MAX_VARYING_VECTORS"]
  val get_MAX_VERTEX_ATTRIBS: t -> GLenum.t [@@js.get "MAX_VERTEX_ATTRIBS"]
  val get_MAX_VERTEX_TEXTURE_IMAGE_UNITS: t -> GLenum.t [@@js.get "MAX_VERTEX_TEXTURE_IMAGE_UNITS"]
  val get_MAX_VERTEX_UNIFORM_VECTORS: t -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_VECTORS"]
  val get_MAX_VIEWPORT_DIMS: t -> GLenum.t [@@js.get "MAX_VIEWPORT_DIMS"]
  val get_MEDIUM_FLOAT: t -> GLenum.t [@@js.get "MEDIUM_FLOAT"]
  val get_MEDIUM_INT: t -> GLenum.t [@@js.get "MEDIUM_INT"]
  val get_MIRRORED_REPEAT: t -> GLenum.t [@@js.get "MIRRORED_REPEAT"]
  val get_NEAREST: t -> GLenum.t [@@js.get "NEAREST"]
  val get_NEAREST_MIPMAP_LINEAR: t -> GLenum.t [@@js.get "NEAREST_MIPMAP_LINEAR"]
  val get_NEAREST_MIPMAP_NEAREST: t -> GLenum.t [@@js.get "NEAREST_MIPMAP_NEAREST"]
  val get_NEVER: t -> GLenum.t [@@js.get "NEVER"]
  val get_NICEST: t -> GLenum.t [@@js.get "NICEST"]
  val get_NONE: t -> GLenum.t [@@js.get "NONE"]
  val get_NOTEQUAL: t -> GLenum.t [@@js.get "NOTEQUAL"]
  val get_NO_ERROR: t -> GLenum.t [@@js.get "NO_ERROR"]
  val get_ONE: t -> GLenum.t [@@js.get "ONE"]
  val get_ONE_MINUS_CONSTANT_ALPHA: t -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_ALPHA"]
  val get_ONE_MINUS_CONSTANT_COLOR: t -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_COLOR"]
  val get_ONE_MINUS_DST_ALPHA: t -> GLenum.t [@@js.get "ONE_MINUS_DST_ALPHA"]
  val get_ONE_MINUS_DST_COLOR: t -> GLenum.t [@@js.get "ONE_MINUS_DST_COLOR"]
  val get_ONE_MINUS_SRC_ALPHA: t -> GLenum.t [@@js.get "ONE_MINUS_SRC_ALPHA"]
  val get_ONE_MINUS_SRC_COLOR: t -> GLenum.t [@@js.get "ONE_MINUS_SRC_COLOR"]
  val get_OUT_OF_MEMORY: t -> GLenum.t [@@js.get "OUT_OF_MEMORY"]
  val get_PACK_ALIGNMENT: t -> GLenum.t [@@js.get "PACK_ALIGNMENT"]
  val get_POINTS: t -> GLenum.t [@@js.get "POINTS"]
  val get_POLYGON_OFFSET_FACTOR: t -> GLenum.t [@@js.get "POLYGON_OFFSET_FACTOR"]
  val get_POLYGON_OFFSET_FILL: t -> GLenum.t [@@js.get "POLYGON_OFFSET_FILL"]
  val get_POLYGON_OFFSET_UNITS: t -> GLenum.t [@@js.get "POLYGON_OFFSET_UNITS"]
  val get_RED_BITS: t -> GLenum.t [@@js.get "RED_BITS"]
  val get_RENDERBUFFER: t -> GLenum.t [@@js.get "RENDERBUFFER"]
  val get_RENDERBUFFER_ALPHA_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_ALPHA_SIZE"]
  val get_RENDERBUFFER_BINDING: t -> GLenum.t [@@js.get "RENDERBUFFER_BINDING"]
  val get_RENDERBUFFER_BLUE_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_BLUE_SIZE"]
  val get_RENDERBUFFER_DEPTH_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_DEPTH_SIZE"]
  val get_RENDERBUFFER_GREEN_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_GREEN_SIZE"]
  val get_RENDERBUFFER_HEIGHT: t -> GLenum.t [@@js.get "RENDERBUFFER_HEIGHT"]
  val get_RENDERBUFFER_INTERNAL_FORMAT: t -> GLenum.t [@@js.get "RENDERBUFFER_INTERNAL_FORMAT"]
  val get_RENDERBUFFER_RED_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_RED_SIZE"]
  val get_RENDERBUFFER_STENCIL_SIZE: t -> GLenum.t [@@js.get "RENDERBUFFER_STENCIL_SIZE"]
  val get_RENDERBUFFER_WIDTH: t -> GLenum.t [@@js.get "RENDERBUFFER_WIDTH"]
  val get_RENDERER: t -> GLenum.t [@@js.get "RENDERER"]
  val get_REPEAT: t -> GLenum.t [@@js.get "REPEAT"]
  val get_REPLACE: t -> GLenum.t [@@js.get "REPLACE"]
  val get_RGB: t -> GLenum.t [@@js.get "RGB"]
  val get_RGB565: t -> GLenum.t [@@js.get "RGB565"]
  val get_RGB5_A1: t -> GLenum.t [@@js.get "RGB5_A1"]
  val get_RGBA: t -> GLenum.t [@@js.get "RGBA"]
  val get_RGBA4: t -> GLenum.t [@@js.get "RGBA4"]
  val get_SAMPLER_2D: t -> GLenum.t [@@js.get "SAMPLER_2D"]
  val get_SAMPLER_CUBE: t -> GLenum.t [@@js.get "SAMPLER_CUBE"]
  val get_SAMPLES: t -> GLenum.t [@@js.get "SAMPLES"]
  val get_SAMPLE_ALPHA_TO_COVERAGE: t -> GLenum.t [@@js.get "SAMPLE_ALPHA_TO_COVERAGE"]
  val get_SAMPLE_BUFFERS: t -> GLenum.t [@@js.get "SAMPLE_BUFFERS"]
  val get_SAMPLE_COVERAGE: t -> GLenum.t [@@js.get "SAMPLE_COVERAGE"]
  val get_SAMPLE_COVERAGE_INVERT: t -> GLenum.t [@@js.get "SAMPLE_COVERAGE_INVERT"]
  val get_SAMPLE_COVERAGE_VALUE: t -> GLenum.t [@@js.get "SAMPLE_COVERAGE_VALUE"]
  val get_SCISSOR_BOX: t -> GLenum.t [@@js.get "SCISSOR_BOX"]
  val get_SCISSOR_TEST: t -> GLenum.t [@@js.get "SCISSOR_TEST"]
  val get_SHADER_TYPE: t -> GLenum.t [@@js.get "SHADER_TYPE"]
  val get_SHADING_LANGUAGE_VERSION: t -> GLenum.t [@@js.get "SHADING_LANGUAGE_VERSION"]
  val get_SHORT: t -> GLenum.t [@@js.get "SHORT"]
  val get_SRC_ALPHA: t -> GLenum.t [@@js.get "SRC_ALPHA"]
  val get_SRC_ALPHA_SATURATE: t -> GLenum.t [@@js.get "SRC_ALPHA_SATURATE"]
  val get_SRC_COLOR: t -> GLenum.t [@@js.get "SRC_COLOR"]
  val get_STATIC_DRAW: t -> GLenum.t [@@js.get "STATIC_DRAW"]
  val get_STENCIL_ATTACHMENT: t -> GLenum.t [@@js.get "STENCIL_ATTACHMENT"]
  val get_STENCIL_BACK_FAIL: t -> GLenum.t [@@js.get "STENCIL_BACK_FAIL"]
  val get_STENCIL_BACK_FUNC: t -> GLenum.t [@@js.get "STENCIL_BACK_FUNC"]
  val get_STENCIL_BACK_PASS_DEPTH_FAIL: t -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_FAIL"]
  val get_STENCIL_BACK_PASS_DEPTH_PASS: t -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_PASS"]
  val get_STENCIL_BACK_REF: t -> GLenum.t [@@js.get "STENCIL_BACK_REF"]
  val get_STENCIL_BACK_VALUE_MASK: t -> GLenum.t [@@js.get "STENCIL_BACK_VALUE_MASK"]
  val get_STENCIL_BACK_WRITEMASK: t -> GLenum.t [@@js.get "STENCIL_BACK_WRITEMASK"]
  val get_STENCIL_BITS: t -> GLenum.t [@@js.get "STENCIL_BITS"]
  val get_STENCIL_BUFFER_BIT: t -> GLenum.t [@@js.get "STENCIL_BUFFER_BIT"]
  val get_STENCIL_CLEAR_VALUE: t -> GLenum.t [@@js.get "STENCIL_CLEAR_VALUE"]
  val get_STENCIL_FAIL: t -> GLenum.t [@@js.get "STENCIL_FAIL"]
  val get_STENCIL_FUNC: t -> GLenum.t [@@js.get "STENCIL_FUNC"]
  val get_STENCIL_INDEX8: t -> GLenum.t [@@js.get "STENCIL_INDEX8"]
  val get_STENCIL_PASS_DEPTH_FAIL: t -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_FAIL"]
  val get_STENCIL_PASS_DEPTH_PASS: t -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_PASS"]
  val get_STENCIL_REF: t -> GLenum.t [@@js.get "STENCIL_REF"]
  val get_STENCIL_TEST: t -> GLenum.t [@@js.get "STENCIL_TEST"]
  val get_STENCIL_VALUE_MASK: t -> GLenum.t [@@js.get "STENCIL_VALUE_MASK"]
  val get_STENCIL_WRITEMASK: t -> GLenum.t [@@js.get "STENCIL_WRITEMASK"]
  val get_STREAM_DRAW: t -> GLenum.t [@@js.get "STREAM_DRAW"]
  val get_SUBPIXEL_BITS: t -> GLenum.t [@@js.get "SUBPIXEL_BITS"]
  val get_TEXTURE: t -> GLenum.t [@@js.get "TEXTURE"]
  val get_TEXTURE0: t -> GLenum.t [@@js.get "TEXTURE0"]
  val get_TEXTURE1: t -> GLenum.t [@@js.get "TEXTURE1"]
  val get_TEXTURE10: t -> GLenum.t [@@js.get "TEXTURE10"]
  val get_TEXTURE11: t -> GLenum.t [@@js.get "TEXTURE11"]
  val get_TEXTURE12: t -> GLenum.t [@@js.get "TEXTURE12"]
  val get_TEXTURE13: t -> GLenum.t [@@js.get "TEXTURE13"]
  val get_TEXTURE14: t -> GLenum.t [@@js.get "TEXTURE14"]
  val get_TEXTURE15: t -> GLenum.t [@@js.get "TEXTURE15"]
  val get_TEXTURE16: t -> GLenum.t [@@js.get "TEXTURE16"]
  val get_TEXTURE17: t -> GLenum.t [@@js.get "TEXTURE17"]
  val get_TEXTURE18: t -> GLenum.t [@@js.get "TEXTURE18"]
  val get_TEXTURE19: t -> GLenum.t [@@js.get "TEXTURE19"]
  val get_TEXTURE2: t -> GLenum.t [@@js.get "TEXTURE2"]
  val get_TEXTURE20: t -> GLenum.t [@@js.get "TEXTURE20"]
  val get_TEXTURE21: t -> GLenum.t [@@js.get "TEXTURE21"]
  val get_TEXTURE22: t -> GLenum.t [@@js.get "TEXTURE22"]
  val get_TEXTURE23: t -> GLenum.t [@@js.get "TEXTURE23"]
  val get_TEXTURE24: t -> GLenum.t [@@js.get "TEXTURE24"]
  val get_TEXTURE25: t -> GLenum.t [@@js.get "TEXTURE25"]
  val get_TEXTURE26: t -> GLenum.t [@@js.get "TEXTURE26"]
  val get_TEXTURE27: t -> GLenum.t [@@js.get "TEXTURE27"]
  val get_TEXTURE28: t -> GLenum.t [@@js.get "TEXTURE28"]
  val get_TEXTURE29: t -> GLenum.t [@@js.get "TEXTURE29"]
  val get_TEXTURE3: t -> GLenum.t [@@js.get "TEXTURE3"]
  val get_TEXTURE30: t -> GLenum.t [@@js.get "TEXTURE30"]
  val get_TEXTURE31: t -> GLenum.t [@@js.get "TEXTURE31"]
  val get_TEXTURE4: t -> GLenum.t [@@js.get "TEXTURE4"]
  val get_TEXTURE5: t -> GLenum.t [@@js.get "TEXTURE5"]
  val get_TEXTURE6: t -> GLenum.t [@@js.get "TEXTURE6"]
  val get_TEXTURE7: t -> GLenum.t [@@js.get "TEXTURE7"]
  val get_TEXTURE8: t -> GLenum.t [@@js.get "TEXTURE8"]
  val get_TEXTURE9: t -> GLenum.t [@@js.get "TEXTURE9"]
  val get_TEXTURE_2D: t -> GLenum.t [@@js.get "TEXTURE_2D"]
  val get_TEXTURE_BINDING_2D: t -> GLenum.t [@@js.get "TEXTURE_BINDING_2D"]
  val get_TEXTURE_BINDING_CUBE_MAP: t -> GLenum.t [@@js.get "TEXTURE_BINDING_CUBE_MAP"]
  val get_TEXTURE_CUBE_MAP: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_X: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_X"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_Y: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Y"]
  val get_TEXTURE_CUBE_MAP_NEGATIVE_Z: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Z"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_X: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_X"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_Y: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Y"]
  val get_TEXTURE_CUBE_MAP_POSITIVE_Z: t -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Z"]
  val get_TEXTURE_MAG_FILTER: t -> GLenum.t [@@js.get "TEXTURE_MAG_FILTER"]
  val get_TEXTURE_MIN_FILTER: t -> GLenum.t [@@js.get "TEXTURE_MIN_FILTER"]
  val get_TEXTURE_WRAP_S: t -> GLenum.t [@@js.get "TEXTURE_WRAP_S"]
  val get_TEXTURE_WRAP_T: t -> GLenum.t [@@js.get "TEXTURE_WRAP_T"]
  val get_TRIANGLES: t -> GLenum.t [@@js.get "TRIANGLES"]
  val get_TRIANGLE_FAN: t -> GLenum.t [@@js.get "TRIANGLE_FAN"]
  val get_TRIANGLE_STRIP: t -> GLenum.t [@@js.get "TRIANGLE_STRIP"]
  val get_UNPACK_ALIGNMENT: t -> GLenum.t [@@js.get "UNPACK_ALIGNMENT"]
  val get_UNPACK_COLORSPACE_CONVERSION_WEBGL: t -> GLenum.t [@@js.get "UNPACK_COLORSPACE_CONVERSION_WEBGL"]
  val get_UNPACK_FLIP_Y_WEBGL: t -> GLenum.t [@@js.get "UNPACK_FLIP_Y_WEBGL"]
  val get_UNPACK_PREMULTIPLY_ALPHA_WEBGL: t -> GLenum.t [@@js.get "UNPACK_PREMULTIPLY_ALPHA_WEBGL"]
  val get_UNSIGNED_BYTE: t -> GLenum.t [@@js.get "UNSIGNED_BYTE"]
  val get_UNSIGNED_INT: t -> GLenum.t [@@js.get "UNSIGNED_INT"]
  val get_UNSIGNED_SHORT: t -> GLenum.t [@@js.get "UNSIGNED_SHORT"]
  val get_UNSIGNED_SHORT_4_4_4_4: t -> GLenum.t [@@js.get "UNSIGNED_SHORT_4_4_4_4"]
  val get_UNSIGNED_SHORT_5_5_5_1: t -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_5_5_1"]
  val get_UNSIGNED_SHORT_5_6_5: t -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_6_5"]
  val get_VALIDATE_STATUS: t -> GLenum.t [@@js.get "VALIDATE_STATUS"]
  val get_VENDOR: t -> GLenum.t [@@js.get "VENDOR"]
  val get_VERSION: t -> GLenum.t [@@js.get "VERSION"]
  val get_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_BUFFER_BINDING"]
  val get_VERTEX_ATTRIB_ARRAY_ENABLED: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_ENABLED"]
  val get_VERTEX_ATTRIB_ARRAY_NORMALIZED: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_NORMALIZED"]
  val get_VERTEX_ATTRIB_ARRAY_POINTER: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_POINTER"]
  val get_VERTEX_ATTRIB_ARRAY_SIZE: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_SIZE"]
  val get_VERTEX_ATTRIB_ARRAY_STRIDE: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_STRIDE"]
  val get_VERTEX_ATTRIB_ARRAY_TYPE: t -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_TYPE"]
  val get_VERTEX_SHADER: t -> GLenum.t [@@js.get "VERTEX_SHADER"]
  val get_VIEWPORT: t -> GLenum.t [@@js.get "VIEWPORT"]
  val get_ZERO: t -> GLenum.t [@@js.get "ZERO"]
end
and[@js.scope "WebGL2RenderingContext"] WebGL2RenderingContext : sig
  type t = [`WebGL2RenderingContext | `WebGL2RenderingContextBase | `WebGL2RenderingContextOverloads | `WebGLRenderingContextBase] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`WebGL2RenderingContext | `WebGL2RenderingContextBase | `WebGL2RenderingContextOverloads | `WebGLRenderingContextBase]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`WebGL2RenderingContext | `WebGL2RenderingContextBase | `WebGL2RenderingContextOverloads | `WebGLRenderingContextBase]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `WebGL2RenderingContext ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
  val active_uniform_blocks: unit -> GLenum.t [@@js.get "ACTIVE_UNIFORM_BLOCKS"]
  val already_signaled: unit -> GLenum.t [@@js.get "ALREADY_SIGNALED"]
  val any_samples_passed: unit -> GLenum.t [@@js.get "ANY_SAMPLES_PASSED"]
  val any_samples_passed_conservative: unit -> GLenum.t [@@js.get "ANY_SAMPLES_PASSED_CONSERVATIVE"]
  val color: unit -> GLenum.t [@@js.get "COLOR"]
  val color_attachment1: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT1"]
  val color_attachment10: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT10"]
  val color_attachment11: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT11"]
  val color_attachment12: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT12"]
  val color_attachment13: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT13"]
  val color_attachment14: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT14"]
  val color_attachment15: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT15"]
  val color_attachment2: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT2"]
  val color_attachment3: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT3"]
  val color_attachment4: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT4"]
  val color_attachment5: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT5"]
  val color_attachment6: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT6"]
  val color_attachment7: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT7"]
  val color_attachment8: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT8"]
  val color_attachment9: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT9"]
  val compare_ref_to_texture: unit -> GLenum.t [@@js.get "COMPARE_REF_TO_TEXTURE"]
  val condition_satisfied: unit -> GLenum.t [@@js.get "CONDITION_SATISFIED"]
  val copy_read_buffer: unit -> GLenum.t [@@js.get "COPY_READ_BUFFER"]
  val copy_read_buffer_binding: unit -> GLenum.t [@@js.get "COPY_READ_BUFFER_BINDING"]
  val copy_write_buffer: unit -> GLenum.t [@@js.get "COPY_WRITE_BUFFER"]
  val copy_write_buffer_binding: unit -> GLenum.t [@@js.get "COPY_WRITE_BUFFER_BINDING"]
  val current_query: unit -> GLenum.t [@@js.get "CURRENT_QUERY"]
  val depth: unit -> GLenum.t [@@js.get "DEPTH"]
  val depth24_stencil8: unit -> GLenum.t [@@js.get "DEPTH24_STENCIL8"]
  val depth32f_stencil8: unit -> GLenum.t [@@js.get "DEPTH32F_STENCIL8"]
  val depth_component24: unit -> GLenum.t [@@js.get "DEPTH_COMPONENT24"]
  val depth_component32f: unit -> GLenum.t [@@js.get "DEPTH_COMPONENT32F"]
  val draw_buffer0: unit -> GLenum.t [@@js.get "DRAW_BUFFER0"]
  val draw_buffer1: unit -> GLenum.t [@@js.get "DRAW_BUFFER1"]
  val draw_buffer10: unit -> GLenum.t [@@js.get "DRAW_BUFFER10"]
  val draw_buffer11: unit -> GLenum.t [@@js.get "DRAW_BUFFER11"]
  val draw_buffer12: unit -> GLenum.t [@@js.get "DRAW_BUFFER12"]
  val draw_buffer13: unit -> GLenum.t [@@js.get "DRAW_BUFFER13"]
  val draw_buffer14: unit -> GLenum.t [@@js.get "DRAW_BUFFER14"]
  val draw_buffer15: unit -> GLenum.t [@@js.get "DRAW_BUFFER15"]
  val draw_buffer2: unit -> GLenum.t [@@js.get "DRAW_BUFFER2"]
  val draw_buffer3: unit -> GLenum.t [@@js.get "DRAW_BUFFER3"]
  val draw_buffer4: unit -> GLenum.t [@@js.get "DRAW_BUFFER4"]
  val draw_buffer5: unit -> GLenum.t [@@js.get "DRAW_BUFFER5"]
  val draw_buffer6: unit -> GLenum.t [@@js.get "DRAW_BUFFER6"]
  val draw_buffer7: unit -> GLenum.t [@@js.get "DRAW_BUFFER7"]
  val draw_buffer8: unit -> GLenum.t [@@js.get "DRAW_BUFFER8"]
  val draw_buffer9: unit -> GLenum.t [@@js.get "DRAW_BUFFER9"]
  val draw_framebuffer: unit -> GLenum.t [@@js.get "DRAW_FRAMEBUFFER"]
  val draw_framebuffer_binding: unit -> GLenum.t [@@js.get "DRAW_FRAMEBUFFER_BINDING"]
  val dynamic_copy: unit -> GLenum.t [@@js.get "DYNAMIC_COPY"]
  val dynamic_read: unit -> GLenum.t [@@js.get "DYNAMIC_READ"]
  val float_32_unsigned_int_24_8_rev: unit -> GLenum.t [@@js.get "FLOAT_32_UNSIGNED_INT_24_8_REV"]
  val fLOAT_MAT2x3: unit -> GLenum.t [@@js.get "FLOAT_MAT2x3"]
  val fLOAT_MAT2x4: unit -> GLenum.t [@@js.get "FLOAT_MAT2x4"]
  val fLOAT_MAT3x2: unit -> GLenum.t [@@js.get "FLOAT_MAT3x2"]
  val fLOAT_MAT3x4: unit -> GLenum.t [@@js.get "FLOAT_MAT3x4"]
  val fLOAT_MAT4x2: unit -> GLenum.t [@@js.get "FLOAT_MAT4x2"]
  val fLOAT_MAT4x3: unit -> GLenum.t [@@js.get "FLOAT_MAT4x3"]
  val fragment_shader_derivative_hint: unit -> GLenum.t [@@js.get "FRAGMENT_SHADER_DERIVATIVE_HINT"]
  val framebuffer_attachment_alpha_size: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE"]
  val framebuffer_attachment_blue_size: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_BLUE_SIZE"]
  val framebuffer_attachment_color_encoding: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING"]
  val framebuffer_attachment_component_type: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE"]
  val framebuffer_attachment_depth_size: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE"]
  val framebuffer_attachment_green_size: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_GREEN_SIZE"]
  val framebuffer_attachment_red_size: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_RED_SIZE"]
  val framebuffer_attachment_stencil_size: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE"]
  val framebuffer_attachment_texture_layer: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER"]
  val framebuffer_default: unit -> GLenum.t [@@js.get "FRAMEBUFFER_DEFAULT"]
  val framebuffer_incomplete_multisample: unit -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MULTISAMPLE"]
  val half_float: unit -> GLenum.t [@@js.get "HALF_FLOAT"]
  val interleaved_attribs: unit -> GLenum.t [@@js.get "INTERLEAVED_ATTRIBS"]
  val int_2_10_10_10_rev: unit -> GLenum.t [@@js.get "INT_2_10_10_10_REV"]
  val int_sampler_2d: unit -> GLenum.t [@@js.get "INT_SAMPLER_2D"]
  val int_sampler_2d_array: unit -> GLenum.t [@@js.get "INT_SAMPLER_2D_ARRAY"]
  val int_sampler_3d: unit -> GLenum.t [@@js.get "INT_SAMPLER_3D"]
  val int_sampler_cube: unit -> GLenum.t [@@js.get "INT_SAMPLER_CUBE"]
  val invalid_index: unit -> GLenum.t [@@js.get "INVALID_INDEX"]
  val max: unit -> GLenum.t [@@js.get "MAX"]
  val max_3d_texture_size: unit -> GLenum.t [@@js.get "MAX_3D_TEXTURE_SIZE"]
  val max_array_texture_layers: unit -> GLenum.t [@@js.get "MAX_ARRAY_TEXTURE_LAYERS"]
  val max_client_wait_timeout_webgl: unit -> GLenum.t [@@js.get "MAX_CLIENT_WAIT_TIMEOUT_WEBGL"]
  val max_color_attachments: unit -> GLenum.t [@@js.get "MAX_COLOR_ATTACHMENTS"]
  val max_combined_fragment_uniform_components: unit -> GLenum.t [@@js.get "MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS"]
  val max_combined_uniform_blocks: unit -> GLenum.t [@@js.get "MAX_COMBINED_UNIFORM_BLOCKS"]
  val max_combined_vertex_uniform_components: unit -> GLenum.t [@@js.get "MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS"]
  val max_draw_buffers: unit -> GLenum.t [@@js.get "MAX_DRAW_BUFFERS"]
  val max_elements_indices: unit -> GLenum.t [@@js.get "MAX_ELEMENTS_INDICES"]
  val max_elements_vertices: unit -> GLenum.t [@@js.get "MAX_ELEMENTS_VERTICES"]
  val max_element_index: unit -> GLenum.t [@@js.get "MAX_ELEMENT_INDEX"]
  val max_fragment_input_components: unit -> GLenum.t [@@js.get "MAX_FRAGMENT_INPUT_COMPONENTS"]
  val max_fragment_uniform_blocks: unit -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_BLOCKS"]
  val max_fragment_uniform_components: unit -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_COMPONENTS"]
  val max_program_texel_offset: unit -> GLenum.t [@@js.get "MAX_PROGRAM_TEXEL_OFFSET"]
  val max_samples: unit -> GLenum.t [@@js.get "MAX_SAMPLES"]
  val max_server_wait_timeout: unit -> GLenum.t [@@js.get "MAX_SERVER_WAIT_TIMEOUT"]
  val max_texture_lod_bias: unit -> GLenum.t [@@js.get "MAX_TEXTURE_LOD_BIAS"]
  val max_transform_feedback_interleaved_components: unit -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS"]
  val max_transform_feedback_separate_attribs: unit -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS"]
  val max_transform_feedback_separate_components: unit -> GLenum.t [@@js.get "MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS"]
  val max_uniform_block_size: unit -> GLenum.t [@@js.get "MAX_UNIFORM_BLOCK_SIZE"]
  val max_uniform_buffer_bindings: unit -> GLenum.t [@@js.get "MAX_UNIFORM_BUFFER_BINDINGS"]
  val max_varying_components: unit -> GLenum.t [@@js.get "MAX_VARYING_COMPONENTS"]
  val max_vertex_output_components: unit -> GLenum.t [@@js.get "MAX_VERTEX_OUTPUT_COMPONENTS"]
  val max_vertex_uniform_blocks: unit -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_BLOCKS"]
  val max_vertex_uniform_components: unit -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_COMPONENTS"]
  val min: unit -> GLenum.t [@@js.get "MIN"]
  val min_program_texel_offset: unit -> GLenum.t [@@js.get "MIN_PROGRAM_TEXEL_OFFSET"]
  val object_type: unit -> GLenum.t [@@js.get "OBJECT_TYPE"]
  val pack_row_length: unit -> GLenum.t [@@js.get "PACK_ROW_LENGTH"]
  val pack_skip_pixels: unit -> GLenum.t [@@js.get "PACK_SKIP_PIXELS"]
  val pack_skip_rows: unit -> GLenum.t [@@js.get "PACK_SKIP_ROWS"]
  val pixel_pack_buffer: unit -> GLenum.t [@@js.get "PIXEL_PACK_BUFFER"]
  val pixel_pack_buffer_binding: unit -> GLenum.t [@@js.get "PIXEL_PACK_BUFFER_BINDING"]
  val pixel_unpack_buffer: unit -> GLenum.t [@@js.get "PIXEL_UNPACK_BUFFER"]
  val pixel_unpack_buffer_binding: unit -> GLenum.t [@@js.get "PIXEL_UNPACK_BUFFER_BINDING"]
  val query_result: unit -> GLenum.t [@@js.get "QUERY_RESULT"]
  val query_result_available: unit -> GLenum.t [@@js.get "QUERY_RESULT_AVAILABLE"]
  val r11f_g11f_b10f: unit -> GLenum.t [@@js.get "R11F_G11F_B10F"]
  val r16f: unit -> GLenum.t [@@js.get "R16F"]
  val r16i: unit -> GLenum.t [@@js.get "R16I"]
  val r16ui: unit -> GLenum.t [@@js.get "R16UI"]
  val r32f: unit -> GLenum.t [@@js.get "R32F"]
  val r32i: unit -> GLenum.t [@@js.get "R32I"]
  val r32ui: unit -> GLenum.t [@@js.get "R32UI"]
  val r8: unit -> GLenum.t [@@js.get "R8"]
  val r8i: unit -> GLenum.t [@@js.get "R8I"]
  val r8ui: unit -> GLenum.t [@@js.get "R8UI"]
  val r8_snorm: unit -> GLenum.t [@@js.get "R8_SNORM"]
  val rasterizer_discard: unit -> GLenum.t [@@js.get "RASTERIZER_DISCARD"]
  val read_buffer: unit -> GLenum.t [@@js.get "READ_BUFFER"]
  val read_framebuffer: unit -> GLenum.t [@@js.get "READ_FRAMEBUFFER"]
  val read_framebuffer_binding: unit -> GLenum.t [@@js.get "READ_FRAMEBUFFER_BINDING"]
  val red: unit -> GLenum.t [@@js.get "RED"]
  val red_integer: unit -> GLenum.t [@@js.get "RED_INTEGER"]
  val renderbuffer_samples: unit -> GLenum.t [@@js.get "RENDERBUFFER_SAMPLES"]
  val rg: unit -> GLenum.t [@@js.get "RG"]
  val rg16f: unit -> GLenum.t [@@js.get "RG16F"]
  val rg16i: unit -> GLenum.t [@@js.get "RG16I"]
  val rg16ui: unit -> GLenum.t [@@js.get "RG16UI"]
  val rg32f: unit -> GLenum.t [@@js.get "RG32F"]
  val rg32i: unit -> GLenum.t [@@js.get "RG32I"]
  val rg32ui: unit -> GLenum.t [@@js.get "RG32UI"]
  val rg8: unit -> GLenum.t [@@js.get "RG8"]
  val rg8i: unit -> GLenum.t [@@js.get "RG8I"]
  val rg8ui: unit -> GLenum.t [@@js.get "RG8UI"]
  val rg8_snorm: unit -> GLenum.t [@@js.get "RG8_SNORM"]
  val rgb10_a2: unit -> GLenum.t [@@js.get "RGB10_A2"]
  val rgb10_a2ui: unit -> GLenum.t [@@js.get "RGB10_A2UI"]
  val rgb16f: unit -> GLenum.t [@@js.get "RGB16F"]
  val rgb16i: unit -> GLenum.t [@@js.get "RGB16I"]
  val rgb16ui: unit -> GLenum.t [@@js.get "RGB16UI"]
  val rgb32f: unit -> GLenum.t [@@js.get "RGB32F"]
  val rgb32i: unit -> GLenum.t [@@js.get "RGB32I"]
  val rgb32ui: unit -> GLenum.t [@@js.get "RGB32UI"]
  val rgb8: unit -> GLenum.t [@@js.get "RGB8"]
  val rgb8i: unit -> GLenum.t [@@js.get "RGB8I"]
  val rgb8ui: unit -> GLenum.t [@@js.get "RGB8UI"]
  val rgb8_snorm: unit -> GLenum.t [@@js.get "RGB8_SNORM"]
  val rgb9_e5: unit -> GLenum.t [@@js.get "RGB9_E5"]
  val rgba16f: unit -> GLenum.t [@@js.get "RGBA16F"]
  val rgba16i: unit -> GLenum.t [@@js.get "RGBA16I"]
  val rgba16ui: unit -> GLenum.t [@@js.get "RGBA16UI"]
  val rgba32f: unit -> GLenum.t [@@js.get "RGBA32F"]
  val rgba32i: unit -> GLenum.t [@@js.get "RGBA32I"]
  val rgba32ui: unit -> GLenum.t [@@js.get "RGBA32UI"]
  val rgba8: unit -> GLenum.t [@@js.get "RGBA8"]
  val rgba8i: unit -> GLenum.t [@@js.get "RGBA8I"]
  val rgba8ui: unit -> GLenum.t [@@js.get "RGBA8UI"]
  val rgba8_snorm: unit -> GLenum.t [@@js.get "RGBA8_SNORM"]
  val rgba_integer: unit -> GLenum.t [@@js.get "RGBA_INTEGER"]
  val rgb_integer: unit -> GLenum.t [@@js.get "RGB_INTEGER"]
  val rg_integer: unit -> GLenum.t [@@js.get "RG_INTEGER"]
  val sampler_2d_array: unit -> GLenum.t [@@js.get "SAMPLER_2D_ARRAY"]
  val sampler_2d_array_shadow: unit -> GLenum.t [@@js.get "SAMPLER_2D_ARRAY_SHADOW"]
  val sampler_2d_shadow: unit -> GLenum.t [@@js.get "SAMPLER_2D_SHADOW"]
  val sampler_3d: unit -> GLenum.t [@@js.get "SAMPLER_3D"]
  val sampler_binding: unit -> GLenum.t [@@js.get "SAMPLER_BINDING"]
  val sampler_cube_shadow: unit -> GLenum.t [@@js.get "SAMPLER_CUBE_SHADOW"]
  val separate_attribs: unit -> GLenum.t [@@js.get "SEPARATE_ATTRIBS"]
  val signaled: unit -> GLenum.t [@@js.get "SIGNALED"]
  val signed_normalized: unit -> GLenum.t [@@js.get "SIGNED_NORMALIZED"]
  val srgb: unit -> GLenum.t [@@js.get "SRGB"]
  val srgb8: unit -> GLenum.t [@@js.get "SRGB8"]
  val srgb8_alpha8: unit -> GLenum.t [@@js.get "SRGB8_ALPHA8"]
  val static_copy: unit -> GLenum.t [@@js.get "STATIC_COPY"]
  val static_read: unit -> GLenum.t [@@js.get "STATIC_READ"]
  val stencil: unit -> GLenum.t [@@js.get "STENCIL"]
  val stream_copy: unit -> GLenum.t [@@js.get "STREAM_COPY"]
  val stream_read: unit -> GLenum.t [@@js.get "STREAM_READ"]
  val sync_condition: unit -> GLenum.t [@@js.get "SYNC_CONDITION"]
  val sync_fence: unit -> GLenum.t [@@js.get "SYNC_FENCE"]
  val sync_flags: unit -> GLenum.t [@@js.get "SYNC_FLAGS"]
  val sync_flush_commands_bit: unit -> GLenum.t [@@js.get "SYNC_FLUSH_COMMANDS_BIT"]
  val sync_gpu_commands_complete: unit -> GLenum.t [@@js.get "SYNC_GPU_COMMANDS_COMPLETE"]
  val sync_status: unit -> GLenum.t [@@js.get "SYNC_STATUS"]
  val texture_2d_array: unit -> GLenum.t [@@js.get "TEXTURE_2D_ARRAY"]
  val texture_3d: unit -> GLenum.t [@@js.get "TEXTURE_3D"]
  val texture_base_level: unit -> GLenum.t [@@js.get "TEXTURE_BASE_LEVEL"]
  val texture_binding_2d_array: unit -> GLenum.t [@@js.get "TEXTURE_BINDING_2D_ARRAY"]
  val texture_binding_3d: unit -> GLenum.t [@@js.get "TEXTURE_BINDING_3D"]
  val texture_compare_func: unit -> GLenum.t [@@js.get "TEXTURE_COMPARE_FUNC"]
  val texture_compare_mode: unit -> GLenum.t [@@js.get "TEXTURE_COMPARE_MODE"]
  val texture_immutable_format: unit -> GLenum.t [@@js.get "TEXTURE_IMMUTABLE_FORMAT"]
  val texture_immutable_levels: unit -> GLenum.t [@@js.get "TEXTURE_IMMUTABLE_LEVELS"]
  val texture_max_level: unit -> GLenum.t [@@js.get "TEXTURE_MAX_LEVEL"]
  val texture_max_lod: unit -> GLenum.t [@@js.get "TEXTURE_MAX_LOD"]
  val texture_min_lod: unit -> GLenum.t [@@js.get "TEXTURE_MIN_LOD"]
  val texture_wrap_r: unit -> GLenum.t [@@js.get "TEXTURE_WRAP_R"]
  val timeout_expired: unit -> GLenum.t [@@js.get "TIMEOUT_EXPIRED"]
  val timeout_ignored: unit -> GLint64.t [@@js.get "TIMEOUT_IGNORED"]
  val transform_feedback: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK"]
  val transform_feedback_active: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_ACTIVE"]
  val transform_feedback_binding: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BINDING"]
  val transform_feedback_buffer: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER"]
  val transform_feedback_buffer_binding: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_BINDING"]
  val transform_feedback_buffer_mode: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_MODE"]
  val transform_feedback_buffer_size: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_SIZE"]
  val transform_feedback_buffer_start: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_BUFFER_START"]
  val transform_feedback_paused: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_PAUSED"]
  val transform_feedback_primitives_written: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN"]
  val transform_feedback_varyings: unit -> GLenum.t [@@js.get "TRANSFORM_FEEDBACK_VARYINGS"]
  val uniform_array_stride: unit -> GLenum.t [@@js.get "UNIFORM_ARRAY_STRIDE"]
  val uniform_block_active_uniforms: unit -> GLenum.t [@@js.get "UNIFORM_BLOCK_ACTIVE_UNIFORMS"]
  val uniform_block_active_uniform_indices: unit -> GLenum.t [@@js.get "UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES"]
  val uniform_block_binding: unit -> GLenum.t [@@js.get "UNIFORM_BLOCK_BINDING"]
  val uniform_block_data_size: unit -> GLenum.t [@@js.get "UNIFORM_BLOCK_DATA_SIZE"]
  val uniform_block_index: unit -> GLenum.t [@@js.get "UNIFORM_BLOCK_INDEX"]
  val uniform_block_referenced_by_fragment_shader: unit -> GLenum.t [@@js.get "UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER"]
  val uniform_block_referenced_by_vertex_shader: unit -> GLenum.t [@@js.get "UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER"]
  val uniform_buffer: unit -> GLenum.t [@@js.get "UNIFORM_BUFFER"]
  val uniform_buffer_binding: unit -> GLenum.t [@@js.get "UNIFORM_BUFFER_BINDING"]
  val uniform_buffer_offset_alignment: unit -> GLenum.t [@@js.get "UNIFORM_BUFFER_OFFSET_ALIGNMENT"]
  val uniform_buffer_size: unit -> GLenum.t [@@js.get "UNIFORM_BUFFER_SIZE"]
  val uniform_buffer_start: unit -> GLenum.t [@@js.get "UNIFORM_BUFFER_START"]
  val uniform_is_row_major: unit -> GLenum.t [@@js.get "UNIFORM_IS_ROW_MAJOR"]
  val uniform_matrix_stride: unit -> GLenum.t [@@js.get "UNIFORM_MATRIX_STRIDE"]
  val uniform_offset: unit -> GLenum.t [@@js.get "UNIFORM_OFFSET"]
  val uniform_size: unit -> GLenum.t [@@js.get "UNIFORM_SIZE"]
  val uniform_type: unit -> GLenum.t [@@js.get "UNIFORM_TYPE"]
  val unpack_image_height: unit -> GLenum.t [@@js.get "UNPACK_IMAGE_HEIGHT"]
  val unpack_row_length: unit -> GLenum.t [@@js.get "UNPACK_ROW_LENGTH"]
  val unpack_skip_images: unit -> GLenum.t [@@js.get "UNPACK_SKIP_IMAGES"]
  val unpack_skip_pixels: unit -> GLenum.t [@@js.get "UNPACK_SKIP_PIXELS"]
  val unpack_skip_rows: unit -> GLenum.t [@@js.get "UNPACK_SKIP_ROWS"]
  val unsignaled: unit -> GLenum.t [@@js.get "UNSIGNALED"]
  val unsigned_int_10f_11f_11f_rev: unit -> GLenum.t [@@js.get "UNSIGNED_INT_10F_11F_11F_REV"]
  val unsigned_int_24_8: unit -> GLenum.t [@@js.get "UNSIGNED_INT_24_8"]
  val unsigned_int_2_10_10_10_rev: unit -> GLenum.t [@@js.get "UNSIGNED_INT_2_10_10_10_REV"]
  val unsigned_int_5_9_9_9_rev: unit -> GLenum.t [@@js.get "UNSIGNED_INT_5_9_9_9_REV"]
  val unsigned_int_sampler_2d: unit -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_2D"]
  val unsigned_int_sampler_2d_array: unit -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_2D_ARRAY"]
  val unsigned_int_sampler_3d: unit -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_3D"]
  val unsigned_int_sampler_cube: unit -> GLenum.t [@@js.get "UNSIGNED_INT_SAMPLER_CUBE"]
  val unsigned_int_vec2: unit -> GLenum.t [@@js.get "UNSIGNED_INT_VEC2"]
  val unsigned_int_vec3: unit -> GLenum.t [@@js.get "UNSIGNED_INT_VEC3"]
  val unsigned_int_vec4: unit -> GLenum.t [@@js.get "UNSIGNED_INT_VEC4"]
  val unsigned_normalized: unit -> GLenum.t [@@js.get "UNSIGNED_NORMALIZED"]
  val vertex_array_binding: unit -> GLenum.t [@@js.get "VERTEX_ARRAY_BINDING"]
  val vertex_attrib_array_divisor: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_DIVISOR"]
  val vertex_attrib_array_integer: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_INTEGER"]
  val wait_failed: unit -> GLenum.t [@@js.get "WAIT_FAILED"]
  val active_attributes: unit -> GLenum.t [@@js.get "ACTIVE_ATTRIBUTES"]
  val active_texture: unit -> GLenum.t [@@js.get "ACTIVE_TEXTURE"]
  val active_uniforms: unit -> GLenum.t [@@js.get "ACTIVE_UNIFORMS"]
  val aliased_line_width_range: unit -> GLenum.t [@@js.get "ALIASED_LINE_WIDTH_RANGE"]
  val aliased_point_size_range: unit -> GLenum.t [@@js.get "ALIASED_POINT_SIZE_RANGE"]
  val alpha: unit -> GLenum.t [@@js.get "ALPHA"]
  val alpha_bits: unit -> GLenum.t [@@js.get "ALPHA_BITS"]
  val always: unit -> GLenum.t [@@js.get "ALWAYS"]
  val array_buffer: unit -> GLenum.t [@@js.get "ARRAY_BUFFER"]
  val array_buffer_binding: unit -> GLenum.t [@@js.get "ARRAY_BUFFER_BINDING"]
  val attached_shaders: unit -> GLenum.t [@@js.get "ATTACHED_SHADERS"]
  val back: unit -> GLenum.t [@@js.get "BACK"]
  val blend: unit -> GLenum.t [@@js.get "BLEND"]
  val blend_color: unit -> GLenum.t [@@js.get "BLEND_COLOR"]
  val blend_dst_alpha: unit -> GLenum.t [@@js.get "BLEND_DST_ALPHA"]
  val blend_dst_rgb: unit -> GLenum.t [@@js.get "BLEND_DST_RGB"]
  val blend_equation: unit -> GLenum.t [@@js.get "BLEND_EQUATION"]
  val blend_equation_alpha: unit -> GLenum.t [@@js.get "BLEND_EQUATION_ALPHA"]
  val blend_equation_rgb: unit -> GLenum.t [@@js.get "BLEND_EQUATION_RGB"]
  val blend_src_alpha: unit -> GLenum.t [@@js.get "BLEND_SRC_ALPHA"]
  val blend_src_rgb: unit -> GLenum.t [@@js.get "BLEND_SRC_RGB"]
  val blue_bits: unit -> GLenum.t [@@js.get "BLUE_BITS"]
  val bool: unit -> GLenum.t [@@js.get "BOOL"]
  val bool_vec2: unit -> GLenum.t [@@js.get "BOOL_VEC2"]
  val bool_vec3: unit -> GLenum.t [@@js.get "BOOL_VEC3"]
  val bool_vec4: unit -> GLenum.t [@@js.get "BOOL_VEC4"]
  val browser_default_webgl: unit -> GLenum.t [@@js.get "BROWSER_DEFAULT_WEBGL"]
  val buffer_size: unit -> GLenum.t [@@js.get "BUFFER_SIZE"]
  val buffer_usage: unit -> GLenum.t [@@js.get "BUFFER_USAGE"]
  val byte: unit -> GLenum.t [@@js.get "BYTE"]
  val ccw: unit -> GLenum.t [@@js.get "CCW"]
  val clamp_to_edge: unit -> GLenum.t [@@js.get "CLAMP_TO_EDGE"]
  val color_attachment0: unit -> GLenum.t [@@js.get "COLOR_ATTACHMENT0"]
  val color_buffer_bit: unit -> GLenum.t [@@js.get "COLOR_BUFFER_BIT"]
  val color_clear_value: unit -> GLenum.t [@@js.get "COLOR_CLEAR_VALUE"]
  val color_writemask: unit -> GLenum.t [@@js.get "COLOR_WRITEMASK"]
  val compile_status: unit -> GLenum.t [@@js.get "COMPILE_STATUS"]
  val compressed_texture_formats: unit -> GLenum.t [@@js.get "COMPRESSED_TEXTURE_FORMATS"]
  val constant_alpha: unit -> GLenum.t [@@js.get "CONSTANT_ALPHA"]
  val constant_color: unit -> GLenum.t [@@js.get "CONSTANT_COLOR"]
  val context_lost_webgl: unit -> GLenum.t [@@js.get "CONTEXT_LOST_WEBGL"]
  val cull_face: unit -> GLenum.t [@@js.get "CULL_FACE"]
  val cull_face_mode: unit -> GLenum.t [@@js.get "CULL_FACE_MODE"]
  val current_program: unit -> GLenum.t [@@js.get "CURRENT_PROGRAM"]
  val current_vertex_attrib: unit -> GLenum.t [@@js.get "CURRENT_VERTEX_ATTRIB"]
  val cw: unit -> GLenum.t [@@js.get "CW"]
  val decr: unit -> GLenum.t [@@js.get "DECR"]
  val decr_wrap: unit -> GLenum.t [@@js.get "DECR_WRAP"]
  val delete_status: unit -> GLenum.t [@@js.get "DELETE_STATUS"]
  val depth_attachment: unit -> GLenum.t [@@js.get "DEPTH_ATTACHMENT"]
  val depth_bits: unit -> GLenum.t [@@js.get "DEPTH_BITS"]
  val depth_buffer_bit: unit -> GLenum.t [@@js.get "DEPTH_BUFFER_BIT"]
  val depth_clear_value: unit -> GLenum.t [@@js.get "DEPTH_CLEAR_VALUE"]
  val depth_component: unit -> GLenum.t [@@js.get "DEPTH_COMPONENT"]
  val depth_component16: unit -> GLenum.t [@@js.get "DEPTH_COMPONENT16"]
  val depth_func: unit -> GLenum.t [@@js.get "DEPTH_FUNC"]
  val depth_range: unit -> GLenum.t [@@js.get "DEPTH_RANGE"]
  val depth_stencil: unit -> GLenum.t [@@js.get "DEPTH_STENCIL"]
  val depth_stencil_attachment: unit -> GLenum.t [@@js.get "DEPTH_STENCIL_ATTACHMENT"]
  val depth_test: unit -> GLenum.t [@@js.get "DEPTH_TEST"]
  val depth_writemask: unit -> GLenum.t [@@js.get "DEPTH_WRITEMASK"]
  val dither: unit -> GLenum.t [@@js.get "DITHER"]
  val dont_care: unit -> GLenum.t [@@js.get "DONT_CARE"]
  val dst_alpha: unit -> GLenum.t [@@js.get "DST_ALPHA"]
  val dst_color: unit -> GLenum.t [@@js.get "DST_COLOR"]
  val dynamic_draw: unit -> GLenum.t [@@js.get "DYNAMIC_DRAW"]
  val element_array_buffer: unit -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER"]
  val element_array_buffer_binding: unit -> GLenum.t [@@js.get "ELEMENT_ARRAY_BUFFER_BINDING"]
  val equal: unit -> GLenum.t [@@js.get "EQUAL"]
  val fastest: unit -> GLenum.t [@@js.get "FASTEST"]
  val float: unit -> GLenum.t [@@js.get "FLOAT"]
  val float_mat2: unit -> GLenum.t [@@js.get "FLOAT_MAT2"]
  val float_mat3: unit -> GLenum.t [@@js.get "FLOAT_MAT3"]
  val float_mat4: unit -> GLenum.t [@@js.get "FLOAT_MAT4"]
  val float_vec2: unit -> GLenum.t [@@js.get "FLOAT_VEC2"]
  val float_vec3: unit -> GLenum.t [@@js.get "FLOAT_VEC3"]
  val float_vec4: unit -> GLenum.t [@@js.get "FLOAT_VEC4"]
  val fragment_shader: unit -> GLenum.t [@@js.get "FRAGMENT_SHADER"]
  val framebuffer: unit -> GLenum.t [@@js.get "FRAMEBUFFER"]
  val framebuffer_attachment_object_name: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_NAME"]
  val framebuffer_attachment_object_type: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE"]
  val framebuffer_attachment_texture_cube_map_face: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE"]
  val framebuffer_attachment_texture_level: unit -> GLenum.t [@@js.get "FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL"]
  val framebuffer_binding: unit -> GLenum.t [@@js.get "FRAMEBUFFER_BINDING"]
  val framebuffer_complete: unit -> GLenum.t [@@js.get "FRAMEBUFFER_COMPLETE"]
  val framebuffer_incomplete_attachment: unit -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_ATTACHMENT"]
  val framebuffer_incomplete_dimensions: unit -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"]
  val framebuffer_incomplete_missing_attachment: unit -> GLenum.t [@@js.get "FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"]
  val framebuffer_unsupported: unit -> GLenum.t [@@js.get "FRAMEBUFFER_UNSUPPORTED"]
  val front: unit -> GLenum.t [@@js.get "FRONT"]
  val front_and_back: unit -> GLenum.t [@@js.get "FRONT_AND_BACK"]
  val front_face: unit -> GLenum.t [@@js.get "FRONT_FACE"]
  val func_add: unit -> GLenum.t [@@js.get "FUNC_ADD"]
  val func_reverse_subtract: unit -> GLenum.t [@@js.get "FUNC_REVERSE_SUBTRACT"]
  val func_subtract: unit -> GLenum.t [@@js.get "FUNC_SUBTRACT"]
  val generate_mipmap_hint: unit -> GLenum.t [@@js.get "GENERATE_MIPMAP_HINT"]
  val gequal: unit -> GLenum.t [@@js.get "GEQUAL"]
  val greater: unit -> GLenum.t [@@js.get "GREATER"]
  val green_bits: unit -> GLenum.t [@@js.get "GREEN_BITS"]
  val high_float: unit -> GLenum.t [@@js.get "HIGH_FLOAT"]
  val high_int: unit -> GLenum.t [@@js.get "HIGH_INT"]
  val implementation_color_read_format: unit -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_FORMAT"]
  val implementation_color_read_type: unit -> GLenum.t [@@js.get "IMPLEMENTATION_COLOR_READ_TYPE"]
  val incr: unit -> GLenum.t [@@js.get "INCR"]
  val incr_wrap: unit -> GLenum.t [@@js.get "INCR_WRAP"]
  val int: unit -> GLenum.t [@@js.get "INT"]
  val int_vec2: unit -> GLenum.t [@@js.get "INT_VEC2"]
  val int_vec3: unit -> GLenum.t [@@js.get "INT_VEC3"]
  val int_vec4: unit -> GLenum.t [@@js.get "INT_VEC4"]
  val invalid_enum: unit -> GLenum.t [@@js.get "INVALID_ENUM"]
  val invalid_framebuffer_operation: unit -> GLenum.t [@@js.get "INVALID_FRAMEBUFFER_OPERATION"]
  val invalid_operation: unit -> GLenum.t [@@js.get "INVALID_OPERATION"]
  val invalid_value: unit -> GLenum.t [@@js.get "INVALID_VALUE"]
  val invert: unit -> GLenum.t [@@js.get "INVERT"]
  val keep: unit -> GLenum.t [@@js.get "KEEP"]
  val lequal: unit -> GLenum.t [@@js.get "LEQUAL"]
  val less: unit -> GLenum.t [@@js.get "LESS"]
  val linear: unit -> GLenum.t [@@js.get "LINEAR"]
  val linear_mipmap_linear: unit -> GLenum.t [@@js.get "LINEAR_MIPMAP_LINEAR"]
  val linear_mipmap_nearest: unit -> GLenum.t [@@js.get "LINEAR_MIPMAP_NEAREST"]
  val lines: unit -> GLenum.t [@@js.get "LINES"]
  val line_loop: unit -> GLenum.t [@@js.get "LINE_LOOP"]
  val line_strip: unit -> GLenum.t [@@js.get "LINE_STRIP"]
  val line_width: unit -> GLenum.t [@@js.get "LINE_WIDTH"]
  val link_status: unit -> GLenum.t [@@js.get "LINK_STATUS"]
  val low_float: unit -> GLenum.t [@@js.get "LOW_FLOAT"]
  val low_int: unit -> GLenum.t [@@js.get "LOW_INT"]
  val luminance: unit -> GLenum.t [@@js.get "LUMINANCE"]
  val luminance_alpha: unit -> GLenum.t [@@js.get "LUMINANCE_ALPHA"]
  val max_combined_texture_image_units: unit -> GLenum.t [@@js.get "MAX_COMBINED_TEXTURE_IMAGE_UNITS"]
  val max_cube_map_texture_size: unit -> GLenum.t [@@js.get "MAX_CUBE_MAP_TEXTURE_SIZE"]
  val max_fragment_uniform_vectors: unit -> GLenum.t [@@js.get "MAX_FRAGMENT_UNIFORM_VECTORS"]
  val max_renderbuffer_size: unit -> GLenum.t [@@js.get "MAX_RENDERBUFFER_SIZE"]
  val max_texture_image_units: unit -> GLenum.t [@@js.get "MAX_TEXTURE_IMAGE_UNITS"]
  val max_texture_size: unit -> GLenum.t [@@js.get "MAX_TEXTURE_SIZE"]
  val max_varying_vectors: unit -> GLenum.t [@@js.get "MAX_VARYING_VECTORS"]
  val max_vertex_attribs: unit -> GLenum.t [@@js.get "MAX_VERTEX_ATTRIBS"]
  val max_vertex_texture_image_units: unit -> GLenum.t [@@js.get "MAX_VERTEX_TEXTURE_IMAGE_UNITS"]
  val max_vertex_uniform_vectors: unit -> GLenum.t [@@js.get "MAX_VERTEX_UNIFORM_VECTORS"]
  val max_viewport_dims: unit -> GLenum.t [@@js.get "MAX_VIEWPORT_DIMS"]
  val medium_float: unit -> GLenum.t [@@js.get "MEDIUM_FLOAT"]
  val medium_int: unit -> GLenum.t [@@js.get "MEDIUM_INT"]
  val mirrored_repeat: unit -> GLenum.t [@@js.get "MIRRORED_REPEAT"]
  val nearest: unit -> GLenum.t [@@js.get "NEAREST"]
  val nearest_mipmap_linear: unit -> GLenum.t [@@js.get "NEAREST_MIPMAP_LINEAR"]
  val nearest_mipmap_nearest: unit -> GLenum.t [@@js.get "NEAREST_MIPMAP_NEAREST"]
  val never: unit -> GLenum.t [@@js.get "NEVER"]
  val nicest: unit -> GLenum.t [@@js.get "NICEST"]
  val none: unit -> GLenum.t [@@js.get "NONE"]
  val notequal: unit -> GLenum.t [@@js.get "NOTEQUAL"]
  val no_error: unit -> GLenum.t [@@js.get "NO_ERROR"]
  val one: unit -> GLenum.t [@@js.get "ONE"]
  val one_minus_constant_alpha: unit -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_ALPHA"]
  val one_minus_constant_color: unit -> GLenum.t [@@js.get "ONE_MINUS_CONSTANT_COLOR"]
  val one_minus_dst_alpha: unit -> GLenum.t [@@js.get "ONE_MINUS_DST_ALPHA"]
  val one_minus_dst_color: unit -> GLenum.t [@@js.get "ONE_MINUS_DST_COLOR"]
  val one_minus_src_alpha: unit -> GLenum.t [@@js.get "ONE_MINUS_SRC_ALPHA"]
  val one_minus_src_color: unit -> GLenum.t [@@js.get "ONE_MINUS_SRC_COLOR"]
  val out_of_memory: unit -> GLenum.t [@@js.get "OUT_OF_MEMORY"]
  val pack_alignment: unit -> GLenum.t [@@js.get "PACK_ALIGNMENT"]
  val points: unit -> GLenum.t [@@js.get "POINTS"]
  val polygon_offset_factor: unit -> GLenum.t [@@js.get "POLYGON_OFFSET_FACTOR"]
  val polygon_offset_fill: unit -> GLenum.t [@@js.get "POLYGON_OFFSET_FILL"]
  val polygon_offset_units: unit -> GLenum.t [@@js.get "POLYGON_OFFSET_UNITS"]
  val red_bits: unit -> GLenum.t [@@js.get "RED_BITS"]
  val renderbuffer: unit -> GLenum.t [@@js.get "RENDERBUFFER"]
  val renderbuffer_alpha_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_ALPHA_SIZE"]
  val renderbuffer_binding: unit -> GLenum.t [@@js.get "RENDERBUFFER_BINDING"]
  val renderbuffer_blue_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_BLUE_SIZE"]
  val renderbuffer_depth_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_DEPTH_SIZE"]
  val renderbuffer_green_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_GREEN_SIZE"]
  val renderbuffer_height: unit -> GLenum.t [@@js.get "RENDERBUFFER_HEIGHT"]
  val renderbuffer_internal_format: unit -> GLenum.t [@@js.get "RENDERBUFFER_INTERNAL_FORMAT"]
  val renderbuffer_red_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_RED_SIZE"]
  val renderbuffer_stencil_size: unit -> GLenum.t [@@js.get "RENDERBUFFER_STENCIL_SIZE"]
  val renderbuffer_width: unit -> GLenum.t [@@js.get "RENDERBUFFER_WIDTH"]
  val renderer: unit -> GLenum.t [@@js.get "RENDERER"]
  val repeat: unit -> GLenum.t [@@js.get "REPEAT"]
  val replace: unit -> GLenum.t [@@js.get "REPLACE"]
  val rgb: unit -> GLenum.t [@@js.get "RGB"]
  val rgb565: unit -> GLenum.t [@@js.get "RGB565"]
  val rgb5_a1: unit -> GLenum.t [@@js.get "RGB5_A1"]
  val rgba: unit -> GLenum.t [@@js.get "RGBA"]
  val rgba4: unit -> GLenum.t [@@js.get "RGBA4"]
  val sampler_2d: unit -> GLenum.t [@@js.get "SAMPLER_2D"]
  val sampler_cube: unit -> GLenum.t [@@js.get "SAMPLER_CUBE"]
  val samples: unit -> GLenum.t [@@js.get "SAMPLES"]
  val sample_alpha_to_coverage: unit -> GLenum.t [@@js.get "SAMPLE_ALPHA_TO_COVERAGE"]
  val sample_buffers: unit -> GLenum.t [@@js.get "SAMPLE_BUFFERS"]
  val sample_coverage: unit -> GLenum.t [@@js.get "SAMPLE_COVERAGE"]
  val sample_coverage_invert: unit -> GLenum.t [@@js.get "SAMPLE_COVERAGE_INVERT"]
  val sample_coverage_value: unit -> GLenum.t [@@js.get "SAMPLE_COVERAGE_VALUE"]
  val scissor_box: unit -> GLenum.t [@@js.get "SCISSOR_BOX"]
  val scissor_test: unit -> GLenum.t [@@js.get "SCISSOR_TEST"]
  val shader_type: unit -> GLenum.t [@@js.get "SHADER_TYPE"]
  val shading_language_version: unit -> GLenum.t [@@js.get "SHADING_LANGUAGE_VERSION"]
  val short: unit -> GLenum.t [@@js.get "SHORT"]
  val src_alpha: unit -> GLenum.t [@@js.get "SRC_ALPHA"]
  val src_alpha_saturate: unit -> GLenum.t [@@js.get "SRC_ALPHA_SATURATE"]
  val src_color: unit -> GLenum.t [@@js.get "SRC_COLOR"]
  val static_draw: unit -> GLenum.t [@@js.get "STATIC_DRAW"]
  val stencil_attachment: unit -> GLenum.t [@@js.get "STENCIL_ATTACHMENT"]
  val stencil_back_fail: unit -> GLenum.t [@@js.get "STENCIL_BACK_FAIL"]
  val stencil_back_func: unit -> GLenum.t [@@js.get "STENCIL_BACK_FUNC"]
  val stencil_back_pass_depth_fail: unit -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_FAIL"]
  val stencil_back_pass_depth_pass: unit -> GLenum.t [@@js.get "STENCIL_BACK_PASS_DEPTH_PASS"]
  val stencil_back_ref: unit -> GLenum.t [@@js.get "STENCIL_BACK_REF"]
  val stencil_back_value_mask: unit -> GLenum.t [@@js.get "STENCIL_BACK_VALUE_MASK"]
  val stencil_back_writemask: unit -> GLenum.t [@@js.get "STENCIL_BACK_WRITEMASK"]
  val stencil_bits: unit -> GLenum.t [@@js.get "STENCIL_BITS"]
  val stencil_buffer_bit: unit -> GLenum.t [@@js.get "STENCIL_BUFFER_BIT"]
  val stencil_clear_value: unit -> GLenum.t [@@js.get "STENCIL_CLEAR_VALUE"]
  val stencil_fail: unit -> GLenum.t [@@js.get "STENCIL_FAIL"]
  val stencil_func: unit -> GLenum.t [@@js.get "STENCIL_FUNC"]
  val stencil_index8: unit -> GLenum.t [@@js.get "STENCIL_INDEX8"]
  val stencil_pass_depth_fail: unit -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_FAIL"]
  val stencil_pass_depth_pass: unit -> GLenum.t [@@js.get "STENCIL_PASS_DEPTH_PASS"]
  val stencil_ref: unit -> GLenum.t [@@js.get "STENCIL_REF"]
  val stencil_test: unit -> GLenum.t [@@js.get "STENCIL_TEST"]
  val stencil_value_mask: unit -> GLenum.t [@@js.get "STENCIL_VALUE_MASK"]
  val stencil_writemask: unit -> GLenum.t [@@js.get "STENCIL_WRITEMASK"]
  val stream_draw: unit -> GLenum.t [@@js.get "STREAM_DRAW"]
  val subpixel_bits: unit -> GLenum.t [@@js.get "SUBPIXEL_BITS"]
  val texture: unit -> GLenum.t [@@js.get "TEXTURE"]
  val texture0: unit -> GLenum.t [@@js.get "TEXTURE0"]
  val texture1: unit -> GLenum.t [@@js.get "TEXTURE1"]
  val texture10: unit -> GLenum.t [@@js.get "TEXTURE10"]
  val texture11: unit -> GLenum.t [@@js.get "TEXTURE11"]
  val texture12: unit -> GLenum.t [@@js.get "TEXTURE12"]
  val texture13: unit -> GLenum.t [@@js.get "TEXTURE13"]
  val texture14: unit -> GLenum.t [@@js.get "TEXTURE14"]
  val texture15: unit -> GLenum.t [@@js.get "TEXTURE15"]
  val texture16: unit -> GLenum.t [@@js.get "TEXTURE16"]
  val texture17: unit -> GLenum.t [@@js.get "TEXTURE17"]
  val texture18: unit -> GLenum.t [@@js.get "TEXTURE18"]
  val texture19: unit -> GLenum.t [@@js.get "TEXTURE19"]
  val texture2: unit -> GLenum.t [@@js.get "TEXTURE2"]
  val texture20: unit -> GLenum.t [@@js.get "TEXTURE20"]
  val texture21: unit -> GLenum.t [@@js.get "TEXTURE21"]
  val texture22: unit -> GLenum.t [@@js.get "TEXTURE22"]
  val texture23: unit -> GLenum.t [@@js.get "TEXTURE23"]
  val texture24: unit -> GLenum.t [@@js.get "TEXTURE24"]
  val texture25: unit -> GLenum.t [@@js.get "TEXTURE25"]
  val texture26: unit -> GLenum.t [@@js.get "TEXTURE26"]
  val texture27: unit -> GLenum.t [@@js.get "TEXTURE27"]
  val texture28: unit -> GLenum.t [@@js.get "TEXTURE28"]
  val texture29: unit -> GLenum.t [@@js.get "TEXTURE29"]
  val texture3: unit -> GLenum.t [@@js.get "TEXTURE3"]
  val texture30: unit -> GLenum.t [@@js.get "TEXTURE30"]
  val texture31: unit -> GLenum.t [@@js.get "TEXTURE31"]
  val texture4: unit -> GLenum.t [@@js.get "TEXTURE4"]
  val texture5: unit -> GLenum.t [@@js.get "TEXTURE5"]
  val texture6: unit -> GLenum.t [@@js.get "TEXTURE6"]
  val texture7: unit -> GLenum.t [@@js.get "TEXTURE7"]
  val texture8: unit -> GLenum.t [@@js.get "TEXTURE8"]
  val texture9: unit -> GLenum.t [@@js.get "TEXTURE9"]
  val texture_2d: unit -> GLenum.t [@@js.get "TEXTURE_2D"]
  val texture_binding_2d: unit -> GLenum.t [@@js.get "TEXTURE_BINDING_2D"]
  val texture_binding_cube_map: unit -> GLenum.t [@@js.get "TEXTURE_BINDING_CUBE_MAP"]
  val texture_cube_map: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP"]
  val texture_cube_map_negative_x: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_X"]
  val texture_cube_map_negative_y: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Y"]
  val texture_cube_map_negative_z: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_NEGATIVE_Z"]
  val texture_cube_map_positive_x: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_X"]
  val texture_cube_map_positive_y: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Y"]
  val texture_cube_map_positive_z: unit -> GLenum.t [@@js.get "TEXTURE_CUBE_MAP_POSITIVE_Z"]
  val texture_mag_filter: unit -> GLenum.t [@@js.get "TEXTURE_MAG_FILTER"]
  val texture_min_filter: unit -> GLenum.t [@@js.get "TEXTURE_MIN_FILTER"]
  val texture_wrap_s: unit -> GLenum.t [@@js.get "TEXTURE_WRAP_S"]
  val texture_wrap_t: unit -> GLenum.t [@@js.get "TEXTURE_WRAP_T"]
  val triangles: unit -> GLenum.t [@@js.get "TRIANGLES"]
  val triangle_fan: unit -> GLenum.t [@@js.get "TRIANGLE_FAN"]
  val triangle_strip: unit -> GLenum.t [@@js.get "TRIANGLE_STRIP"]
  val unpack_alignment: unit -> GLenum.t [@@js.get "UNPACK_ALIGNMENT"]
  val unpack_colorspace_conversion_webgl: unit -> GLenum.t [@@js.get "UNPACK_COLORSPACE_CONVERSION_WEBGL"]
  val unpack_flip_y_webgl: unit -> GLenum.t [@@js.get "UNPACK_FLIP_Y_WEBGL"]
  val unpack_premultiply_alpha_webgl: unit -> GLenum.t [@@js.get "UNPACK_PREMULTIPLY_ALPHA_WEBGL"]
  val unsigned_byte: unit -> GLenum.t [@@js.get "UNSIGNED_BYTE"]
  val unsigned_int: unit -> GLenum.t [@@js.get "UNSIGNED_INT"]
  val unsigned_short: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT"]
  val unsigned_short_4_4_4_4: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT_4_4_4_4"]
  val unsigned_short_5_5_5_1: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_5_5_1"]
  val unsigned_short_5_6_5: unit -> GLenum.t [@@js.get "UNSIGNED_SHORT_5_6_5"]
  val validate_status: unit -> GLenum.t [@@js.get "VALIDATE_STATUS"]
  val vendor: unit -> GLenum.t [@@js.get "VENDOR"]
  val version: unit -> GLenum.t [@@js.get "VERSION"]
  val vertex_attrib_array_buffer_binding: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_BUFFER_BINDING"]
  val vertex_attrib_array_enabled: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_ENABLED"]
  val vertex_attrib_array_normalized: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_NORMALIZED"]
  val vertex_attrib_array_pointer: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_POINTER"]
  val vertex_attrib_array_size: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_SIZE"]
  val vertex_attrib_array_stride: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_STRIDE"]
  val vertex_attrib_array_type: unit -> GLenum.t [@@js.get "VERTEX_ATTRIB_ARRAY_TYPE"]
  val vertex_shader: unit -> GLenum.t [@@js.get "VERTEX_SHADER"]
  val viewport: unit -> GLenum.t [@@js.get "VIEWPORT"]
  val zero: unit -> GLenum.t [@@js.get "ZERO"]
end
module rec AnonymousInterface108 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> TransformStreamDefaultController.t_0 [@@js.get "prototype"]
  val set_prototype: t -> TransformStreamDefaultController.t_0 -> unit [@@js.set "prototype"]
  val create: t -> TransformStreamDefaultController.t_0 [@@js.apply_newable]
end
and[@js.scope "TransformStreamDefaultController"] TransformStreamDefaultController : sig
  type 'O t = [`TransformStreamDefaultController of 'O] intf [@@js.custom { of_js=(fun _O -> Obj.magic); to_js=(fun _O -> Obj.magic) }]
  type 'O t_1 = 'O t
  type t_0 = any t
  [@@@js.stop]
  type 'O tags = [`TransformStreamDefaultController of 'O]
  type 'O tags_1 = 'O tags
  type tags_0 = any tags
  [@@@js.start]
  [@@@js.implem 
    type 'O tags = [`TransformStreamDefaultController of 'O]
    type 'O tags_1 = 'O tags
    type tags_0 = any tags
  ]
  type ('tags, 'O) this = 'tags intf constraint 'tags = [> `TransformStreamDefaultController of 'O ]
  val t_to_js: ('O -> Ojs.t) -> 'O t -> Ojs.t
  val t_of_js: (Ojs.t -> 'O) -> Ojs.t -> 'O t
  val t_1_to_js: ('O -> Ojs.t) -> 'O t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'O) -> Ojs.t -> 'O t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_desiredSize: ('tags, 'O) this -> float or_null [@@js.get "desiredSize"]
  val enqueue: ('tags, 'O) this -> ?chunk:'O -> unit -> unit [@@js.call "enqueue"]
  val error: ('tags, 'O) this -> ?reason:any -> unit -> unit [@@js.call "error"]
  val terminate: ('tags, 'O) this -> unit [@@js.call "terminate"]
  val cast_from: (('tags, 'O) this -> 'O t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: unit -> t_0 [@@js.create]
end
module TransformerTransformCallback : sig
  type ('I, 'O) t = [`TransformerTransformCallback of ('I * 'O)] intf [@@js.custom { of_js=(fun _I _O -> Obj.magic); to_js=(fun _I _O -> Obj.magic) }]
  type ('I, 'O) t_2 = ('I, 'O) t
  [@@@js.stop]
  type ('I, 'O) tags = [`TransformerTransformCallback of ('I * 'O)]
  type ('I, 'O) tags_2 = ('I, 'O) tags
  [@@@js.start]
  [@@@js.implem 
    type ('I, 'O) tags = [`TransformerTransformCallback of ('I * 'O)]
    type ('I, 'O) tags_2 = ('I, 'O) tags
  ]
  type ('tags, 'I, 'O) this = 'tags intf constraint 'tags = [> `TransformerTransformCallback of ('I * 'O) ]
  val t_to_js: ('I -> Ojs.t) -> ('O -> Ojs.t) -> ('I, 'O) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'O) -> Ojs.t -> ('I, 'O) t
  val t_2_to_js: ('I -> Ojs.t) -> ('O -> Ojs.t) -> ('I, 'O) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'O) -> Ojs.t -> ('I, 'O) t_2
  val apply: ('tags, 'I, 'O) this -> chunk:'I -> controller:'O TransformStreamDefaultController.t -> (unit, unit PromiseLike.t_1) union2 [@@js.apply]
  val cast_from: (('tags, 'I, 'O) this -> ('I, 'O) t) [@@js.custom let cast_from = Obj.magic]
end
module TransformerStartCallback : sig
  type 'O t = [`TransformerStartCallback of 'O] intf [@@js.custom { of_js=(fun _O -> Obj.magic); to_js=(fun _O -> Obj.magic) }]
  type 'O t_1 = 'O t
  [@@@js.stop]
  type 'O tags = [`TransformerStartCallback of 'O]
  type 'O tags_1 = 'O tags
  [@@@js.start]
  [@@@js.implem 
    type 'O tags = [`TransformerStartCallback of 'O]
    type 'O tags_1 = 'O tags
  ]
  type ('tags, 'O) this = 'tags intf constraint 'tags = [> `TransformerStartCallback of 'O ]
  val t_to_js: ('O -> Ojs.t) -> 'O t -> Ojs.t
  val t_of_js: (Ojs.t -> 'O) -> Ojs.t -> 'O t
  val t_1_to_js: ('O -> Ojs.t) -> 'O t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'O) -> Ojs.t -> 'O t_1
  val apply: ('tags, 'O) this -> controller:'O TransformStreamDefaultController.t -> any [@@js.apply]
  val cast_from: (('tags, 'O) this -> 'O t) [@@js.custom let cast_from = Obj.magic]
end
module TransformerFlushCallback : sig
  type 'O t = [`TransformerFlushCallback of 'O] intf [@@js.custom { of_js=(fun _O -> Obj.magic); to_js=(fun _O -> Obj.magic) }]
  type 'O t_1 = 'O t
  [@@@js.stop]
  type 'O tags = [`TransformerFlushCallback of 'O]
  type 'O tags_1 = 'O tags
  [@@@js.start]
  [@@@js.implem 
    type 'O tags = [`TransformerFlushCallback of 'O]
    type 'O tags_1 = 'O tags
  ]
  type ('tags, 'O) this = 'tags intf constraint 'tags = [> `TransformerFlushCallback of 'O ]
  val t_to_js: ('O -> Ojs.t) -> 'O t -> Ojs.t
  val t_of_js: (Ojs.t -> 'O) -> Ojs.t -> 'O t
  val t_1_to_js: ('O -> Ojs.t) -> 'O t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'O) -> Ojs.t -> 'O t_1
  val apply: ('tags, 'O) this -> controller:'O TransformStreamDefaultController.t -> (unit, unit PromiseLike.t_1) union2 [@@js.apply]
  val cast_from: (('tags, 'O) this -> 'O t) [@@js.custom let cast_from = Obj.magic]
end
module Transformer : sig
  type ('I, 'O) t = [`Transformer of ('I * 'O)] intf [@@js.custom { of_js=(fun _I _O -> Obj.magic); to_js=(fun _I _O -> Obj.magic) }]
  type ('I, 'O) t_2 = ('I, 'O) t
  type 'I t_1 = ('I, any) t
  type t_0 = (any, any) t
  [@@@js.stop]
  type ('I, 'O) tags = [`Transformer of ('I * 'O)]
  type ('I, 'O) tags_2 = ('I, 'O) tags
  type 'I tags_1 = ('I, any) tags
  type tags_0 = (any, any) tags
  [@@@js.start]
  [@@@js.implem 
    type ('I, 'O) tags = [`Transformer of ('I * 'O)]
    type ('I, 'O) tags_2 = ('I, 'O) tags
    type 'I tags_1 = ('I, any) tags
    type tags_0 = (any, any) tags
  ]
  type ('tags, 'I, 'O) this = 'tags intf constraint 'tags = [> `Transformer of ('I * 'O) ]
  val t_to_js: ('I -> Ojs.t) -> ('O -> Ojs.t) -> ('I, 'O) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'O) -> Ojs.t -> ('I, 'O) t
  val t_2_to_js: ('I -> Ojs.t) -> ('O -> Ojs.t) -> ('I, 'O) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'O) -> Ojs.t -> ('I, 'O) t_2
  val t_1_to_js: ('I -> Ojs.t) -> 'I t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'I) -> Ojs.t -> 'I t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_flush: ('tags, 'I, 'O) this -> 'O TransformerFlushCallback.t [@@js.get "flush"]
  val set_flush: ('tags, 'I, 'O) this -> 'O TransformerFlushCallback.t -> unit [@@js.set "flush"]
  val get_readableType: ('tags, 'I, 'O) this -> never or_undefined [@@js.get "readableType"]
  val set_readableType: ('tags, 'I, 'O) this -> never or_undefined -> unit [@@js.set "readableType"]
  val get_start: ('tags, 'I, 'O) this -> 'O TransformerStartCallback.t [@@js.get "start"]
  val set_start: ('tags, 'I, 'O) this -> 'O TransformerStartCallback.t -> unit [@@js.set "start"]
  val get_transform: ('tags, 'I, 'O) this -> ('I, 'O) TransformerTransformCallback.t [@@js.get "transform"]
  val set_transform: ('tags, 'I, 'O) this -> ('I, 'O) TransformerTransformCallback.t -> unit [@@js.set "transform"]
  val get_writableType: ('tags, 'I, 'O) this -> never or_undefined [@@js.get "writableType"]
  val set_writableType: ('tags, 'I, 'O) this -> never or_undefined -> unit [@@js.set "writableType"]
  val cast_from: (('tags, 'I, 'O) this -> ('I, 'O) t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface107 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> TransformStream.t_0 [@@js.get "prototype"]
  val set_prototype: t -> TransformStream.t_0 -> unit [@@js.set "prototype"]
  val create: t -> ?transformer:('I, 'O) Transformer.t -> ?writableStrategy:'I QueuingStrategy.t -> ?readableStrategy:'O QueuingStrategy.t -> unit -> ('I, 'O) TransformStream.t [@@js.apply_newable]
end
and[@js.scope "TransformStream"] TransformStream : sig
  type ('I, 'O) t = [`TransformStream of ('I * 'O)] intf [@@js.custom { of_js=(fun _I _O -> Obj.magic); to_js=(fun _I _O -> Obj.magic) }]
  type ('I, 'O) t_2 = ('I, 'O) t
  type 'I t_1 = ('I, any) t
  type t_0 = (any, any) t
  [@@@js.stop]
  type ('I, 'O) tags = [`TransformStream of ('I * 'O)]
  type ('I, 'O) tags_2 = ('I, 'O) tags
  type 'I tags_1 = ('I, any) tags
  type tags_0 = (any, any) tags
  [@@@js.start]
  [@@@js.implem 
    type ('I, 'O) tags = [`TransformStream of ('I * 'O)]
    type ('I, 'O) tags_2 = ('I, 'O) tags
    type 'I tags_1 = ('I, any) tags
    type tags_0 = (any, any) tags
  ]
  type ('tags, 'I, 'O) this = 'tags intf constraint 'tags = [> `TransformStream of ('I * 'O) ]
  val t_to_js: ('I -> Ojs.t) -> ('O -> Ojs.t) -> ('I, 'O) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'O) -> Ojs.t -> ('I, 'O) t
  val t_2_to_js: ('I -> Ojs.t) -> ('O -> Ojs.t) -> ('I, 'O) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'O) -> Ojs.t -> ('I, 'O) t_2
  val t_1_to_js: ('I -> Ojs.t) -> 'I t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'I) -> Ojs.t -> 'I t_1
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_readable: ('tags, 'I, 'O) this -> 'O ReadableStream.t [@@js.get "readable"]
  val get_writable: ('tags, 'I, 'O) this -> 'I WritableStream.t [@@js.get "writable"]
  val cast_from: (('tags, 'I, 'O) this -> ('I, 'O) t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t_0 [@@js.get "prototype"]
  val create: ?transformer:('I, 'O) Transformer.t -> ?writableStrategy:'I QueuingStrategy.t -> ?readableStrategy:'O QueuingStrategy.t -> unit -> ('I, 'O) t [@@js.create]
end
module rec AnonymousInterface106 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> TextMetrics.t [@@js.get "prototype"]
  val set_prototype: t -> TextMetrics.t -> unit [@@js.set "prototype"]
  val create: t -> TextMetrics.t [@@js.apply_newable]
end

(** The dimensions of a piece of text in the canvas, as created by the CanvasRenderingContext2D.measureText() method. *)
and[@js.scope "TextMetrics"] TextMetrics : sig
  type t = [`TextMetrics] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextMetrics]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextMetrics]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextMetrics ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the measurement described below. *)
  val get_actualBoundingBoxAscent: 'tags this -> float [@@js.get "actualBoundingBoxAscent"]
  
  (** Returns the measurement described below. *)
  val get_actualBoundingBoxDescent: 'tags this -> float [@@js.get "actualBoundingBoxDescent"]
  
  (** Returns the measurement described below. *)
  val get_actualBoundingBoxLeft: 'tags this -> float [@@js.get "actualBoundingBoxLeft"]
  
  (** Returns the measurement described below. *)
  val get_actualBoundingBoxRight: 'tags this -> float [@@js.get "actualBoundingBoxRight"]
  
  (** Returns the measurement described below. *)
  val get_fontBoundingBoxAscent: 'tags this -> float [@@js.get "fontBoundingBoxAscent"]
  
  (** Returns the measurement described below. *)
  val get_fontBoundingBoxDescent: 'tags this -> float [@@js.get "fontBoundingBoxDescent"]
  
  (** Returns the measurement described below. *)
  val get_width: 'tags this -> float [@@js.get "width"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module TextEncoderCommon : sig
  type t = [`TextEncoderCommon] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextEncoderCommon]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextEncoderCommon]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextEncoderCommon ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns "utf-8". *)
  val get_encoding: 'tags this -> string [@@js.get "encoding"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module GenericTransformStream : sig
  type t = [`GenericTransformStream] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`GenericTransformStream]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`GenericTransformStream]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `GenericTransformStream ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_readable: 'tags this -> ReadableStream.t_0 [@@js.get "readable"]
  val get_writable: 'tags this -> WritableStream.t_0 [@@js.get "writable"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface105 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> TextEncoderStream.t [@@js.get "prototype"]
  val set_prototype: t -> TextEncoderStream.t -> unit [@@js.set "prototype"]
  val create: t -> TextEncoderStream.t [@@js.apply_newable]
end
and[@js.scope "TextEncoderStream"] TextEncoderStream : sig
  type t = [`GenericTransformStream | `TextEncoderCommon | `TextEncoderStream] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`GenericTransformStream | `TextEncoderCommon | `TextEncoderStream]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`GenericTransformStream | `TextEncoderCommon | `TextEncoderStream]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextEncoderStream ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_readable: 'tags this -> Uint8Array.t_0 ReadableStream.t [@@js.get "readable"]
  val get_writable: 'tags this -> string WritableStream.t [@@js.get "writable"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module TextEncoderEncodeIntoResult : sig
  type t = [`TextEncoderEncodeIntoResult] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextEncoderEncodeIntoResult]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextEncoderEncodeIntoResult]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextEncoderEncodeIntoResult ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_read: 'tags this -> float [@@js.get "read"]
  val set_read: 'tags this -> float -> unit [@@js.set "read"]
  val get_written: 'tags this -> float [@@js.get "written"]
  val set_written: 'tags this -> float -> unit [@@js.set "written"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface104 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> TextEncoder.t [@@js.get "prototype"]
  val set_prototype: t -> TextEncoder.t -> unit [@@js.set "prototype"]
  val create: t -> TextEncoder.t [@@js.apply_newable]
end

(** TextEncoder takes a stream of code points as input and emits a stream of bytes. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays. *)
and[@js.scope "TextEncoder"] TextEncoder : sig
  type t = [`TextEncoder | `TextEncoderCommon] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextEncoder | `TextEncoderCommon]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextEncoder | `TextEncoderCommon]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextEncoder ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the result of running UTF-8's encoder. *)
  val encode: 'tags this -> ?input:string -> unit -> Uint8Array.t_0 [@@js.call "encode"]
  
  (** Runs the UTF-8 encoder on source, stores the result of that operation into destination, and returns the progress made as an object wherein read is the number of converted code units of source and written is the number of bytes modified in destination. *)
  val encodeInto: 'tags this -> source:string -> destination:Uint8Array.t_0 -> TextEncoderEncodeIntoResult.t [@@js.call "encodeInto"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
module TextDecoderOptions : sig
  type t = [`TextDecoderOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextDecoderOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextDecoderOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextDecoderOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_fatal: 'tags this -> bool [@@js.get "fatal"]
  val set_fatal: 'tags this -> bool -> unit [@@js.set "fatal"]
  val get_ignoreBOM: 'tags this -> bool [@@js.get "ignoreBOM"]
  val set_ignoreBOM: 'tags this -> bool -> unit [@@js.set "ignoreBOM"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module TextDecoderCommon : sig
  type t = [`TextDecoderCommon] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextDecoderCommon]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextDecoderCommon]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextDecoderCommon ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns encoding's name, lowercased. *)
  val get_encoding: 'tags this -> string [@@js.get "encoding"]
  
  (** Returns true if error mode is "fatal", otherwise false. *)
  val get_fatal: 'tags this -> bool [@@js.get "fatal"]
  
  (** Returns the value of ignore BOM. *)
  val get_ignoreBOM: 'tags this -> bool [@@js.get "ignoreBOM"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface103 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> TextDecoderStream.t [@@js.get "prototype"]
  val set_prototype: t -> TextDecoderStream.t -> unit [@@js.set "prototype"]
  val create: t -> ?label:string -> ?options:TextDecoderOptions.t -> unit -> TextDecoderStream.t [@@js.apply_newable]
end
and[@js.scope "TextDecoderStream"] TextDecoderStream : sig
  type t = [`GenericTransformStream | `TextDecoderCommon | `TextDecoderStream] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`GenericTransformStream | `TextDecoderCommon | `TextDecoderStream]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`GenericTransformStream | `TextDecoderCommon | `TextDecoderStream]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextDecoderStream ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_readable: 'tags this -> string ReadableStream.t [@@js.get "readable"]
  val get_writable: 'tags this -> BufferSource.t WritableStream.t [@@js.get "writable"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?label:string -> ?options:TextDecoderOptions.t -> unit -> t [@@js.create]
end
module TextDecodeOptions : sig
  type t = [`TextDecodeOptions] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextDecodeOptions]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextDecodeOptions]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextDecodeOptions ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_stream: 'tags this -> bool [@@js.get "stream"]
  val set_stream: 'tags this -> bool -> unit [@@js.set "stream"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end
module rec AnonymousInterface102 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> TextDecoder.t [@@js.get "prototype"]
  val set_prototype: t -> TextDecoder.t -> unit [@@js.set "prototype"]
  val create: t -> ?label:string -> ?options:TextDecoderOptions.t -> unit -> TextDecoder.t [@@js.apply_newable]
end

(** A decoder for a specific method, that is a specific character encoding, like utf-8, iso-8859-2, koi8, cp1261, gbk, etc. A decoder takes a stream of bytes as input and emits a stream of code points. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays. *)
and[@js.scope "TextDecoder"] TextDecoder : sig
  type t = [`TextDecoder | `TextDecoderCommon] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`TextDecoder | `TextDecoderCommon]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`TextDecoder | `TextDecoderCommon]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `TextDecoder ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (**
    Returns the result of running encoding's decoder. The method can be invoked zero or more times with options's stream set to true, and then once without options's stream (or set to false), to process a fragmented input. If the invocation without options's stream (or set to false) has no input, it's clearest to omit both arguments.
    
    ```
    var string = "", decoder = new TextDecoder(encoding), buffer;
    while(buffer = next_chunk()) \{
      string += decoder.decode(buffer, \{stream:true\});
    \}
    string += decoder.decode(); // end-of-queue
    ```
    
    If the error mode is "fatal" and encoding's decoder returns error, throws a TypeError.
  *)
  val decode: 'tags this -> ?input:BufferSource.t -> ?options:TextDecodeOptions.t -> unit -> string [@@js.call "decode"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: ?label:string -> ?options:TextDecoderOptions.t -> unit -> t [@@js.create]
end
module rec AnonymousInterface101 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.Table.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.Table.t -> unit [@@js.set "prototype"]
  val create: t -> descriptor:WebAssembly.TableDescriptor.t -> ?value:any -> unit -> WebAssembly.Table.t [@@js.apply_newable]
end
and AnonymousInterface12 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.CompileError.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.CompileError.t -> unit [@@js.set "prototype"]
  val create: t -> ?message:string -> unit -> WebAssembly.CompileError.t [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> WebAssembly.CompileError.t [@@js.apply]
end
and AnonymousInterface42 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.Global.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.Global.t -> unit [@@js.set "prototype"]
  val create: t -> descriptor:WebAssembly.GlobalDescriptor.t -> ?v:any -> unit -> WebAssembly.Global.t [@@js.apply_newable]
end
and AnonymousInterface58 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.Instance.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.Instance.t -> unit [@@js.set "prototype"]
  val create: t -> module_:WebAssembly.Module.t -> ?importObject:WebAssembly.Imports.t -> unit -> WebAssembly.Instance.t [@@js.apply_newable]
end
and AnonymousInterface59 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.LinkError.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.LinkError.t -> unit [@@js.set "prototype"]
  val create: t -> ?message:string -> unit -> WebAssembly.LinkError.t [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> WebAssembly.LinkError.t [@@js.apply]
end
and AnonymousInterface61 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.Memory.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.Memory.t -> unit [@@js.set "prototype"]
  val create: t -> descriptor:WebAssembly.MemoryDescriptor.t -> WebAssembly.Memory.t [@@js.apply_newable]
end
and AnonymousInterface65 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.Module.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.Module.t -> unit [@@js.set "prototype"]
  val create: t -> bytes:BufferSource.t -> WebAssembly.Module.t [@@js.apply_newable]
  val customSections: t -> moduleObject:WebAssembly.Module.t -> sectionName:string -> ArrayBuffer.t_0 list [@@js.call "customSections"]
  val exports: t -> moduleObject:WebAssembly.Module.t -> WebAssembly.ModuleExportDescriptor.t list [@@js.call "exports"]
  val imports: t -> moduleObject:WebAssembly.Module.t -> WebAssembly.ModuleImportDescriptor.t list [@@js.call "imports"]
end
and AnonymousInterface92 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> WebAssembly.RuntimeError.t [@@js.get "prototype"]
  val set_prototype: t -> WebAssembly.RuntimeError.t -> unit [@@js.set "prototype"]
  val create: t -> ?message:string -> unit -> WebAssembly.RuntimeError.t [@@js.apply_newable]
  val apply: t -> ?message:string -> unit -> WebAssembly.RuntimeError.t [@@js.apply]
end
and[@js.scope "WebAssembly"] WebAssembly : sig
  module ImportExportKind : sig
    type t = ([`L_s113_memory[@js "memory"] | `L_s189_table[@js "table"] | `L_s79_function[@js "function"] | `L_s81_global[@js "global"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ModuleImportDescriptor : sig
    type t = [`WebAssembly_ModuleImportDescriptor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_ModuleImportDescriptor]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_ModuleImportDescriptor]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_ModuleImportDescriptor ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: 'tags this -> ImportExportKind.t [@@js.get "kind"]
    val set_kind: 'tags this -> ImportExportKind.t -> unit [@@js.set "kind"]
    val get_module: 'tags this -> string [@@js.get "module"]
    val set_module: 'tags this -> string -> unit [@@js.set "module"]
    val get_name: 'tags this -> string [@@js.get "name"]
    val set_name: 'tags this -> string -> unit [@@js.set "name"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  end
  module ModuleExportDescriptor : sig
    type t = [`WebAssembly_ModuleExportDescriptor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_ModuleExportDescriptor]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_ModuleExportDescriptor]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_ModuleExportDescriptor ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: 'tags this -> ImportExportKind.t [@@js.get "kind"]
    val set_kind: 'tags this -> ImportExportKind.t -> unit [@@js.set "kind"]
    val get_name: 'tags this -> string [@@js.get "name"]
    val set_name: 'tags this -> string -> unit [@@js.set "name"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  end
  module[@js.scope "Module"] Module : sig
    type t = [`WebAssembly_Module] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_Module]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_Module]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_Module ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: BufferSource.t -> t [@@js.create]
    val customSections: moduleObject:t -> sectionName:string -> ArrayBuffer.t_0 list [@@js.global "customSections"]
    val exports: t -> ModuleExportDescriptor.t list [@@js.global "exports"]
    val imports: t -> ModuleImportDescriptor.t list [@@js.global "imports"]
  end
  module TableKind : sig
    type t = ([`L_s36_anyfunc[@js "anyfunc"] | `L_s69_externref[@js "externref"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TableDescriptor : sig
    type t = [`WebAssembly_TableDescriptor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_TableDescriptor]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_TableDescriptor]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_TableDescriptor ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_element: 'tags this -> TableKind.t [@@js.get "element"]
    val set_element: 'tags this -> TableKind.t -> unit [@@js.set "element"]
    val get_initial: 'tags this -> float [@@js.get "initial"]
    val set_initial: 'tags this -> float -> unit [@@js.set "initial"]
    val get_maximum: 'tags this -> float [@@js.get "maximum"]
    val set_maximum: 'tags this -> float -> unit [@@js.set "maximum"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  end
  module[@js.scope "Table"] Table : sig
    type t = [`WebAssembly_Table] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_Table]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_Table]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_Table ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_length: 'tags this -> float [@@js.get "length"]
    val get_: 'tags this -> index:float -> any [@@js.call "get"]
    val grow: 'tags this -> delta:float -> ?value:any -> unit -> float [@@js.call "grow"]
    val set_: 'tags this -> index:float -> ?value:any -> unit -> unit [@@js.call "set"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: descriptor:TableDescriptor.t -> ?value:any -> unit -> t [@@js.create]
  end
  module MemoryDescriptor : sig
    type t = [`WebAssembly_MemoryDescriptor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_MemoryDescriptor]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_MemoryDescriptor]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_MemoryDescriptor ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_initial: 'tags this -> float [@@js.get "initial"]
    val set_initial: 'tags this -> float -> unit [@@js.set "initial"]
    val get_maximum: 'tags this -> float [@@js.get "maximum"]
    val set_maximum: 'tags this -> float -> unit [@@js.set "maximum"]
    val get_shared: 'tags this -> bool [@@js.get "shared"]
    val set_shared: 'tags this -> bool -> unit [@@js.set "shared"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  end
  module[@js.scope "Memory"] Memory : sig
    type t = [`WebAssembly_Memory] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_Memory]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_Memory]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_Memory ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_buffer: 'tags this -> ArrayBuffer.t_0 [@@js.get "buffer"]
    val grow: 'tags this -> delta:float -> float [@@js.call "grow"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: MemoryDescriptor.t -> t [@@js.create]
  end
  module ValueType : sig
    type t = ([`L_s36_anyfunc[@js "anyfunc"] | `L_s69_externref[@js "externref"] | `L_s70_f32[@js "f32"] | `L_s71_f64[@js "f64"] | `L_s87_i32[@js "i32"] | `L_s88_i64[@js "i64"]] [@js.enum])
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module GlobalDescriptor : sig
    type t = [`WebAssembly_GlobalDescriptor] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_GlobalDescriptor]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_GlobalDescriptor]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_GlobalDescriptor ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_mutable: 'tags this -> bool [@@js.get "mutable"]
    val set_mutable: 'tags this -> bool -> unit [@@js.set "mutable"]
    val get_value: 'tags this -> ValueType.t [@@js.get "value"]
    val set_value: 'tags this -> ValueType.t -> unit [@@js.set "value"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  end
  module[@js.scope "Global"] Global : sig
    type t = [`WebAssembly_Global] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_Global]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_Global]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_Global ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_value: 'tags this -> any [@@js.get "value"]
    val set_value: 'tags this -> any -> unit [@@js.set "value"]
    val valueOf: 'tags this -> any [@@js.call "valueOf"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: descriptor:GlobalDescriptor.t -> ?v:any -> unit -> t [@@js.create]
  end
  module ExportValue : sig
    type t = (untyped_function, Global.t, Memory.t, Table.t) union4
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ImportValue : sig
    type t = ExportValue.t or_number
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ModuleImports : sig
    type t = (string, ImportValue.t) Record.t_2
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Imports : sig
    type t = (string, ModuleImports.t) Record.t_2
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Exports : sig
    type t = (string, ExportValue.t) Record.t_2
    type t_0 = t
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "Instance"] Instance : sig
    type t = [`WebAssembly_Instance] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_Instance]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_Instance]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_Instance ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_exports: 'tags this -> Exports.t [@@js.get "exports"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: module_:Module.t -> ?importObject:Imports.t -> unit -> t [@@js.create]
  end
  module WebAssemblyInstantiatedSource : sig
    type t = [`WebAssembly_WebAssemblyInstantiatedSource] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_WebAssemblyInstantiatedSource]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_WebAssemblyInstantiatedSource]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_WebAssemblyInstantiatedSource ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_instance: 'tags this -> Instance.t [@@js.get "instance"]
    val set_instance: 'tags this -> Instance.t -> unit [@@js.set "instance"]
    val get_module: 'tags this -> Module.t [@@js.get "module"]
    val set_module: 'tags this -> Module.t -> unit [@@js.set "module"]
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  end
  module[@js.scope "RuntimeError"] RuntimeError : sig
    type t = [`WebAssembly_RuntimeError | Error.tags_0] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_RuntimeError | Error.tags_0]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_RuntimeError | Error.tags_0]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_RuntimeError ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: ?message:string -> unit -> t [@@js.create]
    val invoke: ?message:string -> unit -> t [@@js.invoke]
  end
  module[@js.scope "LinkError"] LinkError : sig
    type t = [`WebAssembly_LinkError | Error.tags_0] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_LinkError | Error.tags_0]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_LinkError | Error.tags_0]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_LinkError ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: ?message:string -> unit -> t [@@js.create]
    val invoke: ?message:string -> unit -> t [@@js.invoke]
  end
  module[@js.scope "CompileError"] CompileError : sig
    type t = [`WebAssembly_CompileError | Error.tags_0] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type t_0 = t
    [@@@js.stop]
    type tags = [`WebAssembly_CompileError | Error.tags_0]
    type tags_0 = tags
    [@@@js.start]
    [@@@js.implem 
      type tags = [`WebAssembly_CompileError | Error.tags_0]
      type tags_0 = tags
    ]
    type 'tags this = 'tags intf constraint 'tags = [> `WebAssembly_CompileError ]
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
    val prototype: unit -> t [@@js.get "prototype"]
    val create: ?message:string -> unit -> t [@@js.create]
    val invoke: ?message:string -> unit -> t [@@js.invoke]
  end
  val compileError: unit -> AnonymousInterface12.t [@@js.get "CompileError"]
  val global: unit -> AnonymousInterface42.t [@@js.get "Global"]
  val instance: unit -> AnonymousInterface58.t [@@js.get "Instance"]
  val linkError: unit -> AnonymousInterface59.t [@@js.get "LinkError"]
  val memory: unit -> AnonymousInterface61.t [@@js.get "Memory"]
  val module_: unit -> AnonymousInterface65.t [@@js.get "Module"]
  val runtimeError: unit -> AnonymousInterface92.t [@@js.get "RuntimeError"]
  val table: unit -> AnonymousInterface101.t [@@js.get "Table"]
  val compile: BufferSource.t -> Module.t Promise.t_1 [@@js.global "compile"]
  val compileStreaming: (Response.t, Response.t PromiseLike.t_1) union2 -> Module.t Promise.t_1 [@@js.global "compileStreaming"]
  val instantiate: bytes:BufferSource.t -> ?importObject:Imports.t -> unit -> WebAssemblyInstantiatedSource.t Promise.t_1 [@@js.global "instantiate"]
  val instantiate': moduleObject:Module.t -> ?importObject:Imports.t -> unit -> Instance.t Promise.t_1 [@@js.global "instantiate"]
  val instantiateStreaming: source:(Response.t, Response.t PromiseLike.t_1) union2 -> ?importObject:Imports.t -> unit -> WebAssemblyInstantiatedSource.t Promise.t_1 [@@js.global "instantiateStreaming"]
  val validate: BufferSource.t -> bool [@@js.global "validate"]
end
module AbortSignalEventMap : sig
  type t = [`AbortSignalEventMap] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbortSignalEventMap]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbortSignalEventMap]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AbortSignalEventMap ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_abort: 'tags this -> Event.t [@@js.get "abort"]
  val set_abort: 'tags this -> Event.t -> unit [@@js.set "abort"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
end

(** A controller object that allows you to abort one or more DOM requests as and when desired. *)
module[@js.scope "AbortController"] rec AbortController : sig
  type t = [`AbortController] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  type t_0 = t
  [@@@js.stop]
  type tags = [`AbortController]
  type tags_0 = tags
  [@@@js.start]
  [@@@js.implem 
    type tags = [`AbortController]
    type tags_0 = tags
  ]
  type 'tags this = 'tags intf constraint 'tags = [> `AbortController ]
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  
  (** Returns the AbortSignal object associated with this object. *)
  val get_signal: 'tags this -> AbortSignal.t [@@js.get "signal"]
  
  (** Invoking this method will set this object's AbortSignal's aborted flag and signal to any observers that the associated activity is to be aborted. *)
  val abort: 'tags this -> unit [@@js.call "abort"]
  val cast_from: ('tags this -> t) [@@js.custom let cast_from = Obj.magic]
  val prototype: unit -> t [@@js.get "prototype"]
  val create: unit -> t [@@js.create]
end
and AnonymousInterface0 : sig
  type t = private Ojs.t
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  val get_prototype: t -> AbortController.t [@@js.get "prototype"]
  val set_prototype: t -> AbortController.t -> unit [@@js.set "prototype"]
  val create: t -> AbortController.t [@@js.apply_newable]
end

(** Fetches each URL in urls, executes them one-by-one in the order they are passed, and then returns (or throws if something went amiss). *)
val importScripts: (string list [@js.variadic]) -> unit [@@js.global "importScripts"]

(** A controller object that allows you to abort one or more DOM requests as and when desired. *)
val abortController: unit -> AnonymousInterface0.t [@@js.get "AbortController"]

(** A signal object that allows you to communicate with a DOM request (such as a Fetch) and abort it if required via an AbortController object. *)
val abortSignal: unit -> AnonymousInterface1.t [@@js.get "AbortSignal"]

(** A file-like object of immutable, raw data. Blobs represent data that isn't necessarily in a JavaScript-native format. The File interface is based on Blob, inheriting blob functionality and expanding it to support files on the user's system. *)
val blob: unit -> AnonymousInterface2.t [@@js.get "Blob"]
val broadcastChannel: unit -> AnonymousInterface3.t [@@js.get "BroadcastChannel"]

(** This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams. *)
val byteLengthQueuingStrategy: unit -> AnonymousInterface4.t [@@js.get "ByteLengthQueuingStrategy"]

(**
  Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
  Available only in secure contexts.
*)
val cache: unit -> AnonymousInterface5.t [@@js.get "Cache"]

(**
  The storage for Cache objects.
  Available only in secure contexts.
*)
val cacheStorage: unit -> AnonymousInterface6.t [@@js.get "CacheStorage"]

(** An opaque object describing a gradient. It is returned by the methods CanvasRenderingContext2D.createLinearGradient() or CanvasRenderingContext2D.createRadialGradient(). *)
val canvasGradient: unit -> AnonymousInterface7.t [@@js.get "CanvasGradient"]

(** An opaque object describing a pattern, based on an image, a canvas, or a video, created by the CanvasRenderingContext2D.createPattern() method. *)
val canvasPattern: unit -> AnonymousInterface8.t [@@js.get "CanvasPattern"]

(** The Client interface represents an executable context such as a Worker, or a SharedWorker. Window clients are represented by the more-specific WindowClient. You can get Client/WindowClient objects from methods such as Clients.matchAll() and Clients.get(). *)
val client: unit -> AnonymousInterface9.t [@@js.get "Client"]

(** Provides access to Client objects. Access it via self.clients within a service worker. *)
val clients: unit -> AnonymousInterface10.t [@@js.get "Clients"]

(** A CloseEvent is sent to clients using WebSockets when the connection is closed. This is delivered to the listener indicated by the WebSocket object's onclose attribute. *)
val closeEvent: unit -> AnonymousInterface11.t [@@js.get "CloseEvent"]

(** This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams. *)
val countQueuingStrategy: unit -> AnonymousInterface13.t [@@js.get "CountQueuingStrategy"]

(** Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives. *)
val crypto: unit -> AnonymousInterface14.t [@@js.get "Crypto"]

(**
  The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
  Available only in secure contexts.
*)
val cryptoKey: unit -> AnonymousInterface15.t [@@js.get "CryptoKey"]
val customEvent: unit -> AnonymousInterface16.t [@@js.get "CustomEvent"]

(** An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API. *)
val dOMException: unit -> AnonymousInterface17.t [@@js.get "DOMException"]
val dOMMatrix: unit -> AnonymousInterface18.t [@@js.get "DOMMatrix"]
val dOMMatrixReadOnly: unit -> AnonymousInterface19.t [@@js.get "DOMMatrixReadOnly"]
val dOMPoint: unit -> AnonymousInterface20.t [@@js.get "DOMPoint"]
val dOMPointReadOnly: unit -> AnonymousInterface21.t [@@js.get "DOMPointReadOnly"]
val dOMQuad: unit -> AnonymousInterface22.t [@@js.get "DOMQuad"]
val dOMRect: unit -> AnonymousInterface23.t [@@js.get "DOMRect"]
val dOMRectReadOnly: unit -> AnonymousInterface24.t [@@js.get "DOMRectReadOnly"]

(** A type returned by some APIs which contains a list of DOMString (strings). *)
val dOMStringList: unit -> AnonymousInterface25.t [@@js.get "DOMStringList"]

(** (the Worker global scope) is accessible through the self keyword. Some additional global functions, namespaces objects, and constructors, not typically associated with the worker global scope, but available on it, are listed in the JavaScript Reference. See also: Functions available to workers. *)
val dedicatedWorkerGlobalScope: unit -> AnonymousInterface26.t [@@js.get "DedicatedWorkerGlobalScope"]

(** Events providing information related to errors in scripts or in files. *)
val errorEvent: unit -> AnonymousInterface27.t [@@js.get "ErrorEvent"]

(** An event which takes place in the DOM. *)
val event: unit -> AnonymousInterface28.t [@@js.get "Event"]
val eventSource: unit -> AnonymousInterface29.t [@@js.get "EventSource"]

(** EventTarget is a DOM interface implemented by objects that can receive events and may have listeners for them. *)
val eventTarget: unit -> AnonymousInterface30.t [@@js.get "EventTarget"]

(** Extends the lifetime of the install and activate events dispatched on the global scope as part of the service worker lifecycle. This ensures that any functional events (like FetchEvent) are not dispatched until it upgrades database schemas and deletes the outdated cache entries. *)
val extendableEvent: unit -> AnonymousInterface31.t [@@js.get "ExtendableEvent"]

(** This ServiceWorker API interface represents the event object of a message event fired on a service worker (when a channel message is received on the ServiceWorkerGlobalScope from another context) — extends the lifetime of such events. *)
val extendableMessageEvent: unit -> AnonymousInterface32.t [@@js.get "ExtendableMessageEvent"]

(** This is the event type for fetch events dispatched on the service worker global scope. It contains information about the fetch, including the request and how the receiver will treat the response. It provides the event.respondWith() method, which allows us to provide a response to this fetch. *)
val fetchEvent: unit -> AnonymousInterface33.t [@@js.get "FetchEvent"]

(** Provides information about files and allows JavaScript in a web page to access their content. *)
val file: unit -> AnonymousInterface34.t [@@js.get "File"]

(** An object of this type is returned by the files property of the HTML <input> element; this lets you access the list of files selected with the <input type="file"> element. It's also used for a list of files dropped into web content when using the drag and drop API; see the DataTransfer object for details on this usage. *)
val fileList: unit -> AnonymousInterface35.t [@@js.get "FileList"]

(** Lets web applications asynchronously read the contents of files (or raw data buffers) stored on the user's computer, using File or Blob objects to specify the file or data to read. *)
val fileReader: unit -> AnonymousInterface36.t [@@js.get "FileReader"]

(** Allows to read File or Blob objects in a synchronous way. *)
val fileReaderSync: unit -> AnonymousInterface37.t [@@js.get "FileReaderSync"]
val fontFace: unit -> AnonymousInterface38.t [@@js.get "FontFace"]
val fontFaceSet: unit -> AnonymousInterface39.t [@@js.get "FontFaceSet"]
val fontFaceSetLoadEvent: unit -> AnonymousInterface40.t [@@js.get "FontFaceSetLoadEvent"]

(** Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data". *)
val formData: unit -> AnonymousInterface41.t [@@js.get "FormData"]

(** This Fetch API interface allows you to perform various actions on HTTP request and response headers. These actions include retrieving, setting, adding to, and removing. A Headers object has an associated header list, which is initially empty and consists of zero or more name and value pairs.  You can add to this using methods like append() (see Examples.) In all methods of this interface, header names are matched by case-insensitive byte sequence. *)
val headers: unit -> AnonymousInterface43.t [@@js.get "Headers"]

(** This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database. *)
val iDBCursor: unit -> AnonymousInterface44.t [@@js.get "IDBCursor"]

(** This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database. It is the same as the IDBCursor, except that it includes the value property. *)
val iDBCursorWithValue: unit -> AnonymousInterface45.t [@@js.get "IDBCursorWithValue"]

(** This IndexedDB API interface provides a connection to a database; you can use an IDBDatabase object to open a transaction on your database then create, manipulate, and delete objects (data) in that database. The interface provides the only way to get and manage versions of the database. *)
val iDBDatabase: unit -> AnonymousInterface46.t [@@js.get "IDBDatabase"]

(** In the following code snippet, we make a request to open a database, and include handlers for the success and error cases. For a full working example, see our To-do Notifications app (view example live.) *)
val iDBFactory: unit -> AnonymousInterface47.t [@@js.get "IDBFactory"]

(** IDBIndex interface of the IndexedDB API provides asynchronous access to an index in a database. An index is a kind of object store for looking up records in another object store, called the referenced object store. You use this interface to retrieve data. *)
val iDBIndex: unit -> AnonymousInterface48.t [@@js.get "IDBIndex"]

(** A key range can be a single value or a range with upper and lower bounds or endpoints. If the key range has both upper and lower bounds, then it is bounded; if it has no bounds, it is unbounded. A bounded key range can either be open (the endpoints are excluded) or closed (the endpoints are included). To retrieve all keys within a certain range, you can use the following code constructs: *)
val iDBKeyRange: unit -> AnonymousInterface49.t [@@js.get "IDBKeyRange"]

(** This example shows a variety of different uses of object stores, from updating the data structure with IDBObjectStore.createIndex inside an onupgradeneeded function, to adding a new item to our object store with IDBObjectStore.add. For a full working example, see our To-do Notifications app (view example live.) *)
val iDBObjectStore: unit -> AnonymousInterface50.t [@@js.get "IDBObjectStore"]

(** Also inherits methods from its parents IDBRequest and EventTarget. *)
val iDBOpenDBRequest: unit -> AnonymousInterface51.t [@@js.get "IDBOpenDBRequest"]

(** The request object does not initially contain any information about the result of the operation, but once information becomes available, an event is fired on the request, and the information becomes available through the properties of the IDBRequest instance. *)
val iDBRequest: unit -> AnonymousInterface52.t [@@js.get "IDBRequest"]
val iDBTransaction: unit -> AnonymousInterface53.t [@@js.get "IDBTransaction"]

(** This IndexedDB API interface indicates that the version of the database has changed, as the result of an IDBOpenDBRequest.onupgradeneeded event handler function. *)
val iDBVersionChangeEvent: unit -> AnonymousInterface54.t [@@js.get "IDBVersionChangeEvent"]
val imageBitmap: unit -> AnonymousInterface55.t [@@js.get "ImageBitmap"]
val imageBitmapRenderingContext: unit -> AnonymousInterface56.t [@@js.get "ImageBitmapRenderingContext"]

(** The underlying pixel data of an area of a <canvas> element. It is created using the ImageData() constructor or creator methods on the CanvasRenderingContext2D object associated with a canvas: createImageData() and getImageData(). It can also be used to set a part of the canvas by using putImageData(). *)
val imageData: unit -> AnonymousInterface57.t [@@js.get "ImageData"]
val mediaCapabilities: unit -> AnonymousInterface60.t [@@js.get "MediaCapabilities"]

(** This Channel Messaging API interface allows us to create a new message channel and send data through it via its two MessagePort properties. *)
val messageChannel: unit -> AnonymousInterface62.t [@@js.get "MessageChannel"]

(** A message received by a target object. *)
val messageEvent: unit -> AnonymousInterface63.t [@@js.get "MessageEvent"]

(** This Channel Messaging API interface represents one of the two ports of a MessageChannel, allowing messages to be sent from one port and listening out for them arriving at the other. *)
val messagePort: unit -> AnonymousInterface64.t [@@js.get "MessagePort"]
val networkInformation: unit -> AnonymousInterface66.t [@@js.get "NetworkInformation"]

(** This Notifications API interface is used to configure and display desktop notifications to the user. *)
val notification: unit -> AnonymousInterface67.t [@@js.get "Notification"]

(** The parameter passed into the onnotificationclick handler, the NotificationEvent interface represents a notification click event that is dispatched on the ServiceWorkerGlobalScope of a ServiceWorker. *)
val notificationEvent: unit -> AnonymousInterface68.t [@@js.get "NotificationEvent"]

(** This Canvas 2D API interface is used to declare a path that can then be used on a CanvasRenderingContext2D object. The path methods of the CanvasRenderingContext2D interface are also present on this interface, which gives you the convenience of being able to retain and replay your path whenever desired. *)
val path2D: unit -> AnonymousInterface69.t [@@js.get "Path2D"]

(** Provides access to performance-related information for the current page. It's part of the High Resolution Time API, but is enhanced by the Performance Timeline API, the Navigation Timing API, the User Timing API, and the Resource Timing API. *)
val performance: unit -> AnonymousInterface70.t [@@js.get "Performance"]

(** Encapsulates a single performance metric that is part of the performance timeline. A performance entry can be directly created by making a performance mark or measure (for example by calling the mark() method) at an explicit point in an application. Performance entries are also created in indirect ways such as loading a resource (such as an image). *)
val performanceEntry: unit -> AnonymousInterface71.t [@@js.get "PerformanceEntry"]

(** PerformanceMark is an abstract interface for PerformanceEntry objects with an entryType of "mark". Entries of this type are created by calling performance.mark() to add a named DOMHighResTimeStamp (the mark) to the browser's performance timeline. *)
val performanceMark: unit -> AnonymousInterface72.t [@@js.get "PerformanceMark"]

(** PerformanceMeasure is an abstract interface for PerformanceEntry objects with an entryType of "measure". Entries of this type are created by calling performance.measure() to add a named DOMHighResTimeStamp (the measure) between two marks to the browser's performance timeline. *)
val performanceMeasure: unit -> AnonymousInterface73.t [@@js.get "PerformanceMeasure"]
val performanceObserver: unit -> AnonymousInterface74.t [@@js.get "PerformanceObserver"]
val performanceObserverEntryList: unit -> AnonymousInterface75.t [@@js.get "PerformanceObserverEntryList"]

(** Enables retrieval and analysis of detailed network timing data regarding the loading of an application's resources. An application can use the timing metrics to determine, for example, the length of time it takes to fetch a specific resource, such as an XMLHttpRequest, <SVG>, image, or script. *)
val performanceResourceTiming: unit -> AnonymousInterface76.t [@@js.get "PerformanceResourceTiming"]
val performanceServerTiming: unit -> AnonymousInterface77.t [@@js.get "PerformanceServerTiming"]
val permissionStatus: unit -> AnonymousInterface78.t [@@js.get "PermissionStatus"]
val permissions: unit -> AnonymousInterface79.t [@@js.get "Permissions"]

(** Events measuring progress of an underlying process, like an HTTP request (for an XMLHttpRequest, or the loading of the underlying resource of an <img>, <audio>, <video>, <style> or <link>). *)
val progressEvent: unit -> AnonymousInterface80.t [@@js.get "ProgressEvent"]
val promiseRejectionEvent: unit -> AnonymousInterface81.t [@@js.get "PromiseRejectionEvent"]

(**
  This Push API interface represents a push message that has been received. This event is sent to the global scope of a ServiceWorker. It contains the information sent from an application server to a PushSubscription.
  Available only in secure contexts.
*)
val pushEvent: unit -> AnonymousInterface82.t [@@js.get "PushEvent"]

(**
  This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
  Available only in secure contexts.
*)
val pushManager: unit -> AnonymousInterface83.t [@@js.get "PushManager"]

(**
  This Push API interface provides methods which let you retrieve the push data sent by a server in various formats.
  Available only in secure contexts.
*)
val pushMessageData: unit -> AnonymousInterface84.t [@@js.get "PushMessageData"]

(**
  This Push API interface provides a subcription's URL endpoint and allows unsubscription from a push service.
  Available only in secure contexts.
*)
val pushSubscription: unit -> AnonymousInterface85.t [@@js.get "PushSubscription"]

(** Available only in secure contexts. *)
val pushSubscriptionOptions: unit -> AnonymousInterface86.t [@@js.get "PushSubscriptionOptions"]

(** This Streams API interface represents a readable stream of byte data. The Fetch API offers a concrete instance of a ReadableStream through the body property of a Response object. *)
val readableStream: unit -> AnonymousInterface87.t [@@js.get "ReadableStream"]
val readableStreamDefaultController: unit -> AnonymousInterface88.t [@@js.get "ReadableStreamDefaultController"]
val readableStreamDefaultReader: unit -> AnonymousInterface89.t [@@js.get "ReadableStreamDefaultReader"]

(** This Fetch API interface represents a resource request. *)
val request: unit -> AnonymousInterface90.t [@@js.get "Request"]

(** This Fetch API interface represents the response to a request. *)
val response: unit -> AnonymousInterface91.t [@@js.get "Response"]

(** Inherits from Event, and represents the event object of an event sent on a document or worker when its content security policy is violated. *)
val securityPolicyViolationEvent: unit -> AnonymousInterface93.t [@@js.get "SecurityPolicyViolationEvent"]

(**
  This ServiceWorker API interface provides a reference to a service worker. Multiple browsing contexts (e.g. pages, workers, etc.) can be associated with the same service worker, each through a unique ServiceWorker object.
  Available only in secure contexts.
*)
val serviceWorker: unit -> AnonymousInterface94.t [@@js.get "ServiceWorker"]

(**
  The ServiceWorkerContainer interface of the ServiceWorker API provides an object representing the service worker as an overall unit in the network ecosystem, including facilities to register, unregister and update service workers, and access the state of service workers and their registrations.
  Available only in secure contexts.
*)
val serviceWorkerContainer: unit -> AnonymousInterface95.t [@@js.get "ServiceWorkerContainer"]

(** This ServiceWorker API interface represents the global execution context of a service worker. *)
val serviceWorkerGlobalScope: unit -> AnonymousInterface96.t [@@js.get "ServiceWorkerGlobalScope"]

(**
  This ServiceWorker API interface represents the service worker registration. You register a service worker to control one or more pages that share the same origin.
  Available only in secure contexts.
*)
val serviceWorkerRegistration: unit -> AnonymousInterface97.t [@@js.get "ServiceWorkerRegistration"]
val sharedWorkerGlobalScope: unit -> AnonymousInterface98.t [@@js.get "SharedWorkerGlobalScope"]

(** Available only in secure contexts. *)
val storageManager: unit -> AnonymousInterface99.t [@@js.get "StorageManager"]

(**
  This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
  Available only in secure contexts.
*)
val subtleCrypto: unit -> AnonymousInterface100.t [@@js.get "SubtleCrypto"]

(** A decoder for a specific method, that is a specific character encoding, like utf-8, iso-8859-2, koi8, cp1261, gbk, etc. A decoder takes a stream of bytes as input and emits a stream of code points. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays. *)
val textDecoder: unit -> AnonymousInterface102.t [@@js.get "TextDecoder"]
val textDecoderStream: unit -> AnonymousInterface103.t [@@js.get "TextDecoderStream"]

(** TextEncoder takes a stream of code points as input and emits a stream of bytes. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays. *)
val textEncoder: unit -> AnonymousInterface104.t [@@js.get "TextEncoder"]
val textEncoderStream: unit -> AnonymousInterface105.t [@@js.get "TextEncoderStream"]

(** The dimensions of a piece of text in the canvas, as created by the CanvasRenderingContext2D.measureText() method. *)
val textMetrics: unit -> AnonymousInterface106.t [@@js.get "TextMetrics"]
val transformStream: unit -> AnonymousInterface107.t [@@js.get "TransformStream"]
val transformStreamDefaultController: unit -> AnonymousInterface108.t [@@js.get "TransformStreamDefaultController"]

(** The URL interface represents an object providing static methods used for creating object URLs. *)
val url: unit -> AnonymousInterface109.t [@@js.get "URL"]
val uRLSearchParams: unit -> AnonymousInterface110.t [@@js.get "URLSearchParams"]
val webGL2RenderingContext: unit -> AnonymousInterface111.t [@@js.get "WebGL2RenderingContext"]

(** Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getActiveAttrib() and WebGLRenderingContext.getActiveUniform() methods. *)
val webGLActiveInfo: unit -> AnonymousInterface112.t [@@js.get "WebGLActiveInfo"]

(** Part of the WebGL API and represents an opaque buffer object storing data such as vertices or colors. *)
val webGLBuffer: unit -> AnonymousInterface113.t [@@js.get "WebGLBuffer"]

(** The WebContextEvent interface is part of the WebGL API and is an interface for an event that is generated in response to a status change to the WebGL rendering context. *)
val webGLContextEvent: unit -> AnonymousInterface114.t [@@js.get "WebGLContextEvent"]

(** Part of the WebGL API and represents a collection of buffers that serve as a rendering destination. *)
val webGLFramebuffer: unit -> AnonymousInterface115.t [@@js.get "WebGLFramebuffer"]

(** The WebGLProgram is part of the WebGL API and is a combination of two compiled WebGLShaders consisting of a vertex shader and a fragment shader (both written in GLSL). *)
val webGLProgram: unit -> AnonymousInterface116.t [@@js.get "WebGLProgram"]
val webGLQuery: unit -> AnonymousInterface117.t [@@js.get "WebGLQuery"]

(** Part of the WebGL API and represents a buffer that can contain an image, or can be source or target of an rendering operation. *)
val webGLRenderbuffer: unit -> AnonymousInterface118.t [@@js.get "WebGLRenderbuffer"]

(** Provides an interface to the OpenGL ES 2.0 graphics rendering context for the drawing surface of an HTML <canvas> element. *)
val webGLRenderingContext: unit -> AnonymousInterface119.t [@@js.get "WebGLRenderingContext"]
val webGLSampler: unit -> AnonymousInterface120.t [@@js.get "WebGLSampler"]

(** The WebGLShader is part of the WebGL API and can either be a vertex or a fragment shader. A WebGLProgram requires both types of shaders. *)
val webGLShader: unit -> AnonymousInterface121.t [@@js.get "WebGLShader"]

(** Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getShaderPrecisionFormat() method. *)
val webGLShaderPrecisionFormat: unit -> AnonymousInterface122.t [@@js.get "WebGLShaderPrecisionFormat"]
val webGLSync: unit -> AnonymousInterface123.t [@@js.get "WebGLSync"]

(** Part of the WebGL API and represents an opaque texture object providing storage and state for texturing operations. *)
val webGLTexture: unit -> AnonymousInterface124.t [@@js.get "WebGLTexture"]
val webGLTransformFeedback: unit -> AnonymousInterface125.t [@@js.get "WebGLTransformFeedback"]

(** Part of the WebGL API and represents the location of a uniform variable in a shader program. *)
val webGLUniformLocation: unit -> AnonymousInterface126.t [@@js.get "WebGLUniformLocation"]
val webGLVertexArrayObject: unit -> AnonymousInterface127.t [@@js.get "WebGLVertexArrayObject"]

(** Provides the API for creating and managing a WebSocket connection to a server, as well as for sending and receiving data on the connection. *)
val webSocket: unit -> AnonymousInterface128.t [@@js.get "WebSocket"]

(** This ServiceWorker API interface represents the scope of a service worker client that is a document in a browser context, controlled by an active worker. The service worker client independently selects and uses a service worker for its own loading and sub-resources. *)
val windowClient: unit -> AnonymousInterface129.t [@@js.get "WindowClient"]

(** This Web Workers API interface represents a background task that can be easily created and can send messages back to its creator. Creating a worker is as simple as calling the Worker() constructor and specifying a script to be run in the worker thread. *)
val worker: unit -> AnonymousInterface130.t [@@js.get "Worker"]

(** This Web Workers API interface is an interface representing the scope of any worker. Workers have no browsing context; this scope contains the information usually conveyed by Window objects — in this case event handlers, the console or the associated WorkerNavigator object. Each WorkerGlobalScope has its own event loop. *)
val workerGlobalScope: unit -> AnonymousInterface131.t [@@js.get "WorkerGlobalScope"]

(** The absolute location of the script executed by the Worker. Such an object is initialized for each worker and is available via the WorkerGlobalScope.location property obtained by calling self.location. *)
val workerLocation: unit -> AnonymousInterface132.t [@@js.get "WorkerLocation"]

(** A subset of the Navigator interface allowed to be accessed from a Worker. Such an object is initialized for each worker and is available via the WorkerGlobalScope.navigator property obtained by calling window.self.navigator. *)
val workerNavigator: unit -> AnonymousInterface133.t [@@js.get "WorkerNavigator"]

(** This Streams API interface provides a standard abstraction for writing streaming data to a destination, known as a sink. This object comes with built-in backpressure and queuing. *)
val writableStream: unit -> AnonymousInterface134.t [@@js.get "WritableStream"]

(** This Streams API interface represents a controller allowing control of a WritableStream's state. When constructing a WritableStream, the underlying sink is given a corresponding WritableStreamDefaultController instance to manipulate. *)
val writableStreamDefaultController: unit -> AnonymousInterface135.t [@@js.get "WritableStreamDefaultController"]

(** This Streams API interface is the object returned by WritableStream.getWriter() and once created locks the < writer to the WritableStream ensuring that no other streams can write to the underlying sink. *)
val writableStreamDefaultWriter: unit -> AnonymousInterface136.t [@@js.get "WritableStreamDefaultWriter"]

(** Use XMLHttpRequest (XHR) objects to interact with servers. You can retrieve data from a URL without having to do a full page refresh. This enables a Web page to update just part of a page without disrupting what the user is doing. *)
val xMLHttpRequest: unit -> AnonymousInterface137.t [@@js.get "XMLHttpRequest"]
val xMLHttpRequestEventTarget: unit -> AnonymousInterface138.t [@@js.get "XMLHttpRequestEventTarget"]
val xMLHttpRequestUpload: unit -> AnonymousInterface139.t [@@js.get "XMLHttpRequestUpload"]
val console: unit -> Console.t [@@js.get "console"]

(** Returns dedicatedWorkerGlobal's name, i.e. the value given to the Worker constructor. Primarily useful for debugging. *)
val name: unit -> string [@@js.get "name"]
val onmessage: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessage"]
val onmessageerror: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:MessageEvent.t_0 -> any) or_null [@@js.get "onmessageerror"]

(** Aborts dedicatedWorkerGlobal. *)
val close: unit -> unit [@@js.global "close"]

(** Clones message and transmits it to the Worker object associated with dedicatedWorkerGlobal. transfer can be passed as a list of objects that are to be transferred rather than cloned. *)
val postMessage: message:any -> transfer:Transferable.t list -> unit [@@js.global "postMessage"]

(**
  Clones message and transmits it to the Worker object associated with dedicatedWorkerGlobal. transfer can be passed as a list of objects that are to be transferred rather than cloned.
  
  
  Posts a message to the given window. Messages can be structured objects, e.g. nested objects and arrays, can contain JavaScript values (strings, numbers, Date objects, etc), and can contain certain data objects such as File Blob, FileList, and ArrayBuffer objects.
  
  Objects listed in the transfer member of options are transferred, not just cloned, meaning that they are no longer usable on the sending side.
  
  A target origin can be specified using the targetOrigin member of options. If not provided, it defaults to "/". This default restricts the message to same-origin targets only.
  
  If the origin of the target window doesn't match the given target origin, the message is discarded, to avoid information leakage. To send the message to the target regardless of origin, set the target origin to "*".
  
  Throws a "DataCloneError" DOMException if transfer array contains duplicate objects or if message could not be cloned.
*)
val postMessage': message:any -> ?options:StructuredSerializeOptions.t -> unit -> unit [@@js.global "postMessage"]

(** Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise. *)
val dispatchEvent: Event.t -> bool [@@js.global "dispatchEvent"]

(** Returns workerGlobal's WorkerLocation object. *)
val location: unit -> WorkerLocation.t [@@js.get "location"]

(** Returns workerGlobal's WorkerNavigator object. *)
val navigator: unit -> WorkerNavigator.t [@@js.get "navigator"]

(** Fires when an error occurs during object loading. *)
val onerror: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:ErrorEvent.t -> any) or_null [@@js.get "onerror"]
val onlanguagechange: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:Event.t -> any) or_null [@@js.get "onlanguagechange"]
val onoffline: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:Event.t -> any) or_null [@@js.get "onoffline"]
val ononline: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:Event.t -> any) or_null [@@js.get "ononline"]
val onrejectionhandled: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:PromiseRejectionEvent.t -> any) or_null [@@js.get "onrejectionhandled"]
val onunhandledrejection: unit -> (this:DedicatedWorkerGlobalScope.t -> ev:PromiseRejectionEvent.t -> any) or_null [@@js.get "onunhandledrejection"]

(** Returns workerGlobal. *)
val self: unit -> (WorkerGlobalScope.t, (* FIXME: unknown type 'typeof globalThis' *)any) intersection2 [@@js.get "self"]

(** Fetches each URL in urls, executes them one-by-one in the order they are passed, and then returns (or throws if something went amiss). *)
val importScripts': (URL.t or_string list [@js.variadic]) -> unit [@@js.global "importScripts"]
val fonts: unit -> FontFaceSet.t [@@js.get "fonts"]

(** Available only in secure contexts. *)
val caches: unit -> CacheStorage.t [@@js.get "caches"]
val crossOriginIsolated: unit -> bool [@@js.get "crossOriginIsolated"]
val crypto': unit -> Crypto.t [@@js.get "crypto"]
val indexedDB: unit -> IDBFactory.t [@@js.get "indexedDB"]
val isSecureContext: unit -> bool [@@js.get "isSecureContext"]
val origin: unit -> string [@@js.get "origin"]
val performance': unit -> Performance.t [@@js.get "performance"]
val atob: string -> string [@@js.global "atob"]
val btoa: string -> string [@@js.global "btoa"]
val clearInterval: ?handle:float -> unit -> unit [@@js.global "clearInterval"]
val clearTimeout: ?handle:float -> unit -> unit [@@js.global "clearTimeout"]
val createImageBitmap: image:ImageBitmapSource.t -> ?options:ImageBitmapOptions.t -> unit -> ImageBitmap.t Promise.t_1 [@@js.global "createImageBitmap"]
val createImageBitmap': image:ImageBitmapSource.t -> sx:float -> sy:float -> sw:float -> sh:float -> ?options:ImageBitmapOptions.t -> unit -> ImageBitmap.t Promise.t_1 [@@js.global "createImageBitmap"]
val fetch: input:RequestInfo.t -> ?init:RequestInit.t -> unit -> Response.t Promise.t_1 [@@js.global "fetch"]
val queueMicrotask: VoidFunction.t -> unit [@@js.global "queueMicrotask"]
val setInterval: handler:TimerHandler.t -> ?timeout:float -> arguments:(any list [@js.variadic]) -> unit -> float [@@js.global "setInterval"]
val setTimeout: handler:TimerHandler.t -> ?timeout:float -> arguments:(any list [@js.variadic]) -> unit -> float [@@js.global "setTimeout"]
val cancelAnimationFrame: float -> unit [@@js.global "cancelAnimationFrame"]
val requestAnimationFrame: FrameRequestCallback.t -> float [@@js.global "requestAnimationFrame"]
val addEventListener: type_:'K -> listener:(this:DedicatedWorkerGlobalScope.t -> ev:(* FIXME: unknown type 'DedicatedWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.global "addEventListener"]
val addEventListener': type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:AddEventListenerOptions.t or_boolean -> unit -> unit [@@js.global "addEventListener"]
val removeEventListener: type_:'K -> listener:(this:DedicatedWorkerGlobalScope.t -> ev:(* FIXME: unknown type 'DedicatedWorkerGlobalScopeEventMap[K]' *)any -> any) -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.global "removeEventListener"]
val removeEventListener': type_:string -> listener:EventListenerOrEventListenerObject.t -> ?options:EventListenerOptions.t or_boolean -> unit -> unit [@@js.global "removeEventListener"]