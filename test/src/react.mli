[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml
open Ts2ocaml.Dom
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
    type anonymous_interface_8 = [`anonymous_interface_8] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type anonymous_interface_9 = [`anonymous_interface_9] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type 'E anonymous_interface_10 = [`anonymous_interface_10] intf
    [@@js.custom { of_js=(fun _E -> Obj.magic); to_js=(fun _E -> Obj.magic) }]
    type 'P anonymous_interface_11 = [`anonymous_interface_11] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    type ('P, 'T) anonymous_interface_12 = [`anonymous_interface_12] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    type 'T anonymous_interface_13 = [`anonymous_interface_13] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
  end
  module Types : sig
    open AnonymousInterfaces
    type _Booleanish = ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean
    and ('P, 'D) _Defaultize = (* FIXME: unknown type 'P extends any
        ? string extends keyof P ? P :
            & Pick<P, Exclude<keyof P, keyof D>>
            & Partial<Pick<P, Extract<keyof P, keyof D>>>
            & Partial<Pick<D, Exclude<keyof D, keyof P>>>
        : never' *)any
    and _Destructor = [`Destructor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _ExactlyAnyPropertyKeys = (* FIXME: unknown type '?({ [K in keyof T]: IsExactlyAny<T[K]> extends true ? K : never })[?('T)]' *)any
    and 'T _IsExactlyAny = (* FIXME: unknown type 'boolean extends (T extends never ? true : false) ? true : false' *)any
    and ('P, 'T) _MergePropTypes = (* FIXME: unknown type 'P extends any
            // If props is type any, use propTypes definitions
            ? IsExactlyAny<P> extends true ? T :
                // If declared props have indexed properties, ignore inferred props entirely as keyof gets widened
                string extends keyof P ? P :
                    // Prefer declared types which are not exactly any
                    & Pick<P, NotExactlyAnyPropertyKeys<P>>
                    // For props which are exactly any, use the type inferred from propTypes if present
                    & Pick<T, Exclude<keyof T, NotExactlyAnyPropertyKeys<P>>>
                    // Keep leftover props not specified in propTypes
                    & Pick<P, Exclude<keyof P, keyof T>>
            : never' *)any
    and _NativeAnimationEvent = AnimationEvent.t_0
    and _NativeClipboardEvent = ClipboardEvent.t_0
    and _NativeCompositionEvent = CompositionEvent.t_0
    and _NativeDragEvent = DragEvent.t_0
    and _NativeFocusEvent = FocusEvent.t_0
    and _NativeKeyboardEvent = KeyboardEvent.t_0
    and _NativeMouseEvent = MouseEvent.t_0
    and _NativePointerEvent = PointerEvent.t_0
    and _NativeTouchEvent = TouchEvent.t_0
    and _NativeTransitionEvent = TransitionEvent.t_0
    and _NativeUIEvent = UIEvent.t_0
    and _NativeWheelEvent = WheelEvent.t_0
    and 'T _NotExactlyAnyPropertyKeys = ((* FIXME: unknown type ''T' *)any, 'T _ExactlyAnyPropertyKeys) Exclude.t_2
    and _React_AbstractView = [`React_AbstractView] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_AllHTMLAttributes = [`React_AllHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_AnchorHTMLAttributes = [`React_AnchorHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_AnimationEvent = [`React_AnimationEvent of 'T | `React_BaseSyntheticEvent of (_NativeAnimationEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeAnimationEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_AnimationEventHandler = 'T _React_AnimationEvent _React_EventHandler
    and 'T _React_AreaHTMLAttributes = [`React_AreaHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_AriaAttributes = [`React_AriaAttributes] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _React_Attributes = [`React_Attributes] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_AudioHTMLAttributes = [`React_AriaAttributes | `React_AudioHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_BaseHTMLAttributes = [`React_AriaAttributes | `React_BaseHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('E, 'C, 'T) _React_BaseSyntheticEvent = [`React_BaseSyntheticEvent of ('E * 'C * 'T)] intf
    [@@js.custom { of_js=(fun _E _C _T -> Obj.magic); to_js=(fun _E _C _T -> Obj.magic) }]
    and 'T _React_BlockquoteHTMLAttributes = [`React_AriaAttributes | `React_BlockquoteHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ButtonHTMLAttributes = [`React_AriaAttributes | `React_ButtonHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('P, 'T) _React_CElement = ('P, 'T) _React_ComponentElement
    and ('P, 'T) _React_CFactory = ('P, 'T) _React_ComponentFactory
    and _React_CSSProperties = [`React_CSSProperties | CSS.Properties.tags] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_CanvasHTMLAttributes = [`React_AriaAttributes | `React_CanvasHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ChangeEvent = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_ChangeEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ChangeEventHandler = 'T _React_ChangeEvent _React_EventHandler
    and 'CC _React_ChildContextProvider = [`React_ChildContextProvider of 'CC] intf
    [@@js.custom { of_js=(fun _CC -> Obj.magic); to_js=(fun _CC -> Obj.magic) }]
    and 'T _React_ClassAttributes = [`React_Attributes | `React_ClassAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('P, 'T, 'C) _React_ClassType = ('C, ('P, 'T) anonymous_interface_12) intersection2
    and ('P, 'S) _React_ClassicComponent = [`React_ClassicComponent of ('P * 'S) | `React_Component of ('P * 'S * any) | `React_ComponentLifecycle of ('P * 'S * any) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and 'P _React_ClassicComponentClass = [`React_ClassicComponentClass of 'P | `React_ComponentClass of ('P * _React_ComponentState) | `React_StaticLifecycle of ('P * _React_ComponentState)] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and 'P _React_ClassicElement = ('P, ('P, _React_ComponentState) _React_ClassicComponent) _React_CElement
    and 'P _React_ClassicFactory = ('P, ('P, _React_ComponentState) _React_ClassicComponent) _React_CFactory
    and 'T _React_ClipboardEvent = [`React_BaseSyntheticEvent of (_NativeClipboardEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_ClipboardEvent of 'T | `React_SyntheticEvent of ('T * _NativeClipboardEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ClipboardEventHandler = 'T _React_ClipboardEvent _React_EventHandler
    and 'T _React_ColHTMLAttributes = [`React_AriaAttributes | `React_ColHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ColgroupHTMLAttributes = [`React_AriaAttributes | `React_ColgroupHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('P, 'S, 'SS) _React_Component = [`React_Component of ('P * 'S * 'SS) | `React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS)] intf
    [@@js.custom { of_js=(fun _P _S _SS -> Obj.magic); to_js=(fun _P _S _SS -> Obj.magic) }]
    and ('P, 'S) _React_ComponentClass = [`React_ComponentClass of ('P * 'S) | `React_StaticLifecycle of ('P * 'S)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and ('P, 'T) _React_ComponentElement = [`React_ComponentElement of ('P * 'T) | `React_ReactElement of ('P * ('P, _React_ComponentState) _React_ComponentClass)] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    and ('P, 'T) _React_ComponentFactory = [`React_ComponentFactory of ('P * 'T)] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    and ('P, 'S, 'SS) _React_ComponentLifecycle = [`React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS)] intf
    [@@js.custom { of_js=(fun _P _S _SS -> Obj.magic); to_js=(fun _P _S _SS -> Obj.magic) }]
    and 'T _React_ComponentProps = (* FIXME: unknown type 'T extends JSXElementConstructor<infer P>
                ? P
                : T extends keyof JSX.IntrinsicElements
                    ? JSX.IntrinsicElements[T]
                    : {}' *)any
    and 'T _React_ComponentPropsWithRef = (* FIXME: unknown type 'T extends ComponentClass<infer P>
                ? PropsWithoutRef<P> & RefAttributes<InstanceType<T>>
                : PropsWithRef<ComponentProps<T>>' *)any
    and 'T _React_ComponentPropsWithoutRef = 'T _React_ComponentProps _React_PropsWithoutRef
    and ('P, 'S) _React_ComponentSpec = [`React_ComponentLifecycle of ('P * 'S * any) | `React_ComponentSpec of ('P * 'S) | `React_DeprecatedLifecycle of ('P * 'S) | `React_Mixin of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and _React_ComponentState = any
    and 'P _React_ComponentType = (('P, _React_ComponentState) _React_ComponentClass, 'P _React_FunctionComponent) union2
    and 'T _React_CompositionEvent = [`React_BaseSyntheticEvent of (_NativeCompositionEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_CompositionEvent of 'T | `React_SyntheticEvent of ('T * _NativeCompositionEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_CompositionEventHandler = 'T _React_CompositionEvent _React_EventHandler
    and 'T _React_Consumer = 'T _React_ConsumerProps _React_ExoticComponent
    and 'T _React_ConsumerProps = [`React_ConsumerProps of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_Context = [`React_Context of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'C _React_ContextType = (* FIXME: unknown type 'C extends Context<infer T> ? T : never' *)any
    and 'T _React_DOMAttributes = [`React_DOMAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('P, 'T) _React_DOMElement = [`React_DOMElement of ('P * 'T) | `React_ReactElement of ('P * string)] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    and ('P, 'T) _React_DOMFactory = [`React_DOMFactory of ('P * 'T)] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    and 'T _React_DataHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DataHTMLAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_DelHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DelHTMLAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_DependencyList = any list
    and ('P, 'S) _React_DeprecatedLifecycle = [`React_DeprecatedLifecycle of ('P * 'S)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and ('P, 'T) _React_DetailedHTMLFactory = [`React_DOMFactory of ('P * 'T) | `React_DetailedHTMLFactory of ('P * 'T)] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    and ('E, 'T) _React_DetailedHTMLProps = ('T _React_ClassAttributes, 'E) intersection2
    and ('P, 'T) _React_DetailedReactHTMLElement = [`React_DOMElement of ('P * 'T) | `React_DetailedReactHTMLElement of ('P * 'T) | `React_ReactElement of ('P * string)] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    and 'T _React_DetailsHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DetailsHTMLAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_DialogHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DialogHTMLAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'A _React_Dispatch = [`React_Dispatch of 'A] intf
    [@@js.custom { of_js=(fun _A -> Obj.magic); to_js=(fun _A -> Obj.magic) }]
    and _React_DispatchWithoutAction = [`React_DispatchWithoutAction] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_DragEvent = [`React_BaseSyntheticEvent of (_NativeDragEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_DragEvent of 'T | `React_MouseEvent of ('T * _NativeDragEvent) | `React_SyntheticEvent of ('T * _NativeDragEvent) | `React_UIEvent of ('T * _NativeDragEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_DragEventHandler = 'T _React_DragEvent _React_EventHandler
    and _React_EffectCallback = [`React_EffectCallback] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'C _React_ElementRef = (* FIXME: unknown type '"ref" extends keyof ComponentPropsWithRef<C>
                ? NonNullable<ComponentPropsWithRef<C>["ref"]> extends Ref<
                    infer Instance
                >
                    ? Instance
                    : never
                : never' *)any
    and 'P _React_ElementType = ('P _React_ComponentType, (* FIXME: unknown type '?({
                [K in keyof JSX.IntrinsicElements]: P extends JSX.IntrinsicElements[K] ? K : never
            })[?(?JSX.IntrinsicElements)]' *)any) union2
    and 'T _React_EmbedHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_EmbedHTMLAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_ErrorInfo = [`React_ErrorInfo] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'E _React_EventHandler = 'E anonymous_interface_10
    and 'P _React_ExoticComponent = [`React_ExoticComponent of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and 'P _React_FC = 'P _React_FunctionComponent
    and 'P _React_Factory = [`React_Factory of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and 'T _React_FieldsetHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_FieldsetHTMLAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_FocusEvent = [`React_BaseSyntheticEvent of (_NativeFocusEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_FocusEvent of 'T | `React_SyntheticEvent of ('T * _NativeFocusEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_FocusEventHandler = 'T _React_FocusEvent _React_EventHandler
    and 'T _React_FormEvent = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_FormEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_FormEventHandler = 'T _React_FormEvent _React_EventHandler
    and 'T _React_FormHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_FormHTMLAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'P _React_ForwardRefExoticComponent = [`React_ExoticComponent of 'P | `React_ForwardRefExoticComponent of 'P | `React_NamedExoticComponent of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and ('T, 'P) _React_ForwardRefRenderFunction = [`React_ForwardRefRenderFunction of ('T * 'P)] intf
    [@@js.custom { of_js=(fun _T _P -> Obj.magic); to_js=(fun _T _P -> Obj.magic) }]
    and 'T _React_ForwardedRef = ((instance:(* FIXME: contravariant type variable 'T' *)any or_null -> unit), 'T or_null _React_MutableRefObject) union2 or_null
    and 'P _React_FunctionComponent = [`React_FunctionComponent of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and 'P _React_FunctionComponentElement = [`React_FunctionComponentElement of 'P | `React_ReactElement of ('P * 'P _React_FunctionComponent)] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and 'P _React_FunctionComponentFactory = [`React_FunctionComponentFactory of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and ('P, 'S) _React_GetDerivedStateFromError = [`React_GetDerivedStateFromError of ('P * 'S)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and ('P, 'S) _React_GetDerivedStateFromProps = [`React_GetDerivedStateFromProps of ('P * 'S)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and _React_HTMLAttributeReferrerPolicy = ([`L_s0[@js ""] | `L_s172_no_referrer[@js "no-referrer"] | `L_s173_no_referrer_when_downgrade[@js "no-referrer-when-downgrade"] | `L_s184_origin[@js "origin"] | `L_s185_origin_when_cross_origin[@js "origin-when-cross-origin"] | `L_s218_same_origin[@js "same-origin"] | `L_s233_strict_origin[@js "strict-origin"] | `L_s234_strict_origin_when_cross_origin[@js "strict-origin-when-cross-origin"] | `L_s273_unsafe_url[@js "unsafe-url"]] [@js.enum])
    and 'T _React_HTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_HTMLFactory = [`React_DOMFactory of ('T _React_AllHTMLAttributes * 'T) | `React_DetailedHTMLFactory of ('T _React_AllHTMLAttributes * 'T) | `React_HTMLFactory of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_HTMLProps = [`React_AllHTMLAttributes of 'T | `React_AriaAttributes | `React_Attributes | `React_ClassAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_HTMLProps of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_HtmlHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_HtmlHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_IframeHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_IframeHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ImgHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ImgHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_InputHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_InputHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_InsHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_InsHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_InvalidEvent = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_InvalidEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'P _React_JSXElementConstructor = ((props:(* FIXME: contravariant type variable 'P' *)any -> (any, any) _React_ReactElement or_null), 'P anonymous_interface_11) union2
    and _React_Key = string or_number
    and 'T _React_KeyboardEvent = [`React_BaseSyntheticEvent of (_NativeKeyboardEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_KeyboardEvent of 'T | `React_SyntheticEvent of ('T * _NativeKeyboardEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_KeyboardEventHandler = 'T _React_KeyboardEvent _React_EventHandler
    and 'T _React_KeygenHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_KeygenHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_LabelHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LabelHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_LazyExoticComponent = ('T _React_ComponentPropsWithRef _React_ExoticComponent, anonymous_interface_3) intersection2
    and 'T _React_LegacyRef = 'T _React_Ref or_string
    and 'T _React_LiHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LiHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_LinkHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LinkHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_MapHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MapHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_MediaHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_MemoExoticComponent = ('T _React_ComponentPropsWithRef _React_NamedExoticComponent, anonymous_interface_6) intersection2
    and 'T _React_MenuHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MenuHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_MetaHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MetaHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_MeterHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MeterHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('P, 'S) _React_Mixin = [`React_ComponentLifecycle of ('P * 'S * any) | `React_DeprecatedLifecycle of ('P * 'S) | `React_Mixin of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and ('T, 'E) _React_MouseEvent = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * 'E) | `React_SyntheticEvent of ('T * 'E) | `React_UIEvent of ('T * 'E)] intf
    [@@js.custom { of_js=(fun _T _E -> Obj.magic); to_js=(fun _T _E -> Obj.magic) }]
    and 'T _React_MouseEventHandler = ('T, _NativeMouseEvent) _React_MouseEvent _React_EventHandler
    and 'T _React_MutableRefObject = [`React_MutableRefObject of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'P _React_NamedExoticComponent = [`React_ExoticComponent of 'P | `React_NamedExoticComponent of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and ('P, 'S, 'SS) _React_NewLifecycle = [`React_NewLifecycle of ('P * 'S * 'SS)] intf
    [@@js.custom { of_js=(fun _P _S _SS -> Obj.magic); to_js=(fun _P _S _SS -> Obj.magic) }]
    and 'T _React_ObjectHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ObjectHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_OlHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OlHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_OptgroupHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OptgroupHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_OptionHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OptionHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_OutputHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OutputHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ParamHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ParamHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_PointerEvent = [`React_BaseSyntheticEvent of (_NativePointerEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * _NativePointerEvent) | `React_PointerEvent of 'T | `React_SyntheticEvent of ('T * _NativePointerEvent) | `React_UIEvent of ('T * _NativePointerEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_PointerEventHandler = 'T _React_PointerEvent _React_EventHandler
    and _React_ProfilerOnRenderCallback = [`React_ProfilerOnRenderCallback] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _React_ProfilerProps = [`React_ProfilerProps] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_ProgressHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ProgressHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_Props = [`React_Props of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'P _React_PropsWithChildren = ('P, anonymous_interface_4) intersection2
    and 'P _React_PropsWithRef = (* FIXME: unknown type ''ref' extends keyof P
                ? P extends { ref?: infer R }
                    ? string extends R
                        ? PropsWithoutRef<P> & { ref?: Exclude<R, string> }
                        : P
                    : P
                : P' *)any
    and 'P _React_PropsWithoutRef = (* FIXME: unknown type ''ref' extends keyof P
                ? Pick<P, Exclude<keyof P, 'ref'>>
                : P' *)any
    and 'T _React_Provider = 'T _React_ProviderProps _React_ProviderExoticComponent
    and 'P _React_ProviderExoticComponent = [`React_ExoticComponent of 'P | `React_ProviderExoticComponent of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and 'T _React_ProviderProps = [`React_ProviderProps of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and ('P, 'S, 'SS) _React_PureComponent = [`React_Component of ('P * 'S * 'SS) | `React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS) | `React_PureComponent of ('P * 'S * 'SS)] intf
    [@@js.custom { of_js=(fun _P _S _SS -> Obj.magic); to_js=(fun _P _S _SS -> Obj.magic) }]
    and 'T _React_QuoteHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_QuoteHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_ReactChild = ((any, any _React_JSXElementConstructor or_string) _React_ReactElement, _React_ReactText) union2
    and _React_ReactChildren = [`React_ReactChildren] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and ('T, 'P) _React_ReactComponentElement = [`React_ReactComponentElement of ('T * 'P) | `React_ReactElement of ('P * ('T, float) Exclude.t_2)] intf
    [@@js.custom { of_js=(fun _T _P -> Obj.magic); to_js=(fun _T _P -> Obj.magic) }]
    and _React_ReactDOM = [`React_ReactDOM | `React_ReactHTML | `React_ReactSVG] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and ('P, 'T) _React_ReactElement = [`React_ReactElement of ('P * 'T)] intf
    [@@js.custom { of_js=(fun _P _T -> Obj.magic); to_js=(fun _P _T -> Obj.magic) }]
    and 'T _React_ReactEventHandler = ('T, Event.t_0) _React_SyntheticEvent _React_EventHandler
    and _React_ReactFragment = (_React_ReactNodeArray, anonymous_interface_0) union2
    and _React_ReactHTML = [`React_ReactHTML] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_ReactHTMLElement = [`React_DOMElement of ('T _React_AllHTMLAttributes * 'T) | `React_DetailedReactHTMLElement of ('T _React_AllHTMLAttributes * 'T) | `React_ReactElement of ('T _React_AllHTMLAttributes * string) | `React_ReactHTMLElement of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_ReactInstance = (Element.t_0, (any, anonymous_interface_0, any) _React_Component) union2
    and _React_ReactNode = (_React_ReactChild, _React_ReactFragment, _React_ReactPortal) union3 or_boolean or_null_or_undefined
    and _React_ReactNodeArray = [`React_ReactNodeArray | `Array of _React_ReactNode] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _React_ReactPortal = [`React_ReactElement of (any * any _React_JSXElementConstructor or_string) | `React_ReactPortal] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _React_ReactPropTypes = [`React_ReactPropTypes] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _React_ReactSVG = [`React_ReactSVG] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _React_ReactSVGElement = [`React_DOMElement of (SVGElement.t_0 _React_SVGAttributes * SVGElement.t_0) | `React_ReactElement of (SVGElement.t_0 _React_SVGAttributes * string) | `React_ReactSVGElement] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and _React_ReactText = string or_number
    and 'P _React_ReactType = 'P _React_ElementType
    and ('S, 'A) _React_Reducer = [`React_Reducer of ('S * 'A)] intf
    [@@js.custom { of_js=(fun _S _A -> Obj.magic); to_js=(fun _S _A -> Obj.magic) }]
    and 'R _React_ReducerAction = (* FIXME: unknown type 'R extends Reducer<any, infer A> ? A : never' *)any
    and 'R _React_ReducerState = (* FIXME: unknown type 'R extends Reducer<infer S, any> ? S : never' *)any
    and 'R _React_ReducerStateWithoutAction = (* FIXME: unknown type 'R extends ReducerWithoutAction<infer S> ? S : never' *)any
    and 'S _React_ReducerWithoutAction = [`React_ReducerWithoutAction of 'S] intf
    [@@js.custom { of_js=(fun _S -> Obj.magic); to_js=(fun _S -> Obj.magic) }]
    and 'T _React_Ref = ('T _React_RefCallback, 'T _React_RefObject) union2 or_null
    and 'T _React_RefAttributes = [`React_Attributes | `React_RefAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_RefCallback = 'T anonymous_interface_13
    and ('T, 'P) _React_RefForwardingComponent = [`React_ForwardRefRenderFunction of ('T * 'P) | `React_RefForwardingComponent of ('T * 'P)] intf
    [@@js.custom { of_js=(fun _T _P -> Obj.magic); to_js=(fun _T _P -> Obj.magic) }]
    and 'T _React_RefObject = [`React_RefObject of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_Requireable = 'T PropTypes.Requireable.t_1
    and 'P _React_SFC = 'P _React_FunctionComponent
    and 'P _React_SFCElement = 'P _React_FunctionComponentElement
    and 'P _React_SFCFactory = 'P _React_FunctionComponentFactory
    and 'T _React_SVGAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_SVGAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_SVGFactory = [`React_DOMFactory of (SVGElement.t_0 _React_SVGAttributes * SVGElement.t_0) | `React_SVGFactory] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_SVGProps = [`React_AriaAttributes | `React_Attributes | `React_ClassAttributes of 'T | `React_DOMAttributes of 'T | `React_SVGAttributes of 'T | `React_SVGProps of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ScriptHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ScriptHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_SelectHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SelectHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'S _React_SetStateAction = ('S, (prevState:(* FIXME: contravariant type variable 'S' *)any -> 'S)) union2
    and 'T _React_SlotHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SlotHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_SourceHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SourceHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'P _React_StatelessComponent = 'P _React_FunctionComponent
    and ('P, 'S) _React_StaticLifecycle = [`React_StaticLifecycle of ('P * 'S)] intf
    [@@js.custom { of_js=(fun _P _S -> Obj.magic); to_js=(fun _P _S -> Obj.magic) }]
    and 'T _React_StyleHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_StyleHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_SuspenseProps = [`React_SuspenseProps] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and ('T, 'E) _React_SyntheticEvent = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * 'E)] intf
    [@@js.custom { of_js=(fun _T _E -> Obj.magic); to_js=(fun _T _E -> Obj.magic) }]
    and 'T _React_TableHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TableHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_TdHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TdHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_TextareaHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TextareaHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_ThHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ThHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_TimeHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TimeHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and _React_Touch = [`React_Touch] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_TouchEvent = [`React_BaseSyntheticEvent of (_NativeTouchEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeTouchEvent) | `React_TouchEvent of 'T | `React_UIEvent of ('T * _NativeTouchEvent)] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_TouchEventHandler = 'T _React_TouchEvent _React_EventHandler
    and _React_TouchList = [`React_TouchList] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T _React_TrackHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TrackHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_TransitionEvent = [`React_BaseSyntheticEvent of (_NativeTransitionEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeTransitionEvent) | `React_TransitionEvent of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_TransitionEventHandler = 'T _React_TransitionEvent _React_EventHandler
    and ('T, 'E) _React_UIEvent = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * 'E) | `React_UIEvent of ('T * 'E)] intf
    [@@js.custom { of_js=(fun _T _E -> Obj.magic); to_js=(fun _T _E -> Obj.magic) }]
    and 'T _React_UIEventHandler = ('T, _NativeUIEvent) _React_UIEvent _React_EventHandler
    and 'P _React_VFC = 'P _React_VoidFunctionComponent
    and 'T _React_ValidationMap = 'T PropTypes.ValidationMap.t_1
    and 'T _React_Validator = 'T PropTypes.Validator.t_1
    and 'T _React_VideoHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T | `React_VideoHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'P _React_VoidFunctionComponent = [`React_VoidFunctionComponent of 'P] intf
    [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
    and 'T _React_WeakValidationMap = (* FIXME: unknown type '{
            [K in keyof T]?: null extends T[K]
                ? Validator<T[K] | null | undefined>
                : undefined extends T[K]
                ? Validator<T[K] | null | undefined>
                : Validator<T[K]>
        }' *)any
    and 'T _React_WebViewHTMLAttributes = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_WebViewHTMLAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_WheelEvent = [`React_BaseSyntheticEvent of (_NativeWheelEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * _NativeWheelEvent) | `React_SyntheticEvent of ('T * _NativeWheelEvent) | `React_UIEvent of ('T * _NativeWheelEvent) | `React_WheelEvent of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and 'T _React_WheelEventHandler = 'T _React_WheelEvent _React_EventHandler
    and ('C, 'P) _ReactManagedAttributes = (* FIXME: unknown type 'C extends { propTypes: infer T; defaultProps: infer D; }
        ? Defaultize<MergePropTypes<P, PropTypes.InferProps<T>>, D>
        : C extends { propTypes: infer T; }
            ? MergePropTypes<P, PropTypes.InferProps<T>>
            : C extends { defaultProps: infer D; }
                ? Defaultize<P, D>
                : P' *)any
    and global_JSX_Element = [`React_ReactElement of (any * any) | `Global_JSX_Element] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and global_JSX_ElementAttributesProperty = [`Global_JSX_ElementAttributesProperty] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and global_JSX_ElementChildrenAttribute = [`Global_JSX_ElementChildrenAttribute] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and global_JSX_ElementClass = [`React_Component of (any * anonymous_interface_0 * any) | `React_ComponentLifecycle of (any * anonymous_interface_0 * any) | `React_DeprecatedLifecycle of (any * anonymous_interface_0) | `React_NewLifecycle of (any * anonymous_interface_0 * any) | `Global_JSX_ElementClass] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and global_JSX_IntrinsicAttributes = [`React_Attributes | `Global_JSX_IntrinsicAttributes] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T global_JSX_IntrinsicClassAttributes = [`React_Attributes | `React_ClassAttributes of 'T | `Global_JSX_IntrinsicClassAttributes of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and global_JSX_IntrinsicElements = [`Global_JSX_IntrinsicElements] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and ('C, 'P) global_JSX_LibraryManagedAttributes = (* FIXME: unknown type 'C extends React.MemoExoticComponent<infer T> | React.LazyExoticComponent<infer T>
                ? T extends React.MemoExoticComponent<infer U> | React.LazyExoticComponent<infer U>
                    ? ReactManagedAttributes<U, P>
                    : ReactManagedAttributes<T, P>
                : ReactManagedAttributes<C, P>' *)any
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
  val get__UNDEFINED_VOID_ONLY_: t -> never [@@js.get "[UNDEFINED_VOID_ONLY]"]
  val set__UNDEFINED_VOID_ONLY_: t -> never -> unit [@@js.set "[UNDEFINED_VOID_ONLY]"]
end
module AnonymousInterface2 : sig
  type t = anonymous_interface_2
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get___html: t -> string [@@js.get "__html"]
  val set___html: t -> string -> unit [@@js.set "__html"]
end
module AnonymousInterface3 : sig
  type t = anonymous_interface_3
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get__result: t -> 'T [@@js.get "_result"]
end
module AnonymousInterface4 : sig
  type t = anonymous_interface_4
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_children: t -> _React_ReactNode [@@js.get "children"]
  val set_children: t -> _React_ReactNode -> unit [@@js.set "children"]
end
module AnonymousInterface5 : sig
  type t = anonymous_interface_5
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_default: t -> 'T [@@js.get "default"]
  val set_default: t -> 'T -> unit [@@js.set "default"]
end
module AnonymousInterface6 : sig
  type t = anonymous_interface_6
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_type: t -> 'T [@@js.get "type"]
end
module AnonymousInterface7 : sig
  type t = anonymous_interface_7
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> string -> _React_ReactInstance [@@js.index_get]
  val set: t -> string -> _React_ReactInstance -> unit [@@js.index_set]
end
module AnonymousInterface8 : sig
  type t = anonymous_interface_8
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> string -> any [@@js.index_get]
  val set: t -> string -> any -> unit [@@js.index_set]
end
module AnonymousInterface9 : sig
  type t = anonymous_interface_9
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val create: t -> props:any -> (any, anonymous_interface_0, any) _React_Component [@@js.apply_newable]
end
module AnonymousInterface10 : sig
  type 'E t = 'E anonymous_interface_10
  val t_to_js: ('E -> Ojs.t) -> 'E t -> Ojs.t
  val t_of_js: (Ojs.t -> 'E) -> Ojs.t -> 'E t
  type 'E t_1 = 'E t
  val t_1_to_js: ('E -> Ojs.t) -> 'E t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'E) -> Ojs.t -> 'E t_1
  val apply: 'E t -> event:'E -> unit [@@js.apply]
end
module AnonymousInterface11 : sig
  type 'P t = 'P anonymous_interface_11
  val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
  val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
  type 'P t_1 = 'P t
  val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
  val create: 'P t -> props:'P -> ('P, any, any) _React_Component [@@js.apply_newable]
end
module AnonymousInterface12 : sig
  type ('P, 'T) t = ('P, 'T) anonymous_interface_12
  val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
  type ('P, 'T) t_2 = ('P, 'T) t
  val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
  val create: ('P, 'T) t -> props:'P -> ?context:any -> unit -> 'T [@@js.apply_newable]
end
module AnonymousInterface13 : sig
  type 'T t = 'T anonymous_interface_13
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  val apply: 'T t -> instance:'T or_null -> unit [@@js.apply]
end
(* { comments = []
  isTypeOnly = false
  isExported = No
  moduleSpecifier = csstype
  clause = NamespaceImport ([object Object])
  loc = line 38, col 1 of node_modules/@types/react/index.d.ts } *)
(* { comments = []
  isTypeOnly = false
  isExported = No
  moduleSpecifier = prop-types
  clause = NamespaceImport ([object Object])
  loc = line 39, col 1 of node_modules/@types/react/index.d.ts } *)
(* { comments = []
  isTypeOnly = false
  isExported = No
  moduleSpecifier = scheduler/tracing
  clause = ES6Import ([object Object])
  loc = line 40, col 1 of node_modules/@types/react/index.d.ts } *)
module NativeAnimationEvent : sig
  type t = _NativeAnimationEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeAnimationEvent | AnimationEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeAnimationEvent | AnimationEvent.tags]
  ]
end
module NativeClipboardEvent : sig
  type t = _NativeClipboardEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeClipboardEvent | ClipboardEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeClipboardEvent | ClipboardEvent.tags]
  ]
end
module NativeCompositionEvent : sig
  type t = _NativeCompositionEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeCompositionEvent | CompositionEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeCompositionEvent | CompositionEvent.tags]
  ]
end
module NativeDragEvent : sig
  type t = _NativeDragEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeDragEvent | DragEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeDragEvent | DragEvent.tags]
  ]
end
module NativeFocusEvent : sig
  type t = _NativeFocusEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeFocusEvent | FocusEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeFocusEvent | FocusEvent.tags]
  ]
end
module NativeKeyboardEvent : sig
  type t = _NativeKeyboardEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeKeyboardEvent | KeyboardEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeKeyboardEvent | KeyboardEvent.tags]
  ]
end
module NativeMouseEvent : sig
  type t = _NativeMouseEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeMouseEvent | MouseEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeMouseEvent | MouseEvent.tags]
  ]
end
module NativeTouchEvent : sig
  type t = _NativeTouchEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeTouchEvent | TouchEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeTouchEvent | TouchEvent.tags]
  ]
end
module NativePointerEvent : sig
  type t = _NativePointerEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativePointerEvent | PointerEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativePointerEvent | PointerEvent.tags]
  ]
end
module NativeTransitionEvent : sig
  type t = _NativeTransitionEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeTransitionEvent | TransitionEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeTransitionEvent | TransitionEvent.tags]
  ]
end
module NativeUIEvent : sig
  type t = _NativeUIEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeUIEvent | UIEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeUIEvent | UIEvent.tags]
  ]
end
module NativeWheelEvent : sig
  type t = _NativeWheelEvent
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`NativeWheelEvent | WheelEvent.tags]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`NativeWheelEvent | WheelEvent.tags]
  ]
end
module Booleanish : sig
  type t = _Booleanish
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`Booleanish]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Booleanish]
  ]
end
val undefined_void_only: (* FIXME: unknown type 'unique symbol' *)any [@@js.global "UNDEFINED_VOID_ONLY"]
module[@js.scope "Destructor"] Destructor : sig
  type t = _Destructor
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  [@@@js.stop]
  type tags = [`Destructor]
  [@@@js.start]
  [@@@js.implem 
    type tags = [`Destructor]
  ]
  val apply: t -> (unit, anonymous_interface_1) union2 [@@js.apply]
end
(**
  // tslint:disable-next-line:export-just-namespace
  
*)
(* CommonJsExport ({ name = [React]
  fullName = [React]
  loc = line 61, col 10 of node_modules/@types/react/index.d.ts }) *)
(* NamespaceExport React *)
module[@js.scope "React"] React : sig
  module ElementType : sig
    type 'P t = 'P _React_ElementType
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = any t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_ElementType of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ElementType of 'P]
    ]
  end
  (** @deprecated Please use `ElementType` *)
  module ReactType : sig
    type 'P t = 'P _React_ReactType
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = any t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_ElementType of 'P | `React_ReactType of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ElementType of 'P | `React_ReactType of 'P]
    ]
  end
  module ComponentType : sig
    type 'P t = 'P _React_ComponentType
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_ComponentType of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ComponentType of 'P]
    ]
  end
  module JSXElementConstructor : sig
    type 'P t = 'P _React_JSXElementConstructor
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_JSXElementConstructor of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_JSXElementConstructor of 'P]
    ]
  end
  module[@js.scope "RefObject"] RefObject : sig
    type 'T t = 'T _React_RefObject
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_RefObject of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_RefObject of 'T]
    ]
    val get_current: 'T t -> 'T or_null [@@js.get "current"]
  end
  module RefCallback : sig
    type 'T t = 'T _React_RefCallback
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_RefCallback of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_RefCallback of 'T]
    ]
  end
  module Ref : sig
    type 'T t = 'T _React_Ref
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Ref of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Ref of 'T]
    ]
  end
  module LegacyRef : sig
    type 'T t = 'T _React_LegacyRef
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_LegacyRef of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_LegacyRef of 'T]
    ]
  end
  (**
    Gets the instance type for a React element. The instance will be different for various component types:
    
    - React class components will be the class instance. So if you had `class Foo extends React.Component<\{\}> \{\}`
      and used `React.ElementRef<typeof Foo>` then the type would be the instance of `Foo`.
    - React stateless functional components do not have a backing instance and so `React.ElementRef<typeof Bar>`
      (when `Bar` is `function Bar() \{\}`) will give you the `undefined` type.
    - JSX intrinsics like `div` will give you their DOM instance. For `React.ElementRef<'div'>` that would be
      `HTMLDivElement`. For `React.ElementRef<'input'>` that would be `HTMLInputElement`.
    - React stateless functional components that forward a `ref` will give you the `ElementRef` of the forwarded
      to component.
    
    `C` must be the type _of_ a React component so you need to use typeof as in React.ElementRef<typeof MyComponent>.
    todo: In Flow, this works a little different with forwarded refs and the `AbstractComponent` that
    `React.forwardRef()` returns.
  *)
  module ElementRef : sig
    type 'C t = 'C _React_ElementRef
    val t_to_js: ('C -> Ojs.t) -> 'C t -> Ojs.t
    val t_of_js: (Ojs.t -> 'C) -> Ojs.t -> 'C t
    type 'C t_1 = 'C t
    val t_1_to_js: ('C -> Ojs.t) -> 'C t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'C) -> Ojs.t -> 'C t_1
    [@@@js.stop]
    type 'C tags = [`React_ElementRef of 'C]
    [@@@js.start]
    [@@@js.implem 
      type 'C tags = [`React_ElementRef of 'C]
    ]
  end
  module ComponentState : sig
    type t = _React_ComponentState
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ComponentState]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ComponentState]
    ]
  end
  module Key : sig
    type t = _React_Key
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_Key]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_Key]
    ]
  end
  (**
    internal: You shouldn't need to use this type since you never see these attributes
    inside your component or have to validate them.
  *)
  module[@js.scope "Attributes"] Attributes : sig
    type t = _React_Attributes
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_Attributes]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_Attributes]
    ]
    val get_key: t -> _React_Key or_null [@@js.get "key"]
    val set_key: t -> _React_Key or_null -> unit [@@js.set "key"]
  end
  module[@js.scope "RefAttributes"] RefAttributes : sig
    type 'T t = 'T _React_RefAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Attributes | `React_RefAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Attributes | `React_RefAttributes of 'T]
    ]
    val get_ref: 'T t -> 'T _React_Ref [@@js.get "ref"]
    val set_ref: 'T t -> 'T _React_Ref -> unit [@@js.set "ref"]
    val cast: 'T t -> _React_Attributes [@@js.cast]
  end
  module[@js.scope "ClassAttributes"] ClassAttributes : sig
    type 'T t = 'T _React_ClassAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Attributes | `React_ClassAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Attributes | `React_ClassAttributes of 'T]
    ]
    val get_ref: 'T t -> 'T _React_LegacyRef [@@js.get "ref"]
    val set_ref: 'T t -> 'T _React_LegacyRef -> unit [@@js.set "ref"]
    val cast: 'T t -> _React_Attributes [@@js.cast]
  end
  module[@js.scope "ReactElement"] ReactElement : sig
    type ('P, 'T) t = ('P, 'T) _React_ReactElement
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    type 'P t_1 = ('P, any _React_JSXElementConstructor or_string) t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = (any, any _React_JSXElementConstructor or_string) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('P, 'T) tags = [`React_ReactElement of ('P * 'T)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_ReactElement of ('P * 'T)]
    ]
    val get_type: ('P, 'T) t -> 'T [@@js.get "type"]
    val set_type: ('P, 'T) t -> 'T -> unit [@@js.set "type"]
    val get_props: ('P, 'T) t -> 'P [@@js.get "props"]
    val set_props: ('P, 'T) t -> 'P -> unit [@@js.set "props"]
    val get_key: ('P, 'T) t -> _React_Key or_null [@@js.get "key"]
    val set_key: ('P, 'T) t -> _React_Key or_null -> unit [@@js.set "key"]
  end
  module[@js.scope "ReactComponentElement"] ReactComponentElement : sig
    type ('T, 'P) t = ('T, 'P) _React_ReactComponentElement
    val t_to_js: ('T -> Ojs.t) -> ('P -> Ojs.t) -> ('T, 'P) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'P) -> Ojs.t -> ('T, 'P) t
    type ('T, 'P) t_2 = ('T, 'P) t
    val t_2_to_js: ('T -> Ojs.t) -> ('P -> Ojs.t) -> ('T, 'P) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'P) -> Ojs.t -> ('T, 'P) t_2
    [@@@js.stop]
    type ('T, 'P) tags = [`React_ReactComponentElement of ('T * 'P) | `React_ReactElement of ('P * ('T, float) Exclude.t_2)]
    [@@@js.start]
    [@@@js.implem 
      type ('T, 'P) tags = [`React_ReactComponentElement of ('T * 'P) | `React_ReactElement of ('P * ('T, float) Exclude.t_2)]
    ]
    val cast: ('T, 'P) t -> ('P, ('T, float) Exclude.t_2) _React_ReactElement [@@js.cast]
  end
  (** @deprecated Please use `FunctionComponentElement` *)
  module SFCElement : sig
    type 'P t = 'P _React_SFCElement
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_FunctionComponentElement of 'P | `React_ReactElement of ('P * 'P _React_FunctionComponent) | `React_SFCElement of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FunctionComponentElement of 'P | `React_ReactElement of ('P * 'P _React_FunctionComponent) | `React_SFCElement of 'P]
    ]
  end
  module[@js.scope "FunctionComponentElement"] FunctionComponentElement : sig
    type 'P t = 'P _React_FunctionComponentElement
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_FunctionComponentElement of 'P | `React_ReactElement of ('P * 'P _React_FunctionComponent)]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FunctionComponentElement of 'P | `React_ReactElement of ('P * 'P _React_FunctionComponent)]
    ]
    val get_ref: 'P t -> (* FIXME: unknown type ''ref' extends keyof P ? P extends { ref?: infer R } ? R : never : never' *)any [@@js.get "ref"]
    val set_ref: 'P t -> (* FIXME: unknown type ''ref' extends keyof P ? P extends { ref?: infer R } ? R : never : never' *)any -> unit [@@js.set "ref"]
    val cast: 'P t -> ('P, 'P _React_FunctionComponent) _React_ReactElement [@@js.cast]
  end
  module CElement : sig
    type ('P, 'T) t = ('P, 'T) _React_CElement
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_CElement of ('P * 'T) | `React_ComponentElement of ('P * 'T) | `React_ReactElement of ('P * ('P, _React_ComponentState) _React_ComponentClass)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_CElement of ('P * 'T) | `React_ComponentElement of ('P * 'T) | `React_ReactElement of ('P * ('P, _React_ComponentState) _React_ComponentClass)]
    ]
  end
  module[@js.scope "ComponentElement"] ComponentElement : sig
    type ('P, 'T) t = ('P, 'T) _React_ComponentElement
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_ComponentElement of ('P * 'T) | `React_ReactElement of ('P * ('P, _React_ComponentState) _React_ComponentClass)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_ComponentElement of ('P * 'T) | `React_ReactElement of ('P * ('P, _React_ComponentState) _React_ComponentClass)]
    ]
    val get_ref: ('P, 'T) t -> 'T _React_LegacyRef [@@js.get "ref"]
    val set_ref: ('P, 'T) t -> 'T _React_LegacyRef -> unit [@@js.set "ref"]
    val cast: ('P, 'T) t -> ('P, ('P, _React_ComponentState) _React_ComponentClass) _React_ReactElement [@@js.cast]
  end
  module ClassicElement : sig
    type 'P t = 'P _React_ClassicElement
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_CElement of ('P * ('P, _React_ComponentState) _React_ClassicComponent) | `React_ClassicElement of 'P | `React_ComponentElement of ('P * ('P, _React_ComponentState) _React_ClassicComponent) | `React_ReactElement of ('P * ('P, _React_ComponentState) _React_ComponentClass)]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_CElement of ('P * ('P, _React_ComponentState) _React_ClassicComponent) | `React_ClassicElement of 'P | `React_ComponentElement of ('P * ('P, _React_ComponentState) _React_ClassicComponent) | `React_ReactElement of ('P * ('P, _React_ComponentState) _React_ComponentClass)]
    ]
  end
  module[@js.scope "DOMElement"] DOMElement : sig
    type ('P, 'T) t = ('P, 'T) _React_DOMElement
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_DOMElement of ('P * 'T) | `React_ReactElement of ('P * string)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_DOMElement of ('P * 'T) | `React_ReactElement of ('P * string)]
    ]
    val get_ref: ('P, 'T) t -> 'T _React_LegacyRef [@@js.get "ref"]
    val set_ref: ('P, 'T) t -> 'T _React_LegacyRef -> unit [@@js.set "ref"]
    val cast: ('P, 'T) t -> ('P, string) _React_ReactElement [@@js.cast]
  end
  module[@js.scope "ReactHTMLElement"] ReactHTMLElement : sig
    type 'T t = 'T _React_ReactHTMLElement
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_DOMElement of ('T _React_AllHTMLAttributes * 'T) | `React_DetailedReactHTMLElement of ('T _React_AllHTMLAttributes * 'T) | `React_ReactElement of ('T _React_AllHTMLAttributes * string) | `React_ReactHTMLElement of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_DOMElement of ('T _React_AllHTMLAttributes * 'T) | `React_DetailedReactHTMLElement of ('T _React_AllHTMLAttributes * 'T) | `React_ReactElement of ('T _React_AllHTMLAttributes * string) | `React_ReactHTMLElement of 'T]
    ]
    val cast: 'T t -> ('T _React_AllHTMLAttributes, 'T) _React_DetailedReactHTMLElement [@@js.cast]
  end
  module[@js.scope "DetailedReactHTMLElement"] DetailedReactHTMLElement : sig
    type ('P, 'T) t = ('P, 'T) _React_DetailedReactHTMLElement
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_DOMElement of ('P * 'T) | `React_DetailedReactHTMLElement of ('P * 'T) | `React_ReactElement of ('P * string)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_DOMElement of ('P * 'T) | `React_DetailedReactHTMLElement of ('P * 'T) | `React_ReactElement of ('P * string)]
    ]
    val get_type: ('P, 'T) t -> ([`L_s4_a[@js "a"] | `L_s5_abbr[@js "abbr"] | `L_s9_address[@js "address"] | `L_s15_area[@js "area"] | `L_s16_article[@js "article"] | `L_s18_aside[@js "aside"] | `L_s21_audio[@js "audio"] | `L_s23_b[@js "b"] | `L_s24_base[@js "base"] | `L_s26_bdi[@js "bdi"] | `L_s27_bdo[@js "bdo"] | `L_s30_big[@js "big"] | `L_s31_blockquote[@js "blockquote"] | `L_s32_body[@js "body"] | `L_s35_br[@js "br"] | `L_s37_button[@js "button"] | `L_s38_canvas[@js "canvas"] | `L_s39_caption[@js "caption"] | `L_s44_cite[@js "cite"] | `L_s46_code[@js "code"] | `L_s47_col[@js "col"] | `L_s48_colgroup[@js "colgroup"] | `L_s50_data[@js "data"] | `L_s51_datalist[@js "datalist"] | `L_s53_dd[@js "dd"] | `L_s56_del[@js "del"] | `L_s59_details[@js "details"] | `L_s60_dfn[@js "dfn"] | `L_s61_dialog[@js "dialog"] | `L_s62_div[@js "div"] | `L_s63_dl[@js "dl"] | `L_s65_dt[@js "dt"] | `L_s68_em[@js "em"] | `L_s70_embed[@js "embed"] | `L_s100_fieldset[@js "fieldset"] | `L_s101_figcaption[@js "figcaption"] | `L_s102_figure[@js "figure"] | `L_s104_footer[@js "footer"] | `L_s106_form[@js "form"] | `L_s111_h1[@js "h1"] | `L_s112_h2[@js "h2"] | `L_s113_h3[@js "h3"] | `L_s114_h4[@js "h4"] | `L_s115_h5[@js "h5"] | `L_s116_h6[@js "h6"] | `L_s118_head[@js "head"] | `L_s119_header[@js "header"] | `L_s120_hgroup[@js "hgroup"] | `L_s122_hr[@js "hr"] | `L_s123_html[@js "html"] | `L_s124_i[@js "i"] | `L_s126_iframe[@js "iframe"] | `L_s128_img[@js "img"] | `L_s132_input[@js "input"] | `L_s133_ins[@js "ins"] | `L_s136_kbd[@js "kbd"] | `L_s138_keygen[@js "keygen"] | `L_s139_label[@js "label"] | `L_s142_legend[@js "legend"] | `L_s143_li[@js "li"] | `L_s147_link[@js "link"] | `L_s151_main[@js "main"] | `L_s152_map[@js "map"] | `L_s153_mark[@js "mark"] | `L_s158_menu[@js "menu"] | `L_s159_menuitem[@js "menuitem"] | `L_s160_meta[@js "meta"] | `L_s162_meter[@js "meter"] | `L_s169_nav[@js "nav"] | `L_s176_noscript[@js "noscript"] | `L_s178_object[@js "object"] | `L_s180_ol[@js "ol"] | `L_s182_optgroup[@js "optgroup"] | `L_s183_option[@js "option"] | `L_s187_output[@js "output"] | `L_s188_p[@js "p"] | `L_s190_param[@js "param"] | `L_s194_picture[@js "picture"] | `L_s199_pre[@js "pre"] | `L_s201_progress[@js "progress"] | `L_s202_q[@js "q"] | `L_s213_rp[@js "rp"] | `L_s214_rt[@js "rt"] | `L_s215_ruby[@js "ruby"] | `L_s216_s[@js "s"] | `L_s219_samp[@js "samp"] | `L_s220_script[@js "script"] | `L_s222_section[@js "section"] | `L_s223_select[@js "select"] | `L_s225_slot[@js "slot"] | `L_s226_small[@js "small"] | `L_s227_source[@js "source"] | `L_s228_span[@js "span"] | `L_s235_strong[@js "strong"] | `L_s236_style[@js "style"] | `L_s237_sub[@js "sub"] | `L_s240_summary[@js "summary"] | `L_s241_sup[@js "sup"] | `L_s246_table[@js "table"] | `L_s247_tbody[@js "tbody"] | `L_s248_td[@js "td"] | `L_s250_template[@js "template"] | `L_s258_textarea[@js "textarea"] | `L_s259_tfoot[@js "tfoot"] | `L_s260_th[@js "th"] | `L_s261_thead[@js "thead"] | `L_s262_time[@js "time"] | `L_s263_title[@js "title"] | `L_s266_tr[@js "tr"] | `L_s267_track[@js "track"] | `L_s271_u[@js "u"] | `L_s272_ul[@js "ul"] | `L_s278_var[@js "var"] | `L_s280_video[@js "video"] | `L_s282_wbr[@js "wbr"] | `L_s283_webview[@js "webview"]] [@js.enum]) [@@js.get "type"]
    val set_type: ('P, 'T) t -> ([`L_s4_a | `L_s5_abbr | `L_s9_address | `L_s15_area | `L_s16_article | `L_s18_aside | `L_s21_audio | `L_s23_b | `L_s24_base | `L_s26_bdi | `L_s27_bdo | `L_s30_big | `L_s31_blockquote | `L_s32_body | `L_s35_br | `L_s37_button | `L_s38_canvas | `L_s39_caption | `L_s44_cite | `L_s46_code | `L_s47_col | `L_s48_colgroup | `L_s50_data | `L_s51_datalist | `L_s53_dd | `L_s56_del | `L_s59_details | `L_s60_dfn | `L_s61_dialog | `L_s62_div | `L_s63_dl | `L_s65_dt | `L_s68_em | `L_s70_embed | `L_s100_fieldset | `L_s101_figcaption | `L_s102_figure | `L_s104_footer | `L_s106_form | `L_s111_h1 | `L_s112_h2 | `L_s113_h3 | `L_s114_h4 | `L_s115_h5 | `L_s116_h6 | `L_s118_head | `L_s119_header | `L_s120_hgroup | `L_s122_hr | `L_s123_html | `L_s124_i | `L_s126_iframe | `L_s128_img | `L_s132_input | `L_s133_ins | `L_s136_kbd | `L_s138_keygen | `L_s139_label | `L_s142_legend | `L_s143_li | `L_s147_link | `L_s151_main | `L_s152_map | `L_s153_mark | `L_s158_menu | `L_s159_menuitem | `L_s160_meta | `L_s162_meter | `L_s169_nav | `L_s176_noscript | `L_s178_object | `L_s180_ol | `L_s182_optgroup | `L_s183_option | `L_s187_output | `L_s188_p | `L_s190_param | `L_s194_picture | `L_s199_pre | `L_s201_progress | `L_s202_q | `L_s213_rp | `L_s214_rt | `L_s215_ruby | `L_s216_s | `L_s219_samp | `L_s220_script | `L_s222_section | `L_s223_select | `L_s225_slot | `L_s226_small | `L_s227_source | `L_s228_span | `L_s235_strong | `L_s236_style | `L_s237_sub | `L_s240_summary | `L_s241_sup | `L_s246_table | `L_s247_tbody | `L_s248_td | `L_s250_template | `L_s258_textarea | `L_s259_tfoot | `L_s260_th | `L_s261_thead | `L_s262_time | `L_s263_title | `L_s266_tr | `L_s267_track | `L_s271_u | `L_s272_ul | `L_s278_var | `L_s280_video | `L_s282_wbr | `L_s283_webview] [@js.enum]) -> unit [@@js.set "type"]
    val cast: ('P, 'T) t -> ('P, 'T) _React_DOMElement [@@js.cast]
  end
  module[@js.scope "ReactSVGElement"] ReactSVGElement : sig
    type t = _React_ReactSVGElement
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_DOMElement of (SVGElement.t_0 _React_SVGAttributes * SVGElement.t_0) | `React_ReactElement of (SVGElement.t_0 _React_SVGAttributes * string) | `React_ReactSVGElement]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_DOMElement of (SVGElement.t_0 _React_SVGAttributes * SVGElement.t_0) | `React_ReactElement of (SVGElement.t_0 _React_SVGAttributes * string) | `React_ReactSVGElement]
    ]
    val get_type: t -> ([`L_s13_animate[@js "animate"] | `L_s43_circle[@js "circle"] | `L_s45_clipPath[@js "clipPath"] | `L_s55_defs[@js "defs"] | `L_s57_desc[@js "desc"] | `L_s67_ellipse[@js "ellipse"] | `L_s75_feBlend[@js "feBlend"] | `L_s76_feColorMatrix[@js "feColorMatrix"] | `L_s77_feComponentTransfer[@js "feComponentTransfer"] | `L_s78_feComposite[@js "feComposite"] | `L_s79_feConvolveMatrix[@js "feConvolveMatrix"] | `L_s80_feDiffuseLighting[@js "feDiffuseLighting"] | `L_s81_feDisplacementMap[@js "feDisplacementMap"] | `L_s82_feDistantLight[@js "feDistantLight"] | `L_s83_feDropShadow[@js "feDropShadow"] | `L_s84_feFlood[@js "feFlood"] | `L_s85_feFuncA[@js "feFuncA"] | `L_s86_feFuncB[@js "feFuncB"] | `L_s87_feFuncG[@js "feFuncG"] | `L_s88_feFuncR[@js "feFuncR"] | `L_s89_feGaussianBlur[@js "feGaussianBlur"] | `L_s90_feImage[@js "feImage"] | `L_s91_feMerge[@js "feMerge"] | `L_s92_feMergeNode[@js "feMergeNode"] | `L_s93_feMorphology[@js "feMorphology"] | `L_s94_feOffset[@js "feOffset"] | `L_s95_fePointLight[@js "fePointLight"] | `L_s96_feSpecularLighting[@js "feSpecularLighting"] | `L_s97_feSpotLight[@js "feSpotLight"] | `L_s98_feTile[@js "feTile"] | `L_s99_feTurbulence[@js "feTurbulence"] | `L_s103_filter[@js "filter"] | `L_s105_foreignObject[@js "foreignObject"] | `L_s107_g[@js "g"] | `L_s127_image[@js "image"] | `L_s144_line[@js "line"] | `L_s145_linearGradient[@js "linearGradient"] | `L_s154_marker[@js "marker"] | `L_s155_mask[@js "mask"] | `L_s161_metadata[@js "metadata"] | `L_s191_path[@js "path"] | `L_s192_pattern[@js "pattern"] | `L_s196_polygon[@js "polygon"] | `L_s197_polyline[@js "polyline"] | `L_s203_radialGradient[@js "radialGradient"] | `L_s204_rect[@js "rect"] | `L_s232_stop[@js "stop"] | `L_s242_svg[@js "svg"] | `L_s243_switch[@js "switch"] | `L_s244_symbol[@js "symbol"] | `L_s252_text[@js "text"] | `L_s257_textPath[@js "textPath"] | `L_s270_tspan[@js "tspan"] | `L_s276_use[@js "use"] | `L_s281_view[@js "view"]] [@js.enum]) [@@js.get "type"]
    val set_type: t -> ([`L_s13_animate | `L_s43_circle | `L_s45_clipPath | `L_s55_defs | `L_s57_desc | `L_s67_ellipse | `L_s75_feBlend | `L_s76_feColorMatrix | `L_s77_feComponentTransfer | `L_s78_feComposite | `L_s79_feConvolveMatrix | `L_s80_feDiffuseLighting | `L_s81_feDisplacementMap | `L_s82_feDistantLight | `L_s83_feDropShadow | `L_s84_feFlood | `L_s85_feFuncA | `L_s86_feFuncB | `L_s87_feFuncG | `L_s88_feFuncR | `L_s89_feGaussianBlur | `L_s90_feImage | `L_s91_feMerge | `L_s92_feMergeNode | `L_s93_feMorphology | `L_s94_feOffset | `L_s95_fePointLight | `L_s96_feSpecularLighting | `L_s97_feSpotLight | `L_s98_feTile | `L_s99_feTurbulence | `L_s103_filter | `L_s105_foreignObject | `L_s107_g | `L_s127_image | `L_s144_line | `L_s145_linearGradient | `L_s154_marker | `L_s155_mask | `L_s161_metadata | `L_s191_path | `L_s192_pattern | `L_s196_polygon | `L_s197_polyline | `L_s203_radialGradient | `L_s204_rect | `L_s232_stop | `L_s242_svg | `L_s243_switch | `L_s244_symbol | `L_s252_text | `L_s257_textPath | `L_s270_tspan | `L_s276_use | `L_s281_view] [@js.enum]) -> unit [@@js.set "type"]
    val cast: t -> (SVGElement.t_0 _React_SVGAttributes, SVGElement.t_0) _React_DOMElement [@@js.cast]
  end
  module[@js.scope "ReactPortal"] ReactPortal : sig
    type t = _React_ReactPortal
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactElement of (any * any _React_JSXElementConstructor or_string) | `React_ReactPortal]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactElement of (any * any _React_JSXElementConstructor or_string) | `React_ReactPortal]
    ]
    val get_key: t -> _React_Key or_null [@@js.get "key"]
    val set_key: t -> _React_Key or_null -> unit [@@js.set "key"]
    val get_children: t -> _React_ReactNode [@@js.get "children"]
    val set_children: t -> _React_ReactNode -> unit [@@js.set "children"]
    val cast: t -> (any, any _React_JSXElementConstructor or_string) _React_ReactElement [@@js.cast]
  end
  module[@js.scope "Factory"] Factory : sig
    type 'P t = 'P _React_Factory
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_Factory of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_Factory of 'P]
    ]
    val apply: 'P t -> ?props:(_React_Attributes, 'P) intersection2 -> children:(_React_ReactNode list [@js.variadic]) -> ('P, any _React_JSXElementConstructor or_string) _React_ReactElement [@@js.apply]
  end
  (** @deprecated Please use `FunctionComponentFactory` *)
  module SFCFactory : sig
    type 'P t = 'P _React_SFCFactory
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_FunctionComponentFactory of 'P | `React_SFCFactory of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FunctionComponentFactory of 'P | `React_SFCFactory of 'P]
    ]
  end
  module[@js.scope "FunctionComponentFactory"] FunctionComponentFactory : sig
    type 'P t = 'P _React_FunctionComponentFactory
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_FunctionComponentFactory of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FunctionComponentFactory of 'P]
    ]
    val apply: 'P t -> ?props:(_React_Attributes, 'P) intersection2 -> children:(_React_ReactNode list [@js.variadic]) -> 'P _React_FunctionComponentElement [@@js.apply]
  end
  module[@js.scope "ComponentFactory"] ComponentFactory : sig
    type ('P, 'T) t = ('P, 'T) _React_ComponentFactory
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_ComponentFactory of ('P * 'T)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_ComponentFactory of ('P * 'T)]
    ]
    val apply: ('P, 'T) t -> ?props:('T _React_ClassAttributes, 'P) intersection2 -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_CElement [@@js.apply]
  end
  module CFactory : sig
    type ('P, 'T) t = ('P, 'T) _React_CFactory
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_CFactory of ('P * 'T) | `React_ComponentFactory of ('P * 'T)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_CFactory of ('P * 'T) | `React_ComponentFactory of ('P * 'T)]
    ]
  end
  module ClassicFactory : sig
    type 'P t = 'P _React_ClassicFactory
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_CFactory of ('P * ('P, _React_ComponentState) _React_ClassicComponent) | `React_ClassicFactory of 'P | `React_ComponentFactory of ('P * ('P, _React_ComponentState) _React_ClassicComponent)]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_CFactory of ('P * ('P, _React_ComponentState) _React_ClassicComponent) | `React_ClassicFactory of 'P | `React_ComponentFactory of ('P * ('P, _React_ComponentState) _React_ClassicComponent)]
    ]
  end
  module[@js.scope "DOMFactory"] DOMFactory : sig
    type ('P, 'T) t = ('P, 'T) _React_DOMFactory
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_DOMFactory of ('P * 'T)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_DOMFactory of ('P * 'T)]
    ]
    val apply: ('P, 'T) t -> ?props:('T _React_ClassAttributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_DOMElement [@@js.apply]
  end
  module[@js.scope "HTMLFactory"] HTMLFactory : sig
    type 'T t = 'T _React_HTMLFactory
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_DOMFactory of ('T _React_AllHTMLAttributes * 'T) | `React_DetailedHTMLFactory of ('T _React_AllHTMLAttributes * 'T) | `React_HTMLFactory of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_DOMFactory of ('T _React_AllHTMLAttributes * 'T) | `React_DetailedHTMLFactory of ('T _React_AllHTMLAttributes * 'T) | `React_HTMLFactory of 'T]
    ]
    val cast: 'T t -> ('T _React_AllHTMLAttributes, 'T) _React_DetailedHTMLFactory [@@js.cast]
  end
  module[@js.scope "DetailedHTMLFactory"] DetailedHTMLFactory : sig
    type ('P, 'T) t = ('P, 'T) _React_DetailedHTMLFactory
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
    type ('P, 'T) t_2 = ('P, 'T) t
    val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
    [@@@js.stop]
    type ('P, 'T) tags = [`React_DOMFactory of ('P * 'T) | `React_DetailedHTMLFactory of ('P * 'T)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T) tags = [`React_DOMFactory of ('P * 'T) | `React_DetailedHTMLFactory of ('P * 'T)]
    ]
    val apply: ('P, 'T) t -> ?props:('T _React_ClassAttributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_DetailedReactHTMLElement [@@js.apply]
    val cast: ('P, 'T) t -> ('P, 'T) _React_DOMFactory [@@js.cast]
  end
  module[@js.scope "SVGFactory"] SVGFactory : sig
    type t = _React_SVGFactory
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_DOMFactory of (SVGElement.t_0 _React_SVGAttributes * SVGElement.t_0) | `React_SVGFactory]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_DOMFactory of (SVGElement.t_0 _React_SVGAttributes * SVGElement.t_0) | `React_SVGFactory]
    ]
    val apply: t -> ?props:(SVGElement.t_0 _React_ClassAttributes, SVGElement.t_0 _React_SVGAttributes) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> _React_ReactSVGElement [@@js.apply]
    val cast: t -> (SVGElement.t_0 _React_SVGAttributes, SVGElement.t_0) _React_DOMFactory [@@js.cast]
  end
  module ReactText : sig
    type t = _React_ReactText
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactText]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactText]
    ]
  end
  module ReactChild : sig
    type t = _React_ReactChild
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactChild]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactChild]
    ]
  end
  module[@js.scope "ReactNodeArray"] ReactNodeArray : sig
    type t = _React_ReactNodeArray
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactNodeArray | `Array of _React_ReactNode]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactNodeArray | `Array of _React_ReactNode]
    ]
    val cast: t -> _React_ReactNode list [@@js.cast]
  end
  module ReactFragment : sig
    type t = _React_ReactFragment
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactFragment]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactFragment]
    ]
  end
  module ReactNode : sig
    type t = _React_ReactNode
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactNode]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactNode]
    ]
  end
  val createFactory: type_:([`L_s4_a | `L_s5_abbr | `L_s9_address | `L_s15_area | `L_s16_article | `L_s18_aside | `L_s21_audio | `L_s23_b | `L_s24_base | `L_s26_bdi | `L_s27_bdo | `L_s30_big | `L_s31_blockquote | `L_s32_body | `L_s35_br | `L_s37_button | `L_s38_canvas | `L_s39_caption | `L_s44_cite | `L_s46_code | `L_s47_col | `L_s48_colgroup | `L_s50_data | `L_s51_datalist | `L_s53_dd | `L_s56_del | `L_s59_details | `L_s60_dfn | `L_s61_dialog | `L_s62_div | `L_s63_dl | `L_s65_dt | `L_s68_em | `L_s70_embed | `L_s100_fieldset | `L_s101_figcaption | `L_s102_figure | `L_s104_footer | `L_s106_form | `L_s111_h1 | `L_s112_h2 | `L_s113_h3 | `L_s114_h4 | `L_s115_h5 | `L_s116_h6 | `L_s118_head | `L_s119_header | `L_s120_hgroup | `L_s122_hr | `L_s123_html | `L_s124_i | `L_s126_iframe | `L_s128_img | `L_s132_input | `L_s133_ins | `L_s136_kbd | `L_s138_keygen | `L_s139_label | `L_s142_legend | `L_s143_li | `L_s147_link | `L_s151_main | `L_s152_map | `L_s153_mark | `L_s158_menu | `L_s159_menuitem | `L_s160_meta | `L_s162_meter | `L_s169_nav | `L_s176_noscript | `L_s178_object | `L_s180_ol | `L_s182_optgroup | `L_s183_option | `L_s187_output | `L_s188_p | `L_s190_param | `L_s194_picture | `L_s199_pre | `L_s201_progress | `L_s202_q | `L_s213_rp | `L_s214_rt | `L_s215_ruby | `L_s216_s | `L_s219_samp | `L_s220_script | `L_s222_section | `L_s223_select | `L_s225_slot | `L_s226_small | `L_s227_source | `L_s228_span | `L_s235_strong | `L_s236_style | `L_s237_sub | `L_s240_summary | `L_s241_sup | `L_s246_table | `L_s247_tbody | `L_s248_td | `L_s250_template | `L_s258_textarea | `L_s259_tfoot | `L_s260_th | `L_s261_thead | `L_s262_time | `L_s263_title | `L_s266_tr | `L_s267_track | `L_s271_u | `L_s272_ul | `L_s278_var | `L_s280_video | `L_s282_wbr | `L_s283_webview] [@js.enum]) -> 'T _React_HTMLFactory [@@js.global "createFactory"]
  val createFactory: type_:([`L_s13_animate | `L_s43_circle | `L_s45_clipPath | `L_s55_defs | `L_s57_desc | `L_s67_ellipse | `L_s75_feBlend | `L_s76_feColorMatrix | `L_s77_feComponentTransfer | `L_s78_feComposite | `L_s79_feConvolveMatrix | `L_s80_feDiffuseLighting | `L_s81_feDisplacementMap | `L_s82_feDistantLight | `L_s83_feDropShadow | `L_s84_feFlood | `L_s85_feFuncA | `L_s86_feFuncB | `L_s87_feFuncG | `L_s88_feFuncR | `L_s89_feGaussianBlur | `L_s90_feImage | `L_s91_feMerge | `L_s92_feMergeNode | `L_s93_feMorphology | `L_s94_feOffset | `L_s95_fePointLight | `L_s96_feSpecularLighting | `L_s97_feSpotLight | `L_s98_feTile | `L_s99_feTurbulence | `L_s103_filter | `L_s105_foreignObject | `L_s107_g | `L_s127_image | `L_s144_line | `L_s145_linearGradient | `L_s154_marker | `L_s155_mask | `L_s161_metadata | `L_s191_path | `L_s192_pattern | `L_s196_polygon | `L_s197_polyline | `L_s203_radialGradient | `L_s204_rect | `L_s232_stop | `L_s242_svg | `L_s243_switch | `L_s244_symbol | `L_s252_text | `L_s257_textPath | `L_s270_tspan | `L_s276_use | `L_s281_view] [@js.enum]) -> _React_SVGFactory [@@js.global "createFactory"]
  val createFactory: type_:string -> ('P, 'T) _React_DOMFactory [@@js.global "createFactory"]
  val createFactory: type_:'P _React_FunctionComponent -> 'P _React_FunctionComponentFactory [@@js.global "createFactory"]
  val createFactory: type_:('P, ('P, _React_ComponentState) _React_ClassicComponent, 'P _React_ClassicComponentClass) _React_ClassType -> ('P, ('P, _React_ComponentState) _React_ClassicComponent) _React_CFactory [@@js.global "createFactory"]
  val createFactory: type_:('P, 'T, 'C) _React_ClassType -> ('P, 'T) _React_CFactory [@@js.global "createFactory"]
  val createFactory: type_:('P, _React_ComponentState) _React_ComponentClass -> 'P _React_Factory [@@js.global "createFactory"]
  val createElement: type_:([`L_s132_input] [@js.enum]) -> ?props:(HTMLInputElement.t_0 _React_InputHTMLAttributes, HTMLInputElement.t_0 _React_ClassAttributes) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> (HTMLInputElement.t_0 _React_InputHTMLAttributes, HTMLInputElement.t_0) _React_DetailedReactHTMLElement [@@js.global "createElement"]
  val createElement: type_:([`L_s4_a | `L_s5_abbr | `L_s9_address | `L_s15_area | `L_s16_article | `L_s18_aside | `L_s21_audio | `L_s23_b | `L_s24_base | `L_s26_bdi | `L_s27_bdo | `L_s30_big | `L_s31_blockquote | `L_s32_body | `L_s35_br | `L_s37_button | `L_s38_canvas | `L_s39_caption | `L_s44_cite | `L_s46_code | `L_s47_col | `L_s48_colgroup | `L_s50_data | `L_s51_datalist | `L_s53_dd | `L_s56_del | `L_s59_details | `L_s60_dfn | `L_s61_dialog | `L_s62_div | `L_s63_dl | `L_s65_dt | `L_s68_em | `L_s70_embed | `L_s100_fieldset | `L_s101_figcaption | `L_s102_figure | `L_s104_footer | `L_s106_form | `L_s111_h1 | `L_s112_h2 | `L_s113_h3 | `L_s114_h4 | `L_s115_h5 | `L_s116_h6 | `L_s118_head | `L_s119_header | `L_s120_hgroup | `L_s122_hr | `L_s123_html | `L_s124_i | `L_s126_iframe | `L_s128_img | `L_s132_input | `L_s133_ins | `L_s136_kbd | `L_s138_keygen | `L_s139_label | `L_s142_legend | `L_s143_li | `L_s147_link | `L_s151_main | `L_s152_map | `L_s153_mark | `L_s158_menu | `L_s159_menuitem | `L_s160_meta | `L_s162_meter | `L_s169_nav | `L_s176_noscript | `L_s178_object | `L_s180_ol | `L_s182_optgroup | `L_s183_option | `L_s187_output | `L_s188_p | `L_s190_param | `L_s194_picture | `L_s199_pre | `L_s201_progress | `L_s202_q | `L_s213_rp | `L_s214_rt | `L_s215_ruby | `L_s216_s | `L_s219_samp | `L_s220_script | `L_s222_section | `L_s223_select | `L_s225_slot | `L_s226_small | `L_s227_source | `L_s228_span | `L_s235_strong | `L_s236_style | `L_s237_sub | `L_s240_summary | `L_s241_sup | `L_s246_table | `L_s247_tbody | `L_s248_td | `L_s250_template | `L_s258_textarea | `L_s259_tfoot | `L_s260_th | `L_s261_thead | `L_s262_time | `L_s263_title | `L_s266_tr | `L_s267_track | `L_s271_u | `L_s272_ul | `L_s278_var | `L_s280_video | `L_s282_wbr | `L_s283_webview] [@js.enum]) -> ?props:('T _React_ClassAttributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_DetailedReactHTMLElement [@@js.global "createElement"]
  val createElement: type_:([`L_s13_animate | `L_s43_circle | `L_s45_clipPath | `L_s55_defs | `L_s57_desc | `L_s67_ellipse | `L_s75_feBlend | `L_s76_feColorMatrix | `L_s77_feComponentTransfer | `L_s78_feComposite | `L_s79_feConvolveMatrix | `L_s80_feDiffuseLighting | `L_s81_feDisplacementMap | `L_s82_feDistantLight | `L_s83_feDropShadow | `L_s84_feFlood | `L_s85_feFuncA | `L_s86_feFuncB | `L_s87_feFuncG | `L_s88_feFuncR | `L_s89_feGaussianBlur | `L_s90_feImage | `L_s91_feMerge | `L_s92_feMergeNode | `L_s93_feMorphology | `L_s94_feOffset | `L_s95_fePointLight | `L_s96_feSpecularLighting | `L_s97_feSpotLight | `L_s98_feTile | `L_s99_feTurbulence | `L_s103_filter | `L_s105_foreignObject | `L_s107_g | `L_s127_image | `L_s144_line | `L_s145_linearGradient | `L_s154_marker | `L_s155_mask | `L_s161_metadata | `L_s191_path | `L_s192_pattern | `L_s196_polygon | `L_s197_polyline | `L_s203_radialGradient | `L_s204_rect | `L_s232_stop | `L_s242_svg | `L_s243_switch | `L_s244_symbol | `L_s252_text | `L_s257_textPath | `L_s270_tspan | `L_s276_use | `L_s281_view] [@js.enum]) -> ?props:('T _React_ClassAttributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> _React_ReactSVGElement [@@js.global "createElement"]
  val createElement: type_:string -> ?props:('T _React_ClassAttributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_DOMElement [@@js.global "createElement"]
  val createElement: type_:'P _React_FunctionComponent -> ?props:(_React_Attributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> 'P _React_FunctionComponentElement [@@js.global "createElement"]
  val createElement: type_:('P, ('P, _React_ComponentState) _React_ClassicComponent, 'P _React_ClassicComponentClass) _React_ClassType -> ?props:(('P, _React_ComponentState) _React_ClassicComponent _React_ClassAttributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> ('P, ('P, _React_ComponentState) _React_ClassicComponent) _React_CElement [@@js.global "createElement"]
  val createElement: type_:('P, 'T, 'C) _React_ClassType -> ?props:('T _React_ClassAttributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_CElement [@@js.global "createElement"]
  val createElement: type_:(('P, _React_ComponentState) _React_ComponentClass, 'P _React_FunctionComponent) union2 or_string -> ?props:(_React_Attributes, 'P) intersection2 or_null -> children:(_React_ReactNode list [@js.variadic]) -> ('P, any _React_JSXElementConstructor or_string) _React_ReactElement [@@js.global "createElement"]
  val cloneElement: element:('P, 'T) _React_DetailedReactHTMLElement -> ?props:'P -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_DetailedReactHTMLElement [@@js.global "cloneElement"]
  val cloneElement: element:'T _React_ReactHTMLElement -> ?props:'P -> children:(_React_ReactNode list [@js.variadic]) -> 'T _React_ReactHTMLElement [@@js.global "cloneElement"]
  val cloneElement: element:_React_ReactSVGElement -> ?props:'P -> children:(_React_ReactNode list [@js.variadic]) -> _React_ReactSVGElement [@@js.global "cloneElement"]
  val cloneElement: element:('P, 'T) _React_DOMElement -> ?props:('T _React_DOMAttributes, 'P) intersection2 -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_DOMElement [@@js.global "cloneElement"]
  val cloneElement: element:'P _React_FunctionComponentElement -> ?props:('P Partial.t_1, _React_Attributes) intersection2 -> children:(_React_ReactNode list [@js.variadic]) -> 'P _React_FunctionComponentElement [@@js.global "cloneElement"]
  val cloneElement: element:('P, 'T) _React_CElement -> ?props:('P Partial.t_1, 'T _React_ClassAttributes) intersection2 -> children:(_React_ReactNode list [@js.variadic]) -> ('P, 'T) _React_CElement [@@js.global "cloneElement"]
  val cloneElement: element:('P, any _React_JSXElementConstructor or_string) _React_ReactElement -> ?props:('P Partial.t_1, _React_Attributes) intersection2 -> children:(_React_ReactNode list [@js.variadic]) -> ('P, any _React_JSXElementConstructor or_string) _React_ReactElement [@@js.global "cloneElement"]
  module[@js.scope "ProviderProps"] ProviderProps : sig
    type 'T t = 'T _React_ProviderProps
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ProviderProps of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ProviderProps of 'T]
    ]
    val get_value: 'T t -> 'T [@@js.get "value"]
    val set_value: 'T t -> 'T -> unit [@@js.set "value"]
    val get_children: 'T t -> _React_ReactNode [@@js.get "children"]
    val set_children: 'T t -> _React_ReactNode -> unit [@@js.set "children"]
  end
  module[@js.scope "ConsumerProps"] ConsumerProps : sig
    type 'T t = 'T _React_ConsumerProps
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ConsumerProps of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ConsumerProps of 'T]
    ]
    val children: 'T t -> value:'T -> _React_ReactNode [@@js.call "children"]
  end
  module[@js.scope "ExoticComponent"] ExoticComponent : sig
    type 'P t = 'P _React_ExoticComponent
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_ExoticComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ExoticComponent of 'P]
    ]
    (** **NOTE**: Exotic components are not callable. *)
    val apply: 'P t -> props:'P -> (any, any _React_JSXElementConstructor or_string) _React_ReactElement or_null [@@js.apply]
    val get___typeof: 'P t -> symbol [@@js.get "$$typeof"]
  end
  module[@js.scope "NamedExoticComponent"] NamedExoticComponent : sig
    type 'P t = 'P _React_NamedExoticComponent
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_ExoticComponent of 'P | `React_NamedExoticComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ExoticComponent of 'P | `React_NamedExoticComponent of 'P]
    ]
    val get_displayName: 'P t -> string [@@js.get "displayName"]
    val set_displayName: 'P t -> string -> unit [@@js.set "displayName"]
    val cast: 'P t -> 'P _React_ExoticComponent [@@js.cast]
  end
  module[@js.scope "ProviderExoticComponent"] ProviderExoticComponent : sig
    type 'P t = 'P _React_ProviderExoticComponent
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_ExoticComponent of 'P | `React_ProviderExoticComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ExoticComponent of 'P | `React_ProviderExoticComponent of 'P]
    ]
    val get_propTypes: 'P t -> 'P _React_WeakValidationMap [@@js.get "propTypes"]
    val set_propTypes: 'P t -> 'P _React_WeakValidationMap -> unit [@@js.set "propTypes"]
    val cast: 'P t -> 'P _React_ExoticComponent [@@js.cast]
  end
  module ContextType : sig
    type 'C t = 'C _React_ContextType
    val t_to_js: ('C -> Ojs.t) -> 'C t -> Ojs.t
    val t_of_js: (Ojs.t -> 'C) -> Ojs.t -> 'C t
    type 'C t_1 = 'C t
    val t_1_to_js: ('C -> Ojs.t) -> 'C t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'C) -> Ojs.t -> 'C t_1
    [@@@js.stop]
    type 'C tags = [`React_ContextType of 'C]
    [@@@js.start]
    [@@@js.implem 
      type 'C tags = [`React_ContextType of 'C]
    ]
  end
  module Provider : sig
    type 'T t = 'T _React_Provider
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ExoticComponent of 'T _React_ProviderProps | `React_Provider of 'T | `React_ProviderExoticComponent of 'T _React_ProviderProps]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ExoticComponent of 'T _React_ProviderProps | `React_Provider of 'T | `React_ProviderExoticComponent of 'T _React_ProviderProps]
    ]
  end
  module Consumer : sig
    type 'T t = 'T _React_Consumer
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Consumer of 'T | `React_ExoticComponent of 'T _React_ConsumerProps]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Consumer of 'T | `React_ExoticComponent of 'T _React_ConsumerProps]
    ]
  end
  module[@js.scope "Context"] Context : sig
    type 'T t = 'T _React_Context
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Context of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Context of 'T]
    ]
    val get_Provider: 'T t -> 'T _React_Provider [@@js.get "Provider"]
    val set_Provider: 'T t -> 'T _React_Provider -> unit [@@js.set "Provider"]
    val get_Consumer: 'T t -> 'T _React_Consumer [@@js.get "Consumer"]
    val set_Consumer: 'T t -> 'T _React_Consumer -> unit [@@js.set "Consumer"]
    val get_displayName: 'T t -> string [@@js.get "displayName"]
    val set_displayName: 'T t -> string -> unit [@@js.set "displayName"]
  end
  val createContext: defaultValue:'T -> 'T _React_Context [@@js.global "createContext"]
  val isValidElement: object_:anonymous_interface_0 or_null_or_undefined -> bool [@@js.global "isValidElement"]
  val children: _React_ReactChildren [@@js.global "Children"]
  val fragment: anonymous_interface_4 _React_ExoticComponent [@@js.global "Fragment"]
  val strictMode: anonymous_interface_4 _React_ExoticComponent [@@js.global "StrictMode"]
  module[@js.scope "SuspenseProps"] SuspenseProps : sig
    type t = _React_SuspenseProps
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_SuspenseProps]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_SuspenseProps]
    ]
    val get_children: t -> _React_ReactNode [@@js.get "children"]
    val set_children: t -> _React_ReactNode -> unit [@@js.set "children"]
    (** A fallback react tree to show when a Suspense child (like React.lazy) suspends *)
    (** A fallback react tree to show when a Suspense child (like React.lazy) suspends *)
    val get_fallback: t -> _React_ReactNode NonNullable.t_1 or_null [@@js.get "fallback"]
    (** A fallback react tree to show when a Suspense child (like React.lazy) suspends *)
    val set_fallback: t -> _React_ReactNode NonNullable.t_1 or_null -> unit [@@js.set "fallback"]
  end
  (**
    This feature is not yet available for server-side rendering.
    Suspense support will be added in a later release.
  *)
  val suspense: _React_SuspenseProps _React_ExoticComponent [@@js.global "Suspense"]
  val version: string [@@js.global "version"]
  (** \{\@link https://reactjs.org/docs/profiler.html#onrender-callback Profiler API\} *)
  module[@js.scope "ProfilerOnRenderCallback"] ProfilerOnRenderCallback : sig
    type t = _React_ProfilerOnRenderCallback
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ProfilerOnRenderCallback]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ProfilerOnRenderCallback]
    ]
    val apply: t -> id:string -> phase:([`L_s166_mount | `L_s274_update] [@js.enum]) -> actualDuration:float -> baseDuration:float -> startTime:float -> commitTime:float -> interactions:SchedulerInteraction.t_0 Set.t_1 -> unit [@@js.apply]
  end
  module[@js.scope "ProfilerProps"] ProfilerProps : sig
    type t = _React_ProfilerProps
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ProfilerProps]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ProfilerProps]
    ]
    val get_children: t -> _React_ReactNode [@@js.get "children"]
    val set_children: t -> _React_ReactNode -> unit [@@js.set "children"]
    val get_id: t -> string [@@js.get "id"]
    val set_id: t -> string -> unit [@@js.set "id"]
    val get_onRender: t -> _React_ProfilerOnRenderCallback [@@js.get "onRender"]
    val set_onRender: t -> _React_ProfilerOnRenderCallback -> unit [@@js.set "onRender"]
  end
  val profiler: _React_ProfilerProps _React_ExoticComponent [@@js.global "Profiler"]
  module ReactInstance : sig
    type t = _React_ReactInstance
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactInstance]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactInstance]
    ]
  end
  module[@js.scope "Component"] Component : sig
    type ('P, 'S, 'SS) t = ('P, 'S, 'SS) _React_Component
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t
    type ('P, 'S, 'SS) t_3 = ('P, 'S, 'SS) t
    val t_3_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t_3
    type ('P, 'S) t_2 = ('P, 'S, any) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    type 'P t_1 = ('P, anonymous_interface_0, any) t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = (anonymous_interface_0, anonymous_interface_0, any) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('P, 'S, 'SS) tags = [`React_Component of ('P * 'S * 'SS) | `React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S, 'SS) tags = [`React_Component of ('P * 'S * 'SS) | `React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS)]
    ]
    (**
      If set, `this.context` will be set at runtime to the current value of the given Context.
      
      Usage:
      
      ```ts
      type MyContext = number
      const Ctx = React.createContext<MyContext>(0)
      
      class Foo extends React.Component \{
        static contextType = Ctx
        context!: React.ContextType<typeof Ctx>
        render () \{
          return <>My context's value: \{this.context\}</>;
        \}
      \}
      ```
      @see "https" ://reactjs.org/docs/context.html#classcontexttype
    *)
    (**
      If set, `this.context` will be set at runtime to the current value of the given Context.
      
      Usage:
      
      ```ts
      type MyContext = number
      const Ctx = React.createContext<MyContext>(0)
      
      class Foo extends React.Component \{
        static contextType = Ctx
        context!: React.ContextType<typeof Ctx>
        render () \{
          return <>My context's value: \{this.context\}</>;
        \}
      \}
      ```
      @see "https" ://reactjs.org/docs/context.html#classcontexttype
    *)
    val get_contextType: unit -> any _React_Context [@@js.get "contextType"]
    (**
      If set, `this.context` will be set at runtime to the current value of the given Context.
      
      Usage:
      
      ```ts
      type MyContext = number
      const Ctx = React.createContext<MyContext>(0)
      
      class Foo extends React.Component \{
        static contextType = Ctx
        context!: React.ContextType<typeof Ctx>
        render () \{
          return <>My context's value: \{this.context\}</>;
        \}
      \}
      ```
      @see "https" ://reactjs.org/docs/context.html#classcontexttype
    *)
    val set_contextType: any _React_Context -> unit [@@js.set "contextType"]
    (**
      If using the new style context, re-declare this in your class to be the
      `React.ContextType` of your `static contextType`.
      Should be used with type annotation or static contextType.
      
      ```ts
      static contextType = MyContext
      // For TS pre-3.7:
      context!: React.ContextType<typeof MyContext>
      // For TS 3.7 and above:
      declare context: React.ContextType<typeof MyContext>
      ```
      @see "https" ://reactjs.org/docs/context.html
    *)
    (**
      If using the new style context, re-declare this in your class to be the
      `React.ContextType` of your `static contextType`.
      Should be used with type annotation or static contextType.
      
      ```ts
      static contextType = MyContext
      // For TS pre-3.7:
      context!: React.ContextType<typeof MyContext>
      // For TS 3.7 and above:
      declare context: React.ContextType<typeof MyContext>
      ```
      @see "https" ://reactjs.org/docs/context.html
    *)
    val get_context: ('P, 'S, 'SS) t -> any [@@js.get "context"]
    (**
      If using the new style context, re-declare this in your class to be the
      `React.ContextType` of your `static contextType`.
      Should be used with type annotation or static contextType.
      
      ```ts
      static contextType = MyContext
      // For TS pre-3.7:
      context!: React.ContextType<typeof MyContext>
      // For TS 3.7 and above:
      declare context: React.ContextType<typeof MyContext>
      ```
      @see "https" ://reactjs.org/docs/context.html
    *)
    val set_context: ('P, 'S, 'SS) t -> any -> unit [@@js.set "context"]
    val create: props:('P, 'P Readonly.t_1) union2 -> ('P, 'S, 'SS) t [@@js.create]
    (**
      @deprecated 
      @see "https" ://reactjs.org/docs/legacy-context.html
    *)
    val create': props:'P -> context:any -> ('P, 'S, 'SS) t [@@js.create]
    val setState: ('P, 'S, 'SS) t -> state:(('S, ('S, 'K) Pick.t_2) union2 or_null, (prevState:'S Readonly.t_1 -> props:'P Readonly.t_1 -> ('S, ('S, 'K) Pick.t_2) union2 or_null)) union2 -> ?callback:(unit -> unit) -> unit -> unit [@@js.call "setState"]
    val forceUpdate: ('P, 'S, 'SS) t -> ?callback:(unit -> unit) -> unit -> unit [@@js.call "forceUpdate"]
    val render: ('P, 'S, 'SS) t -> _React_ReactNode [@@js.call "render"]
    val get_props: ('P, 'S, 'SS) t -> ('P Readonly.t_1, anonymous_interface_4 Readonly.t_1) intersection2 [@@js.get "props"]
    val get_state: ('P, 'S, 'SS) t -> 'S Readonly.t_1 [@@js.get "state"]
    val set_state: ('P, 'S, 'SS) t -> 'S Readonly.t_1 -> unit [@@js.set "state"]
    (** @deprecated https://reactjs.org/docs/refs-and-the-dom.html#legacy-api-string-refs *)
    (** @deprecated https://reactjs.org/docs/refs-and-the-dom.html#legacy-api-string-refs *)
    val get_refs: ('P, 'S, 'SS) t -> anonymous_interface_7 [@@js.get "refs"]
    (** @deprecated https://reactjs.org/docs/refs-and-the-dom.html#legacy-api-string-refs *)
    val set_refs: ('P, 'S, 'SS) t -> anonymous_interface_7 -> unit [@@js.set "refs"]
    val cast: ('P, 'S, 'SS) t -> ('P, 'S, 'SS) _React_ComponentLifecycle [@@js.cast]
  end
  module[@js.scope "PureComponent"] PureComponent : sig
    type ('P, 'S, 'SS) t = ('P, 'S, 'SS) _React_PureComponent
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t
    type ('P, 'S, 'SS) t_3 = ('P, 'S, 'SS) t
    val t_3_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t_3
    type ('P, 'S) t_2 = ('P, 'S, any) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    type 'P t_1 = ('P, anonymous_interface_0, any) t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = (anonymous_interface_0, anonymous_interface_0, any) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('P, 'S, 'SS) tags = [`React_Component of ('P * 'S * 'SS) | `React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS) | `React_PureComponent of ('P * 'S * 'SS)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S, 'SS) tags = [`React_Component of ('P * 'S * 'SS) | `React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS) | `React_PureComponent of ('P * 'S * 'SS)]
    ]
    val cast: ('P, 'S, 'SS) t -> ('P, 'S, 'SS) _React_Component [@@js.cast]
  end
  module[@js.scope "ClassicComponent"] ClassicComponent : sig
    type ('P, 'S) t = ('P, 'S) _React_ClassicComponent
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    type 'P t_1 = ('P, anonymous_interface_0) t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = (anonymous_interface_0, anonymous_interface_0) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('P, 'S) tags = [`React_ClassicComponent of ('P * 'S) | `React_Component of ('P * 'S * any) | `React_ComponentLifecycle of ('P * 'S * any) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_ClassicComponent of ('P * 'S) | `React_Component of ('P * 'S * any) | `React_ComponentLifecycle of ('P * 'S * any) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)]
    ]
    val replaceState: ('P, 'S) t -> nextState:'S -> ?callback:(unit -> unit) -> unit -> unit [@@js.call "replaceState"]
    val isMounted: ('P, 'S) t -> bool [@@js.call "isMounted"]
    val getInitialState: ('P, 'S) t -> 'S [@@js.call "getInitialState"]
    val cast: ('P, 'S) t -> ('P, 'S, any) _React_Component [@@js.cast]
  end
  module[@js.scope "ChildContextProvider"] ChildContextProvider : sig
    type 'CC t = 'CC _React_ChildContextProvider
    val t_to_js: ('CC -> Ojs.t) -> 'CC t -> Ojs.t
    val t_of_js: (Ojs.t -> 'CC) -> Ojs.t -> 'CC t
    type 'CC t_1 = 'CC t
    val t_1_to_js: ('CC -> Ojs.t) -> 'CC t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'CC) -> Ojs.t -> 'CC t_1
    [@@@js.stop]
    type 'CC tags = [`React_ChildContextProvider of 'CC]
    [@@@js.start]
    [@@@js.implem 
      type 'CC tags = [`React_ChildContextProvider of 'CC]
    ]
    val getChildContext: 'CC t -> 'CC [@@js.call "getChildContext"]
  end
  (**
    @deprecated as of recent React versions, function components can no
    longer be considered 'stateless'. Please use `FunctionComponent` instead.
    @see "" \[React Hooks\](https://reactjs.org/docs/hooks-intro.html)
  *)
  module SFC : sig
    type 'P t = 'P _React_SFC
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_FunctionComponent of 'P | `React_SFC of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FunctionComponent of 'P | `React_SFC of 'P]
    ]
  end
  (**
    @deprecated as of recent React versions, function components can no
    longer be considered 'stateless'. Please use `FunctionComponent` instead.
    @see "" \[React Hooks\](https://reactjs.org/docs/hooks-intro.html)
  *)
  module StatelessComponent : sig
    type 'P t = 'P _React_StatelessComponent
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_FunctionComponent of 'P | `React_StatelessComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FunctionComponent of 'P | `React_StatelessComponent of 'P]
    ]
  end
  module FC : sig
    type 'P t = 'P _React_FC
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_FC of 'P | `React_FunctionComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FC of 'P | `React_FunctionComponent of 'P]
    ]
  end
  module[@js.scope "FunctionComponent"] FunctionComponent : sig
    type 'P t = 'P _React_FunctionComponent
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_FunctionComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_FunctionComponent of 'P]
    ]
    val apply: 'P t -> props:'P _React_PropsWithChildren -> ?context:any -> unit -> (any, any) _React_ReactElement or_null [@@js.apply]
    val get_propTypes: 'P t -> 'P _React_WeakValidationMap [@@js.get "propTypes"]
    val set_propTypes: 'P t -> 'P _React_WeakValidationMap -> unit [@@js.set "propTypes"]
    val get_contextTypes: 'P t -> any _React_ValidationMap [@@js.get "contextTypes"]
    val set_contextTypes: 'P t -> any _React_ValidationMap -> unit [@@js.set "contextTypes"]
    val get_defaultProps: 'P t -> 'P Partial.t_1 [@@js.get "defaultProps"]
    val set_defaultProps: 'P t -> 'P Partial.t_1 -> unit [@@js.set "defaultProps"]
    val get_displayName: 'P t -> string [@@js.get "displayName"]
    val set_displayName: 'P t -> string -> unit [@@js.set "displayName"]
  end
  module VFC : sig
    type 'P t = 'P _React_VFC
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_VFC of 'P | `React_VoidFunctionComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_VFC of 'P | `React_VoidFunctionComponent of 'P]
    ]
  end
  module[@js.scope "VoidFunctionComponent"] VoidFunctionComponent : sig
    type 'P t = 'P _React_VoidFunctionComponent
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_VoidFunctionComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_VoidFunctionComponent of 'P]
    ]
    val apply: 'P t -> props:'P -> ?context:any -> unit -> (any, any) _React_ReactElement or_null [@@js.apply]
    val get_propTypes: 'P t -> 'P _React_WeakValidationMap [@@js.get "propTypes"]
    val set_propTypes: 'P t -> 'P _React_WeakValidationMap -> unit [@@js.set "propTypes"]
    val get_contextTypes: 'P t -> any _React_ValidationMap [@@js.get "contextTypes"]
    val set_contextTypes: 'P t -> any _React_ValidationMap -> unit [@@js.set "contextTypes"]
    val get_defaultProps: 'P t -> 'P Partial.t_1 [@@js.get "defaultProps"]
    val set_defaultProps: 'P t -> 'P Partial.t_1 -> unit [@@js.set "defaultProps"]
    val get_displayName: 'P t -> string [@@js.get "displayName"]
    val set_displayName: 'P t -> string -> unit [@@js.set "displayName"]
  end
  module ForwardedRef : sig
    type 'T t = 'T _React_ForwardedRef
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ForwardedRef of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ForwardedRef of 'T]
    ]
  end
  module[@js.scope "ForwardRefRenderFunction"] ForwardRefRenderFunction : sig
    type ('T, 'P) t = ('T, 'P) _React_ForwardRefRenderFunction
    val t_to_js: ('T -> Ojs.t) -> ('P -> Ojs.t) -> ('T, 'P) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'P) -> Ojs.t -> ('T, 'P) t
    type ('T, 'P) t_2 = ('T, 'P) t
    val t_2_to_js: ('T -> Ojs.t) -> ('P -> Ojs.t) -> ('T, 'P) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'P) -> Ojs.t -> ('T, 'P) t_2
    [@@@js.stop]
    type ('T, 'P) tags = [`React_ForwardRefRenderFunction of ('T * 'P)]
    [@@@js.start]
    [@@@js.implem 
      type ('T, 'P) tags = [`React_ForwardRefRenderFunction of ('T * 'P)]
    ]
    val apply: ('T, 'P) t -> props:'P _React_PropsWithChildren -> ref:'T _React_ForwardedRef -> (any, any _React_JSXElementConstructor or_string) _React_ReactElement or_null [@@js.apply]
    val get_displayName: ('T, 'P) t -> string [@@js.get "displayName"]
    val set_displayName: ('T, 'P) t -> string -> unit [@@js.set "displayName"]
    (** defaultProps are not supported on render functions *)
    (** defaultProps are not supported on render functions *)
    val get_defaultProps: ('T, 'P) t -> never [@@js.get "defaultProps"]
    (** defaultProps are not supported on render functions *)
    val set_defaultProps: ('T, 'P) t -> never -> unit [@@js.set "defaultProps"]
    (** propTypes are not supported on render functions *)
    (** propTypes are not supported on render functions *)
    val get_propTypes: ('T, 'P) t -> never [@@js.get "propTypes"]
    (** propTypes are not supported on render functions *)
    val set_propTypes: ('T, 'P) t -> never -> unit [@@js.set "propTypes"]
  end
  (**
    @deprecated Use ForwardRefRenderFunction. forwardRef doesn't accept a
    "real" component.
  *)
  module[@js.scope "RefForwardingComponent"] RefForwardingComponent : sig
    type ('T, 'P) t = ('T, 'P) _React_RefForwardingComponent
    val t_to_js: ('T -> Ojs.t) -> ('P -> Ojs.t) -> ('T, 'P) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'P) -> Ojs.t -> ('T, 'P) t
    type ('T, 'P) t_2 = ('T, 'P) t
    val t_2_to_js: ('T -> Ojs.t) -> ('P -> Ojs.t) -> ('T, 'P) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'P) -> Ojs.t -> ('T, 'P) t_2
    [@@@js.stop]
    type ('T, 'P) tags = [`React_ForwardRefRenderFunction of ('T * 'P) | `React_RefForwardingComponent of ('T * 'P)]
    [@@@js.start]
    [@@@js.implem 
      type ('T, 'P) tags = [`React_ForwardRefRenderFunction of ('T * 'P) | `React_RefForwardingComponent of ('T * 'P)]
    ]
    val cast: ('T, 'P) t -> ('T, 'P) _React_ForwardRefRenderFunction [@@js.cast]
  end
  module[@js.scope "ComponentClass"] ComponentClass : sig
    type ('P, 'S) t = ('P, 'S) _React_ComponentClass
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    type 'P t_1 = ('P, _React_ComponentState) t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = (anonymous_interface_0, _React_ComponentState) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('P, 'S) tags = [`React_ComponentClass of ('P * 'S) | `React_StaticLifecycle of ('P * 'S)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_ComponentClass of ('P * 'S) | `React_StaticLifecycle of ('P * 'S)]
    ]
    val create: ('P, 'S) t -> props:'P -> ?context:any -> unit -> ('P, 'S, any) _React_Component [@@js.apply_newable]
    val get_propTypes: ('P, 'S) t -> 'P _React_WeakValidationMap [@@js.get "propTypes"]
    val set_propTypes: ('P, 'S) t -> 'P _React_WeakValidationMap -> unit [@@js.set "propTypes"]
    val get_contextType: ('P, 'S) t -> any _React_Context [@@js.get "contextType"]
    val set_contextType: ('P, 'S) t -> any _React_Context -> unit [@@js.set "contextType"]
    val get_contextTypes: ('P, 'S) t -> any _React_ValidationMap [@@js.get "contextTypes"]
    val set_contextTypes: ('P, 'S) t -> any _React_ValidationMap -> unit [@@js.set "contextTypes"]
    val get_childContextTypes: ('P, 'S) t -> any _React_ValidationMap [@@js.get "childContextTypes"]
    val set_childContextTypes: ('P, 'S) t -> any _React_ValidationMap -> unit [@@js.set "childContextTypes"]
    val get_defaultProps: ('P, 'S) t -> 'P Partial.t_1 [@@js.get "defaultProps"]
    val set_defaultProps: ('P, 'S) t -> 'P Partial.t_1 -> unit [@@js.set "defaultProps"]
    val get_displayName: ('P, 'S) t -> string [@@js.get "displayName"]
    val set_displayName: ('P, 'S) t -> string -> unit [@@js.set "displayName"]
    val cast: ('P, 'S) t -> ('P, 'S) _React_StaticLifecycle [@@js.cast]
  end
  module[@js.scope "ClassicComponentClass"] ClassicComponentClass : sig
    type 'P t = 'P _React_ClassicComponentClass
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    type t_0 = anonymous_interface_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'P tags = [`React_ClassicComponentClass of 'P | `React_ComponentClass of ('P * _React_ComponentState) | `React_StaticLifecycle of ('P * _React_ComponentState)]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ClassicComponentClass of 'P | `React_ComponentClass of ('P * _React_ComponentState) | `React_StaticLifecycle of ('P * _React_ComponentState)]
    ]
    val create: 'P t -> props:'P -> ?context:any -> unit -> ('P, _React_ComponentState) _React_ClassicComponent [@@js.apply_newable]
    val getDefaultProps: 'P t -> 'P [@@js.call "getDefaultProps"]
    val cast: 'P t -> ('P, _React_ComponentState) _React_ComponentClass [@@js.cast]
  end
  (**
    We use an intersection type to infer multiple type parameters from
    a single argument, which is useful for many top-level API defs.
    See https://github.com/Microsoft/TypeScript/issues/7234 for more info.
  *)
  module ClassType : sig
    type ('P, 'T, 'C) t = ('P, 'T, 'C) _React_ClassType
    val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('C -> Ojs.t) -> ('P, 'T, 'C) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> (Ojs.t -> 'C) -> Ojs.t -> ('P, 'T, 'C) t
    type ('P, 'T, 'C) t_3 = ('P, 'T, 'C) t
    val t_3_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('C -> Ojs.t) -> ('P, 'T, 'C) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> (Ojs.t -> 'C) -> Ojs.t -> ('P, 'T, 'C) t_3
    [@@@js.stop]
    type ('P, 'T, 'C) tags = [`React_ClassType of ('P * 'T * 'C)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'T, 'C) tags = [`React_ClassType of ('P * 'T * 'C)]
    ]
  end
  module[@js.scope "ComponentLifecycle"] ComponentLifecycle : sig
    type ('P, 'S, 'SS) t = ('P, 'S, 'SS) _React_ComponentLifecycle
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t
    type ('P, 'S, 'SS) t_3 = ('P, 'S, 'SS) t
    val t_3_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t_3
    [@@@js.stop]
    type ('P, 'S, 'SS) tags = [`React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S, 'SS) tags = [`React_ComponentLifecycle of ('P * 'S * 'SS) | `React_DeprecatedLifecycle of ('P * 'S) | `React_NewLifecycle of ('P * 'S * 'SS)]
    ]
    (** Called immediately after a component is mounted. Setting state here will trigger re-rendering. *)
    val componentDidMount: ('P, 'S, 'SS) t -> unit [@@js.call "componentDidMount"]
    (**
      Called to determine whether the change in props and state should trigger a re-render.
      
      `Component` always returns true.
      `PureComponent` implements a shallow comparison on props and state and returns true if any
      props or states have changed.
      
      If false is returned, `Component#render`, `componentWillUpdate`
      and `componentDidUpdate` will not be called.
    *)
    val shouldComponentUpdate: ('P, 'S, 'SS) t -> nextProps:'P Readonly.t_1 -> nextState:'S Readonly.t_1 -> nextContext:any -> bool [@@js.call "shouldComponentUpdate"]
    (**
      Called immediately before a component is destroyed. Perform any necessary cleanup in this method, such as
      cancelled network requests, or cleaning up any DOM elements created in `componentDidMount`.
    *)
    val componentWillUnmount: ('P, 'S, 'SS) t -> unit [@@js.call "componentWillUnmount"]
    (**
      Catches exceptions generated in descendant components. Unhandled exceptions will cause
      the entire component tree to unmount.
    *)
    val componentDidCatch: ('P, 'S, 'SS) t -> error:Error.t_0 -> errorInfo:_React_ErrorInfo -> unit [@@js.call "componentDidCatch"]
    val cast: ('P, 'S, 'SS) t -> ('P, 'S, 'SS) _React_NewLifecycle [@@js.cast]
    val cast': ('P, 'S, 'SS) t -> ('P, 'S) _React_DeprecatedLifecycle [@@js.cast]
  end
  module[@js.scope "StaticLifecycle"] StaticLifecycle : sig
    type ('P, 'S) t = ('P, 'S) _React_StaticLifecycle
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    [@@@js.stop]
    type ('P, 'S) tags = [`React_StaticLifecycle of ('P * 'S)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_StaticLifecycle of ('P * 'S)]
    ]
    val get_getDerivedStateFromProps: ('P, 'S) t -> ('P, 'S) _React_GetDerivedStateFromProps [@@js.get "getDerivedStateFromProps"]
    val set_getDerivedStateFromProps: ('P, 'S) t -> ('P, 'S) _React_GetDerivedStateFromProps -> unit [@@js.set "getDerivedStateFromProps"]
    val get_getDerivedStateFromError: ('P, 'S) t -> ('P, 'S) _React_GetDerivedStateFromError [@@js.get "getDerivedStateFromError"]
    val set_getDerivedStateFromError: ('P, 'S) t -> ('P, 'S) _React_GetDerivedStateFromError -> unit [@@js.set "getDerivedStateFromError"]
  end
  module[@js.scope "GetDerivedStateFromProps"] GetDerivedStateFromProps : sig
    type ('P, 'S) t = ('P, 'S) _React_GetDerivedStateFromProps
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    [@@@js.stop]
    type ('P, 'S) tags = [`React_GetDerivedStateFromProps of ('P * 'S)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_GetDerivedStateFromProps of ('P * 'S)]
    ]
    val apply: ('P, 'S) t -> nextProps:'P Readonly.t_1 -> prevState:'S -> 'S Partial.t_1 or_null [@@js.apply]
  end
  module[@js.scope "GetDerivedStateFromError"] GetDerivedStateFromError : sig
    type ('P, 'S) t = ('P, 'S) _React_GetDerivedStateFromError
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    [@@@js.stop]
    type ('P, 'S) tags = [`React_GetDerivedStateFromError of ('P * 'S)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_GetDerivedStateFromError of ('P * 'S)]
    ]
    val apply: ('P, 'S) t -> error:any -> 'S Partial.t_1 or_null [@@js.apply]
  end
  module[@js.scope "NewLifecycle"] NewLifecycle : sig
    type ('P, 'S, 'SS) t = ('P, 'S, 'SS) _React_NewLifecycle
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t
    type ('P, 'S, 'SS) t_3 = ('P, 'S, 'SS) t
    val t_3_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('SS -> Ojs.t) -> ('P, 'S, 'SS) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> (Ojs.t -> 'SS) -> Ojs.t -> ('P, 'S, 'SS) t_3
    [@@@js.stop]
    type ('P, 'S, 'SS) tags = [`React_NewLifecycle of ('P * 'S * 'SS)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S, 'SS) tags = [`React_NewLifecycle of ('P * 'S * 'SS)]
    ]
    (**
      Runs before React applies the result of `render` to the document, and
      returns an object to be given to componentDidUpdate. Useful for saving
      things such as scroll position before `render` causes changes to it.
      
      Note: the presence of getSnapshotBeforeUpdate prevents any of the deprecated
      lifecycle events from running.
    *)
    val getSnapshotBeforeUpdate: ('P, 'S, 'SS) t -> prevProps:'P Readonly.t_1 -> prevState:'S Readonly.t_1 -> 'SS or_null [@@js.call "getSnapshotBeforeUpdate"]
    (**
      Called immediately after updating occurs. Not called for the initial render.
      
      The snapshot is only present if getSnapshotBeforeUpdate is present and returns non-null.
    *)
    val componentDidUpdate: ('P, 'S, 'SS) t -> prevProps:'P Readonly.t_1 -> prevState:'S Readonly.t_1 -> ?snapshot:'SS -> unit -> unit [@@js.call "componentDidUpdate"]
  end
  module[@js.scope "DeprecatedLifecycle"] DeprecatedLifecycle : sig
    type ('P, 'S) t = ('P, 'S) _React_DeprecatedLifecycle
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    [@@@js.stop]
    type ('P, 'S) tags = [`React_DeprecatedLifecycle of ('P * 'S)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_DeprecatedLifecycle of ('P * 'S)]
    ]
    (**
      Called immediately before mounting occurs, and before `Component#render`.
      Avoid introducing any side-effects or subscriptions in this method.
      
      Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
      prevents this from being invoked.
      @deprecated 16.3, use componentDidMount or the constructor instead; will stop working in React 17
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#initializing-state
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#gradual-migration-path
    *)
    val componentWillMount: ('P, 'S) t -> unit [@@js.call "componentWillMount"]
    (**
      Called immediately before mounting occurs, and before `Component#render`.
      Avoid introducing any side-effects or subscriptions in this method.
      
      This method will not stop working in React 17.
      
      Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
      prevents this from being invoked.
      @deprecated 16.3, use componentDidMount or the constructor instead
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#initializing-state
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#gradual-migration-path
    *)
    val uNSAFE_componentWillMount: ('P, 'S) t -> unit [@@js.call "UNSAFE_componentWillMount"]
    (**
      Called when the component may be receiving new props.
      React may call this even if props have not changed, so be sure to compare new and existing
      props if you only want to handle changes.
      
      Calling `Component#setState` generally does not trigger this method.
      
      Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
      prevents this from being invoked.
      @deprecated 16.3, use static getDerivedStateFromProps instead; will stop working in React 17
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#updating-state-based-on-props
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#gradual-migration-path
    *)
    val componentWillReceiveProps: ('P, 'S) t -> nextProps:'P Readonly.t_1 -> nextContext:any -> unit [@@js.call "componentWillReceiveProps"]
    (**
      Called when the component may be receiving new props.
      React may call this even if props have not changed, so be sure to compare new and existing
      props if you only want to handle changes.
      
      Calling `Component#setState` generally does not trigger this method.
      
      This method will not stop working in React 17.
      
      Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
      prevents this from being invoked.
      @deprecated 16.3, use static getDerivedStateFromProps instead
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#updating-state-based-on-props
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#gradual-migration-path
    *)
    val uNSAFE_componentWillReceiveProps: ('P, 'S) t -> nextProps:'P Readonly.t_1 -> nextContext:any -> unit [@@js.call "UNSAFE_componentWillReceiveProps"]
    (**
      Called immediately before rendering when new props or state is received. Not called for the initial render.
      
      Note: You cannot call `Component#setState` here.
      
      Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
      prevents this from being invoked.
      @deprecated 16.3, use getSnapshotBeforeUpdate instead; will stop working in React 17
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#reading-dom-properties-before-an-update
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#gradual-migration-path
    *)
    val componentWillUpdate: ('P, 'S) t -> nextProps:'P Readonly.t_1 -> nextState:'S Readonly.t_1 -> nextContext:any -> unit [@@js.call "componentWillUpdate"]
    (**
      Called immediately before rendering when new props or state is received. Not called for the initial render.
      
      Note: You cannot call `Component#setState` here.
      
      This method will not stop working in React 17.
      
      Note: the presence of getSnapshotBeforeUpdate or getDerivedStateFromProps
      prevents this from being invoked.
      @deprecated 16.3, use getSnapshotBeforeUpdate instead
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#reading-dom-properties-before-an-update
      @see "https" ://reactjs.org/blog/2018/03/27/update-on-async-rendering.html#gradual-migration-path
    *)
    val uNSAFE_componentWillUpdate: ('P, 'S) t -> nextProps:'P Readonly.t_1 -> nextState:'S Readonly.t_1 -> nextContext:any -> unit [@@js.call "UNSAFE_componentWillUpdate"]
  end
  module[@js.scope "Mixin"] Mixin : sig
    type ('P, 'S) t = ('P, 'S) _React_Mixin
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    [@@@js.stop]
    type ('P, 'S) tags = [`React_ComponentLifecycle of ('P * 'S * any) | `React_DeprecatedLifecycle of ('P * 'S) | `React_Mixin of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_ComponentLifecycle of ('P * 'S * any) | `React_DeprecatedLifecycle of ('P * 'S) | `React_Mixin of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)]
    ]
    val get_mixins: ('P, 'S) t -> ('P, 'S) t list [@@js.get "mixins"]
    val set_mixins: ('P, 'S) t -> ('P, 'S) t list -> unit [@@js.set "mixins"]
    val get_statics: ('P, 'S) t -> anonymous_interface_8 [@@js.get "statics"]
    val set_statics: ('P, 'S) t -> anonymous_interface_8 -> unit [@@js.set "statics"]
    val get_displayName: ('P, 'S) t -> string [@@js.get "displayName"]
    val set_displayName: ('P, 'S) t -> string -> unit [@@js.set "displayName"]
    val get_propTypes: ('P, 'S) t -> any _React_ValidationMap [@@js.get "propTypes"]
    val set_propTypes: ('P, 'S) t -> any _React_ValidationMap -> unit [@@js.set "propTypes"]
    val get_contextTypes: ('P, 'S) t -> any _React_ValidationMap [@@js.get "contextTypes"]
    val set_contextTypes: ('P, 'S) t -> any _React_ValidationMap -> unit [@@js.set "contextTypes"]
    val get_childContextTypes: ('P, 'S) t -> any _React_ValidationMap [@@js.get "childContextTypes"]
    val set_childContextTypes: ('P, 'S) t -> any _React_ValidationMap -> unit [@@js.set "childContextTypes"]
    val getDefaultProps: ('P, 'S) t -> 'P [@@js.call "getDefaultProps"]
    val getInitialState: ('P, 'S) t -> 'S [@@js.call "getInitialState"]
    val cast: ('P, 'S) t -> ('P, 'S, any) _React_ComponentLifecycle [@@js.cast]
  end
  module[@js.scope "ComponentSpec"] ComponentSpec : sig
    type ('P, 'S) t = ('P, 'S) _React_ComponentSpec
    val t_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t
    type ('P, 'S) t_2 = ('P, 'S) t
    val t_2_to_js: ('P -> Ojs.t) -> ('S -> Ojs.t) -> ('P, 'S) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'S) -> Ojs.t -> ('P, 'S) t_2
    [@@@js.stop]
    type ('P, 'S) tags = [`React_ComponentLifecycle of ('P * 'S * any) | `React_ComponentSpec of ('P * 'S) | `React_DeprecatedLifecycle of ('P * 'S) | `React_Mixin of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)]
    [@@@js.start]
    [@@@js.implem 
      type ('P, 'S) tags = [`React_ComponentLifecycle of ('P * 'S * any) | `React_ComponentSpec of ('P * 'S) | `React_DeprecatedLifecycle of ('P * 'S) | `React_Mixin of ('P * 'S) | `React_NewLifecycle of ('P * 'S * any)]
    ]
    val render: ('P, 'S) t -> _React_ReactNode [@@js.call "render"]
    val get: ('P, 'S) t -> string -> any [@@js.index_get]
    val set: ('P, 'S) t -> string -> any -> unit [@@js.index_set]
    val cast: ('P, 'S) t -> ('P, 'S) _React_Mixin [@@js.cast]
  end
  val createRef: unit -> 'T _React_RefObject [@@js.global "createRef"]
  module[@js.scope "ForwardRefExoticComponent"] ForwardRefExoticComponent : sig
    type 'P t = 'P _React_ForwardRefExoticComponent
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_ExoticComponent of 'P | `React_ForwardRefExoticComponent of 'P | `React_NamedExoticComponent of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_ExoticComponent of 'P | `React_ForwardRefExoticComponent of 'P | `React_NamedExoticComponent of 'P]
    ]
    val get_defaultProps: 'P t -> 'P Partial.t_1 [@@js.get "defaultProps"]
    val set_defaultProps: 'P t -> 'P Partial.t_1 -> unit [@@js.set "defaultProps"]
    val get_propTypes: 'P t -> 'P _React_WeakValidationMap [@@js.get "propTypes"]
    val set_propTypes: 'P t -> 'P _React_WeakValidationMap -> unit [@@js.set "propTypes"]
    val cast: 'P t -> 'P _React_NamedExoticComponent [@@js.cast]
  end
  val forwardRef: render:('T, 'P) _React_ForwardRefRenderFunction -> ('P _React_PropsWithoutRef, 'T _React_RefAttributes) intersection2 _React_ForwardRefExoticComponent [@@js.global "forwardRef"]
  (** Ensures that the props do not include ref at all *)
  module PropsWithoutRef : sig
    type 'P t = 'P _React_PropsWithoutRef
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_PropsWithoutRef of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_PropsWithoutRef of 'P]
    ]
  end
  (** Ensures that the props do not include string ref, which cannot be forwarded *)
  module PropsWithRef : sig
    type 'P t = 'P _React_PropsWithRef
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_PropsWithRef of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_PropsWithRef of 'P]
    ]
  end
  module PropsWithChildren : sig
    type 'P t = 'P _React_PropsWithChildren
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    [@@@js.stop]
    type 'P tags = [`React_PropsWithChildren of 'P]
    [@@@js.start]
    [@@@js.implem 
      type 'P tags = [`React_PropsWithChildren of 'P]
    ]
  end
  (**
    NOTE: prefer ComponentPropsWithRef, if the ref is forwarded,
    or ComponentPropsWithoutRef when refs are not supported.
  *)
  module ComponentProps : sig
    type 'T t = 'T _React_ComponentProps
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ComponentProps of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ComponentProps of 'T]
    ]
  end
  module ComponentPropsWithRef : sig
    type 'T t = 'T _React_ComponentPropsWithRef
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ComponentPropsWithRef of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ComponentPropsWithRef of 'T]
    ]
  end
  module ComponentPropsWithoutRef : sig
    type 'T t = 'T _React_ComponentPropsWithoutRef
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ComponentPropsWithoutRef of 'T | `React_PropsWithoutRef of 'T _React_ComponentProps]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ComponentPropsWithoutRef of 'T | `React_PropsWithoutRef of 'T _React_ComponentProps]
    ]
  end
  module MemoExoticComponent : sig
    type 'T t = 'T _React_MemoExoticComponent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_MemoExoticComponent of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_MemoExoticComponent of 'T]
    ]
  end
  val memo: component:'P _React_SFC -> ?propsAreEqual:(prevProps:'P _React_PropsWithChildren Readonly.t_1 -> nextProps:'P _React_PropsWithChildren Readonly.t_1 -> bool) -> unit -> 'P _React_NamedExoticComponent [@@js.global "memo"]
  val memo: component:'T -> ?propsAreEqual:(prevProps:'T _React_ComponentProps Readonly.t_1 -> nextProps:'T _React_ComponentProps Readonly.t_1 -> bool) -> unit -> 'T _React_MemoExoticComponent [@@js.global "memo"]
  module LazyExoticComponent : sig
    type 'T t = 'T _React_LazyExoticComponent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_LazyExoticComponent of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_LazyExoticComponent of 'T]
    ]
  end
  val lazy_: factory:(unit -> anonymous_interface_5 Promise.t_1) -> 'T _React_LazyExoticComponent [@@js.global "lazy"]
  module SetStateAction : sig
    type 'S t = 'S _React_SetStateAction
    val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
    val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
    type 'S t_1 = 'S t
    val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
    [@@@js.stop]
    type 'S tags = [`React_SetStateAction of 'S]
    [@@@js.start]
    [@@@js.implem 
      type 'S tags = [`React_SetStateAction of 'S]
    ]
  end
  module[@js.scope "Dispatch"] Dispatch : sig
    type 'A t = 'A _React_Dispatch
    val t_to_js: ('A -> Ojs.t) -> 'A t -> Ojs.t
    val t_of_js: (Ojs.t -> 'A) -> Ojs.t -> 'A t
    type 'A t_1 = 'A t
    val t_1_to_js: ('A -> Ojs.t) -> 'A t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'A) -> Ojs.t -> 'A t_1
    [@@@js.stop]
    type 'A tags = [`React_Dispatch of 'A]
    [@@@js.start]
    [@@@js.implem 
      type 'A tags = [`React_Dispatch of 'A]
    ]
    val apply: 'A t -> value:'A -> unit [@@js.apply]
  end
  module[@js.scope "DispatchWithoutAction"] DispatchWithoutAction : sig
    type t = _React_DispatchWithoutAction
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_DispatchWithoutAction]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_DispatchWithoutAction]
    ]
    val apply: t -> unit [@@js.apply]
  end
  module[@js.scope "Reducer"] Reducer : sig
    type ('S, 'A) t = ('S, 'A) _React_Reducer
    val t_to_js: ('S -> Ojs.t) -> ('A -> Ojs.t) -> ('S, 'A) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'S) -> (Ojs.t -> 'A) -> Ojs.t -> ('S, 'A) t
    type ('S, 'A) t_2 = ('S, 'A) t
    val t_2_to_js: ('S -> Ojs.t) -> ('A -> Ojs.t) -> ('S, 'A) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'S) -> (Ojs.t -> 'A) -> Ojs.t -> ('S, 'A) t_2
    [@@@js.stop]
    type ('S, 'A) tags = [`React_Reducer of ('S * 'A)]
    [@@@js.start]
    [@@@js.implem 
      type ('S, 'A) tags = [`React_Reducer of ('S * 'A)]
    ]
    val apply: ('S, 'A) t -> prevState:'S -> action:'A -> 'S [@@js.apply]
  end
  module[@js.scope "ReducerWithoutAction"] ReducerWithoutAction : sig
    type 'S t = 'S _React_ReducerWithoutAction
    val t_to_js: ('S -> Ojs.t) -> 'S t -> Ojs.t
    val t_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t
    type 'S t_1 = 'S t
    val t_1_to_js: ('S -> Ojs.t) -> 'S t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'S) -> Ojs.t -> 'S t_1
    [@@@js.stop]
    type 'S tags = [`React_ReducerWithoutAction of 'S]
    [@@@js.start]
    [@@@js.implem 
      type 'S tags = [`React_ReducerWithoutAction of 'S]
    ]
    val apply: 'S t -> prevState:'S -> 'S [@@js.apply]
  end
  module ReducerState : sig
    type 'R t = 'R _React_ReducerState
    val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
    type 'R t_1 = 'R t
    val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
    [@@@js.stop]
    type 'R tags = [`React_ReducerState of 'R]
    [@@@js.start]
    [@@@js.implem 
      type 'R tags = [`React_ReducerState of 'R]
    ]
  end
  module ReducerAction : sig
    type 'R t = 'R _React_ReducerAction
    val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
    type 'R t_1 = 'R t
    val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
    [@@@js.stop]
    type 'R tags = [`React_ReducerAction of 'R]
    [@@@js.start]
    [@@@js.implem 
      type 'R tags = [`React_ReducerAction of 'R]
    ]
  end
  module ReducerStateWithoutAction : sig
    type 'R t = 'R _React_ReducerStateWithoutAction
    val t_to_js: ('R -> Ojs.t) -> 'R t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t
    type 'R t_1 = 'R t
    val t_1_to_js: ('R -> Ojs.t) -> 'R t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'R) -> Ojs.t -> 'R t_1
    [@@@js.stop]
    type 'R tags = [`React_ReducerStateWithoutAction of 'R]
    [@@@js.start]
    [@@@js.implem 
      type 'R tags = [`React_ReducerStateWithoutAction of 'R]
    ]
  end
  module DependencyList : sig
    type t = _React_DependencyList
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_DependencyList | `Array of any]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_DependencyList | `Array of any]
    ]
  end
  module[@js.scope "EffectCallback"] EffectCallback : sig
    type t = _React_EffectCallback
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_EffectCallback]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_EffectCallback]
    ]
    val apply: t -> (_Destructor, unit) union2 [@@js.apply]
  end
  module[@js.scope "MutableRefObject"] MutableRefObject : sig
    type 'T t = 'T _React_MutableRefObject
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_MutableRefObject of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_MutableRefObject of 'T]
    ]
    val get_current: 'T t -> 'T [@@js.get "current"]
    val set_current: 'T t -> 'T -> unit [@@js.set "current"]
  end
  (**
    Accepts a context object (the value returned from `React.createContext`) and returns the current
    context value, as given by the nearest context provider for the given context.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usecontext
  *)
  val useContext: context:'T _React_Context -> 'T [@@js.global "useContext"]
  (**
    Returns a stateful value, and a function to update it.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usestate
  *)
  val useState: initialState:('S, (unit -> 'S)) union2 -> ('S * 'S _React_SetStateAction _React_Dispatch) [@@js.global "useState"]
  (**
    Returns a stateful value, and a function to update it.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usestate
  *)
  val useState: unit -> ('S or_undefined * 'S or_undefined _React_SetStateAction _React_Dispatch) [@@js.global "useState"]
  (**
    An alternative to `useState`.
    
    `useReducer` is usually preferable to `useState` when you have complex state logic that involves
    multiple sub-values. It also lets you optimize performance for components that trigger deep
    updates because you can pass `dispatch` down instead of callbacks.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usereducer
  *)
  val useReducer: reducer:'R -> initializerArg:'I -> initializer_:(arg:'I -> 'R _React_ReducerStateWithoutAction) -> ('R _React_ReducerStateWithoutAction * _React_DispatchWithoutAction) [@@js.global "useReducer"]
  (**
    An alternative to `useState`.
    
    `useReducer` is usually preferable to `useState` when you have complex state logic that involves
    multiple sub-values. It also lets you optimize performance for components that trigger deep
    updates because you can pass `dispatch` down instead of callbacks.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usereducer
  *)
  val useReducer: reducer:'R -> initializerArg:'R _React_ReducerStateWithoutAction -> ?initializer_:never or_undefined -> unit -> ('R _React_ReducerStateWithoutAction * _React_DispatchWithoutAction) [@@js.global "useReducer"]
  (**
    An alternative to `useState`.
    
    `useReducer` is usually preferable to `useState` when you have complex state logic that involves
    multiple sub-values. It also lets you optimize performance for components that trigger deep
    updates because you can pass `dispatch` down instead of callbacks.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usereducer
  *)
  val useReducer: reducer:'R -> initializerArg:('I, 'R _React_ReducerState) intersection2 -> initializer_:(arg:('I, 'R _React_ReducerState) intersection2 -> 'R _React_ReducerState) -> ('R _React_ReducerState * 'R _React_ReducerAction _React_Dispatch) [@@js.global "useReducer"]
  (**
    An alternative to `useState`.
    
    `useReducer` is usually preferable to `useState` when you have complex state logic that involves
    multiple sub-values. It also lets you optimize performance for components that trigger deep
    updates because you can pass `dispatch` down instead of callbacks.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usereducer
  *)
  val useReducer: reducer:'R -> initializerArg:'I -> initializer_:(arg:'I -> 'R _React_ReducerState) -> ('R _React_ReducerState * 'R _React_ReducerAction _React_Dispatch) [@@js.global "useReducer"]
  (**
    An alternative to `useState`.
    
    `useReducer` is usually preferable to `useState` when you have complex state logic that involves
    multiple sub-values. It also lets you optimize performance for components that trigger deep
    updates because you can pass `dispatch` down instead of callbacks.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usereducer
  *)
  val useReducer: reducer:'R -> initialState:'R _React_ReducerState -> ?initializer_:never or_undefined -> unit -> ('R _React_ReducerState * 'R _React_ReducerAction _React_Dispatch) [@@js.global "useReducer"]
  (**
    `useRef` returns a mutable ref object whose `.current` property is initialized to the passed argument
    (`initialValue`). The returned object will persist for the full lifetime of the component.
    
    Note that `useRef()` is useful for more than the `ref` attribute. It’s handy for keeping any mutable
    value around similar to how you’d use instance fields in classes.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#useref
  *)
  val useRef: initialValue:'T -> 'T _React_MutableRefObject [@@js.global "useRef"]
  (**
    `useRef` returns a mutable ref object whose `.current` property is initialized to the passed argument
    (`initialValue`). The returned object will persist for the full lifetime of the component.
    
    Note that `useRef()` is useful for more than the `ref` attribute. It’s handy for keeping any mutable
    value around similar to how you’d use instance fields in classes.
    
    Usage note: if you need the result of useRef to be directly mutable, include `| null` in the type
    of the generic argument.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#useref
  *)
  val useRef: initialValue:'T or_null -> 'T _React_RefObject [@@js.global "useRef"]
  (**
    `useRef` returns a mutable ref object whose `.current` property is initialized to the passed argument
    (`initialValue`). The returned object will persist for the full lifetime of the component.
    
    Note that `useRef()` is useful for more than the `ref` attribute. It’s handy for keeping any mutable
    value around similar to how you’d use instance fields in classes.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#useref
  *)
  val useRef: unit -> 'T or_undefined _React_MutableRefObject [@@js.global "useRef"]
  (**
    The signature is identical to `useEffect`, but it fires synchronously after all DOM mutations.
    Use this to read layout from the DOM and synchronously re-render. Updates scheduled inside
    `useLayoutEffect` will be flushed synchronously, before the browser has a chance to paint.
    
    Prefer the standard `useEffect` when possible to avoid blocking visual updates.
    
    If you’re migrating code from a class component, `useLayoutEffect` fires in the same phase as
    `componentDidMount` and `componentDidUpdate`.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#uselayouteffect
  *)
  val useLayoutEffect: effect:_React_EffectCallback -> ?deps:_React_DependencyList -> unit -> unit [@@js.global "useLayoutEffect"]
  (**
    Accepts a function that contains imperative, possibly effectful code.
    @param effect Imperative function that can return a cleanup function
    @param deps If present, effect will only activate if the values in the list change.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#useeffect
  *)
  val useEffect: effect:_React_EffectCallback -> ?deps:_React_DependencyList -> unit -> unit [@@js.global "useEffect"]
  (**
    `useImperativeHandle` customizes the instance value that is exposed to parent components when using
    `ref`. As always, imperative code using refs should be avoided in most cases.
    
    `useImperativeHandle` should be used with `React.forwardRef`.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#useimperativehandle
  *)
  val useImperativeHandle: ref:'T _React_Ref or_undefined -> init:(unit -> 'R) -> ?deps:_React_DependencyList -> unit -> unit [@@js.global "useImperativeHandle"]
  (**
    `useCallback` will return a memoized version of the callback that only changes if one of the `inputs`
    has changed.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usecallback
  *)
  val useCallback: callback:'T -> deps:_React_DependencyList -> 'T [@@js.global "useCallback"]
  (**
    `useMemo` will only recompute the memoized value when one of the `deps` has changed.
    
    Usage note: if calling `useMemo` with a referentially stable function, also give it as the input in
    the second argument.
    
    ```ts
    function expensive () \{ ... \}
    
    function Component () \{
      const expensiveResult = useMemo(expensive, \[expensive\])
      return ...
    \}
    ```
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usememo
  *)
  val useMemo: factory:(unit -> 'T) -> deps:_React_DependencyList or_undefined -> 'T [@@js.global "useMemo"]
  (**
    `useDebugValue` can be used to display a label for custom hooks in React DevTools.
    
    NOTE: We don’t recommend adding debug values to every custom hook.
    It’s most valuable for custom hooks that are part of shared libraries.
    @version 16.8.0
    @see "https" ://reactjs.org/docs/hooks-reference.html#usedebugvalue
  *)
  val useDebugValue: value:'T -> ?format:(value:'T -> any) -> unit -> unit [@@js.global "useDebugValue"]
  module[@js.scope "BaseSyntheticEvent"] BaseSyntheticEvent : sig
    type ('E, 'C, 'T) t = ('E, 'C, 'T) _React_BaseSyntheticEvent
    val t_to_js: ('E -> Ojs.t) -> ('C -> Ojs.t) -> ('T -> Ojs.t) -> ('E, 'C, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'C) -> (Ojs.t -> 'T) -> Ojs.t -> ('E, 'C, 'T) t
    type ('E, 'C, 'T) t_3 = ('E, 'C, 'T) t
    val t_3_to_js: ('E -> Ojs.t) -> ('C -> Ojs.t) -> ('T -> Ojs.t) -> ('E, 'C, 'T) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'C) -> (Ojs.t -> 'T) -> Ojs.t -> ('E, 'C, 'T) t_3
    type ('E, 'C) t_2 = ('E, 'C, any) t
    val t_2_to_js: ('E -> Ojs.t) -> ('C -> Ojs.t) -> ('E, 'C) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'C) -> Ojs.t -> ('E, 'C) t_2
    type 'E t_1 = ('E, any, any) t
    val t_1_to_js: ('E -> Ojs.t) -> 'E t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'E) -> Ojs.t -> 'E t_1
    type t_0 = (untyped_object, any, any) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('E, 'C, 'T) tags = [`React_BaseSyntheticEvent of ('E * 'C * 'T)]
    [@@@js.start]
    [@@@js.implem 
      type ('E, 'C, 'T) tags = [`React_BaseSyntheticEvent of ('E * 'C * 'T)]
    ]
    val get_nativeEvent: ('E, 'C, 'T) t -> 'E [@@js.get "nativeEvent"]
    val set_nativeEvent: ('E, 'C, 'T) t -> 'E -> unit [@@js.set "nativeEvent"]
    val get_currentTarget: ('E, 'C, 'T) t -> 'C [@@js.get "currentTarget"]
    val set_currentTarget: ('E, 'C, 'T) t -> 'C -> unit [@@js.set "currentTarget"]
    val get_target: ('E, 'C, 'T) t -> 'T [@@js.get "target"]
    val set_target: ('E, 'C, 'T) t -> 'T -> unit [@@js.set "target"]
    val get_bubbles: ('E, 'C, 'T) t -> bool [@@js.get "bubbles"]
    val set_bubbles: ('E, 'C, 'T) t -> bool -> unit [@@js.set "bubbles"]
    val get_cancelable: ('E, 'C, 'T) t -> bool [@@js.get "cancelable"]
    val set_cancelable: ('E, 'C, 'T) t -> bool -> unit [@@js.set "cancelable"]
    val get_defaultPrevented: ('E, 'C, 'T) t -> bool [@@js.get "defaultPrevented"]
    val set_defaultPrevented: ('E, 'C, 'T) t -> bool -> unit [@@js.set "defaultPrevented"]
    val get_eventPhase: ('E, 'C, 'T) t -> float [@@js.get "eventPhase"]
    val set_eventPhase: ('E, 'C, 'T) t -> float -> unit [@@js.set "eventPhase"]
    val get_isTrusted: ('E, 'C, 'T) t -> bool [@@js.get "isTrusted"]
    val set_isTrusted: ('E, 'C, 'T) t -> bool -> unit [@@js.set "isTrusted"]
    val preventDefault: ('E, 'C, 'T) t -> unit [@@js.call "preventDefault"]
    val isDefaultPrevented: ('E, 'C, 'T) t -> bool [@@js.call "isDefaultPrevented"]
    val stopPropagation: ('E, 'C, 'T) t -> unit [@@js.call "stopPropagation"]
    val isPropagationStopped: ('E, 'C, 'T) t -> bool [@@js.call "isPropagationStopped"]
    val persist: ('E, 'C, 'T) t -> unit [@@js.call "persist"]
    val get_timeStamp: ('E, 'C, 'T) t -> float [@@js.get "timeStamp"]
    val set_timeStamp: ('E, 'C, 'T) t -> float -> unit [@@js.set "timeStamp"]
    val get_type: ('E, 'C, 'T) t -> string [@@js.get "type"]
    val set_type: ('E, 'C, 'T) t -> string -> unit [@@js.set "type"]
  end
  (**
    currentTarget - a reference to the element on which the event listener is registered.
    
    target - a reference to the element from which the event was originally dispatched.
    This might be a child element to the element on which the event listener is registered.
    If you thought this should be `EventTarget & T`, see https://github.com/DefinitelyTyped/DefinitelyTyped/issues/11508#issuecomment-256045682
  *)
  module[@js.scope "SyntheticEvent"] SyntheticEvent : sig
    type ('T, 'E) t = ('T, 'E) _React_SyntheticEvent
    val t_to_js: ('T -> Ojs.t) -> ('E -> Ojs.t) -> ('T, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'E) -> Ojs.t -> ('T, 'E) t
    type ('T, 'E) t_2 = ('T, 'E) t
    val t_2_to_js: ('T -> Ojs.t) -> ('E -> Ojs.t) -> ('T, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'E) -> Ojs.t -> ('T, 'E) t_2
    type 'T t_1 = ('T, Event.t_0) t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = (Element.t_0, Event.t_0) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('T, 'E) tags = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * 'E)]
    [@@@js.start]
    [@@@js.implem 
      type ('T, 'E) tags = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * 'E)]
    ]
    val cast: ('T, 'E) t -> ('E, (EventTarget.t_0, 'T) intersection2, EventTarget.t_0) _React_BaseSyntheticEvent [@@js.cast]
  end
  module[@js.scope "ClipboardEvent"] ClipboardEvent : sig
    type 'T t = 'T _React_ClipboardEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeClipboardEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_ClipboardEvent of 'T | `React_SyntheticEvent of ('T * _NativeClipboardEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeClipboardEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_ClipboardEvent of 'T | `React_SyntheticEvent of ('T * _NativeClipboardEvent)]
    ]
    val get_clipboardData: 'T t -> DataTransfer.t_0 [@@js.get "clipboardData"]
    val set_clipboardData: 'T t -> DataTransfer.t_0 -> unit [@@js.set "clipboardData"]
    val cast: 'T t -> ('T, _NativeClipboardEvent) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "CompositionEvent"] CompositionEvent : sig
    type 'T t = 'T _React_CompositionEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeCompositionEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_CompositionEvent of 'T | `React_SyntheticEvent of ('T * _NativeCompositionEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeCompositionEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_CompositionEvent of 'T | `React_SyntheticEvent of ('T * _NativeCompositionEvent)]
    ]
    val get_data: 'T t -> string [@@js.get "data"]
    val set_data: 'T t -> string -> unit [@@js.set "data"]
    val cast: 'T t -> ('T, _NativeCompositionEvent) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "DragEvent"] DragEvent : sig
    type 'T t = 'T _React_DragEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeDragEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_DragEvent of 'T | `React_MouseEvent of ('T * _NativeDragEvent) | `React_SyntheticEvent of ('T * _NativeDragEvent) | `React_UIEvent of ('T * _NativeDragEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeDragEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_DragEvent of 'T | `React_MouseEvent of ('T * _NativeDragEvent) | `React_SyntheticEvent of ('T * _NativeDragEvent) | `React_UIEvent of ('T * _NativeDragEvent)]
    ]
    val get_dataTransfer: 'T t -> DataTransfer.t_0 [@@js.get "dataTransfer"]
    val set_dataTransfer: 'T t -> DataTransfer.t_0 -> unit [@@js.set "dataTransfer"]
    val cast: 'T t -> ('T, _NativeDragEvent) _React_MouseEvent [@@js.cast]
  end
  module[@js.scope "PointerEvent"] PointerEvent : sig
    type 'T t = 'T _React_PointerEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativePointerEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * _NativePointerEvent) | `React_PointerEvent of 'T | `React_SyntheticEvent of ('T * _NativePointerEvent) | `React_UIEvent of ('T * _NativePointerEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativePointerEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * _NativePointerEvent) | `React_PointerEvent of 'T | `React_SyntheticEvent of ('T * _NativePointerEvent) | `React_UIEvent of ('T * _NativePointerEvent)]
    ]
    val get_pointerId: 'T t -> float [@@js.get "pointerId"]
    val set_pointerId: 'T t -> float -> unit [@@js.set "pointerId"]
    val get_pressure: 'T t -> float [@@js.get "pressure"]
    val set_pressure: 'T t -> float -> unit [@@js.set "pressure"]
    val get_tangentialPressure: 'T t -> float [@@js.get "tangentialPressure"]
    val set_tangentialPressure: 'T t -> float -> unit [@@js.set "tangentialPressure"]
    val get_tiltX: 'T t -> float [@@js.get "tiltX"]
    val set_tiltX: 'T t -> float -> unit [@@js.set "tiltX"]
    val get_tiltY: 'T t -> float [@@js.get "tiltY"]
    val set_tiltY: 'T t -> float -> unit [@@js.set "tiltY"]
    val get_twist: 'T t -> float [@@js.get "twist"]
    val set_twist: 'T t -> float -> unit [@@js.set "twist"]
    val get_width: 'T t -> float [@@js.get "width"]
    val set_width: 'T t -> float -> unit [@@js.set "width"]
    val get_height: 'T t -> float [@@js.get "height"]
    val set_height: 'T t -> float -> unit [@@js.set "height"]
    val get_pointerType: 'T t -> ([`L_s167_mouse[@js "mouse"] | `L_s193_pen[@js "pen"] | `L_s265_touch[@js "touch"]] [@js.enum]) [@@js.get "pointerType"]
    val set_pointerType: 'T t -> ([`L_s167_mouse | `L_s193_pen | `L_s265_touch] [@js.enum]) -> unit [@@js.set "pointerType"]
    val get_isPrimary: 'T t -> bool [@@js.get "isPrimary"]
    val set_isPrimary: 'T t -> bool -> unit [@@js.set "isPrimary"]
    val cast: 'T t -> ('T, _NativePointerEvent) _React_MouseEvent [@@js.cast]
  end
  module[@js.scope "FocusEvent"] FocusEvent : sig
    type 'T t = 'T _React_FocusEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeFocusEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_FocusEvent of 'T | `React_SyntheticEvent of ('T * _NativeFocusEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeFocusEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_FocusEvent of 'T | `React_SyntheticEvent of ('T * _NativeFocusEvent)]
    ]
    val get_relatedTarget: 'T t -> EventTarget.t_0 or_null [@@js.get "relatedTarget"]
    val set_relatedTarget: 'T t -> EventTarget.t_0 or_null -> unit [@@js.set "relatedTarget"]
    val get_target: 'T t -> (EventTarget.t_0, 'T) intersection2 [@@js.get "target"]
    val set_target: 'T t -> (EventTarget.t_0, 'T) intersection2 -> unit [@@js.set "target"]
    val cast: 'T t -> ('T, _NativeFocusEvent) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "FormEvent"] FormEvent : sig
    type 'T t = 'T _React_FormEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_FormEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_FormEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)]
    ]
    val cast: 'T t -> ('T, Event.t_0) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "InvalidEvent"] InvalidEvent : sig
    type 'T t = 'T _React_InvalidEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_InvalidEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_InvalidEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)]
    ]
    val get_target: 'T t -> (EventTarget.t_0, 'T) intersection2 [@@js.get "target"]
    val set_target: 'T t -> (EventTarget.t_0, 'T) intersection2 -> unit [@@js.set "target"]
    val cast: 'T t -> ('T, Event.t_0) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "ChangeEvent"] ChangeEvent : sig
    type 'T t = 'T _React_ChangeEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_ChangeEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (Event.t_0 * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_ChangeEvent of 'T | `React_SyntheticEvent of ('T * Event.t_0)]
    ]
    val get_target: 'T t -> (EventTarget.t_0, 'T) intersection2 [@@js.get "target"]
    val set_target: 'T t -> (EventTarget.t_0, 'T) intersection2 -> unit [@@js.set "target"]
    val cast: 'T t -> ('T, Event.t_0) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "KeyboardEvent"] KeyboardEvent : sig
    type 'T t = 'T _React_KeyboardEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeKeyboardEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_KeyboardEvent of 'T | `React_SyntheticEvent of ('T * _NativeKeyboardEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeKeyboardEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_KeyboardEvent of 'T | `React_SyntheticEvent of ('T * _NativeKeyboardEvent)]
    ]
    val get_altKey: 'T t -> bool [@@js.get "altKey"]
    val set_altKey: 'T t -> bool -> unit [@@js.set "altKey"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_charCode: 'T t -> float [@@js.get "charCode"]
    (** @deprecated  *)
    val set_charCode: 'T t -> float -> unit [@@js.set "charCode"]
    val get_ctrlKey: 'T t -> bool [@@js.get "ctrlKey"]
    val set_ctrlKey: 'T t -> bool -> unit [@@js.set "ctrlKey"]
    val get_code: 'T t -> string [@@js.get "code"]
    val set_code: 'T t -> string -> unit [@@js.set "code"]
    (** See \[DOM Level 3 Events spec\](https://www.w3.org/TR/uievents-key/#keys-modifier). for a list of valid (case-sensitive) arguments to this method. *)
    val getModifierState: 'T t -> key:string -> bool [@@js.call "getModifierState"]
    (** See the \[DOM Level 3 Events spec\](https://www.w3.org/TR/uievents-key/#named-key-attribute-values). for possible values *)
    (** See the \[DOM Level 3 Events spec\](https://www.w3.org/TR/uievents-key/#named-key-attribute-values). for possible values *)
    val get_key: 'T t -> string [@@js.get "key"]
    (** See the \[DOM Level 3 Events spec\](https://www.w3.org/TR/uievents-key/#named-key-attribute-values). for possible values *)
    val set_key: 'T t -> string -> unit [@@js.set "key"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_keyCode: 'T t -> float [@@js.get "keyCode"]
    (** @deprecated  *)
    val set_keyCode: 'T t -> float -> unit [@@js.set "keyCode"]
    val get_locale: 'T t -> string [@@js.get "locale"]
    val set_locale: 'T t -> string -> unit [@@js.set "locale"]
    val get_location: 'T t -> float [@@js.get "location"]
    val set_location: 'T t -> float -> unit [@@js.set "location"]
    val get_metaKey: 'T t -> bool [@@js.get "metaKey"]
    val set_metaKey: 'T t -> bool -> unit [@@js.set "metaKey"]
    val get_repeat: 'T t -> bool [@@js.get "repeat"]
    val set_repeat: 'T t -> bool -> unit [@@js.set "repeat"]
    val get_shiftKey: 'T t -> bool [@@js.get "shiftKey"]
    val set_shiftKey: 'T t -> bool -> unit [@@js.set "shiftKey"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_which: 'T t -> float [@@js.get "which"]
    (** @deprecated  *)
    val set_which: 'T t -> float -> unit [@@js.set "which"]
    val cast: 'T t -> ('T, _NativeKeyboardEvent) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "MouseEvent"] MouseEvent : sig
    type ('T, 'E) t = ('T, 'E) _React_MouseEvent
    val t_to_js: ('T -> Ojs.t) -> ('E -> Ojs.t) -> ('T, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'E) -> Ojs.t -> ('T, 'E) t
    type ('T, 'E) t_2 = ('T, 'E) t
    val t_2_to_js: ('T -> Ojs.t) -> ('E -> Ojs.t) -> ('T, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'E) -> Ojs.t -> ('T, 'E) t_2
    type 'T t_1 = ('T, _NativeMouseEvent) t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = (Element.t_0, _NativeMouseEvent) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('T, 'E) tags = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * 'E) | `React_SyntheticEvent of ('T * 'E) | `React_UIEvent of ('T * 'E)]
    [@@@js.start]
    [@@@js.implem 
      type ('T, 'E) tags = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * 'E) | `React_SyntheticEvent of ('T * 'E) | `React_UIEvent of ('T * 'E)]
    ]
    val get_altKey: ('T, 'E) t -> bool [@@js.get "altKey"]
    val set_altKey: ('T, 'E) t -> bool -> unit [@@js.set "altKey"]
    val get_button: ('T, 'E) t -> float [@@js.get "button"]
    val set_button: ('T, 'E) t -> float -> unit [@@js.set "button"]
    val get_buttons: ('T, 'E) t -> float [@@js.get "buttons"]
    val set_buttons: ('T, 'E) t -> float -> unit [@@js.set "buttons"]
    val get_clientX: ('T, 'E) t -> float [@@js.get "clientX"]
    val set_clientX: ('T, 'E) t -> float -> unit [@@js.set "clientX"]
    val get_clientY: ('T, 'E) t -> float [@@js.get "clientY"]
    val set_clientY: ('T, 'E) t -> float -> unit [@@js.set "clientY"]
    val get_ctrlKey: ('T, 'E) t -> bool [@@js.get "ctrlKey"]
    val set_ctrlKey: ('T, 'E) t -> bool -> unit [@@js.set "ctrlKey"]
    (** See \[DOM Level 3 Events spec\](https://www.w3.org/TR/uievents-key/#keys-modifier). for a list of valid (case-sensitive) arguments to this method. *)
    val getModifierState: ('T, 'E) t -> key:string -> bool [@@js.call "getModifierState"]
    val get_metaKey: ('T, 'E) t -> bool [@@js.get "metaKey"]
    val set_metaKey: ('T, 'E) t -> bool -> unit [@@js.set "metaKey"]
    val get_movementX: ('T, 'E) t -> float [@@js.get "movementX"]
    val set_movementX: ('T, 'E) t -> float -> unit [@@js.set "movementX"]
    val get_movementY: ('T, 'E) t -> float [@@js.get "movementY"]
    val set_movementY: ('T, 'E) t -> float -> unit [@@js.set "movementY"]
    val get_pageX: ('T, 'E) t -> float [@@js.get "pageX"]
    val set_pageX: ('T, 'E) t -> float -> unit [@@js.set "pageX"]
    val get_pageY: ('T, 'E) t -> float [@@js.get "pageY"]
    val set_pageY: ('T, 'E) t -> float -> unit [@@js.set "pageY"]
    val get_relatedTarget: ('T, 'E) t -> EventTarget.t_0 or_null [@@js.get "relatedTarget"]
    val set_relatedTarget: ('T, 'E) t -> EventTarget.t_0 or_null -> unit [@@js.set "relatedTarget"]
    val get_screenX: ('T, 'E) t -> float [@@js.get "screenX"]
    val set_screenX: ('T, 'E) t -> float -> unit [@@js.set "screenX"]
    val get_screenY: ('T, 'E) t -> float [@@js.get "screenY"]
    val set_screenY: ('T, 'E) t -> float -> unit [@@js.set "screenY"]
    val get_shiftKey: ('T, 'E) t -> bool [@@js.get "shiftKey"]
    val set_shiftKey: ('T, 'E) t -> bool -> unit [@@js.set "shiftKey"]
    val cast: ('T, 'E) t -> ('T, 'E) _React_UIEvent [@@js.cast]
  end
  module[@js.scope "TouchEvent"] TouchEvent : sig
    type 'T t = 'T _React_TouchEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeTouchEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeTouchEvent) | `React_TouchEvent of 'T | `React_UIEvent of ('T * _NativeTouchEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeTouchEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeTouchEvent) | `React_TouchEvent of 'T | `React_UIEvent of ('T * _NativeTouchEvent)]
    ]
    val get_altKey: 'T t -> bool [@@js.get "altKey"]
    val set_altKey: 'T t -> bool -> unit [@@js.set "altKey"]
    val get_changedTouches: 'T t -> _React_TouchList [@@js.get "changedTouches"]
    val set_changedTouches: 'T t -> _React_TouchList -> unit [@@js.set "changedTouches"]
    val get_ctrlKey: 'T t -> bool [@@js.get "ctrlKey"]
    val set_ctrlKey: 'T t -> bool -> unit [@@js.set "ctrlKey"]
    (** See \[DOM Level 3 Events spec\](https://www.w3.org/TR/uievents-key/#keys-modifier). for a list of valid (case-sensitive) arguments to this method. *)
    val getModifierState: 'T t -> key:string -> bool [@@js.call "getModifierState"]
    val get_metaKey: 'T t -> bool [@@js.get "metaKey"]
    val set_metaKey: 'T t -> bool -> unit [@@js.set "metaKey"]
    val get_shiftKey: 'T t -> bool [@@js.get "shiftKey"]
    val set_shiftKey: 'T t -> bool -> unit [@@js.set "shiftKey"]
    val get_targetTouches: 'T t -> _React_TouchList [@@js.get "targetTouches"]
    val set_targetTouches: 'T t -> _React_TouchList -> unit [@@js.set "targetTouches"]
    val get_touches: 'T t -> _React_TouchList [@@js.get "touches"]
    val set_touches: 'T t -> _React_TouchList -> unit [@@js.set "touches"]
    val cast: 'T t -> ('T, _NativeTouchEvent) _React_UIEvent [@@js.cast]
  end
  module[@js.scope "UIEvent"] UIEvent : sig
    type ('T, 'E) t = ('T, 'E) _React_UIEvent
    val t_to_js: ('T -> Ojs.t) -> ('E -> Ojs.t) -> ('T, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'E) -> Ojs.t -> ('T, 'E) t
    type ('T, 'E) t_2 = ('T, 'E) t
    val t_2_to_js: ('T -> Ojs.t) -> ('E -> Ojs.t) -> ('T, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T) -> (Ojs.t -> 'E) -> Ojs.t -> ('T, 'E) t_2
    type 'T t_1 = ('T, _NativeUIEvent) t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = (Element.t_0, _NativeUIEvent) t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type ('T, 'E) tags = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * 'E) | `React_UIEvent of ('T * 'E)]
    [@@@js.start]
    [@@@js.implem 
      type ('T, 'E) tags = [`React_BaseSyntheticEvent of ('E * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * 'E) | `React_UIEvent of ('T * 'E)]
    ]
    val get_detail: ('T, 'E) t -> float [@@js.get "detail"]
    val set_detail: ('T, 'E) t -> float -> unit [@@js.set "detail"]
    val get_view: ('T, 'E) t -> _React_AbstractView [@@js.get "view"]
    val set_view: ('T, 'E) t -> _React_AbstractView -> unit [@@js.set "view"]
    val cast: ('T, 'E) t -> ('T, 'E) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "WheelEvent"] WheelEvent : sig
    type 'T t = 'T _React_WheelEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeWheelEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * _NativeWheelEvent) | `React_SyntheticEvent of ('T * _NativeWheelEvent) | `React_UIEvent of ('T * _NativeWheelEvent) | `React_WheelEvent of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeWheelEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_MouseEvent of ('T * _NativeWheelEvent) | `React_SyntheticEvent of ('T * _NativeWheelEvent) | `React_UIEvent of ('T * _NativeWheelEvent) | `React_WheelEvent of 'T]
    ]
    val get_deltaMode: 'T t -> float [@@js.get "deltaMode"]
    val set_deltaMode: 'T t -> float -> unit [@@js.set "deltaMode"]
    val get_deltaX: 'T t -> float [@@js.get "deltaX"]
    val set_deltaX: 'T t -> float -> unit [@@js.set "deltaX"]
    val get_deltaY: 'T t -> float [@@js.get "deltaY"]
    val set_deltaY: 'T t -> float -> unit [@@js.set "deltaY"]
    val get_deltaZ: 'T t -> float [@@js.get "deltaZ"]
    val set_deltaZ: 'T t -> float -> unit [@@js.set "deltaZ"]
    val cast: 'T t -> ('T, _NativeWheelEvent) _React_MouseEvent [@@js.cast]
  end
  module[@js.scope "AnimationEvent"] AnimationEvent : sig
    type 'T t = 'T _React_AnimationEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_AnimationEvent of 'T | `React_BaseSyntheticEvent of (_NativeAnimationEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeAnimationEvent)]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AnimationEvent of 'T | `React_BaseSyntheticEvent of (_NativeAnimationEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeAnimationEvent)]
    ]
    val get_animationName: 'T t -> string [@@js.get "animationName"]
    val set_animationName: 'T t -> string -> unit [@@js.set "animationName"]
    val get_elapsedTime: 'T t -> float [@@js.get "elapsedTime"]
    val set_elapsedTime: 'T t -> float -> unit [@@js.set "elapsedTime"]
    val get_pseudoElement: 'T t -> string [@@js.get "pseudoElement"]
    val set_pseudoElement: 'T t -> string -> unit [@@js.set "pseudoElement"]
    val cast: 'T t -> ('T, _NativeAnimationEvent) _React_SyntheticEvent [@@js.cast]
  end
  module[@js.scope "TransitionEvent"] TransitionEvent : sig
    type 'T t = 'T _React_TransitionEvent
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_BaseSyntheticEvent of (_NativeTransitionEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeTransitionEvent) | `React_TransitionEvent of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_BaseSyntheticEvent of (_NativeTransitionEvent * (EventTarget.t_0, 'T) intersection2 * EventTarget.t_0) | `React_SyntheticEvent of ('T * _NativeTransitionEvent) | `React_TransitionEvent of 'T]
    ]
    val get_elapsedTime: 'T t -> float [@@js.get "elapsedTime"]
    val set_elapsedTime: 'T t -> float -> unit [@@js.set "elapsedTime"]
    val get_propertyName: 'T t -> string [@@js.get "propertyName"]
    val set_propertyName: 'T t -> string -> unit [@@js.set "propertyName"]
    val get_pseudoElement: 'T t -> string [@@js.get "pseudoElement"]
    val set_pseudoElement: 'T t -> string -> unit [@@js.set "pseudoElement"]
    val cast: 'T t -> ('T, _NativeTransitionEvent) _React_SyntheticEvent [@@js.cast]
  end
  module EventHandler : sig
    type 'E t = 'E _React_EventHandler
    val t_to_js: ('E -> Ojs.t) -> 'E t -> Ojs.t
    val t_of_js: (Ojs.t -> 'E) -> Ojs.t -> 'E t
    type 'E t_1 = 'E t
    val t_1_to_js: ('E -> Ojs.t) -> 'E t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'E) -> Ojs.t -> 'E t_1
    [@@@js.stop]
    type 'E tags = [`React_EventHandler of 'E]
    [@@@js.start]
    [@@@js.implem 
      type 'E tags = [`React_EventHandler of 'E]
    ]
  end
  module ReactEventHandler : sig
    type 'T t = 'T _React_ReactEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of ('T, Event.t_0) _React_SyntheticEvent | `React_ReactEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of ('T, Event.t_0) _React_SyntheticEvent | `React_ReactEventHandler of 'T]
    ]
  end
  module ClipboardEventHandler : sig
    type 'T t = 'T _React_ClipboardEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_ClipboardEventHandler of 'T | `React_EventHandler of 'T _React_ClipboardEvent]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ClipboardEventHandler of 'T | `React_EventHandler of 'T _React_ClipboardEvent]
    ]
  end
  module CompositionEventHandler : sig
    type 'T t = 'T _React_CompositionEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_CompositionEventHandler of 'T | `React_EventHandler of 'T _React_CompositionEvent]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_CompositionEventHandler of 'T | `React_EventHandler of 'T _React_CompositionEvent]
    ]
  end
  module DragEventHandler : sig
    type 'T t = 'T _React_DragEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_DragEventHandler of 'T | `React_EventHandler of 'T _React_DragEvent]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_DragEventHandler of 'T | `React_EventHandler of 'T _React_DragEvent]
    ]
  end
  module FocusEventHandler : sig
    type 'T t = 'T _React_FocusEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of 'T _React_FocusEvent | `React_FocusEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of 'T _React_FocusEvent | `React_FocusEventHandler of 'T]
    ]
  end
  module FormEventHandler : sig
    type 'T t = 'T _React_FormEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of 'T _React_FormEvent | `React_FormEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of 'T _React_FormEvent | `React_FormEventHandler of 'T]
    ]
  end
  module ChangeEventHandler : sig
    type 'T t = 'T _React_ChangeEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_ChangeEventHandler of 'T | `React_EventHandler of 'T _React_ChangeEvent]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ChangeEventHandler of 'T | `React_EventHandler of 'T _React_ChangeEvent]
    ]
  end
  module KeyboardEventHandler : sig
    type 'T t = 'T _React_KeyboardEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of 'T _React_KeyboardEvent | `React_KeyboardEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of 'T _React_KeyboardEvent | `React_KeyboardEventHandler of 'T]
    ]
  end
  module MouseEventHandler : sig
    type 'T t = 'T _React_MouseEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of ('T, _NativeMouseEvent) _React_MouseEvent | `React_MouseEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of ('T, _NativeMouseEvent) _React_MouseEvent | `React_MouseEventHandler of 'T]
    ]
  end
  module TouchEventHandler : sig
    type 'T t = 'T _React_TouchEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of 'T _React_TouchEvent | `React_TouchEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of 'T _React_TouchEvent | `React_TouchEventHandler of 'T]
    ]
  end
  module PointerEventHandler : sig
    type 'T t = 'T _React_PointerEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of 'T _React_PointerEvent | `React_PointerEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of 'T _React_PointerEvent | `React_PointerEventHandler of 'T]
    ]
  end
  module UIEventHandler : sig
    type 'T t = 'T _React_UIEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of ('T, _NativeUIEvent) _React_UIEvent | `React_UIEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of ('T, _NativeUIEvent) _React_UIEvent | `React_UIEventHandler of 'T]
    ]
  end
  module WheelEventHandler : sig
    type 'T t = 'T _React_WheelEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of 'T _React_WheelEvent | `React_WheelEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of 'T _React_WheelEvent | `React_WheelEventHandler of 'T]
    ]
  end
  module AnimationEventHandler : sig
    type 'T t = 'T _React_AnimationEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_AnimationEventHandler of 'T | `React_EventHandler of 'T _React_AnimationEvent]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AnimationEventHandler of 'T | `React_EventHandler of 'T _React_AnimationEvent]
    ]
  end
  module TransitionEventHandler : sig
    type 'T t = 'T _React_TransitionEventHandler
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = Element.t_0 t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type 'T tags = [`React_EventHandler of 'T _React_TransitionEvent | `React_TransitionEventHandler of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_EventHandler of 'T _React_TransitionEvent | `React_TransitionEventHandler of 'T]
    ]
  end
  (**
    @deprecated . This was used to allow clients to pass `ref` and `key`
    to `createElement`, which is no longer necessary due to intersection
    types. If you need to declare a props object before passing it to
    `createElement` or a factory, use `ClassAttributes<T>`:
    
    ```ts
    var b: Button | null;
    var props: ButtonProps & ClassAttributes<Button> = \{
    ref: b => button = b, // ok!
    label: "I'm a Button"
    \};
    ```
  *)
  module[@js.scope "Props"] Props : sig
    type 'T t = 'T _React_Props
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Props of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Props of 'T]
    ]
    val get_children: 'T t -> _React_ReactNode [@@js.get "children"]
    val set_children: 'T t -> _React_ReactNode -> unit [@@js.set "children"]
    val get_key: 'T t -> _React_Key [@@js.get "key"]
    val set_key: 'T t -> _React_Key -> unit [@@js.set "key"]
    val get_ref: 'T t -> 'T _React_LegacyRef [@@js.get "ref"]
    val set_ref: 'T t -> 'T _React_LegacyRef -> unit [@@js.set "ref"]
  end
  module[@js.scope "HTMLProps"] HTMLProps : sig
    type 'T t = 'T _React_HTMLProps
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AllHTMLAttributes of 'T | `React_AriaAttributes | `React_Attributes | `React_ClassAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_HTMLProps of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AllHTMLAttributes of 'T | `React_AriaAttributes | `React_Attributes | `React_ClassAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_HTMLProps of 'T]
    ]
    val cast: 'T t -> 'T _React_AllHTMLAttributes [@@js.cast]
    val cast': 'T t -> 'T _React_ClassAttributes [@@js.cast]
  end
  module DetailedHTMLProps : sig
    type ('E, 'T) t = ('E, 'T) _React_DetailedHTMLProps
    val t_to_js: ('E -> Ojs.t) -> ('T -> Ojs.t) -> ('E, 'T) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'T) -> Ojs.t -> ('E, 'T) t
    type ('E, 'T) t_2 = ('E, 'T) t
    val t_2_to_js: ('E -> Ojs.t) -> ('T -> Ojs.t) -> ('E, 'T) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'E) -> (Ojs.t -> 'T) -> Ojs.t -> ('E, 'T) t_2
    [@@@js.stop]
    type ('E, 'T) tags = [`React_DetailedHTMLProps of ('E * 'T)]
    [@@@js.start]
    [@@@js.implem 
      type ('E, 'T) tags = [`React_DetailedHTMLProps of ('E * 'T)]
    ]
  end
  module[@js.scope "SVGProps"] SVGProps : sig
    type 'T t = 'T _React_SVGProps
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_Attributes | `React_ClassAttributes of 'T | `React_DOMAttributes of 'T | `React_SVGAttributes of 'T | `React_SVGProps of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_Attributes | `React_ClassAttributes of 'T | `React_DOMAttributes of 'T | `React_SVGAttributes of 'T | `React_SVGProps of 'T]
    ]
    val cast: 'T t -> 'T _React_SVGAttributes [@@js.cast]
    val cast': 'T t -> 'T _React_ClassAttributes [@@js.cast]
  end
  module[@js.scope "DOMAttributes"] DOMAttributes : sig
    type 'T t = 'T _React_DOMAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_DOMAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_DOMAttributes of 'T]
    ]
    val get_children: 'T t -> _React_ReactNode [@@js.get "children"]
    val set_children: 'T t -> _React_ReactNode -> unit [@@js.set "children"]
    val get_dangerouslySetInnerHTML: 'T t -> anonymous_interface_2 [@@js.get "dangerouslySetInnerHTML"]
    val set_dangerouslySetInnerHTML: 'T t -> anonymous_interface_2 -> unit [@@js.set "dangerouslySetInnerHTML"]
    val get_onCopy: 'T t -> 'T _React_ClipboardEventHandler [@@js.get "onCopy"]
    val set_onCopy: 'T t -> 'T _React_ClipboardEventHandler -> unit [@@js.set "onCopy"]
    val get_onCopyCapture: 'T t -> 'T _React_ClipboardEventHandler [@@js.get "onCopyCapture"]
    val set_onCopyCapture: 'T t -> 'T _React_ClipboardEventHandler -> unit [@@js.set "onCopyCapture"]
    val get_onCut: 'T t -> 'T _React_ClipboardEventHandler [@@js.get "onCut"]
    val set_onCut: 'T t -> 'T _React_ClipboardEventHandler -> unit [@@js.set "onCut"]
    val get_onCutCapture: 'T t -> 'T _React_ClipboardEventHandler [@@js.get "onCutCapture"]
    val set_onCutCapture: 'T t -> 'T _React_ClipboardEventHandler -> unit [@@js.set "onCutCapture"]
    val get_onPaste: 'T t -> 'T _React_ClipboardEventHandler [@@js.get "onPaste"]
    val set_onPaste: 'T t -> 'T _React_ClipboardEventHandler -> unit [@@js.set "onPaste"]
    val get_onPasteCapture: 'T t -> 'T _React_ClipboardEventHandler [@@js.get "onPasteCapture"]
    val set_onPasteCapture: 'T t -> 'T _React_ClipboardEventHandler -> unit [@@js.set "onPasteCapture"]
    val get_onCompositionEnd: 'T t -> 'T _React_CompositionEventHandler [@@js.get "onCompositionEnd"]
    val set_onCompositionEnd: 'T t -> 'T _React_CompositionEventHandler -> unit [@@js.set "onCompositionEnd"]
    val get_onCompositionEndCapture: 'T t -> 'T _React_CompositionEventHandler [@@js.get "onCompositionEndCapture"]
    val set_onCompositionEndCapture: 'T t -> 'T _React_CompositionEventHandler -> unit [@@js.set "onCompositionEndCapture"]
    val get_onCompositionStart: 'T t -> 'T _React_CompositionEventHandler [@@js.get "onCompositionStart"]
    val set_onCompositionStart: 'T t -> 'T _React_CompositionEventHandler -> unit [@@js.set "onCompositionStart"]
    val get_onCompositionStartCapture: 'T t -> 'T _React_CompositionEventHandler [@@js.get "onCompositionStartCapture"]
    val set_onCompositionStartCapture: 'T t -> 'T _React_CompositionEventHandler -> unit [@@js.set "onCompositionStartCapture"]
    val get_onCompositionUpdate: 'T t -> 'T _React_CompositionEventHandler [@@js.get "onCompositionUpdate"]
    val set_onCompositionUpdate: 'T t -> 'T _React_CompositionEventHandler -> unit [@@js.set "onCompositionUpdate"]
    val get_onCompositionUpdateCapture: 'T t -> 'T _React_CompositionEventHandler [@@js.get "onCompositionUpdateCapture"]
    val set_onCompositionUpdateCapture: 'T t -> 'T _React_CompositionEventHandler -> unit [@@js.set "onCompositionUpdateCapture"]
    val get_onFocus: 'T t -> 'T _React_FocusEventHandler [@@js.get "onFocus"]
    val set_onFocus: 'T t -> 'T _React_FocusEventHandler -> unit [@@js.set "onFocus"]
    val get_onFocusCapture: 'T t -> 'T _React_FocusEventHandler [@@js.get "onFocusCapture"]
    val set_onFocusCapture: 'T t -> 'T _React_FocusEventHandler -> unit [@@js.set "onFocusCapture"]
    val get_onBlur: 'T t -> 'T _React_FocusEventHandler [@@js.get "onBlur"]
    val set_onBlur: 'T t -> 'T _React_FocusEventHandler -> unit [@@js.set "onBlur"]
    val get_onBlurCapture: 'T t -> 'T _React_FocusEventHandler [@@js.get "onBlurCapture"]
    val set_onBlurCapture: 'T t -> 'T _React_FocusEventHandler -> unit [@@js.set "onBlurCapture"]
    val get_onChange: 'T t -> 'T _React_FormEventHandler [@@js.get "onChange"]
    val set_onChange: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onChange"]
    val get_onChangeCapture: 'T t -> 'T _React_FormEventHandler [@@js.get "onChangeCapture"]
    val set_onChangeCapture: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onChangeCapture"]
    val get_onBeforeInput: 'T t -> 'T _React_FormEventHandler [@@js.get "onBeforeInput"]
    val set_onBeforeInput: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onBeforeInput"]
    val get_onBeforeInputCapture: 'T t -> 'T _React_FormEventHandler [@@js.get "onBeforeInputCapture"]
    val set_onBeforeInputCapture: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onBeforeInputCapture"]
    val get_onInput: 'T t -> 'T _React_FormEventHandler [@@js.get "onInput"]
    val set_onInput: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onInput"]
    val get_onInputCapture: 'T t -> 'T _React_FormEventHandler [@@js.get "onInputCapture"]
    val set_onInputCapture: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onInputCapture"]
    val get_onReset: 'T t -> 'T _React_FormEventHandler [@@js.get "onReset"]
    val set_onReset: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onReset"]
    val get_onResetCapture: 'T t -> 'T _React_FormEventHandler [@@js.get "onResetCapture"]
    val set_onResetCapture: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onResetCapture"]
    val get_onSubmit: 'T t -> 'T _React_FormEventHandler [@@js.get "onSubmit"]
    val set_onSubmit: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onSubmit"]
    val get_onSubmitCapture: 'T t -> 'T _React_FormEventHandler [@@js.get "onSubmitCapture"]
    val set_onSubmitCapture: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onSubmitCapture"]
    val get_onInvalid: 'T t -> 'T _React_FormEventHandler [@@js.get "onInvalid"]
    val set_onInvalid: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onInvalid"]
    val get_onInvalidCapture: 'T t -> 'T _React_FormEventHandler [@@js.get "onInvalidCapture"]
    val set_onInvalidCapture: 'T t -> 'T _React_FormEventHandler -> unit [@@js.set "onInvalidCapture"]
    val get_onLoad: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoad"]
    val set_onLoad: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoad"]
    val get_onLoadCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoadCapture"]
    val set_onLoadCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoadCapture"]
    val get_onError: 'T t -> 'T _React_ReactEventHandler [@@js.get "onError"]
    val set_onError: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onError"]
    val get_onErrorCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onErrorCapture"]
    val set_onErrorCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onErrorCapture"]
    val get_onKeyDown: 'T t -> 'T _React_KeyboardEventHandler [@@js.get "onKeyDown"]
    val set_onKeyDown: 'T t -> 'T _React_KeyboardEventHandler -> unit [@@js.set "onKeyDown"]
    val get_onKeyDownCapture: 'T t -> 'T _React_KeyboardEventHandler [@@js.get "onKeyDownCapture"]
    val set_onKeyDownCapture: 'T t -> 'T _React_KeyboardEventHandler -> unit [@@js.set "onKeyDownCapture"]
    val get_onKeyPress: 'T t -> 'T _React_KeyboardEventHandler [@@js.get "onKeyPress"]
    val set_onKeyPress: 'T t -> 'T _React_KeyboardEventHandler -> unit [@@js.set "onKeyPress"]
    val get_onKeyPressCapture: 'T t -> 'T _React_KeyboardEventHandler [@@js.get "onKeyPressCapture"]
    val set_onKeyPressCapture: 'T t -> 'T _React_KeyboardEventHandler -> unit [@@js.set "onKeyPressCapture"]
    val get_onKeyUp: 'T t -> 'T _React_KeyboardEventHandler [@@js.get "onKeyUp"]
    val set_onKeyUp: 'T t -> 'T _React_KeyboardEventHandler -> unit [@@js.set "onKeyUp"]
    val get_onKeyUpCapture: 'T t -> 'T _React_KeyboardEventHandler [@@js.get "onKeyUpCapture"]
    val set_onKeyUpCapture: 'T t -> 'T _React_KeyboardEventHandler -> unit [@@js.set "onKeyUpCapture"]
    val get_onAbort: 'T t -> 'T _React_ReactEventHandler [@@js.get "onAbort"]
    val set_onAbort: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onAbort"]
    val get_onAbortCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onAbortCapture"]
    val set_onAbortCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onAbortCapture"]
    val get_onCanPlay: 'T t -> 'T _React_ReactEventHandler [@@js.get "onCanPlay"]
    val set_onCanPlay: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onCanPlay"]
    val get_onCanPlayCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onCanPlayCapture"]
    val set_onCanPlayCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onCanPlayCapture"]
    val get_onCanPlayThrough: 'T t -> 'T _React_ReactEventHandler [@@js.get "onCanPlayThrough"]
    val set_onCanPlayThrough: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onCanPlayThrough"]
    val get_onCanPlayThroughCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onCanPlayThroughCapture"]
    val set_onCanPlayThroughCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onCanPlayThroughCapture"]
    val get_onDurationChange: 'T t -> 'T _React_ReactEventHandler [@@js.get "onDurationChange"]
    val set_onDurationChange: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onDurationChange"]
    val get_onDurationChangeCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onDurationChangeCapture"]
    val set_onDurationChangeCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onDurationChangeCapture"]
    val get_onEmptied: 'T t -> 'T _React_ReactEventHandler [@@js.get "onEmptied"]
    val set_onEmptied: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onEmptied"]
    val get_onEmptiedCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onEmptiedCapture"]
    val set_onEmptiedCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onEmptiedCapture"]
    val get_onEncrypted: 'T t -> 'T _React_ReactEventHandler [@@js.get "onEncrypted"]
    val set_onEncrypted: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onEncrypted"]
    val get_onEncryptedCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onEncryptedCapture"]
    val set_onEncryptedCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onEncryptedCapture"]
    val get_onEnded: 'T t -> 'T _React_ReactEventHandler [@@js.get "onEnded"]
    val set_onEnded: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onEnded"]
    val get_onEndedCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onEndedCapture"]
    val set_onEndedCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onEndedCapture"]
    val get_onLoadedData: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoadedData"]
    val set_onLoadedData: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoadedData"]
    val get_onLoadedDataCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoadedDataCapture"]
    val set_onLoadedDataCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoadedDataCapture"]
    val get_onLoadedMetadata: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoadedMetadata"]
    val set_onLoadedMetadata: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoadedMetadata"]
    val get_onLoadedMetadataCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoadedMetadataCapture"]
    val set_onLoadedMetadataCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoadedMetadataCapture"]
    val get_onLoadStart: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoadStart"]
    val set_onLoadStart: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoadStart"]
    val get_onLoadStartCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onLoadStartCapture"]
    val set_onLoadStartCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onLoadStartCapture"]
    val get_onPause: 'T t -> 'T _React_ReactEventHandler [@@js.get "onPause"]
    val set_onPause: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onPause"]
    val get_onPauseCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onPauseCapture"]
    val set_onPauseCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onPauseCapture"]
    val get_onPlay: 'T t -> 'T _React_ReactEventHandler [@@js.get "onPlay"]
    val set_onPlay: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onPlay"]
    val get_onPlayCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onPlayCapture"]
    val set_onPlayCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onPlayCapture"]
    val get_onPlaying: 'T t -> 'T _React_ReactEventHandler [@@js.get "onPlaying"]
    val set_onPlaying: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onPlaying"]
    val get_onPlayingCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onPlayingCapture"]
    val set_onPlayingCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onPlayingCapture"]
    val get_onProgress: 'T t -> 'T _React_ReactEventHandler [@@js.get "onProgress"]
    val set_onProgress: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onProgress"]
    val get_onProgressCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onProgressCapture"]
    val set_onProgressCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onProgressCapture"]
    val get_onRateChange: 'T t -> 'T _React_ReactEventHandler [@@js.get "onRateChange"]
    val set_onRateChange: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onRateChange"]
    val get_onRateChangeCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onRateChangeCapture"]
    val set_onRateChangeCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onRateChangeCapture"]
    val get_onSeeked: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSeeked"]
    val set_onSeeked: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSeeked"]
    val get_onSeekedCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSeekedCapture"]
    val set_onSeekedCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSeekedCapture"]
    val get_onSeeking: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSeeking"]
    val set_onSeeking: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSeeking"]
    val get_onSeekingCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSeekingCapture"]
    val set_onSeekingCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSeekingCapture"]
    val get_onStalled: 'T t -> 'T _React_ReactEventHandler [@@js.get "onStalled"]
    val set_onStalled: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onStalled"]
    val get_onStalledCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onStalledCapture"]
    val set_onStalledCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onStalledCapture"]
    val get_onSuspend: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSuspend"]
    val set_onSuspend: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSuspend"]
    val get_onSuspendCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSuspendCapture"]
    val set_onSuspendCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSuspendCapture"]
    val get_onTimeUpdate: 'T t -> 'T _React_ReactEventHandler [@@js.get "onTimeUpdate"]
    val set_onTimeUpdate: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onTimeUpdate"]
    val get_onTimeUpdateCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onTimeUpdateCapture"]
    val set_onTimeUpdateCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onTimeUpdateCapture"]
    val get_onVolumeChange: 'T t -> 'T _React_ReactEventHandler [@@js.get "onVolumeChange"]
    val set_onVolumeChange: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onVolumeChange"]
    val get_onVolumeChangeCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onVolumeChangeCapture"]
    val set_onVolumeChangeCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onVolumeChangeCapture"]
    val get_onWaiting: 'T t -> 'T _React_ReactEventHandler [@@js.get "onWaiting"]
    val set_onWaiting: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onWaiting"]
    val get_onWaitingCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onWaitingCapture"]
    val set_onWaitingCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onWaitingCapture"]
    val get_onAuxClick: 'T t -> 'T _React_MouseEventHandler [@@js.get "onAuxClick"]
    val set_onAuxClick: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onAuxClick"]
    val get_onAuxClickCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onAuxClickCapture"]
    val set_onAuxClickCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onAuxClickCapture"]
    val get_onClick: 'T t -> 'T _React_MouseEventHandler [@@js.get "onClick"]
    val set_onClick: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onClick"]
    val get_onClickCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onClickCapture"]
    val set_onClickCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onClickCapture"]
    val get_onContextMenu: 'T t -> 'T _React_MouseEventHandler [@@js.get "onContextMenu"]
    val set_onContextMenu: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onContextMenu"]
    val get_onContextMenuCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onContextMenuCapture"]
    val set_onContextMenuCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onContextMenuCapture"]
    val get_onDoubleClick: 'T t -> 'T _React_MouseEventHandler [@@js.get "onDoubleClick"]
    val set_onDoubleClick: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onDoubleClick"]
    val get_onDoubleClickCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onDoubleClickCapture"]
    val set_onDoubleClickCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onDoubleClickCapture"]
    val get_onDrag: 'T t -> 'T _React_DragEventHandler [@@js.get "onDrag"]
    val set_onDrag: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDrag"]
    val get_onDragCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragCapture"]
    val set_onDragCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragCapture"]
    val get_onDragEnd: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragEnd"]
    val set_onDragEnd: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragEnd"]
    val get_onDragEndCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragEndCapture"]
    val set_onDragEndCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragEndCapture"]
    val get_onDragEnter: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragEnter"]
    val set_onDragEnter: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragEnter"]
    val get_onDragEnterCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragEnterCapture"]
    val set_onDragEnterCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragEnterCapture"]
    val get_onDragExit: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragExit"]
    val set_onDragExit: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragExit"]
    val get_onDragExitCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragExitCapture"]
    val set_onDragExitCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragExitCapture"]
    val get_onDragLeave: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragLeave"]
    val set_onDragLeave: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragLeave"]
    val get_onDragLeaveCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragLeaveCapture"]
    val set_onDragLeaveCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragLeaveCapture"]
    val get_onDragOver: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragOver"]
    val set_onDragOver: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragOver"]
    val get_onDragOverCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragOverCapture"]
    val set_onDragOverCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragOverCapture"]
    val get_onDragStart: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragStart"]
    val set_onDragStart: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragStart"]
    val get_onDragStartCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDragStartCapture"]
    val set_onDragStartCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDragStartCapture"]
    val get_onDrop: 'T t -> 'T _React_DragEventHandler [@@js.get "onDrop"]
    val set_onDrop: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDrop"]
    val get_onDropCapture: 'T t -> 'T _React_DragEventHandler [@@js.get "onDropCapture"]
    val set_onDropCapture: 'T t -> 'T _React_DragEventHandler -> unit [@@js.set "onDropCapture"]
    val get_onMouseDown: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseDown"]
    val set_onMouseDown: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseDown"]
    val get_onMouseDownCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseDownCapture"]
    val set_onMouseDownCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseDownCapture"]
    val get_onMouseEnter: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseEnter"]
    val set_onMouseEnter: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseEnter"]
    val get_onMouseLeave: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseLeave"]
    val set_onMouseLeave: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseLeave"]
    val get_onMouseMove: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseMove"]
    val set_onMouseMove: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseMove"]
    val get_onMouseMoveCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseMoveCapture"]
    val set_onMouseMoveCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseMoveCapture"]
    val get_onMouseOut: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseOut"]
    val set_onMouseOut: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseOut"]
    val get_onMouseOutCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseOutCapture"]
    val set_onMouseOutCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseOutCapture"]
    val get_onMouseOver: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseOver"]
    val set_onMouseOver: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseOver"]
    val get_onMouseOverCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseOverCapture"]
    val set_onMouseOverCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseOverCapture"]
    val get_onMouseUp: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseUp"]
    val set_onMouseUp: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseUp"]
    val get_onMouseUpCapture: 'T t -> 'T _React_MouseEventHandler [@@js.get "onMouseUpCapture"]
    val set_onMouseUpCapture: 'T t -> 'T _React_MouseEventHandler -> unit [@@js.set "onMouseUpCapture"]
    val get_onSelect: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSelect"]
    val set_onSelect: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSelect"]
    val get_onSelectCapture: 'T t -> 'T _React_ReactEventHandler [@@js.get "onSelectCapture"]
    val set_onSelectCapture: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onSelectCapture"]
    val get_onTouchCancel: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchCancel"]
    val set_onTouchCancel: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchCancel"]
    val get_onTouchCancelCapture: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchCancelCapture"]
    val set_onTouchCancelCapture: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchCancelCapture"]
    val get_onTouchEnd: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchEnd"]
    val set_onTouchEnd: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchEnd"]
    val get_onTouchEndCapture: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchEndCapture"]
    val set_onTouchEndCapture: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchEndCapture"]
    val get_onTouchMove: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchMove"]
    val set_onTouchMove: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchMove"]
    val get_onTouchMoveCapture: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchMoveCapture"]
    val set_onTouchMoveCapture: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchMoveCapture"]
    val get_onTouchStart: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchStart"]
    val set_onTouchStart: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchStart"]
    val get_onTouchStartCapture: 'T t -> 'T _React_TouchEventHandler [@@js.get "onTouchStartCapture"]
    val set_onTouchStartCapture: 'T t -> 'T _React_TouchEventHandler -> unit [@@js.set "onTouchStartCapture"]
    val get_onPointerDown: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerDown"]
    val set_onPointerDown: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerDown"]
    val get_onPointerDownCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerDownCapture"]
    val set_onPointerDownCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerDownCapture"]
    val get_onPointerMove: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerMove"]
    val set_onPointerMove: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerMove"]
    val get_onPointerMoveCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerMoveCapture"]
    val set_onPointerMoveCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerMoveCapture"]
    val get_onPointerUp: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerUp"]
    val set_onPointerUp: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerUp"]
    val get_onPointerUpCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerUpCapture"]
    val set_onPointerUpCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerUpCapture"]
    val get_onPointerCancel: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerCancel"]
    val set_onPointerCancel: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerCancel"]
    val get_onPointerCancelCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerCancelCapture"]
    val set_onPointerCancelCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerCancelCapture"]
    val get_onPointerEnter: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerEnter"]
    val set_onPointerEnter: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerEnter"]
    val get_onPointerEnterCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerEnterCapture"]
    val set_onPointerEnterCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerEnterCapture"]
    val get_onPointerLeave: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerLeave"]
    val set_onPointerLeave: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerLeave"]
    val get_onPointerLeaveCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerLeaveCapture"]
    val set_onPointerLeaveCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerLeaveCapture"]
    val get_onPointerOver: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerOver"]
    val set_onPointerOver: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerOver"]
    val get_onPointerOverCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerOverCapture"]
    val set_onPointerOverCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerOverCapture"]
    val get_onPointerOut: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerOut"]
    val set_onPointerOut: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerOut"]
    val get_onPointerOutCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onPointerOutCapture"]
    val set_onPointerOutCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onPointerOutCapture"]
    val get_onGotPointerCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onGotPointerCapture"]
    val set_onGotPointerCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onGotPointerCapture"]
    val get_onGotPointerCaptureCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onGotPointerCaptureCapture"]
    val set_onGotPointerCaptureCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onGotPointerCaptureCapture"]
    val get_onLostPointerCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onLostPointerCapture"]
    val set_onLostPointerCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onLostPointerCapture"]
    val get_onLostPointerCaptureCapture: 'T t -> 'T _React_PointerEventHandler [@@js.get "onLostPointerCaptureCapture"]
    val set_onLostPointerCaptureCapture: 'T t -> 'T _React_PointerEventHandler -> unit [@@js.set "onLostPointerCaptureCapture"]
    val get_onScroll: 'T t -> 'T _React_UIEventHandler [@@js.get "onScroll"]
    val set_onScroll: 'T t -> 'T _React_UIEventHandler -> unit [@@js.set "onScroll"]
    val get_onScrollCapture: 'T t -> 'T _React_UIEventHandler [@@js.get "onScrollCapture"]
    val set_onScrollCapture: 'T t -> 'T _React_UIEventHandler -> unit [@@js.set "onScrollCapture"]
    val get_onWheel: 'T t -> 'T _React_WheelEventHandler [@@js.get "onWheel"]
    val set_onWheel: 'T t -> 'T _React_WheelEventHandler -> unit [@@js.set "onWheel"]
    val get_onWheelCapture: 'T t -> 'T _React_WheelEventHandler [@@js.get "onWheelCapture"]
    val set_onWheelCapture: 'T t -> 'T _React_WheelEventHandler -> unit [@@js.set "onWheelCapture"]
    val get_onAnimationStart: 'T t -> 'T _React_AnimationEventHandler [@@js.get "onAnimationStart"]
    val set_onAnimationStart: 'T t -> 'T _React_AnimationEventHandler -> unit [@@js.set "onAnimationStart"]
    val get_onAnimationStartCapture: 'T t -> 'T _React_AnimationEventHandler [@@js.get "onAnimationStartCapture"]
    val set_onAnimationStartCapture: 'T t -> 'T _React_AnimationEventHandler -> unit [@@js.set "onAnimationStartCapture"]
    val get_onAnimationEnd: 'T t -> 'T _React_AnimationEventHandler [@@js.get "onAnimationEnd"]
    val set_onAnimationEnd: 'T t -> 'T _React_AnimationEventHandler -> unit [@@js.set "onAnimationEnd"]
    val get_onAnimationEndCapture: 'T t -> 'T _React_AnimationEventHandler [@@js.get "onAnimationEndCapture"]
    val set_onAnimationEndCapture: 'T t -> 'T _React_AnimationEventHandler -> unit [@@js.set "onAnimationEndCapture"]
    val get_onAnimationIteration: 'T t -> 'T _React_AnimationEventHandler [@@js.get "onAnimationIteration"]
    val set_onAnimationIteration: 'T t -> 'T _React_AnimationEventHandler -> unit [@@js.set "onAnimationIteration"]
    val get_onAnimationIterationCapture: 'T t -> 'T _React_AnimationEventHandler [@@js.get "onAnimationIterationCapture"]
    val set_onAnimationIterationCapture: 'T t -> 'T _React_AnimationEventHandler -> unit [@@js.set "onAnimationIterationCapture"]
    val get_onTransitionEnd: 'T t -> 'T _React_TransitionEventHandler [@@js.get "onTransitionEnd"]
    val set_onTransitionEnd: 'T t -> 'T _React_TransitionEventHandler -> unit [@@js.set "onTransitionEnd"]
    val get_onTransitionEndCapture: 'T t -> 'T _React_TransitionEventHandler [@@js.get "onTransitionEndCapture"]
    val set_onTransitionEndCapture: 'T t -> 'T _React_TransitionEventHandler -> unit [@@js.set "onTransitionEndCapture"]
  end
  module[@js.scope "CSSProperties"] CSSProperties : sig
    type t = _React_CSSProperties
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_CSSProperties | CSS.Properties.tags]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_CSSProperties | CSS.Properties.tags]
    ]
    val cast: t -> string or_number CSS.Properties.t_1 [@@js.cast]
  end
  module[@js.scope "AriaAttributes"] AriaAttributes : sig
    type t = _React_AriaAttributes
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_AriaAttributes]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_AriaAttributes]
    ]
    (** Identifies the currently active element when DOM focus is on a composite widget, textbox, group, or application. *)
    (** Identifies the currently active element when DOM focus is on a composite widget, textbox, group, or application. *)
    val get_aria_activedescendant: t -> string [@@js.get "aria-activedescendant"]
    (** Identifies the currently active element when DOM focus is on a composite widget, textbox, group, or application. *)
    val set_aria_activedescendant: t -> string -> unit [@@js.set "aria-activedescendant"]
    (** Indicates whether assistive technologies will present all, or only parts of, the changed region based on the change notifications defined by the aria-relevant attribute. *)
    (** Indicates whether assistive technologies will present all, or only parts of, the changed region based on the change notifications defined by the aria-relevant attribute. *)
    val get_aria_atomic: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-atomic"]
    (** Indicates whether assistive technologies will present all, or only parts of, the changed region based on the change notifications defined by the aria-relevant attribute. *)
    val set_aria_atomic: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-atomic"]
    (**
      Indicates whether inputting text could trigger display of one or more predictions of the user's intended value for an input and specifies how predictions would be
      presented if they are made.
    *)
    (**
      Indicates whether inputting text could trigger display of one or more predictions of the user's intended value for an input and specifies how predictions would be
      presented if they are made.
    *)
    val get_aria_autocomplete: t -> ([`L_s33_both[@js "both"] | `L_s131_inline[@js "inline"] | `L_s148_list[@js "list"] | `L_s174_none[@js "none"]] [@js.enum]) [@@js.get "aria-autocomplete"]
    (**
      Indicates whether inputting text could trigger display of one or more predictions of the user's intended value for an input and specifies how predictions would be
      presented if they are made.
    *)
    val set_aria_autocomplete: t -> ([`L_s33_both | `L_s131_inline | `L_s148_list | `L_s174_none] [@js.enum]) -> unit [@@js.set "aria-autocomplete"]
    (** Indicates an element is being modified and that assistive technologies MAY want to wait until the modifications are complete before exposing them to the user. *)
    (** Indicates an element is being modified and that assistive technologies MAY want to wait until the modifications are complete before exposing them to the user. *)
    val get_aria_busy: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-busy"]
    (** Indicates an element is being modified and that assistive technologies MAY want to wait until the modifications are complete before exposing them to the user. *)
    val set_aria_busy: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-busy"]
    (**
      Indicates the current "checked" state of checkboxes, radio buttons, and other widgets.
      @see "aria-pressed" 
      @see "aria-selected." 
    *)
    (**
      Indicates the current "checked" state of checkboxes, radio buttons, and other widgets.
      @see "aria-pressed" 
      @see "aria-selected." 
    *)
    val get_aria_checked: t -> ([`L_s74_false[@js "false"] | `L_s165_mixed[@js "mixed"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-checked"]
    (**
      Indicates the current "checked" state of checkboxes, radio buttons, and other widgets.
      @see "aria-pressed" 
      @see "aria-selected." 
    *)
    val set_aria_checked: t -> ([`L_s74_false | `L_s165_mixed | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-checked"]
    (**
      Defines the total number of columns in a table, grid, or treegrid.
      @see "aria-colindex." 
    *)
    (**
      Defines the total number of columns in a table, grid, or treegrid.
      @see "aria-colindex." 
    *)
    val get_aria_colcount: t -> float [@@js.get "aria-colcount"]
    (**
      Defines the total number of columns in a table, grid, or treegrid.
      @see "aria-colindex." 
    *)
    val set_aria_colcount: t -> float -> unit [@@js.set "aria-colcount"]
    (**
      Defines an element's column index or position with respect to the total number of columns within a table, grid, or treegrid.
      @see "aria-colcount" 
      @see "aria-colspan." 
    *)
    (**
      Defines an element's column index or position with respect to the total number of columns within a table, grid, or treegrid.
      @see "aria-colcount" 
      @see "aria-colspan." 
    *)
    val get_aria_colindex: t -> float [@@js.get "aria-colindex"]
    (**
      Defines an element's column index or position with respect to the total number of columns within a table, grid, or treegrid.
      @see "aria-colcount" 
      @see "aria-colspan." 
    *)
    val set_aria_colindex: t -> float -> unit [@@js.set "aria-colindex"]
    (**
      Defines the number of columns spanned by a cell or gridcell within a table, grid, or treegrid.
      @see "aria-colindex" 
      @see "aria-rowspan." 
    *)
    (**
      Defines the number of columns spanned by a cell or gridcell within a table, grid, or treegrid.
      @see "aria-colindex" 
      @see "aria-rowspan." 
    *)
    val get_aria_colspan: t -> float [@@js.get "aria-colspan"]
    (**
      Defines the number of columns spanned by a cell or gridcell within a table, grid, or treegrid.
      @see "aria-colindex" 
      @see "aria-rowspan." 
    *)
    val set_aria_colspan: t -> float -> unit [@@js.set "aria-colspan"]
    (**
      Identifies the element (or elements) whose contents or presence are controlled by the current element.
      @see "aria-owns." 
    *)
    (**
      Identifies the element (or elements) whose contents or presence are controlled by the current element.
      @see "aria-owns." 
    *)
    val get_aria_controls: t -> string [@@js.get "aria-controls"]
    (**
      Identifies the element (or elements) whose contents or presence are controlled by the current element.
      @see "aria-owns." 
    *)
    val set_aria_controls: t -> string -> unit [@@js.set "aria-controls"]
    (** Indicates the element that represents the current item within a container or set of related elements. *)
    (** Indicates the element that represents the current item within a container or set of related elements. *)
    val get_aria_current: t -> ([`L_s52_date[@js "date"] | `L_s74_false[@js "false"] | `L_s150_location[@js "location"] | `L_s189_page[@js "page"] | `L_s231_step[@js "step"] | `L_s262_time[@js "time"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-current"]
    (** Indicates the element that represents the current item within a container or set of related elements. *)
    val set_aria_current: t -> ([`L_s52_date | `L_s74_false | `L_s150_location | `L_s189_page | `L_s231_step | `L_s262_time | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-current"]
    (**
      Identifies the element (or elements) that describes the object.
      @see "aria-labelledby" 
    *)
    (**
      Identifies the element (or elements) that describes the object.
      @see "aria-labelledby" 
    *)
    val get_aria_describedby: t -> string [@@js.get "aria-describedby"]
    (**
      Identifies the element (or elements) that describes the object.
      @see "aria-labelledby" 
    *)
    val set_aria_describedby: t -> string -> unit [@@js.set "aria-describedby"]
    (**
      Identifies the element that provides a detailed, extended description for the object.
      @see "aria-describedby." 
    *)
    (**
      Identifies the element that provides a detailed, extended description for the object.
      @see "aria-describedby." 
    *)
    val get_aria_details: t -> string [@@js.get "aria-details"]
    (**
      Identifies the element that provides a detailed, extended description for the object.
      @see "aria-describedby." 
    *)
    val set_aria_details: t -> string -> unit [@@js.set "aria-details"]
    (**
      Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable.
      @see "aria-hidden" 
      @see "aria-readonly." 
    *)
    (**
      Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable.
      @see "aria-hidden" 
      @see "aria-readonly." 
    *)
    val get_aria_disabled: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-disabled"]
    (**
      Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable.
      @see "aria-hidden" 
      @see "aria-readonly." 
    *)
    val set_aria_disabled: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-disabled"]
    (**
      Indicates what functions can be performed when a dragged object is released on the drop target.
      @deprecated in ARIA 1.1
    *)
    (**
      Indicates what functions can be performed when a dragged object is released on the drop target.
      @deprecated in ARIA 1.1
    *)
    val get_aria_dropeffect: t -> ([`L_s49_copy[@js "copy"] | `L_s73_execute[@js "execute"] | `L_s147_link[@js "link"] | `L_s168_move[@js "move"] | `L_s174_none[@js "none"] | `L_s198_popup[@js "popup"]] [@js.enum]) [@@js.get "aria-dropeffect"]
    (**
      Indicates what functions can be performed when a dragged object is released on the drop target.
      @deprecated in ARIA 1.1
    *)
    val set_aria_dropeffect: t -> ([`L_s49_copy | `L_s73_execute | `L_s147_link | `L_s168_move | `L_s174_none | `L_s198_popup] [@js.enum]) -> unit [@@js.set "aria-dropeffect"]
    (**
      Identifies the element that provides an error message for the object.
      @see "aria-invalid" 
      @see "aria-describedby." 
    *)
    (**
      Identifies the element that provides an error message for the object.
      @see "aria-invalid" 
      @see "aria-describedby." 
    *)
    val get_aria_errormessage: t -> string [@@js.get "aria-errormessage"]
    (**
      Identifies the element that provides an error message for the object.
      @see "aria-invalid" 
      @see "aria-describedby." 
    *)
    val set_aria_errormessage: t -> string -> unit [@@js.set "aria-errormessage"]
    (** Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed. *)
    (** Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed. *)
    val get_aria_expanded: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-expanded"]
    (** Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed. *)
    val set_aria_expanded: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-expanded"]
    (**
      Identifies the next element (or elements) in an alternate reading order of content which, at the user's discretion,
      allows assistive technology to override the general default of reading in document source order.
    *)
    (**
      Identifies the next element (or elements) in an alternate reading order of content which, at the user's discretion,
      allows assistive technology to override the general default of reading in document source order.
    *)
    val get_aria_flowto: t -> string [@@js.get "aria-flowto"]
    (**
      Identifies the next element (or elements) in an alternate reading order of content which, at the user's discretion,
      allows assistive technology to override the general default of reading in document source order.
    *)
    val set_aria_flowto: t -> string -> unit [@@js.set "aria-flowto"]
    (**
      Indicates an element's "grabbed" state in a drag-and-drop operation.
      @deprecated in ARIA 1.1
    *)
    (**
      Indicates an element's "grabbed" state in a drag-and-drop operation.
      @deprecated in ARIA 1.1
    *)
    val get_aria_grabbed: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-grabbed"]
    (**
      Indicates an element's "grabbed" state in a drag-and-drop operation.
      @deprecated in ARIA 1.1
    *)
    val set_aria_grabbed: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-grabbed"]
    (** Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element. *)
    (** Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element. *)
    val get_aria_haspopup: t -> ([`L_s61_dialog[@js "dialog"] | `L_s74_false[@js "false"] | `L_s110_grid[@js "grid"] | `L_s149_listbox[@js "listbox"] | `L_s158_menu[@js "menu"] | `L_s268_tree[@js "tree"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-haspopup"]
    (** Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element. *)
    val set_aria_haspopup: t -> ([`L_s61_dialog | `L_s74_false | `L_s110_grid | `L_s149_listbox | `L_s158_menu | `L_s268_tree | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-haspopup"]
    (**
      Indicates whether the element is exposed to an accessibility API.
      @see "aria-disabled." 
    *)
    (**
      Indicates whether the element is exposed to an accessibility API.
      @see "aria-disabled." 
    *)
    val get_aria_hidden: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-hidden"]
    (**
      Indicates whether the element is exposed to an accessibility API.
      @see "aria-disabled." 
    *)
    val set_aria_hidden: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-hidden"]
    (**
      Indicates the entered value does not conform to the format expected by the application.
      @see "aria-errormessage." 
    *)
    (**
      Indicates the entered value does not conform to the format expected by the application.
      @see "aria-errormessage." 
    *)
    val get_aria_invalid: t -> ([`L_s74_false[@js "false"] | `L_s109_grammar[@js "grammar"] | `L_s229_spelling[@js "spelling"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-invalid"]
    (**
      Indicates the entered value does not conform to the format expected by the application.
      @see "aria-errormessage." 
    *)
    val set_aria_invalid: t -> ([`L_s74_false | `L_s109_grammar | `L_s229_spelling | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-invalid"]
    (** Indicates keyboard shortcuts that an author has implemented to activate or give focus to an element. *)
    (** Indicates keyboard shortcuts that an author has implemented to activate or give focus to an element. *)
    val get_aria_keyshortcuts: t -> string [@@js.get "aria-keyshortcuts"]
    (** Indicates keyboard shortcuts that an author has implemented to activate or give focus to an element. *)
    val set_aria_keyshortcuts: t -> string -> unit [@@js.set "aria-keyshortcuts"]
    (**
      Defines a string value that labels the current element.
      @see "aria-labelledby." 
    *)
    (**
      Defines a string value that labels the current element.
      @see "aria-labelledby." 
    *)
    val get_aria_label: t -> string [@@js.get "aria-label"]
    (**
      Defines a string value that labels the current element.
      @see "aria-labelledby." 
    *)
    val set_aria_label: t -> string -> unit [@@js.set "aria-label"]
    (**
      Identifies the element (or elements) that labels the current element.
      @see "aria-describedby." 
    *)
    (**
      Identifies the element (or elements) that labels the current element.
      @see "aria-describedby." 
    *)
    val get_aria_labelledby: t -> string [@@js.get "aria-labelledby"]
    (**
      Identifies the element (or elements) that labels the current element.
      @see "aria-describedby." 
    *)
    val set_aria_labelledby: t -> string -> unit [@@js.set "aria-labelledby"]
    (** Defines the hierarchical level of an element within a structure. *)
    (** Defines the hierarchical level of an element within a structure. *)
    val get_aria_level: t -> float [@@js.get "aria-level"]
    (** Defines the hierarchical level of an element within a structure. *)
    val set_aria_level: t -> float -> unit [@@js.set "aria-level"]
    (** Indicates that an element will be updated, and describes the types of updates the user agents, assistive technologies, and user can expect from the live region. *)
    (** Indicates that an element will be updated, and describes the types of updates the user agents, assistive technologies, and user can expect from the live region. *)
    val get_aria_live: t -> ([`L_s19_assertive[@js "assertive"] | `L_s179_off[@js "off"] | `L_s195_polite[@js "polite"]] [@js.enum]) [@@js.get "aria-live"]
    (** Indicates that an element will be updated, and describes the types of updates the user agents, assistive technologies, and user can expect from the live region. *)
    val set_aria_live: t -> ([`L_s19_assertive | `L_s179_off | `L_s195_polite] [@js.enum]) -> unit [@@js.set "aria-live"]
    (** Indicates whether an element is modal when displayed. *)
    (** Indicates whether an element is modal when displayed. *)
    val get_aria_modal: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-modal"]
    (** Indicates whether an element is modal when displayed. *)
    val set_aria_modal: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-modal"]
    (** Indicates whether a text box accepts multiple lines of input or only a single line. *)
    (** Indicates whether a text box accepts multiple lines of input or only a single line. *)
    val get_aria_multiline: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-multiline"]
    (** Indicates whether a text box accepts multiple lines of input or only a single line. *)
    val set_aria_multiline: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-multiline"]
    (** Indicates that the user may select more than one item from the current selectable descendants. *)
    (** Indicates that the user may select more than one item from the current selectable descendants. *)
    val get_aria_multiselectable: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-multiselectable"]
    (** Indicates that the user may select more than one item from the current selectable descendants. *)
    val set_aria_multiselectable: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-multiselectable"]
    (** Indicates whether the element's orientation is horizontal, vertical, or unknown/ambiguous. *)
    (** Indicates whether the element's orientation is horizontal, vertical, or unknown/ambiguous. *)
    val get_aria_orientation: t -> ([`L_s121_horizontal[@js "horizontal"] | `L_s279_vertical[@js "vertical"]] [@js.enum]) [@@js.get "aria-orientation"]
    (** Indicates whether the element's orientation is horizontal, vertical, or unknown/ambiguous. *)
    val set_aria_orientation: t -> ([`L_s121_horizontal | `L_s279_vertical] [@js.enum]) -> unit [@@js.set "aria-orientation"]
    (**
      Identifies an element (or elements) in order to define a visual, functional, or contextual parent/child relationship
      between DOM elements where the DOM hierarchy cannot be used to represent the relationship.
      @see "aria-controls." 
    *)
    (**
      Identifies an element (or elements) in order to define a visual, functional, or contextual parent/child relationship
      between DOM elements where the DOM hierarchy cannot be used to represent the relationship.
      @see "aria-controls." 
    *)
    val get_aria_owns: t -> string [@@js.get "aria-owns"]
    (**
      Identifies an element (or elements) in order to define a visual, functional, or contextual parent/child relationship
      between DOM elements where the DOM hierarchy cannot be used to represent the relationship.
      @see "aria-controls." 
    *)
    val set_aria_owns: t -> string -> unit [@@js.set "aria-owns"]
    (**
      Defines a short hint (a word or short phrase) intended to aid the user with data entry when the control has no value.
      A hint could be a sample value or a brief description of the expected format.
    *)
    (**
      Defines a short hint (a word or short phrase) intended to aid the user with data entry when the control has no value.
      A hint could be a sample value or a brief description of the expected format.
    *)
    val get_aria_placeholder: t -> string [@@js.get "aria-placeholder"]
    (**
      Defines a short hint (a word or short phrase) intended to aid the user with data entry when the control has no value.
      A hint could be a sample value or a brief description of the expected format.
    *)
    val set_aria_placeholder: t -> string -> unit [@@js.set "aria-placeholder"]
    (**
      Defines an element's number or position in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
      @see "aria-setsize." 
    *)
    (**
      Defines an element's number or position in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
      @see "aria-setsize." 
    *)
    val get_aria_posinset: t -> float [@@js.get "aria-posinset"]
    (**
      Defines an element's number or position in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
      @see "aria-setsize." 
    *)
    val set_aria_posinset: t -> float -> unit [@@js.set "aria-posinset"]
    (**
      Indicates the current "pressed" state of toggle buttons.
      @see "aria-checked" 
      @see "aria-selected." 
    *)
    (**
      Indicates the current "pressed" state of toggle buttons.
      @see "aria-checked" 
      @see "aria-selected." 
    *)
    val get_aria_pressed: t -> ([`L_s74_false[@js "false"] | `L_s165_mixed[@js "mixed"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-pressed"]
    (**
      Indicates the current "pressed" state of toggle buttons.
      @see "aria-checked" 
      @see "aria-selected." 
    *)
    val set_aria_pressed: t -> ([`L_s74_false | `L_s165_mixed | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-pressed"]
    (**
      Indicates that the element is not editable, but is otherwise operable.
      @see "aria-disabled." 
    *)
    (**
      Indicates that the element is not editable, but is otherwise operable.
      @see "aria-disabled." 
    *)
    val get_aria_readonly: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-readonly"]
    (**
      Indicates that the element is not editable, but is otherwise operable.
      @see "aria-disabled." 
    *)
    val set_aria_readonly: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-readonly"]
    (**
      Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified.
      @see "aria-atomic." 
    *)
    (**
      Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified.
      @see "aria-atomic." 
    *)
    val get_aria_relevant: t -> ([`L_s6_additions[@js "additions"] | `L_s7_additions_removals[@js "additions removals"] | `L_s8_additions_text[@js "additions text"] | `L_s11_all[@js "all"] | `L_s206_removals[@js "removals"] | `L_s207_removals_additions[@js "removals additions"] | `L_s208_removals_text[@js "removals text"] | `L_s252_text[@js "text"] | `L_s253_text_additions[@js "text additions"] | `L_s254_text_removals[@js "text removals"]] [@js.enum]) [@@js.get "aria-relevant"]
    (**
      Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified.
      @see "aria-atomic." 
    *)
    val set_aria_relevant: t -> ([`L_s6_additions | `L_s7_additions_removals | `L_s8_additions_text | `L_s11_all | `L_s206_removals | `L_s207_removals_additions | `L_s208_removals_text | `L_s252_text | `L_s253_text_additions | `L_s254_text_removals] [@js.enum]) -> unit [@@js.set "aria-relevant"]
    (** Indicates that user input is required on the element before a form may be submitted. *)
    (** Indicates that user input is required on the element before a form may be submitted. *)
    val get_aria_required: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-required"]
    (** Indicates that user input is required on the element before a form may be submitted. *)
    val set_aria_required: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-required"]
    (** Defines a human-readable, author-localized description for the role of an element. *)
    (** Defines a human-readable, author-localized description for the role of an element. *)
    val get_aria_roledescription: t -> string [@@js.get "aria-roledescription"]
    (** Defines a human-readable, author-localized description for the role of an element. *)
    val set_aria_roledescription: t -> string -> unit [@@js.set "aria-roledescription"]
    (**
      Defines the total number of rows in a table, grid, or treegrid.
      @see "aria-rowindex." 
    *)
    (**
      Defines the total number of rows in a table, grid, or treegrid.
      @see "aria-rowindex." 
    *)
    val get_aria_rowcount: t -> float [@@js.get "aria-rowcount"]
    (**
      Defines the total number of rows in a table, grid, or treegrid.
      @see "aria-rowindex." 
    *)
    val set_aria_rowcount: t -> float -> unit [@@js.set "aria-rowcount"]
    (**
      Defines an element's row index or position with respect to the total number of rows within a table, grid, or treegrid.
      @see "aria-rowcount" 
      @see "aria-rowspan." 
    *)
    (**
      Defines an element's row index or position with respect to the total number of rows within a table, grid, or treegrid.
      @see "aria-rowcount" 
      @see "aria-rowspan." 
    *)
    val get_aria_rowindex: t -> float [@@js.get "aria-rowindex"]
    (**
      Defines an element's row index or position with respect to the total number of rows within a table, grid, or treegrid.
      @see "aria-rowcount" 
      @see "aria-rowspan." 
    *)
    val set_aria_rowindex: t -> float -> unit [@@js.set "aria-rowindex"]
    (**
      Defines the number of rows spanned by a cell or gridcell within a table, grid, or treegrid.
      @see "aria-rowindex" 
      @see "aria-colspan." 
    *)
    (**
      Defines the number of rows spanned by a cell or gridcell within a table, grid, or treegrid.
      @see "aria-rowindex" 
      @see "aria-colspan." 
    *)
    val get_aria_rowspan: t -> float [@@js.get "aria-rowspan"]
    (**
      Defines the number of rows spanned by a cell or gridcell within a table, grid, or treegrid.
      @see "aria-rowindex" 
      @see "aria-colspan." 
    *)
    val set_aria_rowspan: t -> float -> unit [@@js.set "aria-rowspan"]
    (**
      Indicates the current "selected" state of various widgets.
      @see "aria-checked" 
      @see "aria-pressed." 
    *)
    (**
      Indicates the current "selected" state of various widgets.
      @see "aria-checked" 
      @see "aria-pressed." 
    *)
    val get_aria_selected: t -> ([`L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum]) or_boolean [@@js.get "aria-selected"]
    (**
      Indicates the current "selected" state of various widgets.
      @see "aria-checked" 
      @see "aria-pressed." 
    *)
    val set_aria_selected: t -> ([`L_s74_false | `L_s269_true] [@js.enum]) or_boolean -> unit [@@js.set "aria-selected"]
    (**
      Defines the number of items in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
      @see "aria-posinset." 
    *)
    (**
      Defines the number of items in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
      @see "aria-posinset." 
    *)
    val get_aria_setsize: t -> float [@@js.get "aria-setsize"]
    (**
      Defines the number of items in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
      @see "aria-posinset." 
    *)
    val set_aria_setsize: t -> float -> unit [@@js.set "aria-setsize"]
    (** Indicates if items in a table or grid are sorted in ascending or descending order. *)
    (** Indicates if items in a table or grid are sorted in ascending or descending order. *)
    val get_aria_sort: t -> ([`L_s17_ascending[@js "ascending"] | `L_s58_descending[@js "descending"] | `L_s174_none[@js "none"] | `L_s186_other[@js "other"]] [@js.enum]) [@@js.get "aria-sort"]
    (** Indicates if items in a table or grid are sorted in ascending or descending order. *)
    val set_aria_sort: t -> ([`L_s17_ascending | `L_s58_descending | `L_s174_none | `L_s186_other] [@js.enum]) -> unit [@@js.set "aria-sort"]
    (** Defines the maximum allowed value for a range widget. *)
    (** Defines the maximum allowed value for a range widget. *)
    val get_aria_valuemax: t -> float [@@js.get "aria-valuemax"]
    (** Defines the maximum allowed value for a range widget. *)
    val set_aria_valuemax: t -> float -> unit [@@js.set "aria-valuemax"]
    (** Defines the minimum allowed value for a range widget. *)
    (** Defines the minimum allowed value for a range widget. *)
    val get_aria_valuemin: t -> float [@@js.get "aria-valuemin"]
    (** Defines the minimum allowed value for a range widget. *)
    val set_aria_valuemin: t -> float -> unit [@@js.set "aria-valuemin"]
    (**
      Defines the current value for a range widget.
      @see "aria-valuetext." 
    *)
    (**
      Defines the current value for a range widget.
      @see "aria-valuetext." 
    *)
    val get_aria_valuenow: t -> float [@@js.get "aria-valuenow"]
    (**
      Defines the current value for a range widget.
      @see "aria-valuetext." 
    *)
    val set_aria_valuenow: t -> float -> unit [@@js.set "aria-valuenow"]
    (** Defines the human readable text alternative of aria-valuenow for a range widget. *)
    (** Defines the human readable text alternative of aria-valuenow for a range widget. *)
    val get_aria_valuetext: t -> string [@@js.get "aria-valuetext"]
    (** Defines the human readable text alternative of aria-valuenow for a range widget. *)
    val set_aria_valuetext: t -> string -> unit [@@js.set "aria-valuetext"]
  end
  module[@js.scope "HTMLAttributes"] HTMLAttributes : sig
    type 'T t = 'T _React_HTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_defaultChecked: 'T t -> bool [@@js.get "defaultChecked"]
    val set_defaultChecked: 'T t -> bool -> unit [@@js.set "defaultChecked"]
    val get_defaultValue: 'T t -> string list or_string or_number [@@js.get "defaultValue"]
    val set_defaultValue: 'T t -> string list or_string or_number -> unit [@@js.set "defaultValue"]
    val get_suppressContentEditableWarning: 'T t -> bool [@@js.get "suppressContentEditableWarning"]
    val set_suppressContentEditableWarning: 'T t -> bool -> unit [@@js.set "suppressContentEditableWarning"]
    val get_suppressHydrationWarning: 'T t -> bool [@@js.get "suppressHydrationWarning"]
    val set_suppressHydrationWarning: 'T t -> bool -> unit [@@js.set "suppressHydrationWarning"]
    val get_accessKey: 'T t -> string [@@js.get "accessKey"]
    val set_accessKey: 'T t -> string -> unit [@@js.set "accessKey"]
    val get_className: 'T t -> string [@@js.get "className"]
    val set_className: 'T t -> string -> unit [@@js.set "className"]
    val get_contentEditable: 'T t -> (bool, ([`L_s74_false[@js "false"] | `L_s129_inherit[@js "inherit"] | `L_s269_true[@js "true"]] [@js.enum])) or_enum [@@js.get "contentEditable"]
    val set_contentEditable: 'T t -> (bool, ([`L_s74_false | `L_s129_inherit | `L_s269_true] [@js.enum])) or_enum -> unit [@@js.set "contentEditable"]
    val get_contextMenu: 'T t -> string [@@js.get "contextMenu"]
    val set_contextMenu: 'T t -> string -> unit [@@js.set "contextMenu"]
    val get_dir: 'T t -> string [@@js.get "dir"]
    val set_dir: 'T t -> string -> unit [@@js.set "dir"]
    val get_draggable: 'T t -> _Booleanish [@@js.get "draggable"]
    val set_draggable: 'T t -> _Booleanish -> unit [@@js.set "draggable"]
    val get_hidden: 'T t -> bool [@@js.get "hidden"]
    val set_hidden: 'T t -> bool -> unit [@@js.set "hidden"]
    val get_id: 'T t -> string [@@js.get "id"]
    val set_id: 'T t -> string -> unit [@@js.set "id"]
    val get_lang: 'T t -> string [@@js.get "lang"]
    val set_lang: 'T t -> string -> unit [@@js.set "lang"]
    val get_placeholder: 'T t -> string [@@js.get "placeholder"]
    val set_placeholder: 'T t -> string -> unit [@@js.set "placeholder"]
    val get_slot: 'T t -> string [@@js.get "slot"]
    val set_slot: 'T t -> string -> unit [@@js.set "slot"]
    val get_spellCheck: 'T t -> _Booleanish [@@js.get "spellCheck"]
    val set_spellCheck: 'T t -> _Booleanish -> unit [@@js.set "spellCheck"]
    val get_style: 'T t -> _React_CSSProperties [@@js.get "style"]
    val set_style: 'T t -> _React_CSSProperties -> unit [@@js.set "style"]
    val get_tabIndex: 'T t -> float [@@js.get "tabIndex"]
    val set_tabIndex: 'T t -> float -> unit [@@js.set "tabIndex"]
    val get_title: 'T t -> string [@@js.get "title"]
    val set_title: 'T t -> string -> unit [@@js.set "title"]
    val get_translate: 'T t -> ([`L_s171_no[@js "no"] | `L_s284_yes[@js "yes"]] [@js.enum]) [@@js.get "translate"]
    val set_translate: 'T t -> ([`L_s171_no | `L_s284_yes] [@js.enum]) -> unit [@@js.set "translate"]
    val get_radioGroup: 'T t -> string [@@js.get "radioGroup"]
    val set_radioGroup: 'T t -> string -> unit [@@js.set "radioGroup"]
    val get_role: 'T t -> string [@@js.get "role"]
    val set_role: 'T t -> string -> unit [@@js.set "role"]
    val get_about: 'T t -> string [@@js.get "about"]
    val set_about: 'T t -> string -> unit [@@js.set "about"]
    val get_datatype: 'T t -> string [@@js.get "datatype"]
    val set_datatype: 'T t -> string -> unit [@@js.set "datatype"]
    val get_inlist: 'T t -> any [@@js.get "inlist"]
    val set_inlist: 'T t -> any -> unit [@@js.set "inlist"]
    val get_prefix: 'T t -> string [@@js.get "prefix"]
    val set_prefix: 'T t -> string -> unit [@@js.set "prefix"]
    val get_property: 'T t -> string [@@js.get "property"]
    val set_property: 'T t -> string -> unit [@@js.set "property"]
    val get_resource: 'T t -> string [@@js.get "resource"]
    val set_resource: 'T t -> string -> unit [@@js.set "resource"]
    val get_typeof: 'T t -> string [@@js.get "typeof"]
    val set_typeof: 'T t -> string -> unit [@@js.set "typeof"]
    val get_vocab: 'T t -> string [@@js.get "vocab"]
    val set_vocab: 'T t -> string -> unit [@@js.set "vocab"]
    val get_autoCapitalize: 'T t -> string [@@js.get "autoCapitalize"]
    val set_autoCapitalize: 'T t -> string -> unit [@@js.set "autoCapitalize"]
    val get_autoCorrect: 'T t -> string [@@js.get "autoCorrect"]
    val set_autoCorrect: 'T t -> string -> unit [@@js.set "autoCorrect"]
    val get_autoSave: 'T t -> string [@@js.get "autoSave"]
    val set_autoSave: 'T t -> string -> unit [@@js.set "autoSave"]
    val get_color: 'T t -> string [@@js.get "color"]
    val set_color: 'T t -> string -> unit [@@js.set "color"]
    val get_itemProp: 'T t -> string [@@js.get "itemProp"]
    val set_itemProp: 'T t -> string -> unit [@@js.set "itemProp"]
    val get_itemScope: 'T t -> bool [@@js.get "itemScope"]
    val set_itemScope: 'T t -> bool -> unit [@@js.set "itemScope"]
    val get_itemType: 'T t -> string [@@js.get "itemType"]
    val set_itemType: 'T t -> string -> unit [@@js.set "itemType"]
    val get_itemID: 'T t -> string [@@js.get "itemID"]
    val set_itemID: 'T t -> string -> unit [@@js.set "itemID"]
    val get_itemRef: 'T t -> string [@@js.get "itemRef"]
    val set_itemRef: 'T t -> string -> unit [@@js.set "itemRef"]
    val get_results: 'T t -> float [@@js.get "results"]
    val set_results: 'T t -> float -> unit [@@js.set "results"]
    val get_security: 'T t -> string [@@js.get "security"]
    val set_security: 'T t -> string -> unit [@@js.set "security"]
    val get_unselectable: 'T t -> ([`L_s179_off[@js "off"] | `L_s181_on[@js "on"]] [@js.enum]) [@@js.get "unselectable"]
    val set_unselectable: 'T t -> ([`L_s179_off | `L_s181_on] [@js.enum]) -> unit [@@js.set "unselectable"]
    (**
      Hints at the type of data that might be entered by the user while editing the element or its contents
      @see "https" ://html.spec.whatwg.org/multipage/interaction.html#input-modalities:-the-inputmode-attribute
    *)
    (**
      Hints at the type of data that might be entered by the user while editing the element or its contents
      @see "https" ://html.spec.whatwg.org/multipage/interaction.html#input-modalities:-the-inputmode-attribute
    *)
    val get_inputMode: 'T t -> ([`L_s54_decimal[@js "decimal"] | `L_s69_email[@js "email"] | `L_s174_none[@js "none"] | `L_s177_numeric[@js "numeric"] | `L_s221_search[@js "search"] | `L_s249_tel[@js "tel"] | `L_s252_text[@js "text"] | `L_s275_url[@js "url"]] [@js.enum]) [@@js.get "inputMode"]
    (**
      Hints at the type of data that might be entered by the user while editing the element or its contents
      @see "https" ://html.spec.whatwg.org/multipage/interaction.html#input-modalities:-the-inputmode-attribute
    *)
    val set_inputMode: 'T t -> ([`L_s54_decimal | `L_s69_email | `L_s174_none | `L_s177_numeric | `L_s221_search | `L_s249_tel | `L_s252_text | `L_s275_url] [@js.enum]) -> unit [@@js.set "inputMode"]
    (**
      Specify that a standard HTML element should behave like a defined custom built-in element
      @see "https" ://html.spec.whatwg.org/multipage/custom-elements.html#attr-is
    *)
    (**
      Specify that a standard HTML element should behave like a defined custom built-in element
      @see "https" ://html.spec.whatwg.org/multipage/custom-elements.html#attr-is
    *)
    val get_is: 'T t -> string [@@js.get "is"]
    (**
      Specify that a standard HTML element should behave like a defined custom built-in element
      @see "https" ://html.spec.whatwg.org/multipage/custom-elements.html#attr-is
    *)
    val set_is: 'T t -> string -> unit [@@js.set "is"]
    val cast: 'T t -> _React_AriaAttributes [@@js.cast]
    val cast': 'T t -> 'T _React_DOMAttributes [@@js.cast]
  end
  module[@js.scope "AllHTMLAttributes"] AllHTMLAttributes : sig
    type 'T t = 'T _React_AllHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AllHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AllHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_accept: 'T t -> string [@@js.get "accept"]
    val set_accept: 'T t -> string -> unit [@@js.set "accept"]
    val get_acceptCharset: 'T t -> string [@@js.get "acceptCharset"]
    val set_acceptCharset: 'T t -> string -> unit [@@js.set "acceptCharset"]
    val get_action: 'T t -> string [@@js.get "action"]
    val set_action: 'T t -> string -> unit [@@js.set "action"]
    val get_allowFullScreen: 'T t -> bool [@@js.get "allowFullScreen"]
    val set_allowFullScreen: 'T t -> bool -> unit [@@js.set "allowFullScreen"]
    val get_allowTransparency: 'T t -> bool [@@js.get "allowTransparency"]
    val set_allowTransparency: 'T t -> bool -> unit [@@js.set "allowTransparency"]
    val get_alt: 'T t -> string [@@js.get "alt"]
    val set_alt: 'T t -> string -> unit [@@js.set "alt"]
    val get_as: 'T t -> string [@@js.get "as"]
    val set_as: 'T t -> string -> unit [@@js.set "as"]
    val get_async: 'T t -> bool [@@js.get "async"]
    val set_async: 'T t -> bool -> unit [@@js.set "async"]
    val get_autoComplete: 'T t -> string [@@js.get "autoComplete"]
    val set_autoComplete: 'T t -> string -> unit [@@js.set "autoComplete"]
    val get_autoFocus: 'T t -> bool [@@js.get "autoFocus"]
    val set_autoFocus: 'T t -> bool -> unit [@@js.set "autoFocus"]
    val get_autoPlay: 'T t -> bool [@@js.get "autoPlay"]
    val set_autoPlay: 'T t -> bool -> unit [@@js.set "autoPlay"]
    val get_capture: 'T t -> bool or_string [@@js.get "capture"]
    val set_capture: 'T t -> bool or_string -> unit [@@js.set "capture"]
    val get_cellPadding: 'T t -> string or_number [@@js.get "cellPadding"]
    val set_cellPadding: 'T t -> string or_number -> unit [@@js.set "cellPadding"]
    val get_cellSpacing: 'T t -> string or_number [@@js.get "cellSpacing"]
    val set_cellSpacing: 'T t -> string or_number -> unit [@@js.set "cellSpacing"]
    val get_charSet: 'T t -> string [@@js.get "charSet"]
    val set_charSet: 'T t -> string -> unit [@@js.set "charSet"]
    val get_challenge: 'T t -> string [@@js.get "challenge"]
    val set_challenge: 'T t -> string -> unit [@@js.set "challenge"]
    val get_checked: 'T t -> bool [@@js.get "checked"]
    val set_checked: 'T t -> bool -> unit [@@js.set "checked"]
    val get_cite: 'T t -> string [@@js.get "cite"]
    val set_cite: 'T t -> string -> unit [@@js.set "cite"]
    val get_classID: 'T t -> string [@@js.get "classID"]
    val set_classID: 'T t -> string -> unit [@@js.set "classID"]
    val get_cols: 'T t -> float [@@js.get "cols"]
    val set_cols: 'T t -> float -> unit [@@js.set "cols"]
    val get_colSpan: 'T t -> float [@@js.get "colSpan"]
    val set_colSpan: 'T t -> float -> unit [@@js.set "colSpan"]
    val get_content: 'T t -> string [@@js.get "content"]
    val set_content: 'T t -> string -> unit [@@js.set "content"]
    val get_controls: 'T t -> bool [@@js.get "controls"]
    val set_controls: 'T t -> bool -> unit [@@js.set "controls"]
    val get_coords: 'T t -> string [@@js.get "coords"]
    val set_coords: 'T t -> string -> unit [@@js.set "coords"]
    val get_crossOrigin: 'T t -> string [@@js.get "crossOrigin"]
    val set_crossOrigin: 'T t -> string -> unit [@@js.set "crossOrigin"]
    val get_data: 'T t -> string [@@js.get "data"]
    val set_data: 'T t -> string -> unit [@@js.set "data"]
    val get_dateTime: 'T t -> string [@@js.get "dateTime"]
    val set_dateTime: 'T t -> string -> unit [@@js.set "dateTime"]
    val get_default: 'T t -> bool [@@js.get "default"]
    val set_default: 'T t -> bool -> unit [@@js.set "default"]
    val get_defer: 'T t -> bool [@@js.get "defer"]
    val set_defer: 'T t -> bool -> unit [@@js.set "defer"]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_download: 'T t -> any [@@js.get "download"]
    val set_download: 'T t -> any -> unit [@@js.set "download"]
    val get_encType: 'T t -> string [@@js.get "encType"]
    val set_encType: 'T t -> string -> unit [@@js.set "encType"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_formAction: 'T t -> string [@@js.get "formAction"]
    val set_formAction: 'T t -> string -> unit [@@js.set "formAction"]
    val get_formEncType: 'T t -> string [@@js.get "formEncType"]
    val set_formEncType: 'T t -> string -> unit [@@js.set "formEncType"]
    val get_formMethod: 'T t -> string [@@js.get "formMethod"]
    val set_formMethod: 'T t -> string -> unit [@@js.set "formMethod"]
    val get_formNoValidate: 'T t -> bool [@@js.get "formNoValidate"]
    val set_formNoValidate: 'T t -> bool -> unit [@@js.set "formNoValidate"]
    val get_formTarget: 'T t -> string [@@js.get "formTarget"]
    val set_formTarget: 'T t -> string -> unit [@@js.set "formTarget"]
    val get_frameBorder: 'T t -> string or_number [@@js.get "frameBorder"]
    val set_frameBorder: 'T t -> string or_number -> unit [@@js.set "frameBorder"]
    val get_headers: 'T t -> string [@@js.get "headers"]
    val set_headers: 'T t -> string -> unit [@@js.set "headers"]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_high: 'T t -> float [@@js.get "high"]
    val set_high: 'T t -> float -> unit [@@js.set "high"]
    val get_href: 'T t -> string [@@js.get "href"]
    val set_href: 'T t -> string -> unit [@@js.set "href"]
    val get_hrefLang: 'T t -> string [@@js.get "hrefLang"]
    val set_hrefLang: 'T t -> string -> unit [@@js.set "hrefLang"]
    val get_htmlFor: 'T t -> string [@@js.get "htmlFor"]
    val set_htmlFor: 'T t -> string -> unit [@@js.set "htmlFor"]
    val get_httpEquiv: 'T t -> string [@@js.get "httpEquiv"]
    val set_httpEquiv: 'T t -> string -> unit [@@js.set "httpEquiv"]
    val get_integrity: 'T t -> string [@@js.get "integrity"]
    val set_integrity: 'T t -> string -> unit [@@js.set "integrity"]
    val get_keyParams: 'T t -> string [@@js.get "keyParams"]
    val set_keyParams: 'T t -> string -> unit [@@js.set "keyParams"]
    val get_keyType: 'T t -> string [@@js.get "keyType"]
    val set_keyType: 'T t -> string -> unit [@@js.set "keyType"]
    val get_kind: 'T t -> string [@@js.get "kind"]
    val set_kind: 'T t -> string -> unit [@@js.set "kind"]
    val get_label: 'T t -> string [@@js.get "label"]
    val set_label: 'T t -> string -> unit [@@js.set "label"]
    val get_list: 'T t -> string [@@js.get "list"]
    val set_list: 'T t -> string -> unit [@@js.set "list"]
    val get_loop: 'T t -> bool [@@js.get "loop"]
    val set_loop: 'T t -> bool -> unit [@@js.set "loop"]
    val get_low: 'T t -> float [@@js.get "low"]
    val set_low: 'T t -> float -> unit [@@js.set "low"]
    val get_manifest: 'T t -> string [@@js.get "manifest"]
    val set_manifest: 'T t -> string -> unit [@@js.set "manifest"]
    val get_marginHeight: 'T t -> float [@@js.get "marginHeight"]
    val set_marginHeight: 'T t -> float -> unit [@@js.set "marginHeight"]
    val get_marginWidth: 'T t -> float [@@js.get "marginWidth"]
    val set_marginWidth: 'T t -> float -> unit [@@js.set "marginWidth"]
    val get_max: 'T t -> string or_number [@@js.get "max"]
    val set_max: 'T t -> string or_number -> unit [@@js.set "max"]
    val get_maxLength: 'T t -> float [@@js.get "maxLength"]
    val set_maxLength: 'T t -> float -> unit [@@js.set "maxLength"]
    val get_media: 'T t -> string [@@js.get "media"]
    val set_media: 'T t -> string -> unit [@@js.set "media"]
    val get_mediaGroup: 'T t -> string [@@js.get "mediaGroup"]
    val set_mediaGroup: 'T t -> string -> unit [@@js.set "mediaGroup"]
    val get_method: 'T t -> string [@@js.get "method"]
    val set_method: 'T t -> string -> unit [@@js.set "method"]
    val get_min: 'T t -> string or_number [@@js.get "min"]
    val set_min: 'T t -> string or_number -> unit [@@js.set "min"]
    val get_minLength: 'T t -> float [@@js.get "minLength"]
    val set_minLength: 'T t -> float -> unit [@@js.set "minLength"]
    val get_multiple: 'T t -> bool [@@js.get "multiple"]
    val set_multiple: 'T t -> bool -> unit [@@js.set "multiple"]
    val get_muted: 'T t -> bool [@@js.get "muted"]
    val set_muted: 'T t -> bool -> unit [@@js.set "muted"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_nonce: 'T t -> string [@@js.get "nonce"]
    val set_nonce: 'T t -> string -> unit [@@js.set "nonce"]
    val get_noValidate: 'T t -> bool [@@js.get "noValidate"]
    val set_noValidate: 'T t -> bool -> unit [@@js.set "noValidate"]
    val get_open: 'T t -> bool [@@js.get "open"]
    val set_open: 'T t -> bool -> unit [@@js.set "open"]
    val get_optimum: 'T t -> float [@@js.get "optimum"]
    val set_optimum: 'T t -> float -> unit [@@js.set "optimum"]
    val get_pattern: 'T t -> string [@@js.get "pattern"]
    val set_pattern: 'T t -> string -> unit [@@js.set "pattern"]
    val get_placeholder: 'T t -> string [@@js.get "placeholder"]
    val set_placeholder: 'T t -> string -> unit [@@js.set "placeholder"]
    val get_playsInline: 'T t -> bool [@@js.get "playsInline"]
    val set_playsInline: 'T t -> bool -> unit [@@js.set "playsInline"]
    val get_poster: 'T t -> string [@@js.get "poster"]
    val set_poster: 'T t -> string -> unit [@@js.set "poster"]
    val get_preload: 'T t -> string [@@js.get "preload"]
    val set_preload: 'T t -> string -> unit [@@js.set "preload"]
    val get_readOnly: 'T t -> bool [@@js.get "readOnly"]
    val set_readOnly: 'T t -> bool -> unit [@@js.set "readOnly"]
    val get_rel: 'T t -> string [@@js.get "rel"]
    val set_rel: 'T t -> string -> unit [@@js.set "rel"]
    val get_required: 'T t -> bool [@@js.get "required"]
    val set_required: 'T t -> bool -> unit [@@js.set "required"]
    val get_reversed: 'T t -> bool [@@js.get "reversed"]
    val set_reversed: 'T t -> bool -> unit [@@js.set "reversed"]
    val get_rows: 'T t -> float [@@js.get "rows"]
    val set_rows: 'T t -> float -> unit [@@js.set "rows"]
    val get_rowSpan: 'T t -> float [@@js.get "rowSpan"]
    val set_rowSpan: 'T t -> float -> unit [@@js.set "rowSpan"]
    val get_sandbox: 'T t -> string [@@js.get "sandbox"]
    val set_sandbox: 'T t -> string -> unit [@@js.set "sandbox"]
    val get_scope: 'T t -> string [@@js.get "scope"]
    val set_scope: 'T t -> string -> unit [@@js.set "scope"]
    val get_scoped: 'T t -> bool [@@js.get "scoped"]
    val set_scoped: 'T t -> bool -> unit [@@js.set "scoped"]
    val get_scrolling: 'T t -> string [@@js.get "scrolling"]
    val set_scrolling: 'T t -> string -> unit [@@js.set "scrolling"]
    val get_seamless: 'T t -> bool [@@js.get "seamless"]
    val set_seamless: 'T t -> bool -> unit [@@js.set "seamless"]
    val get_selected: 'T t -> bool [@@js.get "selected"]
    val set_selected: 'T t -> bool -> unit [@@js.set "selected"]
    val get_shape: 'T t -> string [@@js.get "shape"]
    val set_shape: 'T t -> string -> unit [@@js.set "shape"]
    val get_size: 'T t -> float [@@js.get "size"]
    val set_size: 'T t -> float -> unit [@@js.set "size"]
    val get_sizes: 'T t -> string [@@js.get "sizes"]
    val set_sizes: 'T t -> string -> unit [@@js.set "sizes"]
    val get_span: 'T t -> float [@@js.get "span"]
    val set_span: 'T t -> float -> unit [@@js.set "span"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_srcDoc: 'T t -> string [@@js.get "srcDoc"]
    val set_srcDoc: 'T t -> string -> unit [@@js.set "srcDoc"]
    val get_srcLang: 'T t -> string [@@js.get "srcLang"]
    val set_srcLang: 'T t -> string -> unit [@@js.set "srcLang"]
    val get_srcSet: 'T t -> string [@@js.get "srcSet"]
    val set_srcSet: 'T t -> string -> unit [@@js.set "srcSet"]
    val get_start: 'T t -> float [@@js.get "start"]
    val set_start: 'T t -> float -> unit [@@js.set "start"]
    val get_step: 'T t -> string or_number [@@js.get "step"]
    val set_step: 'T t -> string or_number -> unit [@@js.set "step"]
    val get_summary: 'T t -> string [@@js.get "summary"]
    val set_summary: 'T t -> string -> unit [@@js.set "summary"]
    val get_target: 'T t -> string [@@js.get "target"]
    val set_target: 'T t -> string -> unit [@@js.set "target"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val get_useMap: 'T t -> string [@@js.get "useMap"]
    val set_useMap: 'T t -> string -> unit [@@js.set "useMap"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val get_wmode: 'T t -> string [@@js.get "wmode"]
    val set_wmode: 'T t -> string -> unit [@@js.set "wmode"]
    val get_wrap: 'T t -> string [@@js.get "wrap"]
    val set_wrap: 'T t -> string -> unit [@@js.set "wrap"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module HTMLAttributeReferrerPolicy : sig
    type t = _React_HTMLAttributeReferrerPolicy
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_HTMLAttributeReferrerPolicy]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_HTMLAttributeReferrerPolicy]
    ]
  end
  module[@js.scope "AnchorHTMLAttributes"] AnchorHTMLAttributes : sig
    type 'T t = 'T _React_AnchorHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AnchorHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AnchorHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_download: 'T t -> any [@@js.get "download"]
    val set_download: 'T t -> any -> unit [@@js.set "download"]
    val get_href: 'T t -> string [@@js.get "href"]
    val set_href: 'T t -> string -> unit [@@js.set "href"]
    val get_hrefLang: 'T t -> string [@@js.get "hrefLang"]
    val set_hrefLang: 'T t -> string -> unit [@@js.set "hrefLang"]
    val get_media: 'T t -> string [@@js.get "media"]
    val set_media: 'T t -> string -> unit [@@js.set "media"]
    val get_ping: 'T t -> string [@@js.get "ping"]
    val set_ping: 'T t -> string -> unit [@@js.set "ping"]
    val get_rel: 'T t -> string [@@js.get "rel"]
    val set_rel: 'T t -> string -> unit [@@js.set "rel"]
    val get_target: 'T t -> string [@@js.get "target"]
    val set_target: 'T t -> string -> unit [@@js.set "target"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val get_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy [@@js.get "referrerPolicy"]
    val set_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy -> unit [@@js.set "referrerPolicy"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "AudioHTMLAttributes"] AudioHTMLAttributes : sig
    type 'T t = 'T _React_AudioHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_AudioHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_AudioHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T]
    ]
    val cast: 'T t -> 'T _React_MediaHTMLAttributes [@@js.cast]
  end
  module[@js.scope "AreaHTMLAttributes"] AreaHTMLAttributes : sig
    type 'T t = 'T _React_AreaHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AreaHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AreaHTMLAttributes of 'T | `React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_alt: 'T t -> string [@@js.get "alt"]
    val set_alt: 'T t -> string -> unit [@@js.set "alt"]
    val get_coords: 'T t -> string [@@js.get "coords"]
    val set_coords: 'T t -> string -> unit [@@js.set "coords"]
    val get_download: 'T t -> any [@@js.get "download"]
    val set_download: 'T t -> any -> unit [@@js.set "download"]
    val get_href: 'T t -> string [@@js.get "href"]
    val set_href: 'T t -> string -> unit [@@js.set "href"]
    val get_hrefLang: 'T t -> string [@@js.get "hrefLang"]
    val set_hrefLang: 'T t -> string -> unit [@@js.set "hrefLang"]
    val get_media: 'T t -> string [@@js.get "media"]
    val set_media: 'T t -> string -> unit [@@js.set "media"]
    val get_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy [@@js.get "referrerPolicy"]
    val set_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy -> unit [@@js.set "referrerPolicy"]
    val get_rel: 'T t -> string [@@js.get "rel"]
    val set_rel: 'T t -> string -> unit [@@js.set "rel"]
    val get_shape: 'T t -> string [@@js.get "shape"]
    val set_shape: 'T t -> string -> unit [@@js.set "shape"]
    val get_target: 'T t -> string [@@js.get "target"]
    val set_target: 'T t -> string -> unit [@@js.set "target"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "BaseHTMLAttributes"] BaseHTMLAttributes : sig
    type 'T t = 'T _React_BaseHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_BaseHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_BaseHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_href: 'T t -> string [@@js.get "href"]
    val set_href: 'T t -> string -> unit [@@js.set "href"]
    val get_target: 'T t -> string [@@js.get "target"]
    val set_target: 'T t -> string -> unit [@@js.set "target"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "BlockquoteHTMLAttributes"] BlockquoteHTMLAttributes : sig
    type 'T t = 'T _React_BlockquoteHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_BlockquoteHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_BlockquoteHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_cite: 'T t -> string [@@js.get "cite"]
    val set_cite: 'T t -> string -> unit [@@js.set "cite"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ButtonHTMLAttributes"] ButtonHTMLAttributes : sig
    type 'T t = 'T _React_ButtonHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_ButtonHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_ButtonHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_autoFocus: 'T t -> bool [@@js.get "autoFocus"]
    val set_autoFocus: 'T t -> bool -> unit [@@js.set "autoFocus"]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_formAction: 'T t -> string [@@js.get "formAction"]
    val set_formAction: 'T t -> string -> unit [@@js.set "formAction"]
    val get_formEncType: 'T t -> string [@@js.get "formEncType"]
    val set_formEncType: 'T t -> string -> unit [@@js.set "formEncType"]
    val get_formMethod: 'T t -> string [@@js.get "formMethod"]
    val set_formMethod: 'T t -> string -> unit [@@js.set "formMethod"]
    val get_formNoValidate: 'T t -> bool [@@js.get "formNoValidate"]
    val set_formNoValidate: 'T t -> bool -> unit [@@js.set "formNoValidate"]
    val get_formTarget: 'T t -> string [@@js.get "formTarget"]
    val set_formTarget: 'T t -> string -> unit [@@js.set "formTarget"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_type: 'T t -> ([`L_s37_button[@js "button"] | `L_s210_reset[@js "reset"] | `L_s238_submit[@js "submit"]] [@js.enum]) [@@js.get "type"]
    val set_type: 'T t -> ([`L_s37_button | `L_s210_reset | `L_s238_submit] [@js.enum]) -> unit [@@js.set "type"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "CanvasHTMLAttributes"] CanvasHTMLAttributes : sig
    type 'T t = 'T _React_CanvasHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_CanvasHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_CanvasHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ColHTMLAttributes"] ColHTMLAttributes : sig
    type 'T t = 'T _React_ColHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_ColHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_ColHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_span: 'T t -> float [@@js.get "span"]
    val set_span: 'T t -> float -> unit [@@js.set "span"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ColgroupHTMLAttributes"] ColgroupHTMLAttributes : sig
    type 'T t = 'T _React_ColgroupHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_ColgroupHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_ColgroupHTMLAttributes of 'T | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_span: 'T t -> float [@@js.get "span"]
    val set_span: 'T t -> float -> unit [@@js.set "span"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "DataHTMLAttributes"] DataHTMLAttributes : sig
    type 'T t = 'T _React_DataHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DataHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DataHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "DetailsHTMLAttributes"] DetailsHTMLAttributes : sig
    type 'T t = 'T _React_DetailsHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DetailsHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DetailsHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_open: 'T t -> bool [@@js.get "open"]
    val set_open: 'T t -> bool -> unit [@@js.set "open"]
    val get_onToggle: 'T t -> 'T _React_ReactEventHandler [@@js.get "onToggle"]
    val set_onToggle: 'T t -> 'T _React_ReactEventHandler -> unit [@@js.set "onToggle"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "DelHTMLAttributes"] DelHTMLAttributes : sig
    type 'T t = 'T _React_DelHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DelHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DelHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_cite: 'T t -> string [@@js.get "cite"]
    val set_cite: 'T t -> string -> unit [@@js.set "cite"]
    val get_dateTime: 'T t -> string [@@js.get "dateTime"]
    val set_dateTime: 'T t -> string -> unit [@@js.set "dateTime"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "DialogHTMLAttributes"] DialogHTMLAttributes : sig
    type 'T t = 'T _React_DialogHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DialogHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_DialogHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_open: 'T t -> bool [@@js.get "open"]
    val set_open: 'T t -> bool -> unit [@@js.set "open"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "EmbedHTMLAttributes"] EmbedHTMLAttributes : sig
    type 'T t = 'T _React_EmbedHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_EmbedHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_EmbedHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "FieldsetHTMLAttributes"] FieldsetHTMLAttributes : sig
    type 'T t = 'T _React_FieldsetHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_FieldsetHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_FieldsetHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "FormHTMLAttributes"] FormHTMLAttributes : sig
    type 'T t = 'T _React_FormHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_FormHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_FormHTMLAttributes of 'T | `React_HTMLAttributes of 'T]
    ]
    val get_acceptCharset: 'T t -> string [@@js.get "acceptCharset"]
    val set_acceptCharset: 'T t -> string -> unit [@@js.set "acceptCharset"]
    val get_action: 'T t -> string [@@js.get "action"]
    val set_action: 'T t -> string -> unit [@@js.set "action"]
    val get_autoComplete: 'T t -> string [@@js.get "autoComplete"]
    val set_autoComplete: 'T t -> string -> unit [@@js.set "autoComplete"]
    val get_encType: 'T t -> string [@@js.get "encType"]
    val set_encType: 'T t -> string -> unit [@@js.set "encType"]
    val get_method: 'T t -> string [@@js.get "method"]
    val set_method: 'T t -> string -> unit [@@js.set "method"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_noValidate: 'T t -> bool [@@js.get "noValidate"]
    val set_noValidate: 'T t -> bool -> unit [@@js.set "noValidate"]
    val get_target: 'T t -> string [@@js.get "target"]
    val set_target: 'T t -> string -> unit [@@js.set "target"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "HtmlHTMLAttributes"] HtmlHTMLAttributes : sig
    type 'T t = 'T _React_HtmlHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_HtmlHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_HtmlHTMLAttributes of 'T]
    ]
    val get_manifest: 'T t -> string [@@js.get "manifest"]
    val set_manifest: 'T t -> string -> unit [@@js.set "manifest"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "IframeHTMLAttributes"] IframeHTMLAttributes : sig
    type 'T t = 'T _React_IframeHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_IframeHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_IframeHTMLAttributes of 'T]
    ]
    val get_allow: 'T t -> string [@@js.get "allow"]
    val set_allow: 'T t -> string -> unit [@@js.set "allow"]
    val get_allowFullScreen: 'T t -> bool [@@js.get "allowFullScreen"]
    val set_allowFullScreen: 'T t -> bool -> unit [@@js.set "allowFullScreen"]
    val get_allowTransparency: 'T t -> bool [@@js.get "allowTransparency"]
    val set_allowTransparency: 'T t -> bool -> unit [@@js.set "allowTransparency"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_frameBorder: 'T t -> string or_number [@@js.get "frameBorder"]
    (** @deprecated  *)
    val set_frameBorder: 'T t -> string or_number -> unit [@@js.set "frameBorder"]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_loading: 'T t -> ([`L_s66_eager[@js "eager"] | `L_s140_lazy[@js "lazy"]] [@js.enum]) [@@js.get "loading"]
    val set_loading: 'T t -> ([`L_s66_eager | `L_s140_lazy] [@js.enum]) -> unit [@@js.set "loading"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_marginHeight: 'T t -> float [@@js.get "marginHeight"]
    (** @deprecated  *)
    val set_marginHeight: 'T t -> float -> unit [@@js.set "marginHeight"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_marginWidth: 'T t -> float [@@js.get "marginWidth"]
    (** @deprecated  *)
    val set_marginWidth: 'T t -> float -> unit [@@js.set "marginWidth"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy [@@js.get "referrerPolicy"]
    val set_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy -> unit [@@js.set "referrerPolicy"]
    val get_sandbox: 'T t -> string [@@js.get "sandbox"]
    val set_sandbox: 'T t -> string -> unit [@@js.set "sandbox"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_scrolling: 'T t -> string [@@js.get "scrolling"]
    (** @deprecated  *)
    val set_scrolling: 'T t -> string -> unit [@@js.set "scrolling"]
    val get_seamless: 'T t -> bool [@@js.get "seamless"]
    val set_seamless: 'T t -> bool -> unit [@@js.set "seamless"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_srcDoc: 'T t -> string [@@js.get "srcDoc"]
    val set_srcDoc: 'T t -> string -> unit [@@js.set "srcDoc"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ImgHTMLAttributes"] ImgHTMLAttributes : sig
    type 'T t = 'T _React_ImgHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ImgHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ImgHTMLAttributes of 'T]
    ]
    val get_alt: 'T t -> string [@@js.get "alt"]
    val set_alt: 'T t -> string -> unit [@@js.set "alt"]
    val get_crossOrigin: 'T t -> ([`L_s0[@js ""] | `L_s14_anonymous[@js "anonymous"] | `L_s277_use_credentials[@js "use-credentials"]] [@js.enum]) [@@js.get "crossOrigin"]
    val set_crossOrigin: 'T t -> ([`L_s0 | `L_s14_anonymous | `L_s277_use_credentials] [@js.enum]) -> unit [@@js.set "crossOrigin"]
    val get_decoding: 'T t -> ([`L_s20_async[@js "async"] | `L_s22_auto[@js "auto"] | `L_s245_sync[@js "sync"]] [@js.enum]) [@@js.get "decoding"]
    val set_decoding: 'T t -> ([`L_s20_async | `L_s22_auto | `L_s245_sync] [@js.enum]) -> unit [@@js.set "decoding"]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_loading: 'T t -> ([`L_s66_eager[@js "eager"] | `L_s140_lazy[@js "lazy"]] [@js.enum]) [@@js.get "loading"]
    val set_loading: 'T t -> ([`L_s66_eager | `L_s140_lazy] [@js.enum]) -> unit [@@js.set "loading"]
    val get_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy [@@js.get "referrerPolicy"]
    val set_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy -> unit [@@js.set "referrerPolicy"]
    val get_sizes: 'T t -> string [@@js.get "sizes"]
    val set_sizes: 'T t -> string -> unit [@@js.set "sizes"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_srcSet: 'T t -> string [@@js.get "srcSet"]
    val set_srcSet: 'T t -> string -> unit [@@js.set "srcSet"]
    val get_useMap: 'T t -> string [@@js.get "useMap"]
    val set_useMap: 'T t -> string -> unit [@@js.set "useMap"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "InsHTMLAttributes"] InsHTMLAttributes : sig
    type 'T t = 'T _React_InsHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_InsHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_InsHTMLAttributes of 'T]
    ]
    val get_cite: 'T t -> string [@@js.get "cite"]
    val set_cite: 'T t -> string -> unit [@@js.set "cite"]
    val get_dateTime: 'T t -> string [@@js.get "dateTime"]
    val set_dateTime: 'T t -> string -> unit [@@js.set "dateTime"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "InputHTMLAttributes"] InputHTMLAttributes : sig
    type 'T t = 'T _React_InputHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_InputHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_InputHTMLAttributes of 'T]
    ]
    val get_accept: 'T t -> string [@@js.get "accept"]
    val set_accept: 'T t -> string -> unit [@@js.set "accept"]
    val get_alt: 'T t -> string [@@js.get "alt"]
    val set_alt: 'T t -> string -> unit [@@js.set "alt"]
    val get_autoComplete: 'T t -> string [@@js.get "autoComplete"]
    val set_autoComplete: 'T t -> string -> unit [@@js.set "autoComplete"]
    val get_autoFocus: 'T t -> bool [@@js.get "autoFocus"]
    val set_autoFocus: 'T t -> bool -> unit [@@js.set "autoFocus"]
    val get_capture: 'T t -> bool or_string [@@js.get "capture"]
    val set_capture: 'T t -> bool or_string -> unit [@@js.set "capture"]
    val get_checked: 'T t -> bool [@@js.get "checked"]
    val set_checked: 'T t -> bool -> unit [@@js.set "checked"]
    val get_crossOrigin: 'T t -> string [@@js.get "crossOrigin"]
    val set_crossOrigin: 'T t -> string -> unit [@@js.set "crossOrigin"]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_enterKeyHint: 'T t -> ([`L_s64_done[@js "done"] | `L_s71_enter[@js "enter"] | `L_s108_go[@js "go"] | `L_s170_next[@js "next"] | `L_s200_previous[@js "previous"] | `L_s221_search[@js "search"] | `L_s224_send[@js "send"]] [@js.enum]) [@@js.get "enterKeyHint"]
    val set_enterKeyHint: 'T t -> ([`L_s64_done | `L_s71_enter | `L_s108_go | `L_s170_next | `L_s200_previous | `L_s221_search | `L_s224_send] [@js.enum]) -> unit [@@js.set "enterKeyHint"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_formAction: 'T t -> string [@@js.get "formAction"]
    val set_formAction: 'T t -> string -> unit [@@js.set "formAction"]
    val get_formEncType: 'T t -> string [@@js.get "formEncType"]
    val set_formEncType: 'T t -> string -> unit [@@js.set "formEncType"]
    val get_formMethod: 'T t -> string [@@js.get "formMethod"]
    val set_formMethod: 'T t -> string -> unit [@@js.set "formMethod"]
    val get_formNoValidate: 'T t -> bool [@@js.get "formNoValidate"]
    val set_formNoValidate: 'T t -> bool -> unit [@@js.set "formNoValidate"]
    val get_formTarget: 'T t -> string [@@js.get "formTarget"]
    val set_formTarget: 'T t -> string -> unit [@@js.set "formTarget"]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_list: 'T t -> string [@@js.get "list"]
    val set_list: 'T t -> string -> unit [@@js.set "list"]
    val get_max: 'T t -> string or_number [@@js.get "max"]
    val set_max: 'T t -> string or_number -> unit [@@js.set "max"]
    val get_maxLength: 'T t -> float [@@js.get "maxLength"]
    val set_maxLength: 'T t -> float -> unit [@@js.set "maxLength"]
    val get_min: 'T t -> string or_number [@@js.get "min"]
    val set_min: 'T t -> string or_number -> unit [@@js.set "min"]
    val get_minLength: 'T t -> float [@@js.get "minLength"]
    val set_minLength: 'T t -> float -> unit [@@js.set "minLength"]
    val get_multiple: 'T t -> bool [@@js.get "multiple"]
    val set_multiple: 'T t -> bool -> unit [@@js.set "multiple"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_pattern: 'T t -> string [@@js.get "pattern"]
    val set_pattern: 'T t -> string -> unit [@@js.set "pattern"]
    val get_placeholder: 'T t -> string [@@js.get "placeholder"]
    val set_placeholder: 'T t -> string -> unit [@@js.set "placeholder"]
    val get_readOnly: 'T t -> bool [@@js.get "readOnly"]
    val set_readOnly: 'T t -> bool -> unit [@@js.set "readOnly"]
    val get_required: 'T t -> bool [@@js.get "required"]
    val set_required: 'T t -> bool -> unit [@@js.set "required"]
    val get_size: 'T t -> float [@@js.get "size"]
    val set_size: 'T t -> float -> unit [@@js.set "size"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_step: 'T t -> string or_number [@@js.get "step"]
    val set_step: 'T t -> string or_number -> unit [@@js.set "step"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val get_onChange: 'T t -> 'T _React_ChangeEventHandler [@@js.get "onChange"]
    val set_onChange: 'T t -> 'T _React_ChangeEventHandler -> unit [@@js.set "onChange"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "KeygenHTMLAttributes"] KeygenHTMLAttributes : sig
    type 'T t = 'T _React_KeygenHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_KeygenHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_KeygenHTMLAttributes of 'T]
    ]
    val get_autoFocus: 'T t -> bool [@@js.get "autoFocus"]
    val set_autoFocus: 'T t -> bool -> unit [@@js.set "autoFocus"]
    val get_challenge: 'T t -> string [@@js.get "challenge"]
    val set_challenge: 'T t -> string -> unit [@@js.set "challenge"]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_keyType: 'T t -> string [@@js.get "keyType"]
    val set_keyType: 'T t -> string -> unit [@@js.set "keyType"]
    val get_keyParams: 'T t -> string [@@js.get "keyParams"]
    val set_keyParams: 'T t -> string -> unit [@@js.set "keyParams"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "LabelHTMLAttributes"] LabelHTMLAttributes : sig
    type 'T t = 'T _React_LabelHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LabelHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LabelHTMLAttributes of 'T]
    ]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_htmlFor: 'T t -> string [@@js.get "htmlFor"]
    val set_htmlFor: 'T t -> string -> unit [@@js.set "htmlFor"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "LiHTMLAttributes"] LiHTMLAttributes : sig
    type 'T t = 'T _React_LiHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LiHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LiHTMLAttributes of 'T]
    ]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "LinkHTMLAttributes"] LinkHTMLAttributes : sig
    type 'T t = 'T _React_LinkHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LinkHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_LinkHTMLAttributes of 'T]
    ]
    val get_as: 'T t -> string [@@js.get "as"]
    val set_as: 'T t -> string -> unit [@@js.set "as"]
    val get_crossOrigin: 'T t -> string [@@js.get "crossOrigin"]
    val set_crossOrigin: 'T t -> string -> unit [@@js.set "crossOrigin"]
    val get_href: 'T t -> string [@@js.get "href"]
    val set_href: 'T t -> string -> unit [@@js.set "href"]
    val get_hrefLang: 'T t -> string [@@js.get "hrefLang"]
    val set_hrefLang: 'T t -> string -> unit [@@js.set "hrefLang"]
    val get_integrity: 'T t -> string [@@js.get "integrity"]
    val set_integrity: 'T t -> string -> unit [@@js.set "integrity"]
    val get_media: 'T t -> string [@@js.get "media"]
    val set_media: 'T t -> string -> unit [@@js.set "media"]
    val get_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy [@@js.get "referrerPolicy"]
    val set_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy -> unit [@@js.set "referrerPolicy"]
    val get_rel: 'T t -> string [@@js.get "rel"]
    val set_rel: 'T t -> string -> unit [@@js.set "rel"]
    val get_sizes: 'T t -> string [@@js.get "sizes"]
    val set_sizes: 'T t -> string -> unit [@@js.set "sizes"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val get_charSet: 'T t -> string [@@js.get "charSet"]
    val set_charSet: 'T t -> string -> unit [@@js.set "charSet"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "MapHTMLAttributes"] MapHTMLAttributes : sig
    type 'T t = 'T _React_MapHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MapHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MapHTMLAttributes of 'T]
    ]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "MenuHTMLAttributes"] MenuHTMLAttributes : sig
    type 'T t = 'T _React_MenuHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MenuHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MenuHTMLAttributes of 'T]
    ]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "MediaHTMLAttributes"] MediaHTMLAttributes : sig
    type 'T t = 'T _React_MediaHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T]
    ]
    val get_autoPlay: 'T t -> bool [@@js.get "autoPlay"]
    val set_autoPlay: 'T t -> bool -> unit [@@js.set "autoPlay"]
    val get_controls: 'T t -> bool [@@js.get "controls"]
    val set_controls: 'T t -> bool -> unit [@@js.set "controls"]
    val get_controlsList: 'T t -> string [@@js.get "controlsList"]
    val set_controlsList: 'T t -> string -> unit [@@js.set "controlsList"]
    val get_crossOrigin: 'T t -> string [@@js.get "crossOrigin"]
    val set_crossOrigin: 'T t -> string -> unit [@@js.set "crossOrigin"]
    val get_loop: 'T t -> bool [@@js.get "loop"]
    val set_loop: 'T t -> bool -> unit [@@js.set "loop"]
    val get_mediaGroup: 'T t -> string [@@js.get "mediaGroup"]
    val set_mediaGroup: 'T t -> string -> unit [@@js.set "mediaGroup"]
    val get_muted: 'T t -> bool [@@js.get "muted"]
    val set_muted: 'T t -> bool -> unit [@@js.set "muted"]
    val get_playsInline: 'T t -> bool [@@js.get "playsInline"]
    val set_playsInline: 'T t -> bool -> unit [@@js.set "playsInline"]
    val get_preload: 'T t -> string [@@js.get "preload"]
    val set_preload: 'T t -> string -> unit [@@js.set "preload"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "MetaHTMLAttributes"] MetaHTMLAttributes : sig
    type 'T t = 'T _React_MetaHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MetaHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MetaHTMLAttributes of 'T]
    ]
    val get_charSet: 'T t -> string [@@js.get "charSet"]
    val set_charSet: 'T t -> string -> unit [@@js.set "charSet"]
    val get_content: 'T t -> string [@@js.get "content"]
    val set_content: 'T t -> string -> unit [@@js.set "content"]
    val get_httpEquiv: 'T t -> string [@@js.get "httpEquiv"]
    val set_httpEquiv: 'T t -> string -> unit [@@js.set "httpEquiv"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "MeterHTMLAttributes"] MeterHTMLAttributes : sig
    type 'T t = 'T _React_MeterHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MeterHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MeterHTMLAttributes of 'T]
    ]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_high: 'T t -> float [@@js.get "high"]
    val set_high: 'T t -> float -> unit [@@js.set "high"]
    val get_low: 'T t -> float [@@js.get "low"]
    val set_low: 'T t -> float -> unit [@@js.set "low"]
    val get_max: 'T t -> string or_number [@@js.get "max"]
    val set_max: 'T t -> string or_number -> unit [@@js.set "max"]
    val get_min: 'T t -> string or_number [@@js.get "min"]
    val set_min: 'T t -> string or_number -> unit [@@js.set "min"]
    val get_optimum: 'T t -> float [@@js.get "optimum"]
    val set_optimum: 'T t -> float -> unit [@@js.set "optimum"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "QuoteHTMLAttributes"] QuoteHTMLAttributes : sig
    type 'T t = 'T _React_QuoteHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_QuoteHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_QuoteHTMLAttributes of 'T]
    ]
    val get_cite: 'T t -> string [@@js.get "cite"]
    val set_cite: 'T t -> string -> unit [@@js.set "cite"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ObjectHTMLAttributes"] ObjectHTMLAttributes : sig
    type 'T t = 'T _React_ObjectHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ObjectHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ObjectHTMLAttributes of 'T]
    ]
    val get_classID: 'T t -> string [@@js.get "classID"]
    val set_classID: 'T t -> string -> unit [@@js.set "classID"]
    val get_data: 'T t -> string [@@js.get "data"]
    val set_data: 'T t -> string -> unit [@@js.set "data"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val get_useMap: 'T t -> string [@@js.get "useMap"]
    val set_useMap: 'T t -> string -> unit [@@js.set "useMap"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val get_wmode: 'T t -> string [@@js.get "wmode"]
    val set_wmode: 'T t -> string -> unit [@@js.set "wmode"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "OlHTMLAttributes"] OlHTMLAttributes : sig
    type 'T t = 'T _React_OlHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OlHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OlHTMLAttributes of 'T]
    ]
    val get_reversed: 'T t -> bool [@@js.get "reversed"]
    val set_reversed: 'T t -> bool -> unit [@@js.set "reversed"]
    val get_start: 'T t -> float [@@js.get "start"]
    val set_start: 'T t -> float -> unit [@@js.set "start"]
    val get_type: 'T t -> ([`L_s1_1[@js "1"] | `L_s2_A[@js "A"] | `L_s3_I[@js "I"] | `L_s4_a[@js "a"] | `L_s124_i[@js "i"]] [@js.enum]) [@@js.get "type"]
    val set_type: 'T t -> ([`L_s1_1 | `L_s2_A | `L_s3_I | `L_s4_a | `L_s124_i] [@js.enum]) -> unit [@@js.set "type"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "OptgroupHTMLAttributes"] OptgroupHTMLAttributes : sig
    type 'T t = 'T _React_OptgroupHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OptgroupHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OptgroupHTMLAttributes of 'T]
    ]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_label: 'T t -> string [@@js.get "label"]
    val set_label: 'T t -> string -> unit [@@js.set "label"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "OptionHTMLAttributes"] OptionHTMLAttributes : sig
    type 'T t = 'T _React_OptionHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OptionHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OptionHTMLAttributes of 'T]
    ]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_label: 'T t -> string [@@js.get "label"]
    val set_label: 'T t -> string -> unit [@@js.set "label"]
    val get_selected: 'T t -> bool [@@js.get "selected"]
    val set_selected: 'T t -> bool -> unit [@@js.set "selected"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "OutputHTMLAttributes"] OutputHTMLAttributes : sig
    type 'T t = 'T _React_OutputHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OutputHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_OutputHTMLAttributes of 'T]
    ]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_htmlFor: 'T t -> string [@@js.get "htmlFor"]
    val set_htmlFor: 'T t -> string -> unit [@@js.set "htmlFor"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ParamHTMLAttributes"] ParamHTMLAttributes : sig
    type 'T t = 'T _React_ParamHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ParamHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ParamHTMLAttributes of 'T]
    ]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ProgressHTMLAttributes"] ProgressHTMLAttributes : sig
    type 'T t = 'T _React_ProgressHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ProgressHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ProgressHTMLAttributes of 'T]
    ]
    val get_max: 'T t -> string or_number [@@js.get "max"]
    val set_max: 'T t -> string or_number -> unit [@@js.set "max"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "SlotHTMLAttributes"] SlotHTMLAttributes : sig
    type 'T t = 'T _React_SlotHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SlotHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SlotHTMLAttributes of 'T]
    ]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ScriptHTMLAttributes"] ScriptHTMLAttributes : sig
    type 'T t = 'T _React_ScriptHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ScriptHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ScriptHTMLAttributes of 'T]
    ]
    val get_async: 'T t -> bool [@@js.get "async"]
    val set_async: 'T t -> bool -> unit [@@js.set "async"]
    (** @deprecated  *)
    (** @deprecated  *)
    val get_charSet: 'T t -> string [@@js.get "charSet"]
    (** @deprecated  *)
    val set_charSet: 'T t -> string -> unit [@@js.set "charSet"]
    val get_crossOrigin: 'T t -> string [@@js.get "crossOrigin"]
    val set_crossOrigin: 'T t -> string -> unit [@@js.set "crossOrigin"]
    val get_defer: 'T t -> bool [@@js.get "defer"]
    val set_defer: 'T t -> bool -> unit [@@js.set "defer"]
    val get_integrity: 'T t -> string [@@js.get "integrity"]
    val set_integrity: 'T t -> string -> unit [@@js.set "integrity"]
    val get_noModule: 'T t -> bool [@@js.get "noModule"]
    val set_noModule: 'T t -> bool -> unit [@@js.set "noModule"]
    val get_nonce: 'T t -> string [@@js.get "nonce"]
    val set_nonce: 'T t -> string -> unit [@@js.set "nonce"]
    val get_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy [@@js.get "referrerPolicy"]
    val set_referrerPolicy: 'T t -> _React_HTMLAttributeReferrerPolicy -> unit [@@js.set "referrerPolicy"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "SelectHTMLAttributes"] SelectHTMLAttributes : sig
    type 'T t = 'T _React_SelectHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SelectHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SelectHTMLAttributes of 'T]
    ]
    val get_autoComplete: 'T t -> string [@@js.get "autoComplete"]
    val set_autoComplete: 'T t -> string -> unit [@@js.set "autoComplete"]
    val get_autoFocus: 'T t -> bool [@@js.get "autoFocus"]
    val set_autoFocus: 'T t -> bool -> unit [@@js.set "autoFocus"]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_multiple: 'T t -> bool [@@js.get "multiple"]
    val set_multiple: 'T t -> bool -> unit [@@js.set "multiple"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_required: 'T t -> bool [@@js.get "required"]
    val set_required: 'T t -> bool -> unit [@@js.set "required"]
    val get_size: 'T t -> float [@@js.get "size"]
    val set_size: 'T t -> float -> unit [@@js.set "size"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val get_onChange: 'T t -> 'T _React_ChangeEventHandler [@@js.get "onChange"]
    val set_onChange: 'T t -> 'T _React_ChangeEventHandler -> unit [@@js.set "onChange"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "SourceHTMLAttributes"] SourceHTMLAttributes : sig
    type 'T t = 'T _React_SourceHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SourceHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_SourceHTMLAttributes of 'T]
    ]
    val get_media: 'T t -> string [@@js.get "media"]
    val set_media: 'T t -> string -> unit [@@js.set "media"]
    val get_sizes: 'T t -> string [@@js.get "sizes"]
    val set_sizes: 'T t -> string -> unit [@@js.set "sizes"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_srcSet: 'T t -> string [@@js.get "srcSet"]
    val set_srcSet: 'T t -> string -> unit [@@js.set "srcSet"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "StyleHTMLAttributes"] StyleHTMLAttributes : sig
    type 'T t = 'T _React_StyleHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_StyleHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_StyleHTMLAttributes of 'T]
    ]
    val get_media: 'T t -> string [@@js.get "media"]
    val set_media: 'T t -> string -> unit [@@js.set "media"]
    val get_nonce: 'T t -> string [@@js.get "nonce"]
    val set_nonce: 'T t -> string -> unit [@@js.set "nonce"]
    val get_scoped: 'T t -> bool [@@js.get "scoped"]
    val set_scoped: 'T t -> bool -> unit [@@js.set "scoped"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "TableHTMLAttributes"] TableHTMLAttributes : sig
    type 'T t = 'T _React_TableHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TableHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TableHTMLAttributes of 'T]
    ]
    val get_cellPadding: 'T t -> string or_number [@@js.get "cellPadding"]
    val set_cellPadding: 'T t -> string or_number -> unit [@@js.set "cellPadding"]
    val get_cellSpacing: 'T t -> string or_number [@@js.get "cellSpacing"]
    val set_cellSpacing: 'T t -> string or_number -> unit [@@js.set "cellSpacing"]
    val get_summary: 'T t -> string [@@js.get "summary"]
    val set_summary: 'T t -> string -> unit [@@js.set "summary"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "TextareaHTMLAttributes"] TextareaHTMLAttributes : sig
    type 'T t = 'T _React_TextareaHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TextareaHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TextareaHTMLAttributes of 'T]
    ]
    val get_autoComplete: 'T t -> string [@@js.get "autoComplete"]
    val set_autoComplete: 'T t -> string -> unit [@@js.set "autoComplete"]
    val get_autoFocus: 'T t -> bool [@@js.get "autoFocus"]
    val set_autoFocus: 'T t -> bool -> unit [@@js.set "autoFocus"]
    val get_cols: 'T t -> float [@@js.get "cols"]
    val set_cols: 'T t -> float -> unit [@@js.set "cols"]
    val get_dirName: 'T t -> string [@@js.get "dirName"]
    val set_dirName: 'T t -> string -> unit [@@js.set "dirName"]
    val get_disabled: 'T t -> bool [@@js.get "disabled"]
    val set_disabled: 'T t -> bool -> unit [@@js.set "disabled"]
    val get_form: 'T t -> string [@@js.get "form"]
    val set_form: 'T t -> string -> unit [@@js.set "form"]
    val get_maxLength: 'T t -> float [@@js.get "maxLength"]
    val set_maxLength: 'T t -> float -> unit [@@js.set "maxLength"]
    val get_minLength: 'T t -> float [@@js.get "minLength"]
    val set_minLength: 'T t -> float -> unit [@@js.set "minLength"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_placeholder: 'T t -> string [@@js.get "placeholder"]
    val set_placeholder: 'T t -> string -> unit [@@js.set "placeholder"]
    val get_readOnly: 'T t -> bool [@@js.get "readOnly"]
    val set_readOnly: 'T t -> bool -> unit [@@js.set "readOnly"]
    val get_required: 'T t -> bool [@@js.get "required"]
    val set_required: 'T t -> bool -> unit [@@js.set "required"]
    val get_rows: 'T t -> float [@@js.get "rows"]
    val set_rows: 'T t -> float -> unit [@@js.set "rows"]
    val get_value: 'T t -> string list or_string or_number [@@js.get "value"]
    val set_value: 'T t -> string list or_string or_number -> unit [@@js.set "value"]
    val get_wrap: 'T t -> string [@@js.get "wrap"]
    val set_wrap: 'T t -> string -> unit [@@js.set "wrap"]
    val get_onChange: 'T t -> 'T _React_ChangeEventHandler [@@js.get "onChange"]
    val set_onChange: 'T t -> 'T _React_ChangeEventHandler -> unit [@@js.set "onChange"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "TdHTMLAttributes"] TdHTMLAttributes : sig
    type 'T t = 'T _React_TdHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TdHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TdHTMLAttributes of 'T]
    ]
    val get_align: 'T t -> ([`L_s40_center[@js "center"] | `L_s42_char[@js "char"] | `L_s135_justify[@js "justify"] | `L_s141_left[@js "left"] | `L_s211_right[@js "right"]] [@js.enum]) [@@js.get "align"]
    val set_align: 'T t -> ([`L_s40_center | `L_s42_char | `L_s135_justify | `L_s141_left | `L_s211_right] [@js.enum]) -> unit [@@js.set "align"]
    val get_colSpan: 'T t -> float [@@js.get "colSpan"]
    val set_colSpan: 'T t -> float -> unit [@@js.set "colSpan"]
    val get_headers: 'T t -> string [@@js.get "headers"]
    val set_headers: 'T t -> string -> unit [@@js.set "headers"]
    val get_rowSpan: 'T t -> float [@@js.get "rowSpan"]
    val set_rowSpan: 'T t -> float -> unit [@@js.set "rowSpan"]
    val get_scope: 'T t -> string [@@js.get "scope"]
    val set_scope: 'T t -> string -> unit [@@js.set "scope"]
    val get_abbr: 'T t -> string [@@js.get "abbr"]
    val set_abbr: 'T t -> string -> unit [@@js.set "abbr"]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val get_valign: 'T t -> ([`L_s25_baseline[@js "baseline"] | `L_s34_bottom[@js "bottom"] | `L_s163_middle[@js "middle"] | `L_s264_top[@js "top"]] [@js.enum]) [@@js.get "valign"]
    val set_valign: 'T t -> ([`L_s25_baseline | `L_s34_bottom | `L_s163_middle | `L_s264_top] [@js.enum]) -> unit [@@js.set "valign"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ThHTMLAttributes"] ThHTMLAttributes : sig
    type 'T t = 'T _React_ThHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ThHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_ThHTMLAttributes of 'T]
    ]
    val get_align: 'T t -> ([`L_s40_center[@js "center"] | `L_s42_char[@js "char"] | `L_s135_justify[@js "justify"] | `L_s141_left[@js "left"] | `L_s211_right[@js "right"]] [@js.enum]) [@@js.get "align"]
    val set_align: 'T t -> ([`L_s40_center | `L_s42_char | `L_s135_justify | `L_s141_left | `L_s211_right] [@js.enum]) -> unit [@@js.set "align"]
    val get_colSpan: 'T t -> float [@@js.get "colSpan"]
    val set_colSpan: 'T t -> float -> unit [@@js.set "colSpan"]
    val get_headers: 'T t -> string [@@js.get "headers"]
    val set_headers: 'T t -> string -> unit [@@js.set "headers"]
    val get_rowSpan: 'T t -> float [@@js.get "rowSpan"]
    val set_rowSpan: 'T t -> float -> unit [@@js.set "rowSpan"]
    val get_scope: 'T t -> string [@@js.get "scope"]
    val set_scope: 'T t -> string -> unit [@@js.set "scope"]
    val get_abbr: 'T t -> string [@@js.get "abbr"]
    val set_abbr: 'T t -> string -> unit [@@js.set "abbr"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "TimeHTMLAttributes"] TimeHTMLAttributes : sig
    type 'T t = 'T _React_TimeHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TimeHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TimeHTMLAttributes of 'T]
    ]
    val get_dateTime: 'T t -> string [@@js.get "dateTime"]
    val set_dateTime: 'T t -> string -> unit [@@js.set "dateTime"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "TrackHTMLAttributes"] TrackHTMLAttributes : sig
    type 'T t = 'T _React_TrackHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TrackHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_TrackHTMLAttributes of 'T]
    ]
    val get_default: 'T t -> bool [@@js.get "default"]
    val set_default: 'T t -> bool -> unit [@@js.set "default"]
    val get_kind: 'T t -> string [@@js.get "kind"]
    val set_kind: 'T t -> string -> unit [@@js.set "kind"]
    val get_label: 'T t -> string [@@js.get "label"]
    val set_label: 'T t -> string -> unit [@@js.set "label"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_srcLang: 'T t -> string [@@js.get "srcLang"]
    val set_srcLang: 'T t -> string -> unit [@@js.set "srcLang"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "VideoHTMLAttributes"] VideoHTMLAttributes : sig
    type 'T t = 'T _React_VideoHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T | `React_VideoHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_MediaHTMLAttributes of 'T | `React_VideoHTMLAttributes of 'T]
    ]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_playsInline: 'T t -> bool [@@js.get "playsInline"]
    val set_playsInline: 'T t -> bool -> unit [@@js.set "playsInline"]
    val get_poster: 'T t -> string [@@js.get "poster"]
    val set_poster: 'T t -> string -> unit [@@js.set "poster"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val get_disablePictureInPicture: 'T t -> bool [@@js.get "disablePictureInPicture"]
    val set_disablePictureInPicture: 'T t -> bool -> unit [@@js.set "disablePictureInPicture"]
    val get_disableRemotePlayback: 'T t -> bool [@@js.get "disableRemotePlayback"]
    val set_disableRemotePlayback: 'T t -> bool -> unit [@@js.set "disableRemotePlayback"]
    val cast: 'T t -> 'T _React_MediaHTMLAttributes [@@js.cast]
  end
  module[@js.scope "SVGAttributes"] SVGAttributes : sig
    type 'T t = 'T _React_SVGAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_SVGAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_SVGAttributes of 'T]
    ]
    val get_className: 'T t -> string [@@js.get "className"]
    val set_className: 'T t -> string -> unit [@@js.set "className"]
    val get_color: 'T t -> string [@@js.get "color"]
    val set_color: 'T t -> string -> unit [@@js.set "color"]
    val get_height: 'T t -> string or_number [@@js.get "height"]
    val set_height: 'T t -> string or_number -> unit [@@js.set "height"]
    val get_id: 'T t -> string [@@js.get "id"]
    val set_id: 'T t -> string -> unit [@@js.set "id"]
    val get_lang: 'T t -> string [@@js.get "lang"]
    val set_lang: 'T t -> string -> unit [@@js.set "lang"]
    val get_max: 'T t -> string or_number [@@js.get "max"]
    val set_max: 'T t -> string or_number -> unit [@@js.set "max"]
    val get_media: 'T t -> string [@@js.get "media"]
    val set_media: 'T t -> string -> unit [@@js.set "media"]
    val get_method: 'T t -> string [@@js.get "method"]
    val set_method: 'T t -> string -> unit [@@js.set "method"]
    val get_min: 'T t -> string or_number [@@js.get "min"]
    val set_min: 'T t -> string or_number -> unit [@@js.set "min"]
    val get_name: 'T t -> string [@@js.get "name"]
    val set_name: 'T t -> string -> unit [@@js.set "name"]
    val get_style: 'T t -> _React_CSSProperties [@@js.get "style"]
    val set_style: 'T t -> _React_CSSProperties -> unit [@@js.set "style"]
    val get_target: 'T t -> string [@@js.get "target"]
    val set_target: 'T t -> string -> unit [@@js.set "target"]
    val get_type: 'T t -> string [@@js.get "type"]
    val set_type: 'T t -> string -> unit [@@js.set "type"]
    val get_width: 'T t -> string or_number [@@js.get "width"]
    val set_width: 'T t -> string or_number -> unit [@@js.set "width"]
    val get_role: 'T t -> string [@@js.get "role"]
    val set_role: 'T t -> string -> unit [@@js.set "role"]
    val get_tabIndex: 'T t -> float [@@js.get "tabIndex"]
    val set_tabIndex: 'T t -> float -> unit [@@js.set "tabIndex"]
    val get_crossOrigin: 'T t -> ([`L_s0[@js ""] | `L_s14_anonymous[@js "anonymous"] | `L_s277_use_credentials[@js "use-credentials"]] [@js.enum]) [@@js.get "crossOrigin"]
    val set_crossOrigin: 'T t -> ([`L_s0 | `L_s14_anonymous | `L_s277_use_credentials] [@js.enum]) -> unit [@@js.set "crossOrigin"]
    val get_accentHeight: 'T t -> string or_number [@@js.get "accentHeight"]
    val set_accentHeight: 'T t -> string or_number -> unit [@@js.set "accentHeight"]
    val get_accumulate: 'T t -> ([`L_s174_none[@js "none"] | `L_s239_sum[@js "sum"]] [@js.enum]) [@@js.get "accumulate"]
    val set_accumulate: 'T t -> ([`L_s174_none | `L_s239_sum] [@js.enum]) -> unit [@@js.set "accumulate"]
    val get_additive: 'T t -> ([`L_s209_replace[@js "replace"] | `L_s239_sum[@js "sum"]] [@js.enum]) [@@js.get "additive"]
    val set_additive: 'T t -> ([`L_s209_replace | `L_s239_sum] [@js.enum]) -> unit [@@js.set "additive"]
    val get_alignmentBaseline: 'T t -> ([`L_s10_after_edge[@js "after-edge"] | `L_s12_alphabetic[@js "alphabetic"] | `L_s22_auto[@js "auto"] | `L_s25_baseline[@js "baseline"] | `L_s28_before_edge[@js "before-edge"] | `L_s41_central[@js "central"] | `L_s117_hanging[@js "hanging"] | `L_s125_ideographic[@js "ideographic"] | `L_s129_inherit[@js "inherit"] | `L_s156_mathematical[@js "mathematical"] | `L_s163_middle[@js "middle"] | `L_s255_text_after_edge[@js "text-after-edge"] | `L_s256_text_before_edge[@js "text-before-edge"]] [@js.enum]) [@@js.get "alignmentBaseline"]
    val set_alignmentBaseline: 'T t -> ([`L_s10_after_edge | `L_s12_alphabetic | `L_s22_auto | `L_s25_baseline | `L_s28_before_edge | `L_s41_central | `L_s117_hanging | `L_s125_ideographic | `L_s129_inherit | `L_s156_mathematical | `L_s163_middle | `L_s255_text_after_edge | `L_s256_text_before_edge] [@js.enum]) -> unit [@@js.set "alignmentBaseline"]
    val get_allowReorder: 'T t -> ([`L_s171_no[@js "no"] | `L_s284_yes[@js "yes"]] [@js.enum]) [@@js.get "allowReorder"]
    val set_allowReorder: 'T t -> ([`L_s171_no | `L_s284_yes] [@js.enum]) -> unit [@@js.set "allowReorder"]
    val get_alphabetic: 'T t -> string or_number [@@js.get "alphabetic"]
    val set_alphabetic: 'T t -> string or_number -> unit [@@js.set "alphabetic"]
    val get_amplitude: 'T t -> string or_number [@@js.get "amplitude"]
    val set_amplitude: 'T t -> string or_number -> unit [@@js.set "amplitude"]
    val get_arabicForm: 'T t -> ([`L_s130_initial[@js "initial"] | `L_s134_isolated[@js "isolated"] | `L_s157_medial[@js "medial"] | `L_s251_terminal[@js "terminal"]] [@js.enum]) [@@js.get "arabicForm"]
    val set_arabicForm: 'T t -> ([`L_s130_initial | `L_s134_isolated | `L_s157_medial | `L_s251_terminal] [@js.enum]) -> unit [@@js.set "arabicForm"]
    val get_ascent: 'T t -> string or_number [@@js.get "ascent"]
    val set_ascent: 'T t -> string or_number -> unit [@@js.set "ascent"]
    val get_attributeName: 'T t -> string [@@js.get "attributeName"]
    val set_attributeName: 'T t -> string -> unit [@@js.set "attributeName"]
    val get_attributeType: 'T t -> string [@@js.get "attributeType"]
    val set_attributeType: 'T t -> string -> unit [@@js.set "attributeType"]
    val get_autoReverse: 'T t -> _Booleanish [@@js.get "autoReverse"]
    val set_autoReverse: 'T t -> _Booleanish -> unit [@@js.set "autoReverse"]
    val get_azimuth: 'T t -> string or_number [@@js.get "azimuth"]
    val set_azimuth: 'T t -> string or_number -> unit [@@js.set "azimuth"]
    val get_baseFrequency: 'T t -> string or_number [@@js.get "baseFrequency"]
    val set_baseFrequency: 'T t -> string or_number -> unit [@@js.set "baseFrequency"]
    val get_baselineShift: 'T t -> string or_number [@@js.get "baselineShift"]
    val set_baselineShift: 'T t -> string or_number -> unit [@@js.set "baselineShift"]
    val get_baseProfile: 'T t -> string or_number [@@js.get "baseProfile"]
    val set_baseProfile: 'T t -> string or_number -> unit [@@js.set "baseProfile"]
    val get_bbox: 'T t -> string or_number [@@js.get "bbox"]
    val set_bbox: 'T t -> string or_number -> unit [@@js.set "bbox"]
    val get_begin: 'T t -> string or_number [@@js.get "begin"]
    val set_begin: 'T t -> string or_number -> unit [@@js.set "begin"]
    val get_bias: 'T t -> string or_number [@@js.get "bias"]
    val set_bias: 'T t -> string or_number -> unit [@@js.set "bias"]
    val get_by: 'T t -> string or_number [@@js.get "by"]
    val set_by: 'T t -> string or_number -> unit [@@js.set "by"]
    val get_calcMode: 'T t -> string or_number [@@js.get "calcMode"]
    val set_calcMode: 'T t -> string or_number -> unit [@@js.set "calcMode"]
    val get_capHeight: 'T t -> string or_number [@@js.get "capHeight"]
    val set_capHeight: 'T t -> string or_number -> unit [@@js.set "capHeight"]
    val get_clip: 'T t -> string or_number [@@js.get "clip"]
    val set_clip: 'T t -> string or_number -> unit [@@js.set "clip"]
    val get_clipPath: 'T t -> string [@@js.get "clipPath"]
    val set_clipPath: 'T t -> string -> unit [@@js.set "clipPath"]
    val get_clipPathUnits: 'T t -> string or_number [@@js.get "clipPathUnits"]
    val set_clipPathUnits: 'T t -> string or_number -> unit [@@js.set "clipPathUnits"]
    val get_clipRule: 'T t -> string or_number [@@js.get "clipRule"]
    val set_clipRule: 'T t -> string or_number -> unit [@@js.set "clipRule"]
    val get_colorInterpolation: 'T t -> string or_number [@@js.get "colorInterpolation"]
    val set_colorInterpolation: 'T t -> string or_number -> unit [@@js.set "colorInterpolation"]
    val get_colorInterpolationFilters: 'T t -> ([`L_s22_auto[@js "auto"] | `L_s129_inherit[@js "inherit"] | `L_s146_linearRGB[@js "linearRGB"] | `L_s217_sRGB[@js "sRGB"]] [@js.enum]) [@@js.get "colorInterpolationFilters"]
    val set_colorInterpolationFilters: 'T t -> ([`L_s22_auto | `L_s129_inherit | `L_s146_linearRGB | `L_s217_sRGB] [@js.enum]) -> unit [@@js.set "colorInterpolationFilters"]
    val get_colorProfile: 'T t -> string or_number [@@js.get "colorProfile"]
    val set_colorProfile: 'T t -> string or_number -> unit [@@js.set "colorProfile"]
    val get_colorRendering: 'T t -> string or_number [@@js.get "colorRendering"]
    val set_colorRendering: 'T t -> string or_number -> unit [@@js.set "colorRendering"]
    val get_contentScriptType: 'T t -> string or_number [@@js.get "contentScriptType"]
    val set_contentScriptType: 'T t -> string or_number -> unit [@@js.set "contentScriptType"]
    val get_contentStyleType: 'T t -> string or_number [@@js.get "contentStyleType"]
    val set_contentStyleType: 'T t -> string or_number -> unit [@@js.set "contentStyleType"]
    val get_cursor: 'T t -> string or_number [@@js.get "cursor"]
    val set_cursor: 'T t -> string or_number -> unit [@@js.set "cursor"]
    val get_cx: 'T t -> string or_number [@@js.get "cx"]
    val set_cx: 'T t -> string or_number -> unit [@@js.set "cx"]
    val get_cy: 'T t -> string or_number [@@js.get "cy"]
    val set_cy: 'T t -> string or_number -> unit [@@js.set "cy"]
    val get_d: 'T t -> string [@@js.get "d"]
    val set_d: 'T t -> string -> unit [@@js.set "d"]
    val get_decelerate: 'T t -> string or_number [@@js.get "decelerate"]
    val set_decelerate: 'T t -> string or_number -> unit [@@js.set "decelerate"]
    val get_descent: 'T t -> string or_number [@@js.get "descent"]
    val set_descent: 'T t -> string or_number -> unit [@@js.set "descent"]
    val get_diffuseConstant: 'T t -> string or_number [@@js.get "diffuseConstant"]
    val set_diffuseConstant: 'T t -> string or_number -> unit [@@js.set "diffuseConstant"]
    val get_direction: 'T t -> string or_number [@@js.get "direction"]
    val set_direction: 'T t -> string or_number -> unit [@@js.set "direction"]
    val get_display: 'T t -> string or_number [@@js.get "display"]
    val set_display: 'T t -> string or_number -> unit [@@js.set "display"]
    val get_divisor: 'T t -> string or_number [@@js.get "divisor"]
    val set_divisor: 'T t -> string or_number -> unit [@@js.set "divisor"]
    val get_dominantBaseline: 'T t -> string or_number [@@js.get "dominantBaseline"]
    val set_dominantBaseline: 'T t -> string or_number -> unit [@@js.set "dominantBaseline"]
    val get_dur: 'T t -> string or_number [@@js.get "dur"]
    val set_dur: 'T t -> string or_number -> unit [@@js.set "dur"]
    val get_dx: 'T t -> string or_number [@@js.get "dx"]
    val set_dx: 'T t -> string or_number -> unit [@@js.set "dx"]
    val get_dy: 'T t -> string or_number [@@js.get "dy"]
    val set_dy: 'T t -> string or_number -> unit [@@js.set "dy"]
    val get_edgeMode: 'T t -> string or_number [@@js.get "edgeMode"]
    val set_edgeMode: 'T t -> string or_number -> unit [@@js.set "edgeMode"]
    val get_elevation: 'T t -> string or_number [@@js.get "elevation"]
    val set_elevation: 'T t -> string or_number -> unit [@@js.set "elevation"]
    val get_enableBackground: 'T t -> string or_number [@@js.get "enableBackground"]
    val set_enableBackground: 'T t -> string or_number -> unit [@@js.set "enableBackground"]
    val get_end: 'T t -> string or_number [@@js.get "end"]
    val set_end: 'T t -> string or_number -> unit [@@js.set "end"]
    val get_exponent: 'T t -> string or_number [@@js.get "exponent"]
    val set_exponent: 'T t -> string or_number -> unit [@@js.set "exponent"]
    val get_externalResourcesRequired: 'T t -> _Booleanish [@@js.get "externalResourcesRequired"]
    val set_externalResourcesRequired: 'T t -> _Booleanish -> unit [@@js.set "externalResourcesRequired"]
    val get_fill: 'T t -> string [@@js.get "fill"]
    val set_fill: 'T t -> string -> unit [@@js.set "fill"]
    val get_fillOpacity: 'T t -> string or_number [@@js.get "fillOpacity"]
    val set_fillOpacity: 'T t -> string or_number -> unit [@@js.set "fillOpacity"]
    val get_fillRule: 'T t -> ([`L_s72_evenodd[@js "evenodd"] | `L_s129_inherit[@js "inherit"] | `L_s175_nonzero[@js "nonzero"]] [@js.enum]) [@@js.get "fillRule"]
    val set_fillRule: 'T t -> ([`L_s72_evenodd | `L_s129_inherit | `L_s175_nonzero] [@js.enum]) -> unit [@@js.set "fillRule"]
    val get_filter: 'T t -> string [@@js.get "filter"]
    val set_filter: 'T t -> string -> unit [@@js.set "filter"]
    val get_filterRes: 'T t -> string or_number [@@js.get "filterRes"]
    val set_filterRes: 'T t -> string or_number -> unit [@@js.set "filterRes"]
    val get_filterUnits: 'T t -> string or_number [@@js.get "filterUnits"]
    val set_filterUnits: 'T t -> string or_number -> unit [@@js.set "filterUnits"]
    val get_floodColor: 'T t -> string or_number [@@js.get "floodColor"]
    val set_floodColor: 'T t -> string or_number -> unit [@@js.set "floodColor"]
    val get_floodOpacity: 'T t -> string or_number [@@js.get "floodOpacity"]
    val set_floodOpacity: 'T t -> string or_number -> unit [@@js.set "floodOpacity"]
    val get_focusable: 'T t -> (bool, ([`L_s22_auto[@js "auto"] | `L_s74_false[@js "false"] | `L_s269_true[@js "true"]] [@js.enum])) or_enum [@@js.get "focusable"]
    val set_focusable: 'T t -> (bool, ([`L_s22_auto | `L_s74_false | `L_s269_true] [@js.enum])) or_enum -> unit [@@js.set "focusable"]
    val get_fontFamily: 'T t -> string [@@js.get "fontFamily"]
    val set_fontFamily: 'T t -> string -> unit [@@js.set "fontFamily"]
    val get_fontSize: 'T t -> string or_number [@@js.get "fontSize"]
    val set_fontSize: 'T t -> string or_number -> unit [@@js.set "fontSize"]
    val get_fontSizeAdjust: 'T t -> string or_number [@@js.get "fontSizeAdjust"]
    val set_fontSizeAdjust: 'T t -> string or_number -> unit [@@js.set "fontSizeAdjust"]
    val get_fontStretch: 'T t -> string or_number [@@js.get "fontStretch"]
    val set_fontStretch: 'T t -> string or_number -> unit [@@js.set "fontStretch"]
    val get_fontStyle: 'T t -> string or_number [@@js.get "fontStyle"]
    val set_fontStyle: 'T t -> string or_number -> unit [@@js.set "fontStyle"]
    val get_fontVariant: 'T t -> string or_number [@@js.get "fontVariant"]
    val set_fontVariant: 'T t -> string or_number -> unit [@@js.set "fontVariant"]
    val get_fontWeight: 'T t -> string or_number [@@js.get "fontWeight"]
    val set_fontWeight: 'T t -> string or_number -> unit [@@js.set "fontWeight"]
    val get_format: 'T t -> string or_number [@@js.get "format"]
    val set_format: 'T t -> string or_number -> unit [@@js.set "format"]
    val get_from: 'T t -> string or_number [@@js.get "from"]
    val set_from: 'T t -> string or_number -> unit [@@js.set "from"]
    val get_fx: 'T t -> string or_number [@@js.get "fx"]
    val set_fx: 'T t -> string or_number -> unit [@@js.set "fx"]
    val get_fy: 'T t -> string or_number [@@js.get "fy"]
    val set_fy: 'T t -> string or_number -> unit [@@js.set "fy"]
    val get_g1: 'T t -> string or_number [@@js.get "g1"]
    val set_g1: 'T t -> string or_number -> unit [@@js.set "g1"]
    val get_g2: 'T t -> string or_number [@@js.get "g2"]
    val set_g2: 'T t -> string or_number -> unit [@@js.set "g2"]
    val get_glyphName: 'T t -> string or_number [@@js.get "glyphName"]
    val set_glyphName: 'T t -> string or_number -> unit [@@js.set "glyphName"]
    val get_glyphOrientationHorizontal: 'T t -> string or_number [@@js.get "glyphOrientationHorizontal"]
    val set_glyphOrientationHorizontal: 'T t -> string or_number -> unit [@@js.set "glyphOrientationHorizontal"]
    val get_glyphOrientationVertical: 'T t -> string or_number [@@js.get "glyphOrientationVertical"]
    val set_glyphOrientationVertical: 'T t -> string or_number -> unit [@@js.set "glyphOrientationVertical"]
    val get_glyphRef: 'T t -> string or_number [@@js.get "glyphRef"]
    val set_glyphRef: 'T t -> string or_number -> unit [@@js.set "glyphRef"]
    val get_gradientTransform: 'T t -> string [@@js.get "gradientTransform"]
    val set_gradientTransform: 'T t -> string -> unit [@@js.set "gradientTransform"]
    val get_gradientUnits: 'T t -> string [@@js.get "gradientUnits"]
    val set_gradientUnits: 'T t -> string -> unit [@@js.set "gradientUnits"]
    val get_hanging: 'T t -> string or_number [@@js.get "hanging"]
    val set_hanging: 'T t -> string or_number -> unit [@@js.set "hanging"]
    val get_horizAdvX: 'T t -> string or_number [@@js.get "horizAdvX"]
    val set_horizAdvX: 'T t -> string or_number -> unit [@@js.set "horizAdvX"]
    val get_horizOriginX: 'T t -> string or_number [@@js.get "horizOriginX"]
    val set_horizOriginX: 'T t -> string or_number -> unit [@@js.set "horizOriginX"]
    val get_href: 'T t -> string [@@js.get "href"]
    val set_href: 'T t -> string -> unit [@@js.set "href"]
    val get_ideographic: 'T t -> string or_number [@@js.get "ideographic"]
    val set_ideographic: 'T t -> string or_number -> unit [@@js.set "ideographic"]
    val get_imageRendering: 'T t -> string or_number [@@js.get "imageRendering"]
    val set_imageRendering: 'T t -> string or_number -> unit [@@js.set "imageRendering"]
    val get_in2: 'T t -> string or_number [@@js.get "in2"]
    val set_in2: 'T t -> string or_number -> unit [@@js.set "in2"]
    val get_in: 'T t -> string [@@js.get "in"]
    val set_in: 'T t -> string -> unit [@@js.set "in"]
    val get_intercept: 'T t -> string or_number [@@js.get "intercept"]
    val set_intercept: 'T t -> string or_number -> unit [@@js.set "intercept"]
    val get_k1: 'T t -> string or_number [@@js.get "k1"]
    val set_k1: 'T t -> string or_number -> unit [@@js.set "k1"]
    val get_k2: 'T t -> string or_number [@@js.get "k2"]
    val set_k2: 'T t -> string or_number -> unit [@@js.set "k2"]
    val get_k3: 'T t -> string or_number [@@js.get "k3"]
    val set_k3: 'T t -> string or_number -> unit [@@js.set "k3"]
    val get_k4: 'T t -> string or_number [@@js.get "k4"]
    val set_k4: 'T t -> string or_number -> unit [@@js.set "k4"]
    val get_k: 'T t -> string or_number [@@js.get "k"]
    val set_k: 'T t -> string or_number -> unit [@@js.set "k"]
    val get_kernelMatrix: 'T t -> string or_number [@@js.get "kernelMatrix"]
    val set_kernelMatrix: 'T t -> string or_number -> unit [@@js.set "kernelMatrix"]
    val get_kernelUnitLength: 'T t -> string or_number [@@js.get "kernelUnitLength"]
    val set_kernelUnitLength: 'T t -> string or_number -> unit [@@js.set "kernelUnitLength"]
    val get_kerning: 'T t -> string or_number [@@js.get "kerning"]
    val set_kerning: 'T t -> string or_number -> unit [@@js.set "kerning"]
    val get_keyPoints: 'T t -> string or_number [@@js.get "keyPoints"]
    val set_keyPoints: 'T t -> string or_number -> unit [@@js.set "keyPoints"]
    val get_keySplines: 'T t -> string or_number [@@js.get "keySplines"]
    val set_keySplines: 'T t -> string or_number -> unit [@@js.set "keySplines"]
    val get_keyTimes: 'T t -> string or_number [@@js.get "keyTimes"]
    val set_keyTimes: 'T t -> string or_number -> unit [@@js.set "keyTimes"]
    val get_lengthAdjust: 'T t -> string or_number [@@js.get "lengthAdjust"]
    val set_lengthAdjust: 'T t -> string or_number -> unit [@@js.set "lengthAdjust"]
    val get_letterSpacing: 'T t -> string or_number [@@js.get "letterSpacing"]
    val set_letterSpacing: 'T t -> string or_number -> unit [@@js.set "letterSpacing"]
    val get_lightingColor: 'T t -> string or_number [@@js.get "lightingColor"]
    val set_lightingColor: 'T t -> string or_number -> unit [@@js.set "lightingColor"]
    val get_limitingConeAngle: 'T t -> string or_number [@@js.get "limitingConeAngle"]
    val set_limitingConeAngle: 'T t -> string or_number -> unit [@@js.set "limitingConeAngle"]
    val get_local: 'T t -> string or_number [@@js.get "local"]
    val set_local: 'T t -> string or_number -> unit [@@js.set "local"]
    val get_markerEnd: 'T t -> string [@@js.get "markerEnd"]
    val set_markerEnd: 'T t -> string -> unit [@@js.set "markerEnd"]
    val get_markerHeight: 'T t -> string or_number [@@js.get "markerHeight"]
    val set_markerHeight: 'T t -> string or_number -> unit [@@js.set "markerHeight"]
    val get_markerMid: 'T t -> string [@@js.get "markerMid"]
    val set_markerMid: 'T t -> string -> unit [@@js.set "markerMid"]
    val get_markerStart: 'T t -> string [@@js.get "markerStart"]
    val set_markerStart: 'T t -> string -> unit [@@js.set "markerStart"]
    val get_markerUnits: 'T t -> string or_number [@@js.get "markerUnits"]
    val set_markerUnits: 'T t -> string or_number -> unit [@@js.set "markerUnits"]
    val get_markerWidth: 'T t -> string or_number [@@js.get "markerWidth"]
    val set_markerWidth: 'T t -> string or_number -> unit [@@js.set "markerWidth"]
    val get_mask: 'T t -> string [@@js.get "mask"]
    val set_mask: 'T t -> string -> unit [@@js.set "mask"]
    val get_maskContentUnits: 'T t -> string or_number [@@js.get "maskContentUnits"]
    val set_maskContentUnits: 'T t -> string or_number -> unit [@@js.set "maskContentUnits"]
    val get_maskUnits: 'T t -> string or_number [@@js.get "maskUnits"]
    val set_maskUnits: 'T t -> string or_number -> unit [@@js.set "maskUnits"]
    val get_mathematical: 'T t -> string or_number [@@js.get "mathematical"]
    val set_mathematical: 'T t -> string or_number -> unit [@@js.set "mathematical"]
    val get_mode: 'T t -> string or_number [@@js.get "mode"]
    val set_mode: 'T t -> string or_number -> unit [@@js.set "mode"]
    val get_numOctaves: 'T t -> string or_number [@@js.get "numOctaves"]
    val set_numOctaves: 'T t -> string or_number -> unit [@@js.set "numOctaves"]
    val get_offset: 'T t -> string or_number [@@js.get "offset"]
    val set_offset: 'T t -> string or_number -> unit [@@js.set "offset"]
    val get_opacity: 'T t -> string or_number [@@js.get "opacity"]
    val set_opacity: 'T t -> string or_number -> unit [@@js.set "opacity"]
    val get_operator: 'T t -> string or_number [@@js.get "operator"]
    val set_operator: 'T t -> string or_number -> unit [@@js.set "operator"]
    val get_order: 'T t -> string or_number [@@js.get "order"]
    val set_order: 'T t -> string or_number -> unit [@@js.set "order"]
    val get_orient: 'T t -> string or_number [@@js.get "orient"]
    val set_orient: 'T t -> string or_number -> unit [@@js.set "orient"]
    val get_orientation: 'T t -> string or_number [@@js.get "orientation"]
    val set_orientation: 'T t -> string or_number -> unit [@@js.set "orientation"]
    val get_origin: 'T t -> string or_number [@@js.get "origin"]
    val set_origin: 'T t -> string or_number -> unit [@@js.set "origin"]
    val get_overflow: 'T t -> string or_number [@@js.get "overflow"]
    val set_overflow: 'T t -> string or_number -> unit [@@js.set "overflow"]
    val get_overlinePosition: 'T t -> string or_number [@@js.get "overlinePosition"]
    val set_overlinePosition: 'T t -> string or_number -> unit [@@js.set "overlinePosition"]
    val get_overlineThickness: 'T t -> string or_number [@@js.get "overlineThickness"]
    val set_overlineThickness: 'T t -> string or_number -> unit [@@js.set "overlineThickness"]
    val get_paintOrder: 'T t -> string or_number [@@js.get "paintOrder"]
    val set_paintOrder: 'T t -> string or_number -> unit [@@js.set "paintOrder"]
    val get_panose1: 'T t -> string or_number [@@js.get "panose1"]
    val set_panose1: 'T t -> string or_number -> unit [@@js.set "panose1"]
    val get_path: 'T t -> string [@@js.get "path"]
    val set_path: 'T t -> string -> unit [@@js.set "path"]
    val get_pathLength: 'T t -> string or_number [@@js.get "pathLength"]
    val set_pathLength: 'T t -> string or_number -> unit [@@js.set "pathLength"]
    val get_patternContentUnits: 'T t -> string [@@js.get "patternContentUnits"]
    val set_patternContentUnits: 'T t -> string -> unit [@@js.set "patternContentUnits"]
    val get_patternTransform: 'T t -> string or_number [@@js.get "patternTransform"]
    val set_patternTransform: 'T t -> string or_number -> unit [@@js.set "patternTransform"]
    val get_patternUnits: 'T t -> string [@@js.get "patternUnits"]
    val set_patternUnits: 'T t -> string -> unit [@@js.set "patternUnits"]
    val get_pointerEvents: 'T t -> string or_number [@@js.get "pointerEvents"]
    val set_pointerEvents: 'T t -> string or_number -> unit [@@js.set "pointerEvents"]
    val get_points: 'T t -> string [@@js.get "points"]
    val set_points: 'T t -> string -> unit [@@js.set "points"]
    val get_pointsAtX: 'T t -> string or_number [@@js.get "pointsAtX"]
    val set_pointsAtX: 'T t -> string or_number -> unit [@@js.set "pointsAtX"]
    val get_pointsAtY: 'T t -> string or_number [@@js.get "pointsAtY"]
    val set_pointsAtY: 'T t -> string or_number -> unit [@@js.set "pointsAtY"]
    val get_pointsAtZ: 'T t -> string or_number [@@js.get "pointsAtZ"]
    val set_pointsAtZ: 'T t -> string or_number -> unit [@@js.set "pointsAtZ"]
    val get_preserveAlpha: 'T t -> _Booleanish [@@js.get "preserveAlpha"]
    val set_preserveAlpha: 'T t -> _Booleanish -> unit [@@js.set "preserveAlpha"]
    val get_preserveAspectRatio: 'T t -> string [@@js.get "preserveAspectRatio"]
    val set_preserveAspectRatio: 'T t -> string -> unit [@@js.set "preserveAspectRatio"]
    val get_primitiveUnits: 'T t -> string or_number [@@js.get "primitiveUnits"]
    val set_primitiveUnits: 'T t -> string or_number -> unit [@@js.set "primitiveUnits"]
    val get_r: 'T t -> string or_number [@@js.get "r"]
    val set_r: 'T t -> string or_number -> unit [@@js.set "r"]
    val get_radius: 'T t -> string or_number [@@js.get "radius"]
    val set_radius: 'T t -> string or_number -> unit [@@js.set "radius"]
    val get_refX: 'T t -> string or_number [@@js.get "refX"]
    val set_refX: 'T t -> string or_number -> unit [@@js.set "refX"]
    val get_refY: 'T t -> string or_number [@@js.get "refY"]
    val set_refY: 'T t -> string or_number -> unit [@@js.set "refY"]
    val get_renderingIntent: 'T t -> string or_number [@@js.get "renderingIntent"]
    val set_renderingIntent: 'T t -> string or_number -> unit [@@js.set "renderingIntent"]
    val get_repeatCount: 'T t -> string or_number [@@js.get "repeatCount"]
    val set_repeatCount: 'T t -> string or_number -> unit [@@js.set "repeatCount"]
    val get_repeatDur: 'T t -> string or_number [@@js.get "repeatDur"]
    val set_repeatDur: 'T t -> string or_number -> unit [@@js.set "repeatDur"]
    val get_requiredExtensions: 'T t -> string or_number [@@js.get "requiredExtensions"]
    val set_requiredExtensions: 'T t -> string or_number -> unit [@@js.set "requiredExtensions"]
    val get_requiredFeatures: 'T t -> string or_number [@@js.get "requiredFeatures"]
    val set_requiredFeatures: 'T t -> string or_number -> unit [@@js.set "requiredFeatures"]
    val get_restart: 'T t -> string or_number [@@js.get "restart"]
    val set_restart: 'T t -> string or_number -> unit [@@js.set "restart"]
    val get_result: 'T t -> string [@@js.get "result"]
    val set_result: 'T t -> string -> unit [@@js.set "result"]
    val get_rotate: 'T t -> string or_number [@@js.get "rotate"]
    val set_rotate: 'T t -> string or_number -> unit [@@js.set "rotate"]
    val get_rx: 'T t -> string or_number [@@js.get "rx"]
    val set_rx: 'T t -> string or_number -> unit [@@js.set "rx"]
    val get_ry: 'T t -> string or_number [@@js.get "ry"]
    val set_ry: 'T t -> string or_number -> unit [@@js.set "ry"]
    val get_scale: 'T t -> string or_number [@@js.get "scale"]
    val set_scale: 'T t -> string or_number -> unit [@@js.set "scale"]
    val get_seed: 'T t -> string or_number [@@js.get "seed"]
    val set_seed: 'T t -> string or_number -> unit [@@js.set "seed"]
    val get_shapeRendering: 'T t -> string or_number [@@js.get "shapeRendering"]
    val set_shapeRendering: 'T t -> string or_number -> unit [@@js.set "shapeRendering"]
    val get_slope: 'T t -> string or_number [@@js.get "slope"]
    val set_slope: 'T t -> string or_number -> unit [@@js.set "slope"]
    val get_spacing: 'T t -> string or_number [@@js.get "spacing"]
    val set_spacing: 'T t -> string or_number -> unit [@@js.set "spacing"]
    val get_specularConstant: 'T t -> string or_number [@@js.get "specularConstant"]
    val set_specularConstant: 'T t -> string or_number -> unit [@@js.set "specularConstant"]
    val get_specularExponent: 'T t -> string or_number [@@js.get "specularExponent"]
    val set_specularExponent: 'T t -> string or_number -> unit [@@js.set "specularExponent"]
    val get_speed: 'T t -> string or_number [@@js.get "speed"]
    val set_speed: 'T t -> string or_number -> unit [@@js.set "speed"]
    val get_spreadMethod: 'T t -> string [@@js.get "spreadMethod"]
    val set_spreadMethod: 'T t -> string -> unit [@@js.set "spreadMethod"]
    val get_startOffset: 'T t -> string or_number [@@js.get "startOffset"]
    val set_startOffset: 'T t -> string or_number -> unit [@@js.set "startOffset"]
    val get_stdDeviation: 'T t -> string or_number [@@js.get "stdDeviation"]
    val set_stdDeviation: 'T t -> string or_number -> unit [@@js.set "stdDeviation"]
    val get_stemh: 'T t -> string or_number [@@js.get "stemh"]
    val set_stemh: 'T t -> string or_number -> unit [@@js.set "stemh"]
    val get_stemv: 'T t -> string or_number [@@js.get "stemv"]
    val set_stemv: 'T t -> string or_number -> unit [@@js.set "stemv"]
    val get_stitchTiles: 'T t -> string or_number [@@js.get "stitchTiles"]
    val set_stitchTiles: 'T t -> string or_number -> unit [@@js.set "stitchTiles"]
    val get_stopColor: 'T t -> string [@@js.get "stopColor"]
    val set_stopColor: 'T t -> string -> unit [@@js.set "stopColor"]
    val get_stopOpacity: 'T t -> string or_number [@@js.get "stopOpacity"]
    val set_stopOpacity: 'T t -> string or_number -> unit [@@js.set "stopOpacity"]
    val get_strikethroughPosition: 'T t -> string or_number [@@js.get "strikethroughPosition"]
    val set_strikethroughPosition: 'T t -> string or_number -> unit [@@js.set "strikethroughPosition"]
    val get_strikethroughThickness: 'T t -> string or_number [@@js.get "strikethroughThickness"]
    val set_strikethroughThickness: 'T t -> string or_number -> unit [@@js.set "strikethroughThickness"]
    val get_string: 'T t -> string or_number [@@js.get "string"]
    val set_string: 'T t -> string or_number -> unit [@@js.set "string"]
    val get_stroke: 'T t -> string [@@js.get "stroke"]
    val set_stroke: 'T t -> string -> unit [@@js.set "stroke"]
    val get_strokeDasharray: 'T t -> string or_number [@@js.get "strokeDasharray"]
    val set_strokeDasharray: 'T t -> string or_number -> unit [@@js.set "strokeDasharray"]
    val get_strokeDashoffset: 'T t -> string or_number [@@js.get "strokeDashoffset"]
    val set_strokeDashoffset: 'T t -> string or_number -> unit [@@js.set "strokeDashoffset"]
    val get_strokeLinecap: 'T t -> ([`L_s36_butt[@js "butt"] | `L_s129_inherit[@js "inherit"] | `L_s212_round[@js "round"] | `L_s230_square[@js "square"]] [@js.enum]) [@@js.get "strokeLinecap"]
    val set_strokeLinecap: 'T t -> ([`L_s36_butt | `L_s129_inherit | `L_s212_round | `L_s230_square] [@js.enum]) -> unit [@@js.set "strokeLinecap"]
    val get_strokeLinejoin: 'T t -> ([`L_s29_bevel[@js "bevel"] | `L_s129_inherit[@js "inherit"] | `L_s164_miter[@js "miter"] | `L_s212_round[@js "round"]] [@js.enum]) [@@js.get "strokeLinejoin"]
    val set_strokeLinejoin: 'T t -> ([`L_s29_bevel | `L_s129_inherit | `L_s164_miter | `L_s212_round] [@js.enum]) -> unit [@@js.set "strokeLinejoin"]
    val get_strokeMiterlimit: 'T t -> string or_number [@@js.get "strokeMiterlimit"]
    val set_strokeMiterlimit: 'T t -> string or_number -> unit [@@js.set "strokeMiterlimit"]
    val get_strokeOpacity: 'T t -> string or_number [@@js.get "strokeOpacity"]
    val set_strokeOpacity: 'T t -> string or_number -> unit [@@js.set "strokeOpacity"]
    val get_strokeWidth: 'T t -> string or_number [@@js.get "strokeWidth"]
    val set_strokeWidth: 'T t -> string or_number -> unit [@@js.set "strokeWidth"]
    val get_surfaceScale: 'T t -> string or_number [@@js.get "surfaceScale"]
    val set_surfaceScale: 'T t -> string or_number -> unit [@@js.set "surfaceScale"]
    val get_systemLanguage: 'T t -> string or_number [@@js.get "systemLanguage"]
    val set_systemLanguage: 'T t -> string or_number -> unit [@@js.set "systemLanguage"]
    val get_tableValues: 'T t -> string or_number [@@js.get "tableValues"]
    val set_tableValues: 'T t -> string or_number -> unit [@@js.set "tableValues"]
    val get_targetX: 'T t -> string or_number [@@js.get "targetX"]
    val set_targetX: 'T t -> string or_number -> unit [@@js.set "targetX"]
    val get_targetY: 'T t -> string or_number [@@js.get "targetY"]
    val set_targetY: 'T t -> string or_number -> unit [@@js.set "targetY"]
    val get_textAnchor: 'T t -> string [@@js.get "textAnchor"]
    val set_textAnchor: 'T t -> string -> unit [@@js.set "textAnchor"]
    val get_textDecoration: 'T t -> string or_number [@@js.get "textDecoration"]
    val set_textDecoration: 'T t -> string or_number -> unit [@@js.set "textDecoration"]
    val get_textLength: 'T t -> string or_number [@@js.get "textLength"]
    val set_textLength: 'T t -> string or_number -> unit [@@js.set "textLength"]
    val get_textRendering: 'T t -> string or_number [@@js.get "textRendering"]
    val set_textRendering: 'T t -> string or_number -> unit [@@js.set "textRendering"]
    val get_to: 'T t -> string or_number [@@js.get "to"]
    val set_to: 'T t -> string or_number -> unit [@@js.set "to"]
    val get_transform: 'T t -> string [@@js.get "transform"]
    val set_transform: 'T t -> string -> unit [@@js.set "transform"]
    val get_u1: 'T t -> string or_number [@@js.get "u1"]
    val set_u1: 'T t -> string or_number -> unit [@@js.set "u1"]
    val get_u2: 'T t -> string or_number [@@js.get "u2"]
    val set_u2: 'T t -> string or_number -> unit [@@js.set "u2"]
    val get_underlinePosition: 'T t -> string or_number [@@js.get "underlinePosition"]
    val set_underlinePosition: 'T t -> string or_number -> unit [@@js.set "underlinePosition"]
    val get_underlineThickness: 'T t -> string or_number [@@js.get "underlineThickness"]
    val set_underlineThickness: 'T t -> string or_number -> unit [@@js.set "underlineThickness"]
    val get_unicode: 'T t -> string or_number [@@js.get "unicode"]
    val set_unicode: 'T t -> string or_number -> unit [@@js.set "unicode"]
    val get_unicodeBidi: 'T t -> string or_number [@@js.get "unicodeBidi"]
    val set_unicodeBidi: 'T t -> string or_number -> unit [@@js.set "unicodeBidi"]
    val get_unicodeRange: 'T t -> string or_number [@@js.get "unicodeRange"]
    val set_unicodeRange: 'T t -> string or_number -> unit [@@js.set "unicodeRange"]
    val get_unitsPerEm: 'T t -> string or_number [@@js.get "unitsPerEm"]
    val set_unitsPerEm: 'T t -> string or_number -> unit [@@js.set "unitsPerEm"]
    val get_vAlphabetic: 'T t -> string or_number [@@js.get "vAlphabetic"]
    val set_vAlphabetic: 'T t -> string or_number -> unit [@@js.set "vAlphabetic"]
    val get_values: 'T t -> string [@@js.get "values"]
    val set_values: 'T t -> string -> unit [@@js.set "values"]
    val get_vectorEffect: 'T t -> string or_number [@@js.get "vectorEffect"]
    val set_vectorEffect: 'T t -> string or_number -> unit [@@js.set "vectorEffect"]
    val get_version: 'T t -> string [@@js.get "version"]
    val set_version: 'T t -> string -> unit [@@js.set "version"]
    val get_vertAdvY: 'T t -> string or_number [@@js.get "vertAdvY"]
    val set_vertAdvY: 'T t -> string or_number -> unit [@@js.set "vertAdvY"]
    val get_vertOriginX: 'T t -> string or_number [@@js.get "vertOriginX"]
    val set_vertOriginX: 'T t -> string or_number -> unit [@@js.set "vertOriginX"]
    val get_vertOriginY: 'T t -> string or_number [@@js.get "vertOriginY"]
    val set_vertOriginY: 'T t -> string or_number -> unit [@@js.set "vertOriginY"]
    val get_vHanging: 'T t -> string or_number [@@js.get "vHanging"]
    val set_vHanging: 'T t -> string or_number -> unit [@@js.set "vHanging"]
    val get_vIdeographic: 'T t -> string or_number [@@js.get "vIdeographic"]
    val set_vIdeographic: 'T t -> string or_number -> unit [@@js.set "vIdeographic"]
    val get_viewBox: 'T t -> string [@@js.get "viewBox"]
    val set_viewBox: 'T t -> string -> unit [@@js.set "viewBox"]
    val get_viewTarget: 'T t -> string or_number [@@js.get "viewTarget"]
    val set_viewTarget: 'T t -> string or_number -> unit [@@js.set "viewTarget"]
    val get_visibility: 'T t -> string or_number [@@js.get "visibility"]
    val set_visibility: 'T t -> string or_number -> unit [@@js.set "visibility"]
    val get_vMathematical: 'T t -> string or_number [@@js.get "vMathematical"]
    val set_vMathematical: 'T t -> string or_number -> unit [@@js.set "vMathematical"]
    val get_widths: 'T t -> string or_number [@@js.get "widths"]
    val set_widths: 'T t -> string or_number -> unit [@@js.set "widths"]
    val get_wordSpacing: 'T t -> string or_number [@@js.get "wordSpacing"]
    val set_wordSpacing: 'T t -> string or_number -> unit [@@js.set "wordSpacing"]
    val get_writingMode: 'T t -> string or_number [@@js.get "writingMode"]
    val set_writingMode: 'T t -> string or_number -> unit [@@js.set "writingMode"]
    val get_x1: 'T t -> string or_number [@@js.get "x1"]
    val set_x1: 'T t -> string or_number -> unit [@@js.set "x1"]
    val get_x2: 'T t -> string or_number [@@js.get "x2"]
    val set_x2: 'T t -> string or_number -> unit [@@js.set "x2"]
    val get_x: 'T t -> string or_number [@@js.get "x"]
    val set_x: 'T t -> string or_number -> unit [@@js.set "x"]
    val get_xChannelSelector: 'T t -> string [@@js.get "xChannelSelector"]
    val set_xChannelSelector: 'T t -> string -> unit [@@js.set "xChannelSelector"]
    val get_xHeight: 'T t -> string or_number [@@js.get "xHeight"]
    val set_xHeight: 'T t -> string or_number -> unit [@@js.set "xHeight"]
    val get_xlinkActuate: 'T t -> string [@@js.get "xlinkActuate"]
    val set_xlinkActuate: 'T t -> string -> unit [@@js.set "xlinkActuate"]
    val get_xlinkArcrole: 'T t -> string [@@js.get "xlinkArcrole"]
    val set_xlinkArcrole: 'T t -> string -> unit [@@js.set "xlinkArcrole"]
    val get_xlinkHref: 'T t -> string [@@js.get "xlinkHref"]
    val set_xlinkHref: 'T t -> string -> unit [@@js.set "xlinkHref"]
    val get_xlinkRole: 'T t -> string [@@js.get "xlinkRole"]
    val set_xlinkRole: 'T t -> string -> unit [@@js.set "xlinkRole"]
    val get_xlinkShow: 'T t -> string [@@js.get "xlinkShow"]
    val set_xlinkShow: 'T t -> string -> unit [@@js.set "xlinkShow"]
    val get_xlinkTitle: 'T t -> string [@@js.get "xlinkTitle"]
    val set_xlinkTitle: 'T t -> string -> unit [@@js.set "xlinkTitle"]
    val get_xlinkType: 'T t -> string [@@js.get "xlinkType"]
    val set_xlinkType: 'T t -> string -> unit [@@js.set "xlinkType"]
    val get_xmlBase: 'T t -> string [@@js.get "xmlBase"]
    val set_xmlBase: 'T t -> string -> unit [@@js.set "xmlBase"]
    val get_xmlLang: 'T t -> string [@@js.get "xmlLang"]
    val set_xmlLang: 'T t -> string -> unit [@@js.set "xmlLang"]
    val get_xmlns: 'T t -> string [@@js.get "xmlns"]
    val set_xmlns: 'T t -> string -> unit [@@js.set "xmlns"]
    val get_xmlnsXlink: 'T t -> string [@@js.get "xmlnsXlink"]
    val set_xmlnsXlink: 'T t -> string -> unit [@@js.set "xmlnsXlink"]
    val get_xmlSpace: 'T t -> string [@@js.get "xmlSpace"]
    val set_xmlSpace: 'T t -> string -> unit [@@js.set "xmlSpace"]
    val get_y1: 'T t -> string or_number [@@js.get "y1"]
    val set_y1: 'T t -> string or_number -> unit [@@js.set "y1"]
    val get_y2: 'T t -> string or_number [@@js.get "y2"]
    val set_y2: 'T t -> string or_number -> unit [@@js.set "y2"]
    val get_y: 'T t -> string or_number [@@js.get "y"]
    val set_y: 'T t -> string or_number -> unit [@@js.set "y"]
    val get_yChannelSelector: 'T t -> string [@@js.get "yChannelSelector"]
    val set_yChannelSelector: 'T t -> string -> unit [@@js.set "yChannelSelector"]
    val get_z: 'T t -> string or_number [@@js.get "z"]
    val set_z: 'T t -> string or_number -> unit [@@js.set "z"]
    val get_zoomAndPan: 'T t -> string [@@js.get "zoomAndPan"]
    val set_zoomAndPan: 'T t -> string -> unit [@@js.set "zoomAndPan"]
    val cast: 'T t -> _React_AriaAttributes [@@js.cast]
    val cast': 'T t -> 'T _React_DOMAttributes [@@js.cast]
  end
  module[@js.scope "WebViewHTMLAttributes"] WebViewHTMLAttributes : sig
    type 'T t = 'T _React_WebViewHTMLAttributes
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_WebViewHTMLAttributes of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_AriaAttributes | `React_DOMAttributes of 'T | `React_HTMLAttributes of 'T | `React_WebViewHTMLAttributes of 'T]
    ]
    val get_allowFullScreen: 'T t -> bool [@@js.get "allowFullScreen"]
    val set_allowFullScreen: 'T t -> bool -> unit [@@js.set "allowFullScreen"]
    val get_allowpopups: 'T t -> bool [@@js.get "allowpopups"]
    val set_allowpopups: 'T t -> bool -> unit [@@js.set "allowpopups"]
    val get_autoFocus: 'T t -> bool [@@js.get "autoFocus"]
    val set_autoFocus: 'T t -> bool -> unit [@@js.set "autoFocus"]
    val get_autosize: 'T t -> bool [@@js.get "autosize"]
    val set_autosize: 'T t -> bool -> unit [@@js.set "autosize"]
    val get_blinkfeatures: 'T t -> string [@@js.get "blinkfeatures"]
    val set_blinkfeatures: 'T t -> string -> unit [@@js.set "blinkfeatures"]
    val get_disableblinkfeatures: 'T t -> string [@@js.get "disableblinkfeatures"]
    val set_disableblinkfeatures: 'T t -> string -> unit [@@js.set "disableblinkfeatures"]
    val get_disableguestresize: 'T t -> bool [@@js.get "disableguestresize"]
    val set_disableguestresize: 'T t -> bool -> unit [@@js.set "disableguestresize"]
    val get_disablewebsecurity: 'T t -> bool [@@js.get "disablewebsecurity"]
    val set_disablewebsecurity: 'T t -> bool -> unit [@@js.set "disablewebsecurity"]
    val get_guestinstance: 'T t -> string [@@js.get "guestinstance"]
    val set_guestinstance: 'T t -> string -> unit [@@js.set "guestinstance"]
    val get_httpreferrer: 'T t -> string [@@js.get "httpreferrer"]
    val set_httpreferrer: 'T t -> string -> unit [@@js.set "httpreferrer"]
    val get_nodeintegration: 'T t -> bool [@@js.get "nodeintegration"]
    val set_nodeintegration: 'T t -> bool -> unit [@@js.set "nodeintegration"]
    val get_partition: 'T t -> string [@@js.get "partition"]
    val set_partition: 'T t -> string -> unit [@@js.set "partition"]
    val get_plugins: 'T t -> bool [@@js.get "plugins"]
    val set_plugins: 'T t -> bool -> unit [@@js.set "plugins"]
    val get_preload: 'T t -> string [@@js.get "preload"]
    val set_preload: 'T t -> string -> unit [@@js.set "preload"]
    val get_src: 'T t -> string [@@js.get "src"]
    val set_src: 'T t -> string -> unit [@@js.set "src"]
    val get_useragent: 'T t -> string [@@js.get "useragent"]
    val set_useragent: 'T t -> string -> unit [@@js.set "useragent"]
    val get_webpreferences: 'T t -> string [@@js.get "webpreferences"]
    val set_webpreferences: 'T t -> string -> unit [@@js.set "webpreferences"]
    val cast: 'T t -> 'T _React_HTMLAttributes [@@js.cast]
  end
  module[@js.scope "ReactHTML"] ReactHTML : sig
    type t = _React_ReactHTML
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactHTML]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactHTML]
    ]
    val get_a: t -> (HTMLAnchorElement.t_0 _React_AnchorHTMLAttributes, HTMLAnchorElement.t_0) _React_DetailedHTMLFactory [@@js.get "a"]
    val set_a: t -> (HTMLAnchorElement.t_0 _React_AnchorHTMLAttributes, HTMLAnchorElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "a"]
    val get_abbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "abbr"]
    val set_abbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "abbr"]
    val get_address: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "address"]
    val set_address: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "address"]
    val get_area: t -> (HTMLAreaElement.t_0 _React_AreaHTMLAttributes, HTMLAreaElement.t_0) _React_DetailedHTMLFactory [@@js.get "area"]
    val set_area: t -> (HTMLAreaElement.t_0 _React_AreaHTMLAttributes, HTMLAreaElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "area"]
    val get_article: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "article"]
    val set_article: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "article"]
    val get_aside: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "aside"]
    val set_aside: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "aside"]
    val get_audio: t -> (HTMLAudioElement.t_0 _React_AudioHTMLAttributes, HTMLAudioElement.t_0) _React_DetailedHTMLFactory [@@js.get "audio"]
    val set_audio: t -> (HTMLAudioElement.t_0 _React_AudioHTMLAttributes, HTMLAudioElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "audio"]
    val get_b: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "b"]
    val set_b: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "b"]
    val get_base: t -> (HTMLBaseElement.t_0 _React_BaseHTMLAttributes, HTMLBaseElement.t_0) _React_DetailedHTMLFactory [@@js.get "base"]
    val set_base: t -> (HTMLBaseElement.t_0 _React_BaseHTMLAttributes, HTMLBaseElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "base"]
    val get_bdi: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "bdi"]
    val set_bdi: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "bdi"]
    val get_bdo: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "bdo"]
    val set_bdo: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "bdo"]
    val get_big: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "big"]
    val set_big: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "big"]
    val get_blockquote: t -> (HTMLElement.t_0 _React_BlockquoteHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "blockquote"]
    val set_blockquote: t -> (HTMLElement.t_0 _React_BlockquoteHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "blockquote"]
    val get_body: t -> (HTMLBodyElement.t_0 _React_HTMLAttributes, HTMLBodyElement.t_0) _React_DetailedHTMLFactory [@@js.get "body"]
    val set_body: t -> (HTMLBodyElement.t_0 _React_HTMLAttributes, HTMLBodyElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "body"]
    val get_br: t -> (HTMLBRElement.t_0 _React_HTMLAttributes, HTMLBRElement.t_0) _React_DetailedHTMLFactory [@@js.get "br"]
    val set_br: t -> (HTMLBRElement.t_0 _React_HTMLAttributes, HTMLBRElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "br"]
    val get_button: t -> (HTMLButtonElement.t_0 _React_ButtonHTMLAttributes, HTMLButtonElement.t_0) _React_DetailedHTMLFactory [@@js.get "button"]
    val set_button: t -> (HTMLButtonElement.t_0 _React_ButtonHTMLAttributes, HTMLButtonElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "button"]
    val get_canvas: t -> (HTMLCanvasElement.t_0 _React_CanvasHTMLAttributes, HTMLCanvasElement.t_0) _React_DetailedHTMLFactory [@@js.get "canvas"]
    val set_canvas: t -> (HTMLCanvasElement.t_0 _React_CanvasHTMLAttributes, HTMLCanvasElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "canvas"]
    val get_caption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "caption"]
    val set_caption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "caption"]
    val get_cite: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "cite"]
    val set_cite: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "cite"]
    val get_code: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "code"]
    val set_code: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "code"]
    val get_col: t -> (HTMLTableColElement.t_0 _React_ColHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLFactory [@@js.get "col"]
    val set_col: t -> (HTMLTableColElement.t_0 _React_ColHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "col"]
    val get_colgroup: t -> (HTMLTableColElement.t_0 _React_ColgroupHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLFactory [@@js.get "colgroup"]
    val set_colgroup: t -> (HTMLTableColElement.t_0 _React_ColgroupHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "colgroup"]
    val get_data: t -> (HTMLDataElement.t_0 _React_DataHTMLAttributes, HTMLDataElement.t_0) _React_DetailedHTMLFactory [@@js.get "data"]
    val set_data: t -> (HTMLDataElement.t_0 _React_DataHTMLAttributes, HTMLDataElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "data"]
    val get_datalist: t -> (HTMLDataListElement.t_0 _React_HTMLAttributes, HTMLDataListElement.t_0) _React_DetailedHTMLFactory [@@js.get "datalist"]
    val set_datalist: t -> (HTMLDataListElement.t_0 _React_HTMLAttributes, HTMLDataListElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "datalist"]
    val get_dd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "dd"]
    val set_dd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "dd"]
    val get_del: t -> (HTMLElement.t_0 _React_DelHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "del"]
    val set_del: t -> (HTMLElement.t_0 _React_DelHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "del"]
    val get_details: t -> (HTMLElement.t_0 _React_DetailsHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "details"]
    val set_details: t -> (HTMLElement.t_0 _React_DetailsHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "details"]
    val get_dfn: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "dfn"]
    val set_dfn: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "dfn"]
    val get_dialog: t -> (HTMLDialogElement.t_0 _React_DialogHTMLAttributes, HTMLDialogElement.t_0) _React_DetailedHTMLFactory [@@js.get "dialog"]
    val set_dialog: t -> (HTMLDialogElement.t_0 _React_DialogHTMLAttributes, HTMLDialogElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "dialog"]
    val get_div: t -> (HTMLDivElement.t_0 _React_HTMLAttributes, HTMLDivElement.t_0) _React_DetailedHTMLFactory [@@js.get "div"]
    val set_div: t -> (HTMLDivElement.t_0 _React_HTMLAttributes, HTMLDivElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "div"]
    val get_dl: t -> (HTMLDListElement.t_0 _React_HTMLAttributes, HTMLDListElement.t_0) _React_DetailedHTMLFactory [@@js.get "dl"]
    val set_dl: t -> (HTMLDListElement.t_0 _React_HTMLAttributes, HTMLDListElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "dl"]
    val get_dt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "dt"]
    val set_dt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "dt"]
    val get_em: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "em"]
    val set_em: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "em"]
    val get_embed: t -> (HTMLEmbedElement.t_0 _React_EmbedHTMLAttributes, HTMLEmbedElement.t_0) _React_DetailedHTMLFactory [@@js.get "embed"]
    val set_embed: t -> (HTMLEmbedElement.t_0 _React_EmbedHTMLAttributes, HTMLEmbedElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "embed"]
    val get_fieldset: t -> (HTMLFieldSetElement.t_0 _React_FieldsetHTMLAttributes, HTMLFieldSetElement.t_0) _React_DetailedHTMLFactory [@@js.get "fieldset"]
    val set_fieldset: t -> (HTMLFieldSetElement.t_0 _React_FieldsetHTMLAttributes, HTMLFieldSetElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "fieldset"]
    val get_figcaption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "figcaption"]
    val set_figcaption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "figcaption"]
    val get_figure: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "figure"]
    val set_figure: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "figure"]
    val get_footer: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "footer"]
    val set_footer: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "footer"]
    val get_form: t -> (HTMLFormElement.t_0 _React_FormHTMLAttributes, HTMLFormElement.t_0) _React_DetailedHTMLFactory [@@js.get "form"]
    val set_form: t -> (HTMLFormElement.t_0 _React_FormHTMLAttributes, HTMLFormElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "form"]
    val get_h1: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory [@@js.get "h1"]
    val set_h1: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "h1"]
    val get_h2: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory [@@js.get "h2"]
    val set_h2: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "h2"]
    val get_h3: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory [@@js.get "h3"]
    val set_h3: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "h3"]
    val get_h4: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory [@@js.get "h4"]
    val set_h4: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "h4"]
    val get_h5: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory [@@js.get "h5"]
    val set_h5: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "h5"]
    val get_h6: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory [@@js.get "h6"]
    val set_h6: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "h6"]
    val get_head: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLHeadElement.t_0) _React_DetailedHTMLFactory [@@js.get "head"]
    val set_head: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLHeadElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "head"]
    val get_header: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "header"]
    val set_header: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "header"]
    val get_hgroup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "hgroup"]
    val set_hgroup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "hgroup"]
    val get_hr: t -> (HTMLHRElement.t_0 _React_HTMLAttributes, HTMLHRElement.t_0) _React_DetailedHTMLFactory [@@js.get "hr"]
    val set_hr: t -> (HTMLHRElement.t_0 _React_HTMLAttributes, HTMLHRElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "hr"]
    val get_html: t -> (HTMLHtmlElement.t_0 _React_HtmlHTMLAttributes, HTMLHtmlElement.t_0) _React_DetailedHTMLFactory [@@js.get "html"]
    val set_html: t -> (HTMLHtmlElement.t_0 _React_HtmlHTMLAttributes, HTMLHtmlElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "html"]
    val get_i: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "i"]
    val set_i: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "i"]
    val get_iframe: t -> (HTMLIFrameElement.t_0 _React_IframeHTMLAttributes, HTMLIFrameElement.t_0) _React_DetailedHTMLFactory [@@js.get "iframe"]
    val set_iframe: t -> (HTMLIFrameElement.t_0 _React_IframeHTMLAttributes, HTMLIFrameElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "iframe"]
    val get_img: t -> (HTMLImageElement.t_0 _React_ImgHTMLAttributes, HTMLImageElement.t_0) _React_DetailedHTMLFactory [@@js.get "img"]
    val set_img: t -> (HTMLImageElement.t_0 _React_ImgHTMLAttributes, HTMLImageElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "img"]
    val get_input: t -> (HTMLInputElement.t_0 _React_InputHTMLAttributes, HTMLInputElement.t_0) _React_DetailedHTMLFactory [@@js.get "input"]
    val set_input: t -> (HTMLInputElement.t_0 _React_InputHTMLAttributes, HTMLInputElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "input"]
    val get_ins: t -> (HTMLModElement.t_0 _React_InsHTMLAttributes, HTMLModElement.t_0) _React_DetailedHTMLFactory [@@js.get "ins"]
    val set_ins: t -> (HTMLModElement.t_0 _React_InsHTMLAttributes, HTMLModElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "ins"]
    val get_kbd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "kbd"]
    val set_kbd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "kbd"]
    val get_keygen: t -> (HTMLElement.t_0 _React_KeygenHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "keygen"]
    val set_keygen: t -> (HTMLElement.t_0 _React_KeygenHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "keygen"]
    val get_label: t -> (HTMLLabelElement.t_0 _React_LabelHTMLAttributes, HTMLLabelElement.t_0) _React_DetailedHTMLFactory [@@js.get "label"]
    val set_label: t -> (HTMLLabelElement.t_0 _React_LabelHTMLAttributes, HTMLLabelElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "label"]
    val get_legend: t -> (HTMLLegendElement.t_0 _React_HTMLAttributes, HTMLLegendElement.t_0) _React_DetailedHTMLFactory [@@js.get "legend"]
    val set_legend: t -> (HTMLLegendElement.t_0 _React_HTMLAttributes, HTMLLegendElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "legend"]
    val get_li: t -> (HTMLLIElement.t_0 _React_LiHTMLAttributes, HTMLLIElement.t_0) _React_DetailedHTMLFactory [@@js.get "li"]
    val set_li: t -> (HTMLLIElement.t_0 _React_LiHTMLAttributes, HTMLLIElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "li"]
    val get_link: t -> (HTMLLinkElement.t_0 _React_LinkHTMLAttributes, HTMLLinkElement.t_0) _React_DetailedHTMLFactory [@@js.get "link"]
    val set_link: t -> (HTMLLinkElement.t_0 _React_LinkHTMLAttributes, HTMLLinkElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "link"]
    val get_main: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "main"]
    val set_main: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "main"]
    val get_map: t -> (HTMLMapElement.t_0 _React_MapHTMLAttributes, HTMLMapElement.t_0) _React_DetailedHTMLFactory [@@js.get "map"]
    val set_map: t -> (HTMLMapElement.t_0 _React_MapHTMLAttributes, HTMLMapElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "map"]
    val get_mark: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "mark"]
    val set_mark: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "mark"]
    val get_menu: t -> (HTMLElement.t_0 _React_MenuHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "menu"]
    val set_menu: t -> (HTMLElement.t_0 _React_MenuHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "menu"]
    val get_menuitem: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "menuitem"]
    val set_menuitem: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "menuitem"]
    val get_meta: t -> (HTMLMetaElement.t_0 _React_MetaHTMLAttributes, HTMLMetaElement.t_0) _React_DetailedHTMLFactory [@@js.get "meta"]
    val set_meta: t -> (HTMLMetaElement.t_0 _React_MetaHTMLAttributes, HTMLMetaElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "meta"]
    val get_meter: t -> (HTMLElement.t_0 _React_MeterHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "meter"]
    val set_meter: t -> (HTMLElement.t_0 _React_MeterHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "meter"]
    val get_nav: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "nav"]
    val set_nav: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "nav"]
    val get_noscript: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "noscript"]
    val set_noscript: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "noscript"]
    val get_object: t -> (HTMLObjectElement.t_0 _React_ObjectHTMLAttributes, HTMLObjectElement.t_0) _React_DetailedHTMLFactory [@@js.get "object"]
    val set_object: t -> (HTMLObjectElement.t_0 _React_ObjectHTMLAttributes, HTMLObjectElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "object"]
    val get_ol: t -> (HTMLOListElement.t_0 _React_OlHTMLAttributes, HTMLOListElement.t_0) _React_DetailedHTMLFactory [@@js.get "ol"]
    val set_ol: t -> (HTMLOListElement.t_0 _React_OlHTMLAttributes, HTMLOListElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "ol"]
    val get_optgroup: t -> (HTMLOptGroupElement.t_0 _React_OptgroupHTMLAttributes, HTMLOptGroupElement.t_0) _React_DetailedHTMLFactory [@@js.get "optgroup"]
    val set_optgroup: t -> (HTMLOptGroupElement.t_0 _React_OptgroupHTMLAttributes, HTMLOptGroupElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "optgroup"]
    val get_option: t -> (HTMLOptionElement.t_0 _React_OptionHTMLAttributes, HTMLOptionElement.t_0) _React_DetailedHTMLFactory [@@js.get "option"]
    val set_option: t -> (HTMLOptionElement.t_0 _React_OptionHTMLAttributes, HTMLOptionElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "option"]
    val get_output: t -> (HTMLElement.t_0 _React_OutputHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "output"]
    val set_output: t -> (HTMLElement.t_0 _React_OutputHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "output"]
    val get_p: t -> (HTMLParagraphElement.t_0 _React_HTMLAttributes, HTMLParagraphElement.t_0) _React_DetailedHTMLFactory [@@js.get "p"]
    val set_p: t -> (HTMLParagraphElement.t_0 _React_HTMLAttributes, HTMLParagraphElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "p"]
    val get_param: t -> (HTMLParamElement.t_0 _React_ParamHTMLAttributes, HTMLParamElement.t_0) _React_DetailedHTMLFactory [@@js.get "param"]
    val set_param: t -> (HTMLParamElement.t_0 _React_ParamHTMLAttributes, HTMLParamElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "param"]
    val get_picture: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "picture"]
    val set_picture: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "picture"]
    val get_pre: t -> (HTMLPreElement.t_0 _React_HTMLAttributes, HTMLPreElement.t_0) _React_DetailedHTMLFactory [@@js.get "pre"]
    val set_pre: t -> (HTMLPreElement.t_0 _React_HTMLAttributes, HTMLPreElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "pre"]
    val get_progress: t -> (HTMLProgressElement.t_0 _React_ProgressHTMLAttributes, HTMLProgressElement.t_0) _React_DetailedHTMLFactory [@@js.get "progress"]
    val set_progress: t -> (HTMLProgressElement.t_0 _React_ProgressHTMLAttributes, HTMLProgressElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "progress"]
    val get_q: t -> (HTMLQuoteElement.t_0 _React_QuoteHTMLAttributes, HTMLQuoteElement.t_0) _React_DetailedHTMLFactory [@@js.get "q"]
    val set_q: t -> (HTMLQuoteElement.t_0 _React_QuoteHTMLAttributes, HTMLQuoteElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "q"]
    val get_rp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "rp"]
    val set_rp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "rp"]
    val get_rt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "rt"]
    val set_rt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "rt"]
    val get_ruby: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "ruby"]
    val set_ruby: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "ruby"]
    val get_s: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "s"]
    val set_s: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "s"]
    val get_samp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "samp"]
    val set_samp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "samp"]
    val get_slot: t -> (HTMLSlotElement.t_0 _React_SlotHTMLAttributes, HTMLSlotElement.t_0) _React_DetailedHTMLFactory [@@js.get "slot"]
    val set_slot: t -> (HTMLSlotElement.t_0 _React_SlotHTMLAttributes, HTMLSlotElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "slot"]
    val get_script: t -> (HTMLScriptElement.t_0 _React_ScriptHTMLAttributes, HTMLScriptElement.t_0) _React_DetailedHTMLFactory [@@js.get "script"]
    val set_script: t -> (HTMLScriptElement.t_0 _React_ScriptHTMLAttributes, HTMLScriptElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "script"]
    val get_section: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "section"]
    val set_section: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "section"]
    val get_select: t -> (HTMLSelectElement.t_0 _React_SelectHTMLAttributes, HTMLSelectElement.t_0) _React_DetailedHTMLFactory [@@js.get "select"]
    val set_select: t -> (HTMLSelectElement.t_0 _React_SelectHTMLAttributes, HTMLSelectElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "select"]
    val get_small: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "small"]
    val set_small: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "small"]
    val get_source: t -> (HTMLSourceElement.t_0 _React_SourceHTMLAttributes, HTMLSourceElement.t_0) _React_DetailedHTMLFactory [@@js.get "source"]
    val set_source: t -> (HTMLSourceElement.t_0 _React_SourceHTMLAttributes, HTMLSourceElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "source"]
    val get_span: t -> (HTMLSpanElement.t_0 _React_HTMLAttributes, HTMLSpanElement.t_0) _React_DetailedHTMLFactory [@@js.get "span"]
    val set_span: t -> (HTMLSpanElement.t_0 _React_HTMLAttributes, HTMLSpanElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "span"]
    val get_strong: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "strong"]
    val set_strong: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "strong"]
    val get_style: t -> (HTMLStyleElement.t_0 _React_StyleHTMLAttributes, HTMLStyleElement.t_0) _React_DetailedHTMLFactory [@@js.get "style"]
    val set_style: t -> (HTMLStyleElement.t_0 _React_StyleHTMLAttributes, HTMLStyleElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "style"]
    val get_sub: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "sub"]
    val set_sub: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "sub"]
    val get_summary: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "summary"]
    val set_summary: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "summary"]
    val get_sup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "sup"]
    val set_sup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "sup"]
    val get_table: t -> (HTMLTableElement.t_0 _React_TableHTMLAttributes, HTMLTableElement.t_0) _React_DetailedHTMLFactory [@@js.get "table"]
    val set_table: t -> (HTMLTableElement.t_0 _React_TableHTMLAttributes, HTMLTableElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "table"]
    val get_template: t -> (HTMLTemplateElement.t_0 _React_HTMLAttributes, HTMLTemplateElement.t_0) _React_DetailedHTMLFactory [@@js.get "template"]
    val set_template: t -> (HTMLTemplateElement.t_0 _React_HTMLAttributes, HTMLTemplateElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "template"]
    val get_tbody: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLFactory [@@js.get "tbody"]
    val set_tbody: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "tbody"]
    val get_td: t -> (HTMLTableDataCellElement.t_0 _React_TdHTMLAttributes, HTMLTableDataCellElement.t_0) _React_DetailedHTMLFactory [@@js.get "td"]
    val set_td: t -> (HTMLTableDataCellElement.t_0 _React_TdHTMLAttributes, HTMLTableDataCellElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "td"]
    val get_textarea: t -> (HTMLTextAreaElement.t_0 _React_TextareaHTMLAttributes, HTMLTextAreaElement.t_0) _React_DetailedHTMLFactory [@@js.get "textarea"]
    val set_textarea: t -> (HTMLTextAreaElement.t_0 _React_TextareaHTMLAttributes, HTMLTextAreaElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "textarea"]
    val get_tfoot: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLFactory [@@js.get "tfoot"]
    val set_tfoot: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "tfoot"]
    val get_th: t -> (HTMLTableHeaderCellElement.t_0 _React_ThHTMLAttributes, HTMLTableHeaderCellElement.t_0) _React_DetailedHTMLFactory [@@js.get "th"]
    val set_th: t -> (HTMLTableHeaderCellElement.t_0 _React_ThHTMLAttributes, HTMLTableHeaderCellElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "th"]
    val get_thead: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLFactory [@@js.get "thead"]
    val set_thead: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "thead"]
    val get_time: t -> (HTMLElement.t_0 _React_TimeHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "time"]
    val set_time: t -> (HTMLElement.t_0 _React_TimeHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "time"]
    val get_title: t -> (HTMLTitleElement.t_0 _React_HTMLAttributes, HTMLTitleElement.t_0) _React_DetailedHTMLFactory [@@js.get "title"]
    val set_title: t -> (HTMLTitleElement.t_0 _React_HTMLAttributes, HTMLTitleElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "title"]
    val get_tr: t -> (HTMLTableRowElement.t_0 _React_HTMLAttributes, HTMLTableRowElement.t_0) _React_DetailedHTMLFactory [@@js.get "tr"]
    val set_tr: t -> (HTMLTableRowElement.t_0 _React_HTMLAttributes, HTMLTableRowElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "tr"]
    val get_track: t -> (HTMLTrackElement.t_0 _React_TrackHTMLAttributes, HTMLTrackElement.t_0) _React_DetailedHTMLFactory [@@js.get "track"]
    val set_track: t -> (HTMLTrackElement.t_0 _React_TrackHTMLAttributes, HTMLTrackElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "track"]
    val get_u: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "u"]
    val set_u: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "u"]
    val get_ul: t -> (HTMLUListElement.t_0 _React_HTMLAttributes, HTMLUListElement.t_0) _React_DetailedHTMLFactory [@@js.get "ul"]
    val set_ul: t -> (HTMLUListElement.t_0 _React_HTMLAttributes, HTMLUListElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "ul"]
    val get_var: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "var"]
    val set_var: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "var"]
    val get_video: t -> (HTMLVideoElement.t_0 _React_VideoHTMLAttributes, HTMLVideoElement.t_0) _React_DetailedHTMLFactory [@@js.get "video"]
    val set_video: t -> (HTMLVideoElement.t_0 _React_VideoHTMLAttributes, HTMLVideoElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "video"]
    val get_wbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory [@@js.get "wbr"]
    val set_wbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "wbr"]
    val get_webview: t -> (HTMLWebViewElement.t_0 _React_WebViewHTMLAttributes, HTMLWebViewElement.t_0) _React_DetailedHTMLFactory [@@js.get "webview"]
    val set_webview: t -> (HTMLWebViewElement.t_0 _React_WebViewHTMLAttributes, HTMLWebViewElement.t_0) _React_DetailedHTMLFactory -> unit [@@js.set "webview"]
  end
  module[@js.scope "ReactSVG"] ReactSVG : sig
    type t = _React_ReactSVG
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactSVG]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactSVG]
    ]
    val get_animate: t -> _React_SVGFactory [@@js.get "animate"]
    val set_animate: t -> _React_SVGFactory -> unit [@@js.set "animate"]
    val get_circle: t -> _React_SVGFactory [@@js.get "circle"]
    val set_circle: t -> _React_SVGFactory -> unit [@@js.set "circle"]
    val get_clipPath: t -> _React_SVGFactory [@@js.get "clipPath"]
    val set_clipPath: t -> _React_SVGFactory -> unit [@@js.set "clipPath"]
    val get_defs: t -> _React_SVGFactory [@@js.get "defs"]
    val set_defs: t -> _React_SVGFactory -> unit [@@js.set "defs"]
    val get_desc: t -> _React_SVGFactory [@@js.get "desc"]
    val set_desc: t -> _React_SVGFactory -> unit [@@js.set "desc"]
    val get_ellipse: t -> _React_SVGFactory [@@js.get "ellipse"]
    val set_ellipse: t -> _React_SVGFactory -> unit [@@js.set "ellipse"]
    val get_feBlend: t -> _React_SVGFactory [@@js.get "feBlend"]
    val set_feBlend: t -> _React_SVGFactory -> unit [@@js.set "feBlend"]
    val get_feColorMatrix: t -> _React_SVGFactory [@@js.get "feColorMatrix"]
    val set_feColorMatrix: t -> _React_SVGFactory -> unit [@@js.set "feColorMatrix"]
    val get_feComponentTransfer: t -> _React_SVGFactory [@@js.get "feComponentTransfer"]
    val set_feComponentTransfer: t -> _React_SVGFactory -> unit [@@js.set "feComponentTransfer"]
    val get_feComposite: t -> _React_SVGFactory [@@js.get "feComposite"]
    val set_feComposite: t -> _React_SVGFactory -> unit [@@js.set "feComposite"]
    val get_feConvolveMatrix: t -> _React_SVGFactory [@@js.get "feConvolveMatrix"]
    val set_feConvolveMatrix: t -> _React_SVGFactory -> unit [@@js.set "feConvolveMatrix"]
    val get_feDiffuseLighting: t -> _React_SVGFactory [@@js.get "feDiffuseLighting"]
    val set_feDiffuseLighting: t -> _React_SVGFactory -> unit [@@js.set "feDiffuseLighting"]
    val get_feDisplacementMap: t -> _React_SVGFactory [@@js.get "feDisplacementMap"]
    val set_feDisplacementMap: t -> _React_SVGFactory -> unit [@@js.set "feDisplacementMap"]
    val get_feDistantLight: t -> _React_SVGFactory [@@js.get "feDistantLight"]
    val set_feDistantLight: t -> _React_SVGFactory -> unit [@@js.set "feDistantLight"]
    val get_feDropShadow: t -> _React_SVGFactory [@@js.get "feDropShadow"]
    val set_feDropShadow: t -> _React_SVGFactory -> unit [@@js.set "feDropShadow"]
    val get_feFlood: t -> _React_SVGFactory [@@js.get "feFlood"]
    val set_feFlood: t -> _React_SVGFactory -> unit [@@js.set "feFlood"]
    val get_feFuncA: t -> _React_SVGFactory [@@js.get "feFuncA"]
    val set_feFuncA: t -> _React_SVGFactory -> unit [@@js.set "feFuncA"]
    val get_feFuncB: t -> _React_SVGFactory [@@js.get "feFuncB"]
    val set_feFuncB: t -> _React_SVGFactory -> unit [@@js.set "feFuncB"]
    val get_feFuncG: t -> _React_SVGFactory [@@js.get "feFuncG"]
    val set_feFuncG: t -> _React_SVGFactory -> unit [@@js.set "feFuncG"]
    val get_feFuncR: t -> _React_SVGFactory [@@js.get "feFuncR"]
    val set_feFuncR: t -> _React_SVGFactory -> unit [@@js.set "feFuncR"]
    val get_feGaussianBlur: t -> _React_SVGFactory [@@js.get "feGaussianBlur"]
    val set_feGaussianBlur: t -> _React_SVGFactory -> unit [@@js.set "feGaussianBlur"]
    val get_feImage: t -> _React_SVGFactory [@@js.get "feImage"]
    val set_feImage: t -> _React_SVGFactory -> unit [@@js.set "feImage"]
    val get_feMerge: t -> _React_SVGFactory [@@js.get "feMerge"]
    val set_feMerge: t -> _React_SVGFactory -> unit [@@js.set "feMerge"]
    val get_feMergeNode: t -> _React_SVGFactory [@@js.get "feMergeNode"]
    val set_feMergeNode: t -> _React_SVGFactory -> unit [@@js.set "feMergeNode"]
    val get_feMorphology: t -> _React_SVGFactory [@@js.get "feMorphology"]
    val set_feMorphology: t -> _React_SVGFactory -> unit [@@js.set "feMorphology"]
    val get_feOffset: t -> _React_SVGFactory [@@js.get "feOffset"]
    val set_feOffset: t -> _React_SVGFactory -> unit [@@js.set "feOffset"]
    val get_fePointLight: t -> _React_SVGFactory [@@js.get "fePointLight"]
    val set_fePointLight: t -> _React_SVGFactory -> unit [@@js.set "fePointLight"]
    val get_feSpecularLighting: t -> _React_SVGFactory [@@js.get "feSpecularLighting"]
    val set_feSpecularLighting: t -> _React_SVGFactory -> unit [@@js.set "feSpecularLighting"]
    val get_feSpotLight: t -> _React_SVGFactory [@@js.get "feSpotLight"]
    val set_feSpotLight: t -> _React_SVGFactory -> unit [@@js.set "feSpotLight"]
    val get_feTile: t -> _React_SVGFactory [@@js.get "feTile"]
    val set_feTile: t -> _React_SVGFactory -> unit [@@js.set "feTile"]
    val get_feTurbulence: t -> _React_SVGFactory [@@js.get "feTurbulence"]
    val set_feTurbulence: t -> _React_SVGFactory -> unit [@@js.set "feTurbulence"]
    val get_filter: t -> _React_SVGFactory [@@js.get "filter"]
    val set_filter: t -> _React_SVGFactory -> unit [@@js.set "filter"]
    val get_foreignObject: t -> _React_SVGFactory [@@js.get "foreignObject"]
    val set_foreignObject: t -> _React_SVGFactory -> unit [@@js.set "foreignObject"]
    val get_g: t -> _React_SVGFactory [@@js.get "g"]
    val set_g: t -> _React_SVGFactory -> unit [@@js.set "g"]
    val get_image: t -> _React_SVGFactory [@@js.get "image"]
    val set_image: t -> _React_SVGFactory -> unit [@@js.set "image"]
    val get_line: t -> _React_SVGFactory [@@js.get "line"]
    val set_line: t -> _React_SVGFactory -> unit [@@js.set "line"]
    val get_linearGradient: t -> _React_SVGFactory [@@js.get "linearGradient"]
    val set_linearGradient: t -> _React_SVGFactory -> unit [@@js.set "linearGradient"]
    val get_marker: t -> _React_SVGFactory [@@js.get "marker"]
    val set_marker: t -> _React_SVGFactory -> unit [@@js.set "marker"]
    val get_mask: t -> _React_SVGFactory [@@js.get "mask"]
    val set_mask: t -> _React_SVGFactory -> unit [@@js.set "mask"]
    val get_metadata: t -> _React_SVGFactory [@@js.get "metadata"]
    val set_metadata: t -> _React_SVGFactory -> unit [@@js.set "metadata"]
    val get_path: t -> _React_SVGFactory [@@js.get "path"]
    val set_path: t -> _React_SVGFactory -> unit [@@js.set "path"]
    val get_pattern: t -> _React_SVGFactory [@@js.get "pattern"]
    val set_pattern: t -> _React_SVGFactory -> unit [@@js.set "pattern"]
    val get_polygon: t -> _React_SVGFactory [@@js.get "polygon"]
    val set_polygon: t -> _React_SVGFactory -> unit [@@js.set "polygon"]
    val get_polyline: t -> _React_SVGFactory [@@js.get "polyline"]
    val set_polyline: t -> _React_SVGFactory -> unit [@@js.set "polyline"]
    val get_radialGradient: t -> _React_SVGFactory [@@js.get "radialGradient"]
    val set_radialGradient: t -> _React_SVGFactory -> unit [@@js.set "radialGradient"]
    val get_rect: t -> _React_SVGFactory [@@js.get "rect"]
    val set_rect: t -> _React_SVGFactory -> unit [@@js.set "rect"]
    val get_stop: t -> _React_SVGFactory [@@js.get "stop"]
    val set_stop: t -> _React_SVGFactory -> unit [@@js.set "stop"]
    val get_svg: t -> _React_SVGFactory [@@js.get "svg"]
    val set_svg: t -> _React_SVGFactory -> unit [@@js.set "svg"]
    val get_switch: t -> _React_SVGFactory [@@js.get "switch"]
    val set_switch: t -> _React_SVGFactory -> unit [@@js.set "switch"]
    val get_symbol: t -> _React_SVGFactory [@@js.get "symbol"]
    val set_symbol: t -> _React_SVGFactory -> unit [@@js.set "symbol"]
    val get_text: t -> _React_SVGFactory [@@js.get "text"]
    val set_text: t -> _React_SVGFactory -> unit [@@js.set "text"]
    val get_textPath: t -> _React_SVGFactory [@@js.get "textPath"]
    val set_textPath: t -> _React_SVGFactory -> unit [@@js.set "textPath"]
    val get_tspan: t -> _React_SVGFactory [@@js.get "tspan"]
    val set_tspan: t -> _React_SVGFactory -> unit [@@js.set "tspan"]
    val get_use: t -> _React_SVGFactory [@@js.get "use"]
    val set_use: t -> _React_SVGFactory -> unit [@@js.set "use"]
    val get_view: t -> _React_SVGFactory [@@js.get "view"]
    val set_view: t -> _React_SVGFactory -> unit [@@js.set "view"]
  end
  module[@js.scope "ReactDOM"] ReactDOM : sig
    type t = _React_ReactDOM
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactDOM | `React_ReactHTML | `React_ReactSVG]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactDOM | `React_ReactHTML | `React_ReactSVG]
    ]
    val cast: t -> _React_ReactHTML [@@js.cast]
    val cast': t -> _React_ReactSVG [@@js.cast]
  end
  module Validator : sig
    type 'T t = 'T _React_Validator
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Validator of 'T | PropTypes.Validator.tags]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Validator of 'T | PropTypes.Validator.tags]
    ]
  end
  module Requireable : sig
    type 'T t = 'T _React_Requireable
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_Requireable of 'T | PropTypes.Requireable.tags]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_Requireable of 'T | PropTypes.Requireable.tags]
    ]
  end
  module ValidationMap : sig
    type 'T t = 'T _React_ValidationMap
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_ValidationMap of 'T | PropTypes.ValidationMap.tags]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_ValidationMap of 'T | PropTypes.ValidationMap.tags]
    ]
  end
  module WeakValidationMap : sig
    type 'T t = 'T _React_WeakValidationMap
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    [@@@js.stop]
    type 'T tags = [`React_WeakValidationMap of 'T]
    [@@@js.start]
    [@@@js.implem 
      type 'T tags = [`React_WeakValidationMap of 'T]
    ]
  end
  module[@js.scope "ReactPropTypes"] ReactPropTypes : sig
    type t = _React_ReactPropTypes
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactPropTypes]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactPropTypes]
    ]
    val get_any: t -> (* FIXME: unknown type 'typeof PropTypes.any' *)any [@@js.get "any"]
    val set_any: t -> (* FIXME: unknown type 'typeof PropTypes.any' *)any -> unit [@@js.set "any"]
    val get_array: t -> (* FIXME: unknown type 'typeof PropTypes.array' *)any [@@js.get "array"]
    val set_array: t -> (* FIXME: unknown type 'typeof PropTypes.array' *)any -> unit [@@js.set "array"]
    val get_bool: t -> (* FIXME: unknown type 'typeof PropTypes.bool' *)any [@@js.get "bool"]
    val set_bool: t -> (* FIXME: unknown type 'typeof PropTypes.bool' *)any -> unit [@@js.set "bool"]
    val get_func: t -> (* FIXME: unknown type 'typeof PropTypes.func' *)any [@@js.get "func"]
    val set_func: t -> (* FIXME: unknown type 'typeof PropTypes.func' *)any -> unit [@@js.set "func"]
    val get_number: t -> (* FIXME: unknown type 'typeof PropTypes.number' *)any [@@js.get "number"]
    val set_number: t -> (* FIXME: unknown type 'typeof PropTypes.number' *)any -> unit [@@js.set "number"]
    val get_object: t -> (* FIXME: unknown type 'typeof PropTypes.object' *)any [@@js.get "object"]
    val set_object: t -> (* FIXME: unknown type 'typeof PropTypes.object' *)any -> unit [@@js.set "object"]
    val get_string: t -> (* FIXME: unknown type 'typeof PropTypes.string' *)any [@@js.get "string"]
    val set_string: t -> (* FIXME: unknown type 'typeof PropTypes.string' *)any -> unit [@@js.set "string"]
    val get_node: t -> (* FIXME: unknown type 'typeof PropTypes.node' *)any [@@js.get "node"]
    val set_node: t -> (* FIXME: unknown type 'typeof PropTypes.node' *)any -> unit [@@js.set "node"]
    val get_element: t -> (* FIXME: unknown type 'typeof PropTypes.element' *)any [@@js.get "element"]
    val set_element: t -> (* FIXME: unknown type 'typeof PropTypes.element' *)any -> unit [@@js.set "element"]
    val get_instanceOf: t -> (* FIXME: unknown type 'typeof PropTypes.instanceOf' *)any [@@js.get "instanceOf"]
    val set_instanceOf: t -> (* FIXME: unknown type 'typeof PropTypes.instanceOf' *)any -> unit [@@js.set "instanceOf"]
    val get_oneOf: t -> (* FIXME: unknown type 'typeof PropTypes.oneOf' *)any [@@js.get "oneOf"]
    val set_oneOf: t -> (* FIXME: unknown type 'typeof PropTypes.oneOf' *)any -> unit [@@js.set "oneOf"]
    val get_oneOfType: t -> (* FIXME: unknown type 'typeof PropTypes.oneOfType' *)any [@@js.get "oneOfType"]
    val set_oneOfType: t -> (* FIXME: unknown type 'typeof PropTypes.oneOfType' *)any -> unit [@@js.set "oneOfType"]
    val get_arrayOf: t -> (* FIXME: unknown type 'typeof PropTypes.arrayOf' *)any [@@js.get "arrayOf"]
    val set_arrayOf: t -> (* FIXME: unknown type 'typeof PropTypes.arrayOf' *)any -> unit [@@js.set "arrayOf"]
    val get_objectOf: t -> (* FIXME: unknown type 'typeof PropTypes.objectOf' *)any [@@js.get "objectOf"]
    val set_objectOf: t -> (* FIXME: unknown type 'typeof PropTypes.objectOf' *)any -> unit [@@js.set "objectOf"]
    val get_shape: t -> (* FIXME: unknown type 'typeof PropTypes.shape' *)any [@@js.get "shape"]
    val set_shape: t -> (* FIXME: unknown type 'typeof PropTypes.shape' *)any -> unit [@@js.set "shape"]
    val get_exact: t -> (* FIXME: unknown type 'typeof PropTypes.exact' *)any [@@js.get "exact"]
    val set_exact: t -> (* FIXME: unknown type 'typeof PropTypes.exact' *)any -> unit [@@js.set "exact"]
  end
  module[@js.scope "ReactChildren"] ReactChildren : sig
    type t = _React_ReactChildren
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ReactChildren]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ReactChildren]
    ]
    val map: t -> children:('C, 'C) or_array -> fn:(child:'C -> index:float -> 'T) -> (* FIXME: unknown type 'C extends null | undefined ? C : Array<Exclude<T, boolean | null | undefined>>' *)any [@@js.call "map"]
    val forEach: t -> children:('C, 'C) or_array -> fn:(child:'C -> index:float -> unit) -> unit [@@js.call "forEach"]
    val count: t -> children:any -> float [@@js.call "count"]
    val only: t -> children:'C -> (* FIXME: unknown type 'C extends any[] ? never : C' *)any [@@js.call "only"]
    val toArray: t -> children:(_React_ReactNode, _React_ReactNode) or_array -> (_React_ReactNode, bool or_null_or_undefined) Exclude.t_2 list [@@js.call "toArray"]
  end
  module[@js.scope "AbstractView"] AbstractView : sig
    type t = _React_AbstractView
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_AbstractView]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_AbstractView]
    ]
    val get_styleMedia: t -> StyleMedia.t_0 [@@js.get "styleMedia"]
    val set_styleMedia: t -> StyleMedia.t_0 -> unit [@@js.set "styleMedia"]
    val get_document: t -> Document.t_0 [@@js.get "document"]
    val set_document: t -> Document.t_0 -> unit [@@js.set "document"]
  end
  module[@js.scope "Touch"] Touch : sig
    type t = _React_Touch
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_Touch]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_Touch]
    ]
    val get_identifier: t -> float [@@js.get "identifier"]
    val set_identifier: t -> float -> unit [@@js.set "identifier"]
    val get_target: t -> EventTarget.t_0 [@@js.get "target"]
    val set_target: t -> EventTarget.t_0 -> unit [@@js.set "target"]
    val get_screenX: t -> float [@@js.get "screenX"]
    val set_screenX: t -> float -> unit [@@js.set "screenX"]
    val get_screenY: t -> float [@@js.get "screenY"]
    val set_screenY: t -> float -> unit [@@js.set "screenY"]
    val get_clientX: t -> float [@@js.get "clientX"]
    val set_clientX: t -> float -> unit [@@js.set "clientX"]
    val get_clientY: t -> float [@@js.get "clientY"]
    val set_clientY: t -> float -> unit [@@js.set "clientY"]
    val get_pageX: t -> float [@@js.get "pageX"]
    val set_pageX: t -> float -> unit [@@js.set "pageX"]
    val get_pageY: t -> float [@@js.get "pageY"]
    val set_pageY: t -> float -> unit [@@js.set "pageY"]
  end
  module[@js.scope "TouchList"] TouchList : sig
    type t = _React_TouchList
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_TouchList]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_TouchList]
    ]
    val get: t -> float -> _React_Touch [@@js.index_get]
    val set: t -> float -> _React_Touch -> unit [@@js.index_set]
    val get_length: t -> float [@@js.get "length"]
    val set_length: t -> float -> unit [@@js.set "length"]
    val item: t -> index:float -> _React_Touch [@@js.call "item"]
    val identifiedTouch: t -> identifier:float -> _React_Touch [@@js.call "identifiedTouch"]
  end
  module[@js.scope "ErrorInfo"] ErrorInfo : sig
    type t = _React_ErrorInfo
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    [@@@js.stop]
    type tags = [`React_ErrorInfo]
    [@@@js.start]
    [@@@js.implem 
      type tags = [`React_ErrorInfo]
    ]
    (** Captures which component contained the exception, and its ancestors. *)
    (** Captures which component contained the exception, and its ancestors. *)
    val get_componentStack: t -> string [@@js.get "componentStack"]
    (** Captures which component contained the exception, and its ancestors. *)
    val set_componentStack: t -> string -> unit [@@js.set "componentStack"]
  end
end
module IsExactlyAny : sig
  type 'T t = 'T _IsExactlyAny
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  [@@@js.stop]
  type 'T tags = [`IsExactlyAny of 'T]
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`IsExactlyAny of 'T]
  ]
end
module ExactlyAnyPropertyKeys : sig
  type 'T t = 'T _ExactlyAnyPropertyKeys
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  [@@@js.stop]
  type 'T tags = [`ExactlyAnyPropertyKeys of 'T]
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`ExactlyAnyPropertyKeys of 'T]
  ]
end
module NotExactlyAnyPropertyKeys : sig
  type 'T t = 'T _NotExactlyAnyPropertyKeys
  val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
  val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
  type 'T t_1 = 'T t
  val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
  val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  [@@@js.stop]
  type 'T tags = [`NotExactlyAnyPropertyKeys of 'T | Exclude.tags]
  [@@@js.start]
  [@@@js.implem 
    type 'T tags = [`NotExactlyAnyPropertyKeys of 'T | Exclude.tags]
  ]
end
module MergePropTypes : sig
  type ('P, 'T) t = ('P, 'T) _MergePropTypes
  val t_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t
  type ('P, 'T) t_2 = ('P, 'T) t
  val t_2_to_js: ('P -> Ojs.t) -> ('T -> Ojs.t) -> ('P, 'T) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'T) -> Ojs.t -> ('P, 'T) t_2
  [@@@js.stop]
  type ('P, 'T) tags = [`MergePropTypes of ('P * 'T)]
  [@@@js.start]
  [@@@js.implem 
    type ('P, 'T) tags = [`MergePropTypes of ('P * 'T)]
  ]
end
module Defaultize : sig
  type ('P, 'D) t = ('P, 'D) _Defaultize
  val t_to_js: ('P -> Ojs.t) -> ('D -> Ojs.t) -> ('P, 'D) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'D) -> Ojs.t -> ('P, 'D) t
  type ('P, 'D) t_2 = ('P, 'D) t
  val t_2_to_js: ('P -> Ojs.t) -> ('D -> Ojs.t) -> ('P, 'D) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'D) -> Ojs.t -> ('P, 'D) t_2
  [@@@js.stop]
  type ('P, 'D) tags = [`Defaultize of ('P * 'D)]
  [@@@js.start]
  [@@@js.implem 
    type ('P, 'D) tags = [`Defaultize of ('P * 'D)]
  ]
end
module ReactManagedAttributes : sig
  type ('C, 'P) t = ('C, 'P) _ReactManagedAttributes
  val t_to_js: ('C -> Ojs.t) -> ('P -> Ojs.t) -> ('C, 'P) t -> Ojs.t
  val t_of_js: (Ojs.t -> 'C) -> (Ojs.t -> 'P) -> Ojs.t -> ('C, 'P) t
  type ('C, 'P) t_2 = ('C, 'P) t
  val t_2_to_js: ('C -> Ojs.t) -> ('P -> Ojs.t) -> ('C, 'P) t_2 -> Ojs.t
  val t_2_of_js: (Ojs.t -> 'C) -> (Ojs.t -> 'P) -> Ojs.t -> ('C, 'P) t_2
  [@@@js.stop]
  type ('C, 'P) tags = [`ReactManagedAttributes of ('C * 'P)]
  [@@@js.start]
  [@@@js.implem 
    type ('C, 'P) tags = [`ReactManagedAttributes of ('C * 'P)]
  ]
end
module[@js.scope "global"] Global : sig
  module[@js.scope "JSX"] JSX : sig
    module[@js.scope "Element"] Element : sig
      type t = global_JSX_Element
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      [@@@js.stop]
      type tags = [`React_ReactElement of (any * any) | `Global_JSX_Element]
      [@@@js.start]
      [@@@js.implem 
        type tags = [`React_ReactElement of (any * any) | `Global_JSX_Element]
      ]
      val cast: t -> (any, any) _React_ReactElement [@@js.cast]
    end
    module[@js.scope "ElementClass"] ElementClass : sig
      type t = global_JSX_ElementClass
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      [@@@js.stop]
      type tags = [`React_Component of (any * anonymous_interface_0 * any) | `React_ComponentLifecycle of (any * anonymous_interface_0 * any) | `React_DeprecatedLifecycle of (any * anonymous_interface_0) | `React_NewLifecycle of (any * anonymous_interface_0 * any) | `Global_JSX_ElementClass]
      [@@@js.start]
      [@@@js.implem 
        type tags = [`React_Component of (any * anonymous_interface_0 * any) | `React_ComponentLifecycle of (any * anonymous_interface_0 * any) | `React_DeprecatedLifecycle of (any * anonymous_interface_0) | `React_NewLifecycle of (any * anonymous_interface_0 * any) | `Global_JSX_ElementClass]
      ]
      val render: t -> _React_ReactNode [@@js.call "render"]
      val cast: t -> (any, anonymous_interface_0, any) _React_Component [@@js.cast]
    end
    module[@js.scope "ElementAttributesProperty"] ElementAttributesProperty : sig
      type t = global_JSX_ElementAttributesProperty
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      [@@@js.stop]
      type tags = [`Global_JSX_ElementAttributesProperty]
      [@@@js.start]
      [@@@js.implem 
        type tags = [`Global_JSX_ElementAttributesProperty]
      ]
      val get_props: t -> anonymous_interface_0 [@@js.get "props"]
      val set_props: t -> anonymous_interface_0 -> unit [@@js.set "props"]
    end
    module[@js.scope "ElementChildrenAttribute"] ElementChildrenAttribute : sig
      type t = global_JSX_ElementChildrenAttribute
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      [@@@js.stop]
      type tags = [`Global_JSX_ElementChildrenAttribute]
      [@@@js.start]
      [@@@js.implem 
        type tags = [`Global_JSX_ElementChildrenAttribute]
      ]
      val get_children: t -> anonymous_interface_0 [@@js.get "children"]
      val set_children: t -> anonymous_interface_0 -> unit [@@js.set "children"]
    end
    module LibraryManagedAttributes : sig
      type ('C, 'P) t = ('C, 'P) global_JSX_LibraryManagedAttributes
      val t_to_js: ('C -> Ojs.t) -> ('P -> Ojs.t) -> ('C, 'P) t -> Ojs.t
      val t_of_js: (Ojs.t -> 'C) -> (Ojs.t -> 'P) -> Ojs.t -> ('C, 'P) t
      type ('C, 'P) t_2 = ('C, 'P) t
      val t_2_to_js: ('C -> Ojs.t) -> ('P -> Ojs.t) -> ('C, 'P) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'C) -> (Ojs.t -> 'P) -> Ojs.t -> ('C, 'P) t_2
      [@@@js.stop]
      type ('C, 'P) tags = [`Global_JSX_LibraryManagedAttributes of ('C * 'P)]
      [@@@js.start]
      [@@@js.implem 
        type ('C, 'P) tags = [`Global_JSX_LibraryManagedAttributes of ('C * 'P)]
      ]
    end
    module[@js.scope "IntrinsicAttributes"] IntrinsicAttributes : sig
      type t = global_JSX_IntrinsicAttributes
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      [@@@js.stop]
      type tags = [`React_Attributes | `Global_JSX_IntrinsicAttributes]
      [@@@js.start]
      [@@@js.implem 
        type tags = [`React_Attributes | `Global_JSX_IntrinsicAttributes]
      ]
      val cast: t -> _React_Attributes [@@js.cast]
    end
    module[@js.scope "IntrinsicClassAttributes"] IntrinsicClassAttributes : sig
      type 'T t = 'T global_JSX_IntrinsicClassAttributes
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      [@@@js.stop]
      type 'T tags = [`React_Attributes | `React_ClassAttributes of 'T | `Global_JSX_IntrinsicClassAttributes of 'T]
      [@@@js.start]
      [@@@js.implem 
        type 'T tags = [`React_Attributes | `React_ClassAttributes of 'T | `Global_JSX_IntrinsicClassAttributes of 'T]
      ]
      val cast: 'T t -> 'T _React_ClassAttributes [@@js.cast]
    end
    module[@js.scope "IntrinsicElements"] IntrinsicElements : sig
      type t = global_JSX_IntrinsicElements
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      [@@@js.stop]
      type tags = [`Global_JSX_IntrinsicElements]
      [@@@js.start]
      [@@@js.implem 
        type tags = [`Global_JSX_IntrinsicElements]
      ]
      val get_a: t -> (HTMLAnchorElement.t_0 _React_AnchorHTMLAttributes, HTMLAnchorElement.t_0) _React_DetailedHTMLProps [@@js.get "a"]
      val set_a: t -> (HTMLAnchorElement.t_0 _React_AnchorHTMLAttributes, HTMLAnchorElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "a"]
      val get_abbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "abbr"]
      val set_abbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "abbr"]
      val get_address: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "address"]
      val set_address: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "address"]
      val get_area: t -> (HTMLAreaElement.t_0 _React_AreaHTMLAttributes, HTMLAreaElement.t_0) _React_DetailedHTMLProps [@@js.get "area"]
      val set_area: t -> (HTMLAreaElement.t_0 _React_AreaHTMLAttributes, HTMLAreaElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "area"]
      val get_article: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "article"]
      val set_article: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "article"]
      val get_aside: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "aside"]
      val set_aside: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "aside"]
      val get_audio: t -> (HTMLAudioElement.t_0 _React_AudioHTMLAttributes, HTMLAudioElement.t_0) _React_DetailedHTMLProps [@@js.get "audio"]
      val set_audio: t -> (HTMLAudioElement.t_0 _React_AudioHTMLAttributes, HTMLAudioElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "audio"]
      val get_b: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "b"]
      val set_b: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "b"]
      val get_base: t -> (HTMLBaseElement.t_0 _React_BaseHTMLAttributes, HTMLBaseElement.t_0) _React_DetailedHTMLProps [@@js.get "base"]
      val set_base: t -> (HTMLBaseElement.t_0 _React_BaseHTMLAttributes, HTMLBaseElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "base"]
      val get_bdi: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "bdi"]
      val set_bdi: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "bdi"]
      val get_bdo: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "bdo"]
      val set_bdo: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "bdo"]
      val get_big: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "big"]
      val set_big: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "big"]
      val get_blockquote: t -> (HTMLElement.t_0 _React_BlockquoteHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "blockquote"]
      val set_blockquote: t -> (HTMLElement.t_0 _React_BlockquoteHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "blockquote"]
      val get_body: t -> (HTMLBodyElement.t_0 _React_HTMLAttributes, HTMLBodyElement.t_0) _React_DetailedHTMLProps [@@js.get "body"]
      val set_body: t -> (HTMLBodyElement.t_0 _React_HTMLAttributes, HTMLBodyElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "body"]
      val get_br: t -> (HTMLBRElement.t_0 _React_HTMLAttributes, HTMLBRElement.t_0) _React_DetailedHTMLProps [@@js.get "br"]
      val set_br: t -> (HTMLBRElement.t_0 _React_HTMLAttributes, HTMLBRElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "br"]
      val get_button: t -> (HTMLButtonElement.t_0 _React_ButtonHTMLAttributes, HTMLButtonElement.t_0) _React_DetailedHTMLProps [@@js.get "button"]
      val set_button: t -> (HTMLButtonElement.t_0 _React_ButtonHTMLAttributes, HTMLButtonElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "button"]
      val get_canvas: t -> (HTMLCanvasElement.t_0 _React_CanvasHTMLAttributes, HTMLCanvasElement.t_0) _React_DetailedHTMLProps [@@js.get "canvas"]
      val set_canvas: t -> (HTMLCanvasElement.t_0 _React_CanvasHTMLAttributes, HTMLCanvasElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "canvas"]
      val get_caption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "caption"]
      val set_caption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "caption"]
      val get_cite: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "cite"]
      val set_cite: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "cite"]
      val get_code: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "code"]
      val set_code: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "code"]
      val get_col: t -> (HTMLTableColElement.t_0 _React_ColHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLProps [@@js.get "col"]
      val set_col: t -> (HTMLTableColElement.t_0 _React_ColHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "col"]
      val get_colgroup: t -> (HTMLTableColElement.t_0 _React_ColgroupHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLProps [@@js.get "colgroup"]
      val set_colgroup: t -> (HTMLTableColElement.t_0 _React_ColgroupHTMLAttributes, HTMLTableColElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "colgroup"]
      val get_data: t -> (HTMLDataElement.t_0 _React_DataHTMLAttributes, HTMLDataElement.t_0) _React_DetailedHTMLProps [@@js.get "data"]
      val set_data: t -> (HTMLDataElement.t_0 _React_DataHTMLAttributes, HTMLDataElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "data"]
      val get_datalist: t -> (HTMLDataListElement.t_0 _React_HTMLAttributes, HTMLDataListElement.t_0) _React_DetailedHTMLProps [@@js.get "datalist"]
      val set_datalist: t -> (HTMLDataListElement.t_0 _React_HTMLAttributes, HTMLDataListElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "datalist"]
      val get_dd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "dd"]
      val set_dd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "dd"]
      val get_del: t -> (HTMLElement.t_0 _React_DelHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "del"]
      val set_del: t -> (HTMLElement.t_0 _React_DelHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "del"]
      val get_details: t -> (HTMLElement.t_0 _React_DetailsHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "details"]
      val set_details: t -> (HTMLElement.t_0 _React_DetailsHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "details"]
      val get_dfn: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "dfn"]
      val set_dfn: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "dfn"]
      val get_dialog: t -> (HTMLDialogElement.t_0 _React_DialogHTMLAttributes, HTMLDialogElement.t_0) _React_DetailedHTMLProps [@@js.get "dialog"]
      val set_dialog: t -> (HTMLDialogElement.t_0 _React_DialogHTMLAttributes, HTMLDialogElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "dialog"]
      val get_div: t -> (HTMLDivElement.t_0 _React_HTMLAttributes, HTMLDivElement.t_0) _React_DetailedHTMLProps [@@js.get "div"]
      val set_div: t -> (HTMLDivElement.t_0 _React_HTMLAttributes, HTMLDivElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "div"]
      val get_dl: t -> (HTMLDListElement.t_0 _React_HTMLAttributes, HTMLDListElement.t_0) _React_DetailedHTMLProps [@@js.get "dl"]
      val set_dl: t -> (HTMLDListElement.t_0 _React_HTMLAttributes, HTMLDListElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "dl"]
      val get_dt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "dt"]
      val set_dt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "dt"]
      val get_em: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "em"]
      val set_em: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "em"]
      val get_embed: t -> (HTMLEmbedElement.t_0 _React_EmbedHTMLAttributes, HTMLEmbedElement.t_0) _React_DetailedHTMLProps [@@js.get "embed"]
      val set_embed: t -> (HTMLEmbedElement.t_0 _React_EmbedHTMLAttributes, HTMLEmbedElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "embed"]
      val get_fieldset: t -> (HTMLFieldSetElement.t_0 _React_FieldsetHTMLAttributes, HTMLFieldSetElement.t_0) _React_DetailedHTMLProps [@@js.get "fieldset"]
      val set_fieldset: t -> (HTMLFieldSetElement.t_0 _React_FieldsetHTMLAttributes, HTMLFieldSetElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "fieldset"]
      val get_figcaption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "figcaption"]
      val set_figcaption: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "figcaption"]
      val get_figure: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "figure"]
      val set_figure: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "figure"]
      val get_footer: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "footer"]
      val set_footer: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "footer"]
      val get_form: t -> (HTMLFormElement.t_0 _React_FormHTMLAttributes, HTMLFormElement.t_0) _React_DetailedHTMLProps [@@js.get "form"]
      val set_form: t -> (HTMLFormElement.t_0 _React_FormHTMLAttributes, HTMLFormElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "form"]
      val get_h1: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps [@@js.get "h1"]
      val set_h1: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "h1"]
      val get_h2: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps [@@js.get "h2"]
      val set_h2: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "h2"]
      val get_h3: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps [@@js.get "h3"]
      val set_h3: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "h3"]
      val get_h4: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps [@@js.get "h4"]
      val set_h4: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "h4"]
      val get_h5: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps [@@js.get "h5"]
      val set_h5: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "h5"]
      val get_h6: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps [@@js.get "h6"]
      val set_h6: t -> (HTMLHeadingElement.t_0 _React_HTMLAttributes, HTMLHeadingElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "h6"]
      val get_head: t -> (HTMLHeadElement.t_0 _React_HTMLAttributes, HTMLHeadElement.t_0) _React_DetailedHTMLProps [@@js.get "head"]
      val set_head: t -> (HTMLHeadElement.t_0 _React_HTMLAttributes, HTMLHeadElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "head"]
      val get_header: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "header"]
      val set_header: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "header"]
      val get_hgroup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "hgroup"]
      val set_hgroup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "hgroup"]
      val get_hr: t -> (HTMLHRElement.t_0 _React_HTMLAttributes, HTMLHRElement.t_0) _React_DetailedHTMLProps [@@js.get "hr"]
      val set_hr: t -> (HTMLHRElement.t_0 _React_HTMLAttributes, HTMLHRElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "hr"]
      val get_html: t -> (HTMLHtmlElement.t_0 _React_HtmlHTMLAttributes, HTMLHtmlElement.t_0) _React_DetailedHTMLProps [@@js.get "html"]
      val set_html: t -> (HTMLHtmlElement.t_0 _React_HtmlHTMLAttributes, HTMLHtmlElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "html"]
      val get_i: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "i"]
      val set_i: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "i"]
      val get_iframe: t -> (HTMLIFrameElement.t_0 _React_IframeHTMLAttributes, HTMLIFrameElement.t_0) _React_DetailedHTMLProps [@@js.get "iframe"]
      val set_iframe: t -> (HTMLIFrameElement.t_0 _React_IframeHTMLAttributes, HTMLIFrameElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "iframe"]
      val get_img: t -> (HTMLImageElement.t_0 _React_ImgHTMLAttributes, HTMLImageElement.t_0) _React_DetailedHTMLProps [@@js.get "img"]
      val set_img: t -> (HTMLImageElement.t_0 _React_ImgHTMLAttributes, HTMLImageElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "img"]
      val get_input: t -> (HTMLInputElement.t_0 _React_InputHTMLAttributes, HTMLInputElement.t_0) _React_DetailedHTMLProps [@@js.get "input"]
      val set_input: t -> (HTMLInputElement.t_0 _React_InputHTMLAttributes, HTMLInputElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "input"]
      val get_ins: t -> (HTMLModElement.t_0 _React_InsHTMLAttributes, HTMLModElement.t_0) _React_DetailedHTMLProps [@@js.get "ins"]
      val set_ins: t -> (HTMLModElement.t_0 _React_InsHTMLAttributes, HTMLModElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "ins"]
      val get_kbd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "kbd"]
      val set_kbd: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "kbd"]
      val get_keygen: t -> (HTMLElement.t_0 _React_KeygenHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "keygen"]
      val set_keygen: t -> (HTMLElement.t_0 _React_KeygenHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "keygen"]
      val get_label: t -> (HTMLLabelElement.t_0 _React_LabelHTMLAttributes, HTMLLabelElement.t_0) _React_DetailedHTMLProps [@@js.get "label"]
      val set_label: t -> (HTMLLabelElement.t_0 _React_LabelHTMLAttributes, HTMLLabelElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "label"]
      val get_legend: t -> (HTMLLegendElement.t_0 _React_HTMLAttributes, HTMLLegendElement.t_0) _React_DetailedHTMLProps [@@js.get "legend"]
      val set_legend: t -> (HTMLLegendElement.t_0 _React_HTMLAttributes, HTMLLegendElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "legend"]
      val get_li: t -> (HTMLLIElement.t_0 _React_LiHTMLAttributes, HTMLLIElement.t_0) _React_DetailedHTMLProps [@@js.get "li"]
      val set_li: t -> (HTMLLIElement.t_0 _React_LiHTMLAttributes, HTMLLIElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "li"]
      val get_link: t -> (HTMLLinkElement.t_0 _React_LinkHTMLAttributes, HTMLLinkElement.t_0) _React_DetailedHTMLProps [@@js.get "link"]
      val set_link: t -> (HTMLLinkElement.t_0 _React_LinkHTMLAttributes, HTMLLinkElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "link"]
      val get_main: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "main"]
      val set_main: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "main"]
      val get_map: t -> (HTMLMapElement.t_0 _React_MapHTMLAttributes, HTMLMapElement.t_0) _React_DetailedHTMLProps [@@js.get "map"]
      val set_map: t -> (HTMLMapElement.t_0 _React_MapHTMLAttributes, HTMLMapElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "map"]
      val get_mark: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "mark"]
      val set_mark: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "mark"]
      val get_menu: t -> (HTMLElement.t_0 _React_MenuHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "menu"]
      val set_menu: t -> (HTMLElement.t_0 _React_MenuHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "menu"]
      val get_menuitem: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "menuitem"]
      val set_menuitem: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "menuitem"]
      val get_meta: t -> (HTMLMetaElement.t_0 _React_MetaHTMLAttributes, HTMLMetaElement.t_0) _React_DetailedHTMLProps [@@js.get "meta"]
      val set_meta: t -> (HTMLMetaElement.t_0 _React_MetaHTMLAttributes, HTMLMetaElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "meta"]
      val get_meter: t -> (HTMLElement.t_0 _React_MeterHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "meter"]
      val set_meter: t -> (HTMLElement.t_0 _React_MeterHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "meter"]
      val get_nav: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "nav"]
      val set_nav: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "nav"]
      val get_noindex: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "noindex"]
      val set_noindex: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "noindex"]
      val get_noscript: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "noscript"]
      val set_noscript: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "noscript"]
      val get_object: t -> (HTMLObjectElement.t_0 _React_ObjectHTMLAttributes, HTMLObjectElement.t_0) _React_DetailedHTMLProps [@@js.get "object"]
      val set_object: t -> (HTMLObjectElement.t_0 _React_ObjectHTMLAttributes, HTMLObjectElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "object"]
      val get_ol: t -> (HTMLOListElement.t_0 _React_OlHTMLAttributes, HTMLOListElement.t_0) _React_DetailedHTMLProps [@@js.get "ol"]
      val set_ol: t -> (HTMLOListElement.t_0 _React_OlHTMLAttributes, HTMLOListElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "ol"]
      val get_optgroup: t -> (HTMLOptGroupElement.t_0 _React_OptgroupHTMLAttributes, HTMLOptGroupElement.t_0) _React_DetailedHTMLProps [@@js.get "optgroup"]
      val set_optgroup: t -> (HTMLOptGroupElement.t_0 _React_OptgroupHTMLAttributes, HTMLOptGroupElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "optgroup"]
      val get_option: t -> (HTMLOptionElement.t_0 _React_OptionHTMLAttributes, HTMLOptionElement.t_0) _React_DetailedHTMLProps [@@js.get "option"]
      val set_option: t -> (HTMLOptionElement.t_0 _React_OptionHTMLAttributes, HTMLOptionElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "option"]
      val get_output: t -> (HTMLElement.t_0 _React_OutputHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "output"]
      val set_output: t -> (HTMLElement.t_0 _React_OutputHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "output"]
      val get_p: t -> (HTMLParagraphElement.t_0 _React_HTMLAttributes, HTMLParagraphElement.t_0) _React_DetailedHTMLProps [@@js.get "p"]
      val set_p: t -> (HTMLParagraphElement.t_0 _React_HTMLAttributes, HTMLParagraphElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "p"]
      val get_param: t -> (HTMLParamElement.t_0 _React_ParamHTMLAttributes, HTMLParamElement.t_0) _React_DetailedHTMLProps [@@js.get "param"]
      val set_param: t -> (HTMLParamElement.t_0 _React_ParamHTMLAttributes, HTMLParamElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "param"]
      val get_picture: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "picture"]
      val set_picture: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "picture"]
      val get_pre: t -> (HTMLPreElement.t_0 _React_HTMLAttributes, HTMLPreElement.t_0) _React_DetailedHTMLProps [@@js.get "pre"]
      val set_pre: t -> (HTMLPreElement.t_0 _React_HTMLAttributes, HTMLPreElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "pre"]
      val get_progress: t -> (HTMLProgressElement.t_0 _React_ProgressHTMLAttributes, HTMLProgressElement.t_0) _React_DetailedHTMLProps [@@js.get "progress"]
      val set_progress: t -> (HTMLProgressElement.t_0 _React_ProgressHTMLAttributes, HTMLProgressElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "progress"]
      val get_q: t -> (HTMLQuoteElement.t_0 _React_QuoteHTMLAttributes, HTMLQuoteElement.t_0) _React_DetailedHTMLProps [@@js.get "q"]
      val set_q: t -> (HTMLQuoteElement.t_0 _React_QuoteHTMLAttributes, HTMLQuoteElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "q"]
      val get_rp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "rp"]
      val set_rp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "rp"]
      val get_rt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "rt"]
      val set_rt: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "rt"]
      val get_ruby: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "ruby"]
      val set_ruby: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "ruby"]
      val get_s: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "s"]
      val set_s: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "s"]
      val get_samp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "samp"]
      val set_samp: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "samp"]
      val get_slot: t -> (HTMLSlotElement.t_0 _React_SlotHTMLAttributes, HTMLSlotElement.t_0) _React_DetailedHTMLProps [@@js.get "slot"]
      val set_slot: t -> (HTMLSlotElement.t_0 _React_SlotHTMLAttributes, HTMLSlotElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "slot"]
      val get_script: t -> (HTMLScriptElement.t_0 _React_ScriptHTMLAttributes, HTMLScriptElement.t_0) _React_DetailedHTMLProps [@@js.get "script"]
      val set_script: t -> (HTMLScriptElement.t_0 _React_ScriptHTMLAttributes, HTMLScriptElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "script"]
      val get_section: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "section"]
      val set_section: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "section"]
      val get_select: t -> (HTMLSelectElement.t_0 _React_SelectHTMLAttributes, HTMLSelectElement.t_0) _React_DetailedHTMLProps [@@js.get "select"]
      val set_select: t -> (HTMLSelectElement.t_0 _React_SelectHTMLAttributes, HTMLSelectElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "select"]
      val get_small: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "small"]
      val set_small: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "small"]
      val get_source: t -> (HTMLSourceElement.t_0 _React_SourceHTMLAttributes, HTMLSourceElement.t_0) _React_DetailedHTMLProps [@@js.get "source"]
      val set_source: t -> (HTMLSourceElement.t_0 _React_SourceHTMLAttributes, HTMLSourceElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "source"]
      val get_span: t -> (HTMLSpanElement.t_0 _React_HTMLAttributes, HTMLSpanElement.t_0) _React_DetailedHTMLProps [@@js.get "span"]
      val set_span: t -> (HTMLSpanElement.t_0 _React_HTMLAttributes, HTMLSpanElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "span"]
      val get_strong: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "strong"]
      val set_strong: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "strong"]
      val get_style: t -> (HTMLStyleElement.t_0 _React_StyleHTMLAttributes, HTMLStyleElement.t_0) _React_DetailedHTMLProps [@@js.get "style"]
      val set_style: t -> (HTMLStyleElement.t_0 _React_StyleHTMLAttributes, HTMLStyleElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "style"]
      val get_sub: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "sub"]
      val set_sub: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "sub"]
      val get_summary: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "summary"]
      val set_summary: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "summary"]
      val get_sup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "sup"]
      val set_sup: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "sup"]
      val get_table: t -> (HTMLTableElement.t_0 _React_TableHTMLAttributes, HTMLTableElement.t_0) _React_DetailedHTMLProps [@@js.get "table"]
      val set_table: t -> (HTMLTableElement.t_0 _React_TableHTMLAttributes, HTMLTableElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "table"]
      val get_template: t -> (HTMLTemplateElement.t_0 _React_HTMLAttributes, HTMLTemplateElement.t_0) _React_DetailedHTMLProps [@@js.get "template"]
      val set_template: t -> (HTMLTemplateElement.t_0 _React_HTMLAttributes, HTMLTemplateElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "template"]
      val get_tbody: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLProps [@@js.get "tbody"]
      val set_tbody: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "tbody"]
      val get_td: t -> (HTMLTableDataCellElement.t_0 _React_TdHTMLAttributes, HTMLTableDataCellElement.t_0) _React_DetailedHTMLProps [@@js.get "td"]
      val set_td: t -> (HTMLTableDataCellElement.t_0 _React_TdHTMLAttributes, HTMLTableDataCellElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "td"]
      val get_textarea: t -> (HTMLTextAreaElement.t_0 _React_TextareaHTMLAttributes, HTMLTextAreaElement.t_0) _React_DetailedHTMLProps [@@js.get "textarea"]
      val set_textarea: t -> (HTMLTextAreaElement.t_0 _React_TextareaHTMLAttributes, HTMLTextAreaElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "textarea"]
      val get_tfoot: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLProps [@@js.get "tfoot"]
      val set_tfoot: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "tfoot"]
      val get_th: t -> (HTMLTableHeaderCellElement.t_0 _React_ThHTMLAttributes, HTMLTableHeaderCellElement.t_0) _React_DetailedHTMLProps [@@js.get "th"]
      val set_th: t -> (HTMLTableHeaderCellElement.t_0 _React_ThHTMLAttributes, HTMLTableHeaderCellElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "th"]
      val get_thead: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLProps [@@js.get "thead"]
      val set_thead: t -> (HTMLTableSectionElement.t_0 _React_HTMLAttributes, HTMLTableSectionElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "thead"]
      val get_time: t -> (HTMLElement.t_0 _React_TimeHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "time"]
      val set_time: t -> (HTMLElement.t_0 _React_TimeHTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "time"]
      val get_title: t -> (HTMLTitleElement.t_0 _React_HTMLAttributes, HTMLTitleElement.t_0) _React_DetailedHTMLProps [@@js.get "title"]
      val set_title: t -> (HTMLTitleElement.t_0 _React_HTMLAttributes, HTMLTitleElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "title"]
      val get_tr: t -> (HTMLTableRowElement.t_0 _React_HTMLAttributes, HTMLTableRowElement.t_0) _React_DetailedHTMLProps [@@js.get "tr"]
      val set_tr: t -> (HTMLTableRowElement.t_0 _React_HTMLAttributes, HTMLTableRowElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "tr"]
      val get_track: t -> (HTMLTrackElement.t_0 _React_TrackHTMLAttributes, HTMLTrackElement.t_0) _React_DetailedHTMLProps [@@js.get "track"]
      val set_track: t -> (HTMLTrackElement.t_0 _React_TrackHTMLAttributes, HTMLTrackElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "track"]
      val get_u: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "u"]
      val set_u: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "u"]
      val get_ul: t -> (HTMLUListElement.t_0 _React_HTMLAttributes, HTMLUListElement.t_0) _React_DetailedHTMLProps [@@js.get "ul"]
      val set_ul: t -> (HTMLUListElement.t_0 _React_HTMLAttributes, HTMLUListElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "ul"]
      val get_var: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "var"]
      val set_var: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "var"]
      val get_video: t -> (HTMLVideoElement.t_0 _React_VideoHTMLAttributes, HTMLVideoElement.t_0) _React_DetailedHTMLProps [@@js.get "video"]
      val set_video: t -> (HTMLVideoElement.t_0 _React_VideoHTMLAttributes, HTMLVideoElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "video"]
      val get_wbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps [@@js.get "wbr"]
      val set_wbr: t -> (HTMLElement.t_0 _React_HTMLAttributes, HTMLElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "wbr"]
      val get_webview: t -> (HTMLWebViewElement.t_0 _React_WebViewHTMLAttributes, HTMLWebViewElement.t_0) _React_DetailedHTMLProps [@@js.get "webview"]
      val set_webview: t -> (HTMLWebViewElement.t_0 _React_WebViewHTMLAttributes, HTMLWebViewElement.t_0) _React_DetailedHTMLProps -> unit [@@js.set "webview"]
      val get_svg: t -> SVGSVGElement.t_0 _React_SVGProps [@@js.get "svg"]
      val set_svg: t -> SVGSVGElement.t_0 _React_SVGProps -> unit [@@js.set "svg"]
      val get_animate: t -> SVGElement.t_0 _React_SVGProps [@@js.get "animate"]
      val set_animate: t -> SVGElement.t_0 _React_SVGProps -> unit [@@js.set "animate"]
      val get_animateMotion: t -> SVGElement.t_0 _React_SVGProps [@@js.get "animateMotion"]
      val set_animateMotion: t -> SVGElement.t_0 _React_SVGProps -> unit [@@js.set "animateMotion"]
      val get_animateTransform: t -> SVGElement.t_0 _React_SVGProps [@@js.get "animateTransform"]
      val set_animateTransform: t -> SVGElement.t_0 _React_SVGProps -> unit [@@js.set "animateTransform"]
      val get_circle: t -> SVGCircleElement.t_0 _React_SVGProps [@@js.get "circle"]
      val set_circle: t -> SVGCircleElement.t_0 _React_SVGProps -> unit [@@js.set "circle"]
      val get_clipPath: t -> SVGClipPathElement.t_0 _React_SVGProps [@@js.get "clipPath"]
      val set_clipPath: t -> SVGClipPathElement.t_0 _React_SVGProps -> unit [@@js.set "clipPath"]
      val get_defs: t -> SVGDefsElement.t_0 _React_SVGProps [@@js.get "defs"]
      val set_defs: t -> SVGDefsElement.t_0 _React_SVGProps -> unit [@@js.set "defs"]
      val get_desc: t -> SVGDescElement.t_0 _React_SVGProps [@@js.get "desc"]
      val set_desc: t -> SVGDescElement.t_0 _React_SVGProps -> unit [@@js.set "desc"]
      val get_ellipse: t -> SVGEllipseElement.t_0 _React_SVGProps [@@js.get "ellipse"]
      val set_ellipse: t -> SVGEllipseElement.t_0 _React_SVGProps -> unit [@@js.set "ellipse"]
      val get_feBlend: t -> SVGFEBlendElement.t_0 _React_SVGProps [@@js.get "feBlend"]
      val set_feBlend: t -> SVGFEBlendElement.t_0 _React_SVGProps -> unit [@@js.set "feBlend"]
      val get_feColorMatrix: t -> SVGFEColorMatrixElement.t_0 _React_SVGProps [@@js.get "feColorMatrix"]
      val set_feColorMatrix: t -> SVGFEColorMatrixElement.t_0 _React_SVGProps -> unit [@@js.set "feColorMatrix"]
      val get_feComponentTransfer: t -> SVGFEComponentTransferElement.t_0 _React_SVGProps [@@js.get "feComponentTransfer"]
      val set_feComponentTransfer: t -> SVGFEComponentTransferElement.t_0 _React_SVGProps -> unit [@@js.set "feComponentTransfer"]
      val get_feComposite: t -> SVGFECompositeElement.t_0 _React_SVGProps [@@js.get "feComposite"]
      val set_feComposite: t -> SVGFECompositeElement.t_0 _React_SVGProps -> unit [@@js.set "feComposite"]
      val get_feConvolveMatrix: t -> SVGFEConvolveMatrixElement.t_0 _React_SVGProps [@@js.get "feConvolveMatrix"]
      val set_feConvolveMatrix: t -> SVGFEConvolveMatrixElement.t_0 _React_SVGProps -> unit [@@js.set "feConvolveMatrix"]
      val get_feDiffuseLighting: t -> SVGFEDiffuseLightingElement.t_0 _React_SVGProps [@@js.get "feDiffuseLighting"]
      val set_feDiffuseLighting: t -> SVGFEDiffuseLightingElement.t_0 _React_SVGProps -> unit [@@js.set "feDiffuseLighting"]
      val get_feDisplacementMap: t -> SVGFEDisplacementMapElement.t_0 _React_SVGProps [@@js.get "feDisplacementMap"]
      val set_feDisplacementMap: t -> SVGFEDisplacementMapElement.t_0 _React_SVGProps -> unit [@@js.set "feDisplacementMap"]
      val get_feDistantLight: t -> SVGFEDistantLightElement.t_0 _React_SVGProps [@@js.get "feDistantLight"]
      val set_feDistantLight: t -> SVGFEDistantLightElement.t_0 _React_SVGProps -> unit [@@js.set "feDistantLight"]
      val get_feDropShadow: t -> SVGFEDropShadowElement.t_0 _React_SVGProps [@@js.get "feDropShadow"]
      val set_feDropShadow: t -> SVGFEDropShadowElement.t_0 _React_SVGProps -> unit [@@js.set "feDropShadow"]
      val get_feFlood: t -> SVGFEFloodElement.t_0 _React_SVGProps [@@js.get "feFlood"]
      val set_feFlood: t -> SVGFEFloodElement.t_0 _React_SVGProps -> unit [@@js.set "feFlood"]
      val get_feFuncA: t -> SVGFEFuncAElement.t_0 _React_SVGProps [@@js.get "feFuncA"]
      val set_feFuncA: t -> SVGFEFuncAElement.t_0 _React_SVGProps -> unit [@@js.set "feFuncA"]
      val get_feFuncB: t -> SVGFEFuncBElement.t_0 _React_SVGProps [@@js.get "feFuncB"]
      val set_feFuncB: t -> SVGFEFuncBElement.t_0 _React_SVGProps -> unit [@@js.set "feFuncB"]
      val get_feFuncG: t -> SVGFEFuncGElement.t_0 _React_SVGProps [@@js.get "feFuncG"]
      val set_feFuncG: t -> SVGFEFuncGElement.t_0 _React_SVGProps -> unit [@@js.set "feFuncG"]
      val get_feFuncR: t -> SVGFEFuncRElement.t_0 _React_SVGProps [@@js.get "feFuncR"]
      val set_feFuncR: t -> SVGFEFuncRElement.t_0 _React_SVGProps -> unit [@@js.set "feFuncR"]
      val get_feGaussianBlur: t -> SVGFEGaussianBlurElement.t_0 _React_SVGProps [@@js.get "feGaussianBlur"]
      val set_feGaussianBlur: t -> SVGFEGaussianBlurElement.t_0 _React_SVGProps -> unit [@@js.set "feGaussianBlur"]
      val get_feImage: t -> SVGFEImageElement.t_0 _React_SVGProps [@@js.get "feImage"]
      val set_feImage: t -> SVGFEImageElement.t_0 _React_SVGProps -> unit [@@js.set "feImage"]
      val get_feMerge: t -> SVGFEMergeElement.t_0 _React_SVGProps [@@js.get "feMerge"]
      val set_feMerge: t -> SVGFEMergeElement.t_0 _React_SVGProps -> unit [@@js.set "feMerge"]
      val get_feMergeNode: t -> SVGFEMergeNodeElement.t_0 _React_SVGProps [@@js.get "feMergeNode"]
      val set_feMergeNode: t -> SVGFEMergeNodeElement.t_0 _React_SVGProps -> unit [@@js.set "feMergeNode"]
      val get_feMorphology: t -> SVGFEMorphologyElement.t_0 _React_SVGProps [@@js.get "feMorphology"]
      val set_feMorphology: t -> SVGFEMorphologyElement.t_0 _React_SVGProps -> unit [@@js.set "feMorphology"]
      val get_feOffset: t -> SVGFEOffsetElement.t_0 _React_SVGProps [@@js.get "feOffset"]
      val set_feOffset: t -> SVGFEOffsetElement.t_0 _React_SVGProps -> unit [@@js.set "feOffset"]
      val get_fePointLight: t -> SVGFEPointLightElement.t_0 _React_SVGProps [@@js.get "fePointLight"]
      val set_fePointLight: t -> SVGFEPointLightElement.t_0 _React_SVGProps -> unit [@@js.set "fePointLight"]
      val get_feSpecularLighting: t -> SVGFESpecularLightingElement.t_0 _React_SVGProps [@@js.get "feSpecularLighting"]
      val set_feSpecularLighting: t -> SVGFESpecularLightingElement.t_0 _React_SVGProps -> unit [@@js.set "feSpecularLighting"]
      val get_feSpotLight: t -> SVGFESpotLightElement.t_0 _React_SVGProps [@@js.get "feSpotLight"]
      val set_feSpotLight: t -> SVGFESpotLightElement.t_0 _React_SVGProps -> unit [@@js.set "feSpotLight"]
      val get_feTile: t -> SVGFETileElement.t_0 _React_SVGProps [@@js.get "feTile"]
      val set_feTile: t -> SVGFETileElement.t_0 _React_SVGProps -> unit [@@js.set "feTile"]
      val get_feTurbulence: t -> SVGFETurbulenceElement.t_0 _React_SVGProps [@@js.get "feTurbulence"]
      val set_feTurbulence: t -> SVGFETurbulenceElement.t_0 _React_SVGProps -> unit [@@js.set "feTurbulence"]
      val get_filter: t -> SVGFilterElement.t_0 _React_SVGProps [@@js.get "filter"]
      val set_filter: t -> SVGFilterElement.t_0 _React_SVGProps -> unit [@@js.set "filter"]
      val get_foreignObject: t -> SVGForeignObjectElement.t_0 _React_SVGProps [@@js.get "foreignObject"]
      val set_foreignObject: t -> SVGForeignObjectElement.t_0 _React_SVGProps -> unit [@@js.set "foreignObject"]
      val get_g: t -> SVGGElement.t_0 _React_SVGProps [@@js.get "g"]
      val set_g: t -> SVGGElement.t_0 _React_SVGProps -> unit [@@js.set "g"]
      val get_image: t -> SVGImageElement.t_0 _React_SVGProps [@@js.get "image"]
      val set_image: t -> SVGImageElement.t_0 _React_SVGProps -> unit [@@js.set "image"]
      val get_line: t -> SVGLineElement.t_0 _React_SVGProps [@@js.get "line"]
      val set_line: t -> SVGLineElement.t_0 _React_SVGProps -> unit [@@js.set "line"]
      val get_linearGradient: t -> SVGLinearGradientElement.t_0 _React_SVGProps [@@js.get "linearGradient"]
      val set_linearGradient: t -> SVGLinearGradientElement.t_0 _React_SVGProps -> unit [@@js.set "linearGradient"]
      val get_marker: t -> SVGMarkerElement.t_0 _React_SVGProps [@@js.get "marker"]
      val set_marker: t -> SVGMarkerElement.t_0 _React_SVGProps -> unit [@@js.set "marker"]
      val get_mask: t -> SVGMaskElement.t_0 _React_SVGProps [@@js.get "mask"]
      val set_mask: t -> SVGMaskElement.t_0 _React_SVGProps -> unit [@@js.set "mask"]
      val get_metadata: t -> SVGMetadataElement.t_0 _React_SVGProps [@@js.get "metadata"]
      val set_metadata: t -> SVGMetadataElement.t_0 _React_SVGProps -> unit [@@js.set "metadata"]
      val get_mpath: t -> SVGElement.t_0 _React_SVGProps [@@js.get "mpath"]
      val set_mpath: t -> SVGElement.t_0 _React_SVGProps -> unit [@@js.set "mpath"]
      val get_path: t -> SVGPathElement.t_0 _React_SVGProps [@@js.get "path"]
      val set_path: t -> SVGPathElement.t_0 _React_SVGProps -> unit [@@js.set "path"]
      val get_pattern: t -> SVGPatternElement.t_0 _React_SVGProps [@@js.get "pattern"]
      val set_pattern: t -> SVGPatternElement.t_0 _React_SVGProps -> unit [@@js.set "pattern"]
      val get_polygon: t -> SVGPolygonElement.t_0 _React_SVGProps [@@js.get "polygon"]
      val set_polygon: t -> SVGPolygonElement.t_0 _React_SVGProps -> unit [@@js.set "polygon"]
      val get_polyline: t -> SVGPolylineElement.t_0 _React_SVGProps [@@js.get "polyline"]
      val set_polyline: t -> SVGPolylineElement.t_0 _React_SVGProps -> unit [@@js.set "polyline"]
      val get_radialGradient: t -> SVGRadialGradientElement.t_0 _React_SVGProps [@@js.get "radialGradient"]
      val set_radialGradient: t -> SVGRadialGradientElement.t_0 _React_SVGProps -> unit [@@js.set "radialGradient"]
      val get_rect: t -> SVGRectElement.t_0 _React_SVGProps [@@js.get "rect"]
      val set_rect: t -> SVGRectElement.t_0 _React_SVGProps -> unit [@@js.set "rect"]
      val get_stop: t -> SVGStopElement.t_0 _React_SVGProps [@@js.get "stop"]
      val set_stop: t -> SVGStopElement.t_0 _React_SVGProps -> unit [@@js.set "stop"]
      val get_switch: t -> SVGSwitchElement.t_0 _React_SVGProps [@@js.get "switch"]
      val set_switch: t -> SVGSwitchElement.t_0 _React_SVGProps -> unit [@@js.set "switch"]
      val get_symbol: t -> SVGSymbolElement.t_0 _React_SVGProps [@@js.get "symbol"]
      val set_symbol: t -> SVGSymbolElement.t_0 _React_SVGProps -> unit [@@js.set "symbol"]
      val get_text: t -> SVGTextElement.t_0 _React_SVGProps [@@js.get "text"]
      val set_text: t -> SVGTextElement.t_0 _React_SVGProps -> unit [@@js.set "text"]
      val get_textPath: t -> SVGTextPathElement.t_0 _React_SVGProps [@@js.get "textPath"]
      val set_textPath: t -> SVGTextPathElement.t_0 _React_SVGProps -> unit [@@js.set "textPath"]
      val get_tspan: t -> SVGTSpanElement.t_0 _React_SVGProps [@@js.get "tspan"]
      val set_tspan: t -> SVGTSpanElement.t_0 _React_SVGProps -> unit [@@js.set "tspan"]
      val get_use: t -> SVGUseElement.t_0 _React_SVGProps [@@js.get "use"]
      val set_use: t -> SVGUseElement.t_0 _React_SVGProps -> unit [@@js.set "use"]
      val get_view: t -> SVGViewElement.t_0 _React_SVGProps [@@js.get "view"]
      val set_view: t -> SVGViewElement.t_0 _React_SVGProps -> unit [@@js.set "view"]
    end
  end
end
