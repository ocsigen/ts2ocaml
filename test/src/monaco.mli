[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]

  let _imports = Ts2ocaml_baselib.pure_js_expr "require('monaco-editor')"
]

[@@@js.scope _imports]

open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Element
  - Error
  - HTMLElement
  - KeyboardEvent
  - MouseEvent
 *)
[@@@js.stop]
module type Missing = sig
  module Element : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Error : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module HTMLElement : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
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
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Element : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Error : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HTMLElement : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
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
      type anonymous_interface_8 = [`anonymous_interface_8] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_9 = [`anonymous_interface_9] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_10 = [`anonymous_interface_10] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_11 = [`anonymous_interface_11] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_12 = [`anonymous_interface_12] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_13 = [`anonymous_interface_13] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_14 = [`anonymous_interface_14] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_15 = [`anonymous_interface_15] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_16 = [`anonymous_interface_16] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type monaco_CancellationToken = [`Monaco_CancellationToken] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_CancellationTokenSource = [`Monaco_CancellationTokenSource] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T monaco_Emitter = [`Monaco_Emitter of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and monaco_IDisposable = [`Monaco_IDisposable] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T monaco_IEvent = [`Monaco_IEvent of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and monaco_IKeyboardEvent = [`Monaco_IKeyboardEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_IMouseEvent = [`Monaco_IMouseEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_IPosition = [`Monaco_IPosition] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_IRange = [`Monaco_IRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_IScrollEvent = [`Monaco_IScrollEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_ISelection = [`Monaco_ISelection] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_KeyCode = [`Unknown[@js 0] | `Backspace[@js 1] | `Tab[@js 2] | `Enter[@js 3] | `Shift[@js 4] | `Ctrl[@js 5] | `Alt[@js 6] | `PauseBreak[@js 7] | `CapsLock[@js 8] | `Escape[@js 9] | `Space[@js 10] | `PageUp[@js 11] | `PageDown[@js 12] | `End[@js 13] | `Home[@js 14] | `LeftArrow[@js 15] | `UpArrow[@js 16] | `RightArrow[@js 17] | `DownArrow[@js 18] | `Insert[@js 19] | `Delete[@js 20] | `KEY_0[@js 21] | `KEY_1[@js 22] | `KEY_2[@js 23] | `KEY_3[@js 24] | `KEY_4[@js 25] | `KEY_5[@js 26] | `KEY_6[@js 27] | `KEY_7[@js 28] | `KEY_8[@js 29] | `KEY_9[@js 30] | `KEY_A[@js 31] | `KEY_B[@js 32] | `KEY_C[@js 33] | `KEY_D[@js 34] | `KEY_E[@js 35] | `KEY_F[@js 36] | `KEY_G[@js 37] | `KEY_H[@js 38] | `KEY_I[@js 39] | `KEY_J[@js 40] | `KEY_K[@js 41] | `KEY_L[@js 42] | `KEY_M[@js 43] | `KEY_N[@js 44] | `KEY_O[@js 45] | `KEY_P[@js 46] | `KEY_Q[@js 47] | `KEY_R[@js 48] | `KEY_S[@js 49] | `KEY_T[@js 50] | `KEY_U[@js 51] | `KEY_V[@js 52] | `KEY_W[@js 53] | `KEY_X[@js 54] | `KEY_Y[@js 55] | `KEY_Z[@js 56] | `Meta[@js 57] | `ContextMenu[@js 58] | `F1[@js 59] | `F2[@js 60] | `F3[@js 61] | `F4[@js 62] | `F5[@js 63] | `F6[@js 64] | `F7[@js 65] | `F8[@js 66] | `F9[@js 67] | `F10[@js 68] | `F11[@js 69] | `F12[@js 70] | `F13[@js 71] | `F14[@js 72] | `F15[@js 73] | `F16[@js 74] | `F17[@js 75] | `F18[@js 76] | `F19[@js 77] | `NumLock[@js 78] | `ScrollLock[@js 79] | `US_SEMICOLON[@js 80] | `US_EQUAL[@js 81] | `US_COMMA[@js 82] | `US_MINUS[@js 83] | `US_DOT[@js 84] | `US_SLASH[@js 85] | `US_BACKTICK[@js 86] | `US_OPEN_SQUARE_BRACKET[@js 87] | `US_BACKSLASH[@js 88] | `US_CLOSE_SQUARE_BRACKET[@js 89] | `US_QUOTE[@js 90] | `OEM_8[@js 91] | `OEM_102[@js 92] | `NUMPAD_0[@js 93] | `NUMPAD_1[@js 94] | `NUMPAD_2[@js 95] | `NUMPAD_3[@js 96] | `NUMPAD_4[@js 97] | `NUMPAD_5[@js 98] | `NUMPAD_6[@js 99] | `NUMPAD_7[@js 100] | `NUMPAD_8[@js 101] | `NUMPAD_9[@js 102] | `NUMPAD_MULTIPLY[@js 103] | `NUMPAD_ADD[@js 104] | `NUMPAD_SEPARATOR[@js 105] | `NUMPAD_SUBTRACT[@js 106] | `NUMPAD_DECIMAL[@js 107] | `NUMPAD_DIVIDE[@js 108] | `KEY_IN_COMPOSITION[@js 109] | `ABNT_C1[@js 110] | `ABNT_C2[@js 111] | `MAX_VALUE[@js 112]] [@js.enum]
      and monaco_KeyCode_Unknown = [`Unknown[@js 0]] [@js.enum]
      and monaco_KeyCode_Backspace = [`Backspace[@js 1]] [@js.enum]
      and monaco_KeyCode_Tab = [`Tab[@js 2]] [@js.enum]
      and monaco_KeyCode_Enter = [`Enter[@js 3]] [@js.enum]
      and monaco_KeyCode_Shift = [`Shift[@js 4]] [@js.enum]
      and monaco_KeyCode_Ctrl = [`Ctrl[@js 5]] [@js.enum]
      and monaco_KeyCode_Alt = [`Alt[@js 6]] [@js.enum]
      and monaco_KeyCode_PauseBreak = [`PauseBreak[@js 7]] [@js.enum]
      and monaco_KeyCode_CapsLock = [`CapsLock[@js 8]] [@js.enum]
      and monaco_KeyCode_Escape = [`Escape[@js 9]] [@js.enum]
      and monaco_KeyCode_Space = [`Space[@js 10]] [@js.enum]
      and monaco_KeyCode_PageUp = [`PageUp[@js 11]] [@js.enum]
      and monaco_KeyCode_PageDown = [`PageDown[@js 12]] [@js.enum]
      and monaco_KeyCode_End = [`End[@js 13]] [@js.enum]
      and monaco_KeyCode_Home = [`Home[@js 14]] [@js.enum]
      and monaco_KeyCode_LeftArrow = [`LeftArrow[@js 15]] [@js.enum]
      and monaco_KeyCode_UpArrow = [`UpArrow[@js 16]] [@js.enum]
      and monaco_KeyCode_RightArrow = [`RightArrow[@js 17]] [@js.enum]
      and monaco_KeyCode_DownArrow = [`DownArrow[@js 18]] [@js.enum]
      and monaco_KeyCode_Insert = [`Insert[@js 19]] [@js.enum]
      and monaco_KeyCode_Delete = [`Delete[@js 20]] [@js.enum]
      and monaco_KeyCode_KEY_0 = [`KEY_0[@js 21]] [@js.enum]
      and monaco_KeyCode_KEY_1 = [`KEY_1[@js 22]] [@js.enum]
      and monaco_KeyCode_KEY_2 = [`KEY_2[@js 23]] [@js.enum]
      and monaco_KeyCode_KEY_3 = [`KEY_3[@js 24]] [@js.enum]
      and monaco_KeyCode_KEY_4 = [`KEY_4[@js 25]] [@js.enum]
      and monaco_KeyCode_KEY_5 = [`KEY_5[@js 26]] [@js.enum]
      and monaco_KeyCode_KEY_6 = [`KEY_6[@js 27]] [@js.enum]
      and monaco_KeyCode_KEY_7 = [`KEY_7[@js 28]] [@js.enum]
      and monaco_KeyCode_KEY_8 = [`KEY_8[@js 29]] [@js.enum]
      and monaco_KeyCode_KEY_9 = [`KEY_9[@js 30]] [@js.enum]
      and monaco_KeyCode_KEY_A = [`KEY_A[@js 31]] [@js.enum]
      and monaco_KeyCode_KEY_B = [`KEY_B[@js 32]] [@js.enum]
      and monaco_KeyCode_KEY_C = [`KEY_C[@js 33]] [@js.enum]
      and monaco_KeyCode_KEY_D = [`KEY_D[@js 34]] [@js.enum]
      and monaco_KeyCode_KEY_E = [`KEY_E[@js 35]] [@js.enum]
      and monaco_KeyCode_KEY_F = [`KEY_F[@js 36]] [@js.enum]
      and monaco_KeyCode_KEY_G = [`KEY_G[@js 37]] [@js.enum]
      and monaco_KeyCode_KEY_H = [`KEY_H[@js 38]] [@js.enum]
      and monaco_KeyCode_KEY_I = [`KEY_I[@js 39]] [@js.enum]
      and monaco_KeyCode_KEY_J = [`KEY_J[@js 40]] [@js.enum]
      and monaco_KeyCode_KEY_K = [`KEY_K[@js 41]] [@js.enum]
      and monaco_KeyCode_KEY_L = [`KEY_L[@js 42]] [@js.enum]
      and monaco_KeyCode_KEY_M = [`KEY_M[@js 43]] [@js.enum]
      and monaco_KeyCode_KEY_N = [`KEY_N[@js 44]] [@js.enum]
      and monaco_KeyCode_KEY_O = [`KEY_O[@js 45]] [@js.enum]
      and monaco_KeyCode_KEY_P = [`KEY_P[@js 46]] [@js.enum]
      and monaco_KeyCode_KEY_Q = [`KEY_Q[@js 47]] [@js.enum]
      and monaco_KeyCode_KEY_R = [`KEY_R[@js 48]] [@js.enum]
      and monaco_KeyCode_KEY_S = [`KEY_S[@js 49]] [@js.enum]
      and monaco_KeyCode_KEY_T = [`KEY_T[@js 50]] [@js.enum]
      and monaco_KeyCode_KEY_U = [`KEY_U[@js 51]] [@js.enum]
      and monaco_KeyCode_KEY_V = [`KEY_V[@js 52]] [@js.enum]
      and monaco_KeyCode_KEY_W = [`KEY_W[@js 53]] [@js.enum]
      and monaco_KeyCode_KEY_X = [`KEY_X[@js 54]] [@js.enum]
      and monaco_KeyCode_KEY_Y = [`KEY_Y[@js 55]] [@js.enum]
      and monaco_KeyCode_KEY_Z = [`KEY_Z[@js 56]] [@js.enum]
      and monaco_KeyCode_Meta = [`Meta[@js 57]] [@js.enum]
      and monaco_KeyCode_ContextMenu = [`ContextMenu[@js 58]] [@js.enum]
      and monaco_KeyCode_F1 = [`F1[@js 59]] [@js.enum]
      and monaco_KeyCode_F2 = [`F2[@js 60]] [@js.enum]
      and monaco_KeyCode_F3 = [`F3[@js 61]] [@js.enum]
      and monaco_KeyCode_F4 = [`F4[@js 62]] [@js.enum]
      and monaco_KeyCode_F5 = [`F5[@js 63]] [@js.enum]
      and monaco_KeyCode_F6 = [`F6[@js 64]] [@js.enum]
      and monaco_KeyCode_F7 = [`F7[@js 65]] [@js.enum]
      and monaco_KeyCode_F8 = [`F8[@js 66]] [@js.enum]
      and monaco_KeyCode_F9 = [`F9[@js 67]] [@js.enum]
      and monaco_KeyCode_F10 = [`F10[@js 68]] [@js.enum]
      and monaco_KeyCode_F11 = [`F11[@js 69]] [@js.enum]
      and monaco_KeyCode_F12 = [`F12[@js 70]] [@js.enum]
      and monaco_KeyCode_F13 = [`F13[@js 71]] [@js.enum]
      and monaco_KeyCode_F14 = [`F14[@js 72]] [@js.enum]
      and monaco_KeyCode_F15 = [`F15[@js 73]] [@js.enum]
      and monaco_KeyCode_F16 = [`F16[@js 74]] [@js.enum]
      and monaco_KeyCode_F17 = [`F17[@js 75]] [@js.enum]
      and monaco_KeyCode_F18 = [`F18[@js 76]] [@js.enum]
      and monaco_KeyCode_F19 = [`F19[@js 77]] [@js.enum]
      and monaco_KeyCode_NumLock = [`NumLock[@js 78]] [@js.enum]
      and monaco_KeyCode_ScrollLock = [`ScrollLock[@js 79]] [@js.enum]
      and monaco_KeyCode_US_SEMICOLON = [`US_SEMICOLON[@js 80]] [@js.enum]
      and monaco_KeyCode_US_EQUAL = [`US_EQUAL[@js 81]] [@js.enum]
      and monaco_KeyCode_US_COMMA = [`US_COMMA[@js 82]] [@js.enum]
      and monaco_KeyCode_US_MINUS = [`US_MINUS[@js 83]] [@js.enum]
      and monaco_KeyCode_US_DOT = [`US_DOT[@js 84]] [@js.enum]
      and monaco_KeyCode_US_SLASH = [`US_SLASH[@js 85]] [@js.enum]
      and monaco_KeyCode_US_BACKTICK = [`US_BACKTICK[@js 86]] [@js.enum]
      and monaco_KeyCode_US_OPEN_SQUARE_BRACKET = [`US_OPEN_SQUARE_BRACKET[@js 87]] [@js.enum]
      and monaco_KeyCode_US_BACKSLASH = [`US_BACKSLASH[@js 88]] [@js.enum]
      and monaco_KeyCode_US_CLOSE_SQUARE_BRACKET = [`US_CLOSE_SQUARE_BRACKET[@js 89]] [@js.enum]
      and monaco_KeyCode_US_QUOTE = [`US_QUOTE[@js 90]] [@js.enum]
      and monaco_KeyCode_OEM_8 = [`OEM_8[@js 91]] [@js.enum]
      and monaco_KeyCode_OEM_102 = [`OEM_102[@js 92]] [@js.enum]
      and monaco_KeyCode_NUMPAD_0 = [`NUMPAD_0[@js 93]] [@js.enum]
      and monaco_KeyCode_NUMPAD_1 = [`NUMPAD_1[@js 94]] [@js.enum]
      and monaco_KeyCode_NUMPAD_2 = [`NUMPAD_2[@js 95]] [@js.enum]
      and monaco_KeyCode_NUMPAD_3 = [`NUMPAD_3[@js 96]] [@js.enum]
      and monaco_KeyCode_NUMPAD_4 = [`NUMPAD_4[@js 97]] [@js.enum]
      and monaco_KeyCode_NUMPAD_5 = [`NUMPAD_5[@js 98]] [@js.enum]
      and monaco_KeyCode_NUMPAD_6 = [`NUMPAD_6[@js 99]] [@js.enum]
      and monaco_KeyCode_NUMPAD_7 = [`NUMPAD_7[@js 100]] [@js.enum]
      and monaco_KeyCode_NUMPAD_8 = [`NUMPAD_8[@js 101]] [@js.enum]
      and monaco_KeyCode_NUMPAD_9 = [`NUMPAD_9[@js 102]] [@js.enum]
      and monaco_KeyCode_NUMPAD_MULTIPLY = [`NUMPAD_MULTIPLY[@js 103]] [@js.enum]
      and monaco_KeyCode_NUMPAD_ADD = [`NUMPAD_ADD[@js 104]] [@js.enum]
      and monaco_KeyCode_NUMPAD_SEPARATOR = [`NUMPAD_SEPARATOR[@js 105]] [@js.enum]
      and monaco_KeyCode_NUMPAD_SUBTRACT = [`NUMPAD_SUBTRACT[@js 106]] [@js.enum]
      and monaco_KeyCode_NUMPAD_DECIMAL = [`NUMPAD_DECIMAL[@js 107]] [@js.enum]
      and monaco_KeyCode_NUMPAD_DIVIDE = [`NUMPAD_DIVIDE[@js 108]] [@js.enum]
      and monaco_KeyCode_KEY_IN_COMPOSITION = [`KEY_IN_COMPOSITION[@js 109]] [@js.enum]
      and monaco_KeyCode_ABNT_C1 = [`ABNT_C1[@js 110]] [@js.enum]
      and monaco_KeyCode_ABNT_C2 = [`ABNT_C2[@js 111]] [@js.enum]
      and monaco_KeyCode_MAX_VALUE = [`MAX_VALUE[@js 112]] [@js.enum]
      and monaco_KeyMod = [`Monaco_KeyMod] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_MarkedString = anonymous_interface_4 or_string
      and monaco_Position = [`Monaco_Position] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_ProgressCallback = [`Monaco_ProgressCallback] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'V monaco_Promise = [`Monaco_Promise of 'V] intf
      [@@js.custom { of_js=(fun _V -> Obj.magic); to_js=(fun _V -> Obj.magic) }]
      and monaco_Range = [`Monaco_Range] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_Selection = [`Monaco_Selection | `Monaco_Range] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_SelectionDirection = [`LTR[@js 0] | `RTL[@js 1]] [@js.enum]
      and monaco_SelectionDirection_LTR = [`LTR[@js 0]] [@js.enum]
      and monaco_SelectionDirection_RTL = [`RTL[@js 1]] [@js.enum]
      and monaco_Severity = [`Ignore[@js 0] | `Info[@js 1] | `Warning[@js 2] | `Error[@js 3]] [@js.enum]
      and monaco_Severity_Ignore = [`Ignore[@js 0]] [@js.enum]
      and monaco_Severity_Info = [`Info[@js 1]] [@js.enum]
      and monaco_Severity_Warning = [`Warning[@js 2]] [@js.enum]
      and monaco_Severity_Error = [`Error[@js 3]] [@js.enum]
      and 'T monaco_TValueCallback = [`Monaco_TValueCallback of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T monaco_Thenable = [`Monaco_Thenable of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and monaco_Token = [`Monaco_Token] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_Uri = [`Monaco_Uri] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_BareFontInfo = [`Monaco_editor_BareFontInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_BuiltinTheme = ([`L_s26_hc_black[@js "hc-black"] | `L_s42_vs[@js "vs"] | `L_s43_vs_dark[@js "vs-dark"]] [@js.enum])
      and monaco_editor_ContentWidgetPositionPreference = [`EXACT[@js 0] | `ABOVE[@js 1] | `BELOW[@js 2]] [@js.enum]
      and monaco_editor_ContentWidgetPositionPreference_EXACT = [`EXACT[@js 0]] [@js.enum]
      and monaco_editor_ContentWidgetPositionPreference_ABOVE = [`ABOVE[@js 1]] [@js.enum]
      and monaco_editor_ContentWidgetPositionPreference_BELOW = [`BELOW[@js 2]] [@js.enum]
      and monaco_editor_CursorChangeReason = [`NotSet[@js 0] | `ContentFlush[@js 1] | `RecoverFromMarkers[@js 2] | `Explicit[@js 3] | `Paste[@js 4] | `Undo[@js 5] | `Redo[@js 6]] [@js.enum]
      and monaco_editor_CursorChangeReason_NotSet = [`NotSet[@js 0]] [@js.enum]
      and monaco_editor_CursorChangeReason_ContentFlush = [`ContentFlush[@js 1]] [@js.enum]
      and monaco_editor_CursorChangeReason_RecoverFromMarkers = [`RecoverFromMarkers[@js 2]] [@js.enum]
      and monaco_editor_CursorChangeReason_Explicit = [`Explicit[@js 3]] [@js.enum]
      and monaco_editor_CursorChangeReason_Paste = [`Paste[@js 4]] [@js.enum]
      and monaco_editor_CursorChangeReason_Undo = [`Undo[@js 5]] [@js.enum]
      and monaco_editor_CursorChangeReason_Redo = [`Redo[@js 6]] [@js.enum]
      and monaco_editor_DefaultEndOfLine = [`LF[@js 1] | `CRLF[@js 2]] [@js.enum]
      and monaco_editor_DefaultEndOfLine_LF = [`LF[@js 1]] [@js.enum]
      and monaco_editor_DefaultEndOfLine_CRLF = [`CRLF[@js 2]] [@js.enum]
      and monaco_editor_EditorContribOptions = [`Monaco_editor_EditorContribOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_EditorLayoutInfo = [`Monaco_editor_EditorLayoutInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_EditorWrappingInfo = [`Monaco_editor_EditorWrappingInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_EndOfLinePreference = [`TextDefined[@js 0] | `LF[@js 1] | `CRLF[@js 2]] [@js.enum]
      and monaco_editor_EndOfLinePreference_TextDefined = [`TextDefined[@js 0]] [@js.enum]
      and monaco_editor_EndOfLinePreference_LF = [`LF[@js 1]] [@js.enum]
      and monaco_editor_EndOfLinePreference_CRLF = [`CRLF[@js 2]] [@js.enum]
      and monaco_editor_EndOfLineSequence = [`LF[@js 0] | `CRLF[@js 1]] [@js.enum]
      and monaco_editor_EndOfLineSequence_LF = [`LF[@js 0]] [@js.enum]
      and monaco_editor_EndOfLineSequence_CRLF = [`CRLF[@js 1]] [@js.enum]
      and monaco_editor_FindMatch = [`Monaco_editor_FindMatch] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_FontInfo = [`Monaco_editor_FontInfo | `Monaco_editor_BareFontInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IActionDescriptor = [`Monaco_editor_IActionDescriptor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IChange = [`Monaco_editor_IChange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICharChange = [`Monaco_editor_ICharChange | `Monaco_editor_IChange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICodeEditor = [`Monaco_editor_ICodeEditor | `Monaco_editor_ICommonCodeEditor | `Monaco_editor_IEditor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICodeEditorViewState = [`Monaco_editor_ICodeEditorViewState] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IColorizerElementOptions = [`Monaco_editor_IColorizerElementOptions | `Monaco_editor_IColorizerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IColorizerOptions = [`Monaco_editor_IColorizerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IColors = anonymous_interface_12
      and monaco_editor_ICommand = [`Monaco_editor_ICommand] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICommandHandler = [`Monaco_editor_ICommandHandler] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICommonCodeEditor = [`Monaco_editor_ICommonCodeEditor | `Monaco_editor_IEditor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICommonDiffEditor = [`Monaco_editor_ICommonDiffEditor | `Monaco_editor_IEditor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IConfigurationChangedEvent = [`Monaco_editor_IConfigurationChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IContentWidget = [`Monaco_editor_IContentWidget] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IContentWidgetPosition = [`Monaco_editor_IContentWidgetPosition] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T monaco_editor_IContextKey = [`Monaco_editor_IContextKey of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and monaco_editor_ICursorPositionChangedEvent = [`Monaco_editor_ICursorPositionChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICursorSelectionChangedEvent = [`Monaco_editor_ICursorSelectionChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICursorState = [`Monaco_editor_ICursorState] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICursorStateComputer = [`Monaco_editor_ICursorStateComputer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ICursorStateComputerData = [`Monaco_editor_ICursorStateComputerData] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffEditor = [`Monaco_editor_IDiffEditor | `Monaco_editor_ICommonDiffEditor | `Monaco_editor_IEditor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffEditorConstructionOptions = [`Monaco_editor_IDiffEditorConstructionOptions | `Monaco_editor_IDiffEditorOptions | `Monaco_editor_IEditorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffEditorModel = [`Monaco_editor_IDiffEditorModel] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffEditorOptions = [`Monaco_editor_IDiffEditorOptions | `Monaco_editor_IEditorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffEditorViewState = [`Monaco_editor_IDiffEditorViewState] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffLineInformation = [`Monaco_editor_IDiffLineInformation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffNavigator = [`Monaco_editor_IDiffNavigator] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDiffNavigatorOptions = [`Monaco_editor_IDiffNavigatorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IDimension = [`Monaco_editor_IDimension] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditOperationBuilder = [`Monaco_editor_IEditOperationBuilder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditableTextModel = [`Monaco_editor_IEditableTextModel | `Monaco_editor_ITextModel | `Monaco_editor_ITextModelWithMarkers] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditor = [`Monaco_editor_IEditor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorAction = [`Monaco_editor_IEditorAction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorConstructionOptions = [`Monaco_editor_IEditorConstructionOptions | `Monaco_editor_IEditorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorContribution = [`Monaco_editor_IEditorContribution] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorFindOptions = [`Monaco_editor_IEditorFindOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorMinimapOptions = [`Monaco_editor_IEditorMinimapOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorModel = (monaco_editor_IDiffEditorModel, monaco_editor_IModel) union2
      and monaco_editor_IEditorMouseEvent = [`Monaco_editor_IEditorMouseEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorOptions = [`Monaco_editor_IEditorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorOverrideServices = [`Monaco_editor_IEditorOverrideServices] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorScrollbarOptions = [`Monaco_editor_IEditorScrollbarOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IEditorViewState = (monaco_editor_ICodeEditorViewState, monaco_editor_IDiffEditorViewState) union2
      and monaco_editor_IIdentifiedSingleEditOperation = [`Monaco_editor_IIdentifiedSingleEditOperation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ILineChange = [`Monaco_editor_ILineChange | `Monaco_editor_IChange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IMarker = [`Monaco_editor_IMarker] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IMarkerData = [`Monaco_editor_IMarkerData] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModel = [`Monaco_editor_IModel | `Monaco_editor_IEditableTextModel | `Monaco_editor_IReadOnlyModel | `Monaco_editor_ITextModel | `Monaco_editor_ITextModelWithDecorations | `Monaco_editor_ITextModelWithMarkers | `Monaco_editor_ITokenizedModel] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelChangedEvent = [`Monaco_editor_IModelChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelContentChange = [`Monaco_editor_IModelContentChange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelContentChangedEvent = [`Monaco_editor_IModelContentChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelDecoration = [`Monaco_editor_IModelDecoration] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelDecorationOptions = [`Monaco_editor_IModelDecorationOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelDecorationOverviewRulerOptions = [`Monaco_editor_IModelDecorationOverviewRulerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelDecorationsChangedEvent = [`Monaco_editor_IModelDecorationsChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelDeltaDecoration = [`Monaco_editor_IModelDeltaDecoration] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelLanguageChangedEvent = [`Monaco_editor_IModelLanguageChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelOptionsChangedEvent = [`Monaco_editor_IModelOptionsChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IModelTokensChangedEvent = [`Monaco_editor_IModelTokensChangedEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IMouseTarget = [`Monaco_editor_IMouseTarget] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_INewScrollPosition = [`Monaco_editor_INewScrollPosition] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IOverlayWidget = [`Monaco_editor_IOverlayWidget] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IOverlayWidgetPosition = [`Monaco_editor_IOverlayWidgetPosition] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IReadOnlyModel = [`Monaco_editor_IReadOnlyModel | `Monaco_editor_ITextModel] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ISingleEditOperation = [`Monaco_editor_ISingleEditOperation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ISingleEditOperationIdentifier = [`Monaco_editor_ISingleEditOperationIdentifier] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IStandaloneCodeEditor = [`Monaco_editor_IStandaloneCodeEditor | `Monaco_editor_ICodeEditor | `Monaco_editor_ICommonCodeEditor | `Monaco_editor_IEditor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IStandaloneDiffEditor = [`Monaco_editor_IStandaloneDiffEditor | `Monaco_editor_ICommonDiffEditor | `Monaco_editor_IDiffEditor | `Monaco_editor_IEditor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IStandaloneThemeData = [`Monaco_editor_IStandaloneThemeData] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ITextModel = [`Monaco_editor_ITextModel] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ITextModelUpdateOptions = [`Monaco_editor_ITextModelUpdateOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ITextModelWithDecorations = [`Monaco_editor_ITextModelWithDecorations] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ITextModelWithMarkers = [`Monaco_editor_ITextModelWithMarkers | `Monaco_editor_ITextModel] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ITokenThemeRule = [`Monaco_editor_ITokenThemeRule] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ITokenizedModel = [`Monaco_editor_ITokenizedModel | `Monaco_editor_ITextModel] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IViewState = [`Monaco_editor_IViewState] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IViewZone = [`Monaco_editor_IViewZone] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IViewZoneChangeAccessor = [`Monaco_editor_IViewZoneChangeAccessor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IWebWorkerOptions = [`Monaco_editor_IWebWorkerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_IWordAtPosition = [`Monaco_editor_IWordAtPosition] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_InternalEditorFindOptions = [`Monaco_editor_InternalEditorFindOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_InternalEditorMinimapOptions = [`Monaco_editor_InternalEditorMinimapOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_InternalEditorOptions = [`Monaco_editor_InternalEditorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_InternalEditorScrollbarOptions = [`Monaco_editor_InternalEditorScrollbarOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_InternalEditorViewOptions = [`Monaco_editor_InternalEditorViewOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T monaco_editor_MonacoWebWorker = [`Monaco_editor_MonacoWebWorker of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and monaco_editor_MouseTargetType = [`UNKNOWN[@js 0] | `TEXTAREA[@js 1] | `GUTTER_GLYPH_MARGIN[@js 2] | `GUTTER_LINE_NUMBERS[@js 3] | `GUTTER_LINE_DECORATIONS[@js 4] | `GUTTER_VIEW_ZONE[@js 5] | `CONTENT_TEXT[@js 6] | `CONTENT_EMPTY[@js 7] | `CONTENT_VIEW_ZONE[@js 8] | `CONTENT_WIDGET[@js 9] | `OVERVIEW_RULER[@js 10] | `SCROLLBAR[@js 11] | `OVERLAY_WIDGET[@js 12] | `OUTSIDE_EDITOR[@js 13]] [@js.enum]
      and monaco_editor_MouseTargetType_UNKNOWN = [`UNKNOWN[@js 0]] [@js.enum]
      and monaco_editor_MouseTargetType_TEXTAREA = [`TEXTAREA[@js 1]] [@js.enum]
      and monaco_editor_MouseTargetType_GUTTER_GLYPH_MARGIN = [`GUTTER_GLYPH_MARGIN[@js 2]] [@js.enum]
      and monaco_editor_MouseTargetType_GUTTER_LINE_NUMBERS = [`GUTTER_LINE_NUMBERS[@js 3]] [@js.enum]
      and monaco_editor_MouseTargetType_GUTTER_LINE_DECORATIONS = [`GUTTER_LINE_DECORATIONS[@js 4]] [@js.enum]
      and monaco_editor_MouseTargetType_GUTTER_VIEW_ZONE = [`GUTTER_VIEW_ZONE[@js 5]] [@js.enum]
      and monaco_editor_MouseTargetType_CONTENT_TEXT = [`CONTENT_TEXT[@js 6]] [@js.enum]
      and monaco_editor_MouseTargetType_CONTENT_EMPTY = [`CONTENT_EMPTY[@js 7]] [@js.enum]
      and monaco_editor_MouseTargetType_CONTENT_VIEW_ZONE = [`CONTENT_VIEW_ZONE[@js 8]] [@js.enum]
      and monaco_editor_MouseTargetType_CONTENT_WIDGET = [`CONTENT_WIDGET[@js 9]] [@js.enum]
      and monaco_editor_MouseTargetType_OVERVIEW_RULER = [`OVERVIEW_RULER[@js 10]] [@js.enum]
      and monaco_editor_MouseTargetType_SCROLLBAR = [`SCROLLBAR[@js 11]] [@js.enum]
      and monaco_editor_MouseTargetType_OVERLAY_WIDGET = [`OVERLAY_WIDGET[@js 12]] [@js.enum]
      and monaco_editor_MouseTargetType_OUTSIDE_EDITOR = [`OUTSIDE_EDITOR[@js 13]] [@js.enum]
      and monaco_editor_OverlayWidgetPositionPreference = [`TOP_RIGHT_CORNER[@js 0] | `BOTTOM_RIGHT_CORNER[@js 1] | `TOP_CENTER[@js 2]] [@js.enum]
      and monaco_editor_OverlayWidgetPositionPreference_TOP_RIGHT_CORNER = [`TOP_RIGHT_CORNER[@js 0]] [@js.enum]
      and monaco_editor_OverlayWidgetPositionPreference_BOTTOM_RIGHT_CORNER = [`BOTTOM_RIGHT_CORNER[@js 1]] [@js.enum]
      and monaco_editor_OverlayWidgetPositionPreference_TOP_CENTER = [`TOP_CENTER[@js 2]] [@js.enum]
      and monaco_editor_OverviewRulerLane = [`Left[@js 1] | `Center[@js 2] | `Right[@js 4] | `Full[@js 7]] [@js.enum]
      and monaco_editor_OverviewRulerLane_Left = [`Left[@js 1]] [@js.enum]
      and monaco_editor_OverviewRulerLane_Center = [`Center[@js 2]] [@js.enum]
      and monaco_editor_OverviewRulerLane_Right = [`Right[@js 4]] [@js.enum]
      and monaco_editor_OverviewRulerLane_Full = [`Full[@js 7]] [@js.enum]
      and monaco_editor_OverviewRulerPosition = [`Monaco_editor_OverviewRulerPosition] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_RenderMinimap = [`None[@js 0] | `Small[@js 1] | `Large[@js 2] | `SmallBlocks[@js 3] | `LargeBlocks[@js 4]] [@js.enum]
      and monaco_editor_RenderMinimap_None = [`None[@js 0]] [@js.enum]
      and monaco_editor_RenderMinimap_Small = [`Small[@js 1]] [@js.enum]
      and monaco_editor_RenderMinimap_Large = [`Large[@js 2]] [@js.enum]
      and monaco_editor_RenderMinimap_SmallBlocks = [`SmallBlocks[@js 3]] [@js.enum]
      and monaco_editor_RenderMinimap_LargeBlocks = [`LargeBlocks[@js 4]] [@js.enum]
      and monaco_editor_ScrollbarVisibility = [`Auto[@js 1] | `Hidden[@js 2] | `Visible[@js 3]] [@js.enum]
      and monaco_editor_ScrollbarVisibility_Auto = [`Auto[@js 1]] [@js.enum]
      and monaco_editor_ScrollbarVisibility_Hidden = [`Hidden[@js 2]] [@js.enum]
      and monaco_editor_ScrollbarVisibility_Visible = [`Visible[@js 3]] [@js.enum]
      and monaco_editor_TextEditorCursorBlinkingStyle = [`Hidden[@js 0] | `Blink[@js 1] | `Smooth[@js 2] | `Phase[@js 3] | `Expand[@js 4] | `Solid[@js 5]] [@js.enum]
      and monaco_editor_TextEditorCursorBlinkingStyle_Hidden = [`Hidden[@js 0]] [@js.enum]
      and monaco_editor_TextEditorCursorBlinkingStyle_Blink = [`Blink[@js 1]] [@js.enum]
      and monaco_editor_TextEditorCursorBlinkingStyle_Smooth = [`Smooth[@js 2]] [@js.enum]
      and monaco_editor_TextEditorCursorBlinkingStyle_Phase = [`Phase[@js 3]] [@js.enum]
      and monaco_editor_TextEditorCursorBlinkingStyle_Expand = [`Expand[@js 4]] [@js.enum]
      and monaco_editor_TextEditorCursorBlinkingStyle_Solid = [`Solid[@js 5]] [@js.enum]
      and monaco_editor_TextEditorCursorStyle = [`Line[@js 1] | `Block[@js 2] | `Underline[@js 3] | `LineThin[@js 4] | `BlockOutline[@js 5] | `UnderlineThin[@js 6]] [@js.enum]
      and monaco_editor_TextEditorCursorStyle_Line = [`Line[@js 1]] [@js.enum]
      and monaco_editor_TextEditorCursorStyle_Block = [`Block[@js 2]] [@js.enum]
      and monaco_editor_TextEditorCursorStyle_Underline = [`Underline[@js 3]] [@js.enum]
      and monaco_editor_TextEditorCursorStyle_LineThin = [`LineThin[@js 4]] [@js.enum]
      and monaco_editor_TextEditorCursorStyle_BlockOutline = [`BlockOutline[@js 5]] [@js.enum]
      and monaco_editor_TextEditorCursorStyle_UnderlineThin = [`UnderlineThin[@js 6]] [@js.enum]
      and monaco_editor_TextModelResolvedOptions = [`Monaco_editor_TextModelResolvedOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_ThemeColor = [`Monaco_editor_ThemeColor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_editor_TrackedRangeStickiness = [`AlwaysGrowsWhenTypingAtEdges[@js 0] | `NeverGrowsWhenTypingAtEdges[@js 1] | `GrowsOnlyWhenTypingBefore[@js 2] | `GrowsOnlyWhenTypingAfter[@js 3]] [@js.enum]
      and monaco_editor_TrackedRangeStickiness_AlwaysGrowsWhenTypingAtEdges = [`AlwaysGrowsWhenTypingAtEdges[@js 0]] [@js.enum]
      and monaco_editor_TrackedRangeStickiness_NeverGrowsWhenTypingAtEdges = [`NeverGrowsWhenTypingAtEdges[@js 1]] [@js.enum]
      and monaco_editor_TrackedRangeStickiness_GrowsOnlyWhenTypingBefore = [`GrowsOnlyWhenTypingBefore[@js 2]] [@js.enum]
      and monaco_editor_TrackedRangeStickiness_GrowsOnlyWhenTypingAfter = [`GrowsOnlyWhenTypingAfter[@js 3]] [@js.enum]
      and monaco_editor_WrappingIndent = [`None[@js 0] | `Same[@js 1] | `Indent[@js 2]] [@js.enum]
      and monaco_editor_WrappingIndent_None = [`None[@js 0]] [@js.enum]
      and monaco_editor_WrappingIndent_Same = [`Same[@js 1]] [@js.enum]
      and monaco_editor_WrappingIndent_Indent = [`Indent[@js 2]] [@js.enum]
      and monaco_languages_CharacterPair = (string * string)
      and monaco_languages_CodeActionContext = [`Monaco_languages_CodeActionContext] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_CodeActionProvider = [`Monaco_languages_CodeActionProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_CodeLensProvider = [`Monaco_languages_CodeLensProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_Command = [`Monaco_languages_Command] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_CommentRule = [`Monaco_languages_CommentRule] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_CompletionItem = [`Monaco_languages_CompletionItem] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_CompletionItemKind = [`Text[@js 0] | `Method[@js 1] | `Function[@js 2] | `Constructor[@js 3] | `Field[@js 4] | `Variable[@js 5] | `Class[@js 6] | `Interface[@js 7] | `Module[@js 8] | `Property[@js 9] | `Unit[@js 10] | `Value[@js 11] | `Enum[@js 12] | `Keyword[@js 13] | `Snippet[@js 14] | `Color[@js 15] | `File[@js 16] | `Reference[@js 17] | `Folder[@js 18]] [@js.enum]
      and monaco_languages_CompletionItemKind_Text = [`Text[@js 0]] [@js.enum]
      and monaco_languages_CompletionItemKind_Method = [`Method[@js 1]] [@js.enum]
      and monaco_languages_CompletionItemKind_Function = [`Function[@js 2]] [@js.enum]
      and monaco_languages_CompletionItemKind_Constructor = [`Constructor[@js 3]] [@js.enum]
      and monaco_languages_CompletionItemKind_Field = [`Field[@js 4]] [@js.enum]
      and monaco_languages_CompletionItemKind_Variable = [`Variable[@js 5]] [@js.enum]
      and monaco_languages_CompletionItemKind_Class = [`Class[@js 6]] [@js.enum]
      and monaco_languages_CompletionItemKind_Interface = [`Interface[@js 7]] [@js.enum]
      and monaco_languages_CompletionItemKind_Module = [`Module[@js 8]] [@js.enum]
      and monaco_languages_CompletionItemKind_Property = [`Property[@js 9]] [@js.enum]
      and monaco_languages_CompletionItemKind_Unit = [`Unit[@js 10]] [@js.enum]
      and monaco_languages_CompletionItemKind_Value = [`Value[@js 11]] [@js.enum]
      and monaco_languages_CompletionItemKind_Enum = [`Enum[@js 12]] [@js.enum]
      and monaco_languages_CompletionItemKind_Keyword = [`Keyword[@js 13]] [@js.enum]
      and monaco_languages_CompletionItemKind_Snippet = [`Snippet[@js 14]] [@js.enum]
      and monaco_languages_CompletionItemKind_Color = [`Color[@js 15]] [@js.enum]
      and monaco_languages_CompletionItemKind_File = [`File[@js 16]] [@js.enum]
      and monaco_languages_CompletionItemKind_Reference = [`Reference[@js 17]] [@js.enum]
      and monaco_languages_CompletionItemKind_Folder = [`Folder[@js 18]] [@js.enum]
      and monaco_languages_CompletionItemProvider = [`Monaco_languages_CompletionItemProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_CompletionList = [`Monaco_languages_CompletionList] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_Definition = (monaco_languages_Location, monaco_languages_Location) or_array
      and monaco_languages_DefinitionProvider = [`Monaco_languages_DefinitionProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_DocumentFormattingEditProvider = [`Monaco_languages_DocumentFormattingEditProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_DocumentHighlight = [`Monaco_languages_DocumentHighlight] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_DocumentHighlightKind = [`Text[@js 0] | `Read[@js 1] | `Write[@js 2]] [@js.enum]
      and monaco_languages_DocumentHighlightKind_Text = [`Text[@js 0]] [@js.enum]
      and monaco_languages_DocumentHighlightKind_Read = [`Read[@js 1]] [@js.enum]
      and monaco_languages_DocumentHighlightKind_Write = [`Write[@js 2]] [@js.enum]
      and monaco_languages_DocumentHighlightProvider = [`Monaco_languages_DocumentHighlightProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_DocumentRangeFormattingEditProvider = [`Monaco_languages_DocumentRangeFormattingEditProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_DocumentSymbolProvider = [`Monaco_languages_DocumentSymbolProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_EnterAction = [`Monaco_languages_EnterAction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_FormattingOptions = [`Monaco_languages_FormattingOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_Hover = [`Monaco_languages_Hover] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_HoverProvider = [`Monaco_languages_HoverProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IAutoClosingPair = [`Monaco_languages_IAutoClosingPair] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IAutoClosingPairConditional = [`Monaco_languages_IAutoClosingPairConditional | `Monaco_languages_IAutoClosingPair] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IBracketElectricCharacterContribution = [`Monaco_languages_IBracketElectricCharacterContribution] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ICodeLensSymbol = [`Monaco_languages_ICodeLensSymbol] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IDocComment = [`Monaco_languages_IDocComment] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ILanguageExtensionPoint = [`Monaco_languages_ILanguageExtensionPoint] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ILineTokens = [`Monaco_languages_ILineTokens] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ILink = [`Monaco_languages_ILink] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IMonarchLanguage = [`Monaco_languages_IMonarchLanguage] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IMonarchLanguageAction = [`Monaco_languages_IMonarchLanguageAction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IMonarchLanguageBracket = [`Monaco_languages_IMonarchLanguageBracket] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IMonarchLanguageRule = [`Monaco_languages_IMonarchLanguageRule] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IResourceEdit = [`Monaco_languages_IResourceEdit] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IState = [`Monaco_languages_IState] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IToken = [`Monaco_languages_IToken] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ImplementationProvider = [`Monaco_languages_ImplementationProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_IndentAction = [`None[@js 0] | `Indent[@js 1] | `IndentOutdent[@js 2] | `Outdent[@js 3]] [@js.enum]
      and monaco_languages_IndentAction_None = [`None[@js 0]] [@js.enum]
      and monaco_languages_IndentAction_Indent = [`Indent[@js 1]] [@js.enum]
      and monaco_languages_IndentAction_IndentOutdent = [`IndentOutdent[@js 2]] [@js.enum]
      and monaco_languages_IndentAction_Outdent = [`Outdent[@js 3]] [@js.enum]
      and monaco_languages_IndentationRule = [`Monaco_languages_IndentationRule] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_LanguageConfiguration = [`Monaco_languages_LanguageConfiguration] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_LinkProvider = [`Monaco_languages_LinkProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_Location = [`Monaco_languages_Location] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_OnEnterRule = [`Monaco_languages_OnEnterRule] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_OnTypeFormattingEditProvider = [`Monaco_languages_OnTypeFormattingEditProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ParameterInformation = [`Monaco_languages_ParameterInformation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ReferenceContext = [`Monaco_languages_ReferenceContext] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_ReferenceProvider = [`Monaco_languages_ReferenceProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_RenameProvider = [`Monaco_languages_RenameProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_SignatureHelp = [`Monaco_languages_SignatureHelp] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_SignatureHelpProvider = [`Monaco_languages_SignatureHelpProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_SignatureInformation = [`Monaco_languages_SignatureInformation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_SnippetString = [`Monaco_languages_SnippetString] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_SymbolInformation = [`Monaco_languages_SymbolInformation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_SymbolKind = [`File[@js 0] | `Module[@js 1] | `Namespace[@js 2] | `Package[@js 3] | `Class[@js 4] | `Method[@js 5] | `Property[@js 6] | `Field[@js 7] | `Constructor[@js 8] | `Enum[@js 9] | `Interface[@js 10] | `Function[@js 11] | `Variable[@js 12] | `Constant[@js 13] | `String[@js 14] | `Number[@js 15] | `Boolean[@js 16] | `Array[@js 17] | `Object[@js 18] | `Key[@js 19] | `Null[@js 20] | `EnumMember[@js 21] | `Struct[@js 22] | `Event[@js 23] | `Operator[@js 24] | `TypeParameter[@js 25]] [@js.enum]
      and monaco_languages_SymbolKind_File = [`File[@js 0]] [@js.enum]
      and monaco_languages_SymbolKind_Module = [`Module[@js 1]] [@js.enum]
      and monaco_languages_SymbolKind_Namespace = [`Namespace[@js 2]] [@js.enum]
      and monaco_languages_SymbolKind_Package = [`Package[@js 3]] [@js.enum]
      and monaco_languages_SymbolKind_Class = [`Class[@js 4]] [@js.enum]
      and monaco_languages_SymbolKind_Method = [`Method[@js 5]] [@js.enum]
      and monaco_languages_SymbolKind_Property = [`Property[@js 6]] [@js.enum]
      and monaco_languages_SymbolKind_Field = [`Field[@js 7]] [@js.enum]
      and monaco_languages_SymbolKind_Constructor = [`Constructor[@js 8]] [@js.enum]
      and monaco_languages_SymbolKind_Enum = [`Enum[@js 9]] [@js.enum]
      and monaco_languages_SymbolKind_Interface = [`Interface[@js 10]] [@js.enum]
      and monaco_languages_SymbolKind_Function = [`Function[@js 11]] [@js.enum]
      and monaco_languages_SymbolKind_Variable = [`Variable[@js 12]] [@js.enum]
      and monaco_languages_SymbolKind_Constant = [`Constant[@js 13]] [@js.enum]
      and monaco_languages_SymbolKind_String = [`String[@js 14]] [@js.enum]
      and monaco_languages_SymbolKind_Number = [`Number[@js 15]] [@js.enum]
      and monaco_languages_SymbolKind_Boolean = [`Boolean[@js 16]] [@js.enum]
      and monaco_languages_SymbolKind_Array = [`Array[@js 17]] [@js.enum]
      and monaco_languages_SymbolKind_Object = [`Object[@js 18]] [@js.enum]
      and monaco_languages_SymbolKind_Key = [`Key[@js 19]] [@js.enum]
      and monaco_languages_SymbolKind_Null = [`Null[@js 20]] [@js.enum]
      and monaco_languages_SymbolKind_EnumMember = [`EnumMember[@js 21]] [@js.enum]
      and monaco_languages_SymbolKind_Struct = [`Struct[@js 22]] [@js.enum]
      and monaco_languages_SymbolKind_Event = [`Event[@js 23]] [@js.enum]
      and monaco_languages_SymbolKind_Operator = [`Operator[@js 24]] [@js.enum]
      and monaco_languages_SymbolKind_TypeParameter = [`TypeParameter[@js 25]] [@js.enum]
      and monaco_languages_TextEdit = [`Monaco_languages_TextEdit] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_TokensProvider = [`Monaco_languages_TokensProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_TypeDefinitionProvider = [`Monaco_languages_TypeDefinitionProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_WorkspaceEdit = [`Monaco_languages_WorkspaceEdit] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_css_DiagnosticsOptions = [`Monaco_languages_css_DiagnosticsOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_css_LanguageServiceDefaults = [`Monaco_languages_css_LanguageServiceDefaults] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_html_CompletionConfiguration = [`Monaco_languages_html_CompletionConfiguration] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_html_HTMLFormatConfiguration = [`Monaco_languages_html_HTMLFormatConfiguration] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_html_LanguageServiceDefaults = [`Monaco_languages_html_LanguageServiceDefaults] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_html_Options = [`Monaco_languages_html_Options] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_json_DiagnosticsOptions = [`Monaco_languages_json_DiagnosticsOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_json_LanguageServiceDefaults = [`Monaco_languages_json_LanguageServiceDefaults] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_typescript_CompilerOptions = [`Monaco_languages_typescript_CompilerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_typescript_CompilerOptionsValue = string or_number or_string list or_boolean or_string or_number
      and monaco_languages_typescript_DiagnosticsOptions = [`Monaco_languages_typescript_DiagnosticsOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_typescript_JsxEmit = [`None[@js 0] | `Preserve[@js 1] | `React[@js 2]] [@js.enum]
      and monaco_languages_typescript_JsxEmit_None = [`None[@js 0]] [@js.enum]
      and monaco_languages_typescript_JsxEmit_Preserve = [`Preserve[@js 1]] [@js.enum]
      and monaco_languages_typescript_JsxEmit_React = [`React[@js 2]] [@js.enum]
      and monaco_languages_typescript_LanguageServiceDefaults = [`Monaco_languages_typescript_LanguageServiceDefaults] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_languages_typescript_ModuleKind = [`None[@js 0] | `CommonJS[@js 1] | `AMD[@js 2] | `UMD[@js 3] | `System[@js 4] | `ES2015[@js 5]] [@js.enum]
      and monaco_languages_typescript_ModuleKind_None = [`None[@js 0]] [@js.enum]
      and monaco_languages_typescript_ModuleKind_CommonJS = [`CommonJS[@js 1]] [@js.enum]
      and monaco_languages_typescript_ModuleKind_AMD = [`AMD[@js 2]] [@js.enum]
      and monaco_languages_typescript_ModuleKind_UMD = [`UMD[@js 3]] [@js.enum]
      and monaco_languages_typescript_ModuleKind_System = [`System[@js 4]] [@js.enum]
      and monaco_languages_typescript_ModuleKind_ES2015 = [`ES2015[@js 5]] [@js.enum]
      and monaco_languages_typescript_ModuleResolutionKind = [`Classic[@js 1] | `NodeJs[@js 2]] [@js.enum]
      and monaco_languages_typescript_ModuleResolutionKind_Classic = [`Classic[@js 1]] [@js.enum]
      and monaco_languages_typescript_ModuleResolutionKind_NodeJs = [`NodeJs[@js 2]] [@js.enum]
      and monaco_languages_typescript_NewLineKind = [`CarriageReturnLineFeed[@js 0] | `LineFeed[@js 1]] [@js.enum]
      and monaco_languages_typescript_NewLineKind_CarriageReturnLineFeed = [`CarriageReturnLineFeed[@js 0]] [@js.enum]
      and monaco_languages_typescript_NewLineKind_LineFeed = [`LineFeed[@js 1]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget = [`ES3[@js 0] | `ES5[@js 1] | `ES2015[@js 2] | `ES2016[@js 3] | `ES2017[@js 4] | `ESNext[@js 5] | `Latest[@js 5]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget_ES3 = [`ES3[@js 0]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget_ES5 = [`ES5[@js 1]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget_ES2015 = [`ES2015[@js 2]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget_ES2016 = [`ES2016[@js 3]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget_ES2017 = [`ES2017[@js 4]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget_ESNext = [`ESNext[@js 5]] [@js.enum]
      and monaco_languages_typescript_ScriptTarget_Latest = [`Latest[@js 5]] [@js.enum]
      and monaco_worker_IMirrorModel = [`Monaco_worker_IMirrorModel] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and monaco_worker_IWorkerContext = [`Monaco_worker_IWorkerContext] intf
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
    val get_ICodeEditor: t -> string [@@js.get "ICodeEditor"]
    val set_ICodeEditor: t -> string -> unit [@@js.set "ICodeEditor"]
    val get_IDiffEditor: t -> string [@@js.get "IDiffEditor"]
    val set_IDiffEditor: t -> string -> unit [@@js.set "IDiffEditor"]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_compatibleVendorPrefixes: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "compatibleVendorPrefixes"]
    val get_vendorPrefix: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "vendorPrefix"]
    val get_duplicateProperties: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "duplicateProperties"]
    val get_emptyRules: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "emptyRules"]
    val get_importStatement: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "importStatement"]
    val get_boxModel: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "boxModel"]
    val get_universalSelector: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "universalSelector"]
    val get_zeroUnits: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "zeroUnits"]
    val get_fontFaceProperties: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "fontFaceProperties"]
    val get_hexColorLength: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "hexColorLength"]
    val get_argumentsInColorFunction: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "argumentsInColorFunction"]
    val get_unknownProperties: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "unknownProperties"]
    val get_ieHack: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "ieHack"]
    val get_unknownVendorSpecificProperties: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "unknownVendorSpecificProperties"]
    val get_propertyIgnoredDueToDisplay: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "propertyIgnoredDueToDisplay"]
    val get_important: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "important"]
    val get_float: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "float"]
    val get_idSelector: t -> ([`L_s21_error[@js "error"] | `L_s27_ignore[@js "ignore"] | `L_s44_warning[@js "warning"]] [@js.enum]) [@@js.get "idSelector"]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_fromLineNumber: t -> float [@@js.get "fromLineNumber"]
    val get_toLineNumber: t -> float [@@js.get "toLineNumber"]
  end
  module AnonymousInterface3 : sig
    type t = anonymous_interface_3
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_key: t -> string [@@js.get "key"]
    val set_key: t -> string -> unit [@@js.set "key"]
    val get_value: t -> 'ValueType monaco_Promise [@@js.get "value"]
    val set_value: t -> 'ValueType monaco_Promise -> unit [@@js.set "value"]
  end
  module AnonymousInterface4 : sig
    type t = anonymous_interface_4
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_language: t -> string [@@js.get "language"]
    val get_value: t -> string [@@js.get "value"]
  end
  module AnonymousInterface5 : sig
    type t = anonymous_interface_5
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_model: t -> monaco_editor_IModel [@@js.get "model"]
    val get_oldLanguage: t -> string [@@js.get "oldLanguage"]
  end
  module AnonymousInterface6 : sig
    type t = anonymous_interface_6
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_other: t -> bool [@@js.get "other"]
    val set_other: t -> bool -> unit [@@js.set "other"]
    val get_comments: t -> bool [@@js.get "comments"]
    val set_comments: t -> bool -> unit [@@js.set "comments"]
    val get_strings: t -> bool [@@js.get "strings"]
    val set_strings: t -> bool -> unit [@@js.set "strings"]
  end
  module AnonymousInterface7 : sig
    type t = anonymous_interface_7
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_owner: t -> string [@@js.get "owner"]
    val set_owner: t -> string -> unit [@@js.set "owner"]
    val get_resource: t -> monaco_Uri [@@js.get "resource"]
    val set_resource: t -> monaco_Uri -> unit [@@js.set "resource"]
    val get_take: t -> float [@@js.get "take"]
    val set_take: t -> float -> unit [@@js.set "take"]
  end
  module AnonymousInterface8 : sig
    type t = anonymous_interface_8
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_preserveBOM: t -> bool [@@js.get "preserveBOM"]
    val set_preserveBOM: t -> bool -> unit [@@js.set "preserveBOM"]
    val get_lineEnding: t -> string [@@js.get "lineEnding"]
    val set_lineEnding: t -> string -> unit [@@js.set "lineEnding"]
  end
  module AnonymousInterface9 : sig
    type t = anonymous_interface_9
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_scheme: t -> string [@@js.get "scheme"]
    val set_scheme: t -> string -> unit [@@js.set "scheme"]
    val get_authority: t -> string [@@js.get "authority"]
    val set_authority: t -> string -> unit [@@js.set "authority"]
    val get_path: t -> string [@@js.get "path"]
    val set_path: t -> string -> unit [@@js.set "path"]
    val get_query: t -> string [@@js.get "query"]
    val set_query: t -> string -> unit [@@js.set "query"]
    val get_fragment: t -> string [@@js.get "fragment"]
    val set_fragment: t -> string -> unit [@@js.set "fragment"]
  end
  module AnonymousInterface10 : sig
    type t = anonymous_interface_10
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_top: t -> float [@@js.get "top"]
    val set_top: t -> float -> unit [@@js.set "top"]
    val get_left: t -> float [@@js.get "left"]
    val set_left: t -> float -> unit [@@js.set "left"]
    val get_height: t -> float [@@js.get "height"]
    val set_height: t -> float -> unit [@@js.set "height"]
  end
  module AnonymousInterface11 : sig
    type t = anonymous_interface_11
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_uri: t -> string [@@js.get "uri"]
    val get_fileMatch: t -> string list [@@js.get "fileMatch"]
    val get_schema: t -> any [@@js.get "schema"]
  end
  module AnonymousInterface12 : sig
    type t = anonymous_interface_12
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get: t -> string -> string [@@js.index_get]
    val set: t -> string -> string -> unit [@@js.index_set]
  end
  module AnonymousInterface13 : sig
    type t = anonymous_interface_13
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get: t -> string -> any [@@js.index_get]
    val set: t -> string -> any -> unit [@@js.index_set]
  end
  module AnonymousInterface14 : sig
    type t = anonymous_interface_14
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get: t -> string -> 'ValueType [@@js.index_get]
    val set: t -> string -> 'ValueType -> unit [@@js.index_set]
  end
  module AnonymousInterface15 : sig
    type t = anonymous_interface_15
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get: t -> string -> 'ValueType monaco_Promise [@@js.index_get]
    val set: t -> string -> 'ValueType monaco_Promise -> unit [@@js.index_set]
  end
  module AnonymousInterface16 : sig
    type t = anonymous_interface_16
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get: t -> string -> monaco_languages_IMonarchLanguageRule list [@@js.index_get]
    val set: t -> string -> monaco_languages_IMonarchLanguageRule list -> unit [@@js.index_set]
  end
  module[@js.scope "monaco"] Monaco : sig
    module[@js.scope "Thenable"] Thenable : sig
      type 'T t = 'T monaco_Thenable
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val then_: 'T t -> ?onfulfilled:(value:'T -> ('TResult, 'TResult t) union2) -> ?onrejected:(reason:any -> ('TResult, 'TResult t) union2) -> unit -> 'TResult t [@@js.call "then"]
      val then_': 'T t -> ?onfulfilled:(value:'T -> ('TResult, 'TResult t) union2) -> ?onrejected:(reason:any -> unit) -> unit -> 'TResult t [@@js.call "then"]
    end
    module[@js.scope "IDisposable"] IDisposable : sig
      type t = monaco_IDisposable
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val dispose: t -> unit [@@js.call "dispose"]
    end
    module[@js.scope "IEvent"] IEvent : sig
      type 'T t = 'T monaco_IEvent
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val apply: 'T t -> listener:(e:'T -> any) -> ?thisArg:any -> unit -> monaco_IDisposable [@@js.apply]
    end
    module[@js.scope "Emitter"] Emitter : sig
      type 'T t = 'T monaco_Emitter
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val create: unit -> 'T t [@@js.create]
      val get_event: 'T t -> 'T monaco_IEvent [@@js.get "event"]
      val fire: 'T t -> ?event:'T -> unit -> unit [@@js.call "fire"]
      val dispose: 'T t -> unit [@@js.call "dispose"]
    end
    module Severity : sig
      type t = monaco_Severity
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "TValueCallback"] TValueCallback : sig
      type 'T t = 'T monaco_TValueCallback
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val apply: 'T t -> value:('T, 'T monaco_Thenable) union2 -> unit [@@js.apply]
    end
    module[@js.scope "ProgressCallback"] ProgressCallback : sig
      type t = monaco_ProgressCallback
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> progress:any -> any [@@js.apply]
    end
    module[@js.scope "Promise"] Promise : sig
      type 'V t = 'V monaco_Promise
      val t_to_js: ('V -> Ojs.t) -> 'V t -> Ojs.t
      val t_of_js: (Ojs.t -> 'V) -> Ojs.t -> 'V t
      type 'V t_1 = 'V t
      val t_1_to_js: ('V -> Ojs.t) -> 'V t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'V) -> Ojs.t -> 'V t_1
      val create: init:(complete:'V monaco_TValueCallback -> error:(err:any -> unit) -> progress:monaco_ProgressCallback -> unit) -> ?oncancel:any -> unit -> 'V t [@@js.create]
      val then_: 'V t -> ?success:(value:'V -> 'U t) -> ?error:(err:any -> 'U t) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_': 'V t -> ?success:(value:'V -> 'U t) -> ?error:(err:any -> ('U, 'U t) union2) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_'': 'V t -> ?success:(value:'V -> 'U t) -> ?error:(err:any -> 'U) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_''': 'V t -> ?success:(value:'V -> 'U t) -> ?error:(err:any -> unit) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_'''': 'V t -> ?success:(value:'V -> ('U, 'U t) union2) -> ?error:(err:any -> 'U t) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_''''': 'V t -> ?success:(value:'V -> ('U, 'U t) union2) -> ?error:(err:any -> ('U, 'U t) union2) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_'''''': 'V t -> ?success:(value:'V -> ('U, 'U t) union2) -> ?error:(err:any -> 'U) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_''''''': 'V t -> ?success:(value:'V -> ('U, 'U t) union2) -> ?error:(err:any -> unit) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_'''''''': 'V t -> ?success:(value:'V -> 'U) -> ?error:(err:any -> 'U t) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_''''''''': 'V t -> ?success:(value:'V -> 'U) -> ?error:(err:any -> ('U, 'U t) union2) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_'''''''''': 'V t -> ?success:(value:'V -> 'U) -> ?error:(err:any -> 'U) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val then_''''''''''': 'V t -> ?success:(value:'V -> 'U) -> ?error:(err:any -> unit) -> ?progress:monaco_ProgressCallback -> unit -> 'U t [@@js.call "then"]
      val done_: 'V t -> ?success:(value:'V -> unit) -> ?error:(err:any -> any) -> ?progress:monaco_ProgressCallback -> unit -> unit [@@js.call "done"]
      val cancel: 'V t -> unit [@@js.call "cancel"]
      val as_: value:never or_null -> never or_null t [@@js.global "as"]
      val as_': value:never or_undefined -> never or_undefined t [@@js.global "as"]
      val as_'': value:'ValueType t -> 'ValueType t [@@js.global "as"]
      val as_''': value:'ValueType monaco_Thenable -> 'ValueType monaco_Thenable [@@js.global "as"]
      val as_'''': value:'ValueType -> 'ValueType t [@@js.global "as"]
      val is: value:any -> bool [@@js.global "is"]
      val timeout: delay:float -> unit t [@@js.global "timeout"]
      val join: promises:'ValueType t list -> 'ValueType list t [@@js.global "join"]
      val join': promises:'ValueType monaco_Thenable list -> 'ValueType list monaco_Thenable [@@js.global "join"]
      val join'': promises:anonymous_interface_15 -> anonymous_interface_14 t [@@js.global "join"]
      val any: promises:'ValueType t list -> anonymous_interface_3 t [@@js.global "any"]
      val wrap: value:'ValueType monaco_Thenable -> 'ValueType t [@@js.global "wrap"]
      val wrap': value:'ValueType -> 'ValueType t [@@js.global "wrap"]
      val wrapError: error:Error.t_0 -> 'ValueType t [@@js.global "wrapError"]
    end
    module[@js.scope "CancellationTokenSource"] CancellationTokenSource : sig
      type t = monaco_CancellationTokenSource
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_token: t -> monaco_CancellationToken [@@js.get "token"]
      val cancel: t -> unit [@@js.call "cancel"]
      val dispose: t -> unit [@@js.call "dispose"]
    end
    module[@js.scope "CancellationToken"] CancellationToken : sig
      type t = monaco_CancellationToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_isCancellationRequested: t -> bool [@@js.get "isCancellationRequested"]
      val get_onCancellationRequested: t -> any monaco_IEvent [@@js.get "onCancellationRequested"]
    end
    module[@js.scope "Uri"] Uri : sig
      type t = monaco_Uri
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val isUri: thing:any -> bool [@@js.global "isUri"]
      val get_scheme: t -> string [@@js.get "scheme"]
      val get_authority: t -> string [@@js.get "authority"]
      val get_path: t -> string [@@js.get "path"]
      val get_query: t -> string [@@js.get "query"]
      val get_fragment: t -> string [@@js.get "fragment"]
      val get_fsPath: t -> string [@@js.get "fsPath"]
      val with_: t -> change:anonymous_interface_9 -> t [@@js.call "with"]
      val parse: value:string -> t [@@js.global "parse"]
      val file: path:string -> t [@@js.global "file"]
      val from: components:anonymous_interface_9 -> t [@@js.global "from"]
      val toString: t -> ?skipEncoding:bool -> unit -> string [@@js.call "toString"]
      val toJSON: t -> any [@@js.call "toJSON"]
      val revive: data:any -> t [@@js.global "revive"]
    end
    module KeyCode : sig
      type t = monaco_KeyCode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "KeyMod"] KeyMod : sig
      type t = monaco_KeyMod
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_CtrlCmd: unit -> float [@@js.get "CtrlCmd"]
      val get_Shift: unit -> float [@@js.get "Shift"]
      val get_Alt: unit -> float [@@js.get "Alt"]
      val get_WinCtrl: unit -> float [@@js.get "WinCtrl"]
      val chord: firstPart:float -> secondPart:float -> float [@@js.global "chord"]
    end
    module MarkedString : sig
      type t = monaco_MarkedString
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IKeyboardEvent"] IKeyboardEvent : sig
      type t = monaco_IKeyboardEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_browserEvent: t -> KeyboardEvent.t_0 [@@js.get "browserEvent"]
      val get_target: t -> HTMLElement.t_0 [@@js.get "target"]
      val get_ctrlKey: t -> bool [@@js.get "ctrlKey"]
      val get_shiftKey: t -> bool [@@js.get "shiftKey"]
      val get_altKey: t -> bool [@@js.get "altKey"]
      val get_metaKey: t -> bool [@@js.get "metaKey"]
      val get_keyCode: t -> monaco_KeyCode [@@js.get "keyCode"]
      val get_code: t -> string [@@js.get "code"]
      val equals: t -> keybinding:float -> bool [@@js.call "equals"]
      val preventDefault: t -> unit [@@js.call "preventDefault"]
      val stopPropagation: t -> unit [@@js.call "stopPropagation"]
    end
    module[@js.scope "IMouseEvent"] IMouseEvent : sig
      type t = monaco_IMouseEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_browserEvent: t -> MouseEvent.t_0 [@@js.get "browserEvent"]
      val get_leftButton: t -> bool [@@js.get "leftButton"]
      val get_middleButton: t -> bool [@@js.get "middleButton"]
      val get_rightButton: t -> bool [@@js.get "rightButton"]
      val get_target: t -> HTMLElement.t_0 [@@js.get "target"]
      val get_detail: t -> float [@@js.get "detail"]
      val get_posx: t -> float [@@js.get "posx"]
      val get_posy: t -> float [@@js.get "posy"]
      val get_ctrlKey: t -> bool [@@js.get "ctrlKey"]
      val get_shiftKey: t -> bool [@@js.get "shiftKey"]
      val get_altKey: t -> bool [@@js.get "altKey"]
      val get_metaKey: t -> bool [@@js.get "metaKey"]
      val get_timestamp: t -> float [@@js.get "timestamp"]
      val preventDefault: t -> unit [@@js.call "preventDefault"]
      val stopPropagation: t -> unit [@@js.call "stopPropagation"]
    end
    module[@js.scope "IScrollEvent"] IScrollEvent : sig
      type t = monaco_IScrollEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_scrollTop: t -> float [@@js.get "scrollTop"]
      val get_scrollLeft: t -> float [@@js.get "scrollLeft"]
      val get_scrollWidth: t -> float [@@js.get "scrollWidth"]
      val get_scrollHeight: t -> float [@@js.get "scrollHeight"]
      val get_scrollTopChanged: t -> bool [@@js.get "scrollTopChanged"]
      val get_scrollLeftChanged: t -> bool [@@js.get "scrollLeftChanged"]
      val get_scrollWidthChanged: t -> bool [@@js.get "scrollWidthChanged"]
      val get_scrollHeightChanged: t -> bool [@@js.get "scrollHeightChanged"]
    end
    module[@js.scope "IPosition"] IPosition : sig
      type t = monaco_IPosition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_lineNumber: t -> float [@@js.get "lineNumber"]
      val get_column: t -> float [@@js.get "column"]
    end
    module[@js.scope "Position"] Position : sig
      type t = monaco_Position
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_lineNumber: t -> float [@@js.get "lineNumber"]
      val get_column: t -> float [@@js.get "column"]
      val create: lineNumber:float -> column:float -> t [@@js.create]
      val equals: t -> other:monaco_IPosition -> bool [@@js.call "equals"]
      val equals': a:monaco_IPosition -> b:monaco_IPosition -> bool [@@js.global "equals"]
      val isBefore: t -> other:monaco_IPosition -> bool [@@js.call "isBefore"]
      val isBefore': a:monaco_IPosition -> b:monaco_IPosition -> bool [@@js.global "isBefore"]
      val isBeforeOrEqual: t -> other:monaco_IPosition -> bool [@@js.call "isBeforeOrEqual"]
      val isBeforeOrEqual': a:monaco_IPosition -> b:monaco_IPosition -> bool [@@js.global "isBeforeOrEqual"]
      val compare: a:monaco_IPosition -> b:monaco_IPosition -> float [@@js.global "compare"]
      val clone: t -> t [@@js.call "clone"]
      val toString: t -> string [@@js.call "toString"]
      val lift: pos:monaco_IPosition -> t [@@js.global "lift"]
      val isIPosition: obj:any -> bool [@@js.global "isIPosition"]
    end
    module[@js.scope "IRange"] IRange : sig
      type t = monaco_IRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_startLineNumber: t -> float [@@js.get "startLineNumber"]
      val get_startColumn: t -> float [@@js.get "startColumn"]
      val get_endLineNumber: t -> float [@@js.get "endLineNumber"]
      val get_endColumn: t -> float [@@js.get "endColumn"]
    end
    module[@js.scope "Range"] Range : sig
      type t = monaco_Range
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_startLineNumber: t -> float [@@js.get "startLineNumber"]
      val get_startColumn: t -> float [@@js.get "startColumn"]
      val get_endLineNumber: t -> float [@@js.get "endLineNumber"]
      val get_endColumn: t -> float [@@js.get "endColumn"]
      val create: startLineNumber:float -> startColumn:float -> endLineNumber:float -> endColumn:float -> t [@@js.create]
      val isEmpty: t -> bool [@@js.call "isEmpty"]
      val isEmpty': range:monaco_IRange -> bool [@@js.global "isEmpty"]
      val containsPosition: t -> position:monaco_IPosition -> bool [@@js.call "containsPosition"]
      val containsPosition': range:monaco_IRange -> position:monaco_IPosition -> bool [@@js.global "containsPosition"]
      val containsRange: t -> range:monaco_IRange -> bool [@@js.call "containsRange"]
      val containsRange': range:monaco_IRange -> otherRange:monaco_IRange -> bool [@@js.global "containsRange"]
      val plusRange: t -> range:monaco_IRange -> t [@@js.call "plusRange"]
      val plusRange': a:monaco_IRange -> b:monaco_IRange -> t [@@js.global "plusRange"]
      val intersectRanges: t -> range:monaco_IRange -> t [@@js.call "intersectRanges"]
      val intersectRanges': a:monaco_IRange -> b:monaco_IRange -> t [@@js.global "intersectRanges"]
      val equalsRange: t -> other:monaco_IRange -> bool [@@js.call "equalsRange"]
      val equalsRange': a:monaco_IRange -> b:monaco_IRange -> bool [@@js.global "equalsRange"]
      val getEndPosition: t -> monaco_Position [@@js.call "getEndPosition"]
      val getStartPosition: t -> monaco_Position [@@js.call "getStartPosition"]
      val cloneRange: t -> t [@@js.call "cloneRange"]
      val toString: t -> string [@@js.call "toString"]
      val setEndPosition: t -> endLineNumber:float -> endColumn:float -> t [@@js.call "setEndPosition"]
      val setStartPosition: t -> startLineNumber:float -> startColumn:float -> t [@@js.call "setStartPosition"]
      val collapseToStart: t -> t [@@js.call "collapseToStart"]
      val collapseToStart': range:monaco_IRange -> t [@@js.global "collapseToStart"]
      val fromPositions: start:monaco_IPosition -> ?end_:monaco_IPosition -> unit -> t [@@js.global "fromPositions"]
      val lift: range:monaco_IRange -> t [@@js.global "lift"]
      val isIRange: obj:any -> bool [@@js.global "isIRange"]
      val areIntersectingOrTouching: a:monaco_IRange -> b:monaco_IRange -> bool [@@js.global "areIntersectingOrTouching"]
      val compareRangesUsingStarts: a:monaco_IRange -> b:monaco_IRange -> float [@@js.global "compareRangesUsingStarts"]
      val compareRangesUsingEnds: a:monaco_IRange -> b:monaco_IRange -> float [@@js.global "compareRangesUsingEnds"]
      val spansMultipleLines: range:monaco_IRange -> bool [@@js.global "spansMultipleLines"]
    end
    module[@js.scope "ISelection"] ISelection : sig
      type t = monaco_ISelection
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_selectionStartLineNumber: t -> float [@@js.get "selectionStartLineNumber"]
      val get_selectionStartColumn: t -> float [@@js.get "selectionStartColumn"]
      val get_positionLineNumber: t -> float [@@js.get "positionLineNumber"]
      val get_positionColumn: t -> float [@@js.get "positionColumn"]
    end
    module[@js.scope "Selection"] Selection : sig
      type t = monaco_Selection
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_selectionStartLineNumber: t -> float [@@js.get "selectionStartLineNumber"]
      val get_selectionStartColumn: t -> float [@@js.get "selectionStartColumn"]
      val get_positionLineNumber: t -> float [@@js.get "positionLineNumber"]
      val get_positionColumn: t -> float [@@js.get "positionColumn"]
      val create: selectionStartLineNumber:float -> selectionStartColumn:float -> positionLineNumber:float -> positionColumn:float -> t [@@js.create]
      val clone: t -> t [@@js.call "clone"]
      val toString: t -> string [@@js.call "toString"]
      val equalsSelection: t -> other:monaco_ISelection -> bool [@@js.call "equalsSelection"]
      val selectionsEqual: a:monaco_ISelection -> b:monaco_ISelection -> bool [@@js.global "selectionsEqual"]
      val getDirection: t -> monaco_SelectionDirection [@@js.call "getDirection"]
      val setEndPosition: t -> endLineNumber:float -> endColumn:float -> t [@@js.call "setEndPosition"]
      val getPosition: t -> monaco_Position [@@js.call "getPosition"]
      val setStartPosition: t -> startLineNumber:float -> startColumn:float -> t [@@js.call "setStartPosition"]
      val fromPositions: start:monaco_IPosition -> ?end_:monaco_IPosition -> unit -> t [@@js.global "fromPositions"]
      val liftSelection: sel:monaco_ISelection -> t [@@js.global "liftSelection"]
      val selectionsArrEqual: a:monaco_ISelection list -> b:monaco_ISelection list -> bool [@@js.global "selectionsArrEqual"]
      val isISelection: obj:any -> bool [@@js.global "isISelection"]
      val createWithDirection: startLineNumber:float -> startColumn:float -> endLineNumber:float -> endColumn:float -> direction:monaco_SelectionDirection -> t [@@js.global "createWithDirection"]
      val cast: t -> monaco_Range [@@js.cast]
    end
    module SelectionDirection : sig
      type t = monaco_SelectionDirection
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Token"] Token : sig
      type t = monaco_Token
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__tokenBrand: t -> unknown [@@js.get "_tokenBrand"]
      val set__tokenBrand: t -> unknown -> unit [@@js.set "_tokenBrand"]
      val get_offset: t -> float [@@js.get "offset"]
      val get_type: t -> string [@@js.get "type"]
      val get_language: t -> string [@@js.get "language"]
      val create: offset:float -> type_:string -> language:string -> t [@@js.create]
      val toString: t -> string [@@js.call "toString"]
    end
    module[@js.scope "editor"] Editor : sig
      val create_: domElement:HTMLElement.t_0 -> ?options:monaco_editor_IEditorConstructionOptions -> ?override:monaco_editor_IEditorOverrideServices -> unit -> monaco_editor_IStandaloneCodeEditor [@@js.global "create"]
      val onDidCreateEditor: listener:(codeEditor:monaco_editor_ICodeEditor -> unit) -> monaco_IDisposable [@@js.global "onDidCreateEditor"]
      val createDiffEditor: domElement:HTMLElement.t_0 -> ?options:monaco_editor_IDiffEditorConstructionOptions -> ?override:monaco_editor_IEditorOverrideServices -> unit -> monaco_editor_IStandaloneDiffEditor [@@js.global "createDiffEditor"]
      module[@js.scope "IDiffNavigator"] IDiffNavigator : sig
        type t = monaco_editor_IDiffNavigator
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_revealFirst: t -> bool [@@js.get "revealFirst"]
        val set_revealFirst: t -> bool -> unit [@@js.set "revealFirst"]
        val canNavigate: t -> bool [@@js.call "canNavigate"]
        val next: t -> unit [@@js.call "next"]
        val previous: t -> unit [@@js.call "previous"]
        val dispose: t -> unit [@@js.call "dispose"]
      end
      module[@js.scope "IDiffNavigatorOptions"] IDiffNavigatorOptions : sig
        type t = monaco_editor_IDiffNavigatorOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_followsCaret: t -> bool [@@js.get "followsCaret"]
        val get_ignoreCharChanges: t -> bool [@@js.get "ignoreCharChanges"]
        val get_alwaysRevealFirst: t -> bool [@@js.get "alwaysRevealFirst"]
      end
      val createDiffNavigator: diffEditor:monaco_editor_IStandaloneDiffEditor -> ?opts:monaco_editor_IDiffNavigatorOptions -> unit -> monaco_editor_IDiffNavigator [@@js.global "createDiffNavigator"]
      val createModel: value:string -> ?language:string -> ?uri:monaco_Uri -> unit -> monaco_editor_IModel [@@js.global "createModel"]
      val setModelLanguage: model:monaco_editor_IModel -> language:string -> unit [@@js.global "setModelLanguage"]
      val setModelMarkers: model:monaco_editor_IModel -> owner:string -> markers:monaco_editor_IMarkerData list -> unit [@@js.global "setModelMarkers"]
      val getModelMarkers: filter:anonymous_interface_7 -> monaco_editor_IMarker list [@@js.global "getModelMarkers"]
      val getModel: uri:monaco_Uri -> monaco_editor_IModel [@@js.global "getModel"]
      val getModels: unit -> monaco_editor_IModel list [@@js.global "getModels"]
      val onDidCreateModel: listener:(model:monaco_editor_IModel -> unit) -> monaco_IDisposable [@@js.global "onDidCreateModel"]
      val onWillDisposeModel: listener:(model:monaco_editor_IModel -> unit) -> monaco_IDisposable [@@js.global "onWillDisposeModel"]
      val onDidChangeModelLanguage: listener:(e:anonymous_interface_5 -> unit) -> monaco_IDisposable [@@js.global "onDidChangeModelLanguage"]
      val createWebWorker: opts:monaco_editor_IWebWorkerOptions -> 'T monaco_editor_MonacoWebWorker [@@js.global "createWebWorker"]
      val colorizeElement: domNode:HTMLElement.t_0 -> options:monaco_editor_IColorizerElementOptions -> unit monaco_Promise [@@js.global "colorizeElement"]
      val colorize: text:string -> languageId:string -> options:monaco_editor_IColorizerOptions -> string monaco_Promise [@@js.global "colorize"]
      val colorizeModelLine: model:monaco_editor_IModel -> lineNumber:float -> ?tabSize:float -> unit -> string [@@js.global "colorizeModelLine"]
      val tokenize: text:string -> languageId:string -> monaco_Token list list [@@js.global "tokenize"]
      val defineTheme: themeName:string -> themeData:monaco_editor_IStandaloneThemeData -> unit [@@js.global "defineTheme"]
      val setTheme: themeName:string -> unit [@@js.global "setTheme"]
      module BuiltinTheme : sig
        type t = monaco_editor_BuiltinTheme
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "IStandaloneThemeData"] IStandaloneThemeData : sig
        type t = monaco_editor_IStandaloneThemeData
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_base: t -> monaco_editor_BuiltinTheme [@@js.get "base"]
        val set_base: t -> monaco_editor_BuiltinTheme -> unit [@@js.set "base"]
        val get_inherit: t -> bool [@@js.get "inherit"]
        val set_inherit: t -> bool -> unit [@@js.set "inherit"]
        val get_rules: t -> monaco_editor_ITokenThemeRule list [@@js.get "rules"]
        val set_rules: t -> monaco_editor_ITokenThemeRule list -> unit [@@js.set "rules"]
        val get_colors: t -> monaco_editor_IColors [@@js.get "colors"]
        val set_colors: t -> monaco_editor_IColors -> unit [@@js.set "colors"]
      end
      module IColors : sig
        type t = monaco_editor_IColors
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "ITokenThemeRule"] ITokenThemeRule : sig
        type t = monaco_editor_ITokenThemeRule
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_token: t -> string [@@js.get "token"]
        val set_token: t -> string -> unit [@@js.set "token"]
        val get_foreground: t -> string [@@js.get "foreground"]
        val set_foreground: t -> string -> unit [@@js.set "foreground"]
        val get_background: t -> string [@@js.get "background"]
        val set_background: t -> string -> unit [@@js.set "background"]
        val get_fontStyle: t -> string [@@js.get "fontStyle"]
        val set_fontStyle: t -> string -> unit [@@js.set "fontStyle"]
      end
      module[@js.scope "MonacoWebWorker"] MonacoWebWorker : sig
        type 'T t = 'T monaco_editor_MonacoWebWorker
        val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
        val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
        type 'T t_1 = 'T t
        val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
        val dispose: 'T t -> unit [@@js.call "dispose"]
        val getProxy: 'T t -> 'T monaco_Promise [@@js.call "getProxy"]
        val withSyncedResources: 'T t -> resources:monaco_Uri list -> 'T monaco_Promise [@@js.call "withSyncedResources"]
      end
      module[@js.scope "IWebWorkerOptions"] IWebWorkerOptions : sig
        type t = monaco_editor_IWebWorkerOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_moduleId: t -> string [@@js.get "moduleId"]
        val set_moduleId: t -> string -> unit [@@js.set "moduleId"]
        val get_createData: t -> any [@@js.get "createData"]
        val set_createData: t -> any -> unit [@@js.set "createData"]
        val get_label: t -> string [@@js.get "label"]
        val set_label: t -> string -> unit [@@js.set "label"]
      end
      module[@js.scope "IEditorConstructionOptions"] IEditorConstructionOptions : sig
        type t = monaco_editor_IEditorConstructionOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_model: t -> monaco_editor_IModel [@@js.get "model"]
        val set_model: t -> monaco_editor_IModel -> unit [@@js.set "model"]
        val get_value: t -> string [@@js.get "value"]
        val set_value: t -> string -> unit [@@js.set "value"]
        val get_language: t -> string [@@js.get "language"]
        val set_language: t -> string -> unit [@@js.set "language"]
        val get_theme: t -> string [@@js.get "theme"]
        val set_theme: t -> string -> unit [@@js.set "theme"]
        val get_accessibilityHelpUrl: t -> string [@@js.get "accessibilityHelpUrl"]
        val set_accessibilityHelpUrl: t -> string -> unit [@@js.set "accessibilityHelpUrl"]
        val cast: t -> monaco_editor_IEditorOptions [@@js.cast]
      end
      module[@js.scope "IDiffEditorConstructionOptions"] IDiffEditorConstructionOptions : sig
        type t = monaco_editor_IDiffEditorConstructionOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_theme: t -> string [@@js.get "theme"]
        val set_theme: t -> string -> unit [@@js.set "theme"]
        val cast: t -> monaco_editor_IDiffEditorOptions [@@js.cast]
      end
      module[@js.scope "IStandaloneCodeEditor"] IStandaloneCodeEditor : sig
        type t = monaco_editor_IStandaloneCodeEditor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val addCommand: t -> keybinding:float -> handler:monaco_editor_ICommandHandler -> context:string -> string [@@js.call "addCommand"]
        val createContextKey: t -> key:string -> defaultValue:'T -> 'T monaco_editor_IContextKey [@@js.call "createContextKey"]
        val addAction: t -> descriptor:monaco_editor_IActionDescriptor -> monaco_IDisposable [@@js.call "addAction"]
        val cast: t -> monaco_editor_ICodeEditor [@@js.cast]
      end
      module[@js.scope "IStandaloneDiffEditor"] IStandaloneDiffEditor : sig
        type t = monaco_editor_IStandaloneDiffEditor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val addCommand: t -> keybinding:float -> handler:monaco_editor_ICommandHandler -> context:string -> string [@@js.call "addCommand"]
        val createContextKey: t -> key:string -> defaultValue:'T -> 'T monaco_editor_IContextKey [@@js.call "createContextKey"]
        val addAction: t -> descriptor:monaco_editor_IActionDescriptor -> monaco_IDisposable [@@js.call "addAction"]
        val getOriginalEditor: t -> monaco_editor_IStandaloneCodeEditor [@@js.call "getOriginalEditor"]
        val getModifiedEditor: t -> monaco_editor_IStandaloneCodeEditor [@@js.call "getModifiedEditor"]
        val cast: t -> monaco_editor_IDiffEditor [@@js.cast]
      end
      module[@js.scope "ICommandHandler"] ICommandHandler : sig
        type t = monaco_editor_ICommandHandler
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val apply: t -> args:(any list [@js.variadic]) -> unit [@@js.apply]
      end
      module[@js.scope "IContextKey"] IContextKey : sig
        type 'T t = 'T monaco_editor_IContextKey
        val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
        val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
        type 'T t_1 = 'T t
        val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
        val set_: 'T t -> value:'T -> unit [@@js.call "set"]
        val reset: 'T t -> unit [@@js.call "reset"]
        val get_: 'T t -> 'T [@@js.call "get"]
      end
      module[@js.scope "IEditorOverrideServices"] IEditorOverrideServices : sig
        type t = monaco_editor_IEditorOverrideServices
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get: t -> string -> any [@@js.index_get]
        val set: t -> string -> any -> unit [@@js.index_set]
      end
      module[@js.scope "IMarker"] IMarker : sig
        type t = monaco_editor_IMarker
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_owner: t -> string [@@js.get "owner"]
        val set_owner: t -> string -> unit [@@js.set "owner"]
        val get_resource: t -> monaco_Uri [@@js.get "resource"]
        val set_resource: t -> monaco_Uri -> unit [@@js.set "resource"]
        val get_severity: t -> monaco_Severity [@@js.get "severity"]
        val set_severity: t -> monaco_Severity -> unit [@@js.set "severity"]
        val get_code: t -> string [@@js.get "code"]
        val set_code: t -> string -> unit [@@js.set "code"]
        val get_message: t -> string [@@js.get "message"]
        val set_message: t -> string -> unit [@@js.set "message"]
        val get_source: t -> string [@@js.get "source"]
        val set_source: t -> string -> unit [@@js.set "source"]
        val get_startLineNumber: t -> float [@@js.get "startLineNumber"]
        val set_startLineNumber: t -> float -> unit [@@js.set "startLineNumber"]
        val get_startColumn: t -> float [@@js.get "startColumn"]
        val set_startColumn: t -> float -> unit [@@js.set "startColumn"]
        val get_endLineNumber: t -> float [@@js.get "endLineNumber"]
        val set_endLineNumber: t -> float -> unit [@@js.set "endLineNumber"]
        val get_endColumn: t -> float [@@js.get "endColumn"]
        val set_endColumn: t -> float -> unit [@@js.set "endColumn"]
      end
      module[@js.scope "IMarkerData"] IMarkerData : sig
        type t = monaco_editor_IMarkerData
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_code: t -> string [@@js.get "code"]
        val set_code: t -> string -> unit [@@js.set "code"]
        val get_severity: t -> monaco_Severity [@@js.get "severity"]
        val set_severity: t -> monaco_Severity -> unit [@@js.set "severity"]
        val get_message: t -> string [@@js.get "message"]
        val set_message: t -> string -> unit [@@js.set "message"]
        val get_source: t -> string [@@js.get "source"]
        val set_source: t -> string -> unit [@@js.set "source"]
        val get_startLineNumber: t -> float [@@js.get "startLineNumber"]
        val set_startLineNumber: t -> float -> unit [@@js.set "startLineNumber"]
        val get_startColumn: t -> float [@@js.get "startColumn"]
        val set_startColumn: t -> float -> unit [@@js.set "startColumn"]
        val get_endLineNumber: t -> float [@@js.get "endLineNumber"]
        val set_endLineNumber: t -> float -> unit [@@js.set "endLineNumber"]
        val get_endColumn: t -> float [@@js.get "endColumn"]
        val set_endColumn: t -> float -> unit [@@js.set "endColumn"]
      end
      module[@js.scope "IColorizerOptions"] IColorizerOptions : sig
        type t = monaco_editor_IColorizerOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_tabSize: t -> float [@@js.get "tabSize"]
        val set_tabSize: t -> float -> unit [@@js.set "tabSize"]
      end
      module[@js.scope "IColorizerElementOptions"] IColorizerElementOptions : sig
        type t = monaco_editor_IColorizerElementOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_theme: t -> string [@@js.get "theme"]
        val set_theme: t -> string -> unit [@@js.set "theme"]
        val get_mimeType: t -> string [@@js.get "mimeType"]
        val set_mimeType: t -> string -> unit [@@js.set "mimeType"]
        val cast: t -> monaco_editor_IColorizerOptions [@@js.cast]
      end
      module ScrollbarVisibility : sig
        type t = monaco_editor_ScrollbarVisibility
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "ThemeColor"] ThemeColor : sig
        type t = monaco_editor_ThemeColor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_id: t -> string [@@js.get "id"]
        val set_id: t -> string -> unit [@@js.set "id"]
      end
      module OverviewRulerLane : sig
        type t = monaco_editor_OverviewRulerLane
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "IModelDecorationOverviewRulerOptions"] IModelDecorationOverviewRulerOptions : sig
        type t = monaco_editor_IModelDecorationOverviewRulerOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_color: t -> monaco_editor_ThemeColor or_string [@@js.get "color"]
        val set_color: t -> monaco_editor_ThemeColor or_string -> unit [@@js.set "color"]
        val get_darkColor: t -> monaco_editor_ThemeColor or_string [@@js.get "darkColor"]
        val set_darkColor: t -> monaco_editor_ThemeColor or_string -> unit [@@js.set "darkColor"]
        val get_hcColor: t -> monaco_editor_ThemeColor or_string [@@js.get "hcColor"]
        val set_hcColor: t -> monaco_editor_ThemeColor or_string -> unit [@@js.set "hcColor"]
        val get_position: t -> monaco_editor_OverviewRulerLane [@@js.get "position"]
        val set_position: t -> monaco_editor_OverviewRulerLane -> unit [@@js.set "position"]
      end
      module[@js.scope "IModelDecorationOptions"] IModelDecorationOptions : sig
        type t = monaco_editor_IModelDecorationOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_stickiness: t -> monaco_editor_TrackedRangeStickiness [@@js.get "stickiness"]
        val set_stickiness: t -> monaco_editor_TrackedRangeStickiness -> unit [@@js.set "stickiness"]
        val get_className: t -> string [@@js.get "className"]
        val set_className: t -> string -> unit [@@js.set "className"]
        val get_glyphMarginHoverMessage: t -> (monaco_MarkedString, monaco_MarkedString) or_array [@@js.get "glyphMarginHoverMessage"]
        val set_glyphMarginHoverMessage: t -> (monaco_MarkedString, monaco_MarkedString) or_array -> unit [@@js.set "glyphMarginHoverMessage"]
        val get_hoverMessage: t -> (monaco_MarkedString, monaco_MarkedString) or_array [@@js.get "hoverMessage"]
        val set_hoverMessage: t -> (monaco_MarkedString, monaco_MarkedString) or_array -> unit [@@js.set "hoverMessage"]
        val get_isWholeLine: t -> bool [@@js.get "isWholeLine"]
        val set_isWholeLine: t -> bool -> unit [@@js.set "isWholeLine"]
        val get_overviewRuler: t -> monaco_editor_IModelDecorationOverviewRulerOptions [@@js.get "overviewRuler"]
        val set_overviewRuler: t -> monaco_editor_IModelDecorationOverviewRulerOptions -> unit [@@js.set "overviewRuler"]
        val get_glyphMarginClassName: t -> string [@@js.get "glyphMarginClassName"]
        val set_glyphMarginClassName: t -> string -> unit [@@js.set "glyphMarginClassName"]
        val get_linesDecorationsClassName: t -> string [@@js.get "linesDecorationsClassName"]
        val set_linesDecorationsClassName: t -> string -> unit [@@js.set "linesDecorationsClassName"]
        val get_marginClassName: t -> string [@@js.get "marginClassName"]
        val set_marginClassName: t -> string -> unit [@@js.set "marginClassName"]
        val get_inlineClassName: t -> string [@@js.get "inlineClassName"]
        val set_inlineClassName: t -> string -> unit [@@js.set "inlineClassName"]
        val get_beforeContentClassName: t -> string [@@js.get "beforeContentClassName"]
        val set_beforeContentClassName: t -> string -> unit [@@js.set "beforeContentClassName"]
        val get_afterContentClassName: t -> string [@@js.get "afterContentClassName"]
        val set_afterContentClassName: t -> string -> unit [@@js.set "afterContentClassName"]
      end
      module[@js.scope "IModelDeltaDecoration"] IModelDeltaDecoration : sig
        type t = monaco_editor_IModelDeltaDecoration
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
        val get_options: t -> monaco_editor_IModelDecorationOptions [@@js.get "options"]
        val set_options: t -> monaco_editor_IModelDecorationOptions -> unit [@@js.set "options"]
      end
      module[@js.scope "IModelDecoration"] IModelDecoration : sig
        type t = monaco_editor_IModelDecoration
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_id: t -> string [@@js.get "id"]
        val get_ownerId: t -> float [@@js.get "ownerId"]
        val get_range: t -> monaco_Range [@@js.get "range"]
        val get_options: t -> monaco_editor_IModelDecorationOptions [@@js.get "options"]
        val get_isForValidation: t -> bool [@@js.get "isForValidation"]
      end
      module[@js.scope "IWordAtPosition"] IWordAtPosition : sig
        type t = monaco_editor_IWordAtPosition
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_word: t -> string [@@js.get "word"]
        val get_startColumn: t -> float [@@js.get "startColumn"]
        val get_endColumn: t -> float [@@js.get "endColumn"]
      end
      module EndOfLinePreference : sig
        type t = monaco_editor_EndOfLinePreference
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DefaultEndOfLine : sig
        type t = monaco_editor_DefaultEndOfLine
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module EndOfLineSequence : sig
        type t = monaco_editor_EndOfLineSequence
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "ISingleEditOperationIdentifier"] ISingleEditOperationIdentifier : sig
        type t = monaco_editor_ISingleEditOperationIdentifier
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_major: t -> float [@@js.get "major"]
        val set_major: t -> float -> unit [@@js.set "major"]
        val get_minor: t -> float [@@js.get "minor"]
        val set_minor: t -> float -> unit [@@js.set "minor"]
      end
      module[@js.scope "IEditOperationBuilder"] IEditOperationBuilder : sig
        type t = monaco_editor_IEditOperationBuilder
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val addEditOperation: t -> range:monaco_Range -> text:string -> unit [@@js.call "addEditOperation"]
        val addTrackedEditOperation: t -> range:monaco_Range -> text:string -> unit [@@js.call "addTrackedEditOperation"]
        val trackSelection: t -> selection:monaco_Selection -> ?trackPreviousOnEmpty:bool -> unit -> string [@@js.call "trackSelection"]
      end
      module[@js.scope "ICursorStateComputerData"] ICursorStateComputerData : sig
        type t = monaco_editor_ICursorStateComputerData
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getInverseEditOperations: t -> monaco_editor_IIdentifiedSingleEditOperation list [@@js.call "getInverseEditOperations"]
        val getTrackedSelection: t -> id:string -> monaco_Selection [@@js.call "getTrackedSelection"]
      end
      module[@js.scope "ICommand"] ICommand : sig
        type t = monaco_editor_ICommand
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getEditOperations: t -> model:monaco_editor_ITokenizedModel -> builder:monaco_editor_IEditOperationBuilder -> unit [@@js.call "getEditOperations"]
        val computeCursorState: t -> model:monaco_editor_ITokenizedModel -> helper:monaco_editor_ICursorStateComputerData -> monaco_Selection [@@js.call "computeCursorState"]
      end
      module[@js.scope "ISingleEditOperation"] ISingleEditOperation : sig
        type t = monaco_editor_ISingleEditOperation
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
        val get_text: t -> string [@@js.get "text"]
        val set_text: t -> string -> unit [@@js.set "text"]
        val get_forceMoveMarkers: t -> bool [@@js.get "forceMoveMarkers"]
        val set_forceMoveMarkers: t -> bool -> unit [@@js.set "forceMoveMarkers"]
      end
      module[@js.scope "IIdentifiedSingleEditOperation"] IIdentifiedSingleEditOperation : sig
        type t = monaco_editor_IIdentifiedSingleEditOperation
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_identifier: t -> monaco_editor_ISingleEditOperationIdentifier [@@js.get "identifier"]
        val set_identifier: t -> monaco_editor_ISingleEditOperationIdentifier -> unit [@@js.set "identifier"]
        val get_range: t -> monaco_Range [@@js.get "range"]
        val set_range: t -> monaco_Range -> unit [@@js.set "range"]
        val get_text: t -> string [@@js.get "text"]
        val set_text: t -> string -> unit [@@js.set "text"]
        val get_forceMoveMarkers: t -> bool [@@js.get "forceMoveMarkers"]
        val set_forceMoveMarkers: t -> bool -> unit [@@js.set "forceMoveMarkers"]
        val get_isAutoWhitespaceEdit: t -> bool [@@js.get "isAutoWhitespaceEdit"]
        val set_isAutoWhitespaceEdit: t -> bool -> unit [@@js.set "isAutoWhitespaceEdit"]
      end
      module[@js.scope "ICursorStateComputer"] ICursorStateComputer : sig
        type t = monaco_editor_ICursorStateComputer
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val apply: t -> inverseEditOperations:monaco_editor_IIdentifiedSingleEditOperation list -> monaco_Selection list [@@js.apply]
      end
      module[@js.scope "TextModelResolvedOptions"] TextModelResolvedOptions : sig
        type t = monaco_editor_TextModelResolvedOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get__textModelResolvedOptionsBrand: t -> unknown [@@js.get "_textModelResolvedOptionsBrand"]
        val set__textModelResolvedOptionsBrand: t -> unknown -> unit [@@js.set "_textModelResolvedOptionsBrand"]
        val get_tabSize: t -> float [@@js.get "tabSize"]
        val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
        val get_defaultEOL: t -> monaco_editor_DefaultEndOfLine [@@js.get "defaultEOL"]
        val get_trimAutoWhitespace: t -> bool [@@js.get "trimAutoWhitespace"]
      end
      module[@js.scope "ITextModelUpdateOptions"] ITextModelUpdateOptions : sig
        type t = monaco_editor_ITextModelUpdateOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_tabSize: t -> float [@@js.get "tabSize"]
        val set_tabSize: t -> float -> unit [@@js.set "tabSize"]
        val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
        val set_insertSpaces: t -> bool -> unit [@@js.set "insertSpaces"]
        val get_trimAutoWhitespace: t -> bool [@@js.get "trimAutoWhitespace"]
        val set_trimAutoWhitespace: t -> bool -> unit [@@js.set "trimAutoWhitespace"]
      end
      module[@js.scope "ITextModel"] ITextModel : sig
        type t = monaco_editor_ITextModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getOptions: t -> monaco_editor_TextModelResolvedOptions [@@js.call "getOptions"]
        val getVersionId: t -> float [@@js.call "getVersionId"]
        val getAlternativeVersionId: t -> float [@@js.call "getAlternativeVersionId"]
        val setValue: t -> newValue:string -> unit [@@js.call "setValue"]
        val getValue: t -> ?eol:monaco_editor_EndOfLinePreference -> ?preserveBOM:bool -> unit -> string [@@js.call "getValue"]
        val getValueLength: t -> ?eol:monaco_editor_EndOfLinePreference -> ?preserveBOM:bool -> unit -> float [@@js.call "getValueLength"]
        val getValueInRange: t -> range:monaco_IRange -> ?eol:monaco_editor_EndOfLinePreference -> unit -> string [@@js.call "getValueInRange"]
        val getValueLengthInRange: t -> range:monaco_IRange -> float [@@js.call "getValueLengthInRange"]
        val getLineCount: t -> float [@@js.call "getLineCount"]
        val getLineContent: t -> lineNumber:float -> string [@@js.call "getLineContent"]
        val getLinesContent: t -> string list [@@js.call "getLinesContent"]
        val getEOL: t -> string [@@js.call "getEOL"]
        val setEOL: t -> eol:monaco_editor_EndOfLineSequence -> unit [@@js.call "setEOL"]
        val getLineMinColumn: t -> lineNumber:float -> float [@@js.call "getLineMinColumn"]
        val getLineMaxColumn: t -> lineNumber:float -> float [@@js.call "getLineMaxColumn"]
        val getLineFirstNonWhitespaceColumn: t -> lineNumber:float -> float [@@js.call "getLineFirstNonWhitespaceColumn"]
        val getLineLastNonWhitespaceColumn: t -> lineNumber:float -> float [@@js.call "getLineLastNonWhitespaceColumn"]
        val validatePosition: t -> position:monaco_IPosition -> monaco_Position [@@js.call "validatePosition"]
        val modifyPosition: t -> position:monaco_IPosition -> offset:float -> monaco_Position [@@js.call "modifyPosition"]
        val validateRange: t -> range:monaco_IRange -> monaco_Range [@@js.call "validateRange"]
        val getOffsetAt: t -> position:monaco_IPosition -> float [@@js.call "getOffsetAt"]
        val getPositionAt: t -> offset:float -> monaco_Position [@@js.call "getPositionAt"]
        val getFullModelRange: t -> monaco_Range [@@js.call "getFullModelRange"]
        val isDisposed: t -> bool [@@js.call "isDisposed"]
        val findMatches: t -> searchString:string -> searchOnlyEditableRange:bool -> isRegex:bool -> matchCase:bool -> wordSeparators:string -> captureMatches:bool -> ?limitResultCount:float -> unit -> monaco_editor_FindMatch list [@@js.call "findMatches"]
        val findMatches': t -> searchString:string -> searchScope:monaco_IRange -> isRegex:bool -> matchCase:bool -> wordSeparators:string -> captureMatches:bool -> ?limitResultCount:float -> unit -> monaco_editor_FindMatch list [@@js.call "findMatches"]
        val findNextMatch: t -> searchString:string -> searchStart:monaco_IPosition -> isRegex:bool -> matchCase:bool -> wordSeparators:string -> captureMatches:bool -> monaco_editor_FindMatch [@@js.call "findNextMatch"]
        val findPreviousMatch: t -> searchString:string -> searchStart:monaco_IPosition -> isRegex:bool -> matchCase:bool -> wordSeparators:string -> captureMatches:bool -> monaco_editor_FindMatch [@@js.call "findPreviousMatch"]
      end
      module[@js.scope "FindMatch"] FindMatch : sig
        type t = monaco_editor_FindMatch
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get__findMatchBrand: t -> unknown [@@js.get "_findMatchBrand"]
        val set__findMatchBrand: t -> unknown -> unit [@@js.set "_findMatchBrand"]
        val get_range: t -> monaco_Range [@@js.get "range"]
        val get_matches: t -> string list [@@js.get "matches"]
      end
      module[@js.scope "IReadOnlyModel"] IReadOnlyModel : sig
        type t = monaco_editor_IReadOnlyModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_uri: t -> monaco_Uri [@@js.get "uri"]
        val getModeId: t -> string [@@js.call "getModeId"]
        val getWordAtPosition: t -> position:monaco_IPosition -> monaco_editor_IWordAtPosition [@@js.call "getWordAtPosition"]
        val getWordUntilPosition: t -> position:monaco_IPosition -> monaco_editor_IWordAtPosition [@@js.call "getWordUntilPosition"]
        val cast: t -> monaco_editor_ITextModel [@@js.cast]
      end
      module[@js.scope "ITokenizedModel"] ITokenizedModel : sig
        type t = monaco_editor_ITokenizedModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getModeId: t -> string [@@js.call "getModeId"]
        val getWordAtPosition: t -> position:monaco_IPosition -> monaco_editor_IWordAtPosition [@@js.call "getWordAtPosition"]
        val getWordUntilPosition: t -> position:monaco_IPosition -> monaco_editor_IWordAtPosition [@@js.call "getWordUntilPosition"]
        val cast: t -> monaco_editor_ITextModel [@@js.cast]
      end
      module[@js.scope "ITextModelWithMarkers"] ITextModelWithMarkers : sig
        type t = monaco_editor_ITextModelWithMarkers
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val cast: t -> monaco_editor_ITextModel [@@js.cast]
      end
      module TrackedRangeStickiness : sig
        type t = monaco_editor_TrackedRangeStickiness
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "ITextModelWithDecorations"] ITextModelWithDecorations : sig
        type t = monaco_editor_ITextModelWithDecorations
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val deltaDecorations: t -> oldDecorations:string list -> newDecorations:monaco_editor_IModelDeltaDecoration list -> ?ownerId:float -> unit -> string list [@@js.call "deltaDecorations"]
        val getDecorationOptions: t -> id:string -> monaco_editor_IModelDecorationOptions [@@js.call "getDecorationOptions"]
        val getDecorationRange: t -> id:string -> monaco_Range [@@js.call "getDecorationRange"]
        val getLineDecorations: t -> lineNumber:float -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getLineDecorations"]
        val getLinesDecorations: t -> startLineNumber:float -> endLineNumber:float -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getLinesDecorations"]
        val getDecorationsInRange: t -> range:monaco_IRange -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getDecorationsInRange"]
        val getAllDecorations: t -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getAllDecorations"]
      end
      module[@js.scope "IEditableTextModel"] IEditableTextModel : sig
        type t = monaco_editor_IEditableTextModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val normalizeIndentation: t -> str:string -> string [@@js.call "normalizeIndentation"]
        val getOneIndent: t -> string [@@js.call "getOneIndent"]
        val updateOptions: t -> newOpts:monaco_editor_ITextModelUpdateOptions -> unit [@@js.call "updateOptions"]
        val detectIndentation: t -> defaultInsertSpaces:bool -> defaultTabSize:float -> unit [@@js.call "detectIndentation"]
        val pushStackElement: t -> unit [@@js.call "pushStackElement"]
        val pushEditOperations: t -> beforeCursorState:monaco_Selection list -> editOperations:monaco_editor_IIdentifiedSingleEditOperation list -> cursorStateComputer:monaco_editor_ICursorStateComputer -> monaco_Selection list [@@js.call "pushEditOperations"]
        val applyEdits: t -> operations:monaco_editor_IIdentifiedSingleEditOperation list -> monaco_editor_IIdentifiedSingleEditOperation list [@@js.call "applyEdits"]
        val cast: t -> monaco_editor_ITextModelWithMarkers [@@js.cast]
      end
      module[@js.scope "IModel"] IModel : sig
        type t = monaco_editor_IModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val onDidChangeContent: t -> listener:(e:monaco_editor_IModelContentChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeContent"]
        val onDidChangeDecorations: t -> listener:(e:monaco_editor_IModelDecorationsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeDecorations"]
        val onDidChangeOptions: t -> listener:(e:monaco_editor_IModelOptionsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeOptions"]
        val onDidChangeLanguage: t -> listener:(e:monaco_editor_IModelLanguageChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeLanguage"]
        val onWillDispose: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onWillDispose"]
        val get_id: t -> string [@@js.get "id"]
        val dispose: t -> unit [@@js.call "dispose"]
        val cast: t -> monaco_editor_IReadOnlyModel [@@js.cast]
        val cast': t -> monaco_editor_IEditableTextModel [@@js.cast]
        val cast'': t -> monaco_editor_ITextModelWithMarkers [@@js.cast]
        val cast''': t -> monaco_editor_ITokenizedModel [@@js.cast]
        val cast'''': t -> monaco_editor_ITextModelWithDecorations [@@js.cast]
      end
      module[@js.scope "IDiffEditorModel"] IDiffEditorModel : sig
        type t = monaco_editor_IDiffEditorModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_original: t -> monaco_editor_IModel [@@js.get "original"]
        val set_original: t -> monaco_editor_IModel -> unit [@@js.set "original"]
        val get_modified: t -> monaco_editor_IModel [@@js.get "modified"]
        val set_modified: t -> monaco_editor_IModel -> unit [@@js.set "modified"]
      end
      module[@js.scope "IModelChangedEvent"] IModelChangedEvent : sig
        type t = monaco_editor_IModelChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_oldModelUrl: t -> monaco_Uri [@@js.get "oldModelUrl"]
        val get_newModelUrl: t -> monaco_Uri [@@js.get "newModelUrl"]
      end
      module[@js.scope "IDimension"] IDimension : sig
        type t = monaco_editor_IDimension
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_width: t -> float [@@js.get "width"]
        val set_width: t -> float -> unit [@@js.set "width"]
        val get_height: t -> float [@@js.get "height"]
        val set_height: t -> float -> unit [@@js.set "height"]
      end
      module[@js.scope "IChange"] IChange : sig
        type t = monaco_editor_IChange
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_originalStartLineNumber: t -> float [@@js.get "originalStartLineNumber"]
        val get_originalEndLineNumber: t -> float [@@js.get "originalEndLineNumber"]
        val get_modifiedStartLineNumber: t -> float [@@js.get "modifiedStartLineNumber"]
        val get_modifiedEndLineNumber: t -> float [@@js.get "modifiedEndLineNumber"]
      end
      module[@js.scope "ICharChange"] ICharChange : sig
        type t = monaco_editor_ICharChange
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_originalStartColumn: t -> float [@@js.get "originalStartColumn"]
        val get_originalEndColumn: t -> float [@@js.get "originalEndColumn"]
        val get_modifiedStartColumn: t -> float [@@js.get "modifiedStartColumn"]
        val get_modifiedEndColumn: t -> float [@@js.get "modifiedEndColumn"]
        val cast: t -> monaco_editor_IChange [@@js.cast]
      end
      module[@js.scope "ILineChange"] ILineChange : sig
        type t = monaco_editor_ILineChange
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_charChanges: t -> monaco_editor_ICharChange list [@@js.get "charChanges"]
        val cast: t -> monaco_editor_IChange [@@js.cast]
      end
      module[@js.scope "IDiffLineInformation"] IDiffLineInformation : sig
        type t = monaco_editor_IDiffLineInformation
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_equivalentLineNumber: t -> float [@@js.get "equivalentLineNumber"]
      end
      module[@js.scope "INewScrollPosition"] INewScrollPosition : sig
        type t = monaco_editor_INewScrollPosition
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_scrollLeft: t -> float [@@js.get "scrollLeft"]
        val set_scrollLeft: t -> float -> unit [@@js.set "scrollLeft"]
        val get_scrollTop: t -> float [@@js.get "scrollTop"]
        val set_scrollTop: t -> float -> unit [@@js.set "scrollTop"]
      end
      module[@js.scope "IActionDescriptor"] IActionDescriptor : sig
        type t = monaco_editor_IActionDescriptor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_id: t -> string [@@js.get "id"]
        val set_id: t -> string -> unit [@@js.set "id"]
        val get_label: t -> string [@@js.get "label"]
        val set_label: t -> string -> unit [@@js.set "label"]
        val get_precondition: t -> string [@@js.get "precondition"]
        val set_precondition: t -> string -> unit [@@js.set "precondition"]
        val get_keybindings: t -> float list [@@js.get "keybindings"]
        val set_keybindings: t -> float list -> unit [@@js.set "keybindings"]
        val get_keybindingContext: t -> string [@@js.get "keybindingContext"]
        val set_keybindingContext: t -> string -> unit [@@js.set "keybindingContext"]
        val get_contextMenuGroupId: t -> string [@@js.get "contextMenuGroupId"]
        val set_contextMenuGroupId: t -> string -> unit [@@js.set "contextMenuGroupId"]
        val get_contextMenuOrder: t -> float [@@js.get "contextMenuOrder"]
        val set_contextMenuOrder: t -> float -> unit [@@js.set "contextMenuOrder"]
        val run: t -> editor:monaco_editor_ICommonCodeEditor -> (unit, unit monaco_Promise) union2 [@@js.call "run"]
      end
      module[@js.scope "IEditorAction"] IEditorAction : sig
        type t = monaco_editor_IEditorAction
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_id: t -> string [@@js.get "id"]
        val get_label: t -> string [@@js.get "label"]
        val get_alias: t -> string [@@js.get "alias"]
        val isSupported: t -> bool [@@js.call "isSupported"]
        val run: t -> unit monaco_Promise [@@js.call "run"]
      end
      module IEditorModel : sig
        type t = monaco_editor_IEditorModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "ICursorState"] ICursorState : sig
        type t = monaco_editor_ICursorState
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_inSelectionMode: t -> bool [@@js.get "inSelectionMode"]
        val set_inSelectionMode: t -> bool -> unit [@@js.set "inSelectionMode"]
        val get_selectionStart: t -> monaco_IPosition [@@js.get "selectionStart"]
        val set_selectionStart: t -> monaco_IPosition -> unit [@@js.set "selectionStart"]
        val get_position: t -> monaco_IPosition [@@js.get "position"]
        val set_position: t -> monaco_IPosition -> unit [@@js.set "position"]
      end
      module[@js.scope "IViewState"] IViewState : sig
        type t = monaco_editor_IViewState
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_scrollTop: t -> float [@@js.get "scrollTop"]
        val set_scrollTop: t -> float -> unit [@@js.set "scrollTop"]
        val get_scrollTopWithoutViewZones: t -> float [@@js.get "scrollTopWithoutViewZones"]
        val set_scrollTopWithoutViewZones: t -> float -> unit [@@js.set "scrollTopWithoutViewZones"]
        val get_scrollLeft: t -> float [@@js.get "scrollLeft"]
        val set_scrollLeft: t -> float -> unit [@@js.set "scrollLeft"]
      end
      module[@js.scope "ICodeEditorViewState"] ICodeEditorViewState : sig
        type t = monaco_editor_ICodeEditorViewState
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_cursorState: t -> monaco_editor_ICursorState list [@@js.get "cursorState"]
        val set_cursorState: t -> monaco_editor_ICursorState list -> unit [@@js.set "cursorState"]
        val get_viewState: t -> monaco_editor_IViewState [@@js.get "viewState"]
        val set_viewState: t -> monaco_editor_IViewState -> unit [@@js.set "viewState"]
        val get_contributionsState: t -> anonymous_interface_13 [@@js.get "contributionsState"]
        val set_contributionsState: t -> anonymous_interface_13 -> unit [@@js.set "contributionsState"]
      end
      module[@js.scope "IDiffEditorViewState"] IDiffEditorViewState : sig
        type t = monaco_editor_IDiffEditorViewState
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_original: t -> monaco_editor_ICodeEditorViewState [@@js.get "original"]
        val set_original: t -> monaco_editor_ICodeEditorViewState -> unit [@@js.set "original"]
        val get_modified: t -> monaco_editor_ICodeEditorViewState [@@js.get "modified"]
        val set_modified: t -> monaco_editor_ICodeEditorViewState -> unit [@@js.set "modified"]
      end
      module IEditorViewState : sig
        type t = monaco_editor_IEditorViewState
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "IEditor"] IEditor : sig
        type t = monaco_editor_IEditor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val onDidDispose: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidDispose"]
        val dispose: t -> unit [@@js.call "dispose"]
        val getId: t -> string [@@js.call "getId"]
        val getEditorType: t -> string [@@js.call "getEditorType"]
        val updateOptions: t -> newOptions:monaco_editor_IEditorOptions -> unit [@@js.call "updateOptions"]
        val layout: t -> ?dimension:monaco_editor_IDimension -> unit -> unit [@@js.call "layout"]
        val focus: t -> unit [@@js.call "focus"]
        val isFocused: t -> bool [@@js.call "isFocused"]
        val getActions: t -> monaco_editor_IEditorAction list [@@js.call "getActions"]
        val getSupportedActions: t -> monaco_editor_IEditorAction list [@@js.call "getSupportedActions"]
        val saveViewState: t -> monaco_editor_IEditorViewState [@@js.call "saveViewState"]
        val restoreViewState: t -> state:monaco_editor_IEditorViewState -> unit [@@js.call "restoreViewState"]
        val getVisibleColumnFromPosition: t -> position:monaco_IPosition -> float [@@js.call "getVisibleColumnFromPosition"]
        val getPosition: t -> monaco_Position [@@js.call "getPosition"]
        val setPosition: t -> position:monaco_IPosition -> unit [@@js.call "setPosition"]
        val revealLine: t -> lineNumber:float -> unit [@@js.call "revealLine"]
        val revealLineInCenter: t -> lineNumber:float -> unit [@@js.call "revealLineInCenter"]
        val revealLineInCenterIfOutsideViewport: t -> lineNumber:float -> unit [@@js.call "revealLineInCenterIfOutsideViewport"]
        val revealPosition: t -> position:monaco_IPosition -> ?revealVerticalInCenter:bool -> ?revealHorizontal:bool -> unit -> unit [@@js.call "revealPosition"]
        val revealPositionInCenter: t -> position:monaco_IPosition -> unit [@@js.call "revealPositionInCenter"]
        val revealPositionInCenterIfOutsideViewport: t -> position:monaco_IPosition -> unit [@@js.call "revealPositionInCenterIfOutsideViewport"]
        val getSelection: t -> monaco_Selection [@@js.call "getSelection"]
        val getSelections: t -> monaco_Selection list [@@js.call "getSelections"]
        val setSelection: t -> selection:monaco_IRange -> unit [@@js.call "setSelection"]
        val setSelection': t -> selection:monaco_Range -> unit [@@js.call "setSelection"]
        val setSelection'': t -> selection:monaco_ISelection -> unit [@@js.call "setSelection"]
        val setSelection''': t -> selection:monaco_Selection -> unit [@@js.call "setSelection"]
        val setSelections: t -> selections:monaco_ISelection list -> unit [@@js.call "setSelections"]
        val revealLines: t -> startLineNumber:float -> endLineNumber:float -> unit [@@js.call "revealLines"]
        val revealLinesInCenter: t -> lineNumber:float -> endLineNumber:float -> unit [@@js.call "revealLinesInCenter"]
        val revealLinesInCenterIfOutsideViewport: t -> lineNumber:float -> endLineNumber:float -> unit [@@js.call "revealLinesInCenterIfOutsideViewport"]
        val revealRange: t -> range:monaco_IRange -> unit [@@js.call "revealRange"]
        val revealRangeInCenter: t -> range:monaco_IRange -> unit [@@js.call "revealRangeInCenter"]
        val revealRangeAtTop: t -> range:monaco_IRange -> unit [@@js.call "revealRangeAtTop"]
        val revealRangeInCenterIfOutsideViewport: t -> range:monaco_IRange -> unit [@@js.call "revealRangeInCenterIfOutsideViewport"]
        val trigger: t -> source:string -> handlerId:string -> payload:any -> unit [@@js.call "trigger"]
        val getModel: t -> monaco_editor_IEditorModel [@@js.call "getModel"]
        val setModel: t -> model:monaco_editor_IEditorModel -> unit [@@js.call "setModel"]
      end
      module[@js.scope "IEditorContribution"] IEditorContribution : sig
        type t = monaco_editor_IEditorContribution
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getId: t -> string [@@js.call "getId"]
        val dispose: t -> unit [@@js.call "dispose"]
        val saveViewState: t -> any [@@js.call "saveViewState"]
        val restoreViewState: t -> state:any -> unit [@@js.call "restoreViewState"]
      end
      module[@js.scope "ICommonCodeEditor"] ICommonCodeEditor : sig
        type t = monaco_editor_ICommonCodeEditor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val onDidChangeModelContent: t -> listener:(e:monaco_editor_IModelContentChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelContent"]
        val onDidChangeModelLanguage: t -> listener:(e:monaco_editor_IModelLanguageChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelLanguage"]
        val onDidChangeModelOptions: t -> listener:(e:monaco_editor_IModelOptionsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelOptions"]
        val onDidChangeConfiguration: t -> listener:(e:monaco_editor_IConfigurationChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeConfiguration"]
        val onDidChangeCursorPosition: t -> listener:(e:monaco_editor_ICursorPositionChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeCursorPosition"]
        val onDidChangeCursorSelection: t -> listener:(e:monaco_editor_ICursorSelectionChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeCursorSelection"]
        val onDidChangeModel: t -> listener:(e:monaco_editor_IModelChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModel"]
        val onDidChangeModelDecorations: t -> listener:(e:monaco_editor_IModelDecorationsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelDecorations"]
        val onDidFocusEditorText: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidFocusEditorText"]
        val onDidBlurEditorText: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidBlurEditorText"]
        val onDidFocusEditor: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidFocusEditor"]
        val onDidBlurEditor: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidBlurEditor"]
        val saveViewState: t -> monaco_editor_ICodeEditorViewState [@@js.call "saveViewState"]
        val restoreViewState: t -> state:monaco_editor_ICodeEditorViewState -> unit [@@js.call "restoreViewState"]
        val hasWidgetFocus: t -> bool [@@js.call "hasWidgetFocus"]
        val getContribution: t -> id:string -> 'T [@@js.call "getContribution"]
        val getModel: t -> monaco_editor_IModel [@@js.call "getModel"]
        val getConfiguration: t -> monaco_editor_InternalEditorOptions [@@js.call "getConfiguration"]
        val getValue: t -> ?options:anonymous_interface_8 -> unit -> string [@@js.call "getValue"]
        val setValue: t -> newValue:string -> unit [@@js.call "setValue"]
        val getScrollWidth: t -> float [@@js.call "getScrollWidth"]
        val getScrollLeft: t -> float [@@js.call "getScrollLeft"]
        val getScrollHeight: t -> float [@@js.call "getScrollHeight"]
        val getScrollTop: t -> float [@@js.call "getScrollTop"]
        val setScrollLeft: t -> newScrollLeft:float -> unit [@@js.call "setScrollLeft"]
        val setScrollTop: t -> newScrollTop:float -> unit [@@js.call "setScrollTop"]
        val setScrollPosition: t -> position:monaco_editor_INewScrollPosition -> unit [@@js.call "setScrollPosition"]
        val getAction: t -> id:string -> monaco_editor_IEditorAction [@@js.call "getAction"]
        val executeCommand: t -> source:string -> command:monaco_editor_ICommand -> unit [@@js.call "executeCommand"]
        val pushUndoStop: t -> bool [@@js.call "pushUndoStop"]
        val executeEdits: t -> source:string -> edits:monaco_editor_IIdentifiedSingleEditOperation list -> ?endCursoState:monaco_Selection list -> unit -> bool [@@js.call "executeEdits"]
        val executeCommands: t -> source:string -> commands:monaco_editor_ICommand list -> unit [@@js.call "executeCommands"]
        val getLineDecorations: t -> lineNumber:float -> monaco_editor_IModelDecoration list [@@js.call "getLineDecorations"]
        val deltaDecorations: t -> oldDecorations:string list -> newDecorations:monaco_editor_IModelDeltaDecoration list -> string list [@@js.call "deltaDecorations"]
        val getLayoutInfo: t -> monaco_editor_EditorLayoutInfo [@@js.call "getLayoutInfo"]
        val cast: t -> monaco_editor_IEditor [@@js.cast]
      end
      module[@js.scope "ICommonDiffEditor"] ICommonDiffEditor : sig
        type t = monaco_editor_ICommonDiffEditor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val onDidUpdateDiff: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidUpdateDiff"]
        val saveViewState: t -> monaco_editor_IDiffEditorViewState [@@js.call "saveViewState"]
        val restoreViewState: t -> state:monaco_editor_IDiffEditorViewState -> unit [@@js.call "restoreViewState"]
        val getModel: t -> monaco_editor_IDiffEditorModel [@@js.call "getModel"]
        val getOriginalEditor: t -> monaco_editor_ICommonCodeEditor [@@js.call "getOriginalEditor"]
        val getModifiedEditor: t -> monaco_editor_ICommonCodeEditor [@@js.call "getModifiedEditor"]
        val getLineChanges: t -> monaco_editor_ILineChange list [@@js.call "getLineChanges"]
        val getDiffLineInformationForOriginal: t -> lineNumber:float -> monaco_editor_IDiffLineInformation [@@js.call "getDiffLineInformationForOriginal"]
        val getDiffLineInformationForModified: t -> lineNumber:float -> monaco_editor_IDiffLineInformation [@@js.call "getDiffLineInformationForModified"]
        val getValue: t -> ?options:anonymous_interface_8 -> unit -> string [@@js.call "getValue"]
        val cast: t -> monaco_editor_IEditor [@@js.cast]
      end
      val editorType: anonymous_interface_0 [@@js.global "EditorType"]
      module[@js.scope "IModelLanguageChangedEvent"] IModelLanguageChangedEvent : sig
        type t = monaco_editor_IModelLanguageChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_oldLanguage: t -> string [@@js.get "oldLanguage"]
        val get_newLanguage: t -> string [@@js.get "newLanguage"]
      end
      module[@js.scope "IModelContentChange"] IModelContentChange : sig
        type t = monaco_editor_IModelContentChange
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val get_rangeLength: t -> float [@@js.get "rangeLength"]
        val get_text: t -> string [@@js.get "text"]
      end
      module[@js.scope "IModelContentChangedEvent"] IModelContentChangedEvent : sig
        type t = monaco_editor_IModelContentChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_changes: t -> monaco_editor_IModelContentChange list [@@js.get "changes"]
        val get_eol: t -> string [@@js.get "eol"]
        val get_versionId: t -> float [@@js.get "versionId"]
        val get_isUndoing: t -> bool [@@js.get "isUndoing"]
        val get_isRedoing: t -> bool [@@js.get "isRedoing"]
        val get_isFlush: t -> bool [@@js.get "isFlush"]
      end
      module[@js.scope "IModelDecorationsChangedEvent"] IModelDecorationsChangedEvent : sig
        type t = monaco_editor_IModelDecorationsChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_addedDecorations: t -> string list [@@js.get "addedDecorations"]
        val get_changedDecorations: t -> string list [@@js.get "changedDecorations"]
        val get_removedDecorations: t -> string list [@@js.get "removedDecorations"]
      end
      module[@js.scope "IModelTokensChangedEvent"] IModelTokensChangedEvent : sig
        type t = monaco_editor_IModelTokensChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_ranges: t -> anonymous_interface_2 list [@@js.get "ranges"]
      end
      module[@js.scope "IModelOptionsChangedEvent"] IModelOptionsChangedEvent : sig
        type t = monaco_editor_IModelOptionsChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_tabSize: t -> bool [@@js.get "tabSize"]
        val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
        val get_trimAutoWhitespace: t -> bool [@@js.get "trimAutoWhitespace"]
      end
      module CursorChangeReason : sig
        type t = monaco_editor_CursorChangeReason
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "ICursorPositionChangedEvent"] ICursorPositionChangedEvent : sig
        type t = monaco_editor_ICursorPositionChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_position: t -> monaco_Position [@@js.get "position"]
        val get_secondaryPositions: t -> monaco_Position list [@@js.get "secondaryPositions"]
        val get_reason: t -> monaco_editor_CursorChangeReason [@@js.get "reason"]
        val get_source: t -> string [@@js.get "source"]
      end
      module[@js.scope "ICursorSelectionChangedEvent"] ICursorSelectionChangedEvent : sig
        type t = monaco_editor_ICursorSelectionChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_selection: t -> monaco_Selection [@@js.get "selection"]
        val get_secondarySelections: t -> monaco_Selection list [@@js.get "secondarySelections"]
        val get_source: t -> string [@@js.get "source"]
        val get_reason: t -> monaco_editor_CursorChangeReason [@@js.get "reason"]
      end
      module[@js.scope "IEditorScrollbarOptions"] IEditorScrollbarOptions : sig
        type t = monaco_editor_IEditorScrollbarOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_arrowSize: t -> float [@@js.get "arrowSize"]
        val set_arrowSize: t -> float -> unit [@@js.set "arrowSize"]
        val get_vertical: t -> string [@@js.get "vertical"]
        val set_vertical: t -> string -> unit [@@js.set "vertical"]
        val get_horizontal: t -> string [@@js.get "horizontal"]
        val set_horizontal: t -> string -> unit [@@js.set "horizontal"]
        val get_useShadows: t -> bool [@@js.get "useShadows"]
        val set_useShadows: t -> bool -> unit [@@js.set "useShadows"]
        val get_verticalHasArrows: t -> bool [@@js.get "verticalHasArrows"]
        val set_verticalHasArrows: t -> bool -> unit [@@js.set "verticalHasArrows"]
        val get_horizontalHasArrows: t -> bool [@@js.get "horizontalHasArrows"]
        val set_horizontalHasArrows: t -> bool -> unit [@@js.set "horizontalHasArrows"]
        val get_handleMouseWheel: t -> bool [@@js.get "handleMouseWheel"]
        val set_handleMouseWheel: t -> bool -> unit [@@js.set "handleMouseWheel"]
        val get_horizontalScrollbarSize: t -> float [@@js.get "horizontalScrollbarSize"]
        val set_horizontalScrollbarSize: t -> float -> unit [@@js.set "horizontalScrollbarSize"]
        val get_verticalScrollbarSize: t -> float [@@js.get "verticalScrollbarSize"]
        val set_verticalScrollbarSize: t -> float -> unit [@@js.set "verticalScrollbarSize"]
        val get_verticalSliderSize: t -> float [@@js.get "verticalSliderSize"]
        val set_verticalSliderSize: t -> float -> unit [@@js.set "verticalSliderSize"]
        val get_horizontalSliderSize: t -> float [@@js.get "horizontalSliderSize"]
        val set_horizontalSliderSize: t -> float -> unit [@@js.set "horizontalSliderSize"]
      end
      module[@js.scope "IEditorFindOptions"] IEditorFindOptions : sig
        type t = monaco_editor_IEditorFindOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_seedSearchStringFromSelection: t -> bool [@@js.get "seedSearchStringFromSelection"]
        val set_seedSearchStringFromSelection: t -> bool -> unit [@@js.set "seedSearchStringFromSelection"]
        val get_autoFindInSelection: t -> bool [@@js.get "autoFindInSelection"]
        val set_autoFindInSelection: t -> bool -> unit [@@js.set "autoFindInSelection"]
      end
      module[@js.scope "IEditorMinimapOptions"] IEditorMinimapOptions : sig
        type t = monaco_editor_IEditorMinimapOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_enabled: t -> bool [@@js.get "enabled"]
        val set_enabled: t -> bool -> unit [@@js.set "enabled"]
        val get_showSlider: t -> ([`L_s12_always[@js "always"] | `L_s34_mouseover[@js "mouseover"]] [@js.enum]) [@@js.get "showSlider"]
        val set_showSlider: t -> ([`L_s12_always | `L_s34_mouseover] [@js.enum]) -> unit [@@js.set "showSlider"]
        val get_renderCharacters: t -> bool [@@js.get "renderCharacters"]
        val set_renderCharacters: t -> bool -> unit [@@js.set "renderCharacters"]
        val get_maxColumn: t -> float [@@js.get "maxColumn"]
        val set_maxColumn: t -> float -> unit [@@js.set "maxColumn"]
      end
      module[@js.scope "IEditorOptions"] IEditorOptions : sig
        type t = monaco_editor_IEditorOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_ariaLabel: t -> string [@@js.get "ariaLabel"]
        val set_ariaLabel: t -> string -> unit [@@js.set "ariaLabel"]
        val get_rulers: t -> float list [@@js.get "rulers"]
        val set_rulers: t -> float list -> unit [@@js.set "rulers"]
        val get_wordSeparators: t -> string [@@js.get "wordSeparators"]
        val set_wordSeparators: t -> string -> unit [@@js.set "wordSeparators"]
        val get_selectionClipboard: t -> bool [@@js.get "selectionClipboard"]
        val set_selectionClipboard: t -> bool -> unit [@@js.set "selectionClipboard"]
        val get_lineNumbers: t -> ((lineNumber:float -> string), ([`L_s37_off[@js "off"] | `L_s38_on[@js "on"] | `L_s39_relative[@js "relative"]] [@js.enum])) or_enum [@@js.get "lineNumbers"]
        val set_lineNumbers: t -> ((lineNumber:float -> string), ([`L_s37_off | `L_s38_on | `L_s39_relative] [@js.enum])) or_enum -> unit [@@js.set "lineNumbers"]
        val get_selectOnLineNumbers: t -> bool [@@js.get "selectOnLineNumbers"]
        val set_selectOnLineNumbers: t -> bool -> unit [@@js.set "selectOnLineNumbers"]
        val get_lineNumbersMinChars: t -> float [@@js.get "lineNumbersMinChars"]
        val set_lineNumbersMinChars: t -> float -> unit [@@js.set "lineNumbersMinChars"]
        val get_glyphMargin: t -> bool [@@js.get "glyphMargin"]
        val set_glyphMargin: t -> bool -> unit [@@js.set "glyphMargin"]
        val get_lineDecorationsWidth: t -> string or_number [@@js.get "lineDecorationsWidth"]
        val set_lineDecorationsWidth: t -> string or_number -> unit [@@js.set "lineDecorationsWidth"]
        val get_revealHorizontalRightPadding: t -> float [@@js.get "revealHorizontalRightPadding"]
        val set_revealHorizontalRightPadding: t -> float -> unit [@@js.set "revealHorizontalRightPadding"]
        val get_roundedSelection: t -> bool [@@js.get "roundedSelection"]
        val set_roundedSelection: t -> bool -> unit [@@js.set "roundedSelection"]
        val get_extraEditorClassName: t -> string [@@js.get "extraEditorClassName"]
        val set_extraEditorClassName: t -> string -> unit [@@js.set "extraEditorClassName"]
        val get_readOnly: t -> bool [@@js.get "readOnly"]
        val set_readOnly: t -> bool -> unit [@@js.set "readOnly"]
        val get_scrollbar: t -> monaco_editor_IEditorScrollbarOptions [@@js.get "scrollbar"]
        val set_scrollbar: t -> monaco_editor_IEditorScrollbarOptions -> unit [@@js.set "scrollbar"]
        val get_minimap: t -> monaco_editor_IEditorMinimapOptions [@@js.get "minimap"]
        val set_minimap: t -> monaco_editor_IEditorMinimapOptions -> unit [@@js.set "minimap"]
        val get_find: t -> monaco_editor_IEditorFindOptions [@@js.get "find"]
        val set_find: t -> monaco_editor_IEditorFindOptions -> unit [@@js.set "find"]
        val get_fixedOverflowWidgets: t -> bool [@@js.get "fixedOverflowWidgets"]
        val set_fixedOverflowWidgets: t -> bool -> unit [@@js.set "fixedOverflowWidgets"]
        val get_overviewRulerLanes: t -> float [@@js.get "overviewRulerLanes"]
        val set_overviewRulerLanes: t -> float -> unit [@@js.set "overviewRulerLanes"]
        val get_overviewRulerBorder: t -> bool [@@js.get "overviewRulerBorder"]
        val set_overviewRulerBorder: t -> bool -> unit [@@js.set "overviewRulerBorder"]
        val get_cursorBlinking: t -> string [@@js.get "cursorBlinking"]
        val set_cursorBlinking: t -> string -> unit [@@js.set "cursorBlinking"]
        val get_mouseWheelZoom: t -> bool [@@js.get "mouseWheelZoom"]
        val set_mouseWheelZoom: t -> bool -> unit [@@js.set "mouseWheelZoom"]
        val get_cursorStyle: t -> string [@@js.get "cursorStyle"]
        val set_cursorStyle: t -> string -> unit [@@js.set "cursorStyle"]
        val get_fontLigatures: t -> bool [@@js.get "fontLigatures"]
        val set_fontLigatures: t -> bool -> unit [@@js.set "fontLigatures"]
        val get_disableLayerHinting: t -> bool [@@js.get "disableLayerHinting"]
        val set_disableLayerHinting: t -> bool -> unit [@@js.set "disableLayerHinting"]
        val get_disableMonospaceOptimizations: t -> bool [@@js.get "disableMonospaceOptimizations"]
        val set_disableMonospaceOptimizations: t -> bool -> unit [@@js.set "disableMonospaceOptimizations"]
        val get_hideCursorInOverviewRuler: t -> bool [@@js.get "hideCursorInOverviewRuler"]
        val set_hideCursorInOverviewRuler: t -> bool -> unit [@@js.set "hideCursorInOverviewRuler"]
        val get_scrollBeyondLastLine: t -> bool [@@js.get "scrollBeyondLastLine"]
        val set_scrollBeyondLastLine: t -> bool -> unit [@@js.set "scrollBeyondLastLine"]
        val get_automaticLayout: t -> bool [@@js.get "automaticLayout"]
        val set_automaticLayout: t -> bool -> unit [@@js.set "automaticLayout"]
        val get_wordWrap: t -> ([`L_s18_bounded[@js "bounded"] | `L_s37_off[@js "off"] | `L_s38_on[@js "on"] | `L_s45_wordWrapColumn[@js "wordWrapColumn"]] [@js.enum]) [@@js.get "wordWrap"]
        val set_wordWrap: t -> ([`L_s18_bounded | `L_s37_off | `L_s38_on | `L_s45_wordWrapColumn] [@js.enum]) -> unit [@@js.set "wordWrap"]
        val get_wordWrapColumn: t -> float [@@js.get "wordWrapColumn"]
        val set_wordWrapColumn: t -> float -> unit [@@js.set "wordWrapColumn"]
        val get_wordWrapMinified: t -> bool [@@js.get "wordWrapMinified"]
        val set_wordWrapMinified: t -> bool -> unit [@@js.set "wordWrapMinified"]
        val get_wrappingIndent: t -> string [@@js.get "wrappingIndent"]
        val set_wrappingIndent: t -> string -> unit [@@js.set "wrappingIndent"]
        val get_wordWrapBreakBeforeCharacters: t -> string [@@js.get "wordWrapBreakBeforeCharacters"]
        val set_wordWrapBreakBeforeCharacters: t -> string -> unit [@@js.set "wordWrapBreakBeforeCharacters"]
        val get_wordWrapBreakAfterCharacters: t -> string [@@js.get "wordWrapBreakAfterCharacters"]
        val set_wordWrapBreakAfterCharacters: t -> string -> unit [@@js.set "wordWrapBreakAfterCharacters"]
        val get_wordWrapBreakObtrusiveCharacters: t -> string [@@js.get "wordWrapBreakObtrusiveCharacters"]
        val set_wordWrapBreakObtrusiveCharacters: t -> string -> unit [@@js.set "wordWrapBreakObtrusiveCharacters"]
        val get_stopRenderingLineAfter: t -> float [@@js.get "stopRenderingLineAfter"]
        val set_stopRenderingLineAfter: t -> float -> unit [@@js.set "stopRenderingLineAfter"]
        val get_hover: t -> bool [@@js.get "hover"]
        val set_hover: t -> bool -> unit [@@js.set "hover"]
        val get_links: t -> bool [@@js.get "links"]
        val set_links: t -> bool -> unit [@@js.set "links"]
        val get_contextmenu: t -> bool [@@js.get "contextmenu"]
        val set_contextmenu: t -> bool -> unit [@@js.set "contextmenu"]
        val get_mouseWheelScrollSensitivity: t -> float [@@js.get "mouseWheelScrollSensitivity"]
        val set_mouseWheelScrollSensitivity: t -> float -> unit [@@js.set "mouseWheelScrollSensitivity"]
        val get_multiCursorModifier: t -> ([`L_s10_alt[@js "alt"] | `L_s19_ctrlCmd[@js "ctrlCmd"]] [@js.enum]) [@@js.get "multiCursorModifier"]
        val set_multiCursorModifier: t -> ([`L_s10_alt | `L_s19_ctrlCmd] [@js.enum]) -> unit [@@js.set "multiCursorModifier"]
        val get_accessibilitySupport: t -> ([`L_s13_auto[@js "auto"] | `L_s37_off[@js "off"] | `L_s38_on[@js "on"]] [@js.enum]) [@@js.get "accessibilitySupport"]
        val set_accessibilitySupport: t -> ([`L_s13_auto | `L_s37_off | `L_s38_on] [@js.enum]) -> unit [@@js.set "accessibilitySupport"]
        val get_quickSuggestions: t -> anonymous_interface_6 or_boolean [@@js.get "quickSuggestions"]
        val set_quickSuggestions: t -> anonymous_interface_6 or_boolean -> unit [@@js.set "quickSuggestions"]
        val get_quickSuggestionsDelay: t -> float [@@js.get "quickSuggestionsDelay"]
        val set_quickSuggestionsDelay: t -> float -> unit [@@js.set "quickSuggestionsDelay"]
        val get_parameterHints: t -> bool [@@js.get "parameterHints"]
        val set_parameterHints: t -> bool -> unit [@@js.set "parameterHints"]
        val get_iconsInSuggestions: t -> bool [@@js.get "iconsInSuggestions"]
        val set_iconsInSuggestions: t -> bool -> unit [@@js.set "iconsInSuggestions"]
        val get_autoClosingBrackets: t -> bool [@@js.get "autoClosingBrackets"]
        val set_autoClosingBrackets: t -> bool -> unit [@@js.set "autoClosingBrackets"]
        val get_autoIndent: t -> bool [@@js.get "autoIndent"]
        val set_autoIndent: t -> bool -> unit [@@js.set "autoIndent"]
        val get_formatOnType: t -> bool [@@js.get "formatOnType"]
        val set_formatOnType: t -> bool -> unit [@@js.set "formatOnType"]
        val get_formatOnPaste: t -> bool [@@js.get "formatOnPaste"]
        val set_formatOnPaste: t -> bool -> unit [@@js.set "formatOnPaste"]
        val get_dragAndDrop: t -> bool [@@js.get "dragAndDrop"]
        val set_dragAndDrop: t -> bool -> unit [@@js.set "dragAndDrop"]
        val get_suggestOnTriggerCharacters: t -> bool [@@js.get "suggestOnTriggerCharacters"]
        val set_suggestOnTriggerCharacters: t -> bool -> unit [@@js.set "suggestOnTriggerCharacters"]
        val get_acceptSuggestionOnEnter: t -> ([`L_s37_off[@js "off"] | `L_s38_on[@js "on"] | `L_s40_smart[@js "smart"]] [@js.enum]) [@@js.get "acceptSuggestionOnEnter"]
        val set_acceptSuggestionOnEnter: t -> ([`L_s37_off | `L_s38_on | `L_s40_smart] [@js.enum]) -> unit [@@js.set "acceptSuggestionOnEnter"]
        val get_acceptSuggestionOnCommitCharacter: t -> bool [@@js.get "acceptSuggestionOnCommitCharacter"]
        val set_acceptSuggestionOnCommitCharacter: t -> bool -> unit [@@js.set "acceptSuggestionOnCommitCharacter"]
        val get_snippetSuggestions: t -> ([`L_s16_bottom[@js "bottom"] | `L_s30_inline[@js "inline"] | `L_s35_none[@js "none"] | `L_s41_top[@js "top"]] [@js.enum]) [@@js.get "snippetSuggestions"]
        val set_snippetSuggestions: t -> ([`L_s16_bottom | `L_s30_inline | `L_s35_none | `L_s41_top] [@js.enum]) -> unit [@@js.set "snippetSuggestions"]
        val get_emptySelectionClipboard: t -> bool [@@js.get "emptySelectionClipboard"]
        val set_emptySelectionClipboard: t -> bool -> unit [@@js.set "emptySelectionClipboard"]
        val get_wordBasedSuggestions: t -> bool [@@js.get "wordBasedSuggestions"]
        val set_wordBasedSuggestions: t -> bool -> unit [@@js.set "wordBasedSuggestions"]
        val get_suggestFontSize: t -> float [@@js.get "suggestFontSize"]
        val set_suggestFontSize: t -> float -> unit [@@js.set "suggestFontSize"]
        val get_suggestLineHeight: t -> float [@@js.get "suggestLineHeight"]
        val set_suggestLineHeight: t -> float -> unit [@@js.set "suggestLineHeight"]
        val get_selectionHighlight: t -> bool [@@js.get "selectionHighlight"]
        val set_selectionHighlight: t -> bool -> unit [@@js.set "selectionHighlight"]
        val get_occurrencesHighlight: t -> bool [@@js.get "occurrencesHighlight"]
        val set_occurrencesHighlight: t -> bool -> unit [@@js.set "occurrencesHighlight"]
        val get_codeLens: t -> bool [@@js.get "codeLens"]
        val set_codeLens: t -> bool -> unit [@@js.set "codeLens"]
        val get_folding: t -> bool [@@js.get "folding"]
        val set_folding: t -> bool -> unit [@@js.set "folding"]
        val get_showFoldingControls: t -> ([`L_s12_always[@js "always"] | `L_s34_mouseover[@js "mouseover"]] [@js.enum]) [@@js.get "showFoldingControls"]
        val set_showFoldingControls: t -> ([`L_s12_always | `L_s34_mouseover] [@js.enum]) -> unit [@@js.set "showFoldingControls"]
        val get_matchBrackets: t -> bool [@@js.get "matchBrackets"]
        val set_matchBrackets: t -> bool -> unit [@@js.set "matchBrackets"]
        val get_renderWhitespace: t -> ([`L_s9_all[@js "all"] | `L_s17_boundary[@js "boundary"] | `L_s35_none[@js "none"]] [@js.enum]) [@@js.get "renderWhitespace"]
        val set_renderWhitespace: t -> ([`L_s9_all | `L_s17_boundary | `L_s35_none] [@js.enum]) -> unit [@@js.set "renderWhitespace"]
        val get_renderControlCharacters: t -> bool [@@js.get "renderControlCharacters"]
        val set_renderControlCharacters: t -> bool -> unit [@@js.set "renderControlCharacters"]
        val get_renderIndentGuides: t -> bool [@@js.get "renderIndentGuides"]
        val set_renderIndentGuides: t -> bool -> unit [@@js.set "renderIndentGuides"]
        val get_renderLineHighlight: t -> ([`L_s9_all[@js "all"] | `L_s25_gutter[@js "gutter"] | `L_s32_line[@js "line"] | `L_s35_none[@js "none"]] [@js.enum]) [@@js.get "renderLineHighlight"]
        val set_renderLineHighlight: t -> ([`L_s9_all | `L_s25_gutter | `L_s32_line | `L_s35_none] [@js.enum]) -> unit [@@js.set "renderLineHighlight"]
        val get_useTabStops: t -> bool [@@js.get "useTabStops"]
        val set_useTabStops: t -> bool -> unit [@@js.set "useTabStops"]
        val get_fontFamily: t -> string [@@js.get "fontFamily"]
        val set_fontFamily: t -> string -> unit [@@js.set "fontFamily"]
        val get_fontWeight: t -> ([`L_s0_100[@js "100"] | `L_s1_200[@js "200"] | `L_s2_300[@js "300"] | `L_s3_400[@js "400"] | `L_s4_500[@js "500"] | `L_s5_600[@js "600"] | `L_s6_700[@js "700"] | `L_s7_800[@js "800"] | `L_s8_900[@js "900"] | `L_s14_bold[@js "bold"] | `L_s15_bolder[@js "bolder"] | `L_s28_inherit[@js "inherit"] | `L_s29_initial[@js "initial"] | `L_s31_lighter[@js "lighter"] | `L_s36_normal[@js "normal"]] [@js.enum]) [@@js.get "fontWeight"]
        val set_fontWeight: t -> ([`L_s0_100 | `L_s1_200 | `L_s2_300 | `L_s3_400 | `L_s4_500 | `L_s5_600 | `L_s6_700 | `L_s7_800 | `L_s8_900 | `L_s14_bold | `L_s15_bolder | `L_s28_inherit | `L_s29_initial | `L_s31_lighter | `L_s36_normal] [@js.enum]) -> unit [@@js.set "fontWeight"]
        val get_fontSize: t -> float [@@js.get "fontSize"]
        val set_fontSize: t -> float -> unit [@@js.set "fontSize"]
        val get_lineHeight: t -> float [@@js.get "lineHeight"]
        val set_lineHeight: t -> float -> unit [@@js.set "lineHeight"]
        val get_letterSpacing: t -> float [@@js.get "letterSpacing"]
        val set_letterSpacing: t -> float -> unit [@@js.set "letterSpacing"]
      end
      module[@js.scope "IDiffEditorOptions"] IDiffEditorOptions : sig
        type t = monaco_editor_IDiffEditorOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_enableSplitViewResizing: t -> bool [@@js.get "enableSplitViewResizing"]
        val set_enableSplitViewResizing: t -> bool -> unit [@@js.set "enableSplitViewResizing"]
        val get_renderSideBySide: t -> bool [@@js.get "renderSideBySide"]
        val set_renderSideBySide: t -> bool -> unit [@@js.set "renderSideBySide"]
        val get_ignoreTrimWhitespace: t -> bool [@@js.get "ignoreTrimWhitespace"]
        val set_ignoreTrimWhitespace: t -> bool -> unit [@@js.set "ignoreTrimWhitespace"]
        val get_renderIndicators: t -> bool [@@js.get "renderIndicators"]
        val set_renderIndicators: t -> bool -> unit [@@js.set "renderIndicators"]
        val get_originalEditable: t -> bool [@@js.get "originalEditable"]
        val set_originalEditable: t -> bool -> unit [@@js.set "originalEditable"]
        val cast: t -> monaco_editor_IEditorOptions [@@js.cast]
      end
      module RenderMinimap : sig
        type t = monaco_editor_RenderMinimap
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WrappingIndent : sig
        type t = monaco_editor_WrappingIndent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextEditorCursorBlinkingStyle : sig
        type t = monaco_editor_TextEditorCursorBlinkingStyle
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module TextEditorCursorStyle : sig
        type t = monaco_editor_TextEditorCursorStyle
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "InternalEditorScrollbarOptions"] InternalEditorScrollbarOptions : sig
        type t = monaco_editor_InternalEditorScrollbarOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_arrowSize: t -> float [@@js.get "arrowSize"]
        val get_vertical: t -> monaco_editor_ScrollbarVisibility [@@js.get "vertical"]
        val get_horizontal: t -> monaco_editor_ScrollbarVisibility [@@js.get "horizontal"]
        val get_useShadows: t -> bool [@@js.get "useShadows"]
        val get_verticalHasArrows: t -> bool [@@js.get "verticalHasArrows"]
        val get_horizontalHasArrows: t -> bool [@@js.get "horizontalHasArrows"]
        val get_handleMouseWheel: t -> bool [@@js.get "handleMouseWheel"]
        val get_horizontalScrollbarSize: t -> float [@@js.get "horizontalScrollbarSize"]
        val get_horizontalSliderSize: t -> float [@@js.get "horizontalSliderSize"]
        val get_verticalScrollbarSize: t -> float [@@js.get "verticalScrollbarSize"]
        val get_verticalSliderSize: t -> float [@@js.get "verticalSliderSize"]
        val get_mouseWheelScrollSensitivity: t -> float [@@js.get "mouseWheelScrollSensitivity"]
      end
      module[@js.scope "InternalEditorMinimapOptions"] InternalEditorMinimapOptions : sig
        type t = monaco_editor_InternalEditorMinimapOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_enabled: t -> bool [@@js.get "enabled"]
        val get_showSlider: t -> ([`L_s12_always[@js "always"] | `L_s34_mouseover[@js "mouseover"]] [@js.enum]) [@@js.get "showSlider"]
        val get_renderCharacters: t -> bool [@@js.get "renderCharacters"]
        val get_maxColumn: t -> float [@@js.get "maxColumn"]
      end
      module[@js.scope "InternalEditorFindOptions"] InternalEditorFindOptions : sig
        type t = monaco_editor_InternalEditorFindOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_seedSearchStringFromSelection: t -> bool [@@js.get "seedSearchStringFromSelection"]
        val get_autoFindInSelection: t -> bool [@@js.get "autoFindInSelection"]
      end
      module[@js.scope "EditorWrappingInfo"] EditorWrappingInfo : sig
        type t = monaco_editor_EditorWrappingInfo
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_inDiffEditor: t -> bool [@@js.get "inDiffEditor"]
        val get_isDominatedByLongLines: t -> bool [@@js.get "isDominatedByLongLines"]
        val get_isWordWrapMinified: t -> bool [@@js.get "isWordWrapMinified"]
        val get_isViewportWrapping: t -> bool [@@js.get "isViewportWrapping"]
        val get_wrappingColumn: t -> float [@@js.get "wrappingColumn"]
        val get_wrappingIndent: t -> monaco_editor_WrappingIndent [@@js.get "wrappingIndent"]
        val get_wordWrapBreakBeforeCharacters: t -> string [@@js.get "wordWrapBreakBeforeCharacters"]
        val get_wordWrapBreakAfterCharacters: t -> string [@@js.get "wordWrapBreakAfterCharacters"]
        val get_wordWrapBreakObtrusiveCharacters: t -> string [@@js.get "wordWrapBreakObtrusiveCharacters"]
      end
      module[@js.scope "InternalEditorViewOptions"] InternalEditorViewOptions : sig
        type t = monaco_editor_InternalEditorViewOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_extraEditorClassName: t -> string [@@js.get "extraEditorClassName"]
        val get_disableMonospaceOptimizations: t -> bool [@@js.get "disableMonospaceOptimizations"]
        val get_rulers: t -> float list [@@js.get "rulers"]
        val get_ariaLabel: t -> string [@@js.get "ariaLabel"]
        val get_renderLineNumbers: t -> bool [@@js.get "renderLineNumbers"]
        val renderCustomLineNumbers: t -> lineNumber:float -> string [@@js.call "renderCustomLineNumbers"]
        val get_renderRelativeLineNumbers: t -> bool [@@js.get "renderRelativeLineNumbers"]
        val get_selectOnLineNumbers: t -> bool [@@js.get "selectOnLineNumbers"]
        val get_glyphMargin: t -> bool [@@js.get "glyphMargin"]
        val get_revealHorizontalRightPadding: t -> float [@@js.get "revealHorizontalRightPadding"]
        val get_roundedSelection: t -> bool [@@js.get "roundedSelection"]
        val get_overviewRulerLanes: t -> float [@@js.get "overviewRulerLanes"]
        val get_overviewRulerBorder: t -> bool [@@js.get "overviewRulerBorder"]
        val get_cursorBlinking: t -> monaco_editor_TextEditorCursorBlinkingStyle [@@js.get "cursorBlinking"]
        val get_mouseWheelZoom: t -> bool [@@js.get "mouseWheelZoom"]
        val get_cursorStyle: t -> monaco_editor_TextEditorCursorStyle [@@js.get "cursorStyle"]
        val get_hideCursorInOverviewRuler: t -> bool [@@js.get "hideCursorInOverviewRuler"]
        val get_scrollBeyondLastLine: t -> bool [@@js.get "scrollBeyondLastLine"]
        val get_stopRenderingLineAfter: t -> float [@@js.get "stopRenderingLineAfter"]
        val get_renderWhitespace: t -> ([`L_s9_all[@js "all"] | `L_s17_boundary[@js "boundary"] | `L_s35_none[@js "none"]] [@js.enum]) [@@js.get "renderWhitespace"]
        val get_renderControlCharacters: t -> bool [@@js.get "renderControlCharacters"]
        val get_fontLigatures: t -> bool [@@js.get "fontLigatures"]
        val get_renderIndentGuides: t -> bool [@@js.get "renderIndentGuides"]
        val get_renderLineHighlight: t -> ([`L_s9_all[@js "all"] | `L_s25_gutter[@js "gutter"] | `L_s32_line[@js "line"] | `L_s35_none[@js "none"]] [@js.enum]) [@@js.get "renderLineHighlight"]
        val get_scrollbar: t -> monaco_editor_InternalEditorScrollbarOptions [@@js.get "scrollbar"]
        val get_minimap: t -> monaco_editor_InternalEditorMinimapOptions [@@js.get "minimap"]
        val get_fixedOverflowWidgets: t -> bool [@@js.get "fixedOverflowWidgets"]
      end
      module[@js.scope "EditorContribOptions"] EditorContribOptions : sig
        type t = monaco_editor_EditorContribOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_selectionClipboard: t -> bool [@@js.get "selectionClipboard"]
        val get_hover: t -> bool [@@js.get "hover"]
        val get_links: t -> bool [@@js.get "links"]
        val get_contextmenu: t -> bool [@@js.get "contextmenu"]
        val get_quickSuggestions: t -> anonymous_interface_6 or_boolean [@@js.get "quickSuggestions"]
        val get_quickSuggestionsDelay: t -> float [@@js.get "quickSuggestionsDelay"]
        val get_parameterHints: t -> bool [@@js.get "parameterHints"]
        val get_iconsInSuggestions: t -> bool [@@js.get "iconsInSuggestions"]
        val get_formatOnType: t -> bool [@@js.get "formatOnType"]
        val get_formatOnPaste: t -> bool [@@js.get "formatOnPaste"]
        val get_suggestOnTriggerCharacters: t -> bool [@@js.get "suggestOnTriggerCharacters"]
        val get_acceptSuggestionOnEnter: t -> ([`L_s37_off[@js "off"] | `L_s38_on[@js "on"] | `L_s40_smart[@js "smart"]] [@js.enum]) [@@js.get "acceptSuggestionOnEnter"]
        val get_acceptSuggestionOnCommitCharacter: t -> bool [@@js.get "acceptSuggestionOnCommitCharacter"]
        val get_snippetSuggestions: t -> ([`L_s16_bottom[@js "bottom"] | `L_s30_inline[@js "inline"] | `L_s35_none[@js "none"] | `L_s41_top[@js "top"]] [@js.enum]) [@@js.get "snippetSuggestions"]
        val get_wordBasedSuggestions: t -> bool [@@js.get "wordBasedSuggestions"]
        val get_suggestFontSize: t -> float [@@js.get "suggestFontSize"]
        val get_suggestLineHeight: t -> float [@@js.get "suggestLineHeight"]
        val get_selectionHighlight: t -> bool [@@js.get "selectionHighlight"]
        val get_occurrencesHighlight: t -> bool [@@js.get "occurrencesHighlight"]
        val get_codeLens: t -> bool [@@js.get "codeLens"]
        val get_folding: t -> bool [@@js.get "folding"]
        val get_showFoldingControls: t -> ([`L_s12_always[@js "always"] | `L_s34_mouseover[@js "mouseover"]] [@js.enum]) [@@js.get "showFoldingControls"]
        val get_matchBrackets: t -> bool [@@js.get "matchBrackets"]
        val get_find: t -> monaco_editor_InternalEditorFindOptions [@@js.get "find"]
      end
      module[@js.scope "InternalEditorOptions"] InternalEditorOptions : sig
        type t = monaco_editor_InternalEditorOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get__internalEditorOptionsBrand: t -> unknown [@@js.get "_internalEditorOptionsBrand"]
        val get_canUseLayerHinting: t -> bool [@@js.get "canUseLayerHinting"]
        val get_pixelRatio: t -> float [@@js.get "pixelRatio"]
        val get_editorClassName: t -> string [@@js.get "editorClassName"]
        val get_lineHeight: t -> float [@@js.get "lineHeight"]
        val get_readOnly: t -> bool [@@js.get "readOnly"]
        val get_multiCursorModifier: t -> ([`L_s11_altKey[@js "altKey"] | `L_s20_ctrlKey[@js "ctrlKey"] | `L_s33_metaKey[@js "metaKey"]] [@js.enum]) [@@js.get "multiCursorModifier"]
        val get_wordSeparators: t -> string [@@js.get "wordSeparators"]
        val get_autoClosingBrackets: t -> bool [@@js.get "autoClosingBrackets"]
        val get_autoIndent: t -> bool [@@js.get "autoIndent"]
        val get_useTabStops: t -> bool [@@js.get "useTabStops"]
        val get_tabFocusMode: t -> bool [@@js.get "tabFocusMode"]
        val get_dragAndDrop: t -> bool [@@js.get "dragAndDrop"]
        val get_emptySelectionClipboard: t -> bool [@@js.get "emptySelectionClipboard"]
        val get_layoutInfo: t -> monaco_editor_EditorLayoutInfo [@@js.get "layoutInfo"]
        val get_fontInfo: t -> monaco_editor_FontInfo [@@js.get "fontInfo"]
        val get_viewInfo: t -> monaco_editor_InternalEditorViewOptions [@@js.get "viewInfo"]
        val get_wrappingInfo: t -> monaco_editor_EditorWrappingInfo [@@js.get "wrappingInfo"]
        val get_contribInfo: t -> monaco_editor_EditorContribOptions [@@js.get "contribInfo"]
      end
      module[@js.scope "OverviewRulerPosition"] OverviewRulerPosition : sig
        type t = monaco_editor_OverviewRulerPosition
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_width: t -> float [@@js.get "width"]
        val get_height: t -> float [@@js.get "height"]
        val get_top: t -> float [@@js.get "top"]
        val get_right: t -> float [@@js.get "right"]
      end
      module[@js.scope "EditorLayoutInfo"] EditorLayoutInfo : sig
        type t = monaco_editor_EditorLayoutInfo
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_width: t -> float [@@js.get "width"]
        val get_height: t -> float [@@js.get "height"]
        val get_glyphMarginLeft: t -> float [@@js.get "glyphMarginLeft"]
        val get_glyphMarginWidth: t -> float [@@js.get "glyphMarginWidth"]
        val get_glyphMarginHeight: t -> float [@@js.get "glyphMarginHeight"]
        val get_lineNumbersLeft: t -> float [@@js.get "lineNumbersLeft"]
        val get_lineNumbersWidth: t -> float [@@js.get "lineNumbersWidth"]
        val get_lineNumbersHeight: t -> float [@@js.get "lineNumbersHeight"]
        val get_decorationsLeft: t -> float [@@js.get "decorationsLeft"]
        val get_decorationsWidth: t -> float [@@js.get "decorationsWidth"]
        val get_decorationsHeight: t -> float [@@js.get "decorationsHeight"]
        val get_contentLeft: t -> float [@@js.get "contentLeft"]
        val get_contentWidth: t -> float [@@js.get "contentWidth"]
        val get_contentHeight: t -> float [@@js.get "contentHeight"]
        val get_minimapWidth: t -> float [@@js.get "minimapWidth"]
        val get_renderMinimap: t -> monaco_editor_RenderMinimap [@@js.get "renderMinimap"]
        val get_viewportColumn: t -> float [@@js.get "viewportColumn"]
        val get_verticalScrollbarWidth: t -> float [@@js.get "verticalScrollbarWidth"]
        val get_horizontalScrollbarHeight: t -> float [@@js.get "horizontalScrollbarHeight"]
        val get_overviewRuler: t -> monaco_editor_OverviewRulerPosition [@@js.get "overviewRuler"]
      end
      module[@js.scope "IConfigurationChangedEvent"] IConfigurationChangedEvent : sig
        type t = monaco_editor_IConfigurationChangedEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_canUseLayerHinting: t -> bool [@@js.get "canUseLayerHinting"]
        val get_pixelRatio: t -> bool [@@js.get "pixelRatio"]
        val get_editorClassName: t -> bool [@@js.get "editorClassName"]
        val get_lineHeight: t -> bool [@@js.get "lineHeight"]
        val get_readOnly: t -> bool [@@js.get "readOnly"]
        val get_accessibilitySupport: t -> bool [@@js.get "accessibilitySupport"]
        val get_multiCursorModifier: t -> bool [@@js.get "multiCursorModifier"]
        val get_wordSeparators: t -> bool [@@js.get "wordSeparators"]
        val get_autoClosingBrackets: t -> bool [@@js.get "autoClosingBrackets"]
        val get_autoIndent: t -> bool [@@js.get "autoIndent"]
        val get_useTabStops: t -> bool [@@js.get "useTabStops"]
        val get_tabFocusMode: t -> bool [@@js.get "tabFocusMode"]
        val get_dragAndDrop: t -> bool [@@js.get "dragAndDrop"]
        val get_emptySelectionClipboard: t -> bool [@@js.get "emptySelectionClipboard"]
        val get_layoutInfo: t -> bool [@@js.get "layoutInfo"]
        val get_fontInfo: t -> bool [@@js.get "fontInfo"]
        val get_viewInfo: t -> bool [@@js.get "viewInfo"]
        val get_wrappingInfo: t -> bool [@@js.get "wrappingInfo"]
        val get_contribInfo: t -> bool [@@js.get "contribInfo"]
      end
      module[@js.scope "IViewZone"] IViewZone : sig
        type t = monaco_editor_IViewZone
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_afterLineNumber: t -> float [@@js.get "afterLineNumber"]
        val set_afterLineNumber: t -> float -> unit [@@js.set "afterLineNumber"]
        val get_afterColumn: t -> float [@@js.get "afterColumn"]
        val set_afterColumn: t -> float -> unit [@@js.set "afterColumn"]
        val get_suppressMouseDown: t -> bool [@@js.get "suppressMouseDown"]
        val set_suppressMouseDown: t -> bool -> unit [@@js.set "suppressMouseDown"]
        val get_heightInLines: t -> float [@@js.get "heightInLines"]
        val set_heightInLines: t -> float -> unit [@@js.set "heightInLines"]
        val get_heightInPx: t -> float [@@js.get "heightInPx"]
        val set_heightInPx: t -> float -> unit [@@js.set "heightInPx"]
        val get_domNode: t -> HTMLElement.t_0 [@@js.get "domNode"]
        val set_domNode: t -> HTMLElement.t_0 -> unit [@@js.set "domNode"]
        val get_marginDomNode: t -> HTMLElement.t_0 [@@js.get "marginDomNode"]
        val set_marginDomNode: t -> HTMLElement.t_0 -> unit [@@js.set "marginDomNode"]
        val onDomNodeTop: t -> top:float -> unit [@@js.call "onDomNodeTop"]
        val onComputedHeight: t -> height:float -> unit [@@js.call "onComputedHeight"]
      end
      module[@js.scope "IViewZoneChangeAccessor"] IViewZoneChangeAccessor : sig
        type t = monaco_editor_IViewZoneChangeAccessor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val addZone: t -> zone:monaco_editor_IViewZone -> float [@@js.call "addZone"]
        val removeZone: t -> id:float -> unit [@@js.call "removeZone"]
        val layoutZone: t -> id:float -> unit [@@js.call "layoutZone"]
      end
      module ContentWidgetPositionPreference : sig
        type t = monaco_editor_ContentWidgetPositionPreference
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "IContentWidgetPosition"] IContentWidgetPosition : sig
        type t = monaco_editor_IContentWidgetPosition
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_position: t -> monaco_IPosition [@@js.get "position"]
        val set_position: t -> monaco_IPosition -> unit [@@js.set "position"]
        val get_preference: t -> monaco_editor_ContentWidgetPositionPreference list [@@js.get "preference"]
        val set_preference: t -> monaco_editor_ContentWidgetPositionPreference list -> unit [@@js.set "preference"]
      end
      module[@js.scope "IContentWidget"] IContentWidget : sig
        type t = monaco_editor_IContentWidget
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_allowEditorOverflow: t -> bool [@@js.get "allowEditorOverflow"]
        val set_allowEditorOverflow: t -> bool -> unit [@@js.set "allowEditorOverflow"]
        val get_suppressMouseDown: t -> bool [@@js.get "suppressMouseDown"]
        val set_suppressMouseDown: t -> bool -> unit [@@js.set "suppressMouseDown"]
        val getId: t -> string [@@js.call "getId"]
        val getDomNode: t -> HTMLElement.t_0 [@@js.call "getDomNode"]
        val getPosition: t -> monaco_editor_IContentWidgetPosition [@@js.call "getPosition"]
      end
      module OverlayWidgetPositionPreference : sig
        type t = monaco_editor_OverlayWidgetPositionPreference
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "IOverlayWidgetPosition"] IOverlayWidgetPosition : sig
        type t = monaco_editor_IOverlayWidgetPosition
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_preference: t -> monaco_editor_OverlayWidgetPositionPreference [@@js.get "preference"]
        val set_preference: t -> monaco_editor_OverlayWidgetPositionPreference -> unit [@@js.set "preference"]
      end
      module[@js.scope "IOverlayWidget"] IOverlayWidget : sig
        type t = monaco_editor_IOverlayWidget
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getId: t -> string [@@js.call "getId"]
        val getDomNode: t -> HTMLElement.t_0 [@@js.call "getDomNode"]
        val getPosition: t -> monaco_editor_IOverlayWidgetPosition [@@js.call "getPosition"]
      end
      module MouseTargetType : sig
        type t = monaco_editor_MouseTargetType
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "IMouseTarget"] IMouseTarget : sig
        type t = monaco_editor_IMouseTarget
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_element: t -> Element.t_0 [@@js.get "element"]
        val get_type: t -> monaco_editor_MouseTargetType [@@js.get "type"]
        val get_position: t -> monaco_Position [@@js.get "position"]
        val get_mouseColumn: t -> float [@@js.get "mouseColumn"]
        val get_range: t -> monaco_Range [@@js.get "range"]
        val get_detail: t -> any [@@js.get "detail"]
      end
      module[@js.scope "IEditorMouseEvent"] IEditorMouseEvent : sig
        type t = monaco_editor_IEditorMouseEvent
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_event: t -> monaco_IMouseEvent [@@js.get "event"]
        val get_target: t -> monaco_editor_IMouseTarget [@@js.get "target"]
      end
      module[@js.scope "ICodeEditor"] ICodeEditor : sig
        type t = monaco_editor_ICodeEditor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val onMouseUp: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseUp"]
        val onMouseDown: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseDown"]
        val onContextMenu: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onContextMenu"]
        val onMouseMove: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseMove"]
        val onMouseLeave: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseLeave"]
        val onKeyUp: t -> listener:(e:monaco_IKeyboardEvent -> unit) -> monaco_IDisposable [@@js.call "onKeyUp"]
        val onKeyDown: t -> listener:(e:monaco_IKeyboardEvent -> unit) -> monaco_IDisposable [@@js.call "onKeyDown"]
        val onDidLayoutChange: t -> listener:(e:monaco_editor_EditorLayoutInfo -> unit) -> monaco_IDisposable [@@js.call "onDidLayoutChange"]
        val onDidScrollChange: t -> listener:(e:monaco_IScrollEvent -> unit) -> monaco_IDisposable [@@js.call "onDidScrollChange"]
        val getDomNode: t -> HTMLElement.t_0 [@@js.call "getDomNode"]
        val addContentWidget: t -> widget:monaco_editor_IContentWidget -> unit [@@js.call "addContentWidget"]
        val layoutContentWidget: t -> widget:monaco_editor_IContentWidget -> unit [@@js.call "layoutContentWidget"]
        val removeContentWidget: t -> widget:monaco_editor_IContentWidget -> unit [@@js.call "removeContentWidget"]
        val addOverlayWidget: t -> widget:monaco_editor_IOverlayWidget -> unit [@@js.call "addOverlayWidget"]
        val layoutOverlayWidget: t -> widget:monaco_editor_IOverlayWidget -> unit [@@js.call "layoutOverlayWidget"]
        val removeOverlayWidget: t -> widget:monaco_editor_IOverlayWidget -> unit [@@js.call "removeOverlayWidget"]
        val changeViewZones: t -> callback:(accessor:monaco_editor_IViewZoneChangeAccessor -> unit) -> unit [@@js.call "changeViewZones"]
        val getCenteredRangeInViewport: t -> monaco_Range [@@js.call "getCenteredRangeInViewport"]
        val getOffsetForColumn: t -> lineNumber:float -> column:float -> float [@@js.call "getOffsetForColumn"]
        val render: t -> unit [@@js.call "render"]
        val getTopForLineNumber: t -> lineNumber:float -> float [@@js.call "getTopForLineNumber"]
        val getTopForPosition: t -> lineNumber:float -> column:float -> float [@@js.call "getTopForPosition"]
        val getTargetAtClientPoint: t -> clientX:float -> clientY:float -> monaco_editor_IMouseTarget [@@js.call "getTargetAtClientPoint"]
        val getScrolledVisiblePosition: t -> position:monaco_IPosition -> anonymous_interface_10 [@@js.call "getScrolledVisiblePosition"]
        val applyFontInfo: t -> target:HTMLElement.t_0 -> unit [@@js.call "applyFontInfo"]
        val cast: t -> monaco_editor_ICommonCodeEditor [@@js.cast]
      end
      module[@js.scope "IDiffEditor"] IDiffEditor : sig
        type t = monaco_editor_IDiffEditor
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getDomNode: t -> HTMLElement.t_0 [@@js.call "getDomNode"]
        val cast: t -> monaco_editor_ICommonDiffEditor [@@js.cast]
      end
      module[@js.scope "FontInfo"] FontInfo : sig
        type t = monaco_editor_FontInfo
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get__editorStylingBrand: t -> unknown [@@js.get "_editorStylingBrand"]
        val get_isTrusted: t -> bool [@@js.get "isTrusted"]
        val get_isMonospace: t -> bool [@@js.get "isMonospace"]
        val get_typicalHalfwidthCharacterWidth: t -> float [@@js.get "typicalHalfwidthCharacterWidth"]
        val get_typicalFullwidthCharacterWidth: t -> float [@@js.get "typicalFullwidthCharacterWidth"]
        val get_spaceWidth: t -> float [@@js.get "spaceWidth"]
        val get_maxDigitWidth: t -> float [@@js.get "maxDigitWidth"]
        val cast: t -> monaco_editor_BareFontInfo [@@js.cast]
      end
      module[@js.scope "BareFontInfo"] BareFontInfo : sig
        type t = monaco_editor_BareFontInfo
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get__bareFontInfoBrand: t -> unknown [@@js.get "_bareFontInfoBrand"]
        val get_zoomLevel: t -> float [@@js.get "zoomLevel"]
        val get_fontFamily: t -> string [@@js.get "fontFamily"]
        val get_fontWeight: t -> string [@@js.get "fontWeight"]
        val get_fontSize: t -> float [@@js.get "fontSize"]
        val get_lineHeight: t -> float [@@js.get "lineHeight"]
        val get_letterSpacing: t -> float [@@js.get "letterSpacing"]
      end
    end
    module[@js.scope "languages"] Languages : sig
      val register: language:monaco_languages_ILanguageExtensionPoint -> unit [@@js.global "register"]
      val getLanguages: unit -> monaco_languages_ILanguageExtensionPoint list [@@js.global "getLanguages"]
      val onLanguage: languageId:string -> callback:(unit -> unit) -> monaco_IDisposable [@@js.global "onLanguage"]
      val setLanguageConfiguration: languageId:string -> configuration:monaco_languages_LanguageConfiguration -> monaco_IDisposable [@@js.global "setLanguageConfiguration"]
      module[@js.scope "IToken"] IToken : sig
        type t = monaco_languages_IToken
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_startIndex: t -> float [@@js.get "startIndex"]
        val set_startIndex: t -> float -> unit [@@js.set "startIndex"]
        val get_scopes: t -> string [@@js.get "scopes"]
        val set_scopes: t -> string -> unit [@@js.set "scopes"]
      end
      module[@js.scope "ILineTokens"] ILineTokens : sig
        type t = monaco_languages_ILineTokens
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_tokens: t -> monaco_languages_IToken list [@@js.get "tokens"]
        val set_tokens: t -> monaco_languages_IToken list -> unit [@@js.set "tokens"]
        val get_endState: t -> monaco_languages_IState [@@js.get "endState"]
        val set_endState: t -> monaco_languages_IState -> unit [@@js.set "endState"]
      end
      module[@js.scope "TokensProvider"] TokensProvider : sig
        type t = monaco_languages_TokensProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getInitialState: t -> monaco_languages_IState [@@js.call "getInitialState"]
        val tokenize: t -> line:string -> state:monaco_languages_IState -> monaco_languages_ILineTokens [@@js.call "tokenize"]
      end
      val setTokensProvider: languageId:string -> provider:monaco_languages_TokensProvider -> monaco_IDisposable [@@js.global "setTokensProvider"]
      val setMonarchTokensProvider: languageId:string -> languageDef:monaco_languages_IMonarchLanguage -> monaco_IDisposable [@@js.global "setMonarchTokensProvider"]
      val registerReferenceProvider: languageId:string -> provider:monaco_languages_ReferenceProvider -> monaco_IDisposable [@@js.global "registerReferenceProvider"]
      val registerRenameProvider: languageId:string -> provider:monaco_languages_RenameProvider -> monaco_IDisposable [@@js.global "registerRenameProvider"]
      val registerSignatureHelpProvider: languageId:string -> provider:monaco_languages_SignatureHelpProvider -> monaco_IDisposable [@@js.global "registerSignatureHelpProvider"]
      val registerHoverProvider: languageId:string -> provider:monaco_languages_HoverProvider -> monaco_IDisposable [@@js.global "registerHoverProvider"]
      val registerDocumentSymbolProvider: languageId:string -> provider:monaco_languages_DocumentSymbolProvider -> monaco_IDisposable [@@js.global "registerDocumentSymbolProvider"]
      val registerDocumentHighlightProvider: languageId:string -> provider:monaco_languages_DocumentHighlightProvider -> monaco_IDisposable [@@js.global "registerDocumentHighlightProvider"]
      val registerDefinitionProvider: languageId:string -> provider:monaco_languages_DefinitionProvider -> monaco_IDisposable [@@js.global "registerDefinitionProvider"]
      val registerImplementationProvider: languageId:string -> provider:monaco_languages_ImplementationProvider -> monaco_IDisposable [@@js.global "registerImplementationProvider"]
      val registerTypeDefinitionProvider: languageId:string -> provider:monaco_languages_TypeDefinitionProvider -> monaco_IDisposable [@@js.global "registerTypeDefinitionProvider"]
      val registerCodeLensProvider: languageId:string -> provider:monaco_languages_CodeLensProvider -> monaco_IDisposable [@@js.global "registerCodeLensProvider"]
      val registerCodeActionProvider: languageId:string -> provider:monaco_languages_CodeActionProvider -> monaco_IDisposable [@@js.global "registerCodeActionProvider"]
      val registerDocumentFormattingEditProvider: languageId:string -> provider:monaco_languages_DocumentFormattingEditProvider -> monaco_IDisposable [@@js.global "registerDocumentFormattingEditProvider"]
      val registerDocumentRangeFormattingEditProvider: languageId:string -> provider:monaco_languages_DocumentRangeFormattingEditProvider -> monaco_IDisposable [@@js.global "registerDocumentRangeFormattingEditProvider"]
      val registerOnTypeFormattingEditProvider: languageId:string -> provider:monaco_languages_OnTypeFormattingEditProvider -> monaco_IDisposable [@@js.global "registerOnTypeFormattingEditProvider"]
      val registerLinkProvider: languageId:string -> provider:monaco_languages_LinkProvider -> monaco_IDisposable [@@js.global "registerLinkProvider"]
      val registerCompletionItemProvider: languageId:string -> provider:monaco_languages_CompletionItemProvider -> monaco_IDisposable [@@js.global "registerCompletionItemProvider"]
      module[@js.scope "CodeActionContext"] CodeActionContext : sig
        type t = monaco_languages_CodeActionContext
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_markers: t -> monaco_editor_IMarkerData list [@@js.get "markers"]
      end
      module[@js.scope "CodeActionProvider"] CodeActionProvider : sig
        type t = monaco_languages_CodeActionProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideCodeActions: t -> model:monaco_editor_IReadOnlyModel -> range:monaco_Range -> context:monaco_languages_CodeActionContext -> token:monaco_CancellationToken -> (monaco_languages_Command list monaco_Thenable, monaco_languages_Command) or_array [@@js.call "provideCodeActions"]
      end
      module CompletionItemKind : sig
        type t = monaco_languages_CompletionItemKind
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "SnippetString"] SnippetString : sig
        type t = monaco_languages_SnippetString
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_value: t -> string [@@js.get "value"]
        val set_value: t -> string -> unit [@@js.set "value"]
      end
      module[@js.scope "CompletionItem"] CompletionItem : sig
        type t = monaco_languages_CompletionItem
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_label: t -> string [@@js.get "label"]
        val set_label: t -> string -> unit [@@js.set "label"]
        val get_kind: t -> monaco_languages_CompletionItemKind [@@js.get "kind"]
        val set_kind: t -> monaco_languages_CompletionItemKind -> unit [@@js.set "kind"]
        val get_detail: t -> string [@@js.get "detail"]
        val set_detail: t -> string -> unit [@@js.set "detail"]
        val get_documentation: t -> string [@@js.get "documentation"]
        val set_documentation: t -> string -> unit [@@js.set "documentation"]
        val get_sortText: t -> string [@@js.get "sortText"]
        val set_sortText: t -> string -> unit [@@js.set "sortText"]
        val get_filterText: t -> string [@@js.get "filterText"]
        val set_filterText: t -> string -> unit [@@js.set "filterText"]
        val get_insertText: t -> monaco_languages_SnippetString or_string [@@js.get "insertText"]
        val set_insertText: t -> monaco_languages_SnippetString or_string -> unit [@@js.set "insertText"]
        val get_range: t -> monaco_Range [@@js.get "range"]
        val set_range: t -> monaco_Range -> unit [@@js.set "range"]
        val get_textEdit: t -> monaco_editor_ISingleEditOperation [@@js.get "textEdit"]
        val set_textEdit: t -> monaco_editor_ISingleEditOperation -> unit [@@js.set "textEdit"]
      end
      module[@js.scope "CompletionList"] CompletionList : sig
        type t = monaco_languages_CompletionList
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_isIncomplete: t -> bool [@@js.get "isIncomplete"]
        val set_isIncomplete: t -> bool -> unit [@@js.set "isIncomplete"]
        val get_items: t -> monaco_languages_CompletionItem list [@@js.get "items"]
        val set_items: t -> monaco_languages_CompletionItem list -> unit [@@js.set "items"]
      end
      module[@js.scope "CompletionItemProvider"] CompletionItemProvider : sig
        type t = monaco_languages_CompletionItemProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_triggerCharacters: t -> string list [@@js.get "triggerCharacters"]
        val set_triggerCharacters: t -> string list -> unit [@@js.set "triggerCharacters"]
        val provideCompletionItems: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> token:monaco_CancellationToken -> ((monaco_languages_CompletionList, monaco_languages_CompletionList monaco_Thenable, monaco_languages_CompletionItem list monaco_Thenable) union3, monaco_languages_CompletionItem) or_array [@@js.call "provideCompletionItems"]
        val resolveCompletionItem: t -> item:monaco_languages_CompletionItem -> token:monaco_CancellationToken -> (monaco_languages_CompletionItem, monaco_languages_CompletionItem monaco_Thenable) union2 [@@js.call "resolveCompletionItem"]
      end
      module[@js.scope "CommentRule"] CommentRule : sig
        type t = monaco_languages_CommentRule
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_lineComment: t -> string [@@js.get "lineComment"]
        val set_lineComment: t -> string -> unit [@@js.set "lineComment"]
        val get_blockComment: t -> monaco_languages_CharacterPair [@@js.get "blockComment"]
        val set_blockComment: t -> monaco_languages_CharacterPair -> unit [@@js.set "blockComment"]
      end
      module[@js.scope "LanguageConfiguration"] LanguageConfiguration : sig
        type t = monaco_languages_LanguageConfiguration
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_comments: t -> monaco_languages_CommentRule [@@js.get "comments"]
        val set_comments: t -> monaco_languages_CommentRule -> unit [@@js.set "comments"]
        val get_brackets: t -> monaco_languages_CharacterPair list [@@js.get "brackets"]
        val set_brackets: t -> monaco_languages_CharacterPair list -> unit [@@js.set "brackets"]
        val get_wordPattern: t -> regexp [@@js.get "wordPattern"]
        val set_wordPattern: t -> regexp -> unit [@@js.set "wordPattern"]
        val get_indentationRules: t -> monaco_languages_IndentationRule [@@js.get "indentationRules"]
        val set_indentationRules: t -> monaco_languages_IndentationRule -> unit [@@js.set "indentationRules"]
        val get_onEnterRules: t -> monaco_languages_OnEnterRule list [@@js.get "onEnterRules"]
        val set_onEnterRules: t -> monaco_languages_OnEnterRule list -> unit [@@js.set "onEnterRules"]
        val get_autoClosingPairs: t -> monaco_languages_IAutoClosingPairConditional list [@@js.get "autoClosingPairs"]
        val set_autoClosingPairs: t -> monaco_languages_IAutoClosingPairConditional list -> unit [@@js.set "autoClosingPairs"]
        val get_surroundingPairs: t -> monaco_languages_IAutoClosingPair list [@@js.get "surroundingPairs"]
        val set_surroundingPairs: t -> monaco_languages_IAutoClosingPair list -> unit [@@js.set "surroundingPairs"]
        val get___electricCharacterSupport: t -> monaco_languages_IBracketElectricCharacterContribution [@@js.get "__electricCharacterSupport"]
        val set___electricCharacterSupport: t -> monaco_languages_IBracketElectricCharacterContribution -> unit [@@js.set "__electricCharacterSupport"]
      end
      module[@js.scope "IndentationRule"] IndentationRule : sig
        type t = monaco_languages_IndentationRule
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_decreaseIndentPattern: t -> regexp [@@js.get "decreaseIndentPattern"]
        val set_decreaseIndentPattern: t -> regexp -> unit [@@js.set "decreaseIndentPattern"]
        val get_increaseIndentPattern: t -> regexp [@@js.get "increaseIndentPattern"]
        val set_increaseIndentPattern: t -> regexp -> unit [@@js.set "increaseIndentPattern"]
        val get_indentNextLinePattern: t -> regexp [@@js.get "indentNextLinePattern"]
        val set_indentNextLinePattern: t -> regexp -> unit [@@js.set "indentNextLinePattern"]
        val get_unIndentedLinePattern: t -> regexp [@@js.get "unIndentedLinePattern"]
        val set_unIndentedLinePattern: t -> regexp -> unit [@@js.set "unIndentedLinePattern"]
      end
      module[@js.scope "OnEnterRule"] OnEnterRule : sig
        type t = monaco_languages_OnEnterRule
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_beforeText: t -> regexp [@@js.get "beforeText"]
        val set_beforeText: t -> regexp -> unit [@@js.set "beforeText"]
        val get_afterText: t -> regexp [@@js.get "afterText"]
        val set_afterText: t -> regexp -> unit [@@js.set "afterText"]
        val get_action: t -> monaco_languages_EnterAction [@@js.get "action"]
        val set_action: t -> monaco_languages_EnterAction -> unit [@@js.set "action"]
      end
      module[@js.scope "IBracketElectricCharacterContribution"] IBracketElectricCharacterContribution : sig
        type t = monaco_languages_IBracketElectricCharacterContribution
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_docComment: t -> monaco_languages_IDocComment [@@js.get "docComment"]
        val set_docComment: t -> monaco_languages_IDocComment -> unit [@@js.set "docComment"]
      end
      module[@js.scope "IDocComment"] IDocComment : sig
        type t = monaco_languages_IDocComment
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_open: t -> string [@@js.get "open"]
        val set_open: t -> string -> unit [@@js.set "open"]
        val get_close: t -> string [@@js.get "close"]
        val set_close: t -> string -> unit [@@js.set "close"]
      end
      module CharacterPair : sig
        type t = monaco_languages_CharacterPair
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "IAutoClosingPair"] IAutoClosingPair : sig
        type t = monaco_languages_IAutoClosingPair
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_open: t -> string [@@js.get "open"]
        val set_open: t -> string -> unit [@@js.set "open"]
        val get_close: t -> string [@@js.get "close"]
        val set_close: t -> string -> unit [@@js.set "close"]
      end
      module[@js.scope "IAutoClosingPairConditional"] IAutoClosingPairConditional : sig
        type t = monaco_languages_IAutoClosingPairConditional
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_notIn: t -> string list [@@js.get "notIn"]
        val set_notIn: t -> string list -> unit [@@js.set "notIn"]
        val cast: t -> monaco_languages_IAutoClosingPair [@@js.cast]
      end
      module IndentAction : sig
        type t = monaco_languages_IndentAction
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "EnterAction"] EnterAction : sig
        type t = monaco_languages_EnterAction
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_indentAction: t -> monaco_languages_IndentAction [@@js.get "indentAction"]
        val set_indentAction: t -> monaco_languages_IndentAction -> unit [@@js.set "indentAction"]
        val get_outdentCurrentLine: t -> bool [@@js.get "outdentCurrentLine"]
        val set_outdentCurrentLine: t -> bool -> unit [@@js.set "outdentCurrentLine"]
        val get_appendText: t -> string [@@js.get "appendText"]
        val set_appendText: t -> string -> unit [@@js.set "appendText"]
        val get_removeText: t -> float [@@js.get "removeText"]
        val set_removeText: t -> float -> unit [@@js.set "removeText"]
      end
      module[@js.scope "IState"] IState : sig
        type t = monaco_languages_IState
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val clone: t -> t [@@js.call "clone"]
        val equals: t -> other:t -> bool [@@js.call "equals"]
      end
      module[@js.scope "Hover"] Hover : sig
        type t = monaco_languages_Hover
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_contents: t -> monaco_MarkedString list [@@js.get "contents"]
        val set_contents: t -> monaco_MarkedString list -> unit [@@js.set "contents"]
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      end
      module[@js.scope "HoverProvider"] HoverProvider : sig
        type t = monaco_languages_HoverProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideHover: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Hover, monaco_languages_Hover monaco_Thenable) union2 [@@js.call "provideHover"]
      end
      module[@js.scope "ParameterInformation"] ParameterInformation : sig
        type t = monaco_languages_ParameterInformation
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_label: t -> string [@@js.get "label"]
        val set_label: t -> string -> unit [@@js.set "label"]
        val get_documentation: t -> string [@@js.get "documentation"]
        val set_documentation: t -> string -> unit [@@js.set "documentation"]
      end
      module[@js.scope "SignatureInformation"] SignatureInformation : sig
        type t = monaco_languages_SignatureInformation
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_label: t -> string [@@js.get "label"]
        val set_label: t -> string -> unit [@@js.set "label"]
        val get_documentation: t -> string [@@js.get "documentation"]
        val set_documentation: t -> string -> unit [@@js.set "documentation"]
        val get_parameters: t -> monaco_languages_ParameterInformation list [@@js.get "parameters"]
        val set_parameters: t -> monaco_languages_ParameterInformation list -> unit [@@js.set "parameters"]
      end
      module[@js.scope "SignatureHelp"] SignatureHelp : sig
        type t = monaco_languages_SignatureHelp
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_signatures: t -> monaco_languages_SignatureInformation list [@@js.get "signatures"]
        val set_signatures: t -> monaco_languages_SignatureInformation list -> unit [@@js.set "signatures"]
        val get_activeSignature: t -> float [@@js.get "activeSignature"]
        val set_activeSignature: t -> float -> unit [@@js.set "activeSignature"]
        val get_activeParameter: t -> float [@@js.get "activeParameter"]
        val set_activeParameter: t -> float -> unit [@@js.set "activeParameter"]
      end
      module[@js.scope "SignatureHelpProvider"] SignatureHelpProvider : sig
        type t = monaco_languages_SignatureHelpProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_signatureHelpTriggerCharacters: t -> string list [@@js.get "signatureHelpTriggerCharacters"]
        val set_signatureHelpTriggerCharacters: t -> string list -> unit [@@js.set "signatureHelpTriggerCharacters"]
        val provideSignatureHelp: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_SignatureHelp, monaco_languages_SignatureHelp monaco_Thenable) union2 [@@js.call "provideSignatureHelp"]
      end
      module DocumentHighlightKind : sig
        type t = monaco_languages_DocumentHighlightKind
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "DocumentHighlight"] DocumentHighlight : sig
        type t = monaco_languages_DocumentHighlight
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
        val get_kind: t -> monaco_languages_DocumentHighlightKind [@@js.get "kind"]
        val set_kind: t -> monaco_languages_DocumentHighlightKind -> unit [@@js.set "kind"]
      end
      module[@js.scope "DocumentHighlightProvider"] DocumentHighlightProvider : sig
        type t = monaco_languages_DocumentHighlightProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideDocumentHighlights: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_DocumentHighlight list monaco_Thenable, monaco_languages_DocumentHighlight) or_array [@@js.call "provideDocumentHighlights"]
      end
      module[@js.scope "ReferenceContext"] ReferenceContext : sig
        type t = monaco_languages_ReferenceContext
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_includeDeclaration: t -> bool [@@js.get "includeDeclaration"]
        val set_includeDeclaration: t -> bool -> unit [@@js.set "includeDeclaration"]
      end
      module[@js.scope "ReferenceProvider"] ReferenceProvider : sig
        type t = monaco_languages_ReferenceProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideReferences: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> context:monaco_languages_ReferenceContext -> token:monaco_CancellationToken -> (monaco_languages_Location list monaco_Thenable, monaco_languages_Location) or_array [@@js.call "provideReferences"]
      end
      module[@js.scope "Location"] Location : sig
        type t = monaco_languages_Location
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_uri: t -> monaco_Uri [@@js.get "uri"]
        val set_uri: t -> monaco_Uri -> unit [@@js.set "uri"]
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      end
      module Definition : sig
        type t = monaco_languages_Definition
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "DefinitionProvider"] DefinitionProvider : sig
        type t = monaco_languages_DefinitionProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideDefinition: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Definition, monaco_languages_Definition monaco_Thenable) union2 [@@js.call "provideDefinition"]
      end
      module[@js.scope "ImplementationProvider"] ImplementationProvider : sig
        type t = monaco_languages_ImplementationProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideImplementation: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Definition, monaco_languages_Definition monaco_Thenable) union2 [@@js.call "provideImplementation"]
      end
      module[@js.scope "TypeDefinitionProvider"] TypeDefinitionProvider : sig
        type t = monaco_languages_TypeDefinitionProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideTypeDefinition: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Definition, monaco_languages_Definition monaco_Thenable) union2 [@@js.call "provideTypeDefinition"]
      end
      module SymbolKind : sig
        type t = monaco_languages_SymbolKind
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "SymbolInformation"] SymbolInformation : sig
        type t = monaco_languages_SymbolInformation
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_name: t -> string [@@js.get "name"]
        val set_name: t -> string -> unit [@@js.set "name"]
        val get_containerName: t -> string [@@js.get "containerName"]
        val set_containerName: t -> string -> unit [@@js.set "containerName"]
        val get_kind: t -> monaco_languages_SymbolKind [@@js.get "kind"]
        val set_kind: t -> monaco_languages_SymbolKind -> unit [@@js.set "kind"]
        val get_location: t -> monaco_languages_Location [@@js.get "location"]
        val set_location: t -> monaco_languages_Location -> unit [@@js.set "location"]
      end
      module[@js.scope "DocumentSymbolProvider"] DocumentSymbolProvider : sig
        type t = monaco_languages_DocumentSymbolProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideDocumentSymbols: t -> model:monaco_editor_IReadOnlyModel -> token:monaco_CancellationToken -> (monaco_languages_SymbolInformation list monaco_Thenable, monaco_languages_SymbolInformation) or_array [@@js.call "provideDocumentSymbols"]
      end
      module[@js.scope "TextEdit"] TextEdit : sig
        type t = monaco_languages_TextEdit
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
        val get_text: t -> string [@@js.get "text"]
        val set_text: t -> string -> unit [@@js.set "text"]
        val get_eol: t -> monaco_editor_EndOfLineSequence [@@js.get "eol"]
        val set_eol: t -> monaco_editor_EndOfLineSequence -> unit [@@js.set "eol"]
      end
      module[@js.scope "FormattingOptions"] FormattingOptions : sig
        type t = monaco_languages_FormattingOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_tabSize: t -> float [@@js.get "tabSize"]
        val set_tabSize: t -> float -> unit [@@js.set "tabSize"]
        val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
        val set_insertSpaces: t -> bool -> unit [@@js.set "insertSpaces"]
      end
      module[@js.scope "DocumentFormattingEditProvider"] DocumentFormattingEditProvider : sig
        type t = monaco_languages_DocumentFormattingEditProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideDocumentFormattingEdits: t -> model:monaco_editor_IReadOnlyModel -> options:monaco_languages_FormattingOptions -> token:monaco_CancellationToken -> (monaco_languages_TextEdit list monaco_Thenable, monaco_languages_TextEdit) or_array [@@js.call "provideDocumentFormattingEdits"]
      end
      module[@js.scope "DocumentRangeFormattingEditProvider"] DocumentRangeFormattingEditProvider : sig
        type t = monaco_languages_DocumentRangeFormattingEditProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideDocumentRangeFormattingEdits: t -> model:monaco_editor_IReadOnlyModel -> range:monaco_Range -> options:monaco_languages_FormattingOptions -> token:monaco_CancellationToken -> (monaco_languages_TextEdit list monaco_Thenable, monaco_languages_TextEdit) or_array [@@js.call "provideDocumentRangeFormattingEdits"]
      end
      module[@js.scope "OnTypeFormattingEditProvider"] OnTypeFormattingEditProvider : sig
        type t = monaco_languages_OnTypeFormattingEditProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_autoFormatTriggerCharacters: t -> string list [@@js.get "autoFormatTriggerCharacters"]
        val set_autoFormatTriggerCharacters: t -> string list -> unit [@@js.set "autoFormatTriggerCharacters"]
        val provideOnTypeFormattingEdits: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> ch:string -> options:monaco_languages_FormattingOptions -> token:monaco_CancellationToken -> (monaco_languages_TextEdit list monaco_Thenable, monaco_languages_TextEdit) or_array [@@js.call "provideOnTypeFormattingEdits"]
      end
      module[@js.scope "ILink"] ILink : sig
        type t = monaco_languages_ILink
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
        val get_url: t -> string [@@js.get "url"]
        val set_url: t -> string -> unit [@@js.set "url"]
      end
      module[@js.scope "LinkProvider"] LinkProvider : sig
        type t = monaco_languages_LinkProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideLinks: t -> model:monaco_editor_IReadOnlyModel -> token:monaco_CancellationToken -> (monaco_languages_ILink list monaco_Thenable, monaco_languages_ILink) or_array [@@js.call "provideLinks"]
        val resolveLink: t -> link:monaco_languages_ILink -> token:monaco_CancellationToken -> (monaco_languages_ILink, monaco_languages_ILink monaco_Thenable) union2 [@@js.call "resolveLink"]
      end
      module[@js.scope "IResourceEdit"] IResourceEdit : sig
        type t = monaco_languages_IResourceEdit
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_resource: t -> monaco_Uri [@@js.get "resource"]
        val set_resource: t -> monaco_Uri -> unit [@@js.set "resource"]
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
        val get_newText: t -> string [@@js.get "newText"]
        val set_newText: t -> string -> unit [@@js.set "newText"]
      end
      module[@js.scope "WorkspaceEdit"] WorkspaceEdit : sig
        type t = monaco_languages_WorkspaceEdit
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_edits: t -> monaco_languages_IResourceEdit list [@@js.get "edits"]
        val set_edits: t -> monaco_languages_IResourceEdit list -> unit [@@js.set "edits"]
        val get_rejectReason: t -> string [@@js.get "rejectReason"]
        val set_rejectReason: t -> string -> unit [@@js.set "rejectReason"]
      end
      module[@js.scope "RenameProvider"] RenameProvider : sig
        type t = monaco_languages_RenameProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val provideRenameEdits: t -> model:monaco_editor_IReadOnlyModel -> position:monaco_Position -> newName:string -> token:monaco_CancellationToken -> (monaco_languages_WorkspaceEdit, monaco_languages_WorkspaceEdit monaco_Thenable) union2 [@@js.call "provideRenameEdits"]
      end
      module[@js.scope "Command"] Command : sig
        type t = monaco_languages_Command
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_id: t -> string [@@js.get "id"]
        val set_id: t -> string -> unit [@@js.set "id"]
        val get_title: t -> string [@@js.get "title"]
        val set_title: t -> string -> unit [@@js.set "title"]
        val get_tooltip: t -> string [@@js.get "tooltip"]
        val set_tooltip: t -> string -> unit [@@js.set "tooltip"]
        val get_arguments: t -> any list [@@js.get "arguments"]
        val set_arguments: t -> any list -> unit [@@js.set "arguments"]
      end
      module[@js.scope "ICodeLensSymbol"] ICodeLensSymbol : sig
        type t = monaco_languages_ICodeLensSymbol
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_range: t -> monaco_IRange [@@js.get "range"]
        val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
        val get_id: t -> string [@@js.get "id"]
        val set_id: t -> string -> unit [@@js.set "id"]
        val get_command: t -> monaco_languages_Command [@@js.get "command"]
        val set_command: t -> monaco_languages_Command -> unit [@@js.set "command"]
      end
      module[@js.scope "CodeLensProvider"] CodeLensProvider : sig
        type t = monaco_languages_CodeLensProvider
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_onDidChange: t -> t monaco_IEvent [@@js.get "onDidChange"]
        val set_onDidChange: t -> t monaco_IEvent -> unit [@@js.set "onDidChange"]
        val provideCodeLenses: t -> model:monaco_editor_IReadOnlyModel -> token:monaco_CancellationToken -> (monaco_languages_ICodeLensSymbol list monaco_Thenable, monaco_languages_ICodeLensSymbol) or_array [@@js.call "provideCodeLenses"]
        val resolveCodeLens: t -> model:monaco_editor_IReadOnlyModel -> codeLens:monaco_languages_ICodeLensSymbol -> token:monaco_CancellationToken -> (monaco_languages_ICodeLensSymbol, monaco_languages_ICodeLensSymbol monaco_Thenable) union2 [@@js.call "resolveCodeLens"]
      end
      module[@js.scope "ILanguageExtensionPoint"] ILanguageExtensionPoint : sig
        type t = monaco_languages_ILanguageExtensionPoint
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_id: t -> string [@@js.get "id"]
        val set_id: t -> string -> unit [@@js.set "id"]
        val get_extensions: t -> string list [@@js.get "extensions"]
        val set_extensions: t -> string list -> unit [@@js.set "extensions"]
        val get_filenames: t -> string list [@@js.get "filenames"]
        val set_filenames: t -> string list -> unit [@@js.set "filenames"]
        val get_filenamePatterns: t -> string list [@@js.get "filenamePatterns"]
        val set_filenamePatterns: t -> string list -> unit [@@js.set "filenamePatterns"]
        val get_firstLine: t -> string [@@js.get "firstLine"]
        val set_firstLine: t -> string -> unit [@@js.set "firstLine"]
        val get_aliases: t -> string list [@@js.get "aliases"]
        val set_aliases: t -> string list -> unit [@@js.set "aliases"]
        val get_mimetypes: t -> string list [@@js.get "mimetypes"]
        val set_mimetypes: t -> string list -> unit [@@js.set "mimetypes"]
        val get_configuration: t -> string [@@js.get "configuration"]
        val set_configuration: t -> string -> unit [@@js.set "configuration"]
      end
      module[@js.scope "IMonarchLanguage"] IMonarchLanguage : sig
        type t = monaco_languages_IMonarchLanguage
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_tokenizer: t -> anonymous_interface_16 [@@js.get "tokenizer"]
        val set_tokenizer: t -> anonymous_interface_16 -> unit [@@js.set "tokenizer"]
        val get_ignoreCase: t -> bool [@@js.get "ignoreCase"]
        val set_ignoreCase: t -> bool -> unit [@@js.set "ignoreCase"]
        val get_defaultToken: t -> string [@@js.get "defaultToken"]
        val set_defaultToken: t -> string -> unit [@@js.set "defaultToken"]
        val get_brackets: t -> monaco_languages_IMonarchLanguageBracket list [@@js.get "brackets"]
        val set_brackets: t -> monaco_languages_IMonarchLanguageBracket list -> unit [@@js.set "brackets"]
        val get_start: t -> string [@@js.get "start"]
        val set_start: t -> string -> unit [@@js.set "start"]
        val get_tokenPostfix: t -> string [@@js.get "tokenPostfix"]
        val set_tokenPostfix: t -> string -> unit [@@js.set "tokenPostfix"]
      end
      module[@js.scope "IMonarchLanguageRule"] IMonarchLanguageRule : sig
        type t = monaco_languages_IMonarchLanguageRule
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_regex: t -> regexp or_string [@@js.get "regex"]
        val set_regex: t -> regexp or_string -> unit [@@js.set "regex"]
        val get_action: t -> monaco_languages_IMonarchLanguageAction [@@js.get "action"]
        val set_action: t -> monaco_languages_IMonarchLanguageAction -> unit [@@js.set "action"]
        val get_include: t -> string [@@js.get "include"]
        val set_include: t -> string -> unit [@@js.set "include"]
      end
      module[@js.scope "IMonarchLanguageAction"] IMonarchLanguageAction : sig
        type t = monaco_languages_IMonarchLanguageAction
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_group: t -> t list [@@js.get "group"]
        val set_group: t -> t list -> unit [@@js.set "group"]
        val get_cases: t -> untyped_object [@@js.get "cases"]
        val set_cases: t -> untyped_object -> unit [@@js.set "cases"]
        val get_token: t -> string [@@js.get "token"]
        val set_token: t -> string -> unit [@@js.set "token"]
        val get_next: t -> string [@@js.get "next"]
        val set_next: t -> string -> unit [@@js.set "next"]
        val get_switchTo: t -> string [@@js.get "switchTo"]
        val set_switchTo: t -> string -> unit [@@js.set "switchTo"]
        val get_goBack: t -> float [@@js.get "goBack"]
        val set_goBack: t -> float -> unit [@@js.set "goBack"]
        val get_bracket: t -> string [@@js.get "bracket"]
        val set_bracket: t -> string -> unit [@@js.set "bracket"]
        val get_nextEmbedded: t -> string [@@js.get "nextEmbedded"]
        val set_nextEmbedded: t -> string -> unit [@@js.set "nextEmbedded"]
        val get_log: t -> string [@@js.get "log"]
        val set_log: t -> string -> unit [@@js.set "log"]
      end
      module[@js.scope "IMonarchLanguageBracket"] IMonarchLanguageBracket : sig
        type t = monaco_languages_IMonarchLanguageBracket
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_open: t -> string [@@js.get "open"]
        val set_open: t -> string -> unit [@@js.set "open"]
        val get_close: t -> string [@@js.get "close"]
        val set_close: t -> string -> unit [@@js.set "close"]
        val get_token: t -> string [@@js.get "token"]
        val set_token: t -> string -> unit [@@js.set "token"]
      end
      module[@js.scope "typescript"] Typescript : sig
        module ModuleKind : sig
          type t = monaco_languages_typescript_ModuleKind
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
        end
        module JsxEmit : sig
          type t = monaco_languages_typescript_JsxEmit
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
        end
        module NewLineKind : sig
          type t = monaco_languages_typescript_NewLineKind
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
        end
        module ScriptTarget : sig
          type t = monaco_languages_typescript_ScriptTarget
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
        end
        module ModuleResolutionKind : sig
          type t = monaco_languages_typescript_ModuleResolutionKind
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
        end
        module CompilerOptionsValue : sig
          type t = monaco_languages_typescript_CompilerOptionsValue
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
        end
        module[@js.scope "CompilerOptions"] CompilerOptions : sig
          type t = monaco_languages_typescript_CompilerOptions
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_allowJs: t -> bool [@@js.get "allowJs"]
          val set_allowJs: t -> bool -> unit [@@js.set "allowJs"]
          val get_allowSyntheticDefaultImports: t -> bool [@@js.get "allowSyntheticDefaultImports"]
          val set_allowSyntheticDefaultImports: t -> bool -> unit [@@js.set "allowSyntheticDefaultImports"]
          val get_allowUnreachableCode: t -> bool [@@js.get "allowUnreachableCode"]
          val set_allowUnreachableCode: t -> bool -> unit [@@js.set "allowUnreachableCode"]
          val get_allowUnusedLabels: t -> bool [@@js.get "allowUnusedLabels"]
          val set_allowUnusedLabels: t -> bool -> unit [@@js.set "allowUnusedLabels"]
          val get_alwaysStrict: t -> bool [@@js.get "alwaysStrict"]
          val set_alwaysStrict: t -> bool -> unit [@@js.set "alwaysStrict"]
          val get_baseUrl: t -> string [@@js.get "baseUrl"]
          val set_baseUrl: t -> string -> unit [@@js.set "baseUrl"]
          val get_charset: t -> string [@@js.get "charset"]
          val set_charset: t -> string -> unit [@@js.set "charset"]
          val get_declaration: t -> bool [@@js.get "declaration"]
          val set_declaration: t -> bool -> unit [@@js.set "declaration"]
          val get_declarationDir: t -> string [@@js.get "declarationDir"]
          val set_declarationDir: t -> string -> unit [@@js.set "declarationDir"]
          val get_disableSizeLimit: t -> bool [@@js.get "disableSizeLimit"]
          val set_disableSizeLimit: t -> bool -> unit [@@js.set "disableSizeLimit"]
          val get_emitBOM: t -> bool [@@js.get "emitBOM"]
          val set_emitBOM: t -> bool -> unit [@@js.set "emitBOM"]
          val get_emitDecoratorMetadata: t -> bool [@@js.get "emitDecoratorMetadata"]
          val set_emitDecoratorMetadata: t -> bool -> unit [@@js.set "emitDecoratorMetadata"]
          val get_experimentalDecorators: t -> bool [@@js.get "experimentalDecorators"]
          val set_experimentalDecorators: t -> bool -> unit [@@js.set "experimentalDecorators"]
          val get_forceConsistentCasingInFileNames: t -> bool [@@js.get "forceConsistentCasingInFileNames"]
          val set_forceConsistentCasingInFileNames: t -> bool -> unit [@@js.set "forceConsistentCasingInFileNames"]
          val get_importHelpers: t -> bool [@@js.get "importHelpers"]
          val set_importHelpers: t -> bool -> unit [@@js.set "importHelpers"]
          val get_inlineSourceMap: t -> bool [@@js.get "inlineSourceMap"]
          val set_inlineSourceMap: t -> bool -> unit [@@js.set "inlineSourceMap"]
          val get_inlineSources: t -> bool [@@js.get "inlineSources"]
          val set_inlineSources: t -> bool -> unit [@@js.set "inlineSources"]
          val get_isolatedModules: t -> bool [@@js.get "isolatedModules"]
          val set_isolatedModules: t -> bool -> unit [@@js.set "isolatedModules"]
          val get_jsx: t -> monaco_languages_typescript_JsxEmit [@@js.get "jsx"]
          val set_jsx: t -> monaco_languages_typescript_JsxEmit -> unit [@@js.set "jsx"]
          val get_lib: t -> string list [@@js.get "lib"]
          val set_lib: t -> string list -> unit [@@js.set "lib"]
          val get_locale: t -> string [@@js.get "locale"]
          val set_locale: t -> string -> unit [@@js.set "locale"]
          val get_mapRoot: t -> string [@@js.get "mapRoot"]
          val set_mapRoot: t -> string -> unit [@@js.set "mapRoot"]
          val get_maxNodeModuleJsDepth: t -> float [@@js.get "maxNodeModuleJsDepth"]
          val set_maxNodeModuleJsDepth: t -> float -> unit [@@js.set "maxNodeModuleJsDepth"]
          val get_module: t -> monaco_languages_typescript_ModuleKind [@@js.get "module"]
          val set_module: t -> monaco_languages_typescript_ModuleKind -> unit [@@js.set "module"]
          val get_moduleResolution: t -> monaco_languages_typescript_ModuleResolutionKind [@@js.get "moduleResolution"]
          val set_moduleResolution: t -> monaco_languages_typescript_ModuleResolutionKind -> unit [@@js.set "moduleResolution"]
          val get_newLine: t -> monaco_languages_typescript_NewLineKind [@@js.get "newLine"]
          val set_newLine: t -> monaco_languages_typescript_NewLineKind -> unit [@@js.set "newLine"]
          val get_noEmit: t -> bool [@@js.get "noEmit"]
          val set_noEmit: t -> bool -> unit [@@js.set "noEmit"]
          val get_noEmitHelpers: t -> bool [@@js.get "noEmitHelpers"]
          val set_noEmitHelpers: t -> bool -> unit [@@js.set "noEmitHelpers"]
          val get_noEmitOnError: t -> bool [@@js.get "noEmitOnError"]
          val set_noEmitOnError: t -> bool -> unit [@@js.set "noEmitOnError"]
          val get_noErrorTruncation: t -> bool [@@js.get "noErrorTruncation"]
          val set_noErrorTruncation: t -> bool -> unit [@@js.set "noErrorTruncation"]
          val get_noFallthroughCasesInSwitch: t -> bool [@@js.get "noFallthroughCasesInSwitch"]
          val set_noFallthroughCasesInSwitch: t -> bool -> unit [@@js.set "noFallthroughCasesInSwitch"]
          val get_noImplicitAny: t -> bool [@@js.get "noImplicitAny"]
          val set_noImplicitAny: t -> bool -> unit [@@js.set "noImplicitAny"]
          val get_noImplicitReturns: t -> bool [@@js.get "noImplicitReturns"]
          val set_noImplicitReturns: t -> bool -> unit [@@js.set "noImplicitReturns"]
          val get_noImplicitThis: t -> bool [@@js.get "noImplicitThis"]
          val set_noImplicitThis: t -> bool -> unit [@@js.set "noImplicitThis"]
          val get_noUnusedLocals: t -> bool [@@js.get "noUnusedLocals"]
          val set_noUnusedLocals: t -> bool -> unit [@@js.set "noUnusedLocals"]
          val get_noUnusedParameters: t -> bool [@@js.get "noUnusedParameters"]
          val set_noUnusedParameters: t -> bool -> unit [@@js.set "noUnusedParameters"]
          val get_noImplicitUseStrict: t -> bool [@@js.get "noImplicitUseStrict"]
          val set_noImplicitUseStrict: t -> bool -> unit [@@js.set "noImplicitUseStrict"]
          val get_noLib: t -> bool [@@js.get "noLib"]
          val set_noLib: t -> bool -> unit [@@js.set "noLib"]
          val get_noResolve: t -> bool [@@js.get "noResolve"]
          val set_noResolve: t -> bool -> unit [@@js.set "noResolve"]
          val get_out: t -> string [@@js.get "out"]
          val set_out: t -> string -> unit [@@js.set "out"]
          val get_outDir: t -> string [@@js.get "outDir"]
          val set_outDir: t -> string -> unit [@@js.set "outDir"]
          val get_outFile: t -> string [@@js.get "outFile"]
          val set_outFile: t -> string -> unit [@@js.set "outFile"]
          val get_preserveConstEnums: t -> bool [@@js.get "preserveConstEnums"]
          val set_preserveConstEnums: t -> bool -> unit [@@js.set "preserveConstEnums"]
          val get_project: t -> string [@@js.get "project"]
          val set_project: t -> string -> unit [@@js.set "project"]
          val get_reactNamespace: t -> string [@@js.get "reactNamespace"]
          val set_reactNamespace: t -> string -> unit [@@js.set "reactNamespace"]
          val get_jsxFactory: t -> string [@@js.get "jsxFactory"]
          val set_jsxFactory: t -> string -> unit [@@js.set "jsxFactory"]
          val get_removeComments: t -> bool [@@js.get "removeComments"]
          val set_removeComments: t -> bool -> unit [@@js.set "removeComments"]
          val get_rootDir: t -> string [@@js.get "rootDir"]
          val set_rootDir: t -> string -> unit [@@js.set "rootDir"]
          val get_rootDirs: t -> string list [@@js.get "rootDirs"]
          val set_rootDirs: t -> string list -> unit [@@js.set "rootDirs"]
          val get_skipLibCheck: t -> bool [@@js.get "skipLibCheck"]
          val set_skipLibCheck: t -> bool -> unit [@@js.set "skipLibCheck"]
          val get_skipDefaultLibCheck: t -> bool [@@js.get "skipDefaultLibCheck"]
          val set_skipDefaultLibCheck: t -> bool -> unit [@@js.set "skipDefaultLibCheck"]
          val get_sourceMap: t -> bool [@@js.get "sourceMap"]
          val set_sourceMap: t -> bool -> unit [@@js.set "sourceMap"]
          val get_sourceRoot: t -> string [@@js.get "sourceRoot"]
          val set_sourceRoot: t -> string -> unit [@@js.set "sourceRoot"]
          val get_strictNullChecks: t -> bool [@@js.get "strictNullChecks"]
          val set_strictNullChecks: t -> bool -> unit [@@js.set "strictNullChecks"]
          val get_suppressExcessPropertyErrors: t -> bool [@@js.get "suppressExcessPropertyErrors"]
          val set_suppressExcessPropertyErrors: t -> bool -> unit [@@js.set "suppressExcessPropertyErrors"]
          val get_suppressImplicitAnyIndexErrors: t -> bool [@@js.get "suppressImplicitAnyIndexErrors"]
          val set_suppressImplicitAnyIndexErrors: t -> bool -> unit [@@js.set "suppressImplicitAnyIndexErrors"]
          val get_target: t -> monaco_languages_typescript_ScriptTarget [@@js.get "target"]
          val set_target: t -> monaco_languages_typescript_ScriptTarget -> unit [@@js.set "target"]
          val get_traceResolution: t -> bool [@@js.get "traceResolution"]
          val set_traceResolution: t -> bool -> unit [@@js.set "traceResolution"]
          val get_types: t -> string list [@@js.get "types"]
          val set_types: t -> string list -> unit [@@js.set "types"]
          val get_typeRoots: t -> string list [@@js.get "typeRoots"]
          val set_typeRoots: t -> string list -> unit [@@js.set "typeRoots"]
          val get: t -> string -> monaco_languages_typescript_CompilerOptionsValue or_undefined [@@js.index_get]
          val set: t -> string -> monaco_languages_typescript_CompilerOptionsValue or_undefined -> unit [@@js.index_set]
        end
        module[@js.scope "DiagnosticsOptions"] DiagnosticsOptions : sig
          type t = monaco_languages_typescript_DiagnosticsOptions
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_noSemanticValidation: t -> bool [@@js.get "noSemanticValidation"]
          val set_noSemanticValidation: t -> bool -> unit [@@js.set "noSemanticValidation"]
          val get_noSyntaxValidation: t -> bool [@@js.get "noSyntaxValidation"]
          val set_noSyntaxValidation: t -> bool -> unit [@@js.set "noSyntaxValidation"]
        end
        module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
          type t = monaco_languages_typescript_LanguageServiceDefaults
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val addExtraLib: t -> content:string -> ?filePath:string -> unit -> monaco_IDisposable [@@js.call "addExtraLib"]
          val setCompilerOptions: t -> options:monaco_languages_typescript_CompilerOptions -> unit [@@js.call "setCompilerOptions"]
          val setDiagnosticsOptions: t -> options:monaco_languages_typescript_DiagnosticsOptions -> unit [@@js.call "setDiagnosticsOptions"]
          val setMaximunWorkerIdleTime: t -> value:float -> unit [@@js.call "setMaximunWorkerIdleTime"]
          val setEagerModelSync: t -> value:bool -> unit [@@js.call "setEagerModelSync"]
        end
        val typescriptDefaults: monaco_languages_typescript_LanguageServiceDefaults [@@js.global "typescriptDefaults"]
        val javascriptDefaults: monaco_languages_typescript_LanguageServiceDefaults [@@js.global "javascriptDefaults"]
        val getTypeScriptWorker: unit -> any monaco_Promise [@@js.global "getTypeScriptWorker"]
        val getJavaScriptWorker: unit -> any monaco_Promise [@@js.global "getJavaScriptWorker"]
      end
      module[@js.scope "css"] Css : sig
        module[@js.scope "DiagnosticsOptions"] DiagnosticsOptions : sig
          type t = monaco_languages_css_DiagnosticsOptions
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_validate: t -> bool [@@js.get "validate"]
          val get_lint: t -> anonymous_interface_1 [@@js.get "lint"]
        end
        module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
          type t = monaco_languages_css_LanguageServiceDefaults
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_onDidChange: t -> t monaco_IEvent [@@js.get "onDidChange"]
          val get_diagnosticsOptions: t -> monaco_languages_css_DiagnosticsOptions [@@js.get "diagnosticsOptions"]
          val setDiagnosticsOptions: t -> options:monaco_languages_css_DiagnosticsOptions -> unit [@@js.call "setDiagnosticsOptions"]
        end
        val cssDefaults: monaco_languages_css_LanguageServiceDefaults [@@js.global "cssDefaults"]
        val lessDefaults: monaco_languages_css_LanguageServiceDefaults [@@js.global "lessDefaults"]
        val scssDefaults: monaco_languages_css_LanguageServiceDefaults [@@js.global "scssDefaults"]
      end
      module[@js.scope "json"] Json : sig
        module[@js.scope "DiagnosticsOptions"] DiagnosticsOptions : sig
          type t = monaco_languages_json_DiagnosticsOptions
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_validate: t -> bool [@@js.get "validate"]
          val get_allowComments: t -> bool [@@js.get "allowComments"]
          val get_schemas: t -> anonymous_interface_11 list [@@js.get "schemas"]
        end
        module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
          type t = monaco_languages_json_LanguageServiceDefaults
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_onDidChange: t -> t monaco_IEvent [@@js.get "onDidChange"]
          val get_diagnosticsOptions: t -> monaco_languages_json_DiagnosticsOptions [@@js.get "diagnosticsOptions"]
          val setDiagnosticsOptions: t -> options:monaco_languages_json_DiagnosticsOptions -> unit [@@js.call "setDiagnosticsOptions"]
        end
        val jsonDefaults: monaco_languages_json_LanguageServiceDefaults [@@js.global "jsonDefaults"]
      end
      module[@js.scope "html"] Html : sig
        module[@js.scope "HTMLFormatConfiguration"] HTMLFormatConfiguration : sig
          type t = monaco_languages_html_HTMLFormatConfiguration
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_tabSize: t -> float [@@js.get "tabSize"]
          val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
          val get_wrapLineLength: t -> float [@@js.get "wrapLineLength"]
          val get_unformatted: t -> string [@@js.get "unformatted"]
          val get_contentUnformatted: t -> string [@@js.get "contentUnformatted"]
          val get_indentInnerHtml: t -> bool [@@js.get "indentInnerHtml"]
          val get_preserveNewLines: t -> bool [@@js.get "preserveNewLines"]
          val get_maxPreserveNewLines: t -> float [@@js.get "maxPreserveNewLines"]
          val get_indentHandlebars: t -> bool [@@js.get "indentHandlebars"]
          val get_endWithNewline: t -> bool [@@js.get "endWithNewline"]
          val get_extraLiners: t -> string [@@js.get "extraLiners"]
          val get_wrapAttributes: t -> ([`L_s13_auto[@js "auto"] | `L_s22_force[@js "force"] | `L_s23_force_aligned[@js "force-aligned"] | `L_s24_force_expand_multiline[@js "force-expand-multiline"]] [@js.enum]) [@@js.get "wrapAttributes"]
        end
        module[@js.scope "CompletionConfiguration"] CompletionConfiguration : sig
          type t = monaco_languages_html_CompletionConfiguration
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get: t -> string -> bool [@@js.index_get]
          val set: t -> string -> bool -> unit [@@js.index_set]
        end
        module[@js.scope "Options"] Options : sig
          type t = monaco_languages_html_Options
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_format: t -> monaco_languages_html_HTMLFormatConfiguration [@@js.get "format"]
          val get_suggest: t -> monaco_languages_html_CompletionConfiguration [@@js.get "suggest"]
        end
        module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
          type t = monaco_languages_html_LanguageServiceDefaults
          val t_to_js: t -> Ojs.t
          val t_of_js: Ojs.t -> t
          type t_0 = t
          val t_0_to_js: t_0 -> Ojs.t
          val t_0_of_js: Ojs.t -> t_0
          val get_onDidChange: t -> t monaco_IEvent [@@js.get "onDidChange"]
          val get_options: t -> monaco_languages_html_Options [@@js.get "options"]
          val setOptions: t -> options:monaco_languages_html_Options -> unit [@@js.call "setOptions"]
        end
        val htmlDefaults: monaco_languages_html_LanguageServiceDefaults [@@js.global "htmlDefaults"]
        val handlebarDefaults: monaco_languages_html_LanguageServiceDefaults [@@js.global "handlebarDefaults"]
        val razorDefaults: monaco_languages_html_LanguageServiceDefaults [@@js.global "razorDefaults"]
      end
    end
    module[@js.scope "worker"] Worker : sig
      module[@js.scope "IMirrorModel"] IMirrorModel : sig
        type t = monaco_worker_IMirrorModel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_uri: t -> monaco_Uri [@@js.get "uri"]
        val get_version: t -> float [@@js.get "version"]
        val getValue: t -> string [@@js.call "getValue"]
      end
      module[@js.scope "IWorkerContext"] IWorkerContext : sig
        type t = monaco_worker_IWorkerContext
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val getMirrorModels: t -> monaco_worker_IMirrorModel list [@@js.call "getMirrorModels"]
      end
    end
  end
end
