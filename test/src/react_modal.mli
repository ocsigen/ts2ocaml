[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(*
  
    unknown identifiers:
    - Element
    - HTMLDivElement
    - HTMLElement
    - React.CSSProperties
    - React.Component<T1>
    - React.ComponentPropsWithRef<T1>
    - React.KeyboardEvent
    - React.MouseEvent
    - React.ReactElement
    - React.ReactNode

*)
[@@@js.stop]
module type Missing = sig
  module Element : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module HTMLDivElement : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module HTMLElement : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module React : sig
    module CSSProperties : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Component : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ComponentPropsWithRef : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module KeyboardEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MouseEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ReactElement : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ReactNode : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Element : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HTMLDivElement : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HTMLElement : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module React : sig
      module CSSProperties : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Component : sig
        type 'T1 t_1
        val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
      end
      module ComponentPropsWithRef : sig
        type 'T1 t_1
        val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
      end
      module KeyboardEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module MouseEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ReactElement : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ReactNode : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
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
      type _ReactModal = [`ReactModal] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ReactModal_Aria = [`ReactModal_Aria] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ReactModal_Classes = [`ReactModal_Classes] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ReactModal_OnAfterOpenCallback = [`ReactModal_OnAfterOpenCallback] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ReactModal_OnAfterOpenCallbackOptions = [`ReactModal_OnAfterOpenCallbackOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ReactModal_Props = [`ReactModal_Props] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ReactModal_Styles = [`ReactModal_Styles] intf
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
    val get_overlay: t -> HTMLDivElement.t_0 or_null [@@js.get "overlay"]
    val set_overlay: t -> HTMLDivElement.t_0 or_null -> unit [@@js.set "overlay"]
    val get_content: t -> HTMLDivElement.t_0 or_null [@@js.get "content"]
    val set_content: t -> HTMLDivElement.t_0 or_null -> unit [@@js.set "content"]
  end
  (* { comments = []
    isTypeOnly = false
    isExported = No
    moduleSpecifier = react
    clause = NamespaceImport ([object Object]) } *)
  (* CommonJsExport ({ name = [ReactModal]
    fullName = [ReactModal]
    loc = line 17, col 10 of node_modules/@types/react-modal/index.d.ts }) *)
  (* NamespaceExport ReactModal *)
  module[@js.scope "ReactModal"] ReactModal : sig
    module[@js.scope "Styles"] Styles : sig
      type t = _ReactModal_Styles
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_content: t -> React.CSSProperties.t_0 [@@js.get "content"]
      val set_content: t -> React.CSSProperties.t_0 -> unit [@@js.set "content"]
      val get_overlay: t -> React.CSSProperties.t_0 [@@js.get "overlay"]
      val set_overlay: t -> React.CSSProperties.t_0 -> unit [@@js.set "overlay"]
    end
    module[@js.scope "Classes"] Classes : sig
      type t = _ReactModal_Classes
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_base: t -> string [@@js.get "base"]
      val set_base: t -> string -> unit [@@js.set "base"]
      val get_afterOpen: t -> string [@@js.get "afterOpen"]
      val set_afterOpen: t -> string -> unit [@@js.set "afterOpen"]
      val get_beforeClose: t -> string [@@js.get "beforeClose"]
      val set_beforeClose: t -> string -> unit [@@js.set "beforeClose"]
    end
    module[@js.scope "Aria"] Aria : sig
      type t = _ReactModal_Aria
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Defines a string value that labels the current element. *)
      (** Defines a string value that labels the current element. *)
      val get_labelledby: t -> string [@@js.get "labelledby"]
      (** Defines a string value that labels the current element. *)
      val set_labelledby: t -> string -> unit [@@js.set "labelledby"]
      (** Identifies the element (or elements) that describes the object. *)
      (** Identifies the element (or elements) that describes the object. *)
      val get_describedby: t -> string [@@js.get "describedby"]
      (** Identifies the element (or elements) that describes the object. *)
      val set_describedby: t -> string -> unit [@@js.set "describedby"]
      (** Indicates whether an element is modal when displayed. *)
      (** Indicates whether an element is modal when displayed. *)
      val get_modal: t -> ([`L_s1_false[@js "false"] | `L_s2_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "modal"]
      (** Indicates whether an element is modal when displayed. *)
      val set_modal: t -> ([`L_s1_false | `L_s2_true] [@js.enum]) or_boolean -> unit [@@js.set "modal"]
    end
    (** Describes overlay and content element references passed to onAfterOpen function *)
    module[@js.scope "OnAfterOpenCallbackOptions"] OnAfterOpenCallbackOptions : sig
      type t = _ReactModal_OnAfterOpenCallbackOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** overlay element reference *)
      (** overlay element reference *)
      val get_overlayEl: t -> Element.t_0 [@@js.get "overlayEl"]
      (** overlay element reference *)
      val set_overlayEl: t -> Element.t_0 -> unit [@@js.set "overlayEl"]
      (** content element reference *)
      (** content element reference *)
      val get_contentEl: t -> HTMLDivElement.t_0 [@@js.get "contentEl"]
      (** content element reference *)
      val set_contentEl: t -> HTMLDivElement.t_0 -> unit [@@js.set "contentEl"]
    end
    (** Describes unction that will be run after the modal has opened *)
    module[@js.scope "OnAfterOpenCallback"] OnAfterOpenCallback : sig
      type t = _ReactModal_OnAfterOpenCallback
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> ?obj:_ReactModal_OnAfterOpenCallbackOptions -> unit -> unit [@@js.apply]
    end
    module[@js.scope "Props"] Props : sig
      type t = _ReactModal_Props
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_isOpen: t -> bool [@@js.get "isOpen"]
      val set_isOpen: t -> bool -> unit [@@js.set "isOpen"]
      val get_style: t -> _ReactModal_Styles [@@js.get "style"]
      val set_style: t -> _ReactModal_Styles -> unit [@@js.set "style"]
      val get_portalClassName: t -> string [@@js.get "portalClassName"]
      val set_portalClassName: t -> string -> unit [@@js.set "portalClassName"]
      val get_bodyOpenClassName: t -> string or_null [@@js.get "bodyOpenClassName"]
      val set_bodyOpenClassName: t -> string or_null -> unit [@@js.set "bodyOpenClassName"]
      val get_htmlOpenClassName: t -> string or_null [@@js.get "htmlOpenClassName"]
      val set_htmlOpenClassName: t -> string or_null -> unit [@@js.set "htmlOpenClassName"]
      val get_className: t -> _ReactModal_Classes or_string [@@js.get "className"]
      val set_className: t -> _ReactModal_Classes or_string -> unit [@@js.set "className"]
      val get_overlayClassName: t -> _ReactModal_Classes or_string [@@js.get "overlayClassName"]
      val set_overlayClassName: t -> _ReactModal_Classes or_string -> unit [@@js.set "overlayClassName"]
      val get_appElement: t -> (HTMLElement.t_0, anonymous_interface_0) union2 [@@js.get "appElement"]
      val set_appElement: t -> (HTMLElement.t_0, anonymous_interface_0) union2 -> unit [@@js.set "appElement"]
      val get_onAfterOpen: t -> _ReactModal_OnAfterOpenCallback [@@js.get "onAfterOpen"]
      val set_onAfterOpen: t -> _ReactModal_OnAfterOpenCallback -> unit [@@js.set "onAfterOpen"]
      val onAfterClose: t -> unit [@@js.call "onAfterClose"]
      val onRequestClose: t -> event:(React.KeyboardEvent.t_0, React.MouseEvent.t_0) union2 -> unit [@@js.call "onRequestClose"]
      val get_closeTimeoutMS: t -> float [@@js.get "closeTimeoutMS"]
      val set_closeTimeoutMS: t -> float -> unit [@@js.set "closeTimeoutMS"]
      val get_ariaHideApp: t -> bool [@@js.get "ariaHideApp"]
      val set_ariaHideApp: t -> bool -> unit [@@js.set "ariaHideApp"]
      val get_shouldFocusAfterRender: t -> bool [@@js.get "shouldFocusAfterRender"]
      val set_shouldFocusAfterRender: t -> bool -> unit [@@js.set "shouldFocusAfterRender"]
      val get_shouldCloseOnOverlayClick: t -> bool [@@js.get "shouldCloseOnOverlayClick"]
      val set_shouldCloseOnOverlayClick: t -> bool -> unit [@@js.set "shouldCloseOnOverlayClick"]
      val get_shouldCloseOnEsc: t -> bool [@@js.get "shouldCloseOnEsc"]
      val set_shouldCloseOnEsc: t -> bool -> unit [@@js.set "shouldCloseOnEsc"]
      val get_shouldReturnFocusAfterClose: t -> bool [@@js.get "shouldReturnFocusAfterClose"]
      val set_shouldReturnFocusAfterClose: t -> bool -> unit [@@js.set "shouldReturnFocusAfterClose"]
      val get_preventScroll: t -> bool [@@js.get "preventScroll"]
      val set_preventScroll: t -> bool -> unit [@@js.set "preventScroll"]
      val parentSelector: t -> HTMLElement.t_0 [@@js.call "parentSelector"]
      val get_aria: t -> _ReactModal_Aria [@@js.get "aria"]
      val set_aria: t -> _ReactModal_Aria -> unit [@@js.set "aria"]
      val get_data: t -> any [@@js.get "data"]
      val set_data: t -> any -> unit [@@js.set "data"]
      val get_role: t -> string or_null [@@js.get "role"]
      val set_role: t -> string or_null -> unit [@@js.set "role"]
      val get_contentLabel: t -> string [@@js.get "contentLabel"]
      val set_contentLabel: t -> string -> unit [@@js.set "contentLabel"]
      val contentRef: t -> instance:HTMLDivElement.t_0 -> unit [@@js.call "contentRef"]
      val overlayRef: t -> instance:HTMLDivElement.t_0 -> unit [@@js.call "overlayRef"]
      val overlayElement: t -> props:([`L_s0_div] [@js.enum]) React.ComponentPropsWithRef.t_1 -> contentEl:React.ReactElement.t_0 -> React.ReactElement.t_0 [@@js.call "overlayElement"]
      val contentElement: t -> props:([`L_s0_div] [@js.enum]) React.ComponentPropsWithRef.t_1 -> children:React.ReactNode.t_0 -> React.ReactElement.t_0 [@@js.call "contentElement"]
      val get_testId: t -> string [@@js.get "testId"]
      val set_testId: t -> string -> unit [@@js.set "testId"]
      val get_id: t -> string [@@js.get "id"]
      val set_id: t -> string -> unit [@@js.set "id"]
    end
  end
  module[@js.scope "ReactModal"] ReactModal : sig
    type t = _ReactModal
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_defaultStyles: unit -> _ReactModal_Styles [@@js.get "defaultStyles"]
    val set_defaultStyles: _ReactModal_Styles -> unit [@@js.set "defaultStyles"]
    (**
      Call this to properly hide your application from assistive screenreaders
      and other assistive technologies while the modal is open.
    *)
    val setAppElement: appElement:HTMLElement.t_0 or_string -> unit [@@js.global "setAppElement"]
    val get_portal: t -> anonymous_interface_1 or_null [@@js.get "portal"]
    val set_portal: t -> anonymous_interface_1 or_null -> unit [@@js.set "portal"]
    val cast: t -> _ReactModal_Props React.Component.t_1 [@@js.cast]
  end
end
