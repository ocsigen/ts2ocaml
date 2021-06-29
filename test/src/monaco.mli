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
    type anonymous_interface_17 = [`anonymous_interface_17] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type anonymous_interface_18 = [`anonymous_interface_18] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type anonymous_interface_19 = [`anonymous_interface_19] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    type anonymous_interface_20 = [`anonymous_interface_20] intf
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
    and monaco_Environment = [`Monaco_Environment] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_IDisposable = [`Monaco_IDisposable] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T monaco_IEvent = [`Monaco_IEvent of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and monaco_IKeyboardEvent = [`Monaco_IKeyboardEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_IMarkdownString = [`Monaco_IMarkdownString] intf
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
    and monaco_KeyCode = [`DependsOnKbLayout[@js -1] | `Unknown[@js 0] | `Backspace[@js 1] | `Tab[@js 2] | `Enter[@js 3] | `Shift[@js 4] | `Ctrl[@js 5] | `Alt[@js 6] | `PauseBreak[@js 7] | `CapsLock[@js 8] | `Escape[@js 9] | `Space[@js 10] | `PageUp[@js 11] | `PageDown[@js 12] | `End[@js 13] | `Home[@js 14] | `LeftArrow[@js 15] | `UpArrow[@js 16] | `RightArrow[@js 17] | `DownArrow[@js 18] | `Insert[@js 19] | `Delete[@js 20] | `KEY_0[@js 21] | `KEY_1[@js 22] | `KEY_2[@js 23] | `KEY_3[@js 24] | `KEY_4[@js 25] | `KEY_5[@js 26] | `KEY_6[@js 27] | `KEY_7[@js 28] | `KEY_8[@js 29] | `KEY_9[@js 30] | `KEY_A[@js 31] | `KEY_B[@js 32] | `KEY_C[@js 33] | `KEY_D[@js 34] | `KEY_E[@js 35] | `KEY_F[@js 36] | `KEY_G[@js 37] | `KEY_H[@js 38] | `KEY_I[@js 39] | `KEY_J[@js 40] | `KEY_K[@js 41] | `KEY_L[@js 42] | `KEY_M[@js 43] | `KEY_N[@js 44] | `KEY_O[@js 45] | `KEY_P[@js 46] | `KEY_Q[@js 47] | `KEY_R[@js 48] | `KEY_S[@js 49] | `KEY_T[@js 50] | `KEY_U[@js 51] | `KEY_V[@js 52] | `KEY_W[@js 53] | `KEY_X[@js 54] | `KEY_Y[@js 55] | `KEY_Z[@js 56] | `Meta[@js 57] | `ContextMenu[@js 58] | `F1[@js 59] | `F2[@js 60] | `F3[@js 61] | `F4[@js 62] | `F5[@js 63] | `F6[@js 64] | `F7[@js 65] | `F8[@js 66] | `F9[@js 67] | `F10[@js 68] | `F11[@js 69] | `F12[@js 70] | `F13[@js 71] | `F14[@js 72] | `F15[@js 73] | `F16[@js 74] | `F17[@js 75] | `F18[@js 76] | `F19[@js 77] | `NumLock[@js 78] | `ScrollLock[@js 79] | `US_SEMICOLON[@js 80] | `US_EQUAL[@js 81] | `US_COMMA[@js 82] | `US_MINUS[@js 83] | `US_DOT[@js 84] | `US_SLASH[@js 85] | `US_BACKTICK[@js 86] | `US_OPEN_SQUARE_BRACKET[@js 87] | `US_BACKSLASH[@js 88] | `US_CLOSE_SQUARE_BRACKET[@js 89] | `US_QUOTE[@js 90] | `OEM_8[@js 91] | `OEM_102[@js 92] | `NUMPAD_0[@js 93] | `NUMPAD_1[@js 94] | `NUMPAD_2[@js 95] | `NUMPAD_3[@js 96] | `NUMPAD_4[@js 97] | `NUMPAD_5[@js 98] | `NUMPAD_6[@js 99] | `NUMPAD_7[@js 100] | `NUMPAD_8[@js 101] | `NUMPAD_9[@js 102] | `NUMPAD_MULTIPLY[@js 103] | `NUMPAD_ADD[@js 104] | `NUMPAD_SEPARATOR[@js 105] | `NUMPAD_SUBTRACT[@js 106] | `NUMPAD_DECIMAL[@js 107] | `NUMPAD_DIVIDE[@js 108] | `KEY_IN_COMPOSITION[@js 109] | `ABNT_C1[@js 110] | `ABNT_C2[@js 111] | `MAX_VALUE[@js 112]] [@js.enum]
    and monaco_KeyCode_DependsOnKbLayout = [`DependsOnKbLayout[@js -1]] [@js.enum]
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
    and monaco_MarkerSeverity = [`Hint[@js 1] | `Info[@js 2] | `Warning[@js 4] | `Error[@js 8]] [@js.enum]
    and monaco_MarkerSeverity_Hint = [`Hint[@js 1]] [@js.enum]
    and monaco_MarkerSeverity_Info = [`Info[@js 2]] [@js.enum]
    and monaco_MarkerSeverity_Warning = [`Warning[@js 4]] [@js.enum]
    and monaco_MarkerSeverity_Error = [`Error[@js 8]] [@js.enum]
    and monaco_MarkerTag = [`Unnecessary[@js 1] | `Deprecated[@js 2]] [@js.enum]
    and monaco_MarkerTag_Unnecessary = [`Unnecessary[@js 1]] [@js.enum]
    and monaco_MarkerTag_Deprecated = [`Deprecated[@js 2]] [@js.enum]
    and monaco_Position = [`Monaco_Position] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_Range = [`Monaco_Range] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_Selection = [`Monaco_Range | `Monaco_Selection] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_SelectionDirection = [`LTR[@js 0] | `RTL[@js 1]] [@js.enum]
    and monaco_SelectionDirection_LTR = [`LTR[@js 0]] [@js.enum]
    and monaco_SelectionDirection_RTL = [`RTL[@js 1]] [@js.enum]
    and 'T monaco_Thenable = 'T PromiseLike.t_1
    and monaco_Token = [`Monaco_Token] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_Uri = [`Monaco_Uri | `Monaco_UriComponents] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_UriComponents = [`Monaco_UriComponents] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_AccessibilitySupport = [`Unknown[@js 0] | `Disabled[@js 1] | `Enabled[@js 2]] [@js.enum]
    and monaco_editor_AccessibilitySupport_Unknown = [`Unknown[@js 0]] [@js.enum]
    and monaco_editor_AccessibilitySupport_Disabled = [`Disabled[@js 1]] [@js.enum]
    and monaco_editor_AccessibilitySupport_Enabled = [`Enabled[@js 2]] [@js.enum]
    and monaco_editor_BareFontInfo = [`Monaco_editor_BareFontInfo] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_BuiltinTheme = ([`L_s34_hc_black[@js "hc-black"] | `L_s81_vs[@js "vs"] | `L_s82_vs_dark[@js "vs-dark"]] [@js.enum])
    and 'T monaco_editor_ComputedEditorOptionValue = (* FIXME: unknown type 'T extends IEditorOption<any, infer R> ? R : never' *)any
    and monaco_editor_ConfigurationChangedEvent = [`Monaco_editor_ConfigurationChangedEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
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
    and monaco_editor_EditorAutoClosingEditStrategy = ([`L_s4_always[@js "always"] | `L_s5_auto[@js "auto"] | `L_s52_never[@js "never"]] [@js.enum])
    and monaco_editor_EditorAutoClosingStrategy = ([`L_s4_always[@js "always"] | `L_s6_beforeWhitespace[@js "beforeWhitespace"] | `L_s44_languageDefined[@js "languageDefined"] | `L_s52_never[@js "never"]] [@js.enum])
    and monaco_editor_EditorAutoIndentStrategy = [`None[@js 0] | `Keep[@js 1] | `Brackets[@js 2] | `Advanced[@js 3] | `Full[@js 4]] [@js.enum]
    and monaco_editor_EditorAutoIndentStrategy_None = [`None[@js 0]] [@js.enum]
    and monaco_editor_EditorAutoIndentStrategy_Keep = [`Keep[@js 1]] [@js.enum]
    and monaco_editor_EditorAutoIndentStrategy_Brackets = [`Brackets[@js 2]] [@js.enum]
    and monaco_editor_EditorAutoIndentStrategy_Advanced = [`Advanced[@js 3]] [@js.enum]
    and monaco_editor_EditorAutoIndentStrategy_Full = [`Full[@js 4]] [@js.enum]
    and monaco_editor_EditorAutoSurroundStrategy = ([`L_s13_brackets[@js "brackets"] | `L_s44_languageDefined[@js "languageDefined"] | `L_s52_never[@js "never"] | `L_s61_quotes[@js "quotes"]] [@js.enum])
    and monaco_editor_EditorCommentsOptions = monaco_editor_IEditorCommentsOptions Required.t_1 Readonly.t_1
    and monaco_editor_EditorFindOptions = monaco_editor_IEditorFindOptions Required.t_1 Readonly.t_1
    and monaco_editor_EditorHoverOptions = monaco_editor_IEditorHoverOptions Required.t_1 Readonly.t_1
    and monaco_editor_EditorInlineHintsOptions = monaco_editor_IEditorInlineHintsOptions Required.t_1 Readonly.t_1
    and monaco_editor_EditorLayoutInfo = [`Monaco_editor_EditorLayoutInfo] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_EditorLightbulbOptions = monaco_editor_IEditorLightbulbOptions Required.t_1 Readonly.t_1
    and monaco_editor_EditorMinimapLayoutInfo = [`Monaco_editor_EditorMinimapLayoutInfo] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_EditorMinimapOptions = monaco_editor_IEditorMinimapOptions Required.t_1 Readonly.t_1
    and monaco_editor_EditorOption = [`acceptSuggestionOnCommitCharacter[@js 0] | `acceptSuggestionOnEnter[@js 1] | `accessibilitySupport[@js 2] | `accessibilityPageSize[@js 3] | `ariaLabel[@js 4] | `autoClosingBrackets[@js 5] | `autoClosingDelete[@js 6] | `autoClosingOvertype[@js 7] | `autoClosingQuotes[@js 8] | `autoIndent[@js 9] | `automaticLayout[@js 10] | `autoSurround[@js 11] | `codeLens[@js 12] | `codeLensFontFamily[@js 13] | `codeLensFontSize[@js 14] | `colorDecorators[@js 15] | `columnSelection[@js 16] | `comments[@js 17] | `contextmenu[@js 18] | `copyWithSyntaxHighlighting[@js 19] | `cursorBlinking[@js 20] | `cursorSmoothCaretAnimation[@js 21] | `cursorStyle[@js 22] | `cursorSurroundingLines[@js 23] | `cursorSurroundingLinesStyle[@js 24] | `cursorWidth[@js 25] | `disableLayerHinting[@js 26] | `disableMonospaceOptimizations[@js 27] | `domReadOnly[@js 28] | `dragAndDrop[@js 29] | `emptySelectionClipboard[@js 30] | `extraEditorClassName[@js 31] | `fastScrollSensitivity[@js 32] | `find[@js 33] | `fixedOverflowWidgets[@js 34] | `folding[@js 35] | `foldingStrategy[@js 36] | `foldingHighlight[@js 37] | `unfoldOnClickAfterEndOfLine[@js 38] | `fontFamily[@js 39] | `fontInfo[@js 40] | `fontLigatures[@js 41] | `fontSize[@js 42] | `fontWeight[@js 43] | `formatOnPaste[@js 44] | `formatOnType[@js 45] | `glyphMargin[@js 46] | `gotoLocation[@js 47] | `hideCursorInOverviewRuler[@js 48] | `highlightActiveIndentGuide[@js 49] | `hover[@js 50] | `inDiffEditor[@js 51] | `letterSpacing[@js 52] | `lightbulb[@js 53] | `lineDecorationsWidth[@js 54] | `lineHeight[@js 55] | `lineNumbers[@js 56] | `lineNumbersMinChars[@js 57] | `linkedEditing[@js 58] | `links[@js 59] | `matchBrackets[@js 60] | `minimap[@js 61] | `mouseStyle[@js 62] | `mouseWheelScrollSensitivity[@js 63] | `mouseWheelZoom[@js 64] | `multiCursorMergeOverlapping[@js 65] | `multiCursorModifier[@js 66] | `multiCursorPaste[@js 67] | `occurrencesHighlight[@js 68] | `overviewRulerBorder[@js 69] | `overviewRulerLanes[@js 70] | `padding[@js 71] | `parameterHints[@js 72] | `peekWidgetDefaultFocus[@js 73] | `definitionLinkOpensInPeek[@js 74] | `quickSuggestions[@js 75] | `quickSuggestionsDelay[@js 76] | `readOnly[@js 77] | `renameOnType[@js 78] | `renderControlCharacters[@js 79] | `renderIndentGuides[@js 80] | `renderFinalNewline[@js 81] | `renderLineHighlight[@js 82] | `renderLineHighlightOnlyWhenFocus[@js 83] | `renderValidationDecorations[@js 84] | `renderWhitespace[@js 85] | `revealHorizontalRightPadding[@js 86] | `roundedSelection[@js 87] | `rulers[@js 88] | `scrollbar[@js 89] | `scrollBeyondLastColumn[@js 90] | `scrollBeyondLastLine[@js 91] | `scrollPredominantAxis[@js 92] | `selectionClipboard[@js 93] | `selectionHighlight[@js 94] | `selectOnLineNumbers[@js 95] | `showFoldingControls[@js 96] | `showUnused[@js 97] | `snippetSuggestions[@js 98] | `smartSelect[@js 99] | `smoothScrolling[@js 100] | `stickyTabStops[@js 101] | `stopRenderingLineAfter[@js 102] | `suggest[@js 103] | `suggestFontSize[@js 104] | `suggestLineHeight[@js 105] | `suggestOnTriggerCharacters[@js 106] | `suggestSelection[@js 107] | `tabCompletion[@js 108] | `tabIndex[@js 109] | `unusualLineTerminators[@js 110] | `useShadowDOM[@js 111] | `useTabStops[@js 112] | `wordSeparators[@js 113] | `wordWrap[@js 114] | `wordWrapBreakAfterCharacters[@js 115] | `wordWrapBreakBeforeCharacters[@js 116] | `wordWrapColumn[@js 117] | `wordWrapOverride1[@js 118] | `wordWrapOverride2[@js 119] | `wrappingIndent[@js 120] | `wrappingStrategy[@js 121] | `showDeprecated[@js 122] | `inlineHints[@js 123] | `editorClassName[@js 124] | `pixelRatio[@js 125] | `tabFocusMode[@js 126] | `layoutInfo[@js 127] | `wrappingInfo[@js 128]] [@js.enum]
    and monaco_editor_EditorOption_acceptSuggestionOnCommitCharacter = [`acceptSuggestionOnCommitCharacter[@js 0]] [@js.enum]
    and monaco_editor_EditorOption_acceptSuggestionOnEnter = [`acceptSuggestionOnEnter[@js 1]] [@js.enum]
    and monaco_editor_EditorOption_accessibilitySupport = [`accessibilitySupport[@js 2]] [@js.enum]
    and monaco_editor_EditorOption_accessibilityPageSize = [`accessibilityPageSize[@js 3]] [@js.enum]
    and monaco_editor_EditorOption_ariaLabel = [`ariaLabel[@js 4]] [@js.enum]
    and monaco_editor_EditorOption_autoClosingBrackets = [`autoClosingBrackets[@js 5]] [@js.enum]
    and monaco_editor_EditorOption_autoClosingDelete = [`autoClosingDelete[@js 6]] [@js.enum]
    and monaco_editor_EditorOption_autoClosingOvertype = [`autoClosingOvertype[@js 7]] [@js.enum]
    and monaco_editor_EditorOption_autoClosingQuotes = [`autoClosingQuotes[@js 8]] [@js.enum]
    and monaco_editor_EditorOption_autoIndent = [`autoIndent[@js 9]] [@js.enum]
    and monaco_editor_EditorOption_automaticLayout = [`automaticLayout[@js 10]] [@js.enum]
    and monaco_editor_EditorOption_autoSurround = [`autoSurround[@js 11]] [@js.enum]
    and monaco_editor_EditorOption_codeLens = [`codeLens[@js 12]] [@js.enum]
    and monaco_editor_EditorOption_codeLensFontFamily = [`codeLensFontFamily[@js 13]] [@js.enum]
    and monaco_editor_EditorOption_codeLensFontSize = [`codeLensFontSize[@js 14]] [@js.enum]
    and monaco_editor_EditorOption_colorDecorators = [`colorDecorators[@js 15]] [@js.enum]
    and monaco_editor_EditorOption_columnSelection = [`columnSelection[@js 16]] [@js.enum]
    and monaco_editor_EditorOption_comments = [`comments[@js 17]] [@js.enum]
    and monaco_editor_EditorOption_contextmenu = [`contextmenu[@js 18]] [@js.enum]
    and monaco_editor_EditorOption_copyWithSyntaxHighlighting = [`copyWithSyntaxHighlighting[@js 19]] [@js.enum]
    and monaco_editor_EditorOption_cursorBlinking = [`cursorBlinking[@js 20]] [@js.enum]
    and monaco_editor_EditorOption_cursorSmoothCaretAnimation = [`cursorSmoothCaretAnimation[@js 21]] [@js.enum]
    and monaco_editor_EditorOption_cursorStyle = [`cursorStyle[@js 22]] [@js.enum]
    and monaco_editor_EditorOption_cursorSurroundingLines = [`cursorSurroundingLines[@js 23]] [@js.enum]
    and monaco_editor_EditorOption_cursorSurroundingLinesStyle = [`cursorSurroundingLinesStyle[@js 24]] [@js.enum]
    and monaco_editor_EditorOption_cursorWidth = [`cursorWidth[@js 25]] [@js.enum]
    and monaco_editor_EditorOption_disableLayerHinting = [`disableLayerHinting[@js 26]] [@js.enum]
    and monaco_editor_EditorOption_disableMonospaceOptimizations = [`disableMonospaceOptimizations[@js 27]] [@js.enum]
    and monaco_editor_EditorOption_domReadOnly = [`domReadOnly[@js 28]] [@js.enum]
    and monaco_editor_EditorOption_dragAndDrop = [`dragAndDrop[@js 29]] [@js.enum]
    and monaco_editor_EditorOption_emptySelectionClipboard = [`emptySelectionClipboard[@js 30]] [@js.enum]
    and monaco_editor_EditorOption_extraEditorClassName = [`extraEditorClassName[@js 31]] [@js.enum]
    and monaco_editor_EditorOption_fastScrollSensitivity = [`fastScrollSensitivity[@js 32]] [@js.enum]
    and monaco_editor_EditorOption_find = [`find[@js 33]] [@js.enum]
    and monaco_editor_EditorOption_fixedOverflowWidgets = [`fixedOverflowWidgets[@js 34]] [@js.enum]
    and monaco_editor_EditorOption_folding = [`folding[@js 35]] [@js.enum]
    and monaco_editor_EditorOption_foldingStrategy = [`foldingStrategy[@js 36]] [@js.enum]
    and monaco_editor_EditorOption_foldingHighlight = [`foldingHighlight[@js 37]] [@js.enum]
    and monaco_editor_EditorOption_unfoldOnClickAfterEndOfLine = [`unfoldOnClickAfterEndOfLine[@js 38]] [@js.enum]
    and monaco_editor_EditorOption_fontFamily = [`fontFamily[@js 39]] [@js.enum]
    and monaco_editor_EditorOption_fontInfo = [`fontInfo[@js 40]] [@js.enum]
    and monaco_editor_EditorOption_fontLigatures = [`fontLigatures[@js 41]] [@js.enum]
    and monaco_editor_EditorOption_fontSize = [`fontSize[@js 42]] [@js.enum]
    and monaco_editor_EditorOption_fontWeight = [`fontWeight[@js 43]] [@js.enum]
    and monaco_editor_EditorOption_formatOnPaste = [`formatOnPaste[@js 44]] [@js.enum]
    and monaco_editor_EditorOption_formatOnType = [`formatOnType[@js 45]] [@js.enum]
    and monaco_editor_EditorOption_glyphMargin = [`glyphMargin[@js 46]] [@js.enum]
    and monaco_editor_EditorOption_gotoLocation = [`gotoLocation[@js 47]] [@js.enum]
    and monaco_editor_EditorOption_hideCursorInOverviewRuler = [`hideCursorInOverviewRuler[@js 48]] [@js.enum]
    and monaco_editor_EditorOption_highlightActiveIndentGuide = [`highlightActiveIndentGuide[@js 49]] [@js.enum]
    and monaco_editor_EditorOption_hover = [`hover[@js 50]] [@js.enum]
    and monaco_editor_EditorOption_inDiffEditor = [`inDiffEditor[@js 51]] [@js.enum]
    and monaco_editor_EditorOption_letterSpacing = [`letterSpacing[@js 52]] [@js.enum]
    and monaco_editor_EditorOption_lightbulb = [`lightbulb[@js 53]] [@js.enum]
    and monaco_editor_EditorOption_lineDecorationsWidth = [`lineDecorationsWidth[@js 54]] [@js.enum]
    and monaco_editor_EditorOption_lineHeight = [`lineHeight[@js 55]] [@js.enum]
    and monaco_editor_EditorOption_lineNumbers = [`lineNumbers[@js 56]] [@js.enum]
    and monaco_editor_EditorOption_lineNumbersMinChars = [`lineNumbersMinChars[@js 57]] [@js.enum]
    and monaco_editor_EditorOption_linkedEditing = [`linkedEditing[@js 58]] [@js.enum]
    and monaco_editor_EditorOption_links = [`links[@js 59]] [@js.enum]
    and monaco_editor_EditorOption_matchBrackets = [`matchBrackets[@js 60]] [@js.enum]
    and monaco_editor_EditorOption_minimap = [`minimap[@js 61]] [@js.enum]
    and monaco_editor_EditorOption_mouseStyle = [`mouseStyle[@js 62]] [@js.enum]
    and monaco_editor_EditorOption_mouseWheelScrollSensitivity = [`mouseWheelScrollSensitivity[@js 63]] [@js.enum]
    and monaco_editor_EditorOption_mouseWheelZoom = [`mouseWheelZoom[@js 64]] [@js.enum]
    and monaco_editor_EditorOption_multiCursorMergeOverlapping = [`multiCursorMergeOverlapping[@js 65]] [@js.enum]
    and monaco_editor_EditorOption_multiCursorModifier = [`multiCursorModifier[@js 66]] [@js.enum]
    and monaco_editor_EditorOption_multiCursorPaste = [`multiCursorPaste[@js 67]] [@js.enum]
    and monaco_editor_EditorOption_occurrencesHighlight = [`occurrencesHighlight[@js 68]] [@js.enum]
    and monaco_editor_EditorOption_overviewRulerBorder = [`overviewRulerBorder[@js 69]] [@js.enum]
    and monaco_editor_EditorOption_overviewRulerLanes = [`overviewRulerLanes[@js 70]] [@js.enum]
    and monaco_editor_EditorOption_padding = [`padding[@js 71]] [@js.enum]
    and monaco_editor_EditorOption_parameterHints = [`parameterHints[@js 72]] [@js.enum]
    and monaco_editor_EditorOption_peekWidgetDefaultFocus = [`peekWidgetDefaultFocus[@js 73]] [@js.enum]
    and monaco_editor_EditorOption_definitionLinkOpensInPeek = [`definitionLinkOpensInPeek[@js 74]] [@js.enum]
    and monaco_editor_EditorOption_quickSuggestions = [`quickSuggestions[@js 75]] [@js.enum]
    and monaco_editor_EditorOption_quickSuggestionsDelay = [`quickSuggestionsDelay[@js 76]] [@js.enum]
    and monaco_editor_EditorOption_readOnly = [`readOnly[@js 77]] [@js.enum]
    and monaco_editor_EditorOption_renameOnType = [`renameOnType[@js 78]] [@js.enum]
    and monaco_editor_EditorOption_renderControlCharacters = [`renderControlCharacters[@js 79]] [@js.enum]
    and monaco_editor_EditorOption_renderIndentGuides = [`renderIndentGuides[@js 80]] [@js.enum]
    and monaco_editor_EditorOption_renderFinalNewline = [`renderFinalNewline[@js 81]] [@js.enum]
    and monaco_editor_EditorOption_renderLineHighlight = [`renderLineHighlight[@js 82]] [@js.enum]
    and monaco_editor_EditorOption_renderLineHighlightOnlyWhenFocus = [`renderLineHighlightOnlyWhenFocus[@js 83]] [@js.enum]
    and monaco_editor_EditorOption_renderValidationDecorations = [`renderValidationDecorations[@js 84]] [@js.enum]
    and monaco_editor_EditorOption_renderWhitespace = [`renderWhitespace[@js 85]] [@js.enum]
    and monaco_editor_EditorOption_revealHorizontalRightPadding = [`revealHorizontalRightPadding[@js 86]] [@js.enum]
    and monaco_editor_EditorOption_roundedSelection = [`roundedSelection[@js 87]] [@js.enum]
    and monaco_editor_EditorOption_rulers = [`rulers[@js 88]] [@js.enum]
    and monaco_editor_EditorOption_scrollbar = [`scrollbar[@js 89]] [@js.enum]
    and monaco_editor_EditorOption_scrollBeyondLastColumn = [`scrollBeyondLastColumn[@js 90]] [@js.enum]
    and monaco_editor_EditorOption_scrollBeyondLastLine = [`scrollBeyondLastLine[@js 91]] [@js.enum]
    and monaco_editor_EditorOption_scrollPredominantAxis = [`scrollPredominantAxis[@js 92]] [@js.enum]
    and monaco_editor_EditorOption_selectionClipboard = [`selectionClipboard[@js 93]] [@js.enum]
    and monaco_editor_EditorOption_selectionHighlight = [`selectionHighlight[@js 94]] [@js.enum]
    and monaco_editor_EditorOption_selectOnLineNumbers = [`selectOnLineNumbers[@js 95]] [@js.enum]
    and monaco_editor_EditorOption_showFoldingControls = [`showFoldingControls[@js 96]] [@js.enum]
    and monaco_editor_EditorOption_showUnused = [`showUnused[@js 97]] [@js.enum]
    and monaco_editor_EditorOption_snippetSuggestions = [`snippetSuggestions[@js 98]] [@js.enum]
    and monaco_editor_EditorOption_smartSelect = [`smartSelect[@js 99]] [@js.enum]
    and monaco_editor_EditorOption_smoothScrolling = [`smoothScrolling[@js 100]] [@js.enum]
    and monaco_editor_EditorOption_stickyTabStops = [`stickyTabStops[@js 101]] [@js.enum]
    and monaco_editor_EditorOption_stopRenderingLineAfter = [`stopRenderingLineAfter[@js 102]] [@js.enum]
    and monaco_editor_EditorOption_suggest = [`suggest[@js 103]] [@js.enum]
    and monaco_editor_EditorOption_suggestFontSize = [`suggestFontSize[@js 104]] [@js.enum]
    and monaco_editor_EditorOption_suggestLineHeight = [`suggestLineHeight[@js 105]] [@js.enum]
    and monaco_editor_EditorOption_suggestOnTriggerCharacters = [`suggestOnTriggerCharacters[@js 106]] [@js.enum]
    and monaco_editor_EditorOption_suggestSelection = [`suggestSelection[@js 107]] [@js.enum]
    and monaco_editor_EditorOption_tabCompletion = [`tabCompletion[@js 108]] [@js.enum]
    and monaco_editor_EditorOption_tabIndex = [`tabIndex[@js 109]] [@js.enum]
    and monaco_editor_EditorOption_unusualLineTerminators = [`unusualLineTerminators[@js 110]] [@js.enum]
    and monaco_editor_EditorOption_useShadowDOM = [`useShadowDOM[@js 111]] [@js.enum]
    and monaco_editor_EditorOption_useTabStops = [`useTabStops[@js 112]] [@js.enum]
    and monaco_editor_EditorOption_wordSeparators = [`wordSeparators[@js 113]] [@js.enum]
    and monaco_editor_EditorOption_wordWrap = [`wordWrap[@js 114]] [@js.enum]
    and monaco_editor_EditorOption_wordWrapBreakAfterCharacters = [`wordWrapBreakAfterCharacters[@js 115]] [@js.enum]
    and monaco_editor_EditorOption_wordWrapBreakBeforeCharacters = [`wordWrapBreakBeforeCharacters[@js 116]] [@js.enum]
    and monaco_editor_EditorOption_wordWrapColumn = [`wordWrapColumn[@js 117]] [@js.enum]
    and monaco_editor_EditorOption_wordWrapOverride1 = [`wordWrapOverride1[@js 118]] [@js.enum]
    and monaco_editor_EditorOption_wordWrapOverride2 = [`wordWrapOverride2[@js 119]] [@js.enum]
    and monaco_editor_EditorOption_wrappingIndent = [`wrappingIndent[@js 120]] [@js.enum]
    and monaco_editor_EditorOption_wrappingStrategy = [`wrappingStrategy[@js 121]] [@js.enum]
    and monaco_editor_EditorOption_showDeprecated = [`showDeprecated[@js 122]] [@js.enum]
    and monaco_editor_EditorOption_inlineHints = [`inlineHints[@js 123]] [@js.enum]
    and monaco_editor_EditorOption_editorClassName = [`editorClassName[@js 124]] [@js.enum]
    and monaco_editor_EditorOption_pixelRatio = [`pixelRatio[@js 125]] [@js.enum]
    and monaco_editor_EditorOption_tabFocusMode = [`tabFocusMode[@js 126]] [@js.enum]
    and monaco_editor_EditorOption_layoutInfo = [`layoutInfo[@js 127]] [@js.enum]
    and monaco_editor_EditorOption_wrappingInfo = [`wrappingInfo[@js 128]] [@js.enum]
    and monaco_editor_EditorOptionsType = anonymous_interface_2
    and monaco_editor_EditorWrappingInfo = [`Monaco_editor_EditorWrappingInfo] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_EndOfLinePreference = [`TextDefined[@js 0] | `LF[@js 1] | `CRLF[@js 2]] [@js.enum]
    and monaco_editor_EndOfLinePreference_TextDefined = [`TextDefined[@js 0]] [@js.enum]
    and monaco_editor_EndOfLinePreference_LF = [`LF[@js 1]] [@js.enum]
    and monaco_editor_EndOfLinePreference_CRLF = [`CRLF[@js 2]] [@js.enum]
    and monaco_editor_EndOfLineSequence = [`LF[@js 0] | `CRLF[@js 1]] [@js.enum]
    and monaco_editor_EndOfLineSequence_LF = [`LF[@js 0]] [@js.enum]
    and monaco_editor_EndOfLineSequence_CRLF = [`CRLF[@js 1]] [@js.enum]
    and 'T monaco_editor_FindComputedEditorOptionValueById = (* FIXME: unknown type '{..}[FindEditorOptionsKeyById<'T>]' *)any monaco_editor_ComputedEditorOptionValue NonNullable.t_1
    and 'T monaco_editor_FindEditorOptionsKeyById = (* FIXME: unknown type '?({
            [K in keyof EditorOptionsType]: EditorOptionsType[K]['id'] extends T ? K : never;
        })[union<"acceptSuggestionOnCommitCharacter" | "acceptSuggestionOnEnter" | "accessibilityPageSize" | "accessibilitySupport" | "ariaLabel" | "autoClosingBrackets" | "autoClosingDelete" | "autoClosingOvertype" | "autoClosingQuotes" | "autoIndent" | "autoSurround" | "automaticLayout" | "codeLens" | "codeLensFontFamily" | "codeLensFontSize" | "colorDecorators" | "columnSelection" | "comments" | "contextmenu" | "copyWithSyntaxHighlighting" | "cursorBlinking" | "cursorSmoothCaretAnimation" | "cursorStyle" | "cursorSurroundingLines" | "cursorSurroundingLinesStyle" | "cursorWidth" | "definitionLinkOpensInPeek" | "disableLayerHinting" | "disableMonospaceOptimizations" | "domReadOnly" | "dragAndDrop" | "editorClassName" | "emptySelectionClipboard" | "extraEditorClassName" | "fastScrollSensitivity" | "find" | "fixedOverflowWidgets" | "folding" | "foldingHighlight" | "foldingStrategy" | "fontFamily" | "fontInfo" | "fontLigatures2" | "fontSize" | "fontWeight" | "formatOnPaste" | "formatOnType" | "glyphMargin" | "gotoLocation" | "hideCursorInOverviewRuler" | "highlightActiveIndentGuide" | "hover" | "inDiffEditor" | "inlineHints" | "layoutInfo" | "letterSpacing" | "lightbulb" | "lineDecorationsWidth" | "lineHeight" | "lineNumbers" | "lineNumbersMinChars" | "linkedEditing" | "links" | "matchBrackets" | "minimap" | "mouseStyle" | "mouseWheelScrollSensitivity" | "mouseWheelZoom" | "multiCursorMergeOverlapping" | "multiCursorModifier" | "multiCursorPaste" | "occurrencesHighlight" | "overviewRulerBorder" | "overviewRulerLanes" | "padding" | "parameterHints" | "peekWidgetDefaultFocus" | "pixelRatio" | "quickSuggestions" | "quickSuggestionsDelay" | "readOnly" | "renameOnType" | "renderControlCharacters" | "renderFinalNewline" | "renderIndentGuides" | "renderLineHighlight" | "renderLineHighlightOnlyWhenFocus" | "renderValidationDecorations" | "renderWhitespace" | "revealHorizontalRightPadding" | "roundedSelection" | "rulers" | "scrollBeyondLastColumn" | "scrollBeyondLastLine" | "scrollPredominantAxis" | "scrollbar" | "selectOnLineNumbers" | "selectionClipboard" | "selectionHighlight" | "showDeprecated" | "showFoldingControls" | "showUnused" | "smartSelect" | "smoothScrolling" | "snippetSuggestions" | "stickyTabStops" | "stopRenderingLineAfter" | "suggest" | "suggestFontSize" | "suggestLineHeight" | "suggestOnTriggerCharacters" | "suggestSelection" | "tabCompletion" | "tabFocusMode" | "tabIndex" | "unfoldOnClickAfterEndOfLine" | "unusualLineTerminators" | "useShadowDOM" | "useTabStops" | "wordSeparators" | "wordWrap" | "wordWrapBreakAfterCharacters" | "wordWrapBreakBeforeCharacters" | "wordWrapColumn" | "wordWrapOverride1" | "wordWrapOverride2" | "wrappingIndent" | "wrappingInfo" | "wrappingStrategy">]' *)any
    and monaco_editor_FindMatch = [`Monaco_editor_FindMatch] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_FontInfo = [`Monaco_editor_BareFontInfo | `Monaco_editor_FontInfo] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_GoToLocationOptions = monaco_editor_IGotoLocationOptions Required.t_1 Readonly.t_1
    and monaco_editor_GoToLocationValues = ([`L_s31_goto[@js "goto"] | `L_s32_gotoAndPeek[@js "gotoAndPeek"] | `L_s57_peek[@js "peek"]] [@js.enum])
    and monaco_editor_IActionDescriptor = [`Monaco_editor_IActionDescriptor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IChange = [`Monaco_editor_IChange] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ICharChange = [`Monaco_editor_IChange | `Monaco_editor_ICharChange] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ICodeEditor = [`Monaco_editor_ICodeEditor | `Monaco_editor_IEditor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ICodeEditorViewState = [`Monaco_editor_ICodeEditorViewState] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IColorizerElementOptions = [`Monaco_editor_IColorizerElementOptions | `Monaco_editor_IColorizerOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IColorizerOptions = [`Monaco_editor_IColorizerOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IColors = anonymous_interface_16
    and monaco_editor_ICommand = [`Monaco_editor_ICommand] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ICommandHandler = [`Monaco_editor_ICommandHandler] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IComputedEditorOptions = [`Monaco_editor_IComputedEditorOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IContentSizeChangedEvent = [`Monaco_editor_IContentSizeChangedEvent] intf
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
    and monaco_editor_IDecorationOptions = [`Monaco_editor_IDecorationOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IDiffEditor = [`Monaco_editor_IDiffEditor | `Monaco_editor_IEditor] intf
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
    and monaco_editor_IEditor = [`Monaco_editor_IEditor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorAction = [`Monaco_editor_IEditorAction] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorCommentsOptions = [`Monaco_editor_IEditorCommentsOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorConstructionOptions = [`Monaco_editor_IEditorConstructionOptions | `Monaco_editor_IEditorOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorContribution = [`Monaco_editor_IEditorContribution] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorFindOptions = [`Monaco_editor_IEditorFindOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorHoverOptions = [`Monaco_editor_IEditorHoverOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorInlineHintsOptions = [`Monaco_editor_IEditorInlineHintsOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorLightbulbOptions = [`Monaco_editor_IEditorLightbulbOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorMinimapOptions = [`Monaco_editor_IEditorMinimapOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorModel = (monaco_editor_IDiffEditorModel, monaco_editor_ITextModel) union2
    and monaco_editor_IEditorMouseEvent = [`Monaco_editor_IEditorMouseEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and ('K1, 'V) monaco_editor_IEditorOption = [`Monaco_editor_IEditorOption of ('K1 * 'V)] intf
    [@@js.custom { of_js=(fun _K1 _V -> Obj.magic); to_js=(fun _K1 _V -> Obj.magic) }]
    and monaco_editor_IEditorOptions = [`Monaco_editor_IEditorOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorOverrideServices = [`Monaco_editor_IEditorOverrideServices] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorPaddingOptions = [`Monaco_editor_IEditorPaddingOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorParameterHintOptions = [`Monaco_editor_IEditorParameterHintOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorScrollbarOptions = [`Monaco_editor_IEditorScrollbarOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IEditorViewState = (monaco_editor_ICodeEditorViewState, monaco_editor_IDiffEditorViewState) union2
    and monaco_editor_IGlobalEditorOptions = [`Monaco_editor_IGlobalEditorOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IGotoLocationOptions = [`Monaco_editor_IGotoLocationOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IIdentifiedSingleEditOperation = [`Monaco_editor_IIdentifiedSingleEditOperation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ILineChange = [`Monaco_editor_IChange | `Monaco_editor_ILineChange] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IMarker = [`Monaco_editor_IMarker] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IMarkerData = [`Monaco_editor_IMarkerData] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModel = monaco_editor_ITextModel
    and monaco_editor_IModelChangedEvent = [`Monaco_editor_IModelChangedEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelContentChange = [`Monaco_editor_IModelContentChange] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelContentChangedEvent = [`Monaco_editor_IModelContentChangedEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelDecoration = [`Monaco_editor_IModelDecoration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelDecorationMinimapOptions = [`Monaco_editor_IDecorationOptions | `Monaco_editor_IModelDecorationMinimapOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelDecorationOptions = [`Monaco_editor_IModelDecorationOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelDecorationOverviewRulerOptions = [`Monaco_editor_IDecorationOptions | `Monaco_editor_IModelDecorationOverviewRulerOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelDecorationsChangedEvent = [`Monaco_editor_IModelDecorationsChangedEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelDeltaDecoration = [`Monaco_editor_IModelDeltaDecoration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelLanguageChangedEvent = [`Monaco_editor_IModelLanguageChangedEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelLanguageConfigurationChangedEvent = [`Monaco_editor_IModelLanguageConfigurationChangedEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IModelOptionsChangedEvent = [`Monaco_editor_IModelOptionsChangedEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IMouseTarget = [`Monaco_editor_IMouseTarget] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_INewScrollPosition = [`Monaco_editor_INewScrollPosition] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IOverlayWidget = [`Monaco_editor_IOverlayWidget] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IOverlayWidgetPosition = [`Monaco_editor_IOverlayWidgetPosition] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IPartialEditorMouseEvent = [`Monaco_editor_IPartialEditorMouseEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IPasteEvent = [`Monaco_editor_IPasteEvent] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IQuickSuggestionsOptions = [`Monaco_editor_IQuickSuggestionsOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IReadOnlyModel = monaco_editor_ITextModel
    and monaco_editor_IRelatedInformation = [`Monaco_editor_IRelatedInformation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IRulerOption = [`Monaco_editor_IRulerOption] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ISingleEditOperation = [`Monaco_editor_ISingleEditOperation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ISmartSelectOptions = [`Monaco_editor_ISmartSelectOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IStandaloneCodeEditor = [`Monaco_editor_ICodeEditor | `Monaco_editor_IEditor | `Monaco_editor_IStandaloneCodeEditor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IStandaloneDiffEditor = [`Monaco_editor_IDiffEditor | `Monaco_editor_IEditor | `Monaco_editor_IStandaloneDiffEditor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IStandaloneEditorConstructionOptions = [`Monaco_editor_IEditorConstructionOptions | `Monaco_editor_IEditorOptions | `Monaco_editor_IGlobalEditorOptions | `Monaco_editor_IStandaloneEditorConstructionOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IStandaloneThemeData = [`Monaco_editor_IStandaloneThemeData] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ISuggestOptions = [`Monaco_editor_ISuggestOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ITextModel = [`Monaco_editor_ITextModel] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ITextModelUpdateOptions = [`Monaco_editor_ITextModelUpdateOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_ITokenThemeRule = [`Monaco_editor_ITokenThemeRule] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_IValidEditOperation = [`Monaco_editor_IValidEditOperation] intf
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
    and monaco_editor_InternalEditorPaddingOptions = [`Monaco_editor_InternalEditorPaddingOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_InternalEditorRenderLineNumbersOptions = [`Monaco_editor_InternalEditorRenderLineNumbersOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_InternalEditorScrollbarOptions = [`Monaco_editor_InternalEditorScrollbarOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_editor_InternalParameterHintOptions = monaco_editor_IEditorParameterHintOptions Required.t_1 Readonly.t_1
    and monaco_editor_InternalSuggestOptions = monaco_editor_ISuggestOptions Required.t_1 Readonly.t_1
    and monaco_editor_LineNumbersType = ((lineNumber:float -> string), ([`L_s42_interval[@js "interval"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"] | `L_s64_relative[@js "relative"]] [@js.enum])) or_enum
    and monaco_editor_MinimapPosition = [`Inline[@js 1] | `Gutter[@js 2]] [@js.enum]
    and monaco_editor_MinimapPosition_Inline = [`Inline[@js 1]] [@js.enum]
    and monaco_editor_MinimapPosition_Gutter = [`Gutter[@js 2]] [@js.enum]
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
    and monaco_editor_RenderLineNumbersType = [`Off[@js 0] | `On[@js 1] | `Relative[@js 2] | `Interval[@js 3] | `Custom[@js 4]] [@js.enum]
    and monaco_editor_RenderLineNumbersType_Off = [`Off[@js 0]] [@js.enum]
    and monaco_editor_RenderLineNumbersType_On = [`On[@js 1]] [@js.enum]
    and monaco_editor_RenderLineNumbersType_Relative = [`Relative[@js 2]] [@js.enum]
    and monaco_editor_RenderLineNumbersType_Interval = [`Interval[@js 3]] [@js.enum]
    and monaco_editor_RenderLineNumbersType_Custom = [`Custom[@js 4]] [@js.enum]
    and monaco_editor_RenderMinimap = [`None[@js 0] | `Text[@js 1] | `Blocks[@js 2]] [@js.enum]
    and monaco_editor_RenderMinimap_None = [`None[@js 0]] [@js.enum]
    and monaco_editor_RenderMinimap_Text = [`Text[@js 1]] [@js.enum]
    and monaco_editor_RenderMinimap_Blocks = [`Blocks[@js 2]] [@js.enum]
    and monaco_editor_ScrollType = [`Smooth[@js 0] | `Immediate[@js 1]] [@js.enum]
    and monaco_editor_ScrollType_Smooth = [`Smooth[@js 0]] [@js.enum]
    and monaco_editor_ScrollType_Immediate = [`Immediate[@js 1]] [@js.enum]
    and monaco_editor_ScrollbarVisibility = [`Auto[@js 1] | `Hidden[@js 2] | `Visible[@js 3]] [@js.enum]
    and monaco_editor_ScrollbarVisibility_Auto = [`Auto[@js 1]] [@js.enum]
    and monaco_editor_ScrollbarVisibility_Hidden = [`Hidden[@js 2]] [@js.enum]
    and monaco_editor_ScrollbarVisibility_Visible = [`Visible[@js 3]] [@js.enum]
    and monaco_editor_SmartSelectOptions = monaco_editor_ISmartSelectOptions Required.t_1 Readonly.t_1
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
    and monaco_editor_ValidQuickSuggestionsOptions = monaco_editor_IQuickSuggestionsOptions Required.t_1 Readonly.t_1 or_boolean
    and monaco_editor_WrappingIndent = [`None[@js 0] | `Same[@js 1] | `Indent[@js 2] | `DeepIndent[@js 3]] [@js.enum]
    and monaco_editor_WrappingIndent_None = [`None[@js 0]] [@js.enum]
    and monaco_editor_WrappingIndent_Same = [`Same[@js 1]] [@js.enum]
    and monaco_editor_WrappingIndent_Indent = [`Indent[@js 2]] [@js.enum]
    and monaco_editor_WrappingIndent_DeepIndent = [`DeepIndent[@js 3]] [@js.enum]
    and monaco_languages_CharacterPair = (string * string)
    and monaco_languages_CodeAction = [`Monaco_languages_CodeAction] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CodeActionContext = [`Monaco_languages_CodeActionContext] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CodeActionList = [`Monaco_IDisposable | `Monaco_languages_CodeActionList] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CodeActionProvider = [`Monaco_languages_CodeActionProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CodeLens = [`Monaco_languages_CodeLens] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CodeLensList = [`Monaco_languages_CodeLensList] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CodeLensProvider = [`Monaco_languages_CodeLensProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_Command = [`Monaco_languages_Command] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CommentRule = [`Monaco_languages_CommentRule] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CompletionContext = [`Monaco_languages_CompletionContext] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CompletionItem = [`Monaco_languages_CompletionItem] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CompletionItemInsertTextRule = [`KeepWhitespace[@js 1] | `InsertAsSnippet[@js 4]] [@js.enum]
    and monaco_languages_CompletionItemInsertTextRule_KeepWhitespace = [`KeepWhitespace[@js 1]] [@js.enum]
    and monaco_languages_CompletionItemInsertTextRule_InsertAsSnippet = [`InsertAsSnippet[@js 4]] [@js.enum]
    and monaco_languages_CompletionItemKind = [`Method[@js 0] | `Function[@js 1] | `Constructor[@js 2] | `Field[@js 3] | `Variable[@js 4] | `Class[@js 5] | `Struct[@js 6] | `Interface[@js 7] | `Module[@js 8] | `Property[@js 9] | `Event[@js 10] | `Operator[@js 11] | `Unit[@js 12] | `Value[@js 13] | `Constant[@js 14] | `Enum[@js 15] | `EnumMember[@js 16] | `Keyword[@js 17] | `Text[@js 18] | `Color[@js 19] | `File[@js 20] | `Reference[@js 21] | `Customcolor[@js 22] | `Folder[@js 23] | `TypeParameter[@js 24] | `User[@js 25] | `Issue[@js 26] | `Snippet[@js 27]] [@js.enum]
    and monaco_languages_CompletionItemKind_Method = [`Method[@js 0]] [@js.enum]
    and monaco_languages_CompletionItemKind_Function = [`Function[@js 1]] [@js.enum]
    and monaco_languages_CompletionItemKind_Constructor = [`Constructor[@js 2]] [@js.enum]
    and monaco_languages_CompletionItemKind_Field = [`Field[@js 3]] [@js.enum]
    and monaco_languages_CompletionItemKind_Variable = [`Variable[@js 4]] [@js.enum]
    and monaco_languages_CompletionItemKind_Class = [`Class[@js 5]] [@js.enum]
    and monaco_languages_CompletionItemKind_Struct = [`Struct[@js 6]] [@js.enum]
    and monaco_languages_CompletionItemKind_Interface = [`Interface[@js 7]] [@js.enum]
    and monaco_languages_CompletionItemKind_Module = [`Module[@js 8]] [@js.enum]
    and monaco_languages_CompletionItemKind_Property = [`Property[@js 9]] [@js.enum]
    and monaco_languages_CompletionItemKind_Event = [`Event[@js 10]] [@js.enum]
    and monaco_languages_CompletionItemKind_Operator = [`Operator[@js 11]] [@js.enum]
    and monaco_languages_CompletionItemKind_Unit = [`Unit[@js 12]] [@js.enum]
    and monaco_languages_CompletionItemKind_Value = [`Value[@js 13]] [@js.enum]
    and monaco_languages_CompletionItemKind_Constant = [`Constant[@js 14]] [@js.enum]
    and monaco_languages_CompletionItemKind_Enum = [`Enum[@js 15]] [@js.enum]
    and monaco_languages_CompletionItemKind_EnumMember = [`EnumMember[@js 16]] [@js.enum]
    and monaco_languages_CompletionItemKind_Keyword = [`Keyword[@js 17]] [@js.enum]
    and monaco_languages_CompletionItemKind_Text = [`Text[@js 18]] [@js.enum]
    and monaco_languages_CompletionItemKind_Color = [`Color[@js 19]] [@js.enum]
    and monaco_languages_CompletionItemKind_File = [`File[@js 20]] [@js.enum]
    and monaco_languages_CompletionItemKind_Reference = [`Reference[@js 21]] [@js.enum]
    and monaco_languages_CompletionItemKind_Customcolor = [`Customcolor[@js 22]] [@js.enum]
    and monaco_languages_CompletionItemKind_Folder = [`Folder[@js 23]] [@js.enum]
    and monaco_languages_CompletionItemKind_TypeParameter = [`TypeParameter[@js 24]] [@js.enum]
    and monaco_languages_CompletionItemKind_User = [`User[@js 25]] [@js.enum]
    and monaco_languages_CompletionItemKind_Issue = [`Issue[@js 26]] [@js.enum]
    and monaco_languages_CompletionItemKind_Snippet = [`Snippet[@js 27]] [@js.enum]
    and monaco_languages_CompletionItemLabel = [`Monaco_languages_CompletionItemLabel] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CompletionItemProvider = [`Monaco_languages_CompletionItemProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CompletionItemTag = [`Deprecated[@js 1]] [@js.enum]
    and monaco_languages_CompletionItemTag_Deprecated = [`Deprecated[@js 1]] [@js.enum]
    and monaco_languages_CompletionList = [`Monaco_languages_CompletionList] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_CompletionTriggerKind = [`Invoke[@js 0] | `TriggerCharacter[@js 1] | `TriggerForIncompleteCompletions[@js 2]] [@js.enum]
    and monaco_languages_CompletionTriggerKind_Invoke = [`Invoke[@js 0]] [@js.enum]
    and monaco_languages_CompletionTriggerKind_TriggerCharacter = [`TriggerCharacter[@js 1]] [@js.enum]
    and monaco_languages_CompletionTriggerKind_TriggerForIncompleteCompletions = [`TriggerForIncompleteCompletions[@js 2]] [@js.enum]
    and monaco_languages_DeclarationProvider = [`Monaco_languages_DeclarationProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_Definition = (monaco_languages_Location, (monaco_languages_Location, monaco_languages_LocationLink) union2) or_array
    and monaco_languages_DefinitionProvider = [`Monaco_languages_DefinitionProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_DocumentColorProvider = [`Monaco_languages_DocumentColorProvider] intf
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
    and monaco_languages_DocumentRangeSemanticTokensProvider = [`Monaco_languages_DocumentRangeSemanticTokensProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_DocumentSemanticTokensProvider = [`Monaco_languages_DocumentSemanticTokensProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_DocumentSymbol = [`Monaco_languages_DocumentSymbol] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_DocumentSymbolProvider = [`Monaco_languages_DocumentSymbolProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_EncodedTokensProvider = [`Monaco_languages_EncodedTokensProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_EnterAction = [`Monaco_languages_EnterAction] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_FoldingContext = [`Monaco_languages_FoldingContext] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_FoldingMarkers = [`Monaco_languages_FoldingMarkers] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_FoldingRange = [`Monaco_languages_FoldingRange] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_FoldingRangeKind = [`Monaco_languages_FoldingRangeKind] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_FoldingRangeProvider = [`Monaco_languages_FoldingRangeProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_FoldingRules = [`Monaco_languages_FoldingRules] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_FormattingOptions = [`Monaco_languages_FormattingOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_Hover = [`Monaco_languages_Hover] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_HoverProvider = [`Monaco_languages_HoverProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IAutoClosingPair = [`Monaco_languages_IAutoClosingPair] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IAutoClosingPairConditional = [`Monaco_languages_IAutoClosingPair | `Monaco_languages_IAutoClosingPairConditional] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IColor = [`Monaco_languages_IColor] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IColorInformation = [`Monaco_languages_IColorInformation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IColorPresentation = [`Monaco_languages_IColorPresentation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IDocComment = [`Monaco_languages_IDocComment] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IEncodedLineTokens = [`Monaco_languages_IEncodedLineTokens] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IExpandedMonarchLanguageAction = [`Monaco_languages_IExpandedMonarchLanguageAction] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IExpandedMonarchLanguageRule = [`Monaco_languages_IExpandedMonarchLanguageRule] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_ILanguageExtensionPoint = [`Monaco_languages_ILanguageExtensionPoint] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_ILineTokens = [`Monaco_languages_ILineTokens] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_ILink = [`Monaco_languages_ILink] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_ILinksList = [`Monaco_languages_ILinksList] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IMonarchLanguage = [`Monaco_languages_IMonarchLanguage] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IMonarchLanguageAction = ((monaco_languages_IExpandedMonarchLanguageAction, monaco_languages_IShortMonarchLanguageAction) union2, (monaco_languages_IExpandedMonarchLanguageAction, monaco_languages_IShortMonarchLanguageAction) union2) or_array
    and monaco_languages_IMonarchLanguageBracket = [`Monaco_languages_IMonarchLanguageBracket] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_IMonarchLanguageRule = (monaco_languages_IExpandedMonarchLanguageRule, monaco_languages_IShortMonarchLanguageRule1, monaco_languages_IShortMonarchLanguageRule2) union3
    and monaco_languages_IShortMonarchLanguageAction = string
    and monaco_languages_IShortMonarchLanguageRule1 = (regexp or_string * monaco_languages_IMonarchLanguageAction)
    and monaco_languages_IShortMonarchLanguageRule2 = (regexp or_string * monaco_languages_IMonarchLanguageAction * string)
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
    and monaco_languages_InlineHint = [`Monaco_languages_InlineHint] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_InlineHintKind = [`Other[@js 0] | `Type[@js 1] | `Parameter[@js 2]] [@js.enum]
    and monaco_languages_InlineHintKind_Other = [`Other[@js 0]] [@js.enum]
    and monaco_languages_InlineHintKind_Type = [`Type[@js 1]] [@js.enum]
    and monaco_languages_InlineHintKind_Parameter = [`Parameter[@js 2]] [@js.enum]
    and monaco_languages_InlineHintsProvider = [`Monaco_languages_InlineHintsProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_LanguageConfiguration = [`Monaco_languages_LanguageConfiguration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_LinkProvider = [`Monaco_languages_LinkProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_LinkedEditingRangeProvider = [`Monaco_languages_LinkedEditingRangeProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_LinkedEditingRanges = [`Monaco_languages_LinkedEditingRanges] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_Location = [`Monaco_languages_Location] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_LocationLink = [`Monaco_languages_LocationLink] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_OnEnterRule = [`Monaco_languages_OnEnterRule] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_OnTypeFormattingEditProvider = [`Monaco_languages_OnTypeFormattingEditProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_ParameterInformation = [`Monaco_languages_ParameterInformation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T monaco_languages_ProviderResult = ('T, 'T or_null_or_undefined monaco_Thenable) union2 or_null_or_undefined
    and monaco_languages_ReferenceContext = [`Monaco_languages_ReferenceContext] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_ReferenceProvider = [`Monaco_languages_ReferenceProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_Rejection = [`Monaco_languages_Rejection] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_RenameLocation = [`Monaco_languages_RenameLocation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_RenameProvider = [`Monaco_languages_RenameProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SelectionRange = [`Monaco_languages_SelectionRange] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SelectionRangeProvider = [`Monaco_languages_SelectionRangeProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SemanticTokens = [`Monaco_languages_SemanticTokens] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SemanticTokensEdit = [`Monaco_languages_SemanticTokensEdit] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SemanticTokensEdits = [`Monaco_languages_SemanticTokensEdits] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SemanticTokensLegend = [`Monaco_languages_SemanticTokensLegend] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SignatureHelp = [`Monaco_languages_SignatureHelp] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SignatureHelpContext = [`Monaco_languages_SignatureHelpContext] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SignatureHelpProvider = [`Monaco_languages_SignatureHelpProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SignatureHelpResult = [`Monaco_IDisposable | `Monaco_languages_SignatureHelpResult] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_SignatureHelpTriggerKind = [`Invoke[@js 1] | `TriggerCharacter[@js 2] | `ContentChange[@js 3]] [@js.enum]
    and monaco_languages_SignatureHelpTriggerKind_Invoke = [`Invoke[@js 1]] [@js.enum]
    and monaco_languages_SignatureHelpTriggerKind_TriggerCharacter = [`TriggerCharacter[@js 2]] [@js.enum]
    and monaco_languages_SignatureHelpTriggerKind_ContentChange = [`ContentChange[@js 3]] [@js.enum]
    and monaco_languages_SignatureInformation = [`Monaco_languages_SignatureInformation] intf
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
    and monaco_languages_SymbolTag = [`Deprecated[@js 1]] [@js.enum]
    and monaco_languages_SymbolTag_Deprecated = [`Deprecated[@js 1]] [@js.enum]
    and monaco_languages_TextEdit = anonymous_interface_11
    and monaco_languages_TokensProvider = [`Monaco_languages_TokensProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_TypeDefinitionProvider = [`Monaco_languages_TypeDefinitionProvider] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_WorkspaceEdit = [`Monaco_languages_WorkspaceEdit] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_WorkspaceEditMetadata = [`Monaco_languages_WorkspaceEditMetadata] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_WorkspaceFileEdit = [`Monaco_languages_WorkspaceFileEdit] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_WorkspaceFileEditOptions = [`Monaco_languages_WorkspaceFileEditOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_WorkspaceTextEdit = [`Monaco_languages_WorkspaceTextEdit] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_css_DiagnosticsOptions = [`Monaco_languages_css_DiagnosticsOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_css_LanguageServiceDefaults = [`Monaco_languages_css_LanguageServiceDefaults] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_css_ModeConfiguration = [`Monaco_languages_css_ModeConfiguration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_html_CompletionConfiguration = [`Monaco_languages_html_CompletionConfiguration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_html_HTMLFormatConfiguration = [`Monaco_languages_html_HTMLFormatConfiguration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_html_LanguageServiceDefaults = [`Monaco_languages_html_LanguageServiceDefaults] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_html_ModeConfiguration = [`Monaco_languages_html_ModeConfiguration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_html_Options = [`Monaco_languages_html_Options] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_json_DiagnosticsOptions = [`Monaco_languages_json_DiagnosticsOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_json_LanguageServiceDefaults = [`Monaco_languages_json_LanguageServiceDefaults] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_json_ModeConfiguration = [`Monaco_languages_json_ModeConfiguration] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_json_SeverityLevel = ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum])
    and monaco_languages_typescript_CompilerOptions = [`Monaco_languages_typescript_CompilerOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_CompilerOptionsValue = (string list monaco_languages_typescript_MapLike, string or_number or_string) or_array or_boolean or_string or_number or_null_or_undefined
    and monaco_languages_typescript_Diagnostic = [`Monaco_languages_typescript_Diagnostic | `Monaco_languages_typescript_DiagnosticRelatedInformation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_DiagnosticMessageChain = [`Monaco_languages_typescript_DiagnosticMessageChain] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_DiagnosticRelatedInformation = [`Monaco_languages_typescript_DiagnosticRelatedInformation] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_DiagnosticsOptions = [`Monaco_languages_typescript_DiagnosticsOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_EmitOutput = [`Monaco_languages_typescript_EmitOutput] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_IExtraLib = [`Monaco_languages_typescript_IExtraLib] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_IExtraLibs = [`Monaco_languages_typescript_IExtraLibs] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_JsxEmit = [`None[@js 0] | `Preserve[@js 1] | `React[@js 2] | `ReactNative[@js 3] | `ReactJSX[@js 4] | `ReactJSXDev[@js 5]] [@js.enum]
    and monaco_languages_typescript_JsxEmit_None = [`None[@js 0]] [@js.enum]
    and monaco_languages_typescript_JsxEmit_Preserve = [`Preserve[@js 1]] [@js.enum]
    and monaco_languages_typescript_JsxEmit_React = [`React[@js 2]] [@js.enum]
    and monaco_languages_typescript_JsxEmit_ReactNative = [`ReactNative[@js 3]] [@js.enum]
    and monaco_languages_typescript_JsxEmit_ReactJSX = [`ReactJSX[@js 4]] [@js.enum]
    and monaco_languages_typescript_JsxEmit_ReactJSXDev = [`ReactJSXDev[@js 5]] [@js.enum]
    and monaco_languages_typescript_LanguageServiceDefaults = [`Monaco_languages_typescript_LanguageServiceDefaults] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'T monaco_languages_typescript_MapLike = [`Monaco_languages_typescript_MapLike of 'T] intf
    [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    and monaco_languages_typescript_ModuleKind = [`None[@js 0] | `CommonJS[@js 1] | `AMD[@js 2] | `UMD[@js 3] | `System[@js 4] | `ES2015[@js 5] | `ESNext[@js 99]] [@js.enum]
    and monaco_languages_typescript_ModuleKind_None = [`None[@js 0]] [@js.enum]
    and monaco_languages_typescript_ModuleKind_CommonJS = [`CommonJS[@js 1]] [@js.enum]
    and monaco_languages_typescript_ModuleKind_AMD = [`AMD[@js 2]] [@js.enum]
    and monaco_languages_typescript_ModuleKind_UMD = [`UMD[@js 3]] [@js.enum]
    and monaco_languages_typescript_ModuleKind_System = [`System[@js 4]] [@js.enum]
    and monaco_languages_typescript_ModuleKind_ES2015 = [`ES2015[@js 5]] [@js.enum]
    and monaco_languages_typescript_ModuleKind_ESNext = [`ESNext[@js 99]] [@js.enum]
    and monaco_languages_typescript_ModuleResolutionKind = [`Classic[@js 1] | `NodeJs[@js 2]] [@js.enum]
    and monaco_languages_typescript_ModuleResolutionKind_Classic = [`Classic[@js 1]] [@js.enum]
    and monaco_languages_typescript_ModuleResolutionKind_NodeJs = [`NodeJs[@js 2]] [@js.enum]
    and monaco_languages_typescript_NewLineKind = [`CarriageReturnLineFeed[@js 0] | `LineFeed[@js 1]] [@js.enum]
    and monaco_languages_typescript_NewLineKind_CarriageReturnLineFeed = [`CarriageReturnLineFeed[@js 0]] [@js.enum]
    and monaco_languages_typescript_NewLineKind_LineFeed = [`LineFeed[@js 1]] [@js.enum]
    and monaco_languages_typescript_OutputFile = [`Monaco_languages_typescript_OutputFile] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_ScriptTarget = [`ES3[@js 0] | `ES5[@js 1] | `ES2015[@js 2] | `ES2016[@js 3] | `ES2017[@js 4] | `ES2018[@js 5] | `ES2019[@js 6] | `ES2020[@js 7] | `ESNext[@js 99] | `JSON[@js 100] | `Latest[@js 99]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES3 = [`ES3[@js 0]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES5 = [`ES5[@js 1]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES2015 = [`ES2015[@js 2]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES2016 = [`ES2016[@js 3]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES2017 = [`ES2017[@js 4]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES2018 = [`ES2018[@js 5]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES2019 = [`ES2019[@js 6]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ES2020 = [`ES2020[@js 7]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_ESNext = [`ESNext[@js 99]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_JSON = [`JSON[@js 100]] [@js.enum]
    and monaco_languages_typescript_ScriptTarget_Latest = [`Latest[@js 99]] [@js.enum]
    and monaco_languages_typescript_TypeScriptWorker = [`Monaco_languages_typescript_TypeScriptWorker] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_languages_typescript_WorkerOptions = [`Monaco_languages_typescript_WorkerOptions] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_worker_IMirrorModel = [`Monaco_worker_IMirrorModel | `Monaco_worker_IMirrorTextModel] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and monaco_worker_IMirrorTextModel = [`Monaco_worker_IMirrorTextModel] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    and 'H monaco_worker_IWorkerContext = [`Monaco_worker_IWorkerContext of 'H] intf
    [@@js.custom { of_js=(fun _H -> Obj.magic); to_js=(fun _H -> Obj.magic) }]
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
  val get_ICodeEditor: t -> string [@@js.get "ICodeEditor"]
  val set_ICodeEditor: t -> string -> unit [@@js.set "ICodeEditor"]
  val get_IDiffEditor: t -> string [@@js.get "IDiffEditor"]
  val set_IDiffEditor: t -> string -> unit [@@js.set "IDiffEditor"]
end
module AnonymousInterface2 : sig
  type t = anonymous_interface_2
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_acceptSuggestionOnCommitCharacter: t -> (monaco_editor_EditorOption_acceptSuggestionOnCommitCharacter, bool) monaco_editor_IEditorOption [@@js.get "acceptSuggestionOnCommitCharacter"]
  val set_acceptSuggestionOnCommitCharacter: t -> (monaco_editor_EditorOption_acceptSuggestionOnCommitCharacter, bool) monaco_editor_IEditorOption -> unit [@@js.set "acceptSuggestionOnCommitCharacter"]
  val get_acceptSuggestionOnEnter: t -> (monaco_editor_EditorOption_acceptSuggestionOnEnter, ([`L_s54_off[@js "off"] | `L_s55_on[@js "on"] | `L_s70_smart[@js "smart"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "acceptSuggestionOnEnter"]
  val set_acceptSuggestionOnEnter: t -> (monaco_editor_EditorOption_acceptSuggestionOnEnter, ([`L_s54_off | `L_s55_on | `L_s70_smart] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "acceptSuggestionOnEnter"]
  val get_accessibilitySupport: t -> (monaco_editor_EditorOption_accessibilitySupport, monaco_editor_AccessibilitySupport) monaco_editor_IEditorOption [@@js.get "accessibilitySupport"]
  val set_accessibilitySupport: t -> (monaco_editor_EditorOption_accessibilitySupport, monaco_editor_AccessibilitySupport) monaco_editor_IEditorOption -> unit [@@js.set "accessibilitySupport"]
  val get_accessibilityPageSize: t -> (monaco_editor_EditorOption_accessibilityPageSize, float) monaco_editor_IEditorOption [@@js.get "accessibilityPageSize"]
  val set_accessibilityPageSize: t -> (monaco_editor_EditorOption_accessibilityPageSize, float) monaco_editor_IEditorOption -> unit [@@js.set "accessibilityPageSize"]
  val get_ariaLabel: t -> (monaco_editor_EditorOption_ariaLabel, string) monaco_editor_IEditorOption [@@js.get "ariaLabel"]
  val set_ariaLabel: t -> (monaco_editor_EditorOption_ariaLabel, string) monaco_editor_IEditorOption -> unit [@@js.set "ariaLabel"]
  val get_autoClosingBrackets: t -> (monaco_editor_EditorOption_autoClosingBrackets, ([`L_s4_always[@js "always"] | `L_s6_beforeWhitespace[@js "beforeWhitespace"] | `L_s44_languageDefined[@js "languageDefined"] | `L_s52_never[@js "never"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "autoClosingBrackets"]
  val set_autoClosingBrackets: t -> (monaco_editor_EditorOption_autoClosingBrackets, ([`L_s4_always | `L_s6_beforeWhitespace | `L_s44_languageDefined | `L_s52_never] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "autoClosingBrackets"]
  val get_autoClosingDelete: t -> (monaco_editor_EditorOption_autoClosingDelete, ([`L_s4_always[@js "always"] | `L_s5_auto[@js "auto"] | `L_s52_never[@js "never"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "autoClosingDelete"]
  val set_autoClosingDelete: t -> (monaco_editor_EditorOption_autoClosingDelete, ([`L_s4_always | `L_s5_auto | `L_s52_never] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "autoClosingDelete"]
  val get_autoClosingOvertype: t -> (monaco_editor_EditorOption_autoClosingOvertype, ([`L_s4_always[@js "always"] | `L_s5_auto[@js "auto"] | `L_s52_never[@js "never"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "autoClosingOvertype"]
  val set_autoClosingOvertype: t -> (monaco_editor_EditorOption_autoClosingOvertype, ([`L_s4_always | `L_s5_auto | `L_s52_never] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "autoClosingOvertype"]
  val get_autoClosingQuotes: t -> (monaco_editor_EditorOption_autoClosingQuotes, ([`L_s4_always[@js "always"] | `L_s6_beforeWhitespace[@js "beforeWhitespace"] | `L_s44_languageDefined[@js "languageDefined"] | `L_s52_never[@js "never"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "autoClosingQuotes"]
  val set_autoClosingQuotes: t -> (monaco_editor_EditorOption_autoClosingQuotes, ([`L_s4_always | `L_s6_beforeWhitespace | `L_s44_languageDefined | `L_s52_never] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "autoClosingQuotes"]
  val get_autoIndent: t -> (monaco_editor_EditorOption_autoIndent, monaco_editor_EditorAutoIndentStrategy) monaco_editor_IEditorOption [@@js.get "autoIndent"]
  val set_autoIndent: t -> (monaco_editor_EditorOption_autoIndent, monaco_editor_EditorAutoIndentStrategy) monaco_editor_IEditorOption -> unit [@@js.set "autoIndent"]
  val get_automaticLayout: t -> (monaco_editor_EditorOption_automaticLayout, bool) monaco_editor_IEditorOption [@@js.get "automaticLayout"]
  val set_automaticLayout: t -> (monaco_editor_EditorOption_automaticLayout, bool) monaco_editor_IEditorOption -> unit [@@js.set "automaticLayout"]
  val get_autoSurround: t -> (monaco_editor_EditorOption_autoSurround, ([`L_s13_brackets[@js "brackets"] | `L_s44_languageDefined[@js "languageDefined"] | `L_s52_never[@js "never"] | `L_s61_quotes[@js "quotes"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "autoSurround"]
  val set_autoSurround: t -> (monaco_editor_EditorOption_autoSurround, ([`L_s13_brackets | `L_s44_languageDefined | `L_s52_never | `L_s61_quotes] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "autoSurround"]
  val get_stickyTabStops: t -> (monaco_editor_EditorOption_stickyTabStops, bool) monaco_editor_IEditorOption [@@js.get "stickyTabStops"]
  val set_stickyTabStops: t -> (monaco_editor_EditorOption_stickyTabStops, bool) monaco_editor_IEditorOption -> unit [@@js.set "stickyTabStops"]
  val get_codeLens: t -> (monaco_editor_EditorOption_codeLens, bool) monaco_editor_IEditorOption [@@js.get "codeLens"]
  val set_codeLens: t -> (monaco_editor_EditorOption_codeLens, bool) monaco_editor_IEditorOption -> unit [@@js.set "codeLens"]
  val get_codeLensFontFamily: t -> (monaco_editor_EditorOption_codeLensFontFamily, string) monaco_editor_IEditorOption [@@js.get "codeLensFontFamily"]
  val set_codeLensFontFamily: t -> (monaco_editor_EditorOption_codeLensFontFamily, string) monaco_editor_IEditorOption -> unit [@@js.set "codeLensFontFamily"]
  val get_codeLensFontSize: t -> (monaco_editor_EditorOption_codeLensFontSize, float) monaco_editor_IEditorOption [@@js.get "codeLensFontSize"]
  val set_codeLensFontSize: t -> (monaco_editor_EditorOption_codeLensFontSize, float) monaco_editor_IEditorOption -> unit [@@js.set "codeLensFontSize"]
  val get_colorDecorators: t -> (monaco_editor_EditorOption_colorDecorators, bool) monaco_editor_IEditorOption [@@js.get "colorDecorators"]
  val set_colorDecorators: t -> (monaco_editor_EditorOption_colorDecorators, bool) monaco_editor_IEditorOption -> unit [@@js.set "colorDecorators"]
  val get_columnSelection: t -> (monaco_editor_EditorOption_columnSelection, bool) monaco_editor_IEditorOption [@@js.get "columnSelection"]
  val set_columnSelection: t -> (monaco_editor_EditorOption_columnSelection, bool) monaco_editor_IEditorOption -> unit [@@js.set "columnSelection"]
  val get_comments: t -> (monaco_editor_EditorOption_comments, monaco_editor_EditorCommentsOptions) monaco_editor_IEditorOption [@@js.get "comments"]
  val set_comments: t -> (monaco_editor_EditorOption_comments, monaco_editor_EditorCommentsOptions) monaco_editor_IEditorOption -> unit [@@js.set "comments"]
  val get_contextmenu: t -> (monaco_editor_EditorOption_contextmenu, bool) monaco_editor_IEditorOption [@@js.get "contextmenu"]
  val set_contextmenu: t -> (monaco_editor_EditorOption_contextmenu, bool) monaco_editor_IEditorOption -> unit [@@js.set "contextmenu"]
  val get_copyWithSyntaxHighlighting: t -> (monaco_editor_EditorOption_copyWithSyntaxHighlighting, bool) monaco_editor_IEditorOption [@@js.get "copyWithSyntaxHighlighting"]
  val set_copyWithSyntaxHighlighting: t -> (monaco_editor_EditorOption_copyWithSyntaxHighlighting, bool) monaco_editor_IEditorOption -> unit [@@js.set "copyWithSyntaxHighlighting"]
  val get_cursorBlinking: t -> (monaco_editor_EditorOption_cursorBlinking, monaco_editor_TextEditorCursorBlinkingStyle) monaco_editor_IEditorOption [@@js.get "cursorBlinking"]
  val set_cursorBlinking: t -> (monaco_editor_EditorOption_cursorBlinking, monaco_editor_TextEditorCursorBlinkingStyle) monaco_editor_IEditorOption -> unit [@@js.set "cursorBlinking"]
  val get_cursorSmoothCaretAnimation: t -> (monaco_editor_EditorOption_cursorSmoothCaretAnimation, bool) monaco_editor_IEditorOption [@@js.get "cursorSmoothCaretAnimation"]
  val set_cursorSmoothCaretAnimation: t -> (monaco_editor_EditorOption_cursorSmoothCaretAnimation, bool) monaco_editor_IEditorOption -> unit [@@js.set "cursorSmoothCaretAnimation"]
  val get_cursorStyle: t -> (monaco_editor_EditorOption_cursorStyle, monaco_editor_TextEditorCursorStyle) monaco_editor_IEditorOption [@@js.get "cursorStyle"]
  val set_cursorStyle: t -> (monaco_editor_EditorOption_cursorStyle, monaco_editor_TextEditorCursorStyle) monaco_editor_IEditorOption -> unit [@@js.set "cursorStyle"]
  val get_cursorSurroundingLines: t -> (monaco_editor_EditorOption_cursorSurroundingLines, float) monaco_editor_IEditorOption [@@js.get "cursorSurroundingLines"]
  val set_cursorSurroundingLines: t -> (monaco_editor_EditorOption_cursorSurroundingLines, float) monaco_editor_IEditorOption -> unit [@@js.set "cursorSurroundingLines"]
  val get_cursorSurroundingLinesStyle: t -> (monaco_editor_EditorOption_cursorSurroundingLinesStyle, ([`L_s1_all[@js "all"] | `L_s19_default[@js "default"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "cursorSurroundingLinesStyle"]
  val set_cursorSurroundingLinesStyle: t -> (monaco_editor_EditorOption_cursorSurroundingLinesStyle, ([`L_s1_all | `L_s19_default] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "cursorSurroundingLinesStyle"]
  val get_cursorWidth: t -> (monaco_editor_EditorOption_cursorWidth, float) monaco_editor_IEditorOption [@@js.get "cursorWidth"]
  val set_cursorWidth: t -> (monaco_editor_EditorOption_cursorWidth, float) monaco_editor_IEditorOption -> unit [@@js.set "cursorWidth"]
  val get_disableLayerHinting: t -> (monaco_editor_EditorOption_disableLayerHinting, bool) monaco_editor_IEditorOption [@@js.get "disableLayerHinting"]
  val set_disableLayerHinting: t -> (monaco_editor_EditorOption_disableLayerHinting, bool) monaco_editor_IEditorOption -> unit [@@js.set "disableLayerHinting"]
  val get_disableMonospaceOptimizations: t -> (monaco_editor_EditorOption_disableMonospaceOptimizations, bool) monaco_editor_IEditorOption [@@js.get "disableMonospaceOptimizations"]
  val set_disableMonospaceOptimizations: t -> (monaco_editor_EditorOption_disableMonospaceOptimizations, bool) monaco_editor_IEditorOption -> unit [@@js.set "disableMonospaceOptimizations"]
  val get_domReadOnly: t -> (monaco_editor_EditorOption_domReadOnly, bool) monaco_editor_IEditorOption [@@js.get "domReadOnly"]
  val set_domReadOnly: t -> (monaco_editor_EditorOption_domReadOnly, bool) monaco_editor_IEditorOption -> unit [@@js.set "domReadOnly"]
  val get_dragAndDrop: t -> (monaco_editor_EditorOption_dragAndDrop, bool) monaco_editor_IEditorOption [@@js.get "dragAndDrop"]
  val set_dragAndDrop: t -> (monaco_editor_EditorOption_dragAndDrop, bool) monaco_editor_IEditorOption -> unit [@@js.set "dragAndDrop"]
  val get_emptySelectionClipboard: t -> (monaco_editor_EditorOption_emptySelectionClipboard, bool) monaco_editor_IEditorOption [@@js.get "emptySelectionClipboard"]
  val set_emptySelectionClipboard: t -> (monaco_editor_EditorOption_emptySelectionClipboard, bool) monaco_editor_IEditorOption -> unit [@@js.set "emptySelectionClipboard"]
  val get_extraEditorClassName: t -> (monaco_editor_EditorOption_extraEditorClassName, string) monaco_editor_IEditorOption [@@js.get "extraEditorClassName"]
  val set_extraEditorClassName: t -> (monaco_editor_EditorOption_extraEditorClassName, string) monaco_editor_IEditorOption -> unit [@@js.set "extraEditorClassName"]
  val get_fastScrollSensitivity: t -> (monaco_editor_EditorOption_fastScrollSensitivity, float) monaco_editor_IEditorOption [@@js.get "fastScrollSensitivity"]
  val set_fastScrollSensitivity: t -> (monaco_editor_EditorOption_fastScrollSensitivity, float) monaco_editor_IEditorOption -> unit [@@js.set "fastScrollSensitivity"]
  val get_find: t -> (monaco_editor_EditorOption_find, monaco_editor_EditorFindOptions) monaco_editor_IEditorOption [@@js.get "find"]
  val set_find: t -> (monaco_editor_EditorOption_find, monaco_editor_EditorFindOptions) monaco_editor_IEditorOption -> unit [@@js.set "find"]
  val get_fixedOverflowWidgets: t -> (monaco_editor_EditorOption_fixedOverflowWidgets, bool) monaco_editor_IEditorOption [@@js.get "fixedOverflowWidgets"]
  val set_fixedOverflowWidgets: t -> (monaco_editor_EditorOption_fixedOverflowWidgets, bool) monaco_editor_IEditorOption -> unit [@@js.set "fixedOverflowWidgets"]
  val get_folding: t -> (monaco_editor_EditorOption_folding, bool) monaco_editor_IEditorOption [@@js.get "folding"]
  val set_folding: t -> (monaco_editor_EditorOption_folding, bool) monaco_editor_IEditorOption -> unit [@@js.set "folding"]
  val get_foldingStrategy: t -> (monaco_editor_EditorOption_foldingStrategy, ([`L_s5_auto[@js "auto"] | `L_s38_indentation[@js "indentation"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "foldingStrategy"]
  val set_foldingStrategy: t -> (monaco_editor_EditorOption_foldingStrategy, ([`L_s5_auto | `L_s38_indentation] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "foldingStrategy"]
  val get_foldingHighlight: t -> (monaco_editor_EditorOption_foldingHighlight, bool) monaco_editor_IEditorOption [@@js.get "foldingHighlight"]
  val set_foldingHighlight: t -> (monaco_editor_EditorOption_foldingHighlight, bool) monaco_editor_IEditorOption -> unit [@@js.set "foldingHighlight"]
  val get_unfoldOnClickAfterEndOfLine: t -> (monaco_editor_EditorOption_unfoldOnClickAfterEndOfLine, bool) monaco_editor_IEditorOption [@@js.get "unfoldOnClickAfterEndOfLine"]
  val set_unfoldOnClickAfterEndOfLine: t -> (monaco_editor_EditorOption_unfoldOnClickAfterEndOfLine, bool) monaco_editor_IEditorOption -> unit [@@js.set "unfoldOnClickAfterEndOfLine"]
  val get_fontFamily: t -> (monaco_editor_EditorOption_fontFamily, string) monaco_editor_IEditorOption [@@js.get "fontFamily"]
  val set_fontFamily: t -> (monaco_editor_EditorOption_fontFamily, string) monaco_editor_IEditorOption -> unit [@@js.set "fontFamily"]
  val get_fontInfo: t -> (monaco_editor_EditorOption_fontInfo, monaco_editor_FontInfo) monaco_editor_IEditorOption [@@js.get "fontInfo"]
  val set_fontInfo: t -> (monaco_editor_EditorOption_fontInfo, monaco_editor_FontInfo) monaco_editor_IEditorOption -> unit [@@js.set "fontInfo"]
  val get_fontLigatures2: t -> (monaco_editor_EditorOption_fontLigatures, string) monaco_editor_IEditorOption [@@js.get "fontLigatures2"]
  val set_fontLigatures2: t -> (monaco_editor_EditorOption_fontLigatures, string) monaco_editor_IEditorOption -> unit [@@js.set "fontLigatures2"]
  val get_fontSize: t -> (monaco_editor_EditorOption_fontSize, float) monaco_editor_IEditorOption [@@js.get "fontSize"]
  val set_fontSize: t -> (monaco_editor_EditorOption_fontSize, float) monaco_editor_IEditorOption -> unit [@@js.set "fontSize"]
  val get_fontWeight: t -> (monaco_editor_EditorOption_fontWeight, string) monaco_editor_IEditorOption [@@js.get "fontWeight"]
  val set_fontWeight: t -> (monaco_editor_EditorOption_fontWeight, string) monaco_editor_IEditorOption -> unit [@@js.set "fontWeight"]
  val get_formatOnPaste: t -> (monaco_editor_EditorOption_formatOnPaste, bool) monaco_editor_IEditorOption [@@js.get "formatOnPaste"]
  val set_formatOnPaste: t -> (monaco_editor_EditorOption_formatOnPaste, bool) monaco_editor_IEditorOption -> unit [@@js.set "formatOnPaste"]
  val get_formatOnType: t -> (monaco_editor_EditorOption_formatOnType, bool) monaco_editor_IEditorOption [@@js.get "formatOnType"]
  val set_formatOnType: t -> (monaco_editor_EditorOption_formatOnType, bool) monaco_editor_IEditorOption -> unit [@@js.set "formatOnType"]
  val get_glyphMargin: t -> (monaco_editor_EditorOption_glyphMargin, bool) monaco_editor_IEditorOption [@@js.get "glyphMargin"]
  val set_glyphMargin: t -> (monaco_editor_EditorOption_glyphMargin, bool) monaco_editor_IEditorOption -> unit [@@js.set "glyphMargin"]
  val get_gotoLocation: t -> (monaco_editor_EditorOption_gotoLocation, monaco_editor_GoToLocationOptions) monaco_editor_IEditorOption [@@js.get "gotoLocation"]
  val set_gotoLocation: t -> (monaco_editor_EditorOption_gotoLocation, monaco_editor_GoToLocationOptions) monaco_editor_IEditorOption -> unit [@@js.set "gotoLocation"]
  val get_hideCursorInOverviewRuler: t -> (monaco_editor_EditorOption_hideCursorInOverviewRuler, bool) monaco_editor_IEditorOption [@@js.get "hideCursorInOverviewRuler"]
  val set_hideCursorInOverviewRuler: t -> (monaco_editor_EditorOption_hideCursorInOverviewRuler, bool) monaco_editor_IEditorOption -> unit [@@js.set "hideCursorInOverviewRuler"]
  val get_highlightActiveIndentGuide: t -> (monaco_editor_EditorOption_highlightActiveIndentGuide, bool) monaco_editor_IEditorOption [@@js.get "highlightActiveIndentGuide"]
  val set_highlightActiveIndentGuide: t -> (monaco_editor_EditorOption_highlightActiveIndentGuide, bool) monaco_editor_IEditorOption -> unit [@@js.set "highlightActiveIndentGuide"]
  val get_hover: t -> (monaco_editor_EditorOption_hover, monaco_editor_EditorHoverOptions) monaco_editor_IEditorOption [@@js.get "hover"]
  val set_hover: t -> (monaco_editor_EditorOption_hover, monaco_editor_EditorHoverOptions) monaco_editor_IEditorOption -> unit [@@js.set "hover"]
  val get_inDiffEditor: t -> (monaco_editor_EditorOption_inDiffEditor, bool) monaco_editor_IEditorOption [@@js.get "inDiffEditor"]
  val set_inDiffEditor: t -> (monaco_editor_EditorOption_inDiffEditor, bool) monaco_editor_IEditorOption -> unit [@@js.set "inDiffEditor"]
  val get_letterSpacing: t -> (monaco_editor_EditorOption_letterSpacing, float) monaco_editor_IEditorOption [@@js.get "letterSpacing"]
  val set_letterSpacing: t -> (monaco_editor_EditorOption_letterSpacing, float) monaco_editor_IEditorOption -> unit [@@js.set "letterSpacing"]
  val get_lightbulb: t -> (monaco_editor_EditorOption_lightbulb, monaco_editor_EditorLightbulbOptions) monaco_editor_IEditorOption [@@js.get "lightbulb"]
  val set_lightbulb: t -> (monaco_editor_EditorOption_lightbulb, monaco_editor_EditorLightbulbOptions) monaco_editor_IEditorOption -> unit [@@js.set "lightbulb"]
  val get_lineDecorationsWidth: t -> (monaco_editor_EditorOption_lineDecorationsWidth, string or_number) monaco_editor_IEditorOption [@@js.get "lineDecorationsWidth"]
  val set_lineDecorationsWidth: t -> (monaco_editor_EditorOption_lineDecorationsWidth, string or_number) monaco_editor_IEditorOption -> unit [@@js.set "lineDecorationsWidth"]
  val get_lineHeight: t -> (monaco_editor_EditorOption_lineHeight, float) monaco_editor_IEditorOption [@@js.get "lineHeight"]
  val set_lineHeight: t -> (monaco_editor_EditorOption_lineHeight, float) monaco_editor_IEditorOption -> unit [@@js.set "lineHeight"]
  val get_lineNumbers: t -> (monaco_editor_EditorOption_lineNumbers, monaco_editor_InternalEditorRenderLineNumbersOptions) monaco_editor_IEditorOption [@@js.get "lineNumbers"]
  val set_lineNumbers: t -> (monaco_editor_EditorOption_lineNumbers, monaco_editor_InternalEditorRenderLineNumbersOptions) monaco_editor_IEditorOption -> unit [@@js.set "lineNumbers"]
  val get_lineNumbersMinChars: t -> (monaco_editor_EditorOption_lineNumbersMinChars, float) monaco_editor_IEditorOption [@@js.get "lineNumbersMinChars"]
  val set_lineNumbersMinChars: t -> (monaco_editor_EditorOption_lineNumbersMinChars, float) monaco_editor_IEditorOption -> unit [@@js.set "lineNumbersMinChars"]
  val get_linkedEditing: t -> (monaco_editor_EditorOption_linkedEditing, bool) monaco_editor_IEditorOption [@@js.get "linkedEditing"]
  val set_linkedEditing: t -> (monaco_editor_EditorOption_linkedEditing, bool) monaco_editor_IEditorOption -> unit [@@js.set "linkedEditing"]
  val get_links: t -> (monaco_editor_EditorOption_links, bool) monaco_editor_IEditorOption [@@js.get "links"]
  val set_links: t -> (monaco_editor_EditorOption_links, bool) monaco_editor_IEditorOption -> unit [@@js.set "links"]
  val get_matchBrackets: t -> (monaco_editor_EditorOption_matchBrackets, ([`L_s4_always[@js "always"] | `L_s51_near[@js "near"] | `L_s52_never[@js "never"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "matchBrackets"]
  val set_matchBrackets: t -> (monaco_editor_EditorOption_matchBrackets, ([`L_s4_always | `L_s51_near | `L_s52_never] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "matchBrackets"]
  val get_minimap: t -> (monaco_editor_EditorOption_minimap, monaco_editor_EditorMinimapOptions) monaco_editor_IEditorOption [@@js.get "minimap"]
  val set_minimap: t -> (monaco_editor_EditorOption_minimap, monaco_editor_EditorMinimapOptions) monaco_editor_IEditorOption -> unit [@@js.set "minimap"]
  val get_mouseStyle: t -> (monaco_editor_EditorOption_mouseStyle, ([`L_s15_copy[@js "copy"] | `L_s19_default[@js "default"] | `L_s74_text[@js "text"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "mouseStyle"]
  val set_mouseStyle: t -> (monaco_editor_EditorOption_mouseStyle, ([`L_s15_copy | `L_s19_default | `L_s74_text] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "mouseStyle"]
  val get_mouseWheelScrollSensitivity: t -> (monaco_editor_EditorOption_mouseWheelScrollSensitivity, float) monaco_editor_IEditorOption [@@js.get "mouseWheelScrollSensitivity"]
  val set_mouseWheelScrollSensitivity: t -> (monaco_editor_EditorOption_mouseWheelScrollSensitivity, float) monaco_editor_IEditorOption -> unit [@@js.set "mouseWheelScrollSensitivity"]
  val get_mouseWheelZoom: t -> (monaco_editor_EditorOption_mouseWheelZoom, bool) monaco_editor_IEditorOption [@@js.get "mouseWheelZoom"]
  val set_mouseWheelZoom: t -> (monaco_editor_EditorOption_mouseWheelZoom, bool) monaco_editor_IEditorOption -> unit [@@js.set "mouseWheelZoom"]
  val get_multiCursorMergeOverlapping: t -> (monaco_editor_EditorOption_multiCursorMergeOverlapping, bool) monaco_editor_IEditorOption [@@js.get "multiCursorMergeOverlapping"]
  val set_multiCursorMergeOverlapping: t -> (monaco_editor_EditorOption_multiCursorMergeOverlapping, bool) monaco_editor_IEditorOption -> unit [@@js.set "multiCursorMergeOverlapping"]
  val get_multiCursorModifier: t -> (monaco_editor_EditorOption_multiCursorModifier, ([`L_s3_altKey[@js "altKey"] | `L_s17_ctrlKey[@js "ctrlKey"] | `L_s48_metaKey[@js "metaKey"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "multiCursorModifier"]
  val set_multiCursorModifier: t -> (monaco_editor_EditorOption_multiCursorModifier, ([`L_s3_altKey | `L_s17_ctrlKey | `L_s48_metaKey] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "multiCursorModifier"]
  val get_multiCursorPaste: t -> (monaco_editor_EditorOption_multiCursorPaste, ([`L_s30_full[@js "full"] | `L_s73_spread[@js "spread"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "multiCursorPaste"]
  val set_multiCursorPaste: t -> (monaco_editor_EditorOption_multiCursorPaste, ([`L_s30_full | `L_s73_spread] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "multiCursorPaste"]
  val get_occurrencesHighlight: t -> (monaco_editor_EditorOption_occurrencesHighlight, bool) monaco_editor_IEditorOption [@@js.get "occurrencesHighlight"]
  val set_occurrencesHighlight: t -> (monaco_editor_EditorOption_occurrencesHighlight, bool) monaco_editor_IEditorOption -> unit [@@js.set "occurrencesHighlight"]
  val get_overviewRulerBorder: t -> (monaco_editor_EditorOption_overviewRulerBorder, bool) monaco_editor_IEditorOption [@@js.get "overviewRulerBorder"]
  val set_overviewRulerBorder: t -> (monaco_editor_EditorOption_overviewRulerBorder, bool) monaco_editor_IEditorOption -> unit [@@js.set "overviewRulerBorder"]
  val get_overviewRulerLanes: t -> (monaco_editor_EditorOption_overviewRulerLanes, float) monaco_editor_IEditorOption [@@js.get "overviewRulerLanes"]
  val set_overviewRulerLanes: t -> (monaco_editor_EditorOption_overviewRulerLanes, float) monaco_editor_IEditorOption -> unit [@@js.set "overviewRulerLanes"]
  val get_padding: t -> (monaco_editor_EditorOption_padding, monaco_editor_InternalEditorPaddingOptions) monaco_editor_IEditorOption [@@js.get "padding"]
  val set_padding: t -> (monaco_editor_EditorOption_padding, monaco_editor_InternalEditorPaddingOptions) monaco_editor_IEditorOption -> unit [@@js.set "padding"]
  val get_parameterHints: t -> (monaco_editor_EditorOption_parameterHints, monaco_editor_InternalParameterHintOptions) monaco_editor_IEditorOption [@@js.get "parameterHints"]
  val set_parameterHints: t -> (monaco_editor_EditorOption_parameterHints, monaco_editor_InternalParameterHintOptions) monaco_editor_IEditorOption -> unit [@@js.set "parameterHints"]
  val get_peekWidgetDefaultFocus: t -> (monaco_editor_EditorOption_peekWidgetDefaultFocus, ([`L_s21_editor[@js "editor"] | `L_s77_tree[@js "tree"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "peekWidgetDefaultFocus"]
  val set_peekWidgetDefaultFocus: t -> (monaco_editor_EditorOption_peekWidgetDefaultFocus, ([`L_s21_editor | `L_s77_tree] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "peekWidgetDefaultFocus"]
  val get_definitionLinkOpensInPeek: t -> (monaco_editor_EditorOption_definitionLinkOpensInPeek, bool) monaco_editor_IEditorOption [@@js.get "definitionLinkOpensInPeek"]
  val set_definitionLinkOpensInPeek: t -> (monaco_editor_EditorOption_definitionLinkOpensInPeek, bool) monaco_editor_IEditorOption -> unit [@@js.set "definitionLinkOpensInPeek"]
  val get_quickSuggestions: t -> (monaco_editor_EditorOption_quickSuggestions, monaco_editor_ValidQuickSuggestionsOptions) monaco_editor_IEditorOption [@@js.get "quickSuggestions"]
  val set_quickSuggestions: t -> (monaco_editor_EditorOption_quickSuggestions, monaco_editor_ValidQuickSuggestionsOptions) monaco_editor_IEditorOption -> unit [@@js.set "quickSuggestions"]
  val get_quickSuggestionsDelay: t -> (monaco_editor_EditorOption_quickSuggestionsDelay, float) monaco_editor_IEditorOption [@@js.get "quickSuggestionsDelay"]
  val set_quickSuggestionsDelay: t -> (monaco_editor_EditorOption_quickSuggestionsDelay, float) monaco_editor_IEditorOption -> unit [@@js.set "quickSuggestionsDelay"]
  val get_readOnly: t -> (monaco_editor_EditorOption_readOnly, bool) monaco_editor_IEditorOption [@@js.get "readOnly"]
  val set_readOnly: t -> (monaco_editor_EditorOption_readOnly, bool) monaco_editor_IEditorOption -> unit [@@js.set "readOnly"]
  val get_renameOnType: t -> (monaco_editor_EditorOption_renameOnType, bool) monaco_editor_IEditorOption [@@js.get "renameOnType"]
  val set_renameOnType: t -> (monaco_editor_EditorOption_renameOnType, bool) monaco_editor_IEditorOption -> unit [@@js.set "renameOnType"]
  val get_renderControlCharacters: t -> (monaco_editor_EditorOption_renderControlCharacters, bool) monaco_editor_IEditorOption [@@js.get "renderControlCharacters"]
  val set_renderControlCharacters: t -> (monaco_editor_EditorOption_renderControlCharacters, bool) monaco_editor_IEditorOption -> unit [@@js.set "renderControlCharacters"]
  val get_renderIndentGuides: t -> (monaco_editor_EditorOption_renderIndentGuides, bool) monaco_editor_IEditorOption [@@js.get "renderIndentGuides"]
  val set_renderIndentGuides: t -> (monaco_editor_EditorOption_renderIndentGuides, bool) monaco_editor_IEditorOption -> unit [@@js.set "renderIndentGuides"]
  val get_renderFinalNewline: t -> (monaco_editor_EditorOption_renderFinalNewline, bool) monaco_editor_IEditorOption [@@js.get "renderFinalNewline"]
  val set_renderFinalNewline: t -> (monaco_editor_EditorOption_renderFinalNewline, bool) monaco_editor_IEditorOption -> unit [@@js.set "renderFinalNewline"]
  val get_renderLineHighlight: t -> (monaco_editor_EditorOption_renderLineHighlight, ([`L_s1_all[@js "all"] | `L_s33_gutter[@js "gutter"] | `L_s46_line[@js "line"] | `L_s53_none[@js "none"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "renderLineHighlight"]
  val set_renderLineHighlight: t -> (monaco_editor_EditorOption_renderLineHighlight, ([`L_s1_all | `L_s33_gutter | `L_s46_line | `L_s53_none] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "renderLineHighlight"]
  val get_renderLineHighlightOnlyWhenFocus: t -> (monaco_editor_EditorOption_renderLineHighlightOnlyWhenFocus, bool) monaco_editor_IEditorOption [@@js.get "renderLineHighlightOnlyWhenFocus"]
  val set_renderLineHighlightOnlyWhenFocus: t -> (monaco_editor_EditorOption_renderLineHighlightOnlyWhenFocus, bool) monaco_editor_IEditorOption -> unit [@@js.set "renderLineHighlightOnlyWhenFocus"]
  val get_renderValidationDecorations: t -> (monaco_editor_EditorOption_renderValidationDecorations, ([`L_s20_editable[@js "editable"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "renderValidationDecorations"]
  val set_renderValidationDecorations: t -> (monaco_editor_EditorOption_renderValidationDecorations, ([`L_s20_editable | `L_s54_off | `L_s55_on] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "renderValidationDecorations"]
  val get_renderWhitespace: t -> (monaco_editor_EditorOption_renderWhitespace, ([`L_s1_all[@js "all"] | `L_s11_boundary[@js "boundary"] | `L_s53_none[@js "none"] | `L_s68_selection[@js "selection"] | `L_s76_trailing[@js "trailing"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "renderWhitespace"]
  val set_renderWhitespace: t -> (monaco_editor_EditorOption_renderWhitespace, ([`L_s1_all | `L_s11_boundary | `L_s53_none | `L_s68_selection | `L_s76_trailing] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "renderWhitespace"]
  val get_revealHorizontalRightPadding: t -> (monaco_editor_EditorOption_revealHorizontalRightPadding, float) monaco_editor_IEditorOption [@@js.get "revealHorizontalRightPadding"]
  val set_revealHorizontalRightPadding: t -> (monaco_editor_EditorOption_revealHorizontalRightPadding, float) monaco_editor_IEditorOption -> unit [@@js.set "revealHorizontalRightPadding"]
  val get_roundedSelection: t -> (monaco_editor_EditorOption_roundedSelection, bool) monaco_editor_IEditorOption [@@js.get "roundedSelection"]
  val set_roundedSelection: t -> (monaco_editor_EditorOption_roundedSelection, bool) monaco_editor_IEditorOption -> unit [@@js.set "roundedSelection"]
  val get_rulers: t -> (monaco_editor_EditorOption_rulers, anonymous_interface_0) monaco_editor_IEditorOption [@@js.get "rulers"]
  val set_rulers: t -> (monaco_editor_EditorOption_rulers, anonymous_interface_0) monaco_editor_IEditorOption -> unit [@@js.set "rulers"]
  val get_scrollbar: t -> (monaco_editor_EditorOption_scrollbar, monaco_editor_InternalEditorScrollbarOptions) monaco_editor_IEditorOption [@@js.get "scrollbar"]
  val set_scrollbar: t -> (monaco_editor_EditorOption_scrollbar, monaco_editor_InternalEditorScrollbarOptions) monaco_editor_IEditorOption -> unit [@@js.set "scrollbar"]
  val get_scrollBeyondLastColumn: t -> (monaco_editor_EditorOption_scrollBeyondLastColumn, float) monaco_editor_IEditorOption [@@js.get "scrollBeyondLastColumn"]
  val set_scrollBeyondLastColumn: t -> (monaco_editor_EditorOption_scrollBeyondLastColumn, float) monaco_editor_IEditorOption -> unit [@@js.set "scrollBeyondLastColumn"]
  val get_scrollBeyondLastLine: t -> (monaco_editor_EditorOption_scrollBeyondLastLine, bool) monaco_editor_IEditorOption [@@js.get "scrollBeyondLastLine"]
  val set_scrollBeyondLastLine: t -> (monaco_editor_EditorOption_scrollBeyondLastLine, bool) monaco_editor_IEditorOption -> unit [@@js.set "scrollBeyondLastLine"]
  val get_scrollPredominantAxis: t -> (monaco_editor_EditorOption_scrollPredominantAxis, bool) monaco_editor_IEditorOption [@@js.get "scrollPredominantAxis"]
  val set_scrollPredominantAxis: t -> (monaco_editor_EditorOption_scrollPredominantAxis, bool) monaco_editor_IEditorOption -> unit [@@js.set "scrollPredominantAxis"]
  val get_selectionClipboard: t -> (monaco_editor_EditorOption_selectionClipboard, bool) monaco_editor_IEditorOption [@@js.get "selectionClipboard"]
  val set_selectionClipboard: t -> (monaco_editor_EditorOption_selectionClipboard, bool) monaco_editor_IEditorOption -> unit [@@js.set "selectionClipboard"]
  val get_selectionHighlight: t -> (monaco_editor_EditorOption_selectionHighlight, bool) monaco_editor_IEditorOption [@@js.get "selectionHighlight"]
  val set_selectionHighlight: t -> (monaco_editor_EditorOption_selectionHighlight, bool) monaco_editor_IEditorOption -> unit [@@js.set "selectionHighlight"]
  val get_selectOnLineNumbers: t -> (monaco_editor_EditorOption_selectOnLineNumbers, bool) monaco_editor_IEditorOption [@@js.get "selectOnLineNumbers"]
  val set_selectOnLineNumbers: t -> (monaco_editor_EditorOption_selectOnLineNumbers, bool) monaco_editor_IEditorOption -> unit [@@js.set "selectOnLineNumbers"]
  val get_showFoldingControls: t -> (monaco_editor_EditorOption_showFoldingControls, ([`L_s4_always[@js "always"] | `L_s49_mouseover[@js "mouseover"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "showFoldingControls"]
  val set_showFoldingControls: t -> (monaco_editor_EditorOption_showFoldingControls, ([`L_s4_always | `L_s49_mouseover] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "showFoldingControls"]
  val get_showUnused: t -> (monaco_editor_EditorOption_showUnused, bool) monaco_editor_IEditorOption [@@js.get "showUnused"]
  val set_showUnused: t -> (monaco_editor_EditorOption_showUnused, bool) monaco_editor_IEditorOption -> unit [@@js.set "showUnused"]
  val get_showDeprecated: t -> (monaco_editor_EditorOption_showDeprecated, bool) monaco_editor_IEditorOption [@@js.get "showDeprecated"]
  val set_showDeprecated: t -> (monaco_editor_EditorOption_showDeprecated, bool) monaco_editor_IEditorOption -> unit [@@js.set "showDeprecated"]
  val get_inlineHints: t -> (monaco_editor_EditorOption_inlineHints, any) monaco_editor_IEditorOption [@@js.get "inlineHints"]
  val set_inlineHints: t -> (monaco_editor_EditorOption_inlineHints, any) monaco_editor_IEditorOption -> unit [@@js.set "inlineHints"]
  val get_snippetSuggestions: t -> (monaco_editor_EditorOption_snippetSuggestions, ([`L_s10_bottom[@js "bottom"] | `L_s40_inline[@js "inline"] | `L_s53_none[@js "none"] | `L_s75_top[@js "top"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "snippetSuggestions"]
  val set_snippetSuggestions: t -> (monaco_editor_EditorOption_snippetSuggestions, ([`L_s10_bottom | `L_s40_inline | `L_s53_none | `L_s75_top] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "snippetSuggestions"]
  val get_smartSelect: t -> (monaco_editor_EditorOption_smartSelect, any) monaco_editor_IEditorOption [@@js.get "smartSelect"]
  val set_smartSelect: t -> (monaco_editor_EditorOption_smartSelect, any) monaco_editor_IEditorOption -> unit [@@js.set "smartSelect"]
  val get_smoothScrolling: t -> (monaco_editor_EditorOption_smoothScrolling, bool) monaco_editor_IEditorOption [@@js.get "smoothScrolling"]
  val set_smoothScrolling: t -> (monaco_editor_EditorOption_smoothScrolling, bool) monaco_editor_IEditorOption -> unit [@@js.set "smoothScrolling"]
  val get_stopRenderingLineAfter: t -> (monaco_editor_EditorOption_stopRenderingLineAfter, float) monaco_editor_IEditorOption [@@js.get "stopRenderingLineAfter"]
  val set_stopRenderingLineAfter: t -> (monaco_editor_EditorOption_stopRenderingLineAfter, float) monaco_editor_IEditorOption -> unit [@@js.set "stopRenderingLineAfter"]
  val get_suggest: t -> (monaco_editor_EditorOption_suggest, monaco_editor_InternalSuggestOptions) monaco_editor_IEditorOption [@@js.get "suggest"]
  val set_suggest: t -> (monaco_editor_EditorOption_suggest, monaco_editor_InternalSuggestOptions) monaco_editor_IEditorOption -> unit [@@js.set "suggest"]
  val get_suggestFontSize: t -> (monaco_editor_EditorOption_suggestFontSize, float) monaco_editor_IEditorOption [@@js.get "suggestFontSize"]
  val set_suggestFontSize: t -> (monaco_editor_EditorOption_suggestFontSize, float) monaco_editor_IEditorOption -> unit [@@js.set "suggestFontSize"]
  val get_suggestLineHeight: t -> (monaco_editor_EditorOption_suggestLineHeight, float) monaco_editor_IEditorOption [@@js.get "suggestLineHeight"]
  val set_suggestLineHeight: t -> (monaco_editor_EditorOption_suggestLineHeight, float) monaco_editor_IEditorOption -> unit [@@js.set "suggestLineHeight"]
  val get_suggestOnTriggerCharacters: t -> (monaco_editor_EditorOption_suggestOnTriggerCharacters, bool) monaco_editor_IEditorOption [@@js.get "suggestOnTriggerCharacters"]
  val set_suggestOnTriggerCharacters: t -> (monaco_editor_EditorOption_suggestOnTriggerCharacters, bool) monaco_editor_IEditorOption -> unit [@@js.set "suggestOnTriggerCharacters"]
  val get_suggestSelection: t -> (monaco_editor_EditorOption_suggestSelection, ([`L_s25_first[@js "first"] | `L_s62_recentlyUsed[@js "recentlyUsed"] | `L_s63_recentlyUsedByPrefix[@js "recentlyUsedByPrefix"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "suggestSelection"]
  val set_suggestSelection: t -> (monaco_editor_EditorOption_suggestSelection, ([`L_s25_first | `L_s62_recentlyUsed | `L_s63_recentlyUsedByPrefix] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "suggestSelection"]
  val get_tabCompletion: t -> (monaco_editor_EditorOption_tabCompletion, ([`L_s54_off[@js "off"] | `L_s55_on[@js "on"] | `L_s56_onlySnippets[@js "onlySnippets"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "tabCompletion"]
  val set_tabCompletion: t -> (monaco_editor_EditorOption_tabCompletion, ([`L_s54_off | `L_s55_on | `L_s56_onlySnippets] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "tabCompletion"]
  val get_tabIndex: t -> (monaco_editor_EditorOption_tabIndex, float) monaco_editor_IEditorOption [@@js.get "tabIndex"]
  val set_tabIndex: t -> (monaco_editor_EditorOption_tabIndex, float) monaco_editor_IEditorOption -> unit [@@js.set "tabIndex"]
  val get_unusualLineTerminators: t -> (monaco_editor_EditorOption_unusualLineTerminators, ([`L_s5_auto[@js "auto"] | `L_s54_off[@js "off"] | `L_s59_prompt[@js "prompt"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "unusualLineTerminators"]
  val set_unusualLineTerminators: t -> (monaco_editor_EditorOption_unusualLineTerminators, ([`L_s5_auto | `L_s54_off | `L_s59_prompt] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "unusualLineTerminators"]
  val get_useShadowDOM: t -> (monaco_editor_EditorOption_useShadowDOM, bool) monaco_editor_IEditorOption [@@js.get "useShadowDOM"]
  val set_useShadowDOM: t -> (monaco_editor_EditorOption_useShadowDOM, bool) monaco_editor_IEditorOption -> unit [@@js.set "useShadowDOM"]
  val get_useTabStops: t -> (monaco_editor_EditorOption_useTabStops, bool) monaco_editor_IEditorOption [@@js.get "useTabStops"]
  val set_useTabStops: t -> (monaco_editor_EditorOption_useTabStops, bool) monaco_editor_IEditorOption -> unit [@@js.set "useTabStops"]
  val get_wordSeparators: t -> (monaco_editor_EditorOption_wordSeparators, string) monaco_editor_IEditorOption [@@js.get "wordSeparators"]
  val set_wordSeparators: t -> (monaco_editor_EditorOption_wordSeparators, string) monaco_editor_IEditorOption -> unit [@@js.set "wordSeparators"]
  val get_wordWrap: t -> (monaco_editor_EditorOption_wordWrap, ([`L_s12_bounded[@js "bounded"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"] | `L_s84_wordWrapColumn[@js "wordWrapColumn"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "wordWrap"]
  val set_wordWrap: t -> (monaco_editor_EditorOption_wordWrap, ([`L_s12_bounded | `L_s54_off | `L_s55_on | `L_s84_wordWrapColumn] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "wordWrap"]
  val get_wordWrapBreakAfterCharacters: t -> (monaco_editor_EditorOption_wordWrapBreakAfterCharacters, string) monaco_editor_IEditorOption [@@js.get "wordWrapBreakAfterCharacters"]
  val set_wordWrapBreakAfterCharacters: t -> (monaco_editor_EditorOption_wordWrapBreakAfterCharacters, string) monaco_editor_IEditorOption -> unit [@@js.set "wordWrapBreakAfterCharacters"]
  val get_wordWrapBreakBeforeCharacters: t -> (monaco_editor_EditorOption_wordWrapBreakBeforeCharacters, string) monaco_editor_IEditorOption [@@js.get "wordWrapBreakBeforeCharacters"]
  val set_wordWrapBreakBeforeCharacters: t -> (monaco_editor_EditorOption_wordWrapBreakBeforeCharacters, string) monaco_editor_IEditorOption -> unit [@@js.set "wordWrapBreakBeforeCharacters"]
  val get_wordWrapColumn: t -> (monaco_editor_EditorOption_wordWrapColumn, float) monaco_editor_IEditorOption [@@js.get "wordWrapColumn"]
  val set_wordWrapColumn: t -> (monaco_editor_EditorOption_wordWrapColumn, float) monaco_editor_IEditorOption -> unit [@@js.set "wordWrapColumn"]
  val get_wordWrapOverride1: t -> (monaco_editor_EditorOption_wordWrapOverride1, ([`L_s39_inherit[@js "inherit"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "wordWrapOverride1"]
  val set_wordWrapOverride1: t -> (monaco_editor_EditorOption_wordWrapOverride1, ([`L_s39_inherit | `L_s54_off | `L_s55_on] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "wordWrapOverride1"]
  val get_wordWrapOverride2: t -> (monaco_editor_EditorOption_wordWrapOverride2, ([`L_s39_inherit[@js "inherit"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "wordWrapOverride2"]
  val set_wordWrapOverride2: t -> (monaco_editor_EditorOption_wordWrapOverride2, ([`L_s39_inherit | `L_s54_off | `L_s55_on] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "wordWrapOverride2"]
  val get_wrappingIndent: t -> (monaco_editor_EditorOption_wrappingIndent, monaco_editor_WrappingIndent) monaco_editor_IEditorOption [@@js.get "wrappingIndent"]
  val set_wrappingIndent: t -> (monaco_editor_EditorOption_wrappingIndent, monaco_editor_WrappingIndent) monaco_editor_IEditorOption -> unit [@@js.set "wrappingIndent"]
  val get_wrappingStrategy: t -> (monaco_editor_EditorOption_wrappingStrategy, ([`L_s0_advanced[@js "advanced"] | `L_s69_simple[@js "simple"]] [@js.enum])) monaco_editor_IEditorOption [@@js.get "wrappingStrategy"]
  val set_wrappingStrategy: t -> (monaco_editor_EditorOption_wrappingStrategy, ([`L_s0_advanced | `L_s69_simple] [@js.enum])) monaco_editor_IEditorOption -> unit [@@js.set "wrappingStrategy"]
  val get_editorClassName: t -> (monaco_editor_EditorOption_editorClassName, string) monaco_editor_IEditorOption [@@js.get "editorClassName"]
  val set_editorClassName: t -> (monaco_editor_EditorOption_editorClassName, string) monaco_editor_IEditorOption -> unit [@@js.set "editorClassName"]
  val get_pixelRatio: t -> (monaco_editor_EditorOption_pixelRatio, float) monaco_editor_IEditorOption [@@js.get "pixelRatio"]
  val set_pixelRatio: t -> (monaco_editor_EditorOption_pixelRatio, float) monaco_editor_IEditorOption -> unit [@@js.set "pixelRatio"]
  val get_tabFocusMode: t -> (monaco_editor_EditorOption_tabFocusMode, bool) monaco_editor_IEditorOption [@@js.get "tabFocusMode"]
  val set_tabFocusMode: t -> (monaco_editor_EditorOption_tabFocusMode, bool) monaco_editor_IEditorOption -> unit [@@js.set "tabFocusMode"]
  val get_layoutInfo: t -> (monaco_editor_EditorOption_layoutInfo, monaco_editor_EditorLayoutInfo) monaco_editor_IEditorOption [@@js.get "layoutInfo"]
  val set_layoutInfo: t -> (monaco_editor_EditorOption_layoutInfo, monaco_editor_EditorLayoutInfo) monaco_editor_IEditorOption -> unit [@@js.set "layoutInfo"]
  val get_wrappingInfo: t -> (monaco_editor_EditorOption_wrappingInfo, monaco_editor_EditorWrappingInfo) monaco_editor_IEditorOption [@@js.get "wrappingInfo"]
  val set_wrappingInfo: t -> (monaco_editor_EditorOption_wrappingInfo, monaco_editor_EditorWrappingInfo) monaco_editor_IEditorOption -> unit [@@js.set "wrappingInfo"]
end
module AnonymousInterface3 : sig
  type t = anonymous_interface_3
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_compatibleVendorPrefixes: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "compatibleVendorPrefixes"]
  val get_vendorPrefix: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "vendorPrefix"]
  val get_duplicateProperties: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "duplicateProperties"]
  val get_emptyRules: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "emptyRules"]
  val get_importStatement: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "importStatement"]
  val get_boxModel: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "boxModel"]
  val get_universalSelector: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "universalSelector"]
  val get_zeroUnits: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "zeroUnits"]
  val get_fontFaceProperties: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "fontFaceProperties"]
  val get_hexColorLength: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "hexColorLength"]
  val get_argumentsInColorFunction: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "argumentsInColorFunction"]
  val get_unknownProperties: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "unknownProperties"]
  val get_ieHack: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "ieHack"]
  val get_unknownVendorSpecificProperties: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "unknownVendorSpecificProperties"]
  val get_propertyIgnoredDueToDisplay: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "propertyIgnoredDueToDisplay"]
  val get_important: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "important"]
  val get_float: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "float"]
  val get_idSelector: t -> ([`L_s22_error[@js "error"] | `L_s36_ignore[@js "ignore"] | `L_s83_warning[@js "warning"]] [@js.enum]) [@@js.get "idSelector"]
end
module AnonymousInterface4 : sig
  type t = anonymous_interface_4
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_content: t -> string [@@js.get "content"]
  val set_content: t -> string -> unit [@@js.set "content"]
  val get_filePath: t -> string [@@js.get "filePath"]
  val set_filePath: t -> string -> unit [@@js.set "filePath"]
end
module AnonymousInterface5 : sig
  type t = anonymous_interface_5
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_docComment: t -> monaco_languages_IDocComment [@@js.get "docComment"]
  val set_docComment: t -> monaco_languages_IDocComment -> unit [@@js.set "docComment"]
end
module AnonymousInterface6 : sig
  type t = anonymous_interface_6
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_fileName: t -> string [@@js.get "fileName"]
  val set_fileName: t -> string -> unit [@@js.set "fileName"]
end
module AnonymousInterface7 : sig
  type t = anonymous_interface_7
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_insert: t -> monaco_IRange [@@js.get "insert"]
  val set_insert: t -> monaco_IRange -> unit [@@js.set "insert"]
  val get_replace: t -> monaco_IRange [@@js.get "replace"]
  val set_replace: t -> monaco_IRange -> unit [@@js.set "replace"]
end
module AnonymousInterface8 : sig
  type t = anonymous_interface_8
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_model: t -> monaco_editor_ITextModel [@@js.get "model"]
  val get_oldLanguage: t -> string [@@js.get "oldLanguage"]
end
module AnonymousInterface9 : sig
  type t = anonymous_interface_9
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
module AnonymousInterface10 : sig
  type t = anonymous_interface_10
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
module AnonymousInterface11 : sig
  type t = anonymous_interface_11
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
module AnonymousInterface12 : sig
  type t = anonymous_interface_12
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
module AnonymousInterface13 : sig
  type t = anonymous_interface_13
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_scheme: t -> string [@@js.get "scheme"]
  val set_scheme: t -> string -> unit [@@js.set "scheme"]
  val get_authority: t -> string or_null [@@js.get "authority"]
  val set_authority: t -> string or_null -> unit [@@js.set "authority"]
  val get_path: t -> string or_null [@@js.get "path"]
  val set_path: t -> string or_null -> unit [@@js.set "path"]
  val get_query: t -> string or_null [@@js.get "query"]
  val set_query: t -> string or_null -> unit [@@js.set "query"]
  val get_fragment: t -> string or_null [@@js.get "fragment"]
  val set_fragment: t -> string or_null -> unit [@@js.set "fragment"]
end
module AnonymousInterface14 : sig
  type t = anonymous_interface_14
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
module AnonymousInterface15 : sig
  type t = anonymous_interface_15
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get_value: t -> string [@@js.get "value"]
  val set_value: t -> string -> unit [@@js.set "value"]
  val get_target: t -> monaco_Uri [@@js.get "target"]
  val set_target: t -> monaco_Uri -> unit [@@js.set "target"]
end
module AnonymousInterface16 : sig
  type t = anonymous_interface_16
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> string -> string [@@js.index_get]
  val set: t -> string -> string -> unit [@@js.index_set]
end
module AnonymousInterface17 : sig
  type t = anonymous_interface_17
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> string -> monaco_UriComponents [@@js.index_get]
  val set: t -> string -> monaco_UriComponents -> unit [@@js.index_set]
end
module AnonymousInterface18 : sig
  type t = anonymous_interface_18
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> string -> any [@@js.index_get]
  val set: t -> string -> any -> unit [@@js.index_set]
end
module AnonymousInterface19 : sig
  type t = anonymous_interface_19
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val get: t -> string -> monaco_languages_IMonarchLanguageRule list [@@js.index_get]
  val set: t -> string -> monaco_languages_IMonarchLanguageRule list -> unit [@@js.index_set]
end
module AnonymousInterface20 : sig
  type t = anonymous_interface_20
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  (** The URI of the schema, which is also the identifier of the schema. *)
  val get_uri: t -> string [@@js.get "uri"]
  (**
    A list of glob patterns that describe for which file URIs the JSON schema will be used.
    '*' and '**' wildcards are supported. Exclusion patterns start with '!'.
    For example '*.schema.json', 'package.json', '!foo*.schema.json', 'foo/**\/BADRESP.json'.
    A match succeeds when there is at least one pattern matching and last matching pattern does not start with '!'.
  *)
  val get_fileMatch: t -> string list [@@js.get "fileMatch"]
  (** The schema for the given URI. *)
  val get_schema: t -> any [@@js.get "schema"]
end
val monacoEnvironment: monaco_Environment or_undefined [@@js.global "MonacoEnvironment"]
module[@js.scope "monaco"] Monaco : sig
  module Thenable : sig
    type 'T t = 'T monaco_Thenable
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
  end
  module[@js.scope "Environment"] Environment : sig
    type t = monaco_Environment
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_globalAPI: t -> bool [@@js.get "globalAPI"]
    val set_globalAPI: t -> bool -> unit [@@js.set "globalAPI"]
    val get_baseUrl: t -> string [@@js.get "baseUrl"]
    val set_baseUrl: t -> string -> unit [@@js.set "baseUrl"]
    val getWorker: t -> workerId:string -> label:string -> Worker.t_0 [@@js.call "getWorker"]
    val getWorkerUrl: t -> workerId:string -> label:string -> string [@@js.call "getWorkerUrl"]
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
  (** A helper that allows to emit and listen to typed events *)
  module[@js.scope "Emitter"] Emitter : sig
    type 'T t = 'T monaco_Emitter
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val create: unit -> 'T t [@@js.create]
    val get_event: 'T t -> 'T monaco_IEvent [@@js.get "event"]
    val fire: 'T t -> event:'T -> unit [@@js.call "fire"]
    val dispose: 'T t -> unit [@@js.call "dispose"]
  end
  module MarkerTag : sig
    type t = monaco_MarkerTag
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MarkerSeverity : sig
    type t = monaco_MarkerSeverity
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "CancellationTokenSource"] CancellationTokenSource : sig
    type t = monaco_CancellationTokenSource
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: ?parent:monaco_CancellationToken -> unit -> t [@@js.create]
    val get_token: t -> monaco_CancellationToken [@@js.get "token"]
    val cancel: t -> unit [@@js.call "cancel"]
    val dispose: t -> ?cancel:bool -> unit -> unit [@@js.call "dispose"]
  end
  module[@js.scope "CancellationToken"] CancellationToken : sig
    type t = monaco_CancellationToken
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** A flag signalling is cancellation has been requested. *)
    val get_isCancellationRequested: t -> bool [@@js.get "isCancellationRequested"]
    (**
      An event which fires when cancellation is requested. This event
      only ever fires `once` as cancellation can only happen once. Listeners
      that are registered after cancellation will be called (next event loop run),
      but also only once.
      event: 
    *)
    val onCancellationRequested: t -> listener:(e:any -> any) -> ?thisArgs:any -> ?disposables:monaco_IDisposable list -> unit -> monaco_IDisposable [@@js.call "onCancellationRequested"]
  end
  (**
    Uniform Resource Identifier (Uri) http://tools.ietf.org/html/rfc3986.
    This class is a simple parser which creates the basic component parts
    (http://tools.ietf.org/html/rfc3986#section-3) with minimal validation
    and encoding.
    
    ```txt
          foo://example.com:8042/over/there?name=ferret#nose
          \_/   \______________/\_________/ \_________/ \__/
           |           |            |            |        |
        scheme     authority       path        query   fragment
           |   _____________________|__
          / \ /                        \
          urn:example:animal:ferret:nose
    ```
  *)
  module[@js.scope "Uri"] Uri : sig
    type t = monaco_Uri
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val isUri: thing:any -> bool [@@js.global "isUri"]
    (**
      scheme is the 'http' part of 'http://www.msft.com/some/path?query#fragment'.
      The part before the first colon.
    *)
    val get_scheme: t -> string [@@js.get "scheme"]
    (**
      authority is the 'www.msft.com' part of 'http://www.msft.com/some/path?query#fragment'.
      The part between the first double slashes and the next slash.
    *)
    val get_authority: t -> string [@@js.get "authority"]
    (** path is the '/some/path' part of 'http://www.msft.com/some/path?query#fragment'. *)
    val get_path: t -> string [@@js.get "path"]
    (** query is the 'query' part of 'http://www.msft.com/some/path?query#fragment'. *)
    val get_query: t -> string [@@js.get "query"]
    (** fragment is the 'fragment' part of 'http://www.msft.com/some/path?query#fragment'. *)
    val get_fragment: t -> string [@@js.get "fragment"]
    (**
      Returns a string representing the corresponding file system path of this Uri.
      Will handle UNC paths, normalizes windows drive letters to lower-case, and uses the
      platform specific path separator.
      
      * Will *not* validate the path for invalid characters and semantics.
      * Will *not* look at the scheme of this Uri.
      * The result shall *not* be used for display purposes but for accessing a file on disk.
      
      
      The *difference* to `Uri#path` is the use of the platform specific separator and the handling
      of UNC paths. See the below sample of a file-uri with an authority (UNC path).
      
      ```ts
       const u = Uri.parse('file://server/c$/folder/file.txt')
       u.authority === 'server'
       u.path === '/shares/c$/file.txt'
       u.fsPath === '\\server\c$\folder\file.txt'
      ```
      
      Using `Uri#path` to read a file (using fs-apis) would not be enough because parts of the path,
      namely the server name, would be missing. Therefore `Uri#fsPath` exists - it's sugar to ease working
      with URIs that represent files on disk (`file` scheme).
    *)
    val get_fsPath: t -> string [@@js.get "fsPath"]
    val with_: t -> change:anonymous_interface_13 -> t [@@js.call "with"]
    (**
      Creates a new Uri from a string, e.g. `http://www.msft.com/some/path`,
      `file:///usr/home`, or `scheme:with/path`.
      @param value A string which represents an Uri (see `Uri#toString`).
    *)
    val parse: value:string -> ?_strict:bool -> unit -> t [@@js.global "parse"]
    (**
      Creates a new Uri from a file system path, e.g. `c:\my\files`,
      `/usr/home`, or `\\server\share\some\path`.
      
      The *difference* between `Uri#parse` and `Uri#file` is that the latter treats the argument
      as path, not as stringified-uri. E.g. `Uri.file(path)` is **not the same as**
      `Uri.parse('file://' + path)` because the path might contain characters that are
      interpreted (# and ?). See the following sample:
      ```ts
      const good = Uri.file('/coding/c#/project1');
      good.scheme === 'file';
      good.path === '/coding/c#/project1';
      good.fragment === '';
      const bad = Uri.parse('file://' + '/coding/c#/project1');
      bad.scheme === 'file';
      bad.path === '/coding/c'; // path is now broken
      bad.fragment === '/project1';
      ```
      @param path A file system path (see `Uri#fsPath`)
    *)
    val file: path:string -> t [@@js.global "file"]
    val from: components:anonymous_interface_12 -> t [@@js.global "from"]
    (**
      Join a Uri path with path fragments and normalizes the resulting path.
      @param uri The input Uri.
      @param pathFragment The path fragment to add to the Uri path.
      @return The resulting Uri.
    *)
    val joinPath: uri:t -> pathFragment:(string list [@js.variadic]) -> t [@@js.global "joinPath"]
    (**
      Creates a string representation for this Uri. It's guaranteed that calling
      `Uri.parse` with the result of this function creates an Uri which is equal
      to this Uri.
      
      * The result shall *not* be used for display purposes but for externalization or transport.
      * The result will be encoded using the percentage encoding and encoding happens mostly
      ignore the scheme-specific encoding rules.
      @param skipEncoding Do not encode the result, default is `false`
    *)
    val toString: t -> ?skipEncoding:bool -> unit -> string [@@js.call "toString"]
    val toJSON: t -> monaco_UriComponents [@@js.call "toJSON"]
    val revive: data:(t, monaco_UriComponents) union2 -> t [@@js.global "revive"]
    val revive': data:(t, monaco_UriComponents) union2 or_undefined -> t or_undefined [@@js.global "revive"]
    val revive'': data:(t, monaco_UriComponents) union2 or_null -> t or_null [@@js.global "revive"]
    val revive''': data:(t, monaco_UriComponents) union2 or_null_or_undefined -> t or_null_or_undefined [@@js.global "revive"]
    val cast: t -> monaco_UriComponents [@@js.cast]
  end
  module[@js.scope "UriComponents"] UriComponents : sig
    type t = monaco_UriComponents
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
  (**
    Virtual Key Codes, the value does not hold any inherent meaning.
    Inspired somewhat from https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731(v=vs.85).aspx
    But these are "more general", as they should work across browsers & OS`s.
  *)
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
  module[@js.scope "IMarkdownString"] IMarkdownString : sig
    type t = monaco_IMarkdownString
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_value: t -> string [@@js.get "value"]
    val get_isTrusted: t -> bool [@@js.get "isTrusted"]
    val get_supportThemeIcons: t -> bool [@@js.get "supportThemeIcons"]
    val get_uris: t -> anonymous_interface_17 [@@js.get "uris"]
    val set_uris: t -> anonymous_interface_17 -> unit [@@js.set "uris"]
  end
  module[@js.scope "IKeyboardEvent"] IKeyboardEvent : sig
    type t = monaco_IKeyboardEvent
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__standardKeyboardEventBrand: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "_standardKeyboardEventBrand"]
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
    val get_buttons: t -> float [@@js.get "buttons"]
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
  (** A position in the editor. This interface is suitable for serialization. *)
  module[@js.scope "IPosition"] IPosition : sig
    type t = monaco_IPosition
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** line number (starts at 1) *)
    val get_lineNumber: t -> float [@@js.get "lineNumber"]
    (** column (the first character in a line is between column 1 and column 2) *)
    val get_column: t -> float [@@js.get "column"]
  end
  (** A position in the editor. *)
  module[@js.scope "Position"] Position : sig
    type t = monaco_Position
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** line number (starts at 1) *)
    val get_lineNumber: t -> float [@@js.get "lineNumber"]
    (** column (the first character in a line is between column 1 and column 2) *)
    val get_column: t -> float [@@js.get "column"]
    val create: lineNumber:float -> column:float -> t [@@js.create]
    (**
      Create a new position from this position.
      @param newLineNumber new line number
      @param newColumn new column
    *)
    val with_: t -> ?newLineNumber:float -> ?newColumn:float -> unit -> t [@@js.call "with"]
    (**
      Derive a new position from this position.
      @param deltaLineNumber line number delta
      @param deltaColumn column delta
    *)
    val delta: t -> ?deltaLineNumber:float -> ?deltaColumn:float -> unit -> t [@@js.call "delta"]
    (** Test if this position equals other position *)
    val equals: t -> other:monaco_IPosition -> bool [@@js.call "equals"]
    (** Test if position `a` equals position `b` *)
    val equals': a:monaco_IPosition or_null -> b:monaco_IPosition or_null -> bool [@@js.global "equals"]
    (**
      Test if this position is before other position.
      If the two positions are equal, the result will be false.
    *)
    val isBefore: t -> other:monaco_IPosition -> bool [@@js.call "isBefore"]
    (**
      Test if position `a` is before position `b`.
      If the two positions are equal, the result will be false.
    *)
    val isBefore': a:monaco_IPosition -> b:monaco_IPosition -> bool [@@js.global "isBefore"]
    (**
      Test if this position is before other position.
      If the two positions are equal, the result will be true.
    *)
    val isBeforeOrEqual: t -> other:monaco_IPosition -> bool [@@js.call "isBeforeOrEqual"]
    (**
      Test if position `a` is before position `b`.
      If the two positions are equal, the result will be true.
    *)
    val isBeforeOrEqual': a:monaco_IPosition -> b:monaco_IPosition -> bool [@@js.global "isBeforeOrEqual"]
    (** A function that compares positions, useful for sorting *)
    val compare: a:monaco_IPosition -> b:monaco_IPosition -> float [@@js.global "compare"]
    (** Clone this position. *)
    val clone: t -> t [@@js.call "clone"]
    (** Convert to a human-readable representation. *)
    val toString: t -> string [@@js.call "toString"]
    (** Create a `Position` from an `IPosition`. *)
    val lift: pos:monaco_IPosition -> t [@@js.global "lift"]
    (** Test if `obj` is an `IPosition`. *)
    val isIPosition: obj:any -> bool [@@js.global "isIPosition"]
  end
  (** A range in the editor. This interface is suitable for serialization. *)
  module[@js.scope "IRange"] IRange : sig
    type t = monaco_IRange
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** Line number on which the range starts (starts at 1). *)
    val get_startLineNumber: t -> float [@@js.get "startLineNumber"]
    (** Column on which the range starts in line `startLineNumber` (starts at 1). *)
    val get_startColumn: t -> float [@@js.get "startColumn"]
    (** Line number on which the range ends. *)
    val get_endLineNumber: t -> float [@@js.get "endLineNumber"]
    (** Column on which the range ends in line `endLineNumber`. *)
    val get_endColumn: t -> float [@@js.get "endColumn"]
  end
  (** A range in the editor. (startLineNumber,startColumn) is <= (endLineNumber,endColumn) *)
  module[@js.scope "Range"] Range : sig
    type t = monaco_Range
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** Line number on which the range starts (starts at 1). *)
    val get_startLineNumber: t -> float [@@js.get "startLineNumber"]
    (** Column on which the range starts in line `startLineNumber` (starts at 1). *)
    val get_startColumn: t -> float [@@js.get "startColumn"]
    (** Line number on which the range ends. *)
    val get_endLineNumber: t -> float [@@js.get "endLineNumber"]
    (** Column on which the range ends in line `endLineNumber`. *)
    val get_endColumn: t -> float [@@js.get "endColumn"]
    val create: startLineNumber:float -> startColumn:float -> endLineNumber:float -> endColumn:float -> t [@@js.create]
    (** Test if this range is empty. *)
    val isEmpty: t -> bool [@@js.call "isEmpty"]
    (** Test if `range` is empty. *)
    val isEmpty': range:monaco_IRange -> bool [@@js.global "isEmpty"]
    (** Test if position is in this range. If the position is at the edges, will return true. *)
    val containsPosition: t -> position:monaco_IPosition -> bool [@@js.call "containsPosition"]
    (** Test if `position` is in `range`. If the position is at the edges, will return true. *)
    val containsPosition': range:monaco_IRange -> position:monaco_IPosition -> bool [@@js.global "containsPosition"]
    (** Test if range is in this range. If the range is equal to this range, will return true. *)
    val containsRange: t -> range:monaco_IRange -> bool [@@js.call "containsRange"]
    (** Test if `otherRange` is in `range`. If the ranges are equal, will return true. *)
    val containsRange': range:monaco_IRange -> otherRange:monaco_IRange -> bool [@@js.global "containsRange"]
    (** Test if `range` is strictly in this range. `range` must start after and end before this range for the result to be true. *)
    val strictContainsRange: t -> range:monaco_IRange -> bool [@@js.call "strictContainsRange"]
    (** Test if `otherRange` is strinctly in `range` (must start after, and end before). If the ranges are equal, will return false. *)
    val strictContainsRange': range:monaco_IRange -> otherRange:monaco_IRange -> bool [@@js.global "strictContainsRange"]
    (**
      A reunion of the two ranges.
      The smallest position will be used as the start point, and the largest one as the end point.
    *)
    val plusRange: t -> range:monaco_IRange -> t [@@js.call "plusRange"]
    (**
      A reunion of the two ranges.
      The smallest position will be used as the start point, and the largest one as the end point.
    *)
    val plusRange': a:monaco_IRange -> b:monaco_IRange -> t [@@js.global "plusRange"]
    (** A intersection of the two ranges. *)
    val intersectRanges: t -> range:monaco_IRange -> t or_null [@@js.call "intersectRanges"]
    (** A intersection of the two ranges. *)
    val intersectRanges': a:monaco_IRange -> b:monaco_IRange -> t or_null [@@js.global "intersectRanges"]
    (** Test if this range equals other. *)
    val equalsRange: t -> other:monaco_IRange or_null -> bool [@@js.call "equalsRange"]
    (** Test if range `a` equals `b`. *)
    val equalsRange': a:monaco_IRange or_null -> b:monaco_IRange or_null -> bool [@@js.global "equalsRange"]
    (** Return the end position (which will be after or equal to the start position) *)
    val getEndPosition: t -> monaco_Position [@@js.call "getEndPosition"]
    (** Return the end position (which will be after or equal to the start position) *)
    val getEndPosition': range:monaco_IRange -> monaco_Position [@@js.global "getEndPosition"]
    (** Return the start position (which will be before or equal to the end position) *)
    val getStartPosition: t -> monaco_Position [@@js.call "getStartPosition"]
    (** Return the start position (which will be before or equal to the end position) *)
    val getStartPosition': range:monaco_IRange -> monaco_Position [@@js.global "getStartPosition"]
    (** Transform to a user presentable string representation. *)
    val toString: t -> string [@@js.call "toString"]
    (** Create a new range using this range's start position, and using endLineNumber and endColumn as the end position. *)
    val setEndPosition: t -> endLineNumber:float -> endColumn:float -> t [@@js.call "setEndPosition"]
    (** Create a new range using this range's end position, and using startLineNumber and startColumn as the start position. *)
    val setStartPosition: t -> startLineNumber:float -> startColumn:float -> t [@@js.call "setStartPosition"]
    (** Create a new empty range using this range's start position. *)
    val collapseToStart: t -> t [@@js.call "collapseToStart"]
    (** Create a new empty range using this range's start position. *)
    val collapseToStart': range:monaco_IRange -> t [@@js.global "collapseToStart"]
    val fromPositions: start:monaco_IPosition -> ?end_:monaco_IPosition -> unit -> t [@@js.global "fromPositions"]
    (** Create a `Range` from an `IRange`. *)
    val lift: range:never or_null_or_undefined -> never or_null [@@js.global "lift"]
    (** Create a `Range` from an `IRange`. *)
    val lift': range:monaco_IRange -> t [@@js.global "lift"]
    (** Test if `obj` is an `IRange`. *)
    val isIRange: obj:any -> bool [@@js.global "isIRange"]
    (** Test if the two ranges are touching in any way. *)
    val areIntersectingOrTouching: a:monaco_IRange -> b:monaco_IRange -> bool [@@js.global "areIntersectingOrTouching"]
    (** Test if the two ranges are intersecting. If the ranges are touching it returns true. *)
    val areIntersecting: a:monaco_IRange -> b:monaco_IRange -> bool [@@js.global "areIntersecting"]
    (**
      A function that compares ranges, useful for sorting ranges
      It will first compare ranges on the startPosition and then on the endPosition
    *)
    val compareRangesUsingStarts: a:monaco_IRange or_null_or_undefined -> b:monaco_IRange or_null_or_undefined -> float [@@js.global "compareRangesUsingStarts"]
    (**
      A function that compares ranges, useful for sorting ranges
      It will first compare ranges on the endPosition and then on the startPosition
    *)
    val compareRangesUsingEnds: a:monaco_IRange -> b:monaco_IRange -> float [@@js.global "compareRangesUsingEnds"]
    (** Test if the range spans multiple lines. *)
    val spansMultipleLines: range:monaco_IRange -> bool [@@js.global "spansMultipleLines"]
  end
  (**
    A selection in the editor.
    The selection is a range that has an orientation.
  *)
  module[@js.scope "ISelection"] ISelection : sig
    type t = monaco_ISelection
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** The line number on which the selection has started. *)
    val get_selectionStartLineNumber: t -> float [@@js.get "selectionStartLineNumber"]
    (** The column on `selectionStartLineNumber` where the selection has started. *)
    val get_selectionStartColumn: t -> float [@@js.get "selectionStartColumn"]
    (** The line number on which the selection has ended. *)
    val get_positionLineNumber: t -> float [@@js.get "positionLineNumber"]
    (** The column on `positionLineNumber` where the selection has ended. *)
    val get_positionColumn: t -> float [@@js.get "positionColumn"]
  end
  (**
    A selection in the editor.
    The selection is a range that has an orientation.
  *)
  module[@js.scope "Selection"] Selection : sig
    type t = monaco_Selection
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    (** The line number on which the selection has started. *)
    val get_selectionStartLineNumber: t -> float [@@js.get "selectionStartLineNumber"]
    (** The column on `selectionStartLineNumber` where the selection has started. *)
    val get_selectionStartColumn: t -> float [@@js.get "selectionStartColumn"]
    (** The line number on which the selection has ended. *)
    val get_positionLineNumber: t -> float [@@js.get "positionLineNumber"]
    (** The column on `positionLineNumber` where the selection has ended. *)
    val get_positionColumn: t -> float [@@js.get "positionColumn"]
    val create: selectionStartLineNumber:float -> selectionStartColumn:float -> positionLineNumber:float -> positionColumn:float -> t [@@js.create]
    (** Transform to a human-readable representation. *)
    val toString: t -> string [@@js.call "toString"]
    (** Test if equals other selection. *)
    val equalsSelection: t -> other:monaco_ISelection -> bool [@@js.call "equalsSelection"]
    (** Test if the two selections are equal. *)
    val selectionsEqual: a:monaco_ISelection -> b:monaco_ISelection -> bool [@@js.global "selectionsEqual"]
    (** Get directions (LTR or RTL). *)
    val getDirection: t -> monaco_SelectionDirection [@@js.call "getDirection"]
    (** Create a new selection with a different `positionLineNumber` and `positionColumn`. *)
    val setEndPosition: t -> endLineNumber:float -> endColumn:float -> t [@@js.call "setEndPosition"]
    (** Get the position at `positionLineNumber` and `positionColumn`. *)
    val getPosition: t -> monaco_Position [@@js.call "getPosition"]
    (** Create a new selection with a different `selectionStartLineNumber` and `selectionStartColumn`. *)
    val setStartPosition: t -> startLineNumber:float -> startColumn:float -> t [@@js.call "setStartPosition"]
    (** Create a `Selection` from one or two positions *)
    val fromPositions: start:monaco_IPosition -> ?end_:monaco_IPosition -> unit -> t [@@js.global "fromPositions"]
    (** Create a `Selection` from an `ISelection`. *)
    val liftSelection: sel:monaco_ISelection -> t [@@js.global "liftSelection"]
    (** `a` equals `b`. *)
    val selectionsArrEqual: a:monaco_ISelection list -> b:monaco_ISelection list -> bool [@@js.global "selectionsArrEqual"]
    (** Test if `obj` is an `ISelection`. *)
    val isISelection: obj:any -> bool [@@js.global "isISelection"]
    (** Create with a direction. *)
    val createWithDirection: startLineNumber:float -> startColumn:float -> endLineNumber:float -> endColumn:float -> direction:monaco_SelectionDirection -> t [@@js.global "createWithDirection"]
    val cast: t -> monaco_Range [@@js.cast]
  end
  (** The direction of a selection. *)
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
    module[@js.scope "IDiffNavigator"] IDiffNavigator : sig
      type t = monaco_editor_IDiffNavigator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val canNavigate: t -> bool [@@js.call "canNavigate"]
      val next: t -> unit [@@js.call "next"]
      val previous: t -> unit [@@js.call "previous"]
      val dispose: t -> unit [@@js.call "dispose"]
    end
    (**
      Create a new editor under `domElement`.
      `domElement` should be empty (not contain other dom nodes).
      The editor will read the size of `domElement`.
    *)
    val create_: domElement:HTMLElement.t_0 -> ?options:monaco_editor_IStandaloneEditorConstructionOptions -> ?override:monaco_editor_IEditorOverrideServices -> unit -> monaco_editor_IStandaloneCodeEditor [@@js.global "create"]
    (**
      Emitted when an editor is created.
      Creating a diff editor might cause this listener to be invoked with the two editors.
      event: 
    *)
    val onDidCreateEditor: listener:(codeEditor:monaco_editor_ICodeEditor -> unit) -> monaco_IDisposable [@@js.global "onDidCreateEditor"]
    (**
      Create a new diff editor under `domElement`.
      `domElement` should be empty (not contain other dom nodes).
      The editor will read the size of `domElement`.
    *)
    val createDiffEditor: domElement:HTMLElement.t_0 -> ?options:monaco_editor_IDiffEditorConstructionOptions -> ?override:monaco_editor_IEditorOverrideServices -> unit -> monaco_editor_IStandaloneDiffEditor [@@js.global "createDiffEditor"]
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
    (**
      Create a new editor model.
      You can specify the language that should be set for this model or let the language be inferred from the `uri`.
    *)
    val createModel: value:string -> ?language:string -> ?uri:monaco_Uri -> unit -> monaco_editor_ITextModel [@@js.global "createModel"]
    (** Change the language for a model. *)
    val setModelLanguage: model:monaco_editor_ITextModel -> languageId:string -> unit [@@js.global "setModelLanguage"]
    (** Set the markers for a model. *)
    val setModelMarkers: model:monaco_editor_ITextModel -> owner:string -> markers:monaco_editor_IMarkerData list -> unit [@@js.global "setModelMarkers"]
    (**
      Get markers for owner and/or resource
      @return list of markers
    *)
    val getModelMarkers: filter:anonymous_interface_9 -> monaco_editor_IMarker list [@@js.global "getModelMarkers"]
    (**
      Emitted when markers change for a model.
      event: 
    *)
    val onDidChangeMarkers: listener:(e:monaco_Uri list -> unit) -> monaco_IDisposable [@@js.global "onDidChangeMarkers"]
    (** Get the model that has `uri` if it exists. *)
    val getModel: uri:monaco_Uri -> monaco_editor_ITextModel or_null [@@js.global "getModel"]
    (** Get all the created models. *)
    val getModels: unit -> monaco_editor_ITextModel list [@@js.global "getModels"]
    (**
      Emitted when a model is created.
      event: 
    *)
    val onDidCreateModel: listener:(model:monaco_editor_ITextModel -> unit) -> monaco_IDisposable [@@js.global "onDidCreateModel"]
    (**
      Emitted right before a model is disposed.
      event: 
    *)
    val onWillDisposeModel: listener:(model:monaco_editor_ITextModel -> unit) -> monaco_IDisposable [@@js.global "onWillDisposeModel"]
    (**
      Emitted when a different language is set to a model.
      event: 
    *)
    val onDidChangeModelLanguage: listener:(e:anonymous_interface_8 -> unit) -> monaco_IDisposable [@@js.global "onDidChangeModelLanguage"]
    (**
      Create a new web worker that has model syncing capabilities built in.
      Specify an AMD module to load that will `create` an object that will be proxied.
    *)
    val createWebWorker: opts:monaco_editor_IWebWorkerOptions -> 'T monaco_editor_MonacoWebWorker [@@js.global "createWebWorker"]
    (** Colorize the contents of `domNode` using attribute `data-lang`. *)
    val colorizeElement: domNode:HTMLElement.t_0 -> options:monaco_editor_IColorizerElementOptions -> unit Promise.t_1 [@@js.global "colorizeElement"]
    (** Colorize `text` using language `languageId`. *)
    val colorize: text:string -> languageId:string -> options:monaco_editor_IColorizerOptions -> string Promise.t_1 [@@js.global "colorize"]
    (** Colorize a line in a model. *)
    val colorizeModelLine: model:monaco_editor_ITextModel -> lineNumber:float -> ?tabSize:float -> unit -> string [@@js.global "colorizeModelLine"]
    (** Tokenize `text` using language `languageId` *)
    val tokenize: text:string -> languageId:string -> monaco_Token list list [@@js.global "tokenize"]
    (** Define a new theme or update an existing theme. *)
    val defineTheme: themeName:string -> themeData:monaco_editor_IStandaloneThemeData -> unit [@@js.global "defineTheme"]
    (** Switches to a theme. *)
    val setTheme: themeName:string -> unit [@@js.global "setTheme"]
    (** Clears all cached font measurements and triggers re-measurement. *)
    val remeasureFonts: unit -> unit [@@js.global "remeasureFonts"]
    (** Register a command. *)
    val registerCommand: id:string -> handler:(accessor:any -> args:(any list [@js.variadic]) -> unit) -> monaco_IDisposable [@@js.global "registerCommand"]
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
      val get_encodedTokensColors: t -> string list [@@js.get "encodedTokensColors"]
      val set_encodedTokensColors: t -> string list -> unit [@@js.set "encodedTokensColors"]
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
    (** A web worker that can provide a proxy to an arbitrary file. *)
    module[@js.scope "MonacoWebWorker"] MonacoWebWorker : sig
      type 'T t = 'T monaco_editor_MonacoWebWorker
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      (** Terminate the web worker, thus invalidating the returned proxy. *)
      val dispose: 'T t -> unit [@@js.call "dispose"]
      (** Get a proxy to the arbitrary loaded code. *)
      val getProxy: 'T t -> 'T Promise.t_1 [@@js.call "getProxy"]
      (**
        Synchronize (send) the models at `resources` to the web worker,
        making them available in the monaco.worker.getMirrorModels().
      *)
      val withSyncedResources: 'T t -> resources:monaco_Uri list -> 'T Promise.t_1 [@@js.call "withSyncedResources"]
    end
    module[@js.scope "IWebWorkerOptions"] IWebWorkerOptions : sig
      type t = monaco_editor_IWebWorkerOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The AMD moduleId to load.
        It should export a function `create` that should return the exported proxy.
      *)
      (**
        The AMD moduleId to load.
        It should export a function `create` that should return the exported proxy.
      *)
      val get_moduleId: t -> string [@@js.get "moduleId"]
      (**
        The AMD moduleId to load.
        It should export a function `create` that should return the exported proxy.
      *)
      val set_moduleId: t -> string -> unit [@@js.set "moduleId"]
      (** The data to send over when calling create on the module. *)
      (** The data to send over when calling create on the module. *)
      val get_createData: t -> any [@@js.get "createData"]
      (** The data to send over when calling create on the module. *)
      val set_createData: t -> any -> unit [@@js.set "createData"]
      (** A label to be used to identify the web worker for debugging purposes. *)
      (** A label to be used to identify the web worker for debugging purposes. *)
      val get_label: t -> string [@@js.get "label"]
      (** A label to be used to identify the web worker for debugging purposes. *)
      val set_label: t -> string -> unit [@@js.set "label"]
      (** An object that can be used by the web worker to make calls back to the main thread. *)
      (** An object that can be used by the web worker to make calls back to the main thread. *)
      val get_host: t -> any [@@js.get "host"]
      (** An object that can be used by the web worker to make calls back to the main thread. *)
      val set_host: t -> any -> unit [@@js.set "host"]
      (**
        Keep idle models.
        Defaults to false, which means that idle models will stop syncing after a while.
      *)
      (**
        Keep idle models.
        Defaults to false, which means that idle models will stop syncing after a while.
      *)
      val get_keepIdleModels: t -> bool [@@js.get "keepIdleModels"]
      (**
        Keep idle models.
        Defaults to false, which means that idle models will stop syncing after a while.
      *)
      val set_keepIdleModels: t -> bool -> unit [@@js.set "keepIdleModels"]
    end
    (** Description of an action contribution *)
    module[@js.scope "IActionDescriptor"] IActionDescriptor : sig
      type t = monaco_editor_IActionDescriptor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** An unique identifier of the contributed action. *)
      (** An unique identifier of the contributed action. *)
      val get_id: t -> string [@@js.get "id"]
      (** An unique identifier of the contributed action. *)
      val set_id: t -> string -> unit [@@js.set "id"]
      (** A label of the action that will be presented to the user. *)
      (** A label of the action that will be presented to the user. *)
      val get_label: t -> string [@@js.get "label"]
      (** A label of the action that will be presented to the user. *)
      val set_label: t -> string -> unit [@@js.set "label"]
      (** Precondition rule. *)
      (** Precondition rule. *)
      val get_precondition: t -> string [@@js.get "precondition"]
      (** Precondition rule. *)
      val set_precondition: t -> string -> unit [@@js.set "precondition"]
      (** An array of keybindings for the action. *)
      (** An array of keybindings for the action. *)
      val get_keybindings: t -> float list [@@js.get "keybindings"]
      (** An array of keybindings for the action. *)
      val set_keybindings: t -> float list -> unit [@@js.set "keybindings"]
      (** The keybinding rule (condition on top of precondition). *)
      (** The keybinding rule (condition on top of precondition). *)
      val get_keybindingContext: t -> string [@@js.get "keybindingContext"]
      (** The keybinding rule (condition on top of precondition). *)
      val set_keybindingContext: t -> string -> unit [@@js.set "keybindingContext"]
      (**
        Control if the action should show up in the context menu and where.
        The context menu of the editor has these default:
          navigation - The navigation group comes first in all cases.
          1_modification - This group comes next and contains commands that modify your code.
          9_cutcopypaste - The last default group with the basic editing commands.
        You can also create your own group.
        Defaults to null (don't show in context menu).
      *)
      (**
        Control if the action should show up in the context menu and where.
        The context menu of the editor has these default:
          navigation - The navigation group comes first in all cases.
          1_modification - This group comes next and contains commands that modify your code.
          9_cutcopypaste - The last default group with the basic editing commands.
        You can also create your own group.
        Defaults to null (don't show in context menu).
      *)
      val get_contextMenuGroupId: t -> string [@@js.get "contextMenuGroupId"]
      (**
        Control if the action should show up in the context menu and where.
        The context menu of the editor has these default:
          navigation - The navigation group comes first in all cases.
          1_modification - This group comes next and contains commands that modify your code.
          9_cutcopypaste - The last default group with the basic editing commands.
        You can also create your own group.
        Defaults to null (don't show in context menu).
      *)
      val set_contextMenuGroupId: t -> string -> unit [@@js.set "contextMenuGroupId"]
      (** Control the order in the context menu group. *)
      (** Control the order in the context menu group. *)
      val get_contextMenuOrder: t -> float [@@js.get "contextMenuOrder"]
      (** Control the order in the context menu group. *)
      val set_contextMenuOrder: t -> float -> unit [@@js.set "contextMenuOrder"]
      (**
        Method that will be executed when the action is triggered.
        @param editor The editor instance is passed in as a convenience
      *)
      val run: t -> editor:monaco_editor_ICodeEditor -> args:(any list [@js.variadic]) -> (unit, unit Promise.t_1) union2 [@@js.call "run"]
    end
    (** Options which apply for all editors. *)
    module[@js.scope "IGlobalEditorOptions"] IGlobalEditorOptions : sig
      type t = monaco_editor_IGlobalEditorOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The number of spaces a tab is equal to.
        This setting is overridden based on the file contents when `detectIndentation` is on.
        Defaults to 4.
      *)
      (**
        The number of spaces a tab is equal to.
        This setting is overridden based on the file contents when `detectIndentation` is on.
        Defaults to 4.
      *)
      val get_tabSize: t -> float [@@js.get "tabSize"]
      (**
        The number of spaces a tab is equal to.
        This setting is overridden based on the file contents when `detectIndentation` is on.
        Defaults to 4.
      *)
      val set_tabSize: t -> float -> unit [@@js.set "tabSize"]
      (**
        Insert spaces when pressing `Tab`.
        This setting is overridden based on the file contents when `detectIndentation` is on.
        Defaults to true.
      *)
      (**
        Insert spaces when pressing `Tab`.
        This setting is overridden based on the file contents when `detectIndentation` is on.
        Defaults to true.
      *)
      val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
      (**
        Insert spaces when pressing `Tab`.
        This setting is overridden based on the file contents when `detectIndentation` is on.
        Defaults to true.
      *)
      val set_insertSpaces: t -> bool -> unit [@@js.set "insertSpaces"]
      (**
        Controls whether `tabSize` and `insertSpaces` will be automatically detected when a file is opened based on the file contents.
        Defaults to true.
      *)
      (**
        Controls whether `tabSize` and `insertSpaces` will be automatically detected when a file is opened based on the file contents.
        Defaults to true.
      *)
      val get_detectIndentation: t -> bool [@@js.get "detectIndentation"]
      (**
        Controls whether `tabSize` and `insertSpaces` will be automatically detected when a file is opened based on the file contents.
        Defaults to true.
      *)
      val set_detectIndentation: t -> bool -> unit [@@js.set "detectIndentation"]
      (**
        Remove trailing auto inserted whitespace.
        Defaults to true.
      *)
      (**
        Remove trailing auto inserted whitespace.
        Defaults to true.
      *)
      val get_trimAutoWhitespace: t -> bool [@@js.get "trimAutoWhitespace"]
      (**
        Remove trailing auto inserted whitespace.
        Defaults to true.
      *)
      val set_trimAutoWhitespace: t -> bool -> unit [@@js.set "trimAutoWhitespace"]
      (**
        Special handling for large files to disable certain memory intensive features.
        Defaults to true.
      *)
      (**
        Special handling for large files to disable certain memory intensive features.
        Defaults to true.
      *)
      val get_largeFileOptimizations: t -> bool [@@js.get "largeFileOptimizations"]
      (**
        Special handling for large files to disable certain memory intensive features.
        Defaults to true.
      *)
      val set_largeFileOptimizations: t -> bool -> unit [@@js.set "largeFileOptimizations"]
      (**
        Controls whether completions should be computed based on words in the document.
        Defaults to true.
      *)
      (**
        Controls whether completions should be computed based on words in the document.
        Defaults to true.
      *)
      val get_wordBasedSuggestions: t -> bool [@@js.get "wordBasedSuggestions"]
      (**
        Controls whether completions should be computed based on words in the document.
        Defaults to true.
      *)
      val set_wordBasedSuggestions: t -> bool -> unit [@@js.set "wordBasedSuggestions"]
      (** Controls whether word based completions should be included from opened documents of the same language or any language. *)
      (** Controls whether word based completions should be included from opened documents of the same language or any language. *)
      val get_wordBasedSuggestionsOnlySameLanguage: t -> bool [@@js.get "wordBasedSuggestionsOnlySameLanguage"]
      (** Controls whether word based completions should be included from opened documents of the same language or any language. *)
      val set_wordBasedSuggestionsOnlySameLanguage: t -> bool -> unit [@@js.set "wordBasedSuggestionsOnlySameLanguage"]
      (**
        Controls whether the semanticHighlighting is shown for the languages that support it.
        true: semanticHighlighting is enabled for all themes
        false: semanticHighlighting is disabled for all themes
        'configuredByTheme': semanticHighlighting is controlled by the current color theme's semanticHighlighting setting.
        Defaults to 'byTheme'.
      *)
      (**
        Controls whether the semanticHighlighting is shown for the languages that support it.
        true: semanticHighlighting is enabled for all themes
        false: semanticHighlighting is disabled for all themes
        'configuredByTheme': semanticHighlighting is controlled by the current color theme's semanticHighlighting setting.
        Defaults to 'byTheme'.
      *)
      val get_semanticHighlighting_enabled: t -> ([`L_s14_configuredByTheme[@js "configuredByTheme"] | `L_b_false[@js false] | `L_b_true[@js true]] [@js.enum]) [@@js.get "semanticHighlighting.enabled"]
      (**
        Controls whether the semanticHighlighting is shown for the languages that support it.
        true: semanticHighlighting is enabled for all themes
        false: semanticHighlighting is disabled for all themes
        'configuredByTheme': semanticHighlighting is controlled by the current color theme's semanticHighlighting setting.
        Defaults to 'byTheme'.
      *)
      val set_semanticHighlighting_enabled: t -> ([`L_s14_configuredByTheme | `L_b_false | `L_b_true] [@js.enum]) -> unit [@@js.set "semanticHighlighting.enabled"]
      (**
        Keep peek editors open even when double clicking their content or when hitting `Escape`.
        Defaults to false.
      *)
      (**
        Keep peek editors open even when double clicking their content or when hitting `Escape`.
        Defaults to false.
      *)
      val get_stablePeek: t -> bool [@@js.get "stablePeek"]
      (**
        Keep peek editors open even when double clicking their content or when hitting `Escape`.
        Defaults to false.
      *)
      val set_stablePeek: t -> bool -> unit [@@js.set "stablePeek"]
      (**
        Lines above this length will not be tokenized for performance reasons.
        Defaults to 20000.
      *)
      (**
        Lines above this length will not be tokenized for performance reasons.
        Defaults to 20000.
      *)
      val get_maxTokenizationLineLength: t -> float [@@js.get "maxTokenizationLineLength"]
      (**
        Lines above this length will not be tokenized for performance reasons.
        Defaults to 20000.
      *)
      val set_maxTokenizationLineLength: t -> float -> unit [@@js.set "maxTokenizationLineLength"]
      (**
        Theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      (**
        Theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      val get_theme: t -> string [@@js.get "theme"]
      (**
        Theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      val set_theme: t -> string -> unit [@@js.set "theme"]
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      val get_autoDetectHighContrast: t -> bool [@@js.get "autoDetectHighContrast"]
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      val set_autoDetectHighContrast: t -> bool -> unit [@@js.set "autoDetectHighContrast"]
    end
    (** The options to create an editor. *)
    module[@js.scope "IStandaloneEditorConstructionOptions"] IStandaloneEditorConstructionOptions : sig
      type t = monaco_editor_IStandaloneEditorConstructionOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The initial model associated with this code editor. *)
      (** The initial model associated with this code editor. *)
      val get_model: t -> monaco_editor_ITextModel or_null [@@js.get "model"]
      (** The initial model associated with this code editor. *)
      val set_model: t -> monaco_editor_ITextModel or_null -> unit [@@js.set "model"]
      (**
        The initial value of the auto created model in the editor.
        To not create automatically a model, use `model: null`.
      *)
      (**
        The initial value of the auto created model in the editor.
        To not create automatically a model, use `model: null`.
      *)
      val get_value: t -> string [@@js.get "value"]
      (**
        The initial value of the auto created model in the editor.
        To not create automatically a model, use `model: null`.
      *)
      val set_value: t -> string -> unit [@@js.set "value"]
      (**
        The initial language of the auto created model in the editor.
        To not create automatically a model, use `model: null`.
      *)
      (**
        The initial language of the auto created model in the editor.
        To not create automatically a model, use `model: null`.
      *)
      val get_language: t -> string [@@js.get "language"]
      (**
        The initial language of the auto created model in the editor.
        To not create automatically a model, use `model: null`.
      *)
      val set_language: t -> string -> unit [@@js.set "language"]
      (**
        Initial theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      (**
        Initial theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      val get_theme: t -> string [@@js.get "theme"]
      (**
        Initial theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      val set_theme: t -> string -> unit [@@js.set "theme"]
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      val get_autoDetectHighContrast: t -> bool [@@js.get "autoDetectHighContrast"]
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      val set_autoDetectHighContrast: t -> bool -> unit [@@js.set "autoDetectHighContrast"]
      (**
        An URL to open when Ctrl+H (Windows and Linux) or Cmd+H (OSX) is pressed in
        the accessibility help dialog in the editor.
        
        Defaults to "https://go.microsoft.com/fwlink/?linkid=852450"
      *)
      (**
        An URL to open when Ctrl+H (Windows and Linux) or Cmd+H (OSX) is pressed in
        the accessibility help dialog in the editor.
        
        Defaults to "https://go.microsoft.com/fwlink/?linkid=852450"
      *)
      val get_accessibilityHelpUrl: t -> string [@@js.get "accessibilityHelpUrl"]
      (**
        An URL to open when Ctrl+H (Windows and Linux) or Cmd+H (OSX) is pressed in
        the accessibility help dialog in the editor.
        
        Defaults to "https://go.microsoft.com/fwlink/?linkid=852450"
      *)
      val set_accessibilityHelpUrl: t -> string -> unit [@@js.set "accessibilityHelpUrl"]
      val cast: t -> monaco_editor_IEditorConstructionOptions [@@js.cast]
      val cast': t -> monaco_editor_IGlobalEditorOptions [@@js.cast]
    end
    (** The options to create a diff editor. *)
    module[@js.scope "IDiffEditorConstructionOptions"] IDiffEditorConstructionOptions : sig
      type t = monaco_editor_IDiffEditorConstructionOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The initial editor dimension (to avoid measuring the container). *)
      (** The initial editor dimension (to avoid measuring the container). *)
      val get_dimension: t -> monaco_editor_IDimension [@@js.get "dimension"]
      (** The initial editor dimension (to avoid measuring the container). *)
      val set_dimension: t -> monaco_editor_IDimension -> unit [@@js.set "dimension"]
      (**
        Place overflow widgets inside an external DOM node.
        Defaults to an internal DOM node.
      *)
      (**
        Place overflow widgets inside an external DOM node.
        Defaults to an internal DOM node.
      *)
      val get_overflowWidgetsDomNode: t -> HTMLElement.t_0 [@@js.get "overflowWidgetsDomNode"]
      (**
        Place overflow widgets inside an external DOM node.
        Defaults to an internal DOM node.
      *)
      val set_overflowWidgetsDomNode: t -> HTMLElement.t_0 -> unit [@@js.set "overflowWidgetsDomNode"]
      (**
        Initial theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      (**
        Initial theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      val get_theme: t -> string [@@js.get "theme"]
      (**
        Initial theme to be used for rendering.
        The current out-of-the-box available themes are: 'vs' (default), 'vs-dark', 'hc-black'.
        You can create custom themes via `monaco.editor.defineTheme`.
        To switch a theme, use `monaco.editor.setTheme`.
        **NOTE**: The theme might be overwritten if the OS is in high contrast mode, unless `autoDetectHighContrast` is set to false.
      *)
      val set_theme: t -> string -> unit [@@js.set "theme"]
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      val get_autoDetectHighContrast: t -> bool [@@js.get "autoDetectHighContrast"]
      (**
        If enabled, will automatically change to high contrast theme if the OS is using a high contrast theme.
        Defaults to true.
      *)
      val set_autoDetectHighContrast: t -> bool -> unit [@@js.set "autoDetectHighContrast"]
      val cast: t -> monaco_editor_IDiffEditorOptions [@@js.cast]
    end
    module[@js.scope "IStandaloneCodeEditor"] IStandaloneCodeEditor : sig
      type t = monaco_editor_IStandaloneCodeEditor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Update the editor's options after the editor has been created. *)
      val updateOptions: t -> newOptions:(monaco_editor_IEditorOptions, monaco_editor_IGlobalEditorOptions) intersection2 -> unit [@@js.call "updateOptions"]
      val addCommand: t -> keybinding:float -> handler:monaco_editor_ICommandHandler -> ?context:string -> unit -> string or_null [@@js.call "addCommand"]
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
      val addCommand: t -> keybinding:float -> handler:monaco_editor_ICommandHandler -> ?context:string -> unit -> string or_null [@@js.call "addCommand"]
      val createContextKey: t -> key:string -> defaultValue:'T -> 'T monaco_editor_IContextKey [@@js.call "createContextKey"]
      val addAction: t -> descriptor:monaco_editor_IActionDescriptor -> monaco_IDisposable [@@js.call "addAction"]
      (** Get the `original` editor. *)
      val getOriginalEditor: t -> monaco_editor_IStandaloneCodeEditor [@@js.call "getOriginalEditor"]
      (** Get the `modified` editor. *)
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
      val get_: 'T t -> 'T or_undefined [@@js.call "get"]
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
      val get_severity: t -> monaco_MarkerSeverity [@@js.get "severity"]
      val set_severity: t -> monaco_MarkerSeverity -> unit [@@js.set "severity"]
      val get_code: t -> anonymous_interface_15 or_string [@@js.get "code"]
      val set_code: t -> anonymous_interface_15 or_string -> unit [@@js.set "code"]
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
      val get_relatedInformation: t -> monaco_editor_IRelatedInformation list [@@js.get "relatedInformation"]
      val set_relatedInformation: t -> monaco_editor_IRelatedInformation list -> unit [@@js.set "relatedInformation"]
      val get_tags: t -> monaco_MarkerTag list [@@js.get "tags"]
      val set_tags: t -> monaco_MarkerTag list -> unit [@@js.set "tags"]
    end
    (** A structure defining a problem/warning/etc. *)
    module[@js.scope "IMarkerData"] IMarkerData : sig
      type t = monaco_editor_IMarkerData
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_code: t -> anonymous_interface_15 or_string [@@js.get "code"]
      val set_code: t -> anonymous_interface_15 or_string -> unit [@@js.set "code"]
      val get_severity: t -> monaco_MarkerSeverity [@@js.get "severity"]
      val set_severity: t -> monaco_MarkerSeverity -> unit [@@js.set "severity"]
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
      val get_relatedInformation: t -> monaco_editor_IRelatedInformation list [@@js.get "relatedInformation"]
      val set_relatedInformation: t -> monaco_editor_IRelatedInformation list -> unit [@@js.set "relatedInformation"]
      val get_tags: t -> monaco_MarkerTag list [@@js.get "tags"]
      val set_tags: t -> monaco_MarkerTag list -> unit [@@js.set "tags"]
    end
    module[@js.scope "IRelatedInformation"] IRelatedInformation : sig
      type t = monaco_editor_IRelatedInformation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resource: t -> monaco_Uri [@@js.get "resource"]
      val set_resource: t -> monaco_Uri -> unit [@@js.set "resource"]
      val get_message: t -> string [@@js.get "message"]
      val set_message: t -> string -> unit [@@js.set "message"]
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
    (** Vertical Lane in the overview ruler of the editor. *)
    module OverviewRulerLane : sig
      type t = monaco_editor_OverviewRulerLane
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Position in the minimap to render the decoration. *)
    module MinimapPosition : sig
      type t = monaco_editor_MinimapPosition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IDecorationOptions"] IDecorationOptions : sig
      type t = monaco_editor_IDecorationOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        CSS color to render.
        e.g.: rgba(100, 100, 100, 0.5) or a color from the color registry
      *)
      (**
        CSS color to render.
        e.g.: rgba(100, 100, 100, 0.5) or a color from the color registry
      *)
      val get_color: t -> monaco_editor_ThemeColor or_string or_undefined [@@js.get "color"]
      (**
        CSS color to render.
        e.g.: rgba(100, 100, 100, 0.5) or a color from the color registry
      *)
      val set_color: t -> monaco_editor_ThemeColor or_string or_undefined -> unit [@@js.set "color"]
      (**
        CSS color to render.
        e.g.: rgba(100, 100, 100, 0.5) or a color from the color registry
      *)
      (**
        CSS color to render.
        e.g.: rgba(100, 100, 100, 0.5) or a color from the color registry
      *)
      val get_darkColor: t -> monaco_editor_ThemeColor or_string [@@js.get "darkColor"]
      (**
        CSS color to render.
        e.g.: rgba(100, 100, 100, 0.5) or a color from the color registry
      *)
      val set_darkColor: t -> monaco_editor_ThemeColor or_string -> unit [@@js.set "darkColor"]
    end
    (** Options for rendering a model decoration in the overview ruler. *)
    module[@js.scope "IModelDecorationOverviewRulerOptions"] IModelDecorationOverviewRulerOptions : sig
      type t = monaco_editor_IModelDecorationOverviewRulerOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The position in the overview ruler. *)
      (** The position in the overview ruler. *)
      val get_position: t -> monaco_editor_OverviewRulerLane [@@js.get "position"]
      (** The position in the overview ruler. *)
      val set_position: t -> monaco_editor_OverviewRulerLane -> unit [@@js.set "position"]
      val cast: t -> monaco_editor_IDecorationOptions [@@js.cast]
    end
    (** Options for rendering a model decoration in the overview ruler. *)
    module[@js.scope "IModelDecorationMinimapOptions"] IModelDecorationMinimapOptions : sig
      type t = monaco_editor_IModelDecorationMinimapOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The position in the overview ruler. *)
      (** The position in the overview ruler. *)
      val get_position: t -> monaco_editor_MinimapPosition [@@js.get "position"]
      (** The position in the overview ruler. *)
      val set_position: t -> monaco_editor_MinimapPosition -> unit [@@js.set "position"]
      val cast: t -> monaco_editor_IDecorationOptions [@@js.cast]
    end
    (** Options for a model decoration. *)
    module[@js.scope "IModelDecorationOptions"] IModelDecorationOptions : sig
      type t = monaco_editor_IModelDecorationOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Customize the growing behavior of the decoration when typing at the edges of the decoration.
        Defaults to TrackedRangeStickiness.AlwaysGrowsWhenTypingAtEdges
      *)
      (**
        Customize the growing behavior of the decoration when typing at the edges of the decoration.
        Defaults to TrackedRangeStickiness.AlwaysGrowsWhenTypingAtEdges
      *)
      val get_stickiness: t -> monaco_editor_TrackedRangeStickiness [@@js.get "stickiness"]
      (**
        Customize the growing behavior of the decoration when typing at the edges of the decoration.
        Defaults to TrackedRangeStickiness.AlwaysGrowsWhenTypingAtEdges
      *)
      val set_stickiness: t -> monaco_editor_TrackedRangeStickiness -> unit [@@js.set "stickiness"]
      (** CSS class name describing the decoration. *)
      (** CSS class name describing the decoration. *)
      val get_className: t -> string or_null [@@js.get "className"]
      (** CSS class name describing the decoration. *)
      val set_className: t -> string or_null -> unit [@@js.set "className"]
      (** Message to be rendered when hovering over the glyph margin decoration. *)
      (** Message to be rendered when hovering over the glyph margin decoration. *)
      val get_glyphMarginHoverMessage: t -> (monaco_IMarkdownString, monaco_IMarkdownString) or_array or_null [@@js.get "glyphMarginHoverMessage"]
      (** Message to be rendered when hovering over the glyph margin decoration. *)
      val set_glyphMarginHoverMessage: t -> (monaco_IMarkdownString, monaco_IMarkdownString) or_array or_null -> unit [@@js.set "glyphMarginHoverMessage"]
      (** Array of MarkdownString to render as the decoration message. *)
      (** Array of MarkdownString to render as the decoration message. *)
      val get_hoverMessage: t -> (monaco_IMarkdownString, monaco_IMarkdownString) or_array or_null [@@js.get "hoverMessage"]
      (** Array of MarkdownString to render as the decoration message. *)
      val set_hoverMessage: t -> (monaco_IMarkdownString, monaco_IMarkdownString) or_array or_null -> unit [@@js.set "hoverMessage"]
      (** Should the decoration expand to encompass a whole line. *)
      (** Should the decoration expand to encompass a whole line. *)
      val get_isWholeLine: t -> bool [@@js.get "isWholeLine"]
      (** Should the decoration expand to encompass a whole line. *)
      val set_isWholeLine: t -> bool -> unit [@@js.set "isWholeLine"]
      (**
        Specifies the stack order of a decoration.
        A decoration with greater stack order is always in front of a decoration with a lower stack order.
      *)
      (**
        Specifies the stack order of a decoration.
        A decoration with greater stack order is always in front of a decoration with a lower stack order.
      *)
      val get_zIndex: t -> float [@@js.get "zIndex"]
      (**
        Specifies the stack order of a decoration.
        A decoration with greater stack order is always in front of a decoration with a lower stack order.
      *)
      val set_zIndex: t -> float -> unit [@@js.set "zIndex"]
      (** If set, render this decoration in the overview ruler. *)
      (** If set, render this decoration in the overview ruler. *)
      val get_overviewRuler: t -> monaco_editor_IModelDecorationOverviewRulerOptions or_null [@@js.get "overviewRuler"]
      (** If set, render this decoration in the overview ruler. *)
      val set_overviewRuler: t -> monaco_editor_IModelDecorationOverviewRulerOptions or_null -> unit [@@js.set "overviewRuler"]
      (** If set, render this decoration in the minimap. *)
      (** If set, render this decoration in the minimap. *)
      val get_minimap: t -> monaco_editor_IModelDecorationMinimapOptions or_null [@@js.get "minimap"]
      (** If set, render this decoration in the minimap. *)
      val set_minimap: t -> monaco_editor_IModelDecorationMinimapOptions or_null -> unit [@@js.set "minimap"]
      (** If set, the decoration will be rendered in the glyph margin with this CSS class name. *)
      (** If set, the decoration will be rendered in the glyph margin with this CSS class name. *)
      val get_glyphMarginClassName: t -> string or_null [@@js.get "glyphMarginClassName"]
      (** If set, the decoration will be rendered in the glyph margin with this CSS class name. *)
      val set_glyphMarginClassName: t -> string or_null -> unit [@@js.set "glyphMarginClassName"]
      (** If set, the decoration will be rendered in the lines decorations with this CSS class name. *)
      (** If set, the decoration will be rendered in the lines decorations with this CSS class name. *)
      val get_linesDecorationsClassName: t -> string or_null [@@js.get "linesDecorationsClassName"]
      (** If set, the decoration will be rendered in the lines decorations with this CSS class name. *)
      val set_linesDecorationsClassName: t -> string or_null -> unit [@@js.set "linesDecorationsClassName"]
      (** If set, the decoration will be rendered in the lines decorations with this CSS class name, but only for the first line in case of line wrapping. *)
      (** If set, the decoration will be rendered in the lines decorations with this CSS class name, but only for the first line in case of line wrapping. *)
      val get_firstLineDecorationClassName: t -> string or_null [@@js.get "firstLineDecorationClassName"]
      (** If set, the decoration will be rendered in the lines decorations with this CSS class name, but only for the first line in case of line wrapping. *)
      val set_firstLineDecorationClassName: t -> string or_null -> unit [@@js.set "firstLineDecorationClassName"]
      (** If set, the decoration will be rendered in the margin (covering its full width) with this CSS class name. *)
      (** If set, the decoration will be rendered in the margin (covering its full width) with this CSS class name. *)
      val get_marginClassName: t -> string or_null [@@js.get "marginClassName"]
      (** If set, the decoration will be rendered in the margin (covering its full width) with this CSS class name. *)
      val set_marginClassName: t -> string or_null -> unit [@@js.set "marginClassName"]
      (**
        If set, the decoration will be rendered inline with the text with this CSS class name.
        Please use this only for CSS rules that must impact the text. For example, use `className`
        to have a background color decoration.
      *)
      (**
        If set, the decoration will be rendered inline with the text with this CSS class name.
        Please use this only for CSS rules that must impact the text. For example, use `className`
        to have a background color decoration.
      *)
      val get_inlineClassName: t -> string or_null [@@js.get "inlineClassName"]
      (**
        If set, the decoration will be rendered inline with the text with this CSS class name.
        Please use this only for CSS rules that must impact the text. For example, use `className`
        to have a background color decoration.
      *)
      val set_inlineClassName: t -> string or_null -> unit [@@js.set "inlineClassName"]
      (** If there is an `inlineClassName` which affects letter spacing. *)
      (** If there is an `inlineClassName` which affects letter spacing. *)
      val get_inlineClassNameAffectsLetterSpacing: t -> bool [@@js.get "inlineClassNameAffectsLetterSpacing"]
      (** If there is an `inlineClassName` which affects letter spacing. *)
      val set_inlineClassNameAffectsLetterSpacing: t -> bool -> unit [@@js.set "inlineClassNameAffectsLetterSpacing"]
      (** If set, the decoration will be rendered before the text with this CSS class name. *)
      (** If set, the decoration will be rendered before the text with this CSS class name. *)
      val get_beforeContentClassName: t -> string or_null [@@js.get "beforeContentClassName"]
      (** If set, the decoration will be rendered before the text with this CSS class name. *)
      val set_beforeContentClassName: t -> string or_null -> unit [@@js.set "beforeContentClassName"]
      (** If set, the decoration will be rendered after the text with this CSS class name. *)
      (** If set, the decoration will be rendered after the text with this CSS class name. *)
      val get_afterContentClassName: t -> string or_null [@@js.get "afterContentClassName"]
      (** If set, the decoration will be rendered after the text with this CSS class name. *)
      val set_afterContentClassName: t -> string or_null -> unit [@@js.set "afterContentClassName"]
    end
    (** New model decorations. *)
    module[@js.scope "IModelDeltaDecoration"] IModelDeltaDecoration : sig
      type t = monaco_editor_IModelDeltaDecoration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Range that this decoration covers. *)
      (** Range that this decoration covers. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** Range that this decoration covers. *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      (** Options associated with this decoration. *)
      (** Options associated with this decoration. *)
      val get_options: t -> monaco_editor_IModelDecorationOptions [@@js.get "options"]
      (** Options associated with this decoration. *)
      val set_options: t -> monaco_editor_IModelDecorationOptions -> unit [@@js.set "options"]
    end
    (** A decoration in the model. *)
    module[@js.scope "IModelDecoration"] IModelDecoration : sig
      type t = monaco_editor_IModelDecoration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Identifier for a decoration. *)
      val get_id: t -> string [@@js.get "id"]
      (** Identifier for a decoration's owner. *)
      val get_ownerId: t -> float [@@js.get "ownerId"]
      (** Range that this decoration covers. *)
      val get_range: t -> monaco_Range [@@js.get "range"]
      (** Options associated with this decoration. *)
      val get_options: t -> monaco_editor_IModelDecorationOptions [@@js.get "options"]
    end
    (** Word inside a model. *)
    module[@js.scope "IWordAtPosition"] IWordAtPosition : sig
      type t = monaco_editor_IWordAtPosition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The word. *)
      val get_word: t -> string [@@js.get "word"]
      (** The column where the word starts. *)
      val get_startColumn: t -> float [@@js.get "startColumn"]
      (** The column where the word ends. *)
      val get_endColumn: t -> float [@@js.get "endColumn"]
    end
    (** End of line character preference. *)
    module EndOfLinePreference : sig
      type t = monaco_editor_EndOfLinePreference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** The default end of line to use when instantiating models. *)
    module DefaultEndOfLine : sig
      type t = monaco_editor_DefaultEndOfLine
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** End of line character preference. *)
    module EndOfLineSequence : sig
      type t = monaco_editor_EndOfLineSequence
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      A single edit operation, that acts as a simple replace.
      i.e. Replace text at `range` with `text` in model.
    *)
    module[@js.scope "ISingleEditOperation"] ISingleEditOperation : sig
      type t = monaco_editor_ISingleEditOperation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The range to replace. This can be empty to emulate a simple insert. *)
      (** The range to replace. This can be empty to emulate a simple insert. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** The range to replace. This can be empty to emulate a simple insert. *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      (** The text to replace with. This can be null to emulate a simple delete. *)
      (** The text to replace with. This can be null to emulate a simple delete. *)
      val get_text: t -> string or_null [@@js.get "text"]
      (** The text to replace with. This can be null to emulate a simple delete. *)
      val set_text: t -> string or_null -> unit [@@js.set "text"]
      (**
        This indicates that this operation has "insert" semantics.
        i.e. forceMoveMarkers = true => if `range` is collapsed, all markers at the position will be moved.
      *)
      (**
        This indicates that this operation has "insert" semantics.
        i.e. forceMoveMarkers = true => if `range` is collapsed, all markers at the position will be moved.
      *)
      val get_forceMoveMarkers: t -> bool [@@js.get "forceMoveMarkers"]
      (**
        This indicates that this operation has "insert" semantics.
        i.e. forceMoveMarkers = true => if `range` is collapsed, all markers at the position will be moved.
      *)
      val set_forceMoveMarkers: t -> bool -> unit [@@js.set "forceMoveMarkers"]
    end
    (** A single edit operation, that has an identifier. *)
    module[@js.scope "IIdentifiedSingleEditOperation"] IIdentifiedSingleEditOperation : sig
      type t = monaco_editor_IIdentifiedSingleEditOperation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The range to replace. This can be empty to emulate a simple insert. *)
      (** The range to replace. This can be empty to emulate a simple insert. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** The range to replace. This can be empty to emulate a simple insert. *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      (** The text to replace with. This can be null to emulate a simple delete. *)
      (** The text to replace with. This can be null to emulate a simple delete. *)
      val get_text: t -> string or_null [@@js.get "text"]
      (** The text to replace with. This can be null to emulate a simple delete. *)
      val set_text: t -> string or_null -> unit [@@js.set "text"]
      (**
        This indicates that this operation has "insert" semantics.
        i.e. forceMoveMarkers = true => if `range` is collapsed, all markers at the position will be moved.
      *)
      (**
        This indicates that this operation has "insert" semantics.
        i.e. forceMoveMarkers = true => if `range` is collapsed, all markers at the position will be moved.
      *)
      val get_forceMoveMarkers: t -> bool [@@js.get "forceMoveMarkers"]
      (**
        This indicates that this operation has "insert" semantics.
        i.e. forceMoveMarkers = true => if `range` is collapsed, all markers at the position will be moved.
      *)
      val set_forceMoveMarkers: t -> bool -> unit [@@js.set "forceMoveMarkers"]
    end
    module[@js.scope "IValidEditOperation"] IValidEditOperation : sig
      type t = monaco_editor_IValidEditOperation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The range to replace. This can be empty to emulate a simple insert. *)
      (** The range to replace. This can be empty to emulate a simple insert. *)
      val get_range: t -> monaco_Range [@@js.get "range"]
      (** The range to replace. This can be empty to emulate a simple insert. *)
      val set_range: t -> monaco_Range -> unit [@@js.set "range"]
      (** The text to replace with. This can be empty to emulate a simple delete. *)
      (** The text to replace with. This can be empty to emulate a simple delete. *)
      val get_text: t -> string [@@js.get "text"]
      (** The text to replace with. This can be empty to emulate a simple delete. *)
      val set_text: t -> string -> unit [@@js.set "text"]
    end
    (** A callback that can compute the cursor state after applying a series of edit operations. *)
    module[@js.scope "ICursorStateComputer"] ICursorStateComputer : sig
      type t = monaco_editor_ICursorStateComputer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** A callback that can compute the resulting cursors state after some edit operations have been executed. *)
      val apply: t -> inverseEditOperations:monaco_editor_IValidEditOperation list -> monaco_Selection list or_null [@@js.apply]
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
      val get_indentSize: t -> float [@@js.get "indentSize"]
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
      val get_indentSize: t -> float [@@js.get "indentSize"]
      val set_indentSize: t -> float -> unit [@@js.set "indentSize"]
      val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
      val set_insertSpaces: t -> bool -> unit [@@js.set "insertSpaces"]
      val get_trimAutoWhitespace: t -> bool [@@js.get "trimAutoWhitespace"]
      val set_trimAutoWhitespace: t -> bool -> unit [@@js.set "trimAutoWhitespace"]
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
      val get_matches: t -> string list or_null [@@js.get "matches"]
    end
    (**
      Describes the behavior of decorations when typing/editing near their edges.
      Note: Please do not edit the values, as they very carefully match `DecorationRangeBehavior`
    *)
    module TrackedRangeStickiness : sig
      type t = monaco_editor_TrackedRangeStickiness
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** A model. *)
    module[@js.scope "ITextModel"] ITextModel : sig
      type t = monaco_editor_ITextModel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Gets the resource associated with this editor model. *)
      val get_uri: t -> monaco_Uri [@@js.get "uri"]
      (** A unique identifier associated with this model. *)
      val get_id: t -> string [@@js.get "id"]
      (** Get the resolved options for this model. *)
      val getOptions: t -> monaco_editor_TextModelResolvedOptions [@@js.call "getOptions"]
      (**
        Get the current version id of the model.
        Anytime a change happens to the model (even undo/redo),
        the version id is incremented.
      *)
      val getVersionId: t -> float [@@js.call "getVersionId"]
      (**
        Get the alternative version id of the model.
        This alternative version id is not always incremented,
        it will return the same values in the case of undo-redo.
      *)
      val getAlternativeVersionId: t -> float [@@js.call "getAlternativeVersionId"]
      (** Replace the entire text buffer value contained in this model. *)
      val setValue: t -> newValue:string -> unit [@@js.call "setValue"]
      (**
        Get the text stored in this model.
        @param eol The end of line character preference. Defaults to `EndOfLinePreference.TextDefined`.
        @param preserverBOM Preserve a BOM character if it was detected when the model was constructed.
        @return The text.
      *)
      val getValue: t -> ?eol:monaco_editor_EndOfLinePreference -> ?preserveBOM:bool -> unit -> string [@@js.call "getValue"]
      (** Get the length of the text stored in this model. *)
      val getValueLength: t -> ?eol:monaco_editor_EndOfLinePreference -> ?preserveBOM:bool -> unit -> float [@@js.call "getValueLength"]
      (**
        Get the text in a certain range.
        @param range The range describing what text to get.
        @param eol The end of line character preference. This will only be used for multiline ranges. Defaults to `EndOfLinePreference.TextDefined`.
        @return The text.
      *)
      val getValueInRange: t -> range:monaco_IRange -> ?eol:monaco_editor_EndOfLinePreference -> unit -> string [@@js.call "getValueInRange"]
      (**
        Get the length of text in a certain range.
        @param range The range describing what text length to get.
        @return The text length.
      *)
      val getValueLengthInRange: t -> range:monaco_IRange -> float [@@js.call "getValueLengthInRange"]
      (**
        Get the character count of text in a certain range.
        @param range The range describing what text length to get.
      *)
      val getCharacterCountInRange: t -> range:monaco_IRange -> float [@@js.call "getCharacterCountInRange"]
      (** Get the number of lines in the model. *)
      val getLineCount: t -> float [@@js.call "getLineCount"]
      (** Get the text for a certain line. *)
      val getLineContent: t -> lineNumber:float -> string [@@js.call "getLineContent"]
      (** Get the text length for a certain line. *)
      val getLineLength: t -> lineNumber:float -> float [@@js.call "getLineLength"]
      (** Get the text for all lines. *)
      val getLinesContent: t -> string list [@@js.call "getLinesContent"]
      (**
        Get the end of line sequence predominantly used in the text buffer.
        @return EOL char sequence (e.g.: '\n' or '\r\n').
      *)
      val getEOL: t -> string [@@js.call "getEOL"]
      (** Get the end of line sequence predominantly used in the text buffer. *)
      val getEndOfLineSequence: t -> monaco_editor_EndOfLineSequence [@@js.call "getEndOfLineSequence"]
      (** Get the minimum legal column for line at `lineNumber` *)
      val getLineMinColumn: t -> lineNumber:float -> float [@@js.call "getLineMinColumn"]
      (** Get the maximum legal column for line at `lineNumber` *)
      val getLineMaxColumn: t -> lineNumber:float -> float [@@js.call "getLineMaxColumn"]
      (**
        Returns the column before the first non whitespace character for line at `lineNumber`.
        Returns 0 if line is empty or contains only whitespace.
      *)
      val getLineFirstNonWhitespaceColumn: t -> lineNumber:float -> float [@@js.call "getLineFirstNonWhitespaceColumn"]
      (**
        Returns the column after the last non whitespace character for line at `lineNumber`.
        Returns 0 if line is empty or contains only whitespace.
      *)
      val getLineLastNonWhitespaceColumn: t -> lineNumber:float -> float [@@js.call "getLineLastNonWhitespaceColumn"]
      (** Create a valid position, *)
      val validatePosition: t -> position:monaco_IPosition -> monaco_Position [@@js.call "validatePosition"]
      (**
        Advances the given position by the given offset (negative offsets are also accepted)
        and returns it as a new valid position.
        
        If the offset and position are such that their combination goes beyond the beginning or
        end of the model, throws an exception.
        
        If the offset is such that the new position would be in the middle of a multi-byte
        line terminator, throws an exception.
      *)
      val modifyPosition: t -> position:monaco_IPosition -> offset:float -> monaco_Position [@@js.call "modifyPosition"]
      (** Create a valid range. *)
      val validateRange: t -> range:monaco_IRange -> monaco_Range [@@js.call "validateRange"]
      (**
        Converts the position to a zero-based offset.
        
        The position will be \[adjusted\](#TextDocument.validatePosition).
        @param position A position.
        @return A valid zero-based offset.
      *)
      val getOffsetAt: t -> position:monaco_IPosition -> float [@@js.call "getOffsetAt"]
      (**
        Converts a zero-based offset to a position.
        @param offset A zero-based offset.
        @return A valid \[position\](#Position).
      *)
      val getPositionAt: t -> offset:float -> monaco_Position [@@js.call "getPositionAt"]
      (** Get a range covering the entire model *)
      val getFullModelRange: t -> monaco_Range [@@js.call "getFullModelRange"]
      (** Returns if the model was disposed or not. *)
      val isDisposed: t -> bool [@@js.call "isDisposed"]
      (**
        Search the model.
        @param searchString The string used to search. If it is a regular expression, set `isRegex` to true.
        @param searchOnlyEditableRange Limit the searching to only search inside the editable range of the model.
        @param isRegex Used to indicate that `searchString` is a regular expression.
        @param matchCase Force the matching to match lower/upper case exactly.
        @param wordSeparators Force the matching to match entire words only. Pass null otherwise.
        @param captureMatches The result will contain the captured groups.
        @param limitResultCount Limit the number of results
        @return The ranges where the matches are. It is empty if not matches have been found.
      *)
      val findMatches: t -> searchString:string -> searchOnlyEditableRange:bool -> isRegex:bool -> matchCase:bool -> wordSeparators:string or_null -> captureMatches:bool -> ?limitResultCount:float -> unit -> monaco_editor_FindMatch list [@@js.call "findMatches"]
      (**
        Search the model.
        @param searchString The string used to search. If it is a regular expression, set `isRegex` to true.
        @param searchScope Limit the searching to only search inside these ranges.
        @param isRegex Used to indicate that `searchString` is a regular expression.
        @param matchCase Force the matching to match lower/upper case exactly.
        @param wordSeparators Force the matching to match entire words only. Pass null otherwise.
        @param captureMatches The result will contain the captured groups.
        @param limitResultCount Limit the number of results
        @return The ranges where the matches are. It is empty if no matches have been found.
      *)
      val findMatches': t -> searchString:string -> searchScope:(monaco_IRange, monaco_IRange) or_array -> isRegex:bool -> matchCase:bool -> wordSeparators:string or_null -> captureMatches:bool -> ?limitResultCount:float -> unit -> monaco_editor_FindMatch list [@@js.call "findMatches"]
      (**
        Search the model for the next match. Loops to the beginning of the model if needed.
        @param searchString The string used to search. If it is a regular expression, set `isRegex` to true.
        @param searchStart Start the searching at the specified position.
        @param isRegex Used to indicate that `searchString` is a regular expression.
        @param matchCase Force the matching to match lower/upper case exactly.
        @param wordSeparators Force the matching to match entire words only. Pass null otherwise.
        @param captureMatches The result will contain the captured groups.
        @return The range where the next match is. It is null if no next match has been found.
      *)
      val findNextMatch: t -> searchString:string -> searchStart:monaco_IPosition -> isRegex:bool -> matchCase:bool -> wordSeparators:string or_null -> captureMatches:bool -> monaco_editor_FindMatch or_null [@@js.call "findNextMatch"]
      (**
        Search the model for the previous match. Loops to the end of the model if needed.
        @param searchString The string used to search. If it is a regular expression, set `isRegex` to true.
        @param searchStart Start the searching at the specified position.
        @param isRegex Used to indicate that `searchString` is a regular expression.
        @param matchCase Force the matching to match lower/upper case exactly.
        @param wordSeparators Force the matching to match entire words only. Pass null otherwise.
        @param captureMatches The result will contain the captured groups.
        @return The range where the previous match is. It is null if no previous match has been found.
      *)
      val findPreviousMatch: t -> searchString:string -> searchStart:monaco_IPosition -> isRegex:bool -> matchCase:bool -> wordSeparators:string or_null -> captureMatches:bool -> monaco_editor_FindMatch or_null [@@js.call "findPreviousMatch"]
      (** Get the language associated with this model. *)
      val getModeId: t -> string [@@js.call "getModeId"]
      (**
        Get the word under or besides `position`.
        @param position The position to look for a word.
        @return The word under or besides `position`. Might be null.
      *)
      val getWordAtPosition: t -> position:monaco_IPosition -> monaco_editor_IWordAtPosition or_null [@@js.call "getWordAtPosition"]
      (**
        Get the word under or besides `position` trimmed to `position`.column
        @param position The position to look for a word.
        @return The word under or besides `position`. Will never be null.
      *)
      val getWordUntilPosition: t -> position:monaco_IPosition -> monaco_editor_IWordAtPosition [@@js.call "getWordUntilPosition"]
      (**
        Perform a minimum amount of operations, in order to transform the decorations
        identified by `oldDecorations` to the decorations described by `newDecorations`
        and returns the new identifiers associated with the resulting decorations.
        @param oldDecorations Array containing previous decorations identifiers.
        @param newDecorations Array describing what decorations should result after the call.
        @param ownerId Identifies the editor id in which these decorations should appear. If no `ownerId` is provided, the decorations will appear in all editors that attach this model.
        @return An array containing the new decorations identifiers.
      *)
      val deltaDecorations: t -> oldDecorations:string list -> newDecorations:monaco_editor_IModelDeltaDecoration list -> ?ownerId:float -> unit -> string list [@@js.call "deltaDecorations"]
      (**
        Get the options associated with a decoration.
        @param id The decoration id.
        @return The decoration options or null if the decoration was not found.
      *)
      val getDecorationOptions: t -> id:string -> monaco_editor_IModelDecorationOptions or_null [@@js.call "getDecorationOptions"]
      (**
        Get the range associated with a decoration.
        @param id The decoration id.
        @return The decoration range or null if the decoration was not found.
      *)
      val getDecorationRange: t -> id:string -> monaco_Range or_null [@@js.call "getDecorationRange"]
      (**
        Gets all the decorations for the line `lineNumber` as an array.
        @param lineNumber The line number
        @param ownerId If set, it will ignore decorations belonging to other owners.
        @param filterOutValidation If set, it will ignore decorations specific to validation (i.e. warnings, errors).
        @return An array with the decorations
      *)
      val getLineDecorations: t -> lineNumber:float -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getLineDecorations"]
      (**
        Gets all the decorations for the lines between `startLineNumber` and `endLineNumber` as an array.
        @param startLineNumber The start line number
        @param endLineNumber The end line number
        @param ownerId If set, it will ignore decorations belonging to other owners.
        @param filterOutValidation If set, it will ignore decorations specific to validation (i.e. warnings, errors).
        @return An array with the decorations
      *)
      val getLinesDecorations: t -> startLineNumber:float -> endLineNumber:float -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getLinesDecorations"]
      (**
        Gets all the decorations in a range as an array. Only `startLineNumber` and `endLineNumber` from `range` are used for filtering.
        So for now it returns all the decorations on the same line as `range`.
        @param range The range to search in
        @param ownerId If set, it will ignore decorations belonging to other owners.
        @param filterOutValidation If set, it will ignore decorations specific to validation (i.e. warnings, errors).
        @return An array with the decorations
      *)
      val getDecorationsInRange: t -> range:monaco_IRange -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getDecorationsInRange"]
      (**
        Gets all the decorations as an array.
        @param ownerId If set, it will ignore decorations belonging to other owners.
        @param filterOutValidation If set, it will ignore decorations specific to validation (i.e. warnings, errors).
      *)
      val getAllDecorations: t -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getAllDecorations"]
      (**
        Gets all the decorations that should be rendered in the overview ruler as an array.
        @param ownerId If set, it will ignore decorations belonging to other owners.
        @param filterOutValidation If set, it will ignore decorations specific to validation (i.e. warnings, errors).
      *)
      val getOverviewRulerDecorations: t -> ?ownerId:float -> ?filterOutValidation:bool -> unit -> monaco_editor_IModelDecoration list [@@js.call "getOverviewRulerDecorations"]
      (** Normalize a string containing whitespace according to indentation rules (converts to spaces or to tabs). *)
      val normalizeIndentation: t -> str:string -> string [@@js.call "normalizeIndentation"]
      (** Change the options of this model. *)
      val updateOptions: t -> newOpts:monaco_editor_ITextModelUpdateOptions -> unit [@@js.call "updateOptions"]
      (** Detect the indentation options for this model from its content. *)
      val detectIndentation: t -> defaultInsertSpaces:bool -> defaultTabSize:float -> unit [@@js.call "detectIndentation"]
      (**
        Close the current undo-redo element.
        This offers a way to create an undo/redo stop point.
      *)
      val pushStackElement: t -> unit [@@js.call "pushStackElement"]
      (**
        Open the current undo-redo element.
        This offers a way to remove the current undo/redo stop point.
      *)
      val popStackElement: t -> unit [@@js.call "popStackElement"]
      (**
        Push edit operations, basically editing the model. This is the preferred way
        of editing the model. The edit operations will land on the undo stack.
        @param beforeCursorState The cursor state before the edit operations. This cursor state will be returned when `undo` or `redo` are invoked.
        @param editOperations The edit operations.
        @param cursorStateComputer A callback that can compute the resulting cursors state after the edit operations have been executed.
        @return The cursor state returned by the `cursorStateComputer`.
      *)
      val pushEditOperations: t -> beforeCursorState:monaco_Selection list or_null -> editOperations:monaco_editor_IIdentifiedSingleEditOperation list -> cursorStateComputer:monaco_editor_ICursorStateComputer -> monaco_Selection list or_null [@@js.call "pushEditOperations"]
      (**
        Change the end of line sequence. This is the preferred way of
        changing the eol sequence. This will land on the undo stack.
      *)
      val pushEOL: t -> eol:monaco_editor_EndOfLineSequence -> unit [@@js.call "pushEOL"]
      (**
        Edit the model without adding the edits to the undo stack.
        This can have dire consequences on the undo stack! See \@pushEditOperations for the preferred way.
        @param operations The edit operations.
        @return If desired, the inverse edit operations, that, when applied, will bring the model back to the previous state.
      *)
      val applyEdits: t -> operations:monaco_editor_IIdentifiedSingleEditOperation list -> unit [@@js.call "applyEdits"]
      (**
        Edit the model without adding the edits to the undo stack.
        This can have dire consequences on the undo stack! See \@pushEditOperations for the preferred way.
      *)
      val applyEdits': t -> operations:monaco_editor_IIdentifiedSingleEditOperation list -> computeUndoEdits:([`L_b_false] [@js.enum]) -> unit [@@js.call "applyEdits"]
      (**
        Edit the model without adding the edits to the undo stack.
        This can have dire consequences on the undo stack! See \@pushEditOperations for the preferred way.
      *)
      val applyEdits'': t -> operations:monaco_editor_IIdentifiedSingleEditOperation list -> computeUndoEdits:([`L_b_true] [@js.enum]) -> monaco_editor_IValidEditOperation list [@@js.call "applyEdits"]
      (**
        Change the end of line sequence without recording in the undo stack.
        This can have dire consequences on the undo stack! See \@pushEOL for the preferred way.
      *)
      val setEOL: t -> eol:monaco_editor_EndOfLineSequence -> unit [@@js.call "setEOL"]
      (**
        An event emitted when the contents of the model have changed.
        event: 
      *)
      val onDidChangeContent: t -> listener:(e:monaco_editor_IModelContentChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeContent"]
      (**
        An event emitted when decorations of the model have changed.
        event: 
      *)
      val onDidChangeDecorations: t -> listener:(e:monaco_editor_IModelDecorationsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeDecorations"]
      (**
        An event emitted when the model options have changed.
        event: 
      *)
      val onDidChangeOptions: t -> listener:(e:monaco_editor_IModelOptionsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeOptions"]
      (**
        An event emitted when the language associated with the model has changed.
        event: 
      *)
      val onDidChangeLanguage: t -> listener:(e:monaco_editor_IModelLanguageChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeLanguage"]
      (**
        An event emitted when the language configuration associated with the model has changed.
        event: 
      *)
      val onDidChangeLanguageConfiguration: t -> listener:(e:monaco_editor_IModelLanguageConfigurationChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeLanguageConfiguration"]
      (**
        An event emitted when the model has been attached to the first editor or detached from the last editor.
        event: 
      *)
      val onDidChangeAttached: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidChangeAttached"]
      (**
        An event emitted right before disposing the model.
        event: 
      *)
      val onWillDispose: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onWillDispose"]
      (**
        Destroy this model. This will unbind the model from the mode
        and make all necessary clean-up to release this object to the GC.
      *)
      val dispose: t -> unit [@@js.call "dispose"]
      (** Returns if this model is attached to an editor or not. *)
      val isAttachedToEditor: t -> bool [@@js.call "isAttachedToEditor"]
    end
    (** A builder and helper for edit operations for a command. *)
    module[@js.scope "IEditOperationBuilder"] IEditOperationBuilder : sig
      type t = monaco_editor_IEditOperationBuilder
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Add a new edit operation (a replace operation).
        @param range The range to replace (delete). May be empty to represent a simple insert.
        @param text The text to replace with. May be null to represent a simple delete.
      *)
      val addEditOperation: t -> range:monaco_IRange -> text:string or_null -> ?forceMoveMarkers:bool -> unit -> unit [@@js.call "addEditOperation"]
      (**
        Add a new edit operation (a replace operation).
        The inverse edits will be accessible in `ICursorStateComputerData.getInverseEditOperations()`
        @param range The range to replace (delete). May be empty to represent a simple insert.
        @param text The text to replace with. May be null to represent a simple delete.
      *)
      val addTrackedEditOperation: t -> range:monaco_IRange -> text:string or_null -> ?forceMoveMarkers:bool -> unit -> unit [@@js.call "addTrackedEditOperation"]
      (**
        Track `selection` when applying edit operations.
        A best effort will be made to not grow/expand the selection.
        An empty selection will clamp to a nearby character.
        @param selection The selection to track.
        @param trackPreviousOnEmpty If set, and the selection is empty, indicates whether the selection
        should clamp to the previous or the next character.
        @return A unique identifier.
      *)
      val trackSelection: t -> selection:monaco_Selection -> ?trackPreviousOnEmpty:bool -> unit -> string [@@js.call "trackSelection"]
    end
    (** A helper for computing cursor state after a command. *)
    module[@js.scope "ICursorStateComputerData"] ICursorStateComputerData : sig
      type t = monaco_editor_ICursorStateComputerData
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Get the inverse edit operations of the added edit operations. *)
      val getInverseEditOperations: t -> monaco_editor_IValidEditOperation list [@@js.call "getInverseEditOperations"]
      (**
        Get a previously tracked selection.
        @param id The unique identifier returned by `trackSelection`.
        @return The selection.
      *)
      val getTrackedSelection: t -> id:string -> monaco_Selection [@@js.call "getTrackedSelection"]
    end
    (** A command that modifies text / cursor state on a model. *)
    module[@js.scope "ICommand"] ICommand : sig
      type t = monaco_editor_ICommand
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Get the edit operations needed to execute this command.
        @param model The model the command will execute on.
        @param builder A helper to collect the needed edit operations and to track selections.
      *)
      val getEditOperations: t -> model:monaco_editor_ITextModel -> builder:monaco_editor_IEditOperationBuilder -> unit [@@js.call "getEditOperations"]
      (**
        Compute the cursor state after the edit operations were applied.
        @param model The model the command has executed on.
        @param helper A helper to get inverse edit operations and to get previously tracked selections.
        @return The cursor state after the command executed.
      *)
      val computeCursorState: t -> model:monaco_editor_ITextModel -> helper:monaco_editor_ICursorStateComputerData -> monaco_Selection [@@js.call "computeCursorState"]
    end
    (** A model for the diff editor. *)
    module[@js.scope "IDiffEditorModel"] IDiffEditorModel : sig
      type t = monaco_editor_IDiffEditorModel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Original model. *)
      (** Original model. *)
      val get_original: t -> monaco_editor_ITextModel [@@js.get "original"]
      (** Original model. *)
      val set_original: t -> monaco_editor_ITextModel -> unit [@@js.set "original"]
      (** Modified model. *)
      (** Modified model. *)
      val get_modified: t -> monaco_editor_ITextModel [@@js.get "modified"]
      (** Modified model. *)
      val set_modified: t -> monaco_editor_ITextModel -> unit [@@js.set "modified"]
    end
    (** An event describing that an editor has had its model reset (i.e. `editor.setModel()`). *)
    module[@js.scope "IModelChangedEvent"] IModelChangedEvent : sig
      type t = monaco_editor_IModelChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The `uri` of the previous model or null. *)
      val get_oldModelUrl: t -> monaco_Uri or_null [@@js.get "oldModelUrl"]
      (** The `uri` of the new model or null. *)
      val get_newModelUrl: t -> monaco_Uri or_null [@@js.get "newModelUrl"]
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
    (** A change *)
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
    (** A character level change. *)
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
    (** A line change *)
    module[@js.scope "ILineChange"] ILineChange : sig
      type t = monaco_editor_ILineChange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_charChanges: t -> monaco_editor_ICharChange list or_undefined [@@js.get "charChanges"]
      val cast: t -> monaco_editor_IChange [@@js.cast]
    end
    module[@js.scope "IContentSizeChangedEvent"] IContentSizeChangedEvent : sig
      type t = monaco_editor_IContentSizeChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_contentWidth: t -> float [@@js.get "contentWidth"]
      val get_contentHeight: t -> float [@@js.get "contentHeight"]
      val get_contentWidthChanged: t -> bool [@@js.get "contentWidthChanged"]
      val get_contentHeightChanged: t -> bool [@@js.get "contentHeightChanged"]
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
      val run: t -> unit Promise.t_1 [@@js.call "run"]
    end
    module IEditorModel : sig
      type t = monaco_editor_IEditorModel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** A (serializable) state of the cursors. *)
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
    (** A (serializable) state of the view. *)
    module[@js.scope "IViewState"] IViewState : sig
      type t = monaco_editor_IViewState
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** written by previous versions *)
      (** written by previous versions *)
      val get_scrollTop: t -> float [@@js.get "scrollTop"]
      (** written by previous versions *)
      val set_scrollTop: t -> float -> unit [@@js.set "scrollTop"]
      (** written by previous versions *)
      (** written by previous versions *)
      val get_scrollTopWithoutViewZones: t -> float [@@js.get "scrollTopWithoutViewZones"]
      (** written by previous versions *)
      val set_scrollTopWithoutViewZones: t -> float -> unit [@@js.set "scrollTopWithoutViewZones"]
      val get_scrollLeft: t -> float [@@js.get "scrollLeft"]
      val set_scrollLeft: t -> float -> unit [@@js.set "scrollLeft"]
      val get_firstPosition: t -> monaco_IPosition [@@js.get "firstPosition"]
      val set_firstPosition: t -> monaco_IPosition -> unit [@@js.set "firstPosition"]
      val get_firstPositionDeltaTop: t -> float [@@js.get "firstPositionDeltaTop"]
      val set_firstPositionDeltaTop: t -> float -> unit [@@js.set "firstPositionDeltaTop"]
    end
    (** A (serializable) state of the code editor. *)
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
      val get_contributionsState: t -> anonymous_interface_18 [@@js.get "contributionsState"]
      val set_contributionsState: t -> anonymous_interface_18 -> unit [@@js.set "contributionsState"]
    end
    (** (Serializable) View state for the diff editor. *)
    module[@js.scope "IDiffEditorViewState"] IDiffEditorViewState : sig
      type t = monaco_editor_IDiffEditorViewState
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_original: t -> monaco_editor_ICodeEditorViewState or_null [@@js.get "original"]
      val set_original: t -> monaco_editor_ICodeEditorViewState or_null -> unit [@@js.set "original"]
      val get_modified: t -> monaco_editor_ICodeEditorViewState or_null [@@js.get "modified"]
      val set_modified: t -> monaco_editor_ICodeEditorViewState or_null -> unit [@@js.set "modified"]
    end
    (** An editor view state. *)
    module IEditorViewState : sig
      type t = monaco_editor_IEditorViewState
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ScrollType : sig
      type t = monaco_editor_ScrollType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** An editor. *)
    module[@js.scope "IEditor"] IEditor : sig
      type t = monaco_editor_IEditor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        An event emitted when the editor has been disposed.
        event: 
      *)
      val onDidDispose: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidDispose"]
      (** Dispose the editor. *)
      val dispose: t -> unit [@@js.call "dispose"]
      (** Get a unique id for this editor instance. *)
      val getId: t -> string [@@js.call "getId"]
      (**
        Get the editor type. Please see `EditorType`.
        This is to avoid an instanceof check
      *)
      val getEditorType: t -> string [@@js.call "getEditorType"]
      (** Update the editor's options after the editor has been created. *)
      val updateOptions: t -> newOptions:monaco_editor_IEditorOptions -> unit [@@js.call "updateOptions"]
      (**
        Instructs the editor to remeasure its container. This method should
        be called when the container of the editor gets resized.
        
        If a dimension is passed in, the passed in value will be used.
      *)
      val layout: t -> ?dimension:monaco_editor_IDimension -> unit -> unit [@@js.call "layout"]
      (** Brings browser focus to the editor text *)
      val focus: t -> unit [@@js.call "focus"]
      (** Returns true if the text inside this editor is focused (i.e. cursor is blinking). *)
      val hasTextFocus: t -> bool [@@js.call "hasTextFocus"]
      (** Returns all actions associated with this editor. *)
      val getSupportedActions: t -> monaco_editor_IEditorAction list [@@js.call "getSupportedActions"]
      (** Saves current view state of the editor in a serializable object. *)
      val saveViewState: t -> monaco_editor_IEditorViewState or_null [@@js.call "saveViewState"]
      (** Restores the view state of the editor from a serializable object generated by `saveViewState`. *)
      val restoreViewState: t -> state:monaco_editor_IEditorViewState -> unit [@@js.call "restoreViewState"]
      (** Given a position, returns a column number that takes tab-widths into account. *)
      val getVisibleColumnFromPosition: t -> position:monaco_IPosition -> float [@@js.call "getVisibleColumnFromPosition"]
      (** Returns the primary position of the cursor. *)
      val getPosition: t -> monaco_Position or_null [@@js.call "getPosition"]
      (**
        Set the primary position of the cursor. This will remove any secondary cursors.
        @param position New primary cursor's position
      *)
      val setPosition: t -> position:monaco_IPosition -> unit [@@js.call "setPosition"]
      (** Scroll vertically as necessary and reveal a line. *)
      val revealLine: t -> lineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLine"]
      (** Scroll vertically as necessary and reveal a line centered vertically. *)
      val revealLineInCenter: t -> lineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLineInCenter"]
      (** Scroll vertically as necessary and reveal a line centered vertically only if it lies outside the viewport. *)
      val revealLineInCenterIfOutsideViewport: t -> lineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLineInCenterIfOutsideViewport"]
      (**
        Scroll vertically as necessary and reveal a line close to the top of the viewport,
        optimized for viewing a code definition.
      *)
      val revealLineNearTop: t -> lineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLineNearTop"]
      (** Scroll vertically or horizontally as necessary and reveal a position. *)
      val revealPosition: t -> position:monaco_IPosition -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealPosition"]
      (** Scroll vertically or horizontally as necessary and reveal a position centered vertically. *)
      val revealPositionInCenter: t -> position:monaco_IPosition -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealPositionInCenter"]
      (** Scroll vertically or horizontally as necessary and reveal a position centered vertically only if it lies outside the viewport. *)
      val revealPositionInCenterIfOutsideViewport: t -> position:monaco_IPosition -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealPositionInCenterIfOutsideViewport"]
      (**
        Scroll vertically or horizontally as necessary and reveal a position close to the top of the viewport,
        optimized for viewing a code definition.
      *)
      val revealPositionNearTop: t -> position:monaco_IPosition -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealPositionNearTop"]
      (** Returns the primary selection of the editor. *)
      val getSelection: t -> monaco_Selection or_null [@@js.call "getSelection"]
      (** Returns all the selections of the editor. *)
      val getSelections: t -> monaco_Selection list or_null [@@js.call "getSelections"]
      (**
        Set the primary selection of the editor. This will remove any secondary cursors.
        @param selection The new selection
      *)
      val setSelection: t -> selection:monaco_IRange -> unit [@@js.call "setSelection"]
      (**
        Set the primary selection of the editor. This will remove any secondary cursors.
        @param selection The new selection
      *)
      val setSelection': t -> selection:monaco_Range -> unit [@@js.call "setSelection"]
      (**
        Set the primary selection of the editor. This will remove any secondary cursors.
        @param selection The new selection
      *)
      val setSelection'': t -> selection:monaco_ISelection -> unit [@@js.call "setSelection"]
      (**
        Set the primary selection of the editor. This will remove any secondary cursors.
        @param selection The new selection
      *)
      val setSelection''': t -> selection:monaco_Selection -> unit [@@js.call "setSelection"]
      (**
        Set the selections for all the cursors of the editor.
        Cursors will be removed or added, as necessary.
      *)
      val setSelections: t -> selections:monaco_ISelection list -> unit [@@js.call "setSelections"]
      (** Scroll vertically as necessary and reveal lines. *)
      val revealLines: t -> startLineNumber:float -> endLineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLines"]
      (** Scroll vertically as necessary and reveal lines centered vertically. *)
      val revealLinesInCenter: t -> lineNumber:float -> endLineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLinesInCenter"]
      (** Scroll vertically as necessary and reveal lines centered vertically only if it lies outside the viewport. *)
      val revealLinesInCenterIfOutsideViewport: t -> lineNumber:float -> endLineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLinesInCenterIfOutsideViewport"]
      (**
        Scroll vertically as necessary and reveal lines close to the top of the viewport,
        optimized for viewing a code definition.
      *)
      val revealLinesNearTop: t -> lineNumber:float -> endLineNumber:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealLinesNearTop"]
      (** Scroll vertically or horizontally as necessary and reveal a range. *)
      val revealRange: t -> range:monaco_IRange -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealRange"]
      (** Scroll vertically or horizontally as necessary and reveal a range centered vertically. *)
      val revealRangeInCenter: t -> range:monaco_IRange -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealRangeInCenter"]
      (** Scroll vertically or horizontally as necessary and reveal a range at the top of the viewport. *)
      val revealRangeAtTop: t -> range:monaco_IRange -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealRangeAtTop"]
      (** Scroll vertically or horizontally as necessary and reveal a range centered vertically only if it lies outside the viewport. *)
      val revealRangeInCenterIfOutsideViewport: t -> range:monaco_IRange -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealRangeInCenterIfOutsideViewport"]
      (**
        Scroll vertically or horizontally as necessary and reveal a range close to the top of the viewport,
        optimized for viewing a code definition.
      *)
      val revealRangeNearTop: t -> range:monaco_IRange -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealRangeNearTop"]
      (**
        Scroll vertically or horizontally as necessary and reveal a range close to the top of the viewport,
        optimized for viewing a code definition. Only if it lies outside the viewport.
      *)
      val revealRangeNearTopIfOutsideViewport: t -> range:monaco_IRange -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "revealRangeNearTopIfOutsideViewport"]
      (**
        Directly trigger a handler or an editor action.
        @param source The source of the call.
        @param handlerId The id of the handler or the id of a contribution.
        @param payload Extra data to be sent to the handler.
      *)
      val trigger: t -> source:string or_null_or_undefined -> handlerId:string -> payload:any -> unit [@@js.call "trigger"]
      (** Gets the current model attached to this editor. *)
      val getModel: t -> monaco_editor_IEditorModel or_null [@@js.call "getModel"]
      (**
        Sets the current model attached to this editor.
        If the previous model was created by the editor via the value key in the options
        literal object, it will be destroyed. Otherwise, if the previous model was set
        via setModel, or the model key in the options literal object, the previous model
        will not be destroyed.
        It is safe to call setModel(null) to simply detach the current model from the editor.
      *)
      val setModel: t -> model:monaco_editor_IEditorModel or_null -> unit [@@js.call "setModel"]
    end
    (** An editor contribution that gets created every time a new editor gets created and gets disposed when the editor gets disposed. *)
    module[@js.scope "IEditorContribution"] IEditorContribution : sig
      type t = monaco_editor_IEditorContribution
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Dispose this contribution. *)
      val dispose: t -> unit [@@js.call "dispose"]
      (** Store view state. *)
      val saveViewState: t -> any [@@js.call "saveViewState"]
      (** Restore view state. *)
      val restoreViewState: t -> state:any -> unit [@@js.call "restoreViewState"]
    end
    (** The type of the `IEditor`. *)
    val editorType: anonymous_interface_1 [@@js.global "EditorType"]
    (** An event describing that the current mode associated with a model has changed. *)
    module[@js.scope "IModelLanguageChangedEvent"] IModelLanguageChangedEvent : sig
      type t = monaco_editor_IModelLanguageChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Previous language *)
      val get_oldLanguage: t -> string [@@js.get "oldLanguage"]
      (** New language *)
      val get_newLanguage: t -> string [@@js.get "newLanguage"]
    end
    (** An event describing that the language configuration associated with a model has changed. *)
    module IModelLanguageConfigurationChangedEvent : sig
      type t = monaco_editor_IModelLanguageConfigurationChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IModelContentChange"] IModelContentChange : sig
      type t = monaco_editor_IModelContentChange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The range that got replaced. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** The offset of the range that got replaced. *)
      val get_rangeOffset: t -> float [@@js.get "rangeOffset"]
      (** The length of the range that got replaced. *)
      val get_rangeLength: t -> float [@@js.get "rangeLength"]
      (** The new text for the range. *)
      val get_text: t -> string [@@js.get "text"]
    end
    (** An event describing a change in the text of a model. *)
    module[@js.scope "IModelContentChangedEvent"] IModelContentChangedEvent : sig
      type t = monaco_editor_IModelContentChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_changes: t -> monaco_editor_IModelContentChange list [@@js.get "changes"]
      (** The (new) end-of-line character. *)
      val get_eol: t -> string [@@js.get "eol"]
      (** The new version id the model has transitioned to. *)
      val get_versionId: t -> float [@@js.get "versionId"]
      (** Flag that indicates that this event was generated while undoing. *)
      val get_isUndoing: t -> bool [@@js.get "isUndoing"]
      (** Flag that indicates that this event was generated while redoing. *)
      val get_isRedoing: t -> bool [@@js.get "isRedoing"]
      (**
        Flag that indicates that all decorations were lost with this edit.
        The model has been reset to a new value.
      *)
      val get_isFlush: t -> bool [@@js.get "isFlush"]
    end
    (** An event describing that model decorations have changed. *)
    module[@js.scope "IModelDecorationsChangedEvent"] IModelDecorationsChangedEvent : sig
      type t = monaco_editor_IModelDecorationsChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_affectsMinimap: t -> bool [@@js.get "affectsMinimap"]
      val get_affectsOverviewRuler: t -> bool [@@js.get "affectsOverviewRuler"]
    end
    module[@js.scope "IModelOptionsChangedEvent"] IModelOptionsChangedEvent : sig
      type t = monaco_editor_IModelOptionsChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_tabSize: t -> bool [@@js.get "tabSize"]
      val get_indentSize: t -> bool [@@js.get "indentSize"]
      val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
      val get_trimAutoWhitespace: t -> bool [@@js.get "trimAutoWhitespace"]
    end
    (** Describes the reason the cursor has changed its position. *)
    module CursorChangeReason : sig
      type t = monaco_editor_CursorChangeReason
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** An event describing that the cursor position has changed. *)
    module[@js.scope "ICursorPositionChangedEvent"] ICursorPositionChangedEvent : sig
      type t = monaco_editor_ICursorPositionChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Primary cursor's position. *)
      val get_position: t -> monaco_Position [@@js.get "position"]
      (** Secondary cursors' position. *)
      val get_secondaryPositions: t -> monaco_Position list [@@js.get "secondaryPositions"]
      (** Reason. *)
      val get_reason: t -> monaco_editor_CursorChangeReason [@@js.get "reason"]
      (** Source of the call that caused the event. *)
      val get_source: t -> string [@@js.get "source"]
    end
    (** An event describing that the cursor selection has changed. *)
    module[@js.scope "ICursorSelectionChangedEvent"] ICursorSelectionChangedEvent : sig
      type t = monaco_editor_ICursorSelectionChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The primary selection. *)
      val get_selection: t -> monaco_Selection [@@js.get "selection"]
      (** The secondary selections. *)
      val get_secondarySelections: t -> monaco_Selection list [@@js.get "secondarySelections"]
      (** The model version id. *)
      val get_modelVersionId: t -> float [@@js.get "modelVersionId"]
      (** The old selections. *)
      val get_oldSelections: t -> monaco_Selection list or_null [@@js.get "oldSelections"]
      (** The model version id the that `oldSelections` refer to. *)
      val get_oldModelVersionId: t -> float [@@js.get "oldModelVersionId"]
      (** Source of the call that caused the event. *)
      val get_source: t -> string [@@js.get "source"]
      (** Reason. *)
      val get_reason: t -> monaco_editor_CursorChangeReason [@@js.get "reason"]
    end
    module AccessibilitySupport : sig
      type t = monaco_editor_AccessibilitySupport
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for auto closing quotes and brackets *)
    module EditorAutoClosingStrategy : sig
      type t = monaco_editor_EditorAutoClosingStrategy
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for auto wrapping quotes and brackets *)
    module EditorAutoSurroundStrategy : sig
      type t = monaco_editor_EditorAutoSurroundStrategy
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for typing over closing quotes or brackets *)
    module EditorAutoClosingEditStrategy : sig
      type t = monaco_editor_EditorAutoClosingEditStrategy
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for auto indentation in the editor *)
    module EditorAutoIndentStrategy : sig
      type t = monaco_editor_EditorAutoIndentStrategy
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for the editor. *)
    module[@js.scope "IEditorOptions"] IEditorOptions : sig
      type t = monaco_editor_IEditorOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** This editor is used inside a diff editor. *)
      (** This editor is used inside a diff editor. *)
      val get_inDiffEditor: t -> bool [@@js.get "inDiffEditor"]
      (** This editor is used inside a diff editor. *)
      val set_inDiffEditor: t -> bool -> unit [@@js.set "inDiffEditor"]
      (** The aria label for the editor's textarea (when it is focused). *)
      (** The aria label for the editor's textarea (when it is focused). *)
      val get_ariaLabel: t -> string [@@js.get "ariaLabel"]
      (** The aria label for the editor's textarea (when it is focused). *)
      val set_ariaLabel: t -> string -> unit [@@js.set "ariaLabel"]
      (** The `tabindex` property of the editor's textarea *)
      (** The `tabindex` property of the editor's textarea *)
      val get_tabIndex: t -> float [@@js.get "tabIndex"]
      (** The `tabindex` property of the editor's textarea *)
      val set_tabIndex: t -> float -> unit [@@js.set "tabIndex"]
      (**
        Render vertical lines at the specified columns.
        Defaults to empty array.
      *)
      (**
        Render vertical lines at the specified columns.
        Defaults to empty array.
      *)
      val get_rulers: t -> monaco_editor_IRulerOption or_number list [@@js.get "rulers"]
      (**
        Render vertical lines at the specified columns.
        Defaults to empty array.
      *)
      val set_rulers: t -> monaco_editor_IRulerOption or_number list -> unit [@@js.set "rulers"]
      (**
        A string containing the word separators used when doing word navigation.
        Defaults to `~!\@#$%^&*()-=+\[\{\]\}\\|;:\'",.<>/?
        "
      *)
      (**
        A string containing the word separators used when doing word navigation.
        Defaults to `~!\@#$%^&*()-=+\[\{\]\}\\|;:\'",.<>/?
        "
      *)
      val get_wordSeparators: t -> string [@@js.get "wordSeparators"]
      (**
        A string containing the word separators used when doing word navigation.
        Defaults to `~!\@#$%^&*()-=+\[\{\]\}\\|;:\'",.<>/?
        "
      *)
      val set_wordSeparators: t -> string -> unit [@@js.set "wordSeparators"]
      (**
        Enable Linux primary clipboard.
        Defaults to true.
      *)
      (**
        Enable Linux primary clipboard.
        Defaults to true.
      *)
      val get_selectionClipboard: t -> bool [@@js.get "selectionClipboard"]
      (**
        Enable Linux primary clipboard.
        Defaults to true.
      *)
      val set_selectionClipboard: t -> bool -> unit [@@js.set "selectionClipboard"]
      (**
        Control the rendering of line numbers.
        If it is a function, it will be invoked when rendering a line number and the return value will be rendered.
        Otherwise, if it is a truey, line numbers will be rendered normally (equivalent of using an identity function).
        Otherwise, line numbers will not be rendered.
        Defaults to `on`.
      *)
      (**
        Control the rendering of line numbers.
        If it is a function, it will be invoked when rendering a line number and the return value will be rendered.
        Otherwise, if it is a truey, line numbers will be rendered normally (equivalent of using an identity function).
        Otherwise, line numbers will not be rendered.
        Defaults to `on`.
      *)
      val get_lineNumbers: t -> monaco_editor_LineNumbersType [@@js.get "lineNumbers"]
      (**
        Control the rendering of line numbers.
        If it is a function, it will be invoked when rendering a line number and the return value will be rendered.
        Otherwise, if it is a truey, line numbers will be rendered normally (equivalent of using an identity function).
        Otherwise, line numbers will not be rendered.
        Defaults to `on`.
      *)
      val set_lineNumbers: t -> monaco_editor_LineNumbersType -> unit [@@js.set "lineNumbers"]
      (**
        Controls the minimal number of visible leading and trailing lines surrounding the cursor.
        Defaults to 0.
      *)
      (**
        Controls the minimal number of visible leading and trailing lines surrounding the cursor.
        Defaults to 0.
      *)
      val get_cursorSurroundingLines: t -> float [@@js.get "cursorSurroundingLines"]
      (**
        Controls the minimal number of visible leading and trailing lines surrounding the cursor.
        Defaults to 0.
      *)
      val set_cursorSurroundingLines: t -> float -> unit [@@js.set "cursorSurroundingLines"]
      (**
        Controls when `cursorSurroundingLines` should be enforced
        Defaults to `default`, `cursorSurroundingLines` is not enforced when cursor position is changed
        by mouse.
      *)
      (**
        Controls when `cursorSurroundingLines` should be enforced
        Defaults to `default`, `cursorSurroundingLines` is not enforced when cursor position is changed
        by mouse.
      *)
      val get_cursorSurroundingLinesStyle: t -> ([`L_s1_all[@js "all"] | `L_s19_default[@js "default"]] [@js.enum]) [@@js.get "cursorSurroundingLinesStyle"]
      (**
        Controls when `cursorSurroundingLines` should be enforced
        Defaults to `default`, `cursorSurroundingLines` is not enforced when cursor position is changed
        by mouse.
      *)
      val set_cursorSurroundingLinesStyle: t -> ([`L_s1_all | `L_s19_default] [@js.enum]) -> unit [@@js.set "cursorSurroundingLinesStyle"]
      (**
        Render last line number when the file ends with a newline.
        Defaults to true.
      *)
      (**
        Render last line number when the file ends with a newline.
        Defaults to true.
      *)
      val get_renderFinalNewline: t -> bool [@@js.get "renderFinalNewline"]
      (**
        Render last line number when the file ends with a newline.
        Defaults to true.
      *)
      val set_renderFinalNewline: t -> bool -> unit [@@js.set "renderFinalNewline"]
      (**
        Remove unusual line terminators like LINE SEPARATOR (LS), PARAGRAPH SEPARATOR (PS).
        Defaults to 'prompt'.
      *)
      (**
        Remove unusual line terminators like LINE SEPARATOR (LS), PARAGRAPH SEPARATOR (PS).
        Defaults to 'prompt'.
      *)
      val get_unusualLineTerminators: t -> ([`L_s5_auto[@js "auto"] | `L_s54_off[@js "off"] | `L_s59_prompt[@js "prompt"]] [@js.enum]) [@@js.get "unusualLineTerminators"]
      (**
        Remove unusual line terminators like LINE SEPARATOR (LS), PARAGRAPH SEPARATOR (PS).
        Defaults to 'prompt'.
      *)
      val set_unusualLineTerminators: t -> ([`L_s5_auto | `L_s54_off | `L_s59_prompt] [@js.enum]) -> unit [@@js.set "unusualLineTerminators"]
      (**
        Should the corresponding line be selected when clicking on the line number?
        Defaults to true.
      *)
      (**
        Should the corresponding line be selected when clicking on the line number?
        Defaults to true.
      *)
      val get_selectOnLineNumbers: t -> bool [@@js.get "selectOnLineNumbers"]
      (**
        Should the corresponding line be selected when clicking on the line number?
        Defaults to true.
      *)
      val set_selectOnLineNumbers: t -> bool -> unit [@@js.set "selectOnLineNumbers"]
      (**
        Control the width of line numbers, by reserving horizontal space for rendering at least an amount of digits.
        Defaults to 5.
      *)
      (**
        Control the width of line numbers, by reserving horizontal space for rendering at least an amount of digits.
        Defaults to 5.
      *)
      val get_lineNumbersMinChars: t -> float [@@js.get "lineNumbersMinChars"]
      (**
        Control the width of line numbers, by reserving horizontal space for rendering at least an amount of digits.
        Defaults to 5.
      *)
      val set_lineNumbersMinChars: t -> float -> unit [@@js.set "lineNumbersMinChars"]
      (**
        Enable the rendering of the glyph margin.
        Defaults to true in vscode and to false in monaco-editor.
      *)
      (**
        Enable the rendering of the glyph margin.
        Defaults to true in vscode and to false in monaco-editor.
      *)
      val get_glyphMargin: t -> bool [@@js.get "glyphMargin"]
      (**
        Enable the rendering of the glyph margin.
        Defaults to true in vscode and to false in monaco-editor.
      *)
      val set_glyphMargin: t -> bool -> unit [@@js.set "glyphMargin"]
      (**
        The width reserved for line decorations (in px).
        Line decorations are placed between line numbers and the editor content.
        You can pass in a string in the format floating point followed by "ch". e.g. 1.3ch.
        Defaults to 10.
      *)
      (**
        The width reserved for line decorations (in px).
        Line decorations are placed between line numbers and the editor content.
        You can pass in a string in the format floating point followed by "ch". e.g. 1.3ch.
        Defaults to 10.
      *)
      val get_lineDecorationsWidth: t -> string or_number [@@js.get "lineDecorationsWidth"]
      (**
        The width reserved for line decorations (in px).
        Line decorations are placed between line numbers and the editor content.
        You can pass in a string in the format floating point followed by "ch". e.g. 1.3ch.
        Defaults to 10.
      *)
      val set_lineDecorationsWidth: t -> string or_number -> unit [@@js.set "lineDecorationsWidth"]
      (**
        When revealing the cursor, a virtual padding (px) is added to the cursor, turning it into a rectangle.
        This virtual padding ensures that the cursor gets revealed before hitting the edge of the viewport.
        Defaults to 30 (px).
      *)
      (**
        When revealing the cursor, a virtual padding (px) is added to the cursor, turning it into a rectangle.
        This virtual padding ensures that the cursor gets revealed before hitting the edge of the viewport.
        Defaults to 30 (px).
      *)
      val get_revealHorizontalRightPadding: t -> float [@@js.get "revealHorizontalRightPadding"]
      (**
        When revealing the cursor, a virtual padding (px) is added to the cursor, turning it into a rectangle.
        This virtual padding ensures that the cursor gets revealed before hitting the edge of the viewport.
        Defaults to 30 (px).
      *)
      val set_revealHorizontalRightPadding: t -> float -> unit [@@js.set "revealHorizontalRightPadding"]
      (**
        Render the editor selection with rounded borders.
        Defaults to true.
      *)
      (**
        Render the editor selection with rounded borders.
        Defaults to true.
      *)
      val get_roundedSelection: t -> bool [@@js.get "roundedSelection"]
      (**
        Render the editor selection with rounded borders.
        Defaults to true.
      *)
      val set_roundedSelection: t -> bool -> unit [@@js.set "roundedSelection"]
      (** Class name to be added to the editor. *)
      (** Class name to be added to the editor. *)
      val get_extraEditorClassName: t -> string [@@js.get "extraEditorClassName"]
      (** Class name to be added to the editor. *)
      val set_extraEditorClassName: t -> string -> unit [@@js.set "extraEditorClassName"]
      (**
        Should the editor be read only. See also `domReadOnly`.
        Defaults to false.
      *)
      (**
        Should the editor be read only. See also `domReadOnly`.
        Defaults to false.
      *)
      val get_readOnly: t -> bool [@@js.get "readOnly"]
      (**
        Should the editor be read only. See also `domReadOnly`.
        Defaults to false.
      *)
      val set_readOnly: t -> bool -> unit [@@js.set "readOnly"]
      (**
        Should the textarea used for input use the DOM `readonly` attribute.
        Defaults to false.
      *)
      (**
        Should the textarea used for input use the DOM `readonly` attribute.
        Defaults to false.
      *)
      val get_domReadOnly: t -> bool [@@js.get "domReadOnly"]
      (**
        Should the textarea used for input use the DOM `readonly` attribute.
        Defaults to false.
      *)
      val set_domReadOnly: t -> bool -> unit [@@js.set "domReadOnly"]
      (**
        Enable linked editing.
        Defaults to false.
      *)
      (**
        Enable linked editing.
        Defaults to false.
      *)
      val get_linkedEditing: t -> bool [@@js.get "linkedEditing"]
      (**
        Enable linked editing.
        Defaults to false.
      *)
      val set_linkedEditing: t -> bool -> unit [@@js.set "linkedEditing"]
      (** deprecated, use linkedEditing instead *)
      (** deprecated, use linkedEditing instead *)
      val get_renameOnType: t -> bool [@@js.get "renameOnType"]
      (** deprecated, use linkedEditing instead *)
      val set_renameOnType: t -> bool -> unit [@@js.set "renameOnType"]
      (**
        Should the editor render validation decorations.
        Defaults to editable.
      *)
      (**
        Should the editor render validation decorations.
        Defaults to editable.
      *)
      val get_renderValidationDecorations: t -> ([`L_s20_editable[@js "editable"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum]) [@@js.get "renderValidationDecorations"]
      (**
        Should the editor render validation decorations.
        Defaults to editable.
      *)
      val set_renderValidationDecorations: t -> ([`L_s20_editable | `L_s54_off | `L_s55_on] [@js.enum]) -> unit [@@js.set "renderValidationDecorations"]
      (** Control the behavior and rendering of the scrollbars. *)
      (** Control the behavior and rendering of the scrollbars. *)
      val get_scrollbar: t -> monaco_editor_IEditorScrollbarOptions [@@js.get "scrollbar"]
      (** Control the behavior and rendering of the scrollbars. *)
      val set_scrollbar: t -> monaco_editor_IEditorScrollbarOptions -> unit [@@js.set "scrollbar"]
      (** Control the behavior and rendering of the minimap. *)
      (** Control the behavior and rendering of the minimap. *)
      val get_minimap: t -> monaco_editor_IEditorMinimapOptions [@@js.get "minimap"]
      (** Control the behavior and rendering of the minimap. *)
      val set_minimap: t -> monaco_editor_IEditorMinimapOptions -> unit [@@js.set "minimap"]
      (** Control the behavior of the find widget. *)
      (** Control the behavior of the find widget. *)
      val get_find: t -> monaco_editor_IEditorFindOptions [@@js.get "find"]
      (** Control the behavior of the find widget. *)
      val set_find: t -> monaco_editor_IEditorFindOptions -> unit [@@js.set "find"]
      (**
        Display overflow widgets as `fixed`.
        Defaults to `false`.
      *)
      (**
        Display overflow widgets as `fixed`.
        Defaults to `false`.
      *)
      val get_fixedOverflowWidgets: t -> bool [@@js.get "fixedOverflowWidgets"]
      (**
        Display overflow widgets as `fixed`.
        Defaults to `false`.
      *)
      val set_fixedOverflowWidgets: t -> bool -> unit [@@js.set "fixedOverflowWidgets"]
      (**
        The number of vertical lanes the overview ruler should render.
        Defaults to 3.
      *)
      (**
        The number of vertical lanes the overview ruler should render.
        Defaults to 3.
      *)
      val get_overviewRulerLanes: t -> float [@@js.get "overviewRulerLanes"]
      (**
        The number of vertical lanes the overview ruler should render.
        Defaults to 3.
      *)
      val set_overviewRulerLanes: t -> float -> unit [@@js.set "overviewRulerLanes"]
      (**
        Controls if a border should be drawn around the overview ruler.
        Defaults to `true`.
      *)
      (**
        Controls if a border should be drawn around the overview ruler.
        Defaults to `true`.
      *)
      val get_overviewRulerBorder: t -> bool [@@js.get "overviewRulerBorder"]
      (**
        Controls if a border should be drawn around the overview ruler.
        Defaults to `true`.
      *)
      val set_overviewRulerBorder: t -> bool -> unit [@@js.set "overviewRulerBorder"]
      (**
        Control the cursor animation style, possible values are 'blink', 'smooth', 'phase', 'expand' and 'solid'.
        Defaults to 'blink'.
      *)
      (**
        Control the cursor animation style, possible values are 'blink', 'smooth', 'phase', 'expand' and 'solid'.
        Defaults to 'blink'.
      *)
      val get_cursorBlinking: t -> ([`L_s7_blink[@js "blink"] | `L_s23_expand[@js "expand"] | `L_s58_phase[@js "phase"] | `L_s71_smooth[@js "smooth"] | `L_s72_solid[@js "solid"]] [@js.enum]) [@@js.get "cursorBlinking"]
      (**
        Control the cursor animation style, possible values are 'blink', 'smooth', 'phase', 'expand' and 'solid'.
        Defaults to 'blink'.
      *)
      val set_cursorBlinking: t -> ([`L_s7_blink | `L_s23_expand | `L_s58_phase | `L_s71_smooth | `L_s72_solid] [@js.enum]) -> unit [@@js.set "cursorBlinking"]
      (**
        Zoom the font in the editor when using the mouse wheel in combination with holding Ctrl.
        Defaults to false.
      *)
      (**
        Zoom the font in the editor when using the mouse wheel in combination with holding Ctrl.
        Defaults to false.
      *)
      val get_mouseWheelZoom: t -> bool [@@js.get "mouseWheelZoom"]
      (**
        Zoom the font in the editor when using the mouse wheel in combination with holding Ctrl.
        Defaults to false.
      *)
      val set_mouseWheelZoom: t -> bool -> unit [@@js.set "mouseWheelZoom"]
      (**
        Control the mouse pointer style, either 'text' or 'default' or 'copy'
        Defaults to 'text'
      *)
      (**
        Control the mouse pointer style, either 'text' or 'default' or 'copy'
        Defaults to 'text'
      *)
      val get_mouseStyle: t -> ([`L_s15_copy[@js "copy"] | `L_s19_default[@js "default"] | `L_s74_text[@js "text"]] [@js.enum]) [@@js.get "mouseStyle"]
      (**
        Control the mouse pointer style, either 'text' or 'default' or 'copy'
        Defaults to 'text'
      *)
      val set_mouseStyle: t -> ([`L_s15_copy | `L_s19_default | `L_s74_text] [@js.enum]) -> unit [@@js.set "mouseStyle"]
      (**
        Enable smooth caret animation.
        Defaults to false.
      *)
      (**
        Enable smooth caret animation.
        Defaults to false.
      *)
      val get_cursorSmoothCaretAnimation: t -> bool [@@js.get "cursorSmoothCaretAnimation"]
      (**
        Enable smooth caret animation.
        Defaults to false.
      *)
      val set_cursorSmoothCaretAnimation: t -> bool -> unit [@@js.set "cursorSmoothCaretAnimation"]
      (**
        Control the cursor style, either 'block' or 'line'.
        Defaults to 'line'.
      *)
      (**
        Control the cursor style, either 'block' or 'line'.
        Defaults to 'line'.
      *)
      val get_cursorStyle: t -> ([`L_s8_block[@js "block"] | `L_s9_block_outline[@js "block-outline"] | `L_s46_line[@js "line"] | `L_s47_line_thin[@js "line-thin"] | `L_s78_underline[@js "underline"] | `L_s79_underline_thin[@js "underline-thin"]] [@js.enum]) [@@js.get "cursorStyle"]
      (**
        Control the cursor style, either 'block' or 'line'.
        Defaults to 'line'.
      *)
      val set_cursorStyle: t -> ([`L_s8_block | `L_s9_block_outline | `L_s46_line | `L_s47_line_thin | `L_s78_underline | `L_s79_underline_thin] [@js.enum]) -> unit [@@js.set "cursorStyle"]
      (** Control the width of the cursor when cursorStyle is set to 'line' *)
      (** Control the width of the cursor when cursorStyle is set to 'line' *)
      val get_cursorWidth: t -> float [@@js.get "cursorWidth"]
      (** Control the width of the cursor when cursorStyle is set to 'line' *)
      val set_cursorWidth: t -> float -> unit [@@js.set "cursorWidth"]
      (**
        Enable font ligatures.
        Defaults to false.
      *)
      (**
        Enable font ligatures.
        Defaults to false.
      *)
      val get_fontLigatures: t -> bool or_string [@@js.get "fontLigatures"]
      (**
        Enable font ligatures.
        Defaults to false.
      *)
      val set_fontLigatures: t -> bool or_string -> unit [@@js.set "fontLigatures"]
      (**
        Disable the use of `transform: translate3d(0px, 0px, 0px)` for the editor margin and lines layers.
        The usage of `transform: translate3d(0px, 0px, 0px)` acts as a hint for browsers to create an extra layer.
        Defaults to false.
      *)
      (**
        Disable the use of `transform: translate3d(0px, 0px, 0px)` for the editor margin and lines layers.
        The usage of `transform: translate3d(0px, 0px, 0px)` acts as a hint for browsers to create an extra layer.
        Defaults to false.
      *)
      val get_disableLayerHinting: t -> bool [@@js.get "disableLayerHinting"]
      (**
        Disable the use of `transform: translate3d(0px, 0px, 0px)` for the editor margin and lines layers.
        The usage of `transform: translate3d(0px, 0px, 0px)` acts as a hint for browsers to create an extra layer.
        Defaults to false.
      *)
      val set_disableLayerHinting: t -> bool -> unit [@@js.set "disableLayerHinting"]
      (**
        Disable the optimizations for monospace fonts.
        Defaults to false.
      *)
      (**
        Disable the optimizations for monospace fonts.
        Defaults to false.
      *)
      val get_disableMonospaceOptimizations: t -> bool [@@js.get "disableMonospaceOptimizations"]
      (**
        Disable the optimizations for monospace fonts.
        Defaults to false.
      *)
      val set_disableMonospaceOptimizations: t -> bool -> unit [@@js.set "disableMonospaceOptimizations"]
      (**
        Should the cursor be hidden in the overview ruler.
        Defaults to false.
      *)
      (**
        Should the cursor be hidden in the overview ruler.
        Defaults to false.
      *)
      val get_hideCursorInOverviewRuler: t -> bool [@@js.get "hideCursorInOverviewRuler"]
      (**
        Should the cursor be hidden in the overview ruler.
        Defaults to false.
      *)
      val set_hideCursorInOverviewRuler: t -> bool -> unit [@@js.set "hideCursorInOverviewRuler"]
      (**
        Enable that scrolling can go one screen size after the last line.
        Defaults to true.
      *)
      (**
        Enable that scrolling can go one screen size after the last line.
        Defaults to true.
      *)
      val get_scrollBeyondLastLine: t -> bool [@@js.get "scrollBeyondLastLine"]
      (**
        Enable that scrolling can go one screen size after the last line.
        Defaults to true.
      *)
      val set_scrollBeyondLastLine: t -> bool -> unit [@@js.set "scrollBeyondLastLine"]
      (**
        Enable that scrolling can go beyond the last column by a number of columns.
        Defaults to 5.
      *)
      (**
        Enable that scrolling can go beyond the last column by a number of columns.
        Defaults to 5.
      *)
      val get_scrollBeyondLastColumn: t -> float [@@js.get "scrollBeyondLastColumn"]
      (**
        Enable that scrolling can go beyond the last column by a number of columns.
        Defaults to 5.
      *)
      val set_scrollBeyondLastColumn: t -> float -> unit [@@js.set "scrollBeyondLastColumn"]
      (**
        Enable that the editor animates scrolling to a position.
        Defaults to false.
      *)
      (**
        Enable that the editor animates scrolling to a position.
        Defaults to false.
      *)
      val get_smoothScrolling: t -> bool [@@js.get "smoothScrolling"]
      (**
        Enable that the editor animates scrolling to a position.
        Defaults to false.
      *)
      val set_smoothScrolling: t -> bool -> unit [@@js.set "smoothScrolling"]
      (**
        Enable that the editor will install an interval to check if its container dom node size has changed.
        Enabling this might have a severe performance impact.
        Defaults to false.
      *)
      (**
        Enable that the editor will install an interval to check if its container dom node size has changed.
        Enabling this might have a severe performance impact.
        Defaults to false.
      *)
      val get_automaticLayout: t -> bool [@@js.get "automaticLayout"]
      (**
        Enable that the editor will install an interval to check if its container dom node size has changed.
        Enabling this might have a severe performance impact.
        Defaults to false.
      *)
      val set_automaticLayout: t -> bool -> unit [@@js.set "automaticLayout"]
      (**
        Control the wrapping of the editor.
        When `wordWrap` = "off", the lines will never wrap.
        When `wordWrap` = "on", the lines will wrap at the viewport width.
        When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
        When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
        Defaults to "off".
      *)
      (**
        Control the wrapping of the editor.
        When `wordWrap` = "off", the lines will never wrap.
        When `wordWrap` = "on", the lines will wrap at the viewport width.
        When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
        When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
        Defaults to "off".
      *)
      val get_wordWrap: t -> ([`L_s12_bounded[@js "bounded"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"] | `L_s84_wordWrapColumn[@js "wordWrapColumn"]] [@js.enum]) [@@js.get "wordWrap"]
      (**
        Control the wrapping of the editor.
        When `wordWrap` = "off", the lines will never wrap.
        When `wordWrap` = "on", the lines will wrap at the viewport width.
        When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
        When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
        Defaults to "off".
      *)
      val set_wordWrap: t -> ([`L_s12_bounded | `L_s54_off | `L_s55_on | `L_s84_wordWrapColumn] [@js.enum]) -> unit [@@js.set "wordWrap"]
      (** Override the `wordWrap` setting. *)
      (** Override the `wordWrap` setting. *)
      val get_wordWrapOverride1: t -> ([`L_s39_inherit[@js "inherit"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum]) [@@js.get "wordWrapOverride1"]
      (** Override the `wordWrap` setting. *)
      val set_wordWrapOverride1: t -> ([`L_s39_inherit | `L_s54_off | `L_s55_on] [@js.enum]) -> unit [@@js.set "wordWrapOverride1"]
      (** Override the `wordWrapOverride1` setting. *)
      (** Override the `wordWrapOverride1` setting. *)
      val get_wordWrapOverride2: t -> ([`L_s39_inherit[@js "inherit"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum]) [@@js.get "wordWrapOverride2"]
      (** Override the `wordWrapOverride1` setting. *)
      val set_wordWrapOverride2: t -> ([`L_s39_inherit | `L_s54_off | `L_s55_on] [@js.enum]) -> unit [@@js.set "wordWrapOverride2"]
      (**
        Control the wrapping of the editor.
        When `wordWrap` = "off", the lines will never wrap.
        When `wordWrap` = "on", the lines will wrap at the viewport width.
        When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
        When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
        Defaults to 80.
      *)
      (**
        Control the wrapping of the editor.
        When `wordWrap` = "off", the lines will never wrap.
        When `wordWrap` = "on", the lines will wrap at the viewport width.
        When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
        When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
        Defaults to 80.
      *)
      val get_wordWrapColumn: t -> float [@@js.get "wordWrapColumn"]
      (**
        Control the wrapping of the editor.
        When `wordWrap` = "off", the lines will never wrap.
        When `wordWrap` = "on", the lines will wrap at the viewport width.
        When `wordWrap` = "wordWrapColumn", the lines will wrap at `wordWrapColumn`.
        When `wordWrap` = "bounded", the lines will wrap at min(viewport width, wordWrapColumn).
        Defaults to 80.
      *)
      val set_wordWrapColumn: t -> float -> unit [@@js.set "wordWrapColumn"]
      (**
        Control indentation of wrapped lines. Can be: 'none', 'same', 'indent' or 'deepIndent'.
        Defaults to 'same' in vscode and to 'none' in monaco-editor.
      *)
      (**
        Control indentation of wrapped lines. Can be: 'none', 'same', 'indent' or 'deepIndent'.
        Defaults to 'same' in vscode and to 'none' in monaco-editor.
      *)
      val get_wrappingIndent: t -> ([`L_s18_deepIndent[@js "deepIndent"] | `L_s37_indent[@js "indent"] | `L_s53_none[@js "none"] | `L_s67_same[@js "same"]] [@js.enum]) [@@js.get "wrappingIndent"]
      (**
        Control indentation of wrapped lines. Can be: 'none', 'same', 'indent' or 'deepIndent'.
        Defaults to 'same' in vscode and to 'none' in monaco-editor.
      *)
      val set_wrappingIndent: t -> ([`L_s18_deepIndent | `L_s37_indent | `L_s53_none | `L_s67_same] [@js.enum]) -> unit [@@js.set "wrappingIndent"]
      (**
        Controls the wrapping strategy to use.
        Defaults to 'simple'.
      *)
      (**
        Controls the wrapping strategy to use.
        Defaults to 'simple'.
      *)
      val get_wrappingStrategy: t -> ([`L_s0_advanced[@js "advanced"] | `L_s69_simple[@js "simple"]] [@js.enum]) [@@js.get "wrappingStrategy"]
      (**
        Controls the wrapping strategy to use.
        Defaults to 'simple'.
      *)
      val set_wrappingStrategy: t -> ([`L_s0_advanced | `L_s69_simple] [@js.enum]) -> unit [@@js.set "wrappingStrategy"]
      (**
        Configure word wrapping characters. A break will be introduced before these characters.
        Defaults to '(\[\{‘“〈《「『【〔（［｛｢£¥＄￡￥+＋'.
      *)
      (**
        Configure word wrapping characters. A break will be introduced before these characters.
        Defaults to '(\[\{‘“〈《「『【〔（［｛｢£¥＄￡￥+＋'.
      *)
      val get_wordWrapBreakBeforeCharacters: t -> string [@@js.get "wordWrapBreakBeforeCharacters"]
      (**
        Configure word wrapping characters. A break will be introduced before these characters.
        Defaults to '(\[\{‘“〈《「『【〔（［｛｢£¥＄￡￥+＋'.
      *)
      val set_wordWrapBreakBeforeCharacters: t -> string -> unit [@@js.set "wordWrapBreakBeforeCharacters"]
      (**
        Configure word wrapping characters. A break will be introduced after these characters.
        Defaults to ' \t\})\]?|/&.,;¢°′″‰℃、。｡､￠，．：；？！％・･ゝゞヽヾーァィゥェォッャュョヮヵヶぁぃぅぇぉっゃゅょゎゕゖㇰㇱㇲㇳㇴㇵㇶㇷㇸㇹㇺㇻㇼㇽㇾㇿ々〻ｧｨｩｪｫｬｭｮｯｰ”〉》」』】〕）］｝｣'.
      *)
      (**
        Configure word wrapping characters. A break will be introduced after these characters.
        Defaults to ' \t\})\]?|/&.,;¢°′″‰℃、。｡､￠，．：；？！％・･ゝゞヽヾーァィゥェォッャュョヮヵヶぁぃぅぇぉっゃゅょゎゕゖㇰㇱㇲㇳㇴㇵㇶㇷㇸㇹㇺㇻㇼㇽㇾㇿ々〻ｧｨｩｪｫｬｭｮｯｰ”〉》」』】〕）］｝｣'.
      *)
      val get_wordWrapBreakAfterCharacters: t -> string [@@js.get "wordWrapBreakAfterCharacters"]
      (**
        Configure word wrapping characters. A break will be introduced after these characters.
        Defaults to ' \t\})\]?|/&.,;¢°′″‰℃、。｡､￠，．：；？！％・･ゝゞヽヾーァィゥェォッャュョヮヵヶぁぃぅぇぉっゃゅょゎゕゖㇰㇱㇲㇳㇴㇵㇶㇷㇸㇹㇺㇻㇼㇽㇾㇿ々〻ｧｨｩｪｫｬｭｮｯｰ”〉》」』】〕）］｝｣'.
      *)
      val set_wordWrapBreakAfterCharacters: t -> string -> unit [@@js.set "wordWrapBreakAfterCharacters"]
      (**
        Performance guard: Stop rendering a line after x characters.
        Defaults to 10000.
        Use -1 to never stop rendering
      *)
      (**
        Performance guard: Stop rendering a line after x characters.
        Defaults to 10000.
        Use -1 to never stop rendering
      *)
      val get_stopRenderingLineAfter: t -> float [@@js.get "stopRenderingLineAfter"]
      (**
        Performance guard: Stop rendering a line after x characters.
        Defaults to 10000.
        Use -1 to never stop rendering
      *)
      val set_stopRenderingLineAfter: t -> float -> unit [@@js.set "stopRenderingLineAfter"]
      (** Configure the editor's hover. *)
      (** Configure the editor's hover. *)
      val get_hover: t -> monaco_editor_IEditorHoverOptions [@@js.get "hover"]
      (** Configure the editor's hover. *)
      val set_hover: t -> monaco_editor_IEditorHoverOptions -> unit [@@js.set "hover"]
      (**
        Enable detecting links and making them clickable.
        Defaults to true.
      *)
      (**
        Enable detecting links and making them clickable.
        Defaults to true.
      *)
      val get_links: t -> bool [@@js.get "links"]
      (**
        Enable detecting links and making them clickable.
        Defaults to true.
      *)
      val set_links: t -> bool -> unit [@@js.set "links"]
      (** Enable inline color decorators and color picker rendering. *)
      (** Enable inline color decorators and color picker rendering. *)
      val get_colorDecorators: t -> bool [@@js.get "colorDecorators"]
      (** Enable inline color decorators and color picker rendering. *)
      val set_colorDecorators: t -> bool -> unit [@@js.set "colorDecorators"]
      (** Control the behaviour of comments in the editor. *)
      (** Control the behaviour of comments in the editor. *)
      val get_comments: t -> monaco_editor_IEditorCommentsOptions [@@js.get "comments"]
      (** Control the behaviour of comments in the editor. *)
      val set_comments: t -> monaco_editor_IEditorCommentsOptions -> unit [@@js.set "comments"]
      (**
        Enable custom contextmenu.
        Defaults to true.
      *)
      (**
        Enable custom contextmenu.
        Defaults to true.
      *)
      val get_contextmenu: t -> bool [@@js.get "contextmenu"]
      (**
        Enable custom contextmenu.
        Defaults to true.
      *)
      val set_contextmenu: t -> bool -> unit [@@js.set "contextmenu"]
      (**
        A multiplier to be used on the `deltaX` and `deltaY` of mouse wheel scroll events.
        Defaults to 1.
      *)
      (**
        A multiplier to be used on the `deltaX` and `deltaY` of mouse wheel scroll events.
        Defaults to 1.
      *)
      val get_mouseWheelScrollSensitivity: t -> float [@@js.get "mouseWheelScrollSensitivity"]
      (**
        A multiplier to be used on the `deltaX` and `deltaY` of mouse wheel scroll events.
        Defaults to 1.
      *)
      val set_mouseWheelScrollSensitivity: t -> float -> unit [@@js.set "mouseWheelScrollSensitivity"]
      (**
        FastScrolling mulitplier speed when pressing `Alt`
        Defaults to 5.
      *)
      (**
        FastScrolling mulitplier speed when pressing `Alt`
        Defaults to 5.
      *)
      val get_fastScrollSensitivity: t -> float [@@js.get "fastScrollSensitivity"]
      (**
        FastScrolling mulitplier speed when pressing `Alt`
        Defaults to 5.
      *)
      val set_fastScrollSensitivity: t -> float -> unit [@@js.set "fastScrollSensitivity"]
      (**
        Enable that the editor scrolls only the predominant axis. Prevents horizontal drift when scrolling vertically on a trackpad.
        Defaults to true.
      *)
      (**
        Enable that the editor scrolls only the predominant axis. Prevents horizontal drift when scrolling vertically on a trackpad.
        Defaults to true.
      *)
      val get_scrollPredominantAxis: t -> bool [@@js.get "scrollPredominantAxis"]
      (**
        Enable that the editor scrolls only the predominant axis. Prevents horizontal drift when scrolling vertically on a trackpad.
        Defaults to true.
      *)
      val set_scrollPredominantAxis: t -> bool -> unit [@@js.set "scrollPredominantAxis"]
      (**
        Enable that the selection with the mouse and keys is doing column selection.
        Defaults to false.
      *)
      (**
        Enable that the selection with the mouse and keys is doing column selection.
        Defaults to false.
      *)
      val get_columnSelection: t -> bool [@@js.get "columnSelection"]
      (**
        Enable that the selection with the mouse and keys is doing column selection.
        Defaults to false.
      *)
      val set_columnSelection: t -> bool -> unit [@@js.set "columnSelection"]
      (**
        The modifier to be used to add multiple cursors with the mouse.
        Defaults to 'alt'
      *)
      (**
        The modifier to be used to add multiple cursors with the mouse.
        Defaults to 'alt'
      *)
      val get_multiCursorModifier: t -> ([`L_s2_alt[@js "alt"] | `L_s16_ctrlCmd[@js "ctrlCmd"]] [@js.enum]) [@@js.get "multiCursorModifier"]
      (**
        The modifier to be used to add multiple cursors with the mouse.
        Defaults to 'alt'
      *)
      val set_multiCursorModifier: t -> ([`L_s2_alt | `L_s16_ctrlCmd] [@js.enum]) -> unit [@@js.set "multiCursorModifier"]
      (**
        Merge overlapping selections.
        Defaults to true
      *)
      (**
        Merge overlapping selections.
        Defaults to true
      *)
      val get_multiCursorMergeOverlapping: t -> bool [@@js.get "multiCursorMergeOverlapping"]
      (**
        Merge overlapping selections.
        Defaults to true
      *)
      val set_multiCursorMergeOverlapping: t -> bool -> unit [@@js.set "multiCursorMergeOverlapping"]
      (**
        Configure the behaviour when pasting a text with the line count equal to the cursor count.
        Defaults to 'spread'.
      *)
      (**
        Configure the behaviour when pasting a text with the line count equal to the cursor count.
        Defaults to 'spread'.
      *)
      val get_multiCursorPaste: t -> ([`L_s30_full[@js "full"] | `L_s73_spread[@js "spread"]] [@js.enum]) [@@js.get "multiCursorPaste"]
      (**
        Configure the behaviour when pasting a text with the line count equal to the cursor count.
        Defaults to 'spread'.
      *)
      val set_multiCursorPaste: t -> ([`L_s30_full | `L_s73_spread] [@js.enum]) -> unit [@@js.set "multiCursorPaste"]
      (**
        Configure the editor's accessibility support.
        Defaults to 'auto'. It is best to leave this to 'auto'.
      *)
      (**
        Configure the editor's accessibility support.
        Defaults to 'auto'. It is best to leave this to 'auto'.
      *)
      val get_accessibilitySupport: t -> ([`L_s5_auto[@js "auto"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum]) [@@js.get "accessibilitySupport"]
      (**
        Configure the editor's accessibility support.
        Defaults to 'auto'. It is best to leave this to 'auto'.
      *)
      val set_accessibilitySupport: t -> ([`L_s5_auto | `L_s54_off | `L_s55_on] [@js.enum]) -> unit [@@js.set "accessibilitySupport"]
      (** Controls the number of lines in the editor that can be read out by a screen reader *)
      (** Controls the number of lines in the editor that can be read out by a screen reader *)
      val get_accessibilityPageSize: t -> float [@@js.get "accessibilityPageSize"]
      (** Controls the number of lines in the editor that can be read out by a screen reader *)
      val set_accessibilityPageSize: t -> float -> unit [@@js.set "accessibilityPageSize"]
      (** Suggest options. *)
      (** Suggest options. *)
      val get_suggest: t -> monaco_editor_ISuggestOptions [@@js.get "suggest"]
      (** Suggest options. *)
      val set_suggest: t -> monaco_editor_ISuggestOptions -> unit [@@js.set "suggest"]
      (** Smart select options. *)
      (** Smart select options. *)
      val get_smartSelect: t -> monaco_editor_ISmartSelectOptions [@@js.get "smartSelect"]
      (** Smart select options. *)
      val set_smartSelect: t -> monaco_editor_ISmartSelectOptions -> unit [@@js.set "smartSelect"]
      val get_gotoLocation: t -> monaco_editor_IGotoLocationOptions [@@js.get "gotoLocation"]
      val set_gotoLocation: t -> monaco_editor_IGotoLocationOptions -> unit [@@js.set "gotoLocation"]
      (**
        Enable quick suggestions (shadow suggestions)
        Defaults to true.
      *)
      (**
        Enable quick suggestions (shadow suggestions)
        Defaults to true.
      *)
      val get_quickSuggestions: t -> monaco_editor_IQuickSuggestionsOptions or_boolean [@@js.get "quickSuggestions"]
      (**
        Enable quick suggestions (shadow suggestions)
        Defaults to true.
      *)
      val set_quickSuggestions: t -> monaco_editor_IQuickSuggestionsOptions or_boolean -> unit [@@js.set "quickSuggestions"]
      (**
        Quick suggestions show delay (in ms)
        Defaults to 10 (ms)
      *)
      (**
        Quick suggestions show delay (in ms)
        Defaults to 10 (ms)
      *)
      val get_quickSuggestionsDelay: t -> float [@@js.get "quickSuggestionsDelay"]
      (**
        Quick suggestions show delay (in ms)
        Defaults to 10 (ms)
      *)
      val set_quickSuggestionsDelay: t -> float -> unit [@@js.set "quickSuggestionsDelay"]
      (** Controls the spacing around the editor. *)
      (** Controls the spacing around the editor. *)
      val get_padding: t -> monaco_editor_IEditorPaddingOptions [@@js.get "padding"]
      (** Controls the spacing around the editor. *)
      val set_padding: t -> monaco_editor_IEditorPaddingOptions -> unit [@@js.set "padding"]
      (** Parameter hint options. *)
      (** Parameter hint options. *)
      val get_parameterHints: t -> monaco_editor_IEditorParameterHintOptions [@@js.get "parameterHints"]
      (** Parameter hint options. *)
      val set_parameterHints: t -> monaco_editor_IEditorParameterHintOptions -> unit [@@js.set "parameterHints"]
      (**
        Options for auto closing brackets.
        Defaults to language defined behavior.
      *)
      (**
        Options for auto closing brackets.
        Defaults to language defined behavior.
      *)
      val get_autoClosingBrackets: t -> monaco_editor_EditorAutoClosingStrategy [@@js.get "autoClosingBrackets"]
      (**
        Options for auto closing brackets.
        Defaults to language defined behavior.
      *)
      val set_autoClosingBrackets: t -> monaco_editor_EditorAutoClosingStrategy -> unit [@@js.set "autoClosingBrackets"]
      (**
        Options for auto closing quotes.
        Defaults to language defined behavior.
      *)
      (**
        Options for auto closing quotes.
        Defaults to language defined behavior.
      *)
      val get_autoClosingQuotes: t -> monaco_editor_EditorAutoClosingStrategy [@@js.get "autoClosingQuotes"]
      (**
        Options for auto closing quotes.
        Defaults to language defined behavior.
      *)
      val set_autoClosingQuotes: t -> monaco_editor_EditorAutoClosingStrategy -> unit [@@js.set "autoClosingQuotes"]
      (** Options for pressing backspace near quotes or bracket pairs. *)
      (** Options for pressing backspace near quotes or bracket pairs. *)
      val get_autoClosingDelete: t -> monaco_editor_EditorAutoClosingEditStrategy [@@js.get "autoClosingDelete"]
      (** Options for pressing backspace near quotes or bracket pairs. *)
      val set_autoClosingDelete: t -> monaco_editor_EditorAutoClosingEditStrategy -> unit [@@js.set "autoClosingDelete"]
      (** Options for typing over closing quotes or brackets. *)
      (** Options for typing over closing quotes or brackets. *)
      val get_autoClosingOvertype: t -> monaco_editor_EditorAutoClosingEditStrategy [@@js.get "autoClosingOvertype"]
      (** Options for typing over closing quotes or brackets. *)
      val set_autoClosingOvertype: t -> monaco_editor_EditorAutoClosingEditStrategy -> unit [@@js.set "autoClosingOvertype"]
      (**
        Options for auto surrounding.
        Defaults to always allowing auto surrounding.
      *)
      (**
        Options for auto surrounding.
        Defaults to always allowing auto surrounding.
      *)
      val get_autoSurround: t -> monaco_editor_EditorAutoSurroundStrategy [@@js.get "autoSurround"]
      (**
        Options for auto surrounding.
        Defaults to always allowing auto surrounding.
      *)
      val set_autoSurround: t -> monaco_editor_EditorAutoSurroundStrategy -> unit [@@js.set "autoSurround"]
      (**
        Controls whether the editor should automatically adjust the indentation when users type, paste, move or indent lines.
        Defaults to advanced.
      *)
      (**
        Controls whether the editor should automatically adjust the indentation when users type, paste, move or indent lines.
        Defaults to advanced.
      *)
      val get_autoIndent: t -> ([`L_s0_advanced[@js "advanced"] | `L_s13_brackets[@js "brackets"] | `L_s30_full[@js "full"] | `L_s43_keep[@js "keep"] | `L_s53_none[@js "none"]] [@js.enum]) [@@js.get "autoIndent"]
      (**
        Controls whether the editor should automatically adjust the indentation when users type, paste, move or indent lines.
        Defaults to advanced.
      *)
      val set_autoIndent: t -> ([`L_s0_advanced | `L_s13_brackets | `L_s30_full | `L_s43_keep | `L_s53_none] [@js.enum]) -> unit [@@js.set "autoIndent"]
      (**
        Emulate selection behaviour of tab characters when using spaces for indentation.
        This means selection will stick to tab stops.
      *)
      (**
        Emulate selection behaviour of tab characters when using spaces for indentation.
        This means selection will stick to tab stops.
      *)
      val get_stickyTabStops: t -> bool [@@js.get "stickyTabStops"]
      (**
        Emulate selection behaviour of tab characters when using spaces for indentation.
        This means selection will stick to tab stops.
      *)
      val set_stickyTabStops: t -> bool -> unit [@@js.set "stickyTabStops"]
      (**
        Enable format on type.
        Defaults to false.
      *)
      (**
        Enable format on type.
        Defaults to false.
      *)
      val get_formatOnType: t -> bool [@@js.get "formatOnType"]
      (**
        Enable format on type.
        Defaults to false.
      *)
      val set_formatOnType: t -> bool -> unit [@@js.set "formatOnType"]
      (**
        Enable format on paste.
        Defaults to false.
      *)
      (**
        Enable format on paste.
        Defaults to false.
      *)
      val get_formatOnPaste: t -> bool [@@js.get "formatOnPaste"]
      (**
        Enable format on paste.
        Defaults to false.
      *)
      val set_formatOnPaste: t -> bool -> unit [@@js.set "formatOnPaste"]
      (**
        Controls if the editor should allow to move selections via drag and drop.
        Defaults to false.
      *)
      (**
        Controls if the editor should allow to move selections via drag and drop.
        Defaults to false.
      *)
      val get_dragAndDrop: t -> bool [@@js.get "dragAndDrop"]
      (**
        Controls if the editor should allow to move selections via drag and drop.
        Defaults to false.
      *)
      val set_dragAndDrop: t -> bool -> unit [@@js.set "dragAndDrop"]
      (**
        Enable the suggestion box to pop-up on trigger characters.
        Defaults to true.
      *)
      (**
        Enable the suggestion box to pop-up on trigger characters.
        Defaults to true.
      *)
      val get_suggestOnTriggerCharacters: t -> bool [@@js.get "suggestOnTriggerCharacters"]
      (**
        Enable the suggestion box to pop-up on trigger characters.
        Defaults to true.
      *)
      val set_suggestOnTriggerCharacters: t -> bool -> unit [@@js.set "suggestOnTriggerCharacters"]
      (**
        Accept suggestions on ENTER.
        Defaults to 'on'.
      *)
      (**
        Accept suggestions on ENTER.
        Defaults to 'on'.
      *)
      val get_acceptSuggestionOnEnter: t -> ([`L_s54_off[@js "off"] | `L_s55_on[@js "on"] | `L_s70_smart[@js "smart"]] [@js.enum]) [@@js.get "acceptSuggestionOnEnter"]
      (**
        Accept suggestions on ENTER.
        Defaults to 'on'.
      *)
      val set_acceptSuggestionOnEnter: t -> ([`L_s54_off | `L_s55_on | `L_s70_smart] [@js.enum]) -> unit [@@js.set "acceptSuggestionOnEnter"]
      (**
        Accept suggestions on provider defined characters.
        Defaults to true.
      *)
      (**
        Accept suggestions on provider defined characters.
        Defaults to true.
      *)
      val get_acceptSuggestionOnCommitCharacter: t -> bool [@@js.get "acceptSuggestionOnCommitCharacter"]
      (**
        Accept suggestions on provider defined characters.
        Defaults to true.
      *)
      val set_acceptSuggestionOnCommitCharacter: t -> bool -> unit [@@js.set "acceptSuggestionOnCommitCharacter"]
      (** Enable snippet suggestions. Default to 'true'. *)
      (** Enable snippet suggestions. Default to 'true'. *)
      val get_snippetSuggestions: t -> ([`L_s10_bottom[@js "bottom"] | `L_s40_inline[@js "inline"] | `L_s53_none[@js "none"] | `L_s75_top[@js "top"]] [@js.enum]) [@@js.get "snippetSuggestions"]
      (** Enable snippet suggestions. Default to 'true'. *)
      val set_snippetSuggestions: t -> ([`L_s10_bottom | `L_s40_inline | `L_s53_none | `L_s75_top] [@js.enum]) -> unit [@@js.set "snippetSuggestions"]
      (** Copying without a selection copies the current line. *)
      (** Copying without a selection copies the current line. *)
      val get_emptySelectionClipboard: t -> bool [@@js.get "emptySelectionClipboard"]
      (** Copying without a selection copies the current line. *)
      val set_emptySelectionClipboard: t -> bool -> unit [@@js.set "emptySelectionClipboard"]
      (** Syntax highlighting is copied. *)
      (** Syntax highlighting is copied. *)
      val get_copyWithSyntaxHighlighting: t -> bool [@@js.get "copyWithSyntaxHighlighting"]
      (** Syntax highlighting is copied. *)
      val set_copyWithSyntaxHighlighting: t -> bool -> unit [@@js.set "copyWithSyntaxHighlighting"]
      (** The history mode for suggestions. *)
      (** The history mode for suggestions. *)
      val get_suggestSelection: t -> ([`L_s25_first[@js "first"] | `L_s62_recentlyUsed[@js "recentlyUsed"] | `L_s63_recentlyUsedByPrefix[@js "recentlyUsedByPrefix"]] [@js.enum]) [@@js.get "suggestSelection"]
      (** The history mode for suggestions. *)
      val set_suggestSelection: t -> ([`L_s25_first | `L_s62_recentlyUsed | `L_s63_recentlyUsedByPrefix] [@js.enum]) -> unit [@@js.set "suggestSelection"]
      (**
        The font size for the suggest widget.
        Defaults to the editor font size.
      *)
      (**
        The font size for the suggest widget.
        Defaults to the editor font size.
      *)
      val get_suggestFontSize: t -> float [@@js.get "suggestFontSize"]
      (**
        The font size for the suggest widget.
        Defaults to the editor font size.
      *)
      val set_suggestFontSize: t -> float -> unit [@@js.set "suggestFontSize"]
      (**
        The line height for the suggest widget.
        Defaults to the editor line height.
      *)
      (**
        The line height for the suggest widget.
        Defaults to the editor line height.
      *)
      val get_suggestLineHeight: t -> float [@@js.get "suggestLineHeight"]
      (**
        The line height for the suggest widget.
        Defaults to the editor line height.
      *)
      val set_suggestLineHeight: t -> float -> unit [@@js.set "suggestLineHeight"]
      (** Enable tab completion. *)
      (** Enable tab completion. *)
      val get_tabCompletion: t -> ([`L_s54_off[@js "off"] | `L_s55_on[@js "on"] | `L_s56_onlySnippets[@js "onlySnippets"]] [@js.enum]) [@@js.get "tabCompletion"]
      (** Enable tab completion. *)
      val set_tabCompletion: t -> ([`L_s54_off | `L_s55_on | `L_s56_onlySnippets] [@js.enum]) -> unit [@@js.set "tabCompletion"]
      (**
        Enable selection highlight.
        Defaults to true.
      *)
      (**
        Enable selection highlight.
        Defaults to true.
      *)
      val get_selectionHighlight: t -> bool [@@js.get "selectionHighlight"]
      (**
        Enable selection highlight.
        Defaults to true.
      *)
      val set_selectionHighlight: t -> bool -> unit [@@js.set "selectionHighlight"]
      (**
        Enable semantic occurrences highlight.
        Defaults to true.
      *)
      (**
        Enable semantic occurrences highlight.
        Defaults to true.
      *)
      val get_occurrencesHighlight: t -> bool [@@js.get "occurrencesHighlight"]
      (**
        Enable semantic occurrences highlight.
        Defaults to true.
      *)
      val set_occurrencesHighlight: t -> bool -> unit [@@js.set "occurrencesHighlight"]
      (**
        Show code lens
        Defaults to true.
      *)
      (**
        Show code lens
        Defaults to true.
      *)
      val get_codeLens: t -> bool [@@js.get "codeLens"]
      (**
        Show code lens
        Defaults to true.
      *)
      val set_codeLens: t -> bool -> unit [@@js.set "codeLens"]
      (** Code lens font family. Defaults to editor font family. *)
      (** Code lens font family. Defaults to editor font family. *)
      val get_codeLensFontFamily: t -> string [@@js.get "codeLensFontFamily"]
      (** Code lens font family. Defaults to editor font family. *)
      val set_codeLensFontFamily: t -> string -> unit [@@js.set "codeLensFontFamily"]
      (** Code lens font size. Default to 90% of the editor font size *)
      (** Code lens font size. Default to 90% of the editor font size *)
      val get_codeLensFontSize: t -> float [@@js.get "codeLensFontSize"]
      (** Code lens font size. Default to 90% of the editor font size *)
      val set_codeLensFontSize: t -> float -> unit [@@js.set "codeLensFontSize"]
      (** Control the behavior and rendering of the code action lightbulb. *)
      (** Control the behavior and rendering of the code action lightbulb. *)
      val get_lightbulb: t -> monaco_editor_IEditorLightbulbOptions [@@js.get "lightbulb"]
      (** Control the behavior and rendering of the code action lightbulb. *)
      val set_lightbulb: t -> monaco_editor_IEditorLightbulbOptions -> unit [@@js.set "lightbulb"]
      (** Timeout for running code actions on save. *)
      (** Timeout for running code actions on save. *)
      val get_codeActionsOnSaveTimeout: t -> float [@@js.get "codeActionsOnSaveTimeout"]
      (** Timeout for running code actions on save. *)
      val set_codeActionsOnSaveTimeout: t -> float -> unit [@@js.set "codeActionsOnSaveTimeout"]
      (**
        Enable code folding.
        Defaults to true.
      *)
      (**
        Enable code folding.
        Defaults to true.
      *)
      val get_folding: t -> bool [@@js.get "folding"]
      (**
        Enable code folding.
        Defaults to true.
      *)
      val set_folding: t -> bool -> unit [@@js.set "folding"]
      (**
        Selects the folding strategy. 'auto' uses the strategies contributed for the current document, 'indentation' uses the indentation based folding strategy.
        Defaults to 'auto'.
      *)
      (**
        Selects the folding strategy. 'auto' uses the strategies contributed for the current document, 'indentation' uses the indentation based folding strategy.
        Defaults to 'auto'.
      *)
      val get_foldingStrategy: t -> ([`L_s5_auto[@js "auto"] | `L_s38_indentation[@js "indentation"]] [@js.enum]) [@@js.get "foldingStrategy"]
      (**
        Selects the folding strategy. 'auto' uses the strategies contributed for the current document, 'indentation' uses the indentation based folding strategy.
        Defaults to 'auto'.
      *)
      val set_foldingStrategy: t -> ([`L_s5_auto | `L_s38_indentation] [@js.enum]) -> unit [@@js.set "foldingStrategy"]
      (**
        Enable highlight for folded regions.
        Defaults to true.
      *)
      (**
        Enable highlight for folded regions.
        Defaults to true.
      *)
      val get_foldingHighlight: t -> bool [@@js.get "foldingHighlight"]
      (**
        Enable highlight for folded regions.
        Defaults to true.
      *)
      val set_foldingHighlight: t -> bool -> unit [@@js.set "foldingHighlight"]
      (**
        Controls whether the fold actions in the gutter stay always visible or hide unless the mouse is over the gutter.
        Defaults to 'mouseover'.
      *)
      (**
        Controls whether the fold actions in the gutter stay always visible or hide unless the mouse is over the gutter.
        Defaults to 'mouseover'.
      *)
      val get_showFoldingControls: t -> ([`L_s4_always[@js "always"] | `L_s49_mouseover[@js "mouseover"]] [@js.enum]) [@@js.get "showFoldingControls"]
      (**
        Controls whether the fold actions in the gutter stay always visible or hide unless the mouse is over the gutter.
        Defaults to 'mouseover'.
      *)
      val set_showFoldingControls: t -> ([`L_s4_always | `L_s49_mouseover] [@js.enum]) -> unit [@@js.set "showFoldingControls"]
      (**
        Controls whether clicking on the empty content after a folded line will unfold the line.
        Defaults to false.
      *)
      (**
        Controls whether clicking on the empty content after a folded line will unfold the line.
        Defaults to false.
      *)
      val get_unfoldOnClickAfterEndOfLine: t -> bool [@@js.get "unfoldOnClickAfterEndOfLine"]
      (**
        Controls whether clicking on the empty content after a folded line will unfold the line.
        Defaults to false.
      *)
      val set_unfoldOnClickAfterEndOfLine: t -> bool -> unit [@@js.set "unfoldOnClickAfterEndOfLine"]
      (**
        Enable highlighting of matching brackets.
        Defaults to 'always'.
      *)
      (**
        Enable highlighting of matching brackets.
        Defaults to 'always'.
      *)
      val get_matchBrackets: t -> ([`L_s4_always[@js "always"] | `L_s51_near[@js "near"] | `L_s52_never[@js "never"]] [@js.enum]) [@@js.get "matchBrackets"]
      (**
        Enable highlighting of matching brackets.
        Defaults to 'always'.
      *)
      val set_matchBrackets: t -> ([`L_s4_always | `L_s51_near | `L_s52_never] [@js.enum]) -> unit [@@js.set "matchBrackets"]
      (**
        Enable rendering of whitespace.
        Defaults to none.
      *)
      (**
        Enable rendering of whitespace.
        Defaults to none.
      *)
      val get_renderWhitespace: t -> ([`L_s1_all[@js "all"] | `L_s11_boundary[@js "boundary"] | `L_s53_none[@js "none"] | `L_s68_selection[@js "selection"] | `L_s76_trailing[@js "trailing"]] [@js.enum]) [@@js.get "renderWhitespace"]
      (**
        Enable rendering of whitespace.
        Defaults to none.
      *)
      val set_renderWhitespace: t -> ([`L_s1_all | `L_s11_boundary | `L_s53_none | `L_s68_selection | `L_s76_trailing] [@js.enum]) -> unit [@@js.set "renderWhitespace"]
      (**
        Enable rendering of control characters.
        Defaults to false.
      *)
      (**
        Enable rendering of control characters.
        Defaults to false.
      *)
      val get_renderControlCharacters: t -> bool [@@js.get "renderControlCharacters"]
      (**
        Enable rendering of control characters.
        Defaults to false.
      *)
      val set_renderControlCharacters: t -> bool -> unit [@@js.set "renderControlCharacters"]
      (**
        Enable rendering of indent guides.
        Defaults to true.
      *)
      (**
        Enable rendering of indent guides.
        Defaults to true.
      *)
      val get_renderIndentGuides: t -> bool [@@js.get "renderIndentGuides"]
      (**
        Enable rendering of indent guides.
        Defaults to true.
      *)
      val set_renderIndentGuides: t -> bool -> unit [@@js.set "renderIndentGuides"]
      (**
        Enable highlighting of the active indent guide.
        Defaults to true.
      *)
      (**
        Enable highlighting of the active indent guide.
        Defaults to true.
      *)
      val get_highlightActiveIndentGuide: t -> bool [@@js.get "highlightActiveIndentGuide"]
      (**
        Enable highlighting of the active indent guide.
        Defaults to true.
      *)
      val set_highlightActiveIndentGuide: t -> bool -> unit [@@js.set "highlightActiveIndentGuide"]
      (**
        Enable rendering of current line highlight.
        Defaults to all.
      *)
      (**
        Enable rendering of current line highlight.
        Defaults to all.
      *)
      val get_renderLineHighlight: t -> ([`L_s1_all[@js "all"] | `L_s33_gutter[@js "gutter"] | `L_s46_line[@js "line"] | `L_s53_none[@js "none"]] [@js.enum]) [@@js.get "renderLineHighlight"]
      (**
        Enable rendering of current line highlight.
        Defaults to all.
      *)
      val set_renderLineHighlight: t -> ([`L_s1_all | `L_s33_gutter | `L_s46_line | `L_s53_none] [@js.enum]) -> unit [@@js.set "renderLineHighlight"]
      (**
        Control if the current line highlight should be rendered only the editor is focused.
        Defaults to false.
      *)
      (**
        Control if the current line highlight should be rendered only the editor is focused.
        Defaults to false.
      *)
      val get_renderLineHighlightOnlyWhenFocus: t -> bool [@@js.get "renderLineHighlightOnlyWhenFocus"]
      (**
        Control if the current line highlight should be rendered only the editor is focused.
        Defaults to false.
      *)
      val set_renderLineHighlightOnlyWhenFocus: t -> bool -> unit [@@js.set "renderLineHighlightOnlyWhenFocus"]
      (** Inserting and deleting whitespace follows tab stops. *)
      (** Inserting and deleting whitespace follows tab stops. *)
      val get_useTabStops: t -> bool [@@js.get "useTabStops"]
      (** Inserting and deleting whitespace follows tab stops. *)
      val set_useTabStops: t -> bool -> unit [@@js.set "useTabStops"]
      (** The font family *)
      (** The font family *)
      val get_fontFamily: t -> string [@@js.get "fontFamily"]
      (** The font family *)
      val set_fontFamily: t -> string -> unit [@@js.set "fontFamily"]
      (** The font weight *)
      (** The font weight *)
      val get_fontWeight: t -> string [@@js.get "fontWeight"]
      (** The font weight *)
      val set_fontWeight: t -> string -> unit [@@js.set "fontWeight"]
      (** The font size *)
      (** The font size *)
      val get_fontSize: t -> float [@@js.get "fontSize"]
      (** The font size *)
      val set_fontSize: t -> float -> unit [@@js.set "fontSize"]
      (** The line height *)
      (** The line height *)
      val get_lineHeight: t -> float [@@js.get "lineHeight"]
      (** The line height *)
      val set_lineHeight: t -> float -> unit [@@js.set "lineHeight"]
      (** The letter spacing *)
      (** The letter spacing *)
      val get_letterSpacing: t -> float [@@js.get "letterSpacing"]
      (** The letter spacing *)
      val set_letterSpacing: t -> float -> unit [@@js.set "letterSpacing"]
      (** Controls fading out of unused variables. *)
      (** Controls fading out of unused variables. *)
      val get_showUnused: t -> bool [@@js.get "showUnused"]
      (** Controls fading out of unused variables. *)
      val set_showUnused: t -> bool -> unit [@@js.set "showUnused"]
      (**
        Controls whether to focus the inline editor in the peek widget by default.
        Defaults to false.
      *)
      (**
        Controls whether to focus the inline editor in the peek widget by default.
        Defaults to false.
      *)
      val get_peekWidgetDefaultFocus: t -> ([`L_s21_editor[@js "editor"] | `L_s77_tree[@js "tree"]] [@js.enum]) [@@js.get "peekWidgetDefaultFocus"]
      (**
        Controls whether to focus the inline editor in the peek widget by default.
        Defaults to false.
      *)
      val set_peekWidgetDefaultFocus: t -> ([`L_s21_editor | `L_s77_tree] [@js.enum]) -> unit [@@js.set "peekWidgetDefaultFocus"]
      (**
        Controls whether the definition link opens element in the peek widget.
        Defaults to false.
      *)
      (**
        Controls whether the definition link opens element in the peek widget.
        Defaults to false.
      *)
      val get_definitionLinkOpensInPeek: t -> bool [@@js.get "definitionLinkOpensInPeek"]
      (**
        Controls whether the definition link opens element in the peek widget.
        Defaults to false.
      *)
      val set_definitionLinkOpensInPeek: t -> bool -> unit [@@js.set "definitionLinkOpensInPeek"]
      (** Controls strikethrough deprecated variables. *)
      (** Controls strikethrough deprecated variables. *)
      val get_showDeprecated: t -> bool [@@js.get "showDeprecated"]
      (** Controls strikethrough deprecated variables. *)
      val set_showDeprecated: t -> bool -> unit [@@js.set "showDeprecated"]
      (** Control the behavior and rendering of the inline hints. *)
      (** Control the behavior and rendering of the inline hints. *)
      val get_inlineHints: t -> monaco_editor_IEditorInlineHintsOptions [@@js.get "inlineHints"]
      (** Control the behavior and rendering of the inline hints. *)
      val set_inlineHints: t -> monaco_editor_IEditorInlineHintsOptions -> unit [@@js.set "inlineHints"]
      (** Control if the editor should use shadow DOM. *)
      (** Control if the editor should use shadow DOM. *)
      val get_useShadowDOM: t -> bool [@@js.get "useShadowDOM"]
      (** Control if the editor should use shadow DOM. *)
      val set_useShadowDOM: t -> bool -> unit [@@js.set "useShadowDOM"]
    end
    (** Configuration options for the diff editor. *)
    module[@js.scope "IDiffEditorOptions"] IDiffEditorOptions : sig
      type t = monaco_editor_IDiffEditorOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Allow the user to resize the diff editor split view.
        Defaults to true.
      *)
      (**
        Allow the user to resize the diff editor split view.
        Defaults to true.
      *)
      val get_enableSplitViewResizing: t -> bool [@@js.get "enableSplitViewResizing"]
      (**
        Allow the user to resize the diff editor split view.
        Defaults to true.
      *)
      val set_enableSplitViewResizing: t -> bool -> unit [@@js.set "enableSplitViewResizing"]
      (**
        Render the differences in two side-by-side editors.
        Defaults to true.
      *)
      (**
        Render the differences in two side-by-side editors.
        Defaults to true.
      *)
      val get_renderSideBySide: t -> bool [@@js.get "renderSideBySide"]
      (**
        Render the differences in two side-by-side editors.
        Defaults to true.
      *)
      val set_renderSideBySide: t -> bool -> unit [@@js.set "renderSideBySide"]
      (**
        Timeout in milliseconds after which diff computation is cancelled.
        Defaults to 5000.
      *)
      (**
        Timeout in milliseconds after which diff computation is cancelled.
        Defaults to 5000.
      *)
      val get_maxComputationTime: t -> float [@@js.get "maxComputationTime"]
      (**
        Timeout in milliseconds after which diff computation is cancelled.
        Defaults to 5000.
      *)
      val set_maxComputationTime: t -> float -> unit [@@js.set "maxComputationTime"]
      (**
        Compute the diff by ignoring leading/trailing whitespace
        Defaults to true.
      *)
      (**
        Compute the diff by ignoring leading/trailing whitespace
        Defaults to true.
      *)
      val get_ignoreTrimWhitespace: t -> bool [@@js.get "ignoreTrimWhitespace"]
      (**
        Compute the diff by ignoring leading/trailing whitespace
        Defaults to true.
      *)
      val set_ignoreTrimWhitespace: t -> bool -> unit [@@js.set "ignoreTrimWhitespace"]
      (**
        Render +/- indicators for added/deleted changes.
        Defaults to true.
      *)
      (**
        Render +/- indicators for added/deleted changes.
        Defaults to true.
      *)
      val get_renderIndicators: t -> bool [@@js.get "renderIndicators"]
      (**
        Render +/- indicators for added/deleted changes.
        Defaults to true.
      *)
      val set_renderIndicators: t -> bool -> unit [@@js.set "renderIndicators"]
      (**
        Original model should be editable?
        Defaults to false.
      *)
      (**
        Original model should be editable?
        Defaults to false.
      *)
      val get_originalEditable: t -> bool [@@js.get "originalEditable"]
      (**
        Original model should be editable?
        Defaults to false.
      *)
      val set_originalEditable: t -> bool -> unit [@@js.set "originalEditable"]
      (**
        Should the diff editor enable code lens?
        Defaults to false.
      *)
      (**
        Should the diff editor enable code lens?
        Defaults to false.
      *)
      val get_diffCodeLens: t -> bool [@@js.get "diffCodeLens"]
      (**
        Should the diff editor enable code lens?
        Defaults to false.
      *)
      val set_diffCodeLens: t -> bool -> unit [@@js.set "diffCodeLens"]
      (**
        Is the diff editor inside another editor
        Defaults to false
      *)
      (**
        Is the diff editor inside another editor
        Defaults to false
      *)
      val get_isInEmbeddedEditor: t -> bool [@@js.get "isInEmbeddedEditor"]
      (**
        Is the diff editor inside another editor
        Defaults to false
      *)
      val set_isInEmbeddedEditor: t -> bool -> unit [@@js.set "isInEmbeddedEditor"]
      (**
        Is the diff editor should render overview ruler
        Defaults to true
      *)
      (**
        Is the diff editor should render overview ruler
        Defaults to true
      *)
      val get_renderOverviewRuler: t -> bool [@@js.get "renderOverviewRuler"]
      (**
        Is the diff editor should render overview ruler
        Defaults to true
      *)
      val set_renderOverviewRuler: t -> bool -> unit [@@js.set "renderOverviewRuler"]
      (** Control the wrapping of the diff editor. *)
      (** Control the wrapping of the diff editor. *)
      val get_diffWordWrap: t -> ([`L_s39_inherit[@js "inherit"] | `L_s54_off[@js "off"] | `L_s55_on[@js "on"]] [@js.enum]) [@@js.get "diffWordWrap"]
      (** Control the wrapping of the diff editor. *)
      val set_diffWordWrap: t -> ([`L_s39_inherit | `L_s54_off | `L_s55_on] [@js.enum]) -> unit [@@js.set "diffWordWrap"]
      (** Aria label for original editor. *)
      (** Aria label for original editor. *)
      val get_originalAriaLabel: t -> string [@@js.get "originalAriaLabel"]
      (** Aria label for original editor. *)
      val set_originalAriaLabel: t -> string -> unit [@@js.set "originalAriaLabel"]
      (** Aria label for modifed editor. *)
      (** Aria label for modifed editor. *)
      val get_modifiedAriaLabel: t -> string [@@js.get "modifiedAriaLabel"]
      (** Aria label for modifed editor. *)
      val set_modifiedAriaLabel: t -> string -> unit [@@js.set "modifiedAriaLabel"]
      val cast: t -> monaco_editor_IEditorOptions [@@js.cast]
    end
    (** An event describing that the configuration of the editor has changed. *)
    module[@js.scope "ConfigurationChangedEvent"] ConfigurationChangedEvent : sig
      type t = monaco_editor_ConfigurationChangedEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val hasChanged: t -> id:monaco_editor_EditorOption -> bool [@@js.call "hasChanged"]
    end
    (** All computed editor options. *)
    module[@js.scope "IComputedEditorOptions"] IComputedEditorOptions : sig
      type t = monaco_editor_IComputedEditorOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_: t -> id:'T -> 'T monaco_editor_FindComputedEditorOptionValueById [@@js.call "get"]
    end
    module[@js.scope "IEditorOption"] IEditorOption : sig
      type ('K1, 'V) t = ('K1, 'V) monaco_editor_IEditorOption
      val t_to_js: ('K1 -> Ojs.t) -> ('V -> Ojs.t) -> ('K1, 'V) t -> Ojs.t
      val t_of_js: (Ojs.t -> 'K1) -> (Ojs.t -> 'V) -> Ojs.t -> ('K1, 'V) t
      type ('K1, 'V) t_2 = ('K1, 'V) t
      val t_2_to_js: ('K1 -> Ojs.t) -> ('V -> Ojs.t) -> ('K1, 'V) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'K1) -> (Ojs.t -> 'V) -> Ojs.t -> ('K1, 'V) t_2
      val get_id: ('K1, 'V) t -> 'K1 [@@js.get "id"]
      val get_name: ('K1, 'V) t -> string [@@js.get "name"]
      val get_defaultValue: ('K1, 'V) t -> 'V [@@js.get "defaultValue"]
      val set_defaultValue: ('K1, 'V) t -> 'V -> unit [@@js.set "defaultValue"]
    end
    (** Configuration options for editor comments *)
    module[@js.scope "IEditorCommentsOptions"] IEditorCommentsOptions : sig
      type t = monaco_editor_IEditorCommentsOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Insert a space after the line comment token and inside the block comments tokens.
        Defaults to true.
      *)
      (**
        Insert a space after the line comment token and inside the block comments tokens.
        Defaults to true.
      *)
      val get_insertSpace: t -> bool [@@js.get "insertSpace"]
      (**
        Insert a space after the line comment token and inside the block comments tokens.
        Defaults to true.
      *)
      val set_insertSpace: t -> bool -> unit [@@js.set "insertSpace"]
      (**
        Ignore empty lines when inserting line comments.
        Defaults to true.
      *)
      (**
        Ignore empty lines when inserting line comments.
        Defaults to true.
      *)
      val get_ignoreEmptyLines: t -> bool [@@js.get "ignoreEmptyLines"]
      (**
        Ignore empty lines when inserting line comments.
        Defaults to true.
      *)
      val set_ignoreEmptyLines: t -> bool -> unit [@@js.set "ignoreEmptyLines"]
    end
    module EditorCommentsOptions : sig
      type t = monaco_editor_EditorCommentsOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** The kind of animation in which the editor's cursor should be rendered. *)
    module TextEditorCursorBlinkingStyle : sig
      type t = monaco_editor_TextEditorCursorBlinkingStyle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** The style in which the editor's cursor should be rendered. *)
    module TextEditorCursorStyle : sig
      type t = monaco_editor_TextEditorCursorStyle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for editor find widget *)
    module[@js.scope "IEditorFindOptions"] IEditorFindOptions : sig
      type t = monaco_editor_IEditorFindOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Controls whether the cursor should move to find matches while typing. *)
      (** Controls whether the cursor should move to find matches while typing. *)
      val get_cursorMoveOnType: t -> bool [@@js.get "cursorMoveOnType"]
      (** Controls whether the cursor should move to find matches while typing. *)
      val set_cursorMoveOnType: t -> bool -> unit [@@js.set "cursorMoveOnType"]
      (** Controls if we seed search string in the Find Widget with editor selection. *)
      (** Controls if we seed search string in the Find Widget with editor selection. *)
      val get_seedSearchStringFromSelection: t -> bool [@@js.get "seedSearchStringFromSelection"]
      (** Controls if we seed search string in the Find Widget with editor selection. *)
      val set_seedSearchStringFromSelection: t -> bool -> unit [@@js.set "seedSearchStringFromSelection"]
      (** Controls if Find in Selection flag is turned on in the editor. *)
      (** Controls if Find in Selection flag is turned on in the editor. *)
      val get_autoFindInSelection: t -> ([`L_s4_always[@js "always"] | `L_s50_multiline[@js "multiline"] | `L_s52_never[@js "never"]] [@js.enum]) [@@js.get "autoFindInSelection"]
      (** Controls if Find in Selection flag is turned on in the editor. *)
      val set_autoFindInSelection: t -> ([`L_s4_always | `L_s50_multiline | `L_s52_never] [@js.enum]) -> unit [@@js.set "autoFindInSelection"]
      val get_addExtraSpaceOnTop: t -> bool [@@js.get "addExtraSpaceOnTop"]
      val set_addExtraSpaceOnTop: t -> bool -> unit [@@js.set "addExtraSpaceOnTop"]
      (** Controls whether the search automatically restarts from the beginning (or the end) when no further matches can be found *)
      (** Controls whether the search automatically restarts from the beginning (or the end) when no further matches can be found *)
      val get_loop: t -> bool [@@js.get "loop"]
      (** Controls whether the search automatically restarts from the beginning (or the end) when no further matches can be found *)
      val set_loop: t -> bool -> unit [@@js.set "loop"]
    end
    module EditorFindOptions : sig
      type t = monaco_editor_EditorFindOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module GoToLocationValues : sig
      type t = monaco_editor_GoToLocationValues
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for go to location *)
    module[@js.scope "IGotoLocationOptions"] IGotoLocationOptions : sig
      type t = monaco_editor_IGotoLocationOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_multiple: t -> monaco_editor_GoToLocationValues [@@js.get "multiple"]
      val set_multiple: t -> monaco_editor_GoToLocationValues -> unit [@@js.set "multiple"]
      val get_multipleDefinitions: t -> monaco_editor_GoToLocationValues [@@js.get "multipleDefinitions"]
      val set_multipleDefinitions: t -> monaco_editor_GoToLocationValues -> unit [@@js.set "multipleDefinitions"]
      val get_multipleTypeDefinitions: t -> monaco_editor_GoToLocationValues [@@js.get "multipleTypeDefinitions"]
      val set_multipleTypeDefinitions: t -> monaco_editor_GoToLocationValues -> unit [@@js.set "multipleTypeDefinitions"]
      val get_multipleDeclarations: t -> monaco_editor_GoToLocationValues [@@js.get "multipleDeclarations"]
      val set_multipleDeclarations: t -> monaco_editor_GoToLocationValues -> unit [@@js.set "multipleDeclarations"]
      val get_multipleImplementations: t -> monaco_editor_GoToLocationValues [@@js.get "multipleImplementations"]
      val set_multipleImplementations: t -> monaco_editor_GoToLocationValues -> unit [@@js.set "multipleImplementations"]
      val get_multipleReferences: t -> monaco_editor_GoToLocationValues [@@js.get "multipleReferences"]
      val set_multipleReferences: t -> monaco_editor_GoToLocationValues -> unit [@@js.set "multipleReferences"]
      val get_alternativeDefinitionCommand: t -> string [@@js.get "alternativeDefinitionCommand"]
      val set_alternativeDefinitionCommand: t -> string -> unit [@@js.set "alternativeDefinitionCommand"]
      val get_alternativeTypeDefinitionCommand: t -> string [@@js.get "alternativeTypeDefinitionCommand"]
      val set_alternativeTypeDefinitionCommand: t -> string -> unit [@@js.set "alternativeTypeDefinitionCommand"]
      val get_alternativeDeclarationCommand: t -> string [@@js.get "alternativeDeclarationCommand"]
      val set_alternativeDeclarationCommand: t -> string -> unit [@@js.set "alternativeDeclarationCommand"]
      val get_alternativeImplementationCommand: t -> string [@@js.get "alternativeImplementationCommand"]
      val set_alternativeImplementationCommand: t -> string -> unit [@@js.set "alternativeImplementationCommand"]
      val get_alternativeReferenceCommand: t -> string [@@js.get "alternativeReferenceCommand"]
      val set_alternativeReferenceCommand: t -> string -> unit [@@js.set "alternativeReferenceCommand"]
    end
    module GoToLocationOptions : sig
      type t = monaco_editor_GoToLocationOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for editor hover *)
    module[@js.scope "IEditorHoverOptions"] IEditorHoverOptions : sig
      type t = monaco_editor_IEditorHoverOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Enable the hover.
        Defaults to true.
      *)
      (**
        Enable the hover.
        Defaults to true.
      *)
      val get_enabled: t -> bool [@@js.get "enabled"]
      (**
        Enable the hover.
        Defaults to true.
      *)
      val set_enabled: t -> bool -> unit [@@js.set "enabled"]
      (**
        Delay for showing the hover.
        Defaults to 300.
      *)
      (**
        Delay for showing the hover.
        Defaults to 300.
      *)
      val get_delay: t -> float [@@js.get "delay"]
      (**
        Delay for showing the hover.
        Defaults to 300.
      *)
      val set_delay: t -> float -> unit [@@js.set "delay"]
      (**
        Is the hover sticky such that it can be clicked and its contents selected?
        Defaults to true.
      *)
      (**
        Is the hover sticky such that it can be clicked and its contents selected?
        Defaults to true.
      *)
      val get_sticky: t -> bool [@@js.get "sticky"]
      (**
        Is the hover sticky such that it can be clicked and its contents selected?
        Defaults to true.
      *)
      val set_sticky: t -> bool -> unit [@@js.set "sticky"]
    end
    module EditorHoverOptions : sig
      type t = monaco_editor_EditorHoverOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** A description for the overview ruler position. *)
    module[@js.scope "OverviewRulerPosition"] OverviewRulerPosition : sig
      type t = monaco_editor_OverviewRulerPosition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Width of the overview ruler *)
      val get_width: t -> float [@@js.get "width"]
      (** Height of the overview ruler *)
      val get_height: t -> float [@@js.get "height"]
      (** Top position for the overview ruler *)
      val get_top: t -> float [@@js.get "top"]
      (** Right position for the overview ruler *)
      val get_right: t -> float [@@js.get "right"]
    end
    module RenderMinimap : sig
      type t = monaco_editor_RenderMinimap
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** The internal layout details of the editor. *)
    module[@js.scope "EditorLayoutInfo"] EditorLayoutInfo : sig
      type t = monaco_editor_EditorLayoutInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Full editor width. *)
      val get_width: t -> float [@@js.get "width"]
      (** Full editor height. *)
      val get_height: t -> float [@@js.get "height"]
      (** Left position for the glyph margin. *)
      val get_glyphMarginLeft: t -> float [@@js.get "glyphMarginLeft"]
      (** The width of the glyph margin. *)
      val get_glyphMarginWidth: t -> float [@@js.get "glyphMarginWidth"]
      (** Left position for the line numbers. *)
      val get_lineNumbersLeft: t -> float [@@js.get "lineNumbersLeft"]
      (** The width of the line numbers. *)
      val get_lineNumbersWidth: t -> float [@@js.get "lineNumbersWidth"]
      (** Left position for the line decorations. *)
      val get_decorationsLeft: t -> float [@@js.get "decorationsLeft"]
      (** The width of the line decorations. *)
      val get_decorationsWidth: t -> float [@@js.get "decorationsWidth"]
      (** Left position for the content (actual text) *)
      val get_contentLeft: t -> float [@@js.get "contentLeft"]
      (** The width of the content (actual text) *)
      val get_contentWidth: t -> float [@@js.get "contentWidth"]
      (** Layout information for the minimap *)
      val get_minimap: t -> monaco_editor_EditorMinimapLayoutInfo [@@js.get "minimap"]
      (** The number of columns (of typical characters) fitting on a viewport line. *)
      val get_viewportColumn: t -> float [@@js.get "viewportColumn"]
      val get_isWordWrapMinified: t -> bool [@@js.get "isWordWrapMinified"]
      val get_isViewportWrapping: t -> bool [@@js.get "isViewportWrapping"]
      val get_wrappingColumn: t -> float [@@js.get "wrappingColumn"]
      (** The width of the vertical scrollbar. *)
      val get_verticalScrollbarWidth: t -> float [@@js.get "verticalScrollbarWidth"]
      (** The height of the horizontal scrollbar. *)
      val get_horizontalScrollbarHeight: t -> float [@@js.get "horizontalScrollbarHeight"]
      (** The position of the overview ruler. *)
      val get_overviewRuler: t -> monaco_editor_OverviewRulerPosition [@@js.get "overviewRuler"]
    end
    (** The internal layout details of the editor. *)
    module[@js.scope "EditorMinimapLayoutInfo"] EditorMinimapLayoutInfo : sig
      type t = monaco_editor_EditorMinimapLayoutInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_renderMinimap: t -> monaco_editor_RenderMinimap [@@js.get "renderMinimap"]
      val get_minimapLeft: t -> float [@@js.get "minimapLeft"]
      val get_minimapWidth: t -> float [@@js.get "minimapWidth"]
      val get_minimapHeightIsEditorHeight: t -> bool [@@js.get "minimapHeightIsEditorHeight"]
      val get_minimapIsSampling: t -> bool [@@js.get "minimapIsSampling"]
      val get_minimapScale: t -> float [@@js.get "minimapScale"]
      val get_minimapLineHeight: t -> float [@@js.get "minimapLineHeight"]
      val get_minimapCanvasInnerWidth: t -> float [@@js.get "minimapCanvasInnerWidth"]
      val get_minimapCanvasInnerHeight: t -> float [@@js.get "minimapCanvasInnerHeight"]
      val get_minimapCanvasOuterWidth: t -> float [@@js.get "minimapCanvasOuterWidth"]
      val get_minimapCanvasOuterHeight: t -> float [@@js.get "minimapCanvasOuterHeight"]
    end
    (** Configuration options for editor lightbulb *)
    module[@js.scope "IEditorLightbulbOptions"] IEditorLightbulbOptions : sig
      type t = monaco_editor_IEditorLightbulbOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Enable the lightbulb code action.
        Defaults to true.
      *)
      (**
        Enable the lightbulb code action.
        Defaults to true.
      *)
      val get_enabled: t -> bool [@@js.get "enabled"]
      (**
        Enable the lightbulb code action.
        Defaults to true.
      *)
      val set_enabled: t -> bool -> unit [@@js.set "enabled"]
    end
    module EditorLightbulbOptions : sig
      type t = monaco_editor_EditorLightbulbOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for editor inlineHints *)
    module[@js.scope "IEditorInlineHintsOptions"] IEditorInlineHintsOptions : sig
      type t = monaco_editor_IEditorInlineHintsOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Enable the inline hints.
        Defaults to true.
      *)
      (**
        Enable the inline hints.
        Defaults to true.
      *)
      val get_enabled: t -> bool [@@js.get "enabled"]
      (**
        Enable the inline hints.
        Defaults to true.
      *)
      val set_enabled: t -> bool -> unit [@@js.set "enabled"]
      (**
        Font size of inline hints.
        Default to 90% of the editor font size.
      *)
      (**
        Font size of inline hints.
        Default to 90% of the editor font size.
      *)
      val get_fontSize: t -> float [@@js.get "fontSize"]
      (**
        Font size of inline hints.
        Default to 90% of the editor font size.
      *)
      val set_fontSize: t -> float -> unit [@@js.set "fontSize"]
      (**
        Font family of inline hints.
        Defaults to editor font family.
      *)
      (**
        Font family of inline hints.
        Defaults to editor font family.
      *)
      val get_fontFamily: t -> string [@@js.get "fontFamily"]
      (**
        Font family of inline hints.
        Defaults to editor font family.
      *)
      val set_fontFamily: t -> string -> unit [@@js.set "fontFamily"]
    end
    module EditorInlineHintsOptions : sig
      type t = monaco_editor_EditorInlineHintsOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for editor minimap *)
    module[@js.scope "IEditorMinimapOptions"] IEditorMinimapOptions : sig
      type t = monaco_editor_IEditorMinimapOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Enable the rendering of the minimap.
        Defaults to true.
      *)
      (**
        Enable the rendering of the minimap.
        Defaults to true.
      *)
      val get_enabled: t -> bool [@@js.get "enabled"]
      (**
        Enable the rendering of the minimap.
        Defaults to true.
      *)
      val set_enabled: t -> bool -> unit [@@js.set "enabled"]
      (**
        Control the side of the minimap in editor.
        Defaults to 'right'.
      *)
      (**
        Control the side of the minimap in editor.
        Defaults to 'right'.
      *)
      val get_side: t -> ([`L_s45_left[@js "left"] | `L_s66_right[@js "right"]] [@js.enum]) [@@js.get "side"]
      (**
        Control the side of the minimap in editor.
        Defaults to 'right'.
      *)
      val set_side: t -> ([`L_s45_left | `L_s66_right] [@js.enum]) -> unit [@@js.set "side"]
      (**
        Control the minimap rendering mode.
        Defaults to 'actual'.
      *)
      (**
        Control the minimap rendering mode.
        Defaults to 'actual'.
      *)
      val get_size: t -> ([`L_s24_fill[@js "fill"] | `L_s26_fit[@js "fit"] | `L_s60_proportional[@js "proportional"]] [@js.enum]) [@@js.get "size"]
      (**
        Control the minimap rendering mode.
        Defaults to 'actual'.
      *)
      val set_size: t -> ([`L_s24_fill | `L_s26_fit | `L_s60_proportional] [@js.enum]) -> unit [@@js.set "size"]
      (**
        Control the rendering of the minimap slider.
        Defaults to 'mouseover'.
      *)
      (**
        Control the rendering of the minimap slider.
        Defaults to 'mouseover'.
      *)
      val get_showSlider: t -> ([`L_s4_always[@js "always"] | `L_s49_mouseover[@js "mouseover"]] [@js.enum]) [@@js.get "showSlider"]
      (**
        Control the rendering of the minimap slider.
        Defaults to 'mouseover'.
      *)
      val set_showSlider: t -> ([`L_s4_always | `L_s49_mouseover] [@js.enum]) -> unit [@@js.set "showSlider"]
      (**
        Render the actual text on a line (as opposed to color blocks).
        Defaults to true.
      *)
      (**
        Render the actual text on a line (as opposed to color blocks).
        Defaults to true.
      *)
      val get_renderCharacters: t -> bool [@@js.get "renderCharacters"]
      (**
        Render the actual text on a line (as opposed to color blocks).
        Defaults to true.
      *)
      val set_renderCharacters: t -> bool -> unit [@@js.set "renderCharacters"]
      (**
        Limit the width of the minimap to render at most a certain number of columns.
        Defaults to 120.
      *)
      (**
        Limit the width of the minimap to render at most a certain number of columns.
        Defaults to 120.
      *)
      val get_maxColumn: t -> float [@@js.get "maxColumn"]
      (**
        Limit the width of the minimap to render at most a certain number of columns.
        Defaults to 120.
      *)
      val set_maxColumn: t -> float -> unit [@@js.set "maxColumn"]
      (** Relative size of the font in the minimap. Defaults to 1. *)
      (** Relative size of the font in the minimap. Defaults to 1. *)
      val get_scale: t -> float [@@js.get "scale"]
      (** Relative size of the font in the minimap. Defaults to 1. *)
      val set_scale: t -> float -> unit [@@js.set "scale"]
    end
    module EditorMinimapOptions : sig
      type t = monaco_editor_EditorMinimapOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for editor padding *)
    module[@js.scope "IEditorPaddingOptions"] IEditorPaddingOptions : sig
      type t = monaco_editor_IEditorPaddingOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Spacing between top edge of editor and first line. *)
      (** Spacing between top edge of editor and first line. *)
      val get_top: t -> float [@@js.get "top"]
      (** Spacing between top edge of editor and first line. *)
      val set_top: t -> float -> unit [@@js.set "top"]
      (** Spacing between bottom edge of editor and last line. *)
      (** Spacing between bottom edge of editor and last line. *)
      val get_bottom: t -> float [@@js.get "bottom"]
      (** Spacing between bottom edge of editor and last line. *)
      val set_bottom: t -> float -> unit [@@js.set "bottom"]
    end
    module[@js.scope "InternalEditorPaddingOptions"] InternalEditorPaddingOptions : sig
      type t = monaco_editor_InternalEditorPaddingOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_top: t -> float [@@js.get "top"]
      val get_bottom: t -> float [@@js.get "bottom"]
    end
    (** Configuration options for parameter hints *)
    module[@js.scope "IEditorParameterHintOptions"] IEditorParameterHintOptions : sig
      type t = monaco_editor_IEditorParameterHintOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Enable parameter hints.
        Defaults to true.
      *)
      (**
        Enable parameter hints.
        Defaults to true.
      *)
      val get_enabled: t -> bool [@@js.get "enabled"]
      (**
        Enable parameter hints.
        Defaults to true.
      *)
      val set_enabled: t -> bool -> unit [@@js.set "enabled"]
      (**
        Enable cycling of parameter hints.
        Defaults to false.
      *)
      (**
        Enable cycling of parameter hints.
        Defaults to false.
      *)
      val get_cycle: t -> bool [@@js.get "cycle"]
      (**
        Enable cycling of parameter hints.
        Defaults to false.
      *)
      val set_cycle: t -> bool -> unit [@@js.set "cycle"]
    end
    module InternalParameterHintOptions : sig
      type t = monaco_editor_InternalParameterHintOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Configuration options for quick suggestions *)
    module[@js.scope "IQuickSuggestionsOptions"] IQuickSuggestionsOptions : sig
      type t = monaco_editor_IQuickSuggestionsOptions
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
    module ValidQuickSuggestionsOptions : sig
      type t = monaco_editor_ValidQuickSuggestionsOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LineNumbersType : sig
      type t = monaco_editor_LineNumbersType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RenderLineNumbersType : sig
      type t = monaco_editor_RenderLineNumbersType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "InternalEditorRenderLineNumbersOptions"] InternalEditorRenderLineNumbersOptions : sig
      type t = monaco_editor_InternalEditorRenderLineNumbersOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_renderType: t -> monaco_editor_RenderLineNumbersType [@@js.get "renderType"]
      val get_renderFn: t -> (lineNumber:float -> string) or_null [@@js.get "renderFn"]
    end
    module[@js.scope "IRulerOption"] IRulerOption : sig
      type t = monaco_editor_IRulerOption
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_column: t -> float [@@js.get "column"]
      val get_color: t -> string or_null [@@js.get "color"]
    end
    (** Configuration options for editor scrollbars *)
    module[@js.scope "IEditorScrollbarOptions"] IEditorScrollbarOptions : sig
      type t = monaco_editor_IEditorScrollbarOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The size of arrows (if displayed).
        Defaults to 11.
      *)
      (**
        The size of arrows (if displayed).
        Defaults to 11.
      *)
      val get_arrowSize: t -> float [@@js.get "arrowSize"]
      (**
        The size of arrows (if displayed).
        Defaults to 11.
      *)
      val set_arrowSize: t -> float -> unit [@@js.set "arrowSize"]
      (**
        Render vertical scrollbar.
        Defaults to 'auto'.
      *)
      (**
        Render vertical scrollbar.
        Defaults to 'auto'.
      *)
      val get_vertical: t -> ([`L_s5_auto[@js "auto"] | `L_s35_hidden[@js "hidden"] | `L_s80_visible[@js "visible"]] [@js.enum]) [@@js.get "vertical"]
      (**
        Render vertical scrollbar.
        Defaults to 'auto'.
      *)
      val set_vertical: t -> ([`L_s5_auto | `L_s35_hidden | `L_s80_visible] [@js.enum]) -> unit [@@js.set "vertical"]
      (**
        Render horizontal scrollbar.
        Defaults to 'auto'.
      *)
      (**
        Render horizontal scrollbar.
        Defaults to 'auto'.
      *)
      val get_horizontal: t -> ([`L_s5_auto[@js "auto"] | `L_s35_hidden[@js "hidden"] | `L_s80_visible[@js "visible"]] [@js.enum]) [@@js.get "horizontal"]
      (**
        Render horizontal scrollbar.
        Defaults to 'auto'.
      *)
      val set_horizontal: t -> ([`L_s5_auto | `L_s35_hidden | `L_s80_visible] [@js.enum]) -> unit [@@js.set "horizontal"]
      (**
        Cast horizontal and vertical shadows when the content is scrolled.
        Defaults to true.
      *)
      (**
        Cast horizontal and vertical shadows when the content is scrolled.
        Defaults to true.
      *)
      val get_useShadows: t -> bool [@@js.get "useShadows"]
      (**
        Cast horizontal and vertical shadows when the content is scrolled.
        Defaults to true.
      *)
      val set_useShadows: t -> bool -> unit [@@js.set "useShadows"]
      (**
        Render arrows at the top and bottom of the vertical scrollbar.
        Defaults to false.
      *)
      (**
        Render arrows at the top and bottom of the vertical scrollbar.
        Defaults to false.
      *)
      val get_verticalHasArrows: t -> bool [@@js.get "verticalHasArrows"]
      (**
        Render arrows at the top and bottom of the vertical scrollbar.
        Defaults to false.
      *)
      val set_verticalHasArrows: t -> bool -> unit [@@js.set "verticalHasArrows"]
      (**
        Render arrows at the left and right of the horizontal scrollbar.
        Defaults to false.
      *)
      (**
        Render arrows at the left and right of the horizontal scrollbar.
        Defaults to false.
      *)
      val get_horizontalHasArrows: t -> bool [@@js.get "horizontalHasArrows"]
      (**
        Render arrows at the left and right of the horizontal scrollbar.
        Defaults to false.
      *)
      val set_horizontalHasArrows: t -> bool -> unit [@@js.set "horizontalHasArrows"]
      (**
        Listen to mouse wheel events and react to them by scrolling.
        Defaults to true.
      *)
      (**
        Listen to mouse wheel events and react to them by scrolling.
        Defaults to true.
      *)
      val get_handleMouseWheel: t -> bool [@@js.get "handleMouseWheel"]
      (**
        Listen to mouse wheel events and react to them by scrolling.
        Defaults to true.
      *)
      val set_handleMouseWheel: t -> bool -> unit [@@js.set "handleMouseWheel"]
      (**
        Always consume mouse wheel events (always call preventDefault() and stopPropagation() on the browser events).
        Defaults to true.
      *)
      (**
        Always consume mouse wheel events (always call preventDefault() and stopPropagation() on the browser events).
        Defaults to true.
      *)
      val get_alwaysConsumeMouseWheel: t -> bool [@@js.get "alwaysConsumeMouseWheel"]
      (**
        Always consume mouse wheel events (always call preventDefault() and stopPropagation() on the browser events).
        Defaults to true.
      *)
      val set_alwaysConsumeMouseWheel: t -> bool -> unit [@@js.set "alwaysConsumeMouseWheel"]
      (**
        Height in pixels for the horizontal scrollbar.
        Defaults to 10 (px).
      *)
      (**
        Height in pixels for the horizontal scrollbar.
        Defaults to 10 (px).
      *)
      val get_horizontalScrollbarSize: t -> float [@@js.get "horizontalScrollbarSize"]
      (**
        Height in pixels for the horizontal scrollbar.
        Defaults to 10 (px).
      *)
      val set_horizontalScrollbarSize: t -> float -> unit [@@js.set "horizontalScrollbarSize"]
      (**
        Width in pixels for the vertical scrollbar.
        Defaults to 10 (px).
      *)
      (**
        Width in pixels for the vertical scrollbar.
        Defaults to 10 (px).
      *)
      val get_verticalScrollbarSize: t -> float [@@js.get "verticalScrollbarSize"]
      (**
        Width in pixels for the vertical scrollbar.
        Defaults to 10 (px).
      *)
      val set_verticalScrollbarSize: t -> float -> unit [@@js.set "verticalScrollbarSize"]
      (**
        Width in pixels for the vertical slider.
        Defaults to `verticalScrollbarSize`.
      *)
      (**
        Width in pixels for the vertical slider.
        Defaults to `verticalScrollbarSize`.
      *)
      val get_verticalSliderSize: t -> float [@@js.get "verticalSliderSize"]
      (**
        Width in pixels for the vertical slider.
        Defaults to `verticalScrollbarSize`.
      *)
      val set_verticalSliderSize: t -> float -> unit [@@js.set "verticalSliderSize"]
      (**
        Height in pixels for the horizontal slider.
        Defaults to `horizontalScrollbarSize`.
      *)
      (**
        Height in pixels for the horizontal slider.
        Defaults to `horizontalScrollbarSize`.
      *)
      val get_horizontalSliderSize: t -> float [@@js.get "horizontalSliderSize"]
      (**
        Height in pixels for the horizontal slider.
        Defaults to `horizontalScrollbarSize`.
      *)
      val set_horizontalSliderSize: t -> float -> unit [@@js.set "horizontalSliderSize"]
      (**
        Scroll gutter clicks move by page vs jump to position.
        Defaults to false.
      *)
      (**
        Scroll gutter clicks move by page vs jump to position.
        Defaults to false.
      *)
      val get_scrollByPage: t -> bool [@@js.get "scrollByPage"]
      (**
        Scroll gutter clicks move by page vs jump to position.
        Defaults to false.
      *)
      val set_scrollByPage: t -> bool -> unit [@@js.set "scrollByPage"]
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
      val get_alwaysConsumeMouseWheel: t -> bool [@@js.get "alwaysConsumeMouseWheel"]
      val get_horizontalScrollbarSize: t -> float [@@js.get "horizontalScrollbarSize"]
      val get_horizontalSliderSize: t -> float [@@js.get "horizontalSliderSize"]
      val get_verticalScrollbarSize: t -> float [@@js.get "verticalScrollbarSize"]
      val get_verticalSliderSize: t -> float [@@js.get "verticalSliderSize"]
      val get_scrollByPage: t -> bool [@@js.get "scrollByPage"]
    end
    (** Configuration options for editor suggest widget *)
    module[@js.scope "ISuggestOptions"] ISuggestOptions : sig
      type t = monaco_editor_ISuggestOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Overwrite word ends on accept. Default to false. *)
      (** Overwrite word ends on accept. Default to false. *)
      val get_insertMode: t -> ([`L_s41_insert[@js "insert"] | `L_s65_replace[@js "replace"]] [@js.enum]) [@@js.get "insertMode"]
      (** Overwrite word ends on accept. Default to false. *)
      val set_insertMode: t -> ([`L_s41_insert | `L_s65_replace] [@js.enum]) -> unit [@@js.set "insertMode"]
      (** Enable graceful matching. Defaults to true. *)
      (** Enable graceful matching. Defaults to true. *)
      val get_filterGraceful: t -> bool [@@js.get "filterGraceful"]
      (** Enable graceful matching. Defaults to true. *)
      val set_filterGraceful: t -> bool -> unit [@@js.set "filterGraceful"]
      (** Prevent quick suggestions when a snippet is active. Defaults to true. *)
      (** Prevent quick suggestions when a snippet is active. Defaults to true. *)
      val get_snippetsPreventQuickSuggestions: t -> bool [@@js.get "snippetsPreventQuickSuggestions"]
      (** Prevent quick suggestions when a snippet is active. Defaults to true. *)
      val set_snippetsPreventQuickSuggestions: t -> bool -> unit [@@js.set "snippetsPreventQuickSuggestions"]
      (** Favors words that appear close to the cursor. *)
      (** Favors words that appear close to the cursor. *)
      val get_localityBonus: t -> bool [@@js.get "localityBonus"]
      (** Favors words that appear close to the cursor. *)
      val set_localityBonus: t -> bool -> unit [@@js.set "localityBonus"]
      (** Enable using global storage for remembering suggestions. *)
      (** Enable using global storage for remembering suggestions. *)
      val get_shareSuggestSelections: t -> bool [@@js.get "shareSuggestSelections"]
      (** Enable using global storage for remembering suggestions. *)
      val set_shareSuggestSelections: t -> bool -> unit [@@js.set "shareSuggestSelections"]
      (** Enable or disable icons in suggestions. Defaults to true. *)
      (** Enable or disable icons in suggestions. Defaults to true. *)
      val get_showIcons: t -> bool [@@js.get "showIcons"]
      (** Enable or disable icons in suggestions. Defaults to true. *)
      val set_showIcons: t -> bool -> unit [@@js.set "showIcons"]
      (** Enable or disable the suggest status bar. *)
      (** Enable or disable the suggest status bar. *)
      val get_showStatusBar: t -> bool [@@js.get "showStatusBar"]
      (** Enable or disable the suggest status bar. *)
      val set_showStatusBar: t -> bool -> unit [@@js.set "showStatusBar"]
      (** Show details inline with the label. Defaults to true. *)
      (** Show details inline with the label. Defaults to true. *)
      val get_showInlineDetails: t -> bool [@@js.get "showInlineDetails"]
      (** Show details inline with the label. Defaults to true. *)
      val set_showInlineDetails: t -> bool -> unit [@@js.set "showInlineDetails"]
      (** Show method-suggestions. *)
      (** Show method-suggestions. *)
      val get_showMethods: t -> bool [@@js.get "showMethods"]
      (** Show method-suggestions. *)
      val set_showMethods: t -> bool -> unit [@@js.set "showMethods"]
      (** Show function-suggestions. *)
      (** Show function-suggestions. *)
      val get_showFunctions: t -> bool [@@js.get "showFunctions"]
      (** Show function-suggestions. *)
      val set_showFunctions: t -> bool -> unit [@@js.set "showFunctions"]
      (** Show constructor-suggestions. *)
      (** Show constructor-suggestions. *)
      val get_showConstructors: t -> bool [@@js.get "showConstructors"]
      (** Show constructor-suggestions. *)
      val set_showConstructors: t -> bool -> unit [@@js.set "showConstructors"]
      (** Show field-suggestions. *)
      (** Show field-suggestions. *)
      val get_showFields: t -> bool [@@js.get "showFields"]
      (** Show field-suggestions. *)
      val set_showFields: t -> bool -> unit [@@js.set "showFields"]
      (** Show variable-suggestions. *)
      (** Show variable-suggestions. *)
      val get_showVariables: t -> bool [@@js.get "showVariables"]
      (** Show variable-suggestions. *)
      val set_showVariables: t -> bool -> unit [@@js.set "showVariables"]
      (** Show class-suggestions. *)
      (** Show class-suggestions. *)
      val get_showClasses: t -> bool [@@js.get "showClasses"]
      (** Show class-suggestions. *)
      val set_showClasses: t -> bool -> unit [@@js.set "showClasses"]
      (** Show struct-suggestions. *)
      (** Show struct-suggestions. *)
      val get_showStructs: t -> bool [@@js.get "showStructs"]
      (** Show struct-suggestions. *)
      val set_showStructs: t -> bool -> unit [@@js.set "showStructs"]
      (** Show interface-suggestions. *)
      (** Show interface-suggestions. *)
      val get_showInterfaces: t -> bool [@@js.get "showInterfaces"]
      (** Show interface-suggestions. *)
      val set_showInterfaces: t -> bool -> unit [@@js.set "showInterfaces"]
      (** Show module-suggestions. *)
      (** Show module-suggestions. *)
      val get_showModules: t -> bool [@@js.get "showModules"]
      (** Show module-suggestions. *)
      val set_showModules: t -> bool -> unit [@@js.set "showModules"]
      (** Show property-suggestions. *)
      (** Show property-suggestions. *)
      val get_showProperties: t -> bool [@@js.get "showProperties"]
      (** Show property-suggestions. *)
      val set_showProperties: t -> bool -> unit [@@js.set "showProperties"]
      (** Show event-suggestions. *)
      (** Show event-suggestions. *)
      val get_showEvents: t -> bool [@@js.get "showEvents"]
      (** Show event-suggestions. *)
      val set_showEvents: t -> bool -> unit [@@js.set "showEvents"]
      (** Show operator-suggestions. *)
      (** Show operator-suggestions. *)
      val get_showOperators: t -> bool [@@js.get "showOperators"]
      (** Show operator-suggestions. *)
      val set_showOperators: t -> bool -> unit [@@js.set "showOperators"]
      (** Show unit-suggestions. *)
      (** Show unit-suggestions. *)
      val get_showUnits: t -> bool [@@js.get "showUnits"]
      (** Show unit-suggestions. *)
      val set_showUnits: t -> bool -> unit [@@js.set "showUnits"]
      (** Show value-suggestions. *)
      (** Show value-suggestions. *)
      val get_showValues: t -> bool [@@js.get "showValues"]
      (** Show value-suggestions. *)
      val set_showValues: t -> bool -> unit [@@js.set "showValues"]
      (** Show constant-suggestions. *)
      (** Show constant-suggestions. *)
      val get_showConstants: t -> bool [@@js.get "showConstants"]
      (** Show constant-suggestions. *)
      val set_showConstants: t -> bool -> unit [@@js.set "showConstants"]
      (** Show enum-suggestions. *)
      (** Show enum-suggestions. *)
      val get_showEnums: t -> bool [@@js.get "showEnums"]
      (** Show enum-suggestions. *)
      val set_showEnums: t -> bool -> unit [@@js.set "showEnums"]
      (** Show enumMember-suggestions. *)
      (** Show enumMember-suggestions. *)
      val get_showEnumMembers: t -> bool [@@js.get "showEnumMembers"]
      (** Show enumMember-suggestions. *)
      val set_showEnumMembers: t -> bool -> unit [@@js.set "showEnumMembers"]
      (** Show keyword-suggestions. *)
      (** Show keyword-suggestions. *)
      val get_showKeywords: t -> bool [@@js.get "showKeywords"]
      (** Show keyword-suggestions. *)
      val set_showKeywords: t -> bool -> unit [@@js.set "showKeywords"]
      (** Show text-suggestions. *)
      (** Show text-suggestions. *)
      val get_showWords: t -> bool [@@js.get "showWords"]
      (** Show text-suggestions. *)
      val set_showWords: t -> bool -> unit [@@js.set "showWords"]
      (** Show color-suggestions. *)
      (** Show color-suggestions. *)
      val get_showColors: t -> bool [@@js.get "showColors"]
      (** Show color-suggestions. *)
      val set_showColors: t -> bool -> unit [@@js.set "showColors"]
      (** Show file-suggestions. *)
      (** Show file-suggestions. *)
      val get_showFiles: t -> bool [@@js.get "showFiles"]
      (** Show file-suggestions. *)
      val set_showFiles: t -> bool -> unit [@@js.set "showFiles"]
      (** Show reference-suggestions. *)
      (** Show reference-suggestions. *)
      val get_showReferences: t -> bool [@@js.get "showReferences"]
      (** Show reference-suggestions. *)
      val set_showReferences: t -> bool -> unit [@@js.set "showReferences"]
      (** Show folder-suggestions. *)
      (** Show folder-suggestions. *)
      val get_showFolders: t -> bool [@@js.get "showFolders"]
      (** Show folder-suggestions. *)
      val set_showFolders: t -> bool -> unit [@@js.set "showFolders"]
      (** Show typeParameter-suggestions. *)
      (** Show typeParameter-suggestions. *)
      val get_showTypeParameters: t -> bool [@@js.get "showTypeParameters"]
      (** Show typeParameter-suggestions. *)
      val set_showTypeParameters: t -> bool -> unit [@@js.set "showTypeParameters"]
      (** Show issue-suggestions. *)
      (** Show issue-suggestions. *)
      val get_showIssues: t -> bool [@@js.get "showIssues"]
      (** Show issue-suggestions. *)
      val set_showIssues: t -> bool -> unit [@@js.set "showIssues"]
      (** Show user-suggestions. *)
      (** Show user-suggestions. *)
      val get_showUsers: t -> bool [@@js.get "showUsers"]
      (** Show user-suggestions. *)
      val set_showUsers: t -> bool -> unit [@@js.set "showUsers"]
      (** Show snippet-suggestions. *)
      (** Show snippet-suggestions. *)
      val get_showSnippets: t -> bool [@@js.get "showSnippets"]
      (** Show snippet-suggestions. *)
      val set_showSnippets: t -> bool -> unit [@@js.set "showSnippets"]
    end
    module InternalSuggestOptions : sig
      type t = monaco_editor_InternalSuggestOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ISmartSelectOptions"] ISmartSelectOptions : sig
      type t = monaco_editor_ISmartSelectOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_selectLeadingAndTrailingWhitespace: t -> bool [@@js.get "selectLeadingAndTrailingWhitespace"]
      val set_selectLeadingAndTrailingWhitespace: t -> bool -> unit [@@js.set "selectLeadingAndTrailingWhitespace"]
    end
    module SmartSelectOptions : sig
      type t = monaco_editor_SmartSelectOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Describes how to indent wrapped lines. *)
    module WrappingIndent : sig
      type t = monaco_editor_WrappingIndent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "EditorWrappingInfo"] EditorWrappingInfo : sig
      type t = monaco_editor_EditorWrappingInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_isDominatedByLongLines: t -> bool [@@js.get "isDominatedByLongLines"]
      val get_isWordWrapMinified: t -> bool [@@js.get "isWordWrapMinified"]
      val get_isViewportWrapping: t -> bool [@@js.get "isViewportWrapping"]
      val get_wrappingColumn: t -> float [@@js.get "wrappingColumn"]
    end
    module EditorOption : sig
      type t = monaco_editor_EditorOption
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val editorOptions: anonymous_interface_2 [@@js.global "EditorOptions"]
    module EditorOptionsType : sig
      type t = monaco_editor_EditorOptionsType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FindEditorOptionsKeyById : sig
      type 'T t = 'T monaco_editor_FindEditorOptionsKeyById
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    module ComputedEditorOptionValue : sig
      type 'T t = 'T monaco_editor_ComputedEditorOptionValue
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    module FindComputedEditorOptionValueById : sig
      type 'T t = 'T monaco_editor_FindComputedEditorOptionValueById
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    (**
      A view zone is a full horizontal rectangle that 'pushes' text down.
      The editor reserves space for view zones when rendering.
    *)
    module[@js.scope "IViewZone"] IViewZone : sig
      type t = monaco_editor_IViewZone
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The line number after which this zone should appear.
        Use 0 to place a view zone before the first line number.
      *)
      (**
        The line number after which this zone should appear.
        Use 0 to place a view zone before the first line number.
      *)
      val get_afterLineNumber: t -> float [@@js.get "afterLineNumber"]
      (**
        The line number after which this zone should appear.
        Use 0 to place a view zone before the first line number.
      *)
      val set_afterLineNumber: t -> float -> unit [@@js.set "afterLineNumber"]
      (**
        The column after which this zone should appear.
        If not set, the maxLineColumn of `afterLineNumber` will be used.
      *)
      (**
        The column after which this zone should appear.
        If not set, the maxLineColumn of `afterLineNumber` will be used.
      *)
      val get_afterColumn: t -> float [@@js.get "afterColumn"]
      (**
        The column after which this zone should appear.
        If not set, the maxLineColumn of `afterLineNumber` will be used.
      *)
      val set_afterColumn: t -> float -> unit [@@js.set "afterColumn"]
      (**
        Suppress mouse down events.
        If set, the editor will attach a mouse down listener to the view zone and .preventDefault on it.
        Defaults to false
      *)
      (**
        Suppress mouse down events.
        If set, the editor will attach a mouse down listener to the view zone and .preventDefault on it.
        Defaults to false
      *)
      val get_suppressMouseDown: t -> bool [@@js.get "suppressMouseDown"]
      (**
        Suppress mouse down events.
        If set, the editor will attach a mouse down listener to the view zone and .preventDefault on it.
        Defaults to false
      *)
      val set_suppressMouseDown: t -> bool -> unit [@@js.set "suppressMouseDown"]
      (**
        The height in lines of the view zone.
        If specified, `heightInPx` will be used instead of this.
        If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
      *)
      (**
        The height in lines of the view zone.
        If specified, `heightInPx` will be used instead of this.
        If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
      *)
      val get_heightInLines: t -> float [@@js.get "heightInLines"]
      (**
        The height in lines of the view zone.
        If specified, `heightInPx` will be used instead of this.
        If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
      *)
      val set_heightInLines: t -> float -> unit [@@js.set "heightInLines"]
      (**
        The height in px of the view zone.
        If this is set, the editor will give preference to it rather than `heightInLines` above.
        If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
      *)
      (**
        The height in px of the view zone.
        If this is set, the editor will give preference to it rather than `heightInLines` above.
        If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
      *)
      val get_heightInPx: t -> float [@@js.get "heightInPx"]
      (**
        The height in px of the view zone.
        If this is set, the editor will give preference to it rather than `heightInLines` above.
        If neither `heightInPx` nor `heightInLines` is specified, a default of `heightInLines` = 1 will be chosen.
      *)
      val set_heightInPx: t -> float -> unit [@@js.set "heightInPx"]
      (**
        The minimum width in px of the view zone.
        If this is set, the editor will ensure that the scroll width is >= than this value.
      *)
      (**
        The minimum width in px of the view zone.
        If this is set, the editor will ensure that the scroll width is >= than this value.
      *)
      val get_minWidthInPx: t -> float [@@js.get "minWidthInPx"]
      (**
        The minimum width in px of the view zone.
        If this is set, the editor will ensure that the scroll width is >= than this value.
      *)
      val set_minWidthInPx: t -> float -> unit [@@js.set "minWidthInPx"]
      (** The dom node of the view zone *)
      (** The dom node of the view zone *)
      val get_domNode: t -> HTMLElement.t_0 [@@js.get "domNode"]
      (** The dom node of the view zone *)
      val set_domNode: t -> HTMLElement.t_0 -> unit [@@js.set "domNode"]
      (** An optional dom node for the view zone that will be placed in the margin area. *)
      (** An optional dom node for the view zone that will be placed in the margin area. *)
      val get_marginDomNode: t -> HTMLElement.t_0 or_null [@@js.get "marginDomNode"]
      (** An optional dom node for the view zone that will be placed in the margin area. *)
      val set_marginDomNode: t -> HTMLElement.t_0 or_null -> unit [@@js.set "marginDomNode"]
      (** Callback which gives the relative top of the view zone as it appears (taking scrolling into account). *)
      val onDomNodeTop: t -> top:float -> unit [@@js.call "onDomNodeTop"]
      (** Callback which gives the height in pixels of the view zone. *)
      val onComputedHeight: t -> height:float -> unit [@@js.call "onComputedHeight"]
    end
    (** An accessor that allows for zones to be added or removed. *)
    module[@js.scope "IViewZoneChangeAccessor"] IViewZoneChangeAccessor : sig
      type t = monaco_editor_IViewZoneChangeAccessor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Create a new view zone.
        @param zone Zone to create
        @return A unique identifier to the view zone.
      *)
      val addZone: t -> zone:monaco_editor_IViewZone -> string [@@js.call "addZone"]
      (**
        Remove a zone
        @param id A unique identifier to the view zone, as returned by the `addZone` call.
      *)
      val removeZone: t -> id:string -> unit [@@js.call "removeZone"]
      (**
        Change a zone's position.
        The editor will rescan the `afterLineNumber` and `afterColumn` properties of a view zone.
      *)
      val layoutZone: t -> id:string -> unit [@@js.call "layoutZone"]
    end
    (** A positioning preference for rendering content widgets. *)
    module ContentWidgetPositionPreference : sig
      type t = monaco_editor_ContentWidgetPositionPreference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** A position for rendering content widgets. *)
    module[@js.scope "IContentWidgetPosition"] IContentWidgetPosition : sig
      type t = monaco_editor_IContentWidgetPosition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Desired position for the content widget.
        `preference` will also affect the placement.
      *)
      (**
        Desired position for the content widget.
        `preference` will also affect the placement.
      *)
      val get_position: t -> monaco_IPosition or_null [@@js.get "position"]
      (**
        Desired position for the content widget.
        `preference` will also affect the placement.
      *)
      val set_position: t -> monaco_IPosition or_null -> unit [@@js.set "position"]
      (**
        Optionally, a range can be provided to further
        define the position of the content widget.
      *)
      (**
        Optionally, a range can be provided to further
        define the position of the content widget.
      *)
      val get_range: t -> monaco_IRange or_null [@@js.get "range"]
      (**
        Optionally, a range can be provided to further
        define the position of the content widget.
      *)
      val set_range: t -> monaco_IRange or_null -> unit [@@js.set "range"]
      (** Placement preference for position, in order of preference. *)
      (** Placement preference for position, in order of preference. *)
      val get_preference: t -> monaco_editor_ContentWidgetPositionPreference list [@@js.get "preference"]
      (** Placement preference for position, in order of preference. *)
      val set_preference: t -> monaco_editor_ContentWidgetPositionPreference list -> unit [@@js.set "preference"]
    end
    (** A content widget renders inline with the text and can be easily placed 'near' an editor position. *)
    module[@js.scope "IContentWidget"] IContentWidget : sig
      type t = monaco_editor_IContentWidget
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Render this content widget in a location where it could overflow the editor's view dom node. *)
      (** Render this content widget in a location where it could overflow the editor's view dom node. *)
      val get_allowEditorOverflow: t -> bool [@@js.get "allowEditorOverflow"]
      (** Render this content widget in a location where it could overflow the editor's view dom node. *)
      val set_allowEditorOverflow: t -> bool -> unit [@@js.set "allowEditorOverflow"]
      val get_suppressMouseDown: t -> bool [@@js.get "suppressMouseDown"]
      val set_suppressMouseDown: t -> bool -> unit [@@js.set "suppressMouseDown"]
      (** Get a unique identifier of the content widget. *)
      val getId: t -> string [@@js.call "getId"]
      (** Get the dom node of the content widget. *)
      val getDomNode: t -> HTMLElement.t_0 [@@js.call "getDomNode"]
      (**
        Get the placement of the content widget.
        If null is returned, the content widget will be placed off screen.
      *)
      val getPosition: t -> monaco_editor_IContentWidgetPosition or_null [@@js.call "getPosition"]
      (**
        Optional function that is invoked before rendering
        the content widget. If a dimension is returned the editor will
        attempt to use it.
      *)
      val beforeRender: t -> monaco_editor_IDimension or_null [@@js.call "beforeRender"]
      (**
        Optional function that is invoked after rendering the content
        widget. Is being invoked with the selected position preference
        or `null` if not rendered.
      *)
      val afterRender: t -> position:monaco_editor_ContentWidgetPositionPreference or_null -> unit [@@js.call "afterRender"]
    end
    (** A positioning preference for rendering overlay widgets. *)
    module OverlayWidgetPositionPreference : sig
      type t = monaco_editor_OverlayWidgetPositionPreference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** A position for rendering overlay widgets. *)
    module[@js.scope "IOverlayWidgetPosition"] IOverlayWidgetPosition : sig
      type t = monaco_editor_IOverlayWidgetPosition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The position preference for the overlay widget. *)
      (** The position preference for the overlay widget. *)
      val get_preference: t -> monaco_editor_OverlayWidgetPositionPreference or_null [@@js.get "preference"]
      (** The position preference for the overlay widget. *)
      val set_preference: t -> monaco_editor_OverlayWidgetPositionPreference or_null -> unit [@@js.set "preference"]
    end
    (** An overlay widgets renders on top of the text. *)
    module[@js.scope "IOverlayWidget"] IOverlayWidget : sig
      type t = monaco_editor_IOverlayWidget
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Get a unique identifier of the overlay widget. *)
      val getId: t -> string [@@js.call "getId"]
      (** Get the dom node of the overlay widget. *)
      val getDomNode: t -> HTMLElement.t_0 [@@js.call "getDomNode"]
      (**
        Get the placement of the overlay widget.
        If null is returned, the overlay widget is responsible to place itself.
      *)
      val getPosition: t -> monaco_editor_IOverlayWidgetPosition or_null [@@js.call "getPosition"]
    end
    (** Type of hit element with the mouse in the editor. *)
    module MouseTargetType : sig
      type t = monaco_editor_MouseTargetType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Target hit with the mouse in the editor. *)
    module[@js.scope "IMouseTarget"] IMouseTarget : sig
      type t = monaco_editor_IMouseTarget
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The target element *)
      val get_element: t -> Element.t_0 or_null [@@js.get "element"]
      (** The target type *)
      val get_type: t -> monaco_editor_MouseTargetType [@@js.get "type"]
      (** The 'approximate' editor position *)
      val get_position: t -> monaco_Position or_null [@@js.get "position"]
      (** Desired mouse column (e.g. when position.column gets clamped to text length -- clicking after text on a line). *)
      val get_mouseColumn: t -> float [@@js.get "mouseColumn"]
      (** The 'approximate' editor range *)
      val get_range: t -> monaco_Range or_null [@@js.get "range"]
      (** Some extra detail. *)
      val get_detail: t -> any [@@js.get "detail"]
    end
    (** A mouse event originating from the editor. *)
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
    module[@js.scope "IPartialEditorMouseEvent"] IPartialEditorMouseEvent : sig
      type t = monaco_editor_IPartialEditorMouseEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_event: t -> monaco_IMouseEvent [@@js.get "event"]
      val get_target: t -> monaco_editor_IMouseTarget or_null [@@js.get "target"]
    end
    (** A paste event originating from the editor. *)
    module[@js.scope "IPasteEvent"] IPasteEvent : sig
      type t = monaco_editor_IPasteEvent
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_range: t -> monaco_Range [@@js.get "range"]
      val get_mode: t -> string or_null [@@js.get "mode"]
    end
    module[@js.scope "IEditorConstructionOptions"] IEditorConstructionOptions : sig
      type t = monaco_editor_IEditorConstructionOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The initial editor dimension (to avoid measuring the container). *)
      (** The initial editor dimension (to avoid measuring the container). *)
      val get_dimension: t -> monaco_editor_IDimension [@@js.get "dimension"]
      (** The initial editor dimension (to avoid measuring the container). *)
      val set_dimension: t -> monaco_editor_IDimension -> unit [@@js.set "dimension"]
      (**
        Place overflow widgets inside an external DOM node.
        Defaults to an internal DOM node.
      *)
      (**
        Place overflow widgets inside an external DOM node.
        Defaults to an internal DOM node.
      *)
      val get_overflowWidgetsDomNode: t -> HTMLElement.t_0 [@@js.get "overflowWidgetsDomNode"]
      (**
        Place overflow widgets inside an external DOM node.
        Defaults to an internal DOM node.
      *)
      val set_overflowWidgetsDomNode: t -> HTMLElement.t_0 -> unit [@@js.set "overflowWidgetsDomNode"]
      val cast: t -> monaco_editor_IEditorOptions [@@js.cast]
    end
    (** A rich code editor. *)
    module[@js.scope "ICodeEditor"] ICodeEditor : sig
      type t = monaco_editor_ICodeEditor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        An event emitted when the content of the current model has changed.
        event: 
      *)
      val onDidChangeModelContent: t -> listener:(e:monaco_editor_IModelContentChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelContent"]
      (**
        An event emitted when the language of the current model has changed.
        event: 
      *)
      val onDidChangeModelLanguage: t -> listener:(e:monaco_editor_IModelLanguageChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelLanguage"]
      (**
        An event emitted when the language configuration of the current model has changed.
        event: 
      *)
      val onDidChangeModelLanguageConfiguration: t -> listener:(e:monaco_editor_IModelLanguageConfigurationChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelLanguageConfiguration"]
      (**
        An event emitted when the options of the current model has changed.
        event: 
      *)
      val onDidChangeModelOptions: t -> listener:(e:monaco_editor_IModelOptionsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelOptions"]
      (**
        An event emitted when the configuration of the editor has changed. (e.g. `editor.updateOptions()`)
        event: 
      *)
      val onDidChangeConfiguration: t -> listener:(e:monaco_editor_ConfigurationChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeConfiguration"]
      (**
        An event emitted when the cursor position has changed.
        event: 
      *)
      val onDidChangeCursorPosition: t -> listener:(e:monaco_editor_ICursorPositionChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeCursorPosition"]
      (**
        An event emitted when the cursor selection has changed.
        event: 
      *)
      val onDidChangeCursorSelection: t -> listener:(e:monaco_editor_ICursorSelectionChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeCursorSelection"]
      (**
        An event emitted when the model of this editor has changed (e.g. `editor.setModel()`).
        event: 
      *)
      val onDidChangeModel: t -> listener:(e:monaco_editor_IModelChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModel"]
      (**
        An event emitted when the decorations of the current model have changed.
        event: 
      *)
      val onDidChangeModelDecorations: t -> listener:(e:monaco_editor_IModelDecorationsChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidChangeModelDecorations"]
      (**
        An event emitted when the text inside this editor gained focus (i.e. cursor starts blinking).
        event: 
      *)
      val onDidFocusEditorText: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidFocusEditorText"]
      (**
        An event emitted when the text inside this editor lost focus (i.e. cursor stops blinking).
        event: 
      *)
      val onDidBlurEditorText: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidBlurEditorText"]
      (**
        An event emitted when the text inside this editor or an editor widget gained focus.
        event: 
      *)
      val onDidFocusEditorWidget: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidFocusEditorWidget"]
      (**
        An event emitted when the text inside this editor or an editor widget lost focus.
        event: 
      *)
      val onDidBlurEditorWidget: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidBlurEditorWidget"]
      (** An event emitted after composition has started. *)
      val onDidCompositionStart: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidCompositionStart"]
      (** An event emitted after composition has ended. *)
      val onDidCompositionEnd: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidCompositionEnd"]
      (**
        An event emitted when editing failed because the editor is read-only.
        event: 
      *)
      val onDidAttemptReadOnlyEdit: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidAttemptReadOnlyEdit"]
      (**
        An event emitted when users paste text in the editor.
        event: 
      *)
      val onDidPaste: t -> listener:(e:monaco_editor_IPasteEvent -> unit) -> monaco_IDisposable [@@js.call "onDidPaste"]
      (**
        An event emitted on a "mouseup".
        event: 
      *)
      val onMouseUp: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseUp"]
      (**
        An event emitted on a "mousedown".
        event: 
      *)
      val onMouseDown: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseDown"]
      (**
        An event emitted on a "contextmenu".
        event: 
      *)
      val onContextMenu: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onContextMenu"]
      (**
        An event emitted on a "mousemove".
        event: 
      *)
      val onMouseMove: t -> listener:(e:monaco_editor_IEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseMove"]
      (**
        An event emitted on a "mouseleave".
        event: 
      *)
      val onMouseLeave: t -> listener:(e:monaco_editor_IPartialEditorMouseEvent -> unit) -> monaco_IDisposable [@@js.call "onMouseLeave"]
      (**
        An event emitted on a "keyup".
        event: 
      *)
      val onKeyUp: t -> listener:(e:monaco_IKeyboardEvent -> unit) -> monaco_IDisposable [@@js.call "onKeyUp"]
      (**
        An event emitted on a "keydown".
        event: 
      *)
      val onKeyDown: t -> listener:(e:monaco_IKeyboardEvent -> unit) -> monaco_IDisposable [@@js.call "onKeyDown"]
      (**
        An event emitted when the layout of the editor has changed.
        event: 
      *)
      val onDidLayoutChange: t -> listener:(e:monaco_editor_EditorLayoutInfo -> unit) -> monaco_IDisposable [@@js.call "onDidLayoutChange"]
      (**
        An event emitted when the content width or content height in the editor has changed.
        event: 
      *)
      val onDidContentSizeChange: t -> listener:(e:monaco_editor_IContentSizeChangedEvent -> unit) -> monaco_IDisposable [@@js.call "onDidContentSizeChange"]
      (**
        An event emitted when the scroll in the editor has changed.
        event: 
      *)
      val onDidScrollChange: t -> listener:(e:monaco_IScrollEvent -> unit) -> monaco_IDisposable [@@js.call "onDidScrollChange"]
      (** Saves current view state of the editor in a serializable object. *)
      val saveViewState: t -> monaco_editor_ICodeEditorViewState or_null [@@js.call "saveViewState"]
      (** Restores the view state of the editor from a serializable object generated by `saveViewState`. *)
      val restoreViewState: t -> state:monaco_editor_ICodeEditorViewState -> unit [@@js.call "restoreViewState"]
      (** Returns true if the text inside this editor or an editor widget has focus. *)
      val hasWidgetFocus: t -> bool [@@js.call "hasWidgetFocus"]
      (**
        Get a contribution of this editor.
        id: Unique identifier of the contribution.
        @return The contribution or null if contribution not found.
      *)
      val getContribution: t -> id:string -> 'T [@@js.call "getContribution"]
      (** Type the getModel() of IEditor. *)
      val getModel: t -> monaco_editor_ITextModel or_null [@@js.call "getModel"]
      (**
        Sets the current model attached to this editor.
        If the previous model was created by the editor via the value key in the options
        literal object, it will be destroyed. Otherwise, if the previous model was set
        via setModel, or the model key in the options literal object, the previous model
        will not be destroyed.
        It is safe to call setModel(null) to simply detach the current model from the editor.
      *)
      val setModel: t -> model:monaco_editor_ITextModel or_null -> unit [@@js.call "setModel"]
      (** Gets all the editor computed options. *)
      val getOptions: t -> monaco_editor_IComputedEditorOptions [@@js.call "getOptions"]
      (** Gets a specific editor option. *)
      val getOption: t -> id:'T -> 'T monaco_editor_FindComputedEditorOptionValueById [@@js.call "getOption"]
      (** Returns the editor's configuration (without any validation or defaults). *)
      val getRawOptions: t -> monaco_editor_IEditorOptions [@@js.call "getRawOptions"]
      (**
        Get value of the current model attached to this editor.
        @see "" `ITextModel.getValue`
      *)
      val getValue: t -> ?options:anonymous_interface_10 -> unit -> string [@@js.call "getValue"]
      (**
        Set the value of the current model attached to this editor.
        @see "" `ITextModel.setValue`
      *)
      val setValue: t -> newValue:string -> unit [@@js.call "setValue"]
      (**
        Get the width of the editor's content.
        This is information that is "erased" when computing `scrollWidth = Math.max(contentWidth, width)`
      *)
      val getContentWidth: t -> float [@@js.call "getContentWidth"]
      (** Get the scrollWidth of the editor's viewport. *)
      val getScrollWidth: t -> float [@@js.call "getScrollWidth"]
      (** Get the scrollLeft of the editor's viewport. *)
      val getScrollLeft: t -> float [@@js.call "getScrollLeft"]
      (**
        Get the height of the editor's content.
        This is information that is "erased" when computing `scrollHeight = Math.max(contentHeight, height)`
      *)
      val getContentHeight: t -> float [@@js.call "getContentHeight"]
      (** Get the scrollHeight of the editor's viewport. *)
      val getScrollHeight: t -> float [@@js.call "getScrollHeight"]
      (** Get the scrollTop of the editor's viewport. *)
      val getScrollTop: t -> float [@@js.call "getScrollTop"]
      (** Change the scrollLeft of the editor's viewport. *)
      val setScrollLeft: t -> newScrollLeft:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "setScrollLeft"]
      (** Change the scrollTop of the editor's viewport. *)
      val setScrollTop: t -> newScrollTop:float -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "setScrollTop"]
      (** Change the scroll position of the editor's viewport. *)
      val setScrollPosition: t -> position:monaco_editor_INewScrollPosition -> ?scrollType:monaco_editor_ScrollType -> unit -> unit [@@js.call "setScrollPosition"]
      (**
        Get an action that is a contribution to this editor.
        id: Unique identifier of the contribution.
        @return The action or null if action not found.
      *)
      val getAction: t -> id:string -> monaco_editor_IEditorAction [@@js.call "getAction"]
      (**
        Execute a command on the editor.
        The edits will land on the undo-redo stack, but no "undo stop" will be pushed.
        @param source The source of the call.
        @param command The command to execute
      *)
      val executeCommand: t -> source:string or_null_or_undefined -> command:monaco_editor_ICommand -> unit [@@js.call "executeCommand"]
      (** Create an "undo stop" in the undo-redo stack. *)
      val pushUndoStop: t -> bool [@@js.call "pushUndoStop"]
      (** Remove the "undo stop" in the undo-redo stack. *)
      val popUndoStop: t -> bool [@@js.call "popUndoStop"]
      (**
        Execute edits on the editor.
        The edits will land on the undo-redo stack, but no "undo stop" will be pushed.
        @param source The source of the call.
        @param edits The edits to execute.
        @param endCursorState Cursor state after the edits were applied.
      *)
      val executeEdits: t -> source:string or_null_or_undefined -> edits:monaco_editor_IIdentifiedSingleEditOperation list -> ?endCursorState:(monaco_editor_ICursorStateComputer, monaco_Selection) or_array -> unit -> bool [@@js.call "executeEdits"]
      (**
        Execute multiple (concomitant) commands on the editor.
        @param source The source of the call.
        @param command The commands to execute
      *)
      val executeCommands: t -> source:string or_null_or_undefined -> commands:monaco_editor_ICommand or_null list -> unit [@@js.call "executeCommands"]
      (** Get all the decorations on a line (filtering out decorations from other editors). *)
      val getLineDecorations: t -> lineNumber:float -> monaco_editor_IModelDecoration list or_null [@@js.call "getLineDecorations"]
      (**
        All decorations added through this call will get the ownerId of this editor.
        @see "" `ITextModel.deltaDecorations`
      *)
      val deltaDecorations: t -> oldDecorations:string list -> newDecorations:monaco_editor_IModelDeltaDecoration list -> string list [@@js.call "deltaDecorations"]
      (** Get the layout info for the editor. *)
      val getLayoutInfo: t -> monaco_editor_EditorLayoutInfo [@@js.call "getLayoutInfo"]
      (**
        Returns the ranges that are currently visible.
        Does not account for horizontal scrolling.
      *)
      val getVisibleRanges: t -> monaco_Range list [@@js.call "getVisibleRanges"]
      (** Get the vertical position (top offset) for the line w.r.t. to the first line. *)
      val getTopForLineNumber: t -> lineNumber:float -> float [@@js.call "getTopForLineNumber"]
      (** Get the vertical position (top offset) for the position w.r.t. to the first line. *)
      val getTopForPosition: t -> lineNumber:float -> column:float -> float [@@js.call "getTopForPosition"]
      (** Returns the editor's container dom node *)
      val getContainerDomNode: t -> HTMLElement.t_0 [@@js.call "getContainerDomNode"]
      (** Returns the editor's dom node *)
      val getDomNode: t -> HTMLElement.t_0 or_null [@@js.call "getDomNode"]
      (** Add a content widget. Widgets must have unique ids, otherwise they will be overwritten. *)
      val addContentWidget: t -> widget:monaco_editor_IContentWidget -> unit [@@js.call "addContentWidget"]
      (**
        Layout/Reposition a content widget. This is a ping to the editor to call widget.getPosition()
        and update appropriately.
      *)
      val layoutContentWidget: t -> widget:monaco_editor_IContentWidget -> unit [@@js.call "layoutContentWidget"]
      (** Remove a content widget. *)
      val removeContentWidget: t -> widget:monaco_editor_IContentWidget -> unit [@@js.call "removeContentWidget"]
      (** Add an overlay widget. Widgets must have unique ids, otherwise they will be overwritten. *)
      val addOverlayWidget: t -> widget:monaco_editor_IOverlayWidget -> unit [@@js.call "addOverlayWidget"]
      (**
        Layout/Reposition an overlay widget. This is a ping to the editor to call widget.getPosition()
        and update appropriately.
      *)
      val layoutOverlayWidget: t -> widget:monaco_editor_IOverlayWidget -> unit [@@js.call "layoutOverlayWidget"]
      (** Remove an overlay widget. *)
      val removeOverlayWidget: t -> widget:monaco_editor_IOverlayWidget -> unit [@@js.call "removeOverlayWidget"]
      (** Change the view zones. View zones are lost when a new model is attached to the editor. *)
      val changeViewZones: t -> callback:(accessor:monaco_editor_IViewZoneChangeAccessor -> unit) -> unit [@@js.call "changeViewZones"]
      (**
        Get the horizontal position (left offset) for the column w.r.t to the beginning of the line.
        This method works only if the line `lineNumber` is currently rendered (in the editor's viewport).
        Use this method with caution.
      *)
      val getOffsetForColumn: t -> lineNumber:float -> column:float -> float [@@js.call "getOffsetForColumn"]
      (** Force an editor render now. *)
      val render: t -> ?forceRedraw:bool -> unit -> unit [@@js.call "render"]
      (**
        Get the hit test target at coordinates `clientX` and `clientY`.
        The coordinates are relative to the top-left of the viewport.
        @return Hit test target or null if the coordinates fall outside the editor or the editor has no model.
      *)
      val getTargetAtClientPoint: t -> clientX:float -> clientY:float -> monaco_editor_IMouseTarget or_null [@@js.call "getTargetAtClientPoint"]
      (**
        Get the visible position for `position`.
        The result position takes scrolling into account and is relative to the top left corner of the editor.
        Explanation 1: the results of this method will change for the same `position` if the user scrolls the editor.
        Explanation 2: the results of this method will not change if the container of the editor gets repositioned.
        Warning: the results of this method are inaccurate for positions that are outside the current editor viewport.
      *)
      val getScrolledVisiblePosition: t -> position:monaco_IPosition -> anonymous_interface_14 or_null [@@js.call "getScrolledVisiblePosition"]
      (** Apply the same font settings as the editor to `target`. *)
      val applyFontInfo: t -> target:HTMLElement.t_0 -> unit [@@js.call "applyFontInfo"]
      val cast: t -> monaco_editor_IEditor [@@js.cast]
    end
    (** Information about a line in the diff editor *)
    module[@js.scope "IDiffLineInformation"] IDiffLineInformation : sig
      type t = monaco_editor_IDiffLineInformation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_equivalentLineNumber: t -> float [@@js.get "equivalentLineNumber"]
    end
    (** A rich diff editor. *)
    module[@js.scope "IDiffEditor"] IDiffEditor : sig
      type t = monaco_editor_IDiffEditor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** @see "ICodeEditor.getDomNode"  *)
      val getDomNode: t -> HTMLElement.t_0 [@@js.call "getDomNode"]
      (**
        An event emitted when the diff information computed by this diff editor has been updated.
        event: 
      *)
      val onDidUpdateDiff: t -> listener:(unit -> unit) -> monaco_IDisposable [@@js.call "onDidUpdateDiff"]
      (** Saves current view state of the editor in a serializable object. *)
      val saveViewState: t -> monaco_editor_IDiffEditorViewState or_null [@@js.call "saveViewState"]
      (** Restores the view state of the editor from a serializable object generated by `saveViewState`. *)
      val restoreViewState: t -> state:monaco_editor_IDiffEditorViewState -> unit [@@js.call "restoreViewState"]
      (** Type the getModel() of IEditor. *)
      val getModel: t -> monaco_editor_IDiffEditorModel or_null [@@js.call "getModel"]
      (**
        Sets the current model attached to this editor.
        If the previous model was created by the editor via the value key in the options
        literal object, it will be destroyed. Otherwise, if the previous model was set
        via setModel, or the model key in the options literal object, the previous model
        will not be destroyed.
        It is safe to call setModel(null) to simply detach the current model from the editor.
      *)
      val setModel: t -> model:monaco_editor_IDiffEditorModel or_null -> unit [@@js.call "setModel"]
      (** Get the `original` editor. *)
      val getOriginalEditor: t -> monaco_editor_ICodeEditor [@@js.call "getOriginalEditor"]
      (** Get the `modified` editor. *)
      val getModifiedEditor: t -> monaco_editor_ICodeEditor [@@js.call "getModifiedEditor"]
      (** Get the computed diff information. *)
      val getLineChanges: t -> monaco_editor_ILineChange list or_null [@@js.call "getLineChanges"]
      (**
        Get information based on computed diff about a line number from the original model.
        If the diff computation is not finished or the model is missing, will return null.
      *)
      val getDiffLineInformationForOriginal: t -> lineNumber:float -> monaco_editor_IDiffLineInformation or_null [@@js.call "getDiffLineInformationForOriginal"]
      (**
        Get information based on computed diff about a line number from the modified model.
        If the diff computation is not finished or the model is missing, will return null.
      *)
      val getDiffLineInformationForModified: t -> lineNumber:float -> monaco_editor_IDiffLineInformation or_null [@@js.call "getDiffLineInformationForModified"]
      (** Update the editor's options after the editor has been created. *)
      val updateOptions: t -> newOptions:monaco_editor_IDiffEditorOptions -> unit [@@js.call "updateOptions"]
      val cast: t -> monaco_editor_IEditor [@@js.cast]
    end
    module[@js.scope "FontInfo"] FontInfo : sig
      type t = monaco_editor_FontInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__editorStylingBrand: t -> unknown [@@js.get "_editorStylingBrand"]
      val get_version: t -> float [@@js.get "version"]
      val get_isTrusted: t -> bool [@@js.get "isTrusted"]
      val get_isMonospace: t -> bool [@@js.get "isMonospace"]
      val get_typicalHalfwidthCharacterWidth: t -> float [@@js.get "typicalHalfwidthCharacterWidth"]
      val get_typicalFullwidthCharacterWidth: t -> float [@@js.get "typicalFullwidthCharacterWidth"]
      val get_canUseHalfwidthRightwardsArrow: t -> bool [@@js.get "canUseHalfwidthRightwardsArrow"]
      val get_spaceWidth: t -> float [@@js.get "spaceWidth"]
      val get_middotWidth: t -> float [@@js.get "middotWidth"]
      val get_wsmiddotWidth: t -> float [@@js.get "wsmiddotWidth"]
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
      val get_pixelRatio: t -> float [@@js.get "pixelRatio"]
      val get_fontFamily: t -> string [@@js.get "fontFamily"]
      val get_fontWeight: t -> string [@@js.get "fontWeight"]
      val get_fontSize: t -> float [@@js.get "fontSize"]
      val get_fontFeatureSettings: t -> string [@@js.get "fontFeatureSettings"]
      val get_lineHeight: t -> float [@@js.get "lineHeight"]
      val get_letterSpacing: t -> float [@@js.get "letterSpacing"]
    end
    module IReadOnlyModel : sig
      type t = monaco_editor_IReadOnlyModel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module IModel : sig
      type t = monaco_editor_IModel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "languages"] Languages : sig
    (** Register information about a new language. *)
    val register: language:monaco_languages_ILanguageExtensionPoint -> unit [@@js.global "register"]
    (** Get the information of all the registered languages. *)
    val getLanguages: unit -> monaco_languages_ILanguageExtensionPoint list [@@js.global "getLanguages"]
    val getEncodedLanguageId: languageId:string -> float [@@js.global "getEncodedLanguageId"]
    (**
      An event emitted when a language is first time needed (e.g. a model has it set).
      event: 
    *)
    val onLanguage: languageId:string -> callback:(unit -> unit) -> monaco_IDisposable [@@js.global "onLanguage"]
    (** Set the editing configuration for a language. *)
    val setLanguageConfiguration: languageId:string -> configuration:monaco_languages_LanguageConfiguration -> monaco_IDisposable [@@js.global "setLanguageConfiguration"]
    (** A token. *)
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
    (** The result of a line tokenization. *)
    module[@js.scope "ILineTokens"] ILineTokens : sig
      type t = monaco_languages_ILineTokens
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The list of tokens on the line. *)
      (** The list of tokens on the line. *)
      val get_tokens: t -> monaco_languages_IToken list [@@js.get "tokens"]
      (** The list of tokens on the line. *)
      val set_tokens: t -> monaco_languages_IToken list -> unit [@@js.set "tokens"]
      (**
        The tokenization end state.
        A pointer will be held to this and the object should not be modified by the tokenizer after the pointer is returned.
      *)
      (**
        The tokenization end state.
        A pointer will be held to this and the object should not be modified by the tokenizer after the pointer is returned.
      *)
      val get_endState: t -> monaco_languages_IState [@@js.get "endState"]
      (**
        The tokenization end state.
        A pointer will be held to this and the object should not be modified by the tokenizer after the pointer is returned.
      *)
      val set_endState: t -> monaco_languages_IState -> unit [@@js.set "endState"]
    end
    (** The result of a line tokenization. *)
    module[@js.scope "IEncodedLineTokens"] IEncodedLineTokens : sig
      type t = monaco_languages_IEncodedLineTokens
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The tokens on the line in a binary, encoded format. Each token occupies two array indices. For token i:
         - at offset 2*i => startIndex
         - at offset 2*i + 1 => metadata
        Meta data is in binary format:
        - -------------------------------------------
            3322 2222 2222 1111 1111 1100 0000 0000
            1098 7654 3210 9876 5432 1098 7654 3210
        - -------------------------------------------
            bbbb bbbb bfff ffff ffFF FTTT LLLL LLLL
        - -------------------------------------------
         - L = EncodedLanguageId (8 bits): Use `getEncodedLanguageId` to get the encoded ID of a language.
         - T = StandardTokenType (3 bits): Other = 0, Comment = 1, String = 2, RegEx = 4.
         - F = FontStyle (3 bits): None = 0, Italic = 1, Bold = 2, Underline = 4.
         - f = foreground ColorId (9 bits)
         - b = background ColorId (9 bits)
         - The color value for each colorId is defined in IStandaloneThemeData.customTokenColors:
        e.g. colorId = 1 is stored in IStandaloneThemeData.customTokenColors\[1\]. Color id = 0 means no color,
        id = 1 is for the default foreground color, id = 2 for the default background.
      *)
      (**
        The tokens on the line in a binary, encoded format. Each token occupies two array indices. For token i:
         - at offset 2*i => startIndex
         - at offset 2*i + 1 => metadata
        Meta data is in binary format:
        - -------------------------------------------
            3322 2222 2222 1111 1111 1100 0000 0000
            1098 7654 3210 9876 5432 1098 7654 3210
        - -------------------------------------------
            bbbb bbbb bfff ffff ffFF FTTT LLLL LLLL
        - -------------------------------------------
         - L = EncodedLanguageId (8 bits): Use `getEncodedLanguageId` to get the encoded ID of a language.
         - T = StandardTokenType (3 bits): Other = 0, Comment = 1, String = 2, RegEx = 4.
         - F = FontStyle (3 bits): None = 0, Italic = 1, Bold = 2, Underline = 4.
         - f = foreground ColorId (9 bits)
         - b = background ColorId (9 bits)
         - The color value for each colorId is defined in IStandaloneThemeData.customTokenColors:
        e.g. colorId = 1 is stored in IStandaloneThemeData.customTokenColors\[1\]. Color id = 0 means no color,
        id = 1 is for the default foreground color, id = 2 for the default background.
      *)
      val get_tokens: t -> Uint32Array.t_0 [@@js.get "tokens"]
      (**
        The tokens on the line in a binary, encoded format. Each token occupies two array indices. For token i:
         - at offset 2*i => startIndex
         - at offset 2*i + 1 => metadata
        Meta data is in binary format:
        - -------------------------------------------
            3322 2222 2222 1111 1111 1100 0000 0000
            1098 7654 3210 9876 5432 1098 7654 3210
        - -------------------------------------------
            bbbb bbbb bfff ffff ffFF FTTT LLLL LLLL
        - -------------------------------------------
         - L = EncodedLanguageId (8 bits): Use `getEncodedLanguageId` to get the encoded ID of a language.
         - T = StandardTokenType (3 bits): Other = 0, Comment = 1, String = 2, RegEx = 4.
         - F = FontStyle (3 bits): None = 0, Italic = 1, Bold = 2, Underline = 4.
         - f = foreground ColorId (9 bits)
         - b = background ColorId (9 bits)
         - The color value for each colorId is defined in IStandaloneThemeData.customTokenColors:
        e.g. colorId = 1 is stored in IStandaloneThemeData.customTokenColors\[1\]. Color id = 0 means no color,
        id = 1 is for the default foreground color, id = 2 for the default background.
      *)
      val set_tokens: t -> Uint32Array.t_0 -> unit [@@js.set "tokens"]
      (**
        The tokenization end state.
        A pointer will be held to this and the object should not be modified by the tokenizer after the pointer is returned.
      *)
      (**
        The tokenization end state.
        A pointer will be held to this and the object should not be modified by the tokenizer after the pointer is returned.
      *)
      val get_endState: t -> monaco_languages_IState [@@js.get "endState"]
      (**
        The tokenization end state.
        A pointer will be held to this and the object should not be modified by the tokenizer after the pointer is returned.
      *)
      val set_endState: t -> monaco_languages_IState -> unit [@@js.set "endState"]
    end
    (** A "manual" provider of tokens. *)
    module[@js.scope "TokensProvider"] TokensProvider : sig
      type t = monaco_languages_TokensProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The initial state of a language. Will be the state passed in to tokenize the first line. *)
      val getInitialState: t -> monaco_languages_IState [@@js.call "getInitialState"]
      (** Tokenize a line given the state at the beginning of the line. *)
      val tokenize: t -> line:string -> state:monaco_languages_IState -> monaco_languages_ILineTokens [@@js.call "tokenize"]
    end
    (** A "manual" provider of tokens, returning tokens in a binary form. *)
    module[@js.scope "EncodedTokensProvider"] EncodedTokensProvider : sig
      type t = monaco_languages_EncodedTokensProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The initial state of a language. Will be the state passed in to tokenize the first line. *)
      val getInitialState: t -> monaco_languages_IState [@@js.call "getInitialState"]
      (** Tokenize a line given the state at the beginning of the line. *)
      val tokenizeEncoded: t -> line:string -> state:monaco_languages_IState -> monaco_languages_IEncodedLineTokens [@@js.call "tokenizeEncoded"]
      (** Tokenize a line given the state at the beginning of the line. *)
      val tokenize: t -> line:string -> state:monaco_languages_IState -> monaco_languages_ILineTokens [@@js.call "tokenize"]
    end
    (**
      Change the color map that is used for token colors.
      Supported formats (hex): #RRGGBB, $RRGGBBAA, #RGB, #RGBA
    *)
    val setColorMap: colorMap:string list or_null -> unit [@@js.global "setColorMap"]
    (** Set the tokens provider for a language (manual implementation). *)
    val setTokensProvider: languageId:string -> provider:(monaco_languages_EncodedTokensProvider, monaco_languages_TokensProvider, (monaco_languages_EncodedTokensProvider, monaco_languages_TokensProvider) union2 monaco_Thenable) union3 -> monaco_IDisposable [@@js.global "setTokensProvider"]
    (** Set the tokens provider for a language (monarch implementation). *)
    val setMonarchTokensProvider: languageId:string -> languageDef:(monaco_languages_IMonarchLanguage, monaco_languages_IMonarchLanguage monaco_Thenable) union2 -> monaco_IDisposable [@@js.global "setMonarchTokensProvider"]
    (** Register a reference provider (used by e.g. reference search). *)
    val registerReferenceProvider: languageId:string -> provider:monaco_languages_ReferenceProvider -> monaco_IDisposable [@@js.global "registerReferenceProvider"]
    (** Register a rename provider (used by e.g. rename symbol). *)
    val registerRenameProvider: languageId:string -> provider:monaco_languages_RenameProvider -> monaco_IDisposable [@@js.global "registerRenameProvider"]
    (** Register a signature help provider (used by e.g. parameter hints). *)
    val registerSignatureHelpProvider: languageId:string -> provider:monaco_languages_SignatureHelpProvider -> monaco_IDisposable [@@js.global "registerSignatureHelpProvider"]
    (** Register a hover provider (used by e.g. editor hover). *)
    val registerHoverProvider: languageId:string -> provider:monaco_languages_HoverProvider -> monaco_IDisposable [@@js.global "registerHoverProvider"]
    (** Register a document symbol provider (used by e.g. outline). *)
    val registerDocumentSymbolProvider: languageId:string -> provider:monaco_languages_DocumentSymbolProvider -> monaco_IDisposable [@@js.global "registerDocumentSymbolProvider"]
    (** Register a document highlight provider (used by e.g. highlight occurrences). *)
    val registerDocumentHighlightProvider: languageId:string -> provider:monaco_languages_DocumentHighlightProvider -> monaco_IDisposable [@@js.global "registerDocumentHighlightProvider"]
    (** Register an linked editing range provider. *)
    val registerLinkedEditingRangeProvider: languageId:string -> provider:monaco_languages_LinkedEditingRangeProvider -> monaco_IDisposable [@@js.global "registerLinkedEditingRangeProvider"]
    (** Register a definition provider (used by e.g. go to definition). *)
    val registerDefinitionProvider: languageId:string -> provider:monaco_languages_DefinitionProvider -> monaco_IDisposable [@@js.global "registerDefinitionProvider"]
    (** Register a implementation provider (used by e.g. go to implementation). *)
    val registerImplementationProvider: languageId:string -> provider:monaco_languages_ImplementationProvider -> monaco_IDisposable [@@js.global "registerImplementationProvider"]
    (** Register a type definition provider (used by e.g. go to type definition). *)
    val registerTypeDefinitionProvider: languageId:string -> provider:monaco_languages_TypeDefinitionProvider -> monaco_IDisposable [@@js.global "registerTypeDefinitionProvider"]
    (** Register a code lens provider (used by e.g. inline code lenses). *)
    val registerCodeLensProvider: languageId:string -> provider:monaco_languages_CodeLensProvider -> monaco_IDisposable [@@js.global "registerCodeLensProvider"]
    (** Register a code action provider (used by e.g. quick fix). *)
    val registerCodeActionProvider: languageId:string -> provider:monaco_languages_CodeActionProvider -> monaco_IDisposable [@@js.global "registerCodeActionProvider"]
    (** Register a formatter that can handle only entire models. *)
    val registerDocumentFormattingEditProvider: languageId:string -> provider:monaco_languages_DocumentFormattingEditProvider -> monaco_IDisposable [@@js.global "registerDocumentFormattingEditProvider"]
    (** Register a formatter that can handle a range inside a model. *)
    val registerDocumentRangeFormattingEditProvider: languageId:string -> provider:monaco_languages_DocumentRangeFormattingEditProvider -> monaco_IDisposable [@@js.global "registerDocumentRangeFormattingEditProvider"]
    (** Register a formatter than can do formatting as the user types. *)
    val registerOnTypeFormattingEditProvider: languageId:string -> provider:monaco_languages_OnTypeFormattingEditProvider -> monaco_IDisposable [@@js.global "registerOnTypeFormattingEditProvider"]
    (** Register a link provider that can find links in text. *)
    val registerLinkProvider: languageId:string -> provider:monaco_languages_LinkProvider -> monaco_IDisposable [@@js.global "registerLinkProvider"]
    (** Register a completion item provider (use by e.g. suggestions). *)
    val registerCompletionItemProvider: languageId:string -> provider:monaco_languages_CompletionItemProvider -> monaco_IDisposable [@@js.global "registerCompletionItemProvider"]
    (** Register a document color provider (used by Color Picker, Color Decorator). *)
    val registerColorProvider: languageId:string -> provider:monaco_languages_DocumentColorProvider -> monaco_IDisposable [@@js.global "registerColorProvider"]
    (** Register a folding range provider *)
    val registerFoldingRangeProvider: languageId:string -> provider:monaco_languages_FoldingRangeProvider -> monaco_IDisposable [@@js.global "registerFoldingRangeProvider"]
    (** Register a declaration provider *)
    val registerDeclarationProvider: languageId:string -> provider:monaco_languages_DeclarationProvider -> monaco_IDisposable [@@js.global "registerDeclarationProvider"]
    (** Register a selection range provider *)
    val registerSelectionRangeProvider: languageId:string -> provider:monaco_languages_SelectionRangeProvider -> monaco_IDisposable [@@js.global "registerSelectionRangeProvider"]
    (** Register a document semantic tokens provider *)
    val registerDocumentSemanticTokensProvider: languageId:string -> provider:monaco_languages_DocumentSemanticTokensProvider -> monaco_IDisposable [@@js.global "registerDocumentSemanticTokensProvider"]
    (** Register a document range semantic tokens provider *)
    val registerDocumentRangeSemanticTokensProvider: languageId:string -> provider:monaco_languages_DocumentRangeSemanticTokensProvider -> monaco_IDisposable [@@js.global "registerDocumentRangeSemanticTokensProvider"]
    (**
      Contains additional diagnostic information about the context in which
      a \[code action\](#CodeActionProvider.provideCodeActions) is run.
    *)
    module[@js.scope "CodeActionContext"] CodeActionContext : sig
      type t = monaco_languages_CodeActionContext
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** An array of diagnostics. *)
      val get_markers: t -> monaco_editor_IMarkerData list [@@js.get "markers"]
      (** Requested kind of actions to return. *)
      val get_only: t -> string [@@js.get "only"]
    end
    (**
      The code action interface defines the contract between extensions and
      the \[light bulb\](https://code.visualstudio.com/docs/editor/editingevolved#_code-action) feature.
    *)
    module[@js.scope "CodeActionProvider"] CodeActionProvider : sig
      type t = monaco_languages_CodeActionProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide commands for the given document and range. *)
      val provideCodeActions: t -> model:monaco_editor_ITextModel -> range:monaco_Range -> context:monaco_languages_CodeActionContext -> token:monaco_CancellationToken -> monaco_languages_CodeActionList monaco_languages_ProviderResult [@@js.call "provideCodeActions"]
    end
    (** Describes how comments for a language work. *)
    module[@js.scope "CommentRule"] CommentRule : sig
      type t = monaco_languages_CommentRule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The line comment token, like `// this is a comment` *)
      (** The line comment token, like `// this is a comment` *)
      val get_lineComment: t -> string or_null [@@js.get "lineComment"]
      (** The line comment token, like `// this is a comment` *)
      val set_lineComment: t -> string or_null -> unit [@@js.set "lineComment"]
      (** The block comment character pair, like `/* block comment *&#47;` *)
      (** The block comment character pair, like `/* block comment *&#47;` *)
      val get_blockComment: t -> monaco_languages_CharacterPair or_null [@@js.get "blockComment"]
      (** The block comment character pair, like `/* block comment *&#47;` *)
      val set_blockComment: t -> monaco_languages_CharacterPair or_null -> unit [@@js.set "blockComment"]
    end
    (**
      The language configuration interface defines the contract between extensions and
      various editor features, like automatic bracket insertion, automatic indentation etc.
    *)
    module[@js.scope "LanguageConfiguration"] LanguageConfiguration : sig
      type t = monaco_languages_LanguageConfiguration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The language's comment settings. *)
      (** The language's comment settings. *)
      val get_comments: t -> monaco_languages_CommentRule [@@js.get "comments"]
      (** The language's comment settings. *)
      val set_comments: t -> monaco_languages_CommentRule -> unit [@@js.set "comments"]
      (**
        The language's brackets.
        This configuration implicitly affects pressing Enter around these brackets.
      *)
      (**
        The language's brackets.
        This configuration implicitly affects pressing Enter around these brackets.
      *)
      val get_brackets: t -> monaco_languages_CharacterPair list [@@js.get "brackets"]
      (**
        The language's brackets.
        This configuration implicitly affects pressing Enter around these brackets.
      *)
      val set_brackets: t -> monaco_languages_CharacterPair list -> unit [@@js.set "brackets"]
      (**
        The language's word definition.
        If the language supports Unicode identifiers (e.g. JavaScript), it is preferable
        to provide a word definition that uses exclusion of known separators.
        e.g.: A regex that matches anything except known separators (and dot is allowed to occur in a floating point number):
          /(-?\d*\.\d\w* )|(\[^\`\~\!\\@\#\%\^\&\*\(\)\-\=\+\\[\\{\\]\\}\\\|\;\:\'\"\,\.\<\>\/\?\s\]+)/g
        "
      *)
      (**
        The language's word definition.
        If the language supports Unicode identifiers (e.g. JavaScript), it is preferable
        to provide a word definition that uses exclusion of known separators.
        e.g.: A regex that matches anything except known separators (and dot is allowed to occur in a floating point number):
          /(-?\d*\.\d\w* )|(\[^\`\~\!\\@\#\%\^\&\*\(\)\-\=\+\\[\\{\\]\\}\\\|\;\:\'\"\,\.\<\>\/\?\s\]+)/g
        "
      *)
      val get_wordPattern: t -> regexp [@@js.get "wordPattern"]
      (**
        The language's word definition.
        If the language supports Unicode identifiers (e.g. JavaScript), it is preferable
        to provide a word definition that uses exclusion of known separators.
        e.g.: A regex that matches anything except known separators (and dot is allowed to occur in a floating point number):
          /(-?\d*\.\d\w* )|(\[^\`\~\!\\@\#\%\^\&\*\(\)\-\=\+\\[\\{\\]\\}\\\|\;\:\'\"\,\.\<\>\/\?\s\]+)/g
        "
      *)
      val set_wordPattern: t -> regexp -> unit [@@js.set "wordPattern"]
      (** The language's indentation settings. *)
      (** The language's indentation settings. *)
      val get_indentationRules: t -> monaco_languages_IndentationRule [@@js.get "indentationRules"]
      (** The language's indentation settings. *)
      val set_indentationRules: t -> monaco_languages_IndentationRule -> unit [@@js.set "indentationRules"]
      (** The language's rules to be evaluated when pressing Enter. *)
      (** The language's rules to be evaluated when pressing Enter. *)
      val get_onEnterRules: t -> monaco_languages_OnEnterRule list [@@js.get "onEnterRules"]
      (** The language's rules to be evaluated when pressing Enter. *)
      val set_onEnterRules: t -> monaco_languages_OnEnterRule list -> unit [@@js.set "onEnterRules"]
      (**
        The language's auto closing pairs. The 'close' character is automatically inserted with the
        'open' character is typed. If not set, the configured brackets will be used.
      *)
      (**
        The language's auto closing pairs. The 'close' character is automatically inserted with the
        'open' character is typed. If not set, the configured brackets will be used.
      *)
      val get_autoClosingPairs: t -> monaco_languages_IAutoClosingPairConditional list [@@js.get "autoClosingPairs"]
      (**
        The language's auto closing pairs. The 'close' character is automatically inserted with the
        'open' character is typed. If not set, the configured brackets will be used.
      *)
      val set_autoClosingPairs: t -> monaco_languages_IAutoClosingPairConditional list -> unit [@@js.set "autoClosingPairs"]
      (**
        The language's surrounding pairs. When the 'open' character is typed on a selection, the
        selected string is surrounded by the open and close characters. If not set, the autoclosing pairs
        settings will be used.
      *)
      (**
        The language's surrounding pairs. When the 'open' character is typed on a selection, the
        selected string is surrounded by the open and close characters. If not set, the autoclosing pairs
        settings will be used.
      *)
      val get_surroundingPairs: t -> monaco_languages_IAutoClosingPair list [@@js.get "surroundingPairs"]
      (**
        The language's surrounding pairs. When the 'open' character is typed on a selection, the
        selected string is surrounded by the open and close characters. If not set, the autoclosing pairs
        settings will be used.
      *)
      val set_surroundingPairs: t -> monaco_languages_IAutoClosingPair list -> unit [@@js.set "surroundingPairs"]
      (**
        Defines what characters must be after the cursor for bracket or quote autoclosing to occur when using the \'languageDefined\' autoclosing setting.
        
        This is typically the set of characters which can not start an expression, such as whitespace, closing brackets, non-unary operators, etc.
      *)
      (**
        Defines what characters must be after the cursor for bracket or quote autoclosing to occur when using the \'languageDefined\' autoclosing setting.
        
        This is typically the set of characters which can not start an expression, such as whitespace, closing brackets, non-unary operators, etc.
      *)
      val get_autoCloseBefore: t -> string [@@js.get "autoCloseBefore"]
      (**
        Defines what characters must be after the cursor for bracket or quote autoclosing to occur when using the \'languageDefined\' autoclosing setting.
        
        This is typically the set of characters which can not start an expression, such as whitespace, closing brackets, non-unary operators, etc.
      *)
      val set_autoCloseBefore: t -> string -> unit [@@js.set "autoCloseBefore"]
      (** The language's folding rules. *)
      (** The language's folding rules. *)
      val get_folding: t -> monaco_languages_FoldingRules [@@js.get "folding"]
      (** The language's folding rules. *)
      val set_folding: t -> monaco_languages_FoldingRules -> unit [@@js.set "folding"]
      (**
        **Deprecated** Do not use.
        @deprecated Will be replaced by a better API soon.
      *)
      (**
        **Deprecated** Do not use.
        @deprecated Will be replaced by a better API soon.
      *)
      val get___electricCharacterSupport: t -> anonymous_interface_5 [@@js.get "__electricCharacterSupport"]
      (**
        **Deprecated** Do not use.
        @deprecated Will be replaced by a better API soon.
      *)
      val set___electricCharacterSupport: t -> anonymous_interface_5 -> unit [@@js.set "__electricCharacterSupport"]
    end
    (** Describes indentation rules for a language. *)
    module[@js.scope "IndentationRule"] IndentationRule : sig
      type t = monaco_languages_IndentationRule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** If a line matches this pattern, then all the lines after it should be unindented once (until another rule matches). *)
      (** If a line matches this pattern, then all the lines after it should be unindented once (until another rule matches). *)
      val get_decreaseIndentPattern: t -> regexp [@@js.get "decreaseIndentPattern"]
      (** If a line matches this pattern, then all the lines after it should be unindented once (until another rule matches). *)
      val set_decreaseIndentPattern: t -> regexp -> unit [@@js.set "decreaseIndentPattern"]
      (** If a line matches this pattern, then all the lines after it should be indented once (until another rule matches). *)
      (** If a line matches this pattern, then all the lines after it should be indented once (until another rule matches). *)
      val get_increaseIndentPattern: t -> regexp [@@js.get "increaseIndentPattern"]
      (** If a line matches this pattern, then all the lines after it should be indented once (until another rule matches). *)
      val set_increaseIndentPattern: t -> regexp -> unit [@@js.set "increaseIndentPattern"]
      (** If a line matches this pattern, then **only the next line** after it should be indented once. *)
      (** If a line matches this pattern, then **only the next line** after it should be indented once. *)
      val get_indentNextLinePattern: t -> regexp or_null [@@js.get "indentNextLinePattern"]
      (** If a line matches this pattern, then **only the next line** after it should be indented once. *)
      val set_indentNextLinePattern: t -> regexp or_null -> unit [@@js.set "indentNextLinePattern"]
      (** If a line matches this pattern, then its indentation should not be changed and it should not be evaluated against the other rules. *)
      (** If a line matches this pattern, then its indentation should not be changed and it should not be evaluated against the other rules. *)
      val get_unIndentedLinePattern: t -> regexp or_null [@@js.get "unIndentedLinePattern"]
      (** If a line matches this pattern, then its indentation should not be changed and it should not be evaluated against the other rules. *)
      val set_unIndentedLinePattern: t -> regexp or_null -> unit [@@js.set "unIndentedLinePattern"]
    end
    (**
      Describes language specific folding markers such as '#region' and '#endregion'.
      The start and end regexes will be tested against the contents of all lines and must be designed efficiently:
      - the regex should start with '^'
      - regexp flags (i, g) are ignored
    *)
    module[@js.scope "FoldingMarkers"] FoldingMarkers : sig
      type t = monaco_languages_FoldingMarkers
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_start: t -> regexp [@@js.get "start"]
      val set_start: t -> regexp -> unit [@@js.set "start"]
      val get_end: t -> regexp [@@js.get "end"]
      val set_end: t -> regexp -> unit [@@js.set "end"]
    end
    (** Describes folding rules for a language. *)
    module[@js.scope "FoldingRules"] FoldingRules : sig
      type t = monaco_languages_FoldingRules
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Used by the indentation based strategy to decide whether empty lines belong to the previous or the next block.
        A language adheres to the off-side rule if blocks in that language are expressed by their indentation.
        See \[wikipedia\](https://en.wikipedia.org/wiki/Off-side_rule) for more information.
        If not set, `false` is used and empty lines belong to the previous block.
      *)
      (**
        Used by the indentation based strategy to decide whether empty lines belong to the previous or the next block.
        A language adheres to the off-side rule if blocks in that language are expressed by their indentation.
        See \[wikipedia\](https://en.wikipedia.org/wiki/Off-side_rule) for more information.
        If not set, `false` is used and empty lines belong to the previous block.
      *)
      val get_offSide: t -> bool [@@js.get "offSide"]
      (**
        Used by the indentation based strategy to decide whether empty lines belong to the previous or the next block.
        A language adheres to the off-side rule if blocks in that language are expressed by their indentation.
        See \[wikipedia\](https://en.wikipedia.org/wiki/Off-side_rule) for more information.
        If not set, `false` is used and empty lines belong to the previous block.
      *)
      val set_offSide: t -> bool -> unit [@@js.set "offSide"]
      (** Region markers used by the language. *)
      (** Region markers used by the language. *)
      val get_markers: t -> monaco_languages_FoldingMarkers [@@js.get "markers"]
      (** Region markers used by the language. *)
      val set_markers: t -> monaco_languages_FoldingMarkers -> unit [@@js.set "markers"]
    end
    (** Describes a rule to be evaluated when pressing Enter. *)
    module[@js.scope "OnEnterRule"] OnEnterRule : sig
      type t = monaco_languages_OnEnterRule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** This rule will only execute if the text before the cursor matches this regular expression. *)
      (** This rule will only execute if the text before the cursor matches this regular expression. *)
      val get_beforeText: t -> regexp [@@js.get "beforeText"]
      (** This rule will only execute if the text before the cursor matches this regular expression. *)
      val set_beforeText: t -> regexp -> unit [@@js.set "beforeText"]
      (** This rule will only execute if the text after the cursor matches this regular expression. *)
      (** This rule will only execute if the text after the cursor matches this regular expression. *)
      val get_afterText: t -> regexp [@@js.get "afterText"]
      (** This rule will only execute if the text after the cursor matches this regular expression. *)
      val set_afterText: t -> regexp -> unit [@@js.set "afterText"]
      (** This rule will only execute if the text above the this line matches this regular expression. *)
      (** This rule will only execute if the text above the this line matches this regular expression. *)
      val get_previousLineText: t -> regexp [@@js.get "previousLineText"]
      (** This rule will only execute if the text above the this line matches this regular expression. *)
      val set_previousLineText: t -> regexp -> unit [@@js.set "previousLineText"]
      (** The action to execute. *)
      (** The action to execute. *)
      val get_action: t -> monaco_languages_EnterAction [@@js.get "action"]
      (** The action to execute. *)
      val set_action: t -> monaco_languages_EnterAction -> unit [@@js.set "action"]
    end
    (** Definition of documentation comments (e.g. Javadoc/JSdoc) *)
    module[@js.scope "IDocComment"] IDocComment : sig
      type t = monaco_languages_IDocComment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The string that starts a doc comment (e.g. '/**') *)
      (** The string that starts a doc comment (e.g. '/**') *)
      val get_open: t -> string [@@js.get "open"]
      (** The string that starts a doc comment (e.g. '/**') *)
      val set_open: t -> string -> unit [@@js.set "open"]
      (** The string that appears on the last line and closes the doc comment (e.g. ' * /'). *)
      (** The string that appears on the last line and closes the doc comment (e.g. ' * /'). *)
      val get_close: t -> string [@@js.get "close"]
      (** The string that appears on the last line and closes the doc comment (e.g. ' * /'). *)
      val set_close: t -> string -> unit [@@js.set "close"]
    end
    (**
      A tuple of two characters, like a pair of
      opening and closing brackets.
    *)
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
    (** Describes what to do with the indentation when pressing Enter. *)
    module IndentAction : sig
      type t = monaco_languages_IndentAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Describes what to do when pressing Enter. *)
    module[@js.scope "EnterAction"] EnterAction : sig
      type t = monaco_languages_EnterAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Describe what to do with the indentation. *)
      (** Describe what to do with the indentation. *)
      val get_indentAction: t -> monaco_languages_IndentAction [@@js.get "indentAction"]
      (** Describe what to do with the indentation. *)
      val set_indentAction: t -> monaco_languages_IndentAction -> unit [@@js.set "indentAction"]
      (** Describes text to be appended after the new line and after the indentation. *)
      (** Describes text to be appended after the new line and after the indentation. *)
      val get_appendText: t -> string [@@js.get "appendText"]
      (** Describes text to be appended after the new line and after the indentation. *)
      val set_appendText: t -> string -> unit [@@js.set "appendText"]
      (** Describes the number of characters to remove from the new line's indentation. *)
      (** Describes the number of characters to remove from the new line's indentation. *)
      val get_removeText: t -> float [@@js.get "removeText"]
      (** Describes the number of characters to remove from the new line's indentation. *)
      val set_removeText: t -> float -> unit [@@js.set "removeText"]
    end
    (**
      The state of the tokenizer between two lines.
      It is useful to store flags such as in multiline comment, etc.
      The model will clone the previous line's state and pass it in to tokenize the next line.
    *)
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
    (**
      A provider result represents the values a provider, like the \[`HoverProvider`\](#HoverProvider),
      may return. For once this is the actual result type `T`, like `Hover`, or a thenable that resolves
      to that type `T`. In addition, `null` and `undefined` can be returned - either directly or from a
      thenable.
    *)
    module ProviderResult : sig
      type 'T t = 'T monaco_languages_ProviderResult
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    (**
      A hover represents additional information for a symbol or word. Hovers are
      rendered in a tooltip-like widget.
    *)
    module[@js.scope "Hover"] Hover : sig
      type t = monaco_languages_Hover
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The contents of this hover. *)
      (** The contents of this hover. *)
      val get_contents: t -> monaco_IMarkdownString list [@@js.get "contents"]
      (** The contents of this hover. *)
      val set_contents: t -> monaco_IMarkdownString list -> unit [@@js.set "contents"]
      (**
        The range to which this hover applies. When missing, the
        editor will use the range at the current position or the
        current position itself.
      *)
      (**
        The range to which this hover applies. When missing, the
        editor will use the range at the current position or the
        current position itself.
      *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (**
        The range to which this hover applies. When missing, the
        editor will use the range at the current position or the
        current position itself.
      *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
    end
    (**
      The hover provider interface defines the contract between extensions and
      the \[hover\](https://code.visualstudio.com/docs/editor/intellisense)-feature.
    *)
    module[@js.scope "HoverProvider"] HoverProvider : sig
      type t = monaco_languages_HoverProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Provide a hover for the given position and document. Multiple hovers at the same
        position will be merged by the editor. A hover can have a range which defaults
        to the word range at the position when omitted.
      *)
      val provideHover: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> monaco_languages_Hover monaco_languages_ProviderResult [@@js.call "provideHover"]
    end
    module CompletionItemKind : sig
      type t = monaco_languages_CompletionItemKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "CompletionItemLabel"] CompletionItemLabel : sig
      type t = monaco_languages_CompletionItemLabel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The function or variable. Rendered leftmost. *)
      (** The function or variable. Rendered leftmost. *)
      val get_name: t -> string [@@js.get "name"]
      (** The function or variable. Rendered leftmost. *)
      val set_name: t -> string -> unit [@@js.set "name"]
      (** The parameters without the return type. Render after `name`. *)
      (** The parameters without the return type. Render after `name`. *)
      val get_parameters: t -> string [@@js.get "parameters"]
      (** The parameters without the return type. Render after `name`. *)
      val set_parameters: t -> string -> unit [@@js.set "parameters"]
      (** The fully qualified name, like package name or file path. Rendered after `signature`. *)
      (** The fully qualified name, like package name or file path. Rendered after `signature`. *)
      val get_qualifier: t -> string [@@js.get "qualifier"]
      (** The fully qualified name, like package name or file path. Rendered after `signature`. *)
      val set_qualifier: t -> string -> unit [@@js.set "qualifier"]
      (** The return-type of a function or type of a property/variable. Rendered rightmost. *)
      (** The return-type of a function or type of a property/variable. Rendered rightmost. *)
      val get_type: t -> string [@@js.get "type"]
      (** The return-type of a function or type of a property/variable. Rendered rightmost. *)
      val set_type: t -> string -> unit [@@js.set "type"]
    end
    module CompletionItemTag : sig
      type t = monaco_languages_CompletionItemTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompletionItemInsertTextRule : sig
      type t = monaco_languages_CompletionItemInsertTextRule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      A completion item represents a text snippet that is
      proposed to complete text that is being typed.
    *)
    module[@js.scope "CompletionItem"] CompletionItem : sig
      type t = monaco_languages_CompletionItem
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The label of this completion item. By default
        this is also the text that is inserted when selecting
        this completion.
      *)
      (**
        The label of this completion item. By default
        this is also the text that is inserted when selecting
        this completion.
      *)
      val get_label: t -> monaco_languages_CompletionItemLabel or_string [@@js.get "label"]
      (**
        The label of this completion item. By default
        this is also the text that is inserted when selecting
        this completion.
      *)
      val set_label: t -> monaco_languages_CompletionItemLabel or_string -> unit [@@js.set "label"]
      (**
        The kind of this completion item. Based on the kind
        an icon is chosen by the editor.
      *)
      (**
        The kind of this completion item. Based on the kind
        an icon is chosen by the editor.
      *)
      val get_kind: t -> monaco_languages_CompletionItemKind [@@js.get "kind"]
      (**
        The kind of this completion item. Based on the kind
        an icon is chosen by the editor.
      *)
      val set_kind: t -> monaco_languages_CompletionItemKind -> unit [@@js.set "kind"]
      (**
        A modifier to the `kind` which affect how the item
        is rendered, e.g. Deprecated is rendered with a strikeout
      *)
      (**
        A modifier to the `kind` which affect how the item
        is rendered, e.g. Deprecated is rendered with a strikeout
      *)
      val get_tags: t -> monaco_languages_CompletionItemTag list [@@js.get "tags"]
      (**
        A modifier to the `kind` which affect how the item
        is rendered, e.g. Deprecated is rendered with a strikeout
      *)
      val set_tags: t -> monaco_languages_CompletionItemTag list -> unit [@@js.set "tags"]
      (**
        A human-readable string with additional information
        about this item, like type or symbol information.
      *)
      (**
        A human-readable string with additional information
        about this item, like type or symbol information.
      *)
      val get_detail: t -> string [@@js.get "detail"]
      (**
        A human-readable string with additional information
        about this item, like type or symbol information.
      *)
      val set_detail: t -> string -> unit [@@js.set "detail"]
      (** A human-readable string that represents a doc-comment. *)
      (** A human-readable string that represents a doc-comment. *)
      val get_documentation: t -> monaco_IMarkdownString or_string [@@js.get "documentation"]
      (** A human-readable string that represents a doc-comment. *)
      val set_documentation: t -> monaco_IMarkdownString or_string -> unit [@@js.set "documentation"]
      (**
        A string that should be used when comparing this item
        with other items. When `falsy` the \[label\](#CompletionItem.label)
        is used.
      *)
      (**
        A string that should be used when comparing this item
        with other items. When `falsy` the \[label\](#CompletionItem.label)
        is used.
      *)
      val get_sortText: t -> string [@@js.get "sortText"]
      (**
        A string that should be used when comparing this item
        with other items. When `falsy` the \[label\](#CompletionItem.label)
        is used.
      *)
      val set_sortText: t -> string -> unit [@@js.set "sortText"]
      (**
        A string that should be used when filtering a set of
        completion items. When `falsy` the \[label\](#CompletionItem.label)
        is used.
      *)
      (**
        A string that should be used when filtering a set of
        completion items. When `falsy` the \[label\](#CompletionItem.label)
        is used.
      *)
      val get_filterText: t -> string [@@js.get "filterText"]
      (**
        A string that should be used when filtering a set of
        completion items. When `falsy` the \[label\](#CompletionItem.label)
        is used.
      *)
      val set_filterText: t -> string -> unit [@@js.set "filterText"]
      (**
        Select this item when showing. *Note* that only one completion item can be selected and
        that the editor decides which item that is. The rule is that the *first* item of those
        that match best is selected.
      *)
      (**
        Select this item when showing. *Note* that only one completion item can be selected and
        that the editor decides which item that is. The rule is that the *first* item of those
        that match best is selected.
      *)
      val get_preselect: t -> bool [@@js.get "preselect"]
      (**
        Select this item when showing. *Note* that only one completion item can be selected and
        that the editor decides which item that is. The rule is that the *first* item of those
        that match best is selected.
      *)
      val set_preselect: t -> bool -> unit [@@js.set "preselect"]
      (**
        A string or snippet that should be inserted in a document when selecting
        this completion.
        is used.
      *)
      (**
        A string or snippet that should be inserted in a document when selecting
        this completion.
        is used.
      *)
      val get_insertText: t -> string [@@js.get "insertText"]
      (**
        A string or snippet that should be inserted in a document when selecting
        this completion.
        is used.
      *)
      val set_insertText: t -> string -> unit [@@js.set "insertText"]
      (**
        Addition rules (as bitmask) that should be applied when inserting
        this completion.
      *)
      (**
        Addition rules (as bitmask) that should be applied when inserting
        this completion.
      *)
      val get_insertTextRules: t -> monaco_languages_CompletionItemInsertTextRule [@@js.get "insertTextRules"]
      (**
        Addition rules (as bitmask) that should be applied when inserting
        this completion.
      *)
      val set_insertTextRules: t -> monaco_languages_CompletionItemInsertTextRule -> unit [@@js.set "insertTextRules"]
      (**
        A range of text that should be replaced by this completion item.
        
        Defaults to a range from the start of the \[current word\](#TextDocument.getWordRangeAtPosition) to the
        current position.
        
        *Note:* The range must be a \[single line\](#Range.isSingleLine) and it must
        \[contain\](#Range.contains) the position at which completion has been \[requested\](#CompletionItemProvider.provideCompletionItems).
      *)
      (**
        A range of text that should be replaced by this completion item.
        
        Defaults to a range from the start of the \[current word\](#TextDocument.getWordRangeAtPosition) to the
        current position.
        
        *Note:* The range must be a \[single line\](#Range.isSingleLine) and it must
        \[contain\](#Range.contains) the position at which completion has been \[requested\](#CompletionItemProvider.provideCompletionItems).
      *)
      val get_range: t -> (monaco_IRange, anonymous_interface_7) union2 [@@js.get "range"]
      (**
        A range of text that should be replaced by this completion item.
        
        Defaults to a range from the start of the \[current word\](#TextDocument.getWordRangeAtPosition) to the
        current position.
        
        *Note:* The range must be a \[single line\](#Range.isSingleLine) and it must
        \[contain\](#Range.contains) the position at which completion has been \[requested\](#CompletionItemProvider.provideCompletionItems).
      *)
      val set_range: t -> (monaco_IRange, anonymous_interface_7) union2 -> unit [@@js.set "range"]
      (**
        An optional set of characters that when pressed while this completion is active will accept it first and
        then type that character. *Note* that all commit characters should have `length=1` and that superfluous
        characters will be ignored.
      *)
      (**
        An optional set of characters that when pressed while this completion is active will accept it first and
        then type that character. *Note* that all commit characters should have `length=1` and that superfluous
        characters will be ignored.
      *)
      val get_commitCharacters: t -> string list [@@js.get "commitCharacters"]
      (**
        An optional set of characters that when pressed while this completion is active will accept it first and
        then type that character. *Note* that all commit characters should have `length=1` and that superfluous
        characters will be ignored.
      *)
      val set_commitCharacters: t -> string list -> unit [@@js.set "commitCharacters"]
      (**
        An optional array of additional text edits that are applied when
        selecting this completion. Edits must not overlap with the main edit
        nor with themselves.
      *)
      (**
        An optional array of additional text edits that are applied when
        selecting this completion. Edits must not overlap with the main edit
        nor with themselves.
      *)
      val get_additionalTextEdits: t -> monaco_editor_ISingleEditOperation list [@@js.get "additionalTextEdits"]
      (**
        An optional array of additional text edits that are applied when
        selecting this completion. Edits must not overlap with the main edit
        nor with themselves.
      *)
      val set_additionalTextEdits: t -> monaco_editor_ISingleEditOperation list -> unit [@@js.set "additionalTextEdits"]
      (** A command that should be run upon acceptance of this item. *)
      (** A command that should be run upon acceptance of this item. *)
      val get_command: t -> monaco_languages_Command [@@js.get "command"]
      (** A command that should be run upon acceptance of this item. *)
      val set_command: t -> monaco_languages_Command -> unit [@@js.set "command"]
    end
    module[@js.scope "CompletionList"] CompletionList : sig
      type t = monaco_languages_CompletionList
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_suggestions: t -> monaco_languages_CompletionItem list [@@js.get "suggestions"]
      val set_suggestions: t -> monaco_languages_CompletionItem list -> unit [@@js.set "suggestions"]
      val get_incomplete: t -> bool [@@js.get "incomplete"]
      val set_incomplete: t -> bool -> unit [@@js.set "incomplete"]
      val dispose: t -> unit [@@js.call "dispose"]
    end
    (** How a suggest provider was triggered. *)
    module CompletionTriggerKind : sig
      type t = monaco_languages_CompletionTriggerKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      Contains additional information about the context in which
      \[completion provider\](#CompletionItemProvider.provideCompletionItems) is triggered.
    *)
    module[@js.scope "CompletionContext"] CompletionContext : sig
      type t = monaco_languages_CompletionContext
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** How the completion was triggered. *)
      (** How the completion was triggered. *)
      val get_triggerKind: t -> monaco_languages_CompletionTriggerKind [@@js.get "triggerKind"]
      (** How the completion was triggered. *)
      val set_triggerKind: t -> monaco_languages_CompletionTriggerKind -> unit [@@js.set "triggerKind"]
      (**
        Character that triggered the completion item provider.
        
        `undefined` if provider was not triggered by a character.
      *)
      (**
        Character that triggered the completion item provider.
        
        `undefined` if provider was not triggered by a character.
      *)
      val get_triggerCharacter: t -> string [@@js.get "triggerCharacter"]
      (**
        Character that triggered the completion item provider.
        
        `undefined` if provider was not triggered by a character.
      *)
      val set_triggerCharacter: t -> string -> unit [@@js.set "triggerCharacter"]
    end
    (**
      The completion item provider interface defines the contract between extensions and
      the \[IntelliSense\](https://code.visualstudio.com/docs/editor/intellisense).
      
      When computing *complete* completion items is expensive, providers can optionally implement
      the `resolveCompletionItem`-function. In that case it is enough to return completion
      items with a \[label\](#CompletionItem.label) from the
      \[provideCompletionItems\](#CompletionItemProvider.provideCompletionItems)-function. Subsequently,
      when a completion item is shown in the UI and gains focus this provider is asked to resolve
      the item, like adding \[doc-comment\](#CompletionItem.documentation) or \[details\](#CompletionItem.detail).
    *)
    module[@js.scope "CompletionItemProvider"] CompletionItemProvider : sig
      type t = monaco_languages_CompletionItemProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_triggerCharacters: t -> string list [@@js.get "triggerCharacters"]
      val set_triggerCharacters: t -> string list -> unit [@@js.set "triggerCharacters"]
      (** Provide completion items for the given position and document. *)
      val provideCompletionItems: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> context:monaco_languages_CompletionContext -> token:monaco_CancellationToken -> monaco_languages_CompletionList monaco_languages_ProviderResult [@@js.call "provideCompletionItems"]
      (**
        Given a completion item fill in more data, like \[doc-comment\](#CompletionItem.documentation)
        or \[details\](#CompletionItem.detail).
        
        The editor will only resolve a completion item once.
      *)
      val resolveCompletionItem: t -> item:monaco_languages_CompletionItem -> token:monaco_CancellationToken -> monaco_languages_CompletionItem monaco_languages_ProviderResult [@@js.call "resolveCompletionItem"]
    end
    module[@js.scope "CodeAction"] CodeAction : sig
      type t = monaco_languages_CodeAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_title: t -> string [@@js.get "title"]
      val set_title: t -> string -> unit [@@js.set "title"]
      val get_command: t -> monaco_languages_Command [@@js.get "command"]
      val set_command: t -> monaco_languages_Command -> unit [@@js.set "command"]
      val get_edit: t -> monaco_languages_WorkspaceEdit [@@js.get "edit"]
      val set_edit: t -> monaco_languages_WorkspaceEdit -> unit [@@js.set "edit"]
      val get_diagnostics: t -> monaco_editor_IMarkerData list [@@js.get "diagnostics"]
      val set_diagnostics: t -> monaco_editor_IMarkerData list -> unit [@@js.set "diagnostics"]
      val get_kind: t -> string [@@js.get "kind"]
      val set_kind: t -> string -> unit [@@js.set "kind"]
      val get_isPreferred: t -> bool [@@js.get "isPreferred"]
      val set_isPreferred: t -> bool -> unit [@@js.set "isPreferred"]
      val get_disabled: t -> string [@@js.get "disabled"]
      val set_disabled: t -> string -> unit [@@js.set "disabled"]
    end
    module[@js.scope "CodeActionList"] CodeActionList : sig
      type t = monaco_languages_CodeActionList
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_actions: t -> monaco_languages_CodeAction list [@@js.get "actions"]
      val cast: t -> monaco_IDisposable [@@js.cast]
    end
    (**
      Represents a parameter of a callable-signature. A parameter can
      have a label and a doc-comment.
    *)
    module[@js.scope "ParameterInformation"] ParameterInformation : sig
      type t = monaco_languages_ParameterInformation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The label of this signature. Will be shown in
        the UI.
      *)
      (**
        The label of this signature. Will be shown in
        the UI.
      *)
      val get_label: t -> (float * float) or_string [@@js.get "label"]
      (**
        The label of this signature. Will be shown in
        the UI.
      *)
      val set_label: t -> (float * float) or_string -> unit [@@js.set "label"]
      (**
        The human-readable doc-comment of this signature. Will be shown
        in the UI but can be omitted.
      *)
      (**
        The human-readable doc-comment of this signature. Will be shown
        in the UI but can be omitted.
      *)
      val get_documentation: t -> monaco_IMarkdownString or_string [@@js.get "documentation"]
      (**
        The human-readable doc-comment of this signature. Will be shown
        in the UI but can be omitted.
      *)
      val set_documentation: t -> monaco_IMarkdownString or_string -> unit [@@js.set "documentation"]
    end
    (**
      Represents the signature of something callable. A signature
      can have a label, like a function-name, a doc-comment, and
      a set of parameters.
    *)
    module[@js.scope "SignatureInformation"] SignatureInformation : sig
      type t = monaco_languages_SignatureInformation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The label of this signature. Will be shown in
        the UI.
      *)
      (**
        The label of this signature. Will be shown in
        the UI.
      *)
      val get_label: t -> string [@@js.get "label"]
      (**
        The label of this signature. Will be shown in
        the UI.
      *)
      val set_label: t -> string -> unit [@@js.set "label"]
      (**
        The human-readable doc-comment of this signature. Will be shown
        in the UI but can be omitted.
      *)
      (**
        The human-readable doc-comment of this signature. Will be shown
        in the UI but can be omitted.
      *)
      val get_documentation: t -> monaco_IMarkdownString or_string [@@js.get "documentation"]
      (**
        The human-readable doc-comment of this signature. Will be shown
        in the UI but can be omitted.
      *)
      val set_documentation: t -> monaco_IMarkdownString or_string -> unit [@@js.set "documentation"]
      (** The parameters of this signature. *)
      (** The parameters of this signature. *)
      val get_parameters: t -> monaco_languages_ParameterInformation list [@@js.get "parameters"]
      (** The parameters of this signature. *)
      val set_parameters: t -> monaco_languages_ParameterInformation list -> unit [@@js.set "parameters"]
      (**
        Index of the active parameter.
        
        If provided, this is used in place of `SignatureHelp.activeSignature`.
      *)
      (**
        Index of the active parameter.
        
        If provided, this is used in place of `SignatureHelp.activeSignature`.
      *)
      val get_activeParameter: t -> float [@@js.get "activeParameter"]
      (**
        Index of the active parameter.
        
        If provided, this is used in place of `SignatureHelp.activeSignature`.
      *)
      val set_activeParameter: t -> float -> unit [@@js.set "activeParameter"]
    end
    (**
      Signature help represents the signature of something
      callable. There can be multiple signatures but only one
      active and only one active parameter.
    *)
    module[@js.scope "SignatureHelp"] SignatureHelp : sig
      type t = monaco_languages_SignatureHelp
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** One or more signatures. *)
      (** One or more signatures. *)
      val get_signatures: t -> monaco_languages_SignatureInformation list [@@js.get "signatures"]
      (** One or more signatures. *)
      val set_signatures: t -> monaco_languages_SignatureInformation list -> unit [@@js.set "signatures"]
      (** The active signature. *)
      (** The active signature. *)
      val get_activeSignature: t -> float [@@js.get "activeSignature"]
      (** The active signature. *)
      val set_activeSignature: t -> float -> unit [@@js.set "activeSignature"]
      (** The active parameter of the active signature. *)
      (** The active parameter of the active signature. *)
      val get_activeParameter: t -> float [@@js.get "activeParameter"]
      (** The active parameter of the active signature. *)
      val set_activeParameter: t -> float -> unit [@@js.set "activeParameter"]
    end
    module[@js.scope "SignatureHelpResult"] SignatureHelpResult : sig
      type t = monaco_languages_SignatureHelpResult
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_value: t -> monaco_languages_SignatureHelp [@@js.get "value"]
      val set_value: t -> monaco_languages_SignatureHelp -> unit [@@js.set "value"]
      val cast: t -> monaco_IDisposable [@@js.cast]
    end
    module SignatureHelpTriggerKind : sig
      type t = monaco_languages_SignatureHelpTriggerKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "SignatureHelpContext"] SignatureHelpContext : sig
      type t = monaco_languages_SignatureHelpContext
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_triggerKind: t -> monaco_languages_SignatureHelpTriggerKind [@@js.get "triggerKind"]
      val get_triggerCharacter: t -> string [@@js.get "triggerCharacter"]
      val get_isRetrigger: t -> bool [@@js.get "isRetrigger"]
      val get_activeSignatureHelp: t -> monaco_languages_SignatureHelp [@@js.get "activeSignatureHelp"]
    end
    (**
      The signature help provider interface defines the contract between extensions and
      the \[parameter hints\](https://code.visualstudio.com/docs/editor/intellisense)-feature.
    *)
    module[@js.scope "SignatureHelpProvider"] SignatureHelpProvider : sig
      type t = monaco_languages_SignatureHelpProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_signatureHelpTriggerCharacters: t -> string list [@@js.get "signatureHelpTriggerCharacters"]
      val get_signatureHelpRetriggerCharacters: t -> string list [@@js.get "signatureHelpRetriggerCharacters"]
      (** Provide help for the signature at the given position and document. *)
      val provideSignatureHelp: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> context:monaco_languages_SignatureHelpContext -> monaco_languages_SignatureHelpResult monaco_languages_ProviderResult [@@js.call "provideSignatureHelp"]
    end
    (** A document highlight kind. *)
    module DocumentHighlightKind : sig
      type t = monaco_languages_DocumentHighlightKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      A document highlight is a range inside a text document which deserves
      special attention. Usually a document highlight is visualized by changing
      the background color of its range.
    *)
    module[@js.scope "DocumentHighlight"] DocumentHighlight : sig
      type t = monaco_languages_DocumentHighlight
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The range this highlight applies to. *)
      (** The range this highlight applies to. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** The range this highlight applies to. *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      (** The highlight kind, default is \[text\](#DocumentHighlightKind.Text). *)
      (** The highlight kind, default is \[text\](#DocumentHighlightKind.Text). *)
      val get_kind: t -> monaco_languages_DocumentHighlightKind [@@js.get "kind"]
      (** The highlight kind, default is \[text\](#DocumentHighlightKind.Text). *)
      val set_kind: t -> monaco_languages_DocumentHighlightKind -> unit [@@js.set "kind"]
    end
    (**
      The document highlight provider interface defines the contract between extensions and
      the word-highlight-feature.
    *)
    module[@js.scope "DocumentHighlightProvider"] DocumentHighlightProvider : sig
      type t = monaco_languages_DocumentHighlightProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        Provide a set of document highlights, like all occurrences of a variable or
        all exit-points of a function.
      *)
      val provideDocumentHighlights: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> monaco_languages_DocumentHighlight list monaco_languages_ProviderResult [@@js.call "provideDocumentHighlights"]
    end
    (**
      The linked editing range provider interface defines the contract between extensions and
      the linked editing feature.
    *)
    module[@js.scope "LinkedEditingRangeProvider"] LinkedEditingRangeProvider : sig
      type t = monaco_languages_LinkedEditingRangeProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide a list of ranges that can be edited together. *)
      val provideLinkedEditingRanges: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> monaco_languages_LinkedEditingRanges monaco_languages_ProviderResult [@@js.call "provideLinkedEditingRanges"]
    end
    (** Represents a list of ranges that can be edited together along with a word pattern to describe valid contents. *)
    module[@js.scope "LinkedEditingRanges"] LinkedEditingRanges : sig
      type t = monaco_languages_LinkedEditingRanges
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        A list of ranges that can be edited together. The ranges must have
        identical length and text content. The ranges cannot overlap
      *)
      (**
        A list of ranges that can be edited together. The ranges must have
        identical length and text content. The ranges cannot overlap
      *)
      val get_ranges: t -> monaco_IRange list [@@js.get "ranges"]
      (**
        A list of ranges that can be edited together. The ranges must have
        identical length and text content. The ranges cannot overlap
      *)
      val set_ranges: t -> monaco_IRange list -> unit [@@js.set "ranges"]
      (**
        An optional word pattern that describes valid contents for the given ranges.
        If no pattern is provided, the language configuration's word pattern will be used.
      *)
      (**
        An optional word pattern that describes valid contents for the given ranges.
        If no pattern is provided, the language configuration's word pattern will be used.
      *)
      val get_wordPattern: t -> regexp [@@js.get "wordPattern"]
      (**
        An optional word pattern that describes valid contents for the given ranges.
        If no pattern is provided, the language configuration's word pattern will be used.
      *)
      val set_wordPattern: t -> regexp -> unit [@@js.set "wordPattern"]
    end
    (**
      Value-object that contains additional information when
      requesting references.
    *)
    module[@js.scope "ReferenceContext"] ReferenceContext : sig
      type t = monaco_languages_ReferenceContext
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Include the declaration of the current symbol. *)
      (** Include the declaration of the current symbol. *)
      val get_includeDeclaration: t -> bool [@@js.get "includeDeclaration"]
      (** Include the declaration of the current symbol. *)
      val set_includeDeclaration: t -> bool -> unit [@@js.set "includeDeclaration"]
    end
    (**
      The reference provider interface defines the contract between extensions and
      the \[find references\](https://code.visualstudio.com/docs/editor/editingevolved#_peek)-feature.
    *)
    module[@js.scope "ReferenceProvider"] ReferenceProvider : sig
      type t = monaco_languages_ReferenceProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide a set of project-wide references for the given position and document. *)
      val provideReferences: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> context:monaco_languages_ReferenceContext -> token:monaco_CancellationToken -> monaco_languages_Location list monaco_languages_ProviderResult [@@js.call "provideReferences"]
    end
    (**
      Represents a location inside a resource, such as a line
      inside a text file.
    *)
    module[@js.scope "Location"] Location : sig
      type t = monaco_languages_Location
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The resource identifier of this location. *)
      (** The resource identifier of this location. *)
      val get_uri: t -> monaco_Uri [@@js.get "uri"]
      (** The resource identifier of this location. *)
      val set_uri: t -> monaco_Uri -> unit [@@js.set "uri"]
      (** The document range of this locations. *)
      (** The document range of this locations. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** The document range of this locations. *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
    end
    module[@js.scope "LocationLink"] LocationLink : sig
      type t = monaco_languages_LocationLink
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** A range to select where this link originates from. *)
      (** A range to select where this link originates from. *)
      val get_originSelectionRange: t -> monaco_IRange [@@js.get "originSelectionRange"]
      (** A range to select where this link originates from. *)
      val set_originSelectionRange: t -> monaco_IRange -> unit [@@js.set "originSelectionRange"]
      (** The target uri this link points to. *)
      (** The target uri this link points to. *)
      val get_uri: t -> monaco_Uri [@@js.get "uri"]
      (** The target uri this link points to. *)
      val set_uri: t -> monaco_Uri -> unit [@@js.set "uri"]
      (** The full range this link points to. *)
      (** The full range this link points to. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** The full range this link points to. *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      (**
        A range to select this link points to. Must be contained
        in `LocationLink.range`.
      *)
      (**
        A range to select this link points to. Must be contained
        in `LocationLink.range`.
      *)
      val get_targetSelectionRange: t -> monaco_IRange [@@js.get "targetSelectionRange"]
      (**
        A range to select this link points to. Must be contained
        in `LocationLink.range`.
      *)
      val set_targetSelectionRange: t -> monaco_IRange -> unit [@@js.set "targetSelectionRange"]
    end
    module Definition : sig
      type t = monaco_languages_Definition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      The definition provider interface defines the contract between extensions and
      the \[go to definition\](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-definition)
      and peek definition features.
    *)
    module[@js.scope "DefinitionProvider"] DefinitionProvider : sig
      type t = monaco_languages_DefinitionProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide the definition of the symbol at the given position and document. *)
      val provideDefinition: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Definition, monaco_languages_LocationLink) or_array monaco_languages_ProviderResult [@@js.call "provideDefinition"]
    end
    (**
      The definition provider interface defines the contract between extensions and
      the \[go to definition\](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-definition)
      and peek definition features.
    *)
    module[@js.scope "DeclarationProvider"] DeclarationProvider : sig
      type t = monaco_languages_DeclarationProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide the declaration of the symbol at the given position and document. *)
      val provideDeclaration: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Definition, monaco_languages_LocationLink) or_array monaco_languages_ProviderResult [@@js.call "provideDeclaration"]
    end
    (**
      The implementation provider interface defines the contract between extensions and
      the go to implementation feature.
    *)
    module[@js.scope "ImplementationProvider"] ImplementationProvider : sig
      type t = monaco_languages_ImplementationProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide the implementation of the symbol at the given position and document. *)
      val provideImplementation: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Definition, monaco_languages_LocationLink) or_array monaco_languages_ProviderResult [@@js.call "provideImplementation"]
    end
    (**
      The type definition provider interface defines the contract between extensions and
      the go to type definition feature.
    *)
    module[@js.scope "TypeDefinitionProvider"] TypeDefinitionProvider : sig
      type t = monaco_languages_TypeDefinitionProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide the type definition of the symbol at the given position and document. *)
      val provideTypeDefinition: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_Definition, monaco_languages_LocationLink) or_array monaco_languages_ProviderResult [@@js.call "provideTypeDefinition"]
    end
    (** A symbol kind. *)
    module SymbolKind : sig
      type t = monaco_languages_SymbolKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolTag : sig
      type t = monaco_languages_SymbolTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "DocumentSymbol"] DocumentSymbol : sig
      type t = monaco_languages_DocumentSymbol
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_detail: t -> string [@@js.get "detail"]
      val set_detail: t -> string -> unit [@@js.set "detail"]
      val get_kind: t -> monaco_languages_SymbolKind [@@js.get "kind"]
      val set_kind: t -> monaco_languages_SymbolKind -> unit [@@js.set "kind"]
      val get_tags: t -> monaco_languages_SymbolTag list [@@js.get "tags"]
      val set_tags: t -> monaco_languages_SymbolTag list -> unit [@@js.set "tags"]
      val get_containerName: t -> string [@@js.get "containerName"]
      val set_containerName: t -> string -> unit [@@js.set "containerName"]
      val get_range: t -> monaco_IRange [@@js.get "range"]
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      val get_selectionRange: t -> monaco_IRange [@@js.get "selectionRange"]
      val set_selectionRange: t -> monaco_IRange -> unit [@@js.set "selectionRange"]
      val get_children: t -> t list [@@js.get "children"]
      val set_children: t -> t list -> unit [@@js.set "children"]
    end
    (**
      The document symbol provider interface defines the contract between extensions and
      the \[go to symbol\](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-symbol)-feature.
    *)
    module[@js.scope "DocumentSymbolProvider"] DocumentSymbolProvider : sig
      type t = monaco_languages_DocumentSymbolProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_displayName: t -> string [@@js.get "displayName"]
      val set_displayName: t -> string -> unit [@@js.set "displayName"]
      (** Provide symbol information for the given document. *)
      val provideDocumentSymbols: t -> model:monaco_editor_ITextModel -> token:monaco_CancellationToken -> monaco_languages_DocumentSymbol list monaco_languages_ProviderResult [@@js.call "provideDocumentSymbols"]
    end
    module TextEdit : sig
      type t = monaco_languages_TextEdit
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** Interface used to format a model *)
    module[@js.scope "FormattingOptions"] FormattingOptions : sig
      type t = monaco_languages_FormattingOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Size of a tab in spaces. *)
      (** Size of a tab in spaces. *)
      val get_tabSize: t -> float [@@js.get "tabSize"]
      (** Size of a tab in spaces. *)
      val set_tabSize: t -> float -> unit [@@js.set "tabSize"]
      (** Prefer spaces over tabs. *)
      (** Prefer spaces over tabs. *)
      val get_insertSpaces: t -> bool [@@js.get "insertSpaces"]
      (** Prefer spaces over tabs. *)
      val set_insertSpaces: t -> bool -> unit [@@js.set "insertSpaces"]
    end
    (**
      The document formatting provider interface defines the contract between extensions and
      the formatting-feature.
    *)
    module[@js.scope "DocumentFormattingEditProvider"] DocumentFormattingEditProvider : sig
      type t = monaco_languages_DocumentFormattingEditProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_displayName: t -> string [@@js.get "displayName"]
      (** Provide formatting edits for a whole document. *)
      val provideDocumentFormattingEdits: t -> model:monaco_editor_ITextModel -> options:monaco_languages_FormattingOptions -> token:monaco_CancellationToken -> monaco_languages_TextEdit list monaco_languages_ProviderResult [@@js.call "provideDocumentFormattingEdits"]
    end
    (**
      The document formatting provider interface defines the contract between extensions and
      the formatting-feature.
    *)
    module[@js.scope "DocumentRangeFormattingEditProvider"] DocumentRangeFormattingEditProvider : sig
      type t = monaco_languages_DocumentRangeFormattingEditProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_displayName: t -> string [@@js.get "displayName"]
      (**
        Provide formatting edits for a range in a document.
        
        The given range is a hint and providers can decide to format a smaller
        or larger range. Often this is done by adjusting the start and end
        of the range to full syntax nodes.
      *)
      val provideDocumentRangeFormattingEdits: t -> model:monaco_editor_ITextModel -> range:monaco_Range -> options:monaco_languages_FormattingOptions -> token:monaco_CancellationToken -> monaco_languages_TextEdit list monaco_languages_ProviderResult [@@js.call "provideDocumentRangeFormattingEdits"]
    end
    (**
      The document formatting provider interface defines the contract between extensions and
      the formatting-feature.
    *)
    module[@js.scope "OnTypeFormattingEditProvider"] OnTypeFormattingEditProvider : sig
      type t = monaco_languages_OnTypeFormattingEditProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_autoFormatTriggerCharacters: t -> string list [@@js.get "autoFormatTriggerCharacters"]
      val set_autoFormatTriggerCharacters: t -> string list -> unit [@@js.set "autoFormatTriggerCharacters"]
      (**
        Provide formatting edits after a character has been typed.
        
        The given position and character should hint to the provider
        what range the position to expand to, like find the matching `\{`
        when `\}` has been entered.
      *)
      val provideOnTypeFormattingEdits: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> ch:string -> options:monaco_languages_FormattingOptions -> token:monaco_CancellationToken -> monaco_languages_TextEdit list monaco_languages_ProviderResult [@@js.call "provideOnTypeFormattingEdits"]
    end
    (** A link inside the editor. *)
    module[@js.scope "ILink"] ILink : sig
      type t = monaco_languages_ILink
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_range: t -> monaco_IRange [@@js.get "range"]
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      val get_url: t -> monaco_Uri or_string [@@js.get "url"]
      val set_url: t -> monaco_Uri or_string -> unit [@@js.set "url"]
      val get_tooltip: t -> string [@@js.get "tooltip"]
      val set_tooltip: t -> string -> unit [@@js.set "tooltip"]
    end
    module[@js.scope "ILinksList"] ILinksList : sig
      type t = monaco_languages_ILinksList
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_links: t -> monaco_languages_ILink list [@@js.get "links"]
      val set_links: t -> monaco_languages_ILink list -> unit [@@js.set "links"]
      val dispose: t -> unit [@@js.call "dispose"]
    end
    (** A provider of links. *)
    module[@js.scope "LinkProvider"] LinkProvider : sig
      type t = monaco_languages_LinkProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val provideLinks: t -> model:monaco_editor_ITextModel -> token:monaco_CancellationToken -> monaco_languages_ILinksList monaco_languages_ProviderResult [@@js.call "provideLinks"]
      val resolveLink: t -> link:monaco_languages_ILink -> token:monaco_CancellationToken -> monaco_languages_ILink monaco_languages_ProviderResult [@@js.call "resolveLink"]
    end
    (** A color in RGBA format. *)
    module[@js.scope "IColor"] IColor : sig
      type t = monaco_languages_IColor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The red component in the range \[0-1\]. *)
      val get_red: t -> float [@@js.get "red"]
      (** The green component in the range \[0-1\]. *)
      val get_green: t -> float [@@js.get "green"]
      (** The blue component in the range \[0-1\]. *)
      val get_blue: t -> float [@@js.get "blue"]
      (** The alpha component in the range \[0-1\]. *)
      val get_alpha: t -> float [@@js.get "alpha"]
    end
    (** String representations for a color *)
    module[@js.scope "IColorPresentation"] IColorPresentation : sig
      type t = monaco_languages_IColorPresentation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (**
        The label of this color presentation. It will be shown on the color
        picker header. By default this is also the text that is inserted when selecting
        this color presentation.
      *)
      (**
        The label of this color presentation. It will be shown on the color
        picker header. By default this is also the text that is inserted when selecting
        this color presentation.
      *)
      val get_label: t -> string [@@js.get "label"]
      (**
        The label of this color presentation. It will be shown on the color
        picker header. By default this is also the text that is inserted when selecting
        this color presentation.
      *)
      val set_label: t -> string -> unit [@@js.set "label"]
      (**
        An \[edit\](#TextEdit) which is applied to a document when selecting
        this presentation for the color.
      *)
      (**
        An \[edit\](#TextEdit) which is applied to a document when selecting
        this presentation for the color.
      *)
      val get_textEdit: t -> monaco_languages_TextEdit [@@js.get "textEdit"]
      (**
        An \[edit\](#TextEdit) which is applied to a document when selecting
        this presentation for the color.
      *)
      val set_textEdit: t -> monaco_languages_TextEdit -> unit [@@js.set "textEdit"]
      (**
        An optional array of additional \[text edits\](#TextEdit) that are applied when
        selecting this color presentation.
      *)
      (**
        An optional array of additional \[text edits\](#TextEdit) that are applied when
        selecting this color presentation.
      *)
      val get_additionalTextEdits: t -> monaco_languages_TextEdit list [@@js.get "additionalTextEdits"]
      (**
        An optional array of additional \[text edits\](#TextEdit) that are applied when
        selecting this color presentation.
      *)
      val set_additionalTextEdits: t -> monaco_languages_TextEdit list -> unit [@@js.set "additionalTextEdits"]
    end
    (** A color range is a range in a text model which represents a color. *)
    module[@js.scope "IColorInformation"] IColorInformation : sig
      type t = monaco_languages_IColorInformation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The range within the model. *)
      (** The range within the model. *)
      val get_range: t -> monaco_IRange [@@js.get "range"]
      (** The range within the model. *)
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      (** The color represented in this range. *)
      (** The color represented in this range. *)
      val get_color: t -> monaco_languages_IColor [@@js.get "color"]
      (** The color represented in this range. *)
      val set_color: t -> monaco_languages_IColor -> unit [@@js.set "color"]
    end
    (** A provider of colors for editor models. *)
    module[@js.scope "DocumentColorProvider"] DocumentColorProvider : sig
      type t = monaco_languages_DocumentColorProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provides the color ranges for a specific model. *)
      val provideDocumentColors: t -> model:monaco_editor_ITextModel -> token:monaco_CancellationToken -> monaco_languages_IColorInformation list monaco_languages_ProviderResult [@@js.call "provideDocumentColors"]
      (** Provide the string representations for a color. *)
      val provideColorPresentations: t -> model:monaco_editor_ITextModel -> colorInfo:monaco_languages_IColorInformation -> token:monaco_CancellationToken -> monaco_languages_IColorPresentation list monaco_languages_ProviderResult [@@js.call "provideColorPresentations"]
    end
    module[@js.scope "SelectionRange"] SelectionRange : sig
      type t = monaco_languages_SelectionRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_range: t -> monaco_IRange [@@js.get "range"]
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
    end
    module[@js.scope "SelectionRangeProvider"] SelectionRangeProvider : sig
      type t = monaco_languages_SelectionRangeProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** Provide ranges that should be selected from the given position. *)
      val provideSelectionRanges: t -> model:monaco_editor_ITextModel -> positions:monaco_Position list -> token:monaco_CancellationToken -> monaco_languages_SelectionRange list list monaco_languages_ProviderResult [@@js.call "provideSelectionRanges"]
    end
    module FoldingContext : sig
      type t = monaco_languages_FoldingContext
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** A provider of folding ranges for editor models. *)
    module[@js.scope "FoldingRangeProvider"] FoldingRangeProvider : sig
      type t = monaco_languages_FoldingRangeProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** An optional event to signal that the folding ranges from this provider have changed. *)
      (** An optional event to signal that the folding ranges from this provider have changed. *)
      val get_onDidChange: t -> t monaco_IEvent [@@js.get "onDidChange"]
      (** An optional event to signal that the folding ranges from this provider have changed. *)
      val set_onDidChange: t -> t monaco_IEvent -> unit [@@js.set "onDidChange"]
      (** Provides the folding ranges for a specific model. *)
      val provideFoldingRanges: t -> model:monaco_editor_ITextModel -> context:monaco_languages_FoldingContext -> token:monaco_CancellationToken -> monaco_languages_FoldingRange list monaco_languages_ProviderResult [@@js.call "provideFoldingRanges"]
    end
    module[@js.scope "FoldingRange"] FoldingRange : sig
      type t = monaco_languages_FoldingRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** The one-based start line of the range to fold. The folded area starts after the line's last character. *)
      (** The one-based start line of the range to fold. The folded area starts after the line's last character. *)
      val get_start: t -> float [@@js.get "start"]
      (** The one-based start line of the range to fold. The folded area starts after the line's last character. *)
      val set_start: t -> float -> unit [@@js.set "start"]
      (** The one-based end line of the range to fold. The folded area ends with the line's last character. *)
      (** The one-based end line of the range to fold. The folded area ends with the line's last character. *)
      val get_end: t -> float [@@js.get "end"]
      (** The one-based end line of the range to fold. The folded area ends with the line's last character. *)
      val set_end: t -> float -> unit [@@js.set "end"]
      (**
        Describes the \[Kind\](#FoldingRangeKind) of the folding range such as \[Comment\](#FoldingRangeKind.Comment) or
        \[Region\](#FoldingRangeKind.Region). The kind is used to categorize folding ranges and used by commands
        like 'Fold all comments'. See
        \[FoldingRangeKind\](#FoldingRangeKind) for an enumeration of standardized kinds.
      *)
      (**
        Describes the \[Kind\](#FoldingRangeKind) of the folding range such as \[Comment\](#FoldingRangeKind.Comment) or
        \[Region\](#FoldingRangeKind.Region). The kind is used to categorize folding ranges and used by commands
        like 'Fold all comments'. See
        \[FoldingRangeKind\](#FoldingRangeKind) for an enumeration of standardized kinds.
      *)
      val get_kind: t -> monaco_languages_FoldingRangeKind [@@js.get "kind"]
      (**
        Describes the \[Kind\](#FoldingRangeKind) of the folding range such as \[Comment\](#FoldingRangeKind.Comment) or
        \[Region\](#FoldingRangeKind.Region). The kind is used to categorize folding ranges and used by commands
        like 'Fold all comments'. See
        \[FoldingRangeKind\](#FoldingRangeKind) for an enumeration of standardized kinds.
      *)
      val set_kind: t -> monaco_languages_FoldingRangeKind -> unit [@@js.set "kind"]
    end
    module[@js.scope "FoldingRangeKind"] FoldingRangeKind : sig
      type t = monaco_languages_FoldingRangeKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_value: t -> string [@@js.get "value"]
      val set_value: t -> string -> unit [@@js.set "value"]
      (** Kind for folding range representing a comment. The value of the kind is 'comment'. *)
      val get_Comment: unit -> t [@@js.get "Comment"]
      (** Kind for folding range representing a import. The value of the kind is 'imports'. *)
      val get_Imports: unit -> t [@@js.get "Imports"]
      (**
        Kind for folding range representing regions (for example marked by `#region`, `#endregion`).
        The value of the kind is 'region'.
      *)
      val get_Region: unit -> t [@@js.get "Region"]
      (**
        Creates a new \[FoldingRangeKind\](#FoldingRangeKind).
        @param value of the kind.
      *)
      val create: value:string -> t [@@js.create]
    end
    module[@js.scope "WorkspaceEditMetadata"] WorkspaceEditMetadata : sig
      type t = monaco_languages_WorkspaceEditMetadata
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_needsConfirmation: t -> bool [@@js.get "needsConfirmation"]
      val set_needsConfirmation: t -> bool -> unit [@@js.set "needsConfirmation"]
      val get_label: t -> string [@@js.get "label"]
      val set_label: t -> string -> unit [@@js.set "label"]
      val get_description: t -> string [@@js.get "description"]
      val set_description: t -> string -> unit [@@js.set "description"]
    end
    module[@js.scope "WorkspaceFileEditOptions"] WorkspaceFileEditOptions : sig
      type t = monaco_languages_WorkspaceFileEditOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_overwrite: t -> bool [@@js.get "overwrite"]
      val set_overwrite: t -> bool -> unit [@@js.set "overwrite"]
      val get_ignoreIfNotExists: t -> bool [@@js.get "ignoreIfNotExists"]
      val set_ignoreIfNotExists: t -> bool -> unit [@@js.set "ignoreIfNotExists"]
      val get_ignoreIfExists: t -> bool [@@js.get "ignoreIfExists"]
      val set_ignoreIfExists: t -> bool -> unit [@@js.set "ignoreIfExists"]
      val get_recursive: t -> bool [@@js.get "recursive"]
      val set_recursive: t -> bool -> unit [@@js.set "recursive"]
      val get_copy: t -> bool [@@js.get "copy"]
      val set_copy: t -> bool -> unit [@@js.set "copy"]
      val get_folder: t -> bool [@@js.get "folder"]
      val set_folder: t -> bool -> unit [@@js.set "folder"]
      val get_skipTrashBin: t -> bool [@@js.get "skipTrashBin"]
      val set_skipTrashBin: t -> bool -> unit [@@js.set "skipTrashBin"]
      val get_maxSize: t -> float [@@js.get "maxSize"]
      val set_maxSize: t -> float -> unit [@@js.set "maxSize"]
    end
    module[@js.scope "WorkspaceFileEdit"] WorkspaceFileEdit : sig
      type t = monaco_languages_WorkspaceFileEdit
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_oldUri: t -> monaco_Uri [@@js.get "oldUri"]
      val set_oldUri: t -> monaco_Uri -> unit [@@js.set "oldUri"]
      val get_newUri: t -> monaco_Uri [@@js.get "newUri"]
      val set_newUri: t -> monaco_Uri -> unit [@@js.set "newUri"]
      val get_options: t -> monaco_languages_WorkspaceFileEditOptions [@@js.get "options"]
      val set_options: t -> monaco_languages_WorkspaceFileEditOptions -> unit [@@js.set "options"]
      val get_metadata: t -> monaco_languages_WorkspaceEditMetadata [@@js.get "metadata"]
      val set_metadata: t -> monaco_languages_WorkspaceEditMetadata -> unit [@@js.set "metadata"]
    end
    module[@js.scope "WorkspaceTextEdit"] WorkspaceTextEdit : sig
      type t = monaco_languages_WorkspaceTextEdit
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resource: t -> monaco_Uri [@@js.get "resource"]
      val set_resource: t -> monaco_Uri -> unit [@@js.set "resource"]
      val get_edit: t -> monaco_languages_TextEdit [@@js.get "edit"]
      val set_edit: t -> monaco_languages_TextEdit -> unit [@@js.set "edit"]
      val get_modelVersionId: t -> float [@@js.get "modelVersionId"]
      val set_modelVersionId: t -> float -> unit [@@js.set "modelVersionId"]
      val get_metadata: t -> monaco_languages_WorkspaceEditMetadata [@@js.get "metadata"]
      val set_metadata: t -> monaco_languages_WorkspaceEditMetadata -> unit [@@js.set "metadata"]
    end
    module[@js.scope "WorkspaceEdit"] WorkspaceEdit : sig
      type t = monaco_languages_WorkspaceEdit
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_edits: t -> (monaco_languages_WorkspaceFileEdit, monaco_languages_WorkspaceTextEdit) union2 list [@@js.get "edits"]
      val set_edits: t -> (monaco_languages_WorkspaceFileEdit, monaco_languages_WorkspaceTextEdit) union2 list -> unit [@@js.set "edits"]
    end
    module[@js.scope "Rejection"] Rejection : sig
      type t = monaco_languages_Rejection
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_rejectReason: t -> string [@@js.get "rejectReason"]
      val set_rejectReason: t -> string -> unit [@@js.set "rejectReason"]
    end
    module[@js.scope "RenameLocation"] RenameLocation : sig
      type t = monaco_languages_RenameLocation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_range: t -> monaco_IRange [@@js.get "range"]
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
    end
    module[@js.scope "RenameProvider"] RenameProvider : sig
      type t = monaco_languages_RenameProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val provideRenameEdits: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> newName:string -> token:monaco_CancellationToken -> (monaco_languages_WorkspaceEdit, monaco_languages_Rejection) intersection2 monaco_languages_ProviderResult [@@js.call "provideRenameEdits"]
      val resolveRenameLocation: t -> model:monaco_editor_ITextModel -> position:monaco_Position -> token:monaco_CancellationToken -> (monaco_languages_RenameLocation, monaco_languages_Rejection) intersection2 monaco_languages_ProviderResult [@@js.call "resolveRenameLocation"]
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
    module[@js.scope "CodeLens"] CodeLens : sig
      type t = monaco_languages_CodeLens
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
    module[@js.scope "CodeLensList"] CodeLensList : sig
      type t = monaco_languages_CodeLensList
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_lenses: t -> monaco_languages_CodeLens list [@@js.get "lenses"]
      val set_lenses: t -> monaco_languages_CodeLens list -> unit [@@js.set "lenses"]
      val dispose: t -> unit [@@js.call "dispose"]
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
      val provideCodeLenses: t -> model:monaco_editor_ITextModel -> token:monaco_CancellationToken -> monaco_languages_CodeLensList monaco_languages_ProviderResult [@@js.call "provideCodeLenses"]
      val resolveCodeLens: t -> model:monaco_editor_ITextModel -> codeLens:monaco_languages_CodeLens -> token:monaco_CancellationToken -> monaco_languages_CodeLens monaco_languages_ProviderResult [@@js.call "resolveCodeLens"]
    end
    module InlineHintKind : sig
      type t = monaco_languages_InlineHintKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "InlineHint"] InlineHint : sig
      type t = monaco_languages_InlineHint
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_range: t -> monaco_IRange [@@js.get "range"]
      val set_range: t -> monaco_IRange -> unit [@@js.set "range"]
      val get_kind: t -> monaco_languages_InlineHintKind [@@js.get "kind"]
      val set_kind: t -> monaco_languages_InlineHintKind -> unit [@@js.set "kind"]
      val get_description: t -> monaco_IMarkdownString or_string [@@js.get "description"]
      val set_description: t -> monaco_IMarkdownString or_string -> unit [@@js.set "description"]
      val get_whitespaceBefore: t -> bool [@@js.get "whitespaceBefore"]
      val set_whitespaceBefore: t -> bool -> unit [@@js.set "whitespaceBefore"]
      val get_whitespaceAfter: t -> bool [@@js.get "whitespaceAfter"]
      val set_whitespaceAfter: t -> bool -> unit [@@js.set "whitespaceAfter"]
    end
    module[@js.scope "InlineHintsProvider"] InlineHintsProvider : sig
      type t = monaco_languages_InlineHintsProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_onDidChangeInlineHints: t -> unit monaco_IEvent or_undefined [@@js.get "onDidChangeInlineHints"]
      val set_onDidChangeInlineHints: t -> unit monaco_IEvent or_undefined -> unit [@@js.set "onDidChangeInlineHints"]
      val provideInlineHints: t -> model:monaco_editor_ITextModel -> range:monaco_Range -> token:monaco_CancellationToken -> monaco_languages_InlineHint list monaco_languages_ProviderResult [@@js.call "provideInlineHints"]
    end
    module[@js.scope "SemanticTokensLegend"] SemanticTokensLegend : sig
      type t = monaco_languages_SemanticTokensLegend
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_tokenTypes: t -> string list [@@js.get "tokenTypes"]
      val get_tokenModifiers: t -> string list [@@js.get "tokenModifiers"]
    end
    module[@js.scope "SemanticTokens"] SemanticTokens : sig
      type t = monaco_languages_SemanticTokens
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resultId: t -> string [@@js.get "resultId"]
      val get_data: t -> Uint32Array.t_0 [@@js.get "data"]
    end
    module[@js.scope "SemanticTokensEdit"] SemanticTokensEdit : sig
      type t = monaco_languages_SemanticTokensEdit
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_start: t -> float [@@js.get "start"]
      val get_deleteCount: t -> float [@@js.get "deleteCount"]
      val get_data: t -> Uint32Array.t_0 [@@js.get "data"]
    end
    module[@js.scope "SemanticTokensEdits"] SemanticTokensEdits : sig
      type t = monaco_languages_SemanticTokensEdits
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resultId: t -> string [@@js.get "resultId"]
      val get_edits: t -> monaco_languages_SemanticTokensEdit list [@@js.get "edits"]
    end
    module[@js.scope "DocumentSemanticTokensProvider"] DocumentSemanticTokensProvider : sig
      type t = monaco_languages_DocumentSemanticTokensProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_onDidChange: t -> unit monaco_IEvent [@@js.get "onDidChange"]
      val set_onDidChange: t -> unit monaco_IEvent -> unit [@@js.set "onDidChange"]
      val getLegend: t -> monaco_languages_SemanticTokensLegend [@@js.call "getLegend"]
      val provideDocumentSemanticTokens: t -> model:monaco_editor_ITextModel -> lastResultId:string or_null -> token:monaco_CancellationToken -> (monaco_languages_SemanticTokens, monaco_languages_SemanticTokensEdits) union2 monaco_languages_ProviderResult [@@js.call "provideDocumentSemanticTokens"]
      val releaseDocumentSemanticTokens: t -> resultId:string or_undefined -> unit [@@js.call "releaseDocumentSemanticTokens"]
    end
    module[@js.scope "DocumentRangeSemanticTokensProvider"] DocumentRangeSemanticTokensProvider : sig
      type t = monaco_languages_DocumentRangeSemanticTokensProvider
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getLegend: t -> monaco_languages_SemanticTokensLegend [@@js.call "getLegend"]
      val provideDocumentRangeSemanticTokens: t -> model:monaco_editor_ITextModel -> range:monaco_Range -> token:monaco_CancellationToken -> monaco_languages_SemanticTokens monaco_languages_ProviderResult [@@js.call "provideDocumentRangeSemanticTokens"]
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
      val get_configuration: t -> monaco_Uri [@@js.get "configuration"]
      val set_configuration: t -> monaco_Uri -> unit [@@js.set "configuration"]
    end
    (** A Monarch language definition *)
    module[@js.scope "IMonarchLanguage"] IMonarchLanguage : sig
      type t = monaco_languages_IMonarchLanguage
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** map from string to ILanguageRule\[\] *)
      (** map from string to ILanguageRule\[\] *)
      val get_tokenizer: t -> anonymous_interface_19 [@@js.get "tokenizer"]
      (** map from string to ILanguageRule\[\] *)
      val set_tokenizer: t -> anonymous_interface_19 -> unit [@@js.set "tokenizer"]
      (** is the language case insensitive? *)
      (** is the language case insensitive? *)
      val get_ignoreCase: t -> bool [@@js.get "ignoreCase"]
      (** is the language case insensitive? *)
      val set_ignoreCase: t -> bool -> unit [@@js.set "ignoreCase"]
      (** is the language unicode-aware? (i.e., /\u\{1D306\}/) *)
      (** is the language unicode-aware? (i.e., /\u\{1D306\}/) *)
      val get_unicode: t -> bool [@@js.get "unicode"]
      (** is the language unicode-aware? (i.e., /\u\{1D306\}/) *)
      val set_unicode: t -> bool -> unit [@@js.set "unicode"]
      (** if no match in the tokenizer assign this token class (default 'source') *)
      (** if no match in the tokenizer assign this token class (default 'source') *)
      val get_defaultToken: t -> string [@@js.get "defaultToken"]
      (** if no match in the tokenizer assign this token class (default 'source') *)
      val set_defaultToken: t -> string -> unit [@@js.set "defaultToken"]
      (** for example \[\['\{','\}','delimiter.curly'\]\] *)
      (** for example \[\['\{','\}','delimiter.curly'\]\] *)
      val get_brackets: t -> monaco_languages_IMonarchLanguageBracket list [@@js.get "brackets"]
      (** for example \[\['\{','\}','delimiter.curly'\]\] *)
      val set_brackets: t -> monaco_languages_IMonarchLanguageBracket list -> unit [@@js.set "brackets"]
      (** start symbol in the tokenizer (by default the first entry is used) *)
      (** start symbol in the tokenizer (by default the first entry is used) *)
      val get_start: t -> string [@@js.get "start"]
      (** start symbol in the tokenizer (by default the first entry is used) *)
      val set_start: t -> string -> unit [@@js.set "start"]
      (** attach this to every token class (by default '.' + name) *)
      (** attach this to every token class (by default '.' + name) *)
      val get_tokenPostfix: t -> string [@@js.get "tokenPostfix"]
      (** attach this to every token class (by default '.' + name) *)
      val set_tokenPostfix: t -> string -> unit [@@js.set "tokenPostfix"]
      (**
        include line feeds (in the form of a \n character) at the end of lines
        Defaults to false
      *)
      (**
        include line feeds (in the form of a \n character) at the end of lines
        Defaults to false
      *)
      val get_includeLF: t -> bool [@@js.get "includeLF"]
      (**
        include line feeds (in the form of a \n character) at the end of lines
        Defaults to false
      *)
      val set_includeLF: t -> bool -> unit [@@js.set "includeLF"]
      (** Other keys that can be referred to by the tokenizer. *)
      (** Other keys that can be referred to by the tokenizer. *)
      val get: t -> string -> any [@@js.index_get]
      (** Other keys that can be referred to by the tokenizer. *)
      val set: t -> string -> any -> unit [@@js.index_set]
    end
    (**
      A rule is either a regular expression and an action
      		shorthands: \[reg,act\] == \{ regex: reg, action: act\}
      	and       : \[reg,act,nxt\] == \{ regex: reg, action: act\{ next: nxt \}\}
    *)
    module IShortMonarchLanguageRule1 : sig
      type t = monaco_languages_IShortMonarchLanguageRule1
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module IShortMonarchLanguageRule2 : sig
      type t = monaco_languages_IShortMonarchLanguageRule2
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IExpandedMonarchLanguageRule"] IExpandedMonarchLanguageRule : sig
      type t = monaco_languages_IExpandedMonarchLanguageRule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** match tokens *)
      (** match tokens *)
      val get_regex: t -> regexp or_string [@@js.get "regex"]
      (** match tokens *)
      val set_regex: t -> regexp or_string -> unit [@@js.set "regex"]
      (** action to take on match *)
      (** action to take on match *)
      val get_action: t -> monaco_languages_IMonarchLanguageAction [@@js.get "action"]
      (** action to take on match *)
      val set_action: t -> monaco_languages_IMonarchLanguageAction -> unit [@@js.set "action"]
      (** or an include rule. include all rules from the included state *)
      (** or an include rule. include all rules from the included state *)
      val get_include: t -> string [@@js.get "include"]
      (** or an include rule. include all rules from the included state *)
      val set_include: t -> string -> unit [@@js.set "include"]
    end
    module IMonarchLanguageRule : sig
      type t = monaco_languages_IMonarchLanguageRule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (**
      An action is either an array of actions...
      ... or a case statement with guards...
      ... or a basic action with a token value.
    *)
    module IShortMonarchLanguageAction : sig
      type t = monaco_languages_IShortMonarchLanguageAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IExpandedMonarchLanguageAction"] IExpandedMonarchLanguageAction : sig
      type t = monaco_languages_IExpandedMonarchLanguageAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** array of actions for each parenthesized match group *)
      (** array of actions for each parenthesized match group *)
      val get_group: t -> monaco_languages_IMonarchLanguageAction list [@@js.get "group"]
      (** array of actions for each parenthesized match group *)
      val set_group: t -> monaco_languages_IMonarchLanguageAction list -> unit [@@js.set "group"]
      (** map from string to ILanguageAction *)
      (** map from string to ILanguageAction *)
      val get_cases: t -> untyped_object [@@js.get "cases"]
      (** map from string to ILanguageAction *)
      val set_cases: t -> untyped_object -> unit [@@js.set "cases"]
      (** token class (ie. css class) (or "\@brackets" or "\@rematch") *)
      (** token class (ie. css class) (or "\@brackets" or "\@rematch") *)
      val get_token: t -> string [@@js.get "token"]
      (** token class (ie. css class) (or "\@brackets" or "\@rematch") *)
      val set_token: t -> string -> unit [@@js.set "token"]
      (** the next state to push, or "\@push", "\@pop", "\@popall" *)
      (** the next state to push, or "\@push", "\@pop", "\@popall" *)
      val get_next: t -> string [@@js.get "next"]
      (** the next state to push, or "\@push", "\@pop", "\@popall" *)
      val set_next: t -> string -> unit [@@js.set "next"]
      (** switch to this state *)
      (** switch to this state *)
      val get_switchTo: t -> string [@@js.get "switchTo"]
      (** switch to this state *)
      val set_switchTo: t -> string -> unit [@@js.set "switchTo"]
      (** go back n characters in the stream *)
      (** go back n characters in the stream *)
      val get_goBack: t -> float [@@js.get "goBack"]
      (** go back n characters in the stream *)
      val set_goBack: t -> float -> unit [@@js.set "goBack"]
      (**
        open: or
        close: 
      *)
      (**
        open: or
        close: 
      *)
      val get_bracket: t -> string [@@js.get "bracket"]
      (**
        open: or
        close: 
      *)
      val set_bracket: t -> string -> unit [@@js.set "bracket"]
      (** switch to embedded language (using the mimetype) or get out using "\@pop" *)
      (** switch to embedded language (using the mimetype) or get out using "\@pop" *)
      val get_nextEmbedded: t -> string [@@js.get "nextEmbedded"]
      (** switch to embedded language (using the mimetype) or get out using "\@pop" *)
      val set_nextEmbedded: t -> string -> unit [@@js.set "nextEmbedded"]
      (** log a message to the browser console window *)
      (** log a message to the browser console window *)
      val get_log: t -> string [@@js.get "log"]
      (** log a message to the browser console window *)
      val set_log: t -> string -> unit [@@js.set "log"]
    end
    module IMonarchLanguageAction : sig
      type t = monaco_languages_IMonarchLanguageAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    (** This interface can be shortened as an array, ie. \['\{','\}','delimiter.curly'\] *)
    module[@js.scope "IMonarchLanguageBracket"] IMonarchLanguageBracket : sig
      type t = monaco_languages_IMonarchLanguageBracket
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** open bracket *)
      (** open bracket *)
      val get_open: t -> string [@@js.get "open"]
      (** open bracket *)
      val set_open: t -> string -> unit [@@js.set "open"]
      (** closing bracket *)
      (** closing bracket *)
      val get_close: t -> string [@@js.get "close"]
      (** closing bracket *)
      val set_close: t -> string -> unit [@@js.set "close"]
      (** token class *)
      (** token class *)
      val get_token: t -> string [@@js.get "token"]
      (** token class *)
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
      module[@js.scope "MapLike"] MapLike : sig
        type 'T t = 'T monaco_languages_typescript_MapLike
        val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
        val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
        type 'T t_1 = 'T t
        val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
        val get: 'T t -> string -> 'T [@@js.index_get]
        val set: 'T t -> string -> 'T -> unit [@@js.index_set]
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
        val get_allowUmdGlobalAccess: t -> bool [@@js.get "allowUmdGlobalAccess"]
        val set_allowUmdGlobalAccess: t -> bool -> unit [@@js.set "allowUmdGlobalAccess"]
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
        val get_checkJs: t -> bool [@@js.get "checkJs"]
        val set_checkJs: t -> bool -> unit [@@js.set "checkJs"]
        val get_declaration: t -> bool [@@js.get "declaration"]
        val set_declaration: t -> bool -> unit [@@js.set "declaration"]
        val get_declarationMap: t -> bool [@@js.get "declarationMap"]
        val set_declarationMap: t -> bool -> unit [@@js.set "declarationMap"]
        val get_emitDeclarationOnly: t -> bool [@@js.get "emitDeclarationOnly"]
        val set_emitDeclarationOnly: t -> bool -> unit [@@js.set "emitDeclarationOnly"]
        val get_declarationDir: t -> string [@@js.get "declarationDir"]
        val set_declarationDir: t -> string -> unit [@@js.set "declarationDir"]
        val get_disableSizeLimit: t -> bool [@@js.get "disableSizeLimit"]
        val set_disableSizeLimit: t -> bool -> unit [@@js.set "disableSizeLimit"]
        val get_disableSourceOfProjectReferenceRedirect: t -> bool [@@js.get "disableSourceOfProjectReferenceRedirect"]
        val set_disableSourceOfProjectReferenceRedirect: t -> bool -> unit [@@js.set "disableSourceOfProjectReferenceRedirect"]
        val get_downlevelIteration: t -> bool [@@js.get "downlevelIteration"]
        val set_downlevelIteration: t -> bool -> unit [@@js.set "downlevelIteration"]
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
        val get_keyofStringsOnly: t -> bool [@@js.get "keyofStringsOnly"]
        val set_keyofStringsOnly: t -> bool -> unit [@@js.set "keyofStringsOnly"]
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
        val get_noStrictGenericChecks: t -> bool [@@js.get "noStrictGenericChecks"]
        val set_noStrictGenericChecks: t -> bool -> unit [@@js.set "noStrictGenericChecks"]
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
        val get_paths: t -> string list monaco_languages_typescript_MapLike [@@js.get "paths"]
        val set_paths: t -> string list monaco_languages_typescript_MapLike -> unit [@@js.set "paths"]
        val get_preserveConstEnums: t -> bool [@@js.get "preserveConstEnums"]
        val set_preserveConstEnums: t -> bool -> unit [@@js.set "preserveConstEnums"]
        val get_preserveSymlinks: t -> bool [@@js.get "preserveSymlinks"]
        val set_preserveSymlinks: t -> bool -> unit [@@js.set "preserveSymlinks"]
        val get_project: t -> string [@@js.get "project"]
        val set_project: t -> string -> unit [@@js.set "project"]
        val get_reactNamespace: t -> string [@@js.get "reactNamespace"]
        val set_reactNamespace: t -> string -> unit [@@js.set "reactNamespace"]
        val get_jsxFactory: t -> string [@@js.get "jsxFactory"]
        val set_jsxFactory: t -> string -> unit [@@js.set "jsxFactory"]
        val get_composite: t -> bool [@@js.get "composite"]
        val set_composite: t -> bool -> unit [@@js.set "composite"]
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
        val get_strict: t -> bool [@@js.get "strict"]
        val set_strict: t -> bool -> unit [@@js.set "strict"]
        val get_strictFunctionTypes: t -> bool [@@js.get "strictFunctionTypes"]
        val set_strictFunctionTypes: t -> bool -> unit [@@js.set "strictFunctionTypes"]
        val get_strictBindCallApply: t -> bool [@@js.get "strictBindCallApply"]
        val set_strictBindCallApply: t -> bool -> unit [@@js.set "strictBindCallApply"]
        val get_strictNullChecks: t -> bool [@@js.get "strictNullChecks"]
        val set_strictNullChecks: t -> bool -> unit [@@js.set "strictNullChecks"]
        val get_strictPropertyInitialization: t -> bool [@@js.get "strictPropertyInitialization"]
        val set_strictPropertyInitialization: t -> bool -> unit [@@js.set "strictPropertyInitialization"]
        val get_stripInternal: t -> bool [@@js.get "stripInternal"]
        val set_stripInternal: t -> bool -> unit [@@js.set "stripInternal"]
        val get_suppressExcessPropertyErrors: t -> bool [@@js.get "suppressExcessPropertyErrors"]
        val set_suppressExcessPropertyErrors: t -> bool -> unit [@@js.set "suppressExcessPropertyErrors"]
        val get_suppressImplicitAnyIndexErrors: t -> bool [@@js.get "suppressImplicitAnyIndexErrors"]
        val set_suppressImplicitAnyIndexErrors: t -> bool -> unit [@@js.set "suppressImplicitAnyIndexErrors"]
        val get_target: t -> monaco_languages_typescript_ScriptTarget [@@js.get "target"]
        val set_target: t -> monaco_languages_typescript_ScriptTarget -> unit [@@js.set "target"]
        val get_traceResolution: t -> bool [@@js.get "traceResolution"]
        val set_traceResolution: t -> bool -> unit [@@js.set "traceResolution"]
        val get_resolveJsonModule: t -> bool [@@js.get "resolveJsonModule"]
        val set_resolveJsonModule: t -> bool -> unit [@@js.set "resolveJsonModule"]
        val get_types: t -> string list [@@js.get "types"]
        val set_types: t -> string list -> unit [@@js.set "types"]
        (** Paths used to compute primary types search locations *)
        (** Paths used to compute primary types search locations *)
        val get_typeRoots: t -> string list [@@js.get "typeRoots"]
        (** Paths used to compute primary types search locations *)
        val set_typeRoots: t -> string list -> unit [@@js.set "typeRoots"]
        val get_esModuleInterop: t -> bool [@@js.get "esModuleInterop"]
        val set_esModuleInterop: t -> bool -> unit [@@js.set "esModuleInterop"]
        val get_useDefineForClassFields: t -> bool [@@js.get "useDefineForClassFields"]
        val set_useDefineForClassFields: t -> bool -> unit [@@js.set "useDefineForClassFields"]
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
        val get_noSuggestionDiagnostics: t -> bool [@@js.get "noSuggestionDiagnostics"]
        val set_noSuggestionDiagnostics: t -> bool -> unit [@@js.set "noSuggestionDiagnostics"]
        (**
          Limit diagnostic computation to only visible files.
          Defaults to false.
        *)
        (**
          Limit diagnostic computation to only visible files.
          Defaults to false.
        *)
        val get_onlyVisible: t -> bool [@@js.get "onlyVisible"]
        (**
          Limit diagnostic computation to only visible files.
          Defaults to false.
        *)
        val set_onlyVisible: t -> bool -> unit [@@js.set "onlyVisible"]
        val get_diagnosticCodesToIgnore: t -> float list [@@js.get "diagnosticCodesToIgnore"]
        val set_diagnosticCodesToIgnore: t -> float list -> unit [@@js.set "diagnosticCodesToIgnore"]
      end
      module[@js.scope "WorkerOptions"] WorkerOptions : sig
        type t = monaco_languages_typescript_WorkerOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** A full HTTP path to a JavaScript file which adds a function `customTSWorkerFactory` to the self inside a web-worker *)
        (** A full HTTP path to a JavaScript file which adds a function `customTSWorkerFactory` to the self inside a web-worker *)
        val get_customWorkerPath: t -> string [@@js.get "customWorkerPath"]
        (** A full HTTP path to a JavaScript file which adds a function `customTSWorkerFactory` to the self inside a web-worker *)
        val set_customWorkerPath: t -> string -> unit [@@js.set "customWorkerPath"]
      end
      module[@js.scope "IExtraLib"] IExtraLib : sig
        type t = monaco_languages_typescript_IExtraLib
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_content: t -> string [@@js.get "content"]
        val set_content: t -> string -> unit [@@js.set "content"]
        val get_version: t -> float [@@js.get "version"]
        val set_version: t -> float -> unit [@@js.set "version"]
      end
      module[@js.scope "IExtraLibs"] IExtraLibs : sig
        type t = monaco_languages_typescript_IExtraLibs
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get: t -> string -> monaco_languages_typescript_IExtraLib [@@js.index_get]
        val set: t -> string -> monaco_languages_typescript_IExtraLib -> unit [@@js.index_set]
      end
      (**
        A linked list of formatted diagnostic messages to be used as part of a multiline message.
        It is built from the bottom up, leaving the head to be the "main" diagnostic.
      *)
      module[@js.scope "DiagnosticMessageChain"] DiagnosticMessageChain : sig
        type t = monaco_languages_typescript_DiagnosticMessageChain
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_messageText: t -> string [@@js.get "messageText"]
        val set_messageText: t -> string -> unit [@@js.set "messageText"]
        (** Diagnostic category: warning = 0, error = 1, suggestion = 2, message = 3 *)
        (** Diagnostic category: warning = 0, error = 1, suggestion = 2, message = 3 *)
        val get_category: t -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3]] [@js.enum]) [@@js.get "category"]
        (** Diagnostic category: warning = 0, error = 1, suggestion = 2, message = 3 *)
        val set_category: t -> ([`L_n_0 | `L_n_1 | `L_n_2 | `L_n_3] [@js.enum]) -> unit [@@js.set "category"]
        val get_code: t -> float [@@js.get "code"]
        val set_code: t -> float -> unit [@@js.set "code"]
        val get_next: t -> t list [@@js.get "next"]
        val set_next: t -> t list -> unit [@@js.set "next"]
      end
      module[@js.scope "Diagnostic"] Diagnostic : sig
        type t = monaco_languages_typescript_Diagnostic
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** May store more in future. For now, this will simply be `true` to indicate when a diagnostic is an unused-identifier diagnostic. *)
        (** May store more in future. For now, this will simply be `true` to indicate when a diagnostic is an unused-identifier diagnostic. *)
        val get_reportsUnnecessary: t -> anonymous_interface_0 [@@js.get "reportsUnnecessary"]
        (** May store more in future. For now, this will simply be `true` to indicate when a diagnostic is an unused-identifier diagnostic. *)
        val set_reportsUnnecessary: t -> anonymous_interface_0 -> unit [@@js.set "reportsUnnecessary"]
        val get_reportsDeprecated: t -> anonymous_interface_0 [@@js.get "reportsDeprecated"]
        val set_reportsDeprecated: t -> anonymous_interface_0 -> unit [@@js.set "reportsDeprecated"]
        val get_source: t -> string [@@js.get "source"]
        val set_source: t -> string -> unit [@@js.set "source"]
        val get_relatedInformation: t -> monaco_languages_typescript_DiagnosticRelatedInformation list [@@js.get "relatedInformation"]
        val set_relatedInformation: t -> monaco_languages_typescript_DiagnosticRelatedInformation list -> unit [@@js.set "relatedInformation"]
        val cast: t -> monaco_languages_typescript_DiagnosticRelatedInformation [@@js.cast]
      end
      module[@js.scope "DiagnosticRelatedInformation"] DiagnosticRelatedInformation : sig
        type t = monaco_languages_typescript_DiagnosticRelatedInformation
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** Diagnostic category: warning = 0, error = 1, suggestion = 2, message = 3 *)
        (** Diagnostic category: warning = 0, error = 1, suggestion = 2, message = 3 *)
        val get_category: t -> ([`L_n_0[@js 0] | `L_n_1[@js 1] | `L_n_2[@js 2] | `L_n_3[@js 3]] [@js.enum]) [@@js.get "category"]
        (** Diagnostic category: warning = 0, error = 1, suggestion = 2, message = 3 *)
        val set_category: t -> ([`L_n_0 | `L_n_1 | `L_n_2 | `L_n_3] [@js.enum]) -> unit [@@js.set "category"]
        val get_code: t -> float [@@js.get "code"]
        val set_code: t -> float -> unit [@@js.set "code"]
        (** TypeScriptWorker removes all but the `fileName` property to avoid serializing circular JSON structures. *)
        (** TypeScriptWorker removes all but the `fileName` property to avoid serializing circular JSON structures. *)
        val get_file: t -> anonymous_interface_6 or_undefined [@@js.get "file"]
        (** TypeScriptWorker removes all but the `fileName` property to avoid serializing circular JSON structures. *)
        val set_file: t -> anonymous_interface_6 or_undefined -> unit [@@js.set "file"]
        val get_start: t -> float or_undefined [@@js.get "start"]
        val set_start: t -> float or_undefined -> unit [@@js.set "start"]
        val get_length: t -> float or_undefined [@@js.get "length"]
        val set_length: t -> float or_undefined -> unit [@@js.set "length"]
        val get_messageText: t -> monaco_languages_typescript_DiagnosticMessageChain or_string [@@js.get "messageText"]
        val set_messageText: t -> monaco_languages_typescript_DiagnosticMessageChain or_string -> unit [@@js.set "messageText"]
      end
      module[@js.scope "EmitOutput"] EmitOutput : sig
        type t = monaco_languages_typescript_EmitOutput
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_outputFiles: t -> monaco_languages_typescript_OutputFile list [@@js.get "outputFiles"]
        val set_outputFiles: t -> monaco_languages_typescript_OutputFile list -> unit [@@js.set "outputFiles"]
        val get_emitSkipped: t -> bool [@@js.get "emitSkipped"]
        val set_emitSkipped: t -> bool -> unit [@@js.set "emitSkipped"]
      end
      module[@js.scope "OutputFile"] OutputFile : sig
        type t = monaco_languages_typescript_OutputFile
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_name: t -> string [@@js.get "name"]
        val set_name: t -> string -> unit [@@js.set "name"]
        val get_writeByteOrderMark: t -> bool [@@js.get "writeByteOrderMark"]
        val set_writeByteOrderMark: t -> bool -> unit [@@js.set "writeByteOrderMark"]
        val get_text: t -> string [@@js.get "text"]
        val set_text: t -> string -> unit [@@js.set "text"]
      end
      module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
        type t = monaco_languages_typescript_LanguageServiceDefaults
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** Event fired when compiler options or diagnostics options are changed. *)
        val get_onDidChange: t -> unit monaco_IEvent [@@js.get "onDidChange"]
        (** Event fired when extra libraries registered with the language service change. *)
        val get_onDidExtraLibsChange: t -> unit monaco_IEvent [@@js.get "onDidExtraLibsChange"]
        val get_workerOptions: t -> monaco_languages_typescript_WorkerOptions [@@js.get "workerOptions"]
        (** Get the current extra libs registered with the language service. *)
        val getExtraLibs: t -> monaco_languages_typescript_IExtraLibs [@@js.call "getExtraLibs"]
        (**
          Add an additional source file to the language service. Use this
          for typescript (definition) files that won't be loaded as editor
          documents, like `jquery.d.ts`.
          @param content The file content
          @param filePath An optional file path
          @return A disposable which will remove the file from the
          language service upon disposal.
        *)
        val addExtraLib: t -> content:string -> ?filePath:string -> unit -> monaco_IDisposable [@@js.call "addExtraLib"]
        (**
          Remove all existing extra libs and set the additional source
          files to the language service. Use this for typescript definition
          files that won't be loaded as editor documents, like `jquery.d.ts`.
          @param libs An array of entries to register.
        *)
        val setExtraLibs: t -> libs:anonymous_interface_4 list -> unit [@@js.call "setExtraLibs"]
        (** Get current TypeScript compiler options for the language service. *)
        val getCompilerOptions: t -> monaco_languages_typescript_CompilerOptions [@@js.call "getCompilerOptions"]
        (** Set TypeScript compiler options. *)
        val setCompilerOptions: t -> options:monaco_languages_typescript_CompilerOptions -> unit [@@js.call "setCompilerOptions"]
        (** Get the current diagnostics options for the language service. *)
        val getDiagnosticsOptions: t -> monaco_languages_typescript_DiagnosticsOptions [@@js.call "getDiagnosticsOptions"]
        (**
          Configure whether syntactic and/or semantic validation should
          be performed
        *)
        val setDiagnosticsOptions: t -> options:monaco_languages_typescript_DiagnosticsOptions -> unit [@@js.call "setDiagnosticsOptions"]
        (** Configure webworker options *)
        val setWorkerOptions: t -> options:monaco_languages_typescript_WorkerOptions -> unit [@@js.call "setWorkerOptions"]
        (** No-op. *)
        val setMaximumWorkerIdleTime: t -> value:float -> unit [@@js.call "setMaximumWorkerIdleTime"]
        (**
          Configure if all existing models should be eagerly sync'd
          to the worker on start or restart.
        *)
        val setEagerModelSync: t -> value:bool -> unit [@@js.call "setEagerModelSync"]
        (**
          Get the current setting for whether all existing models should be eagerly sync'd
          to the worker on start or restart.
        *)
        val getEagerModelSync: t -> bool [@@js.call "getEagerModelSync"]
      end
      module[@js.scope "TypeScriptWorker"] TypeScriptWorker : sig
        type t = monaco_languages_typescript_TypeScriptWorker
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** Get diagnostic messages for any syntax issues in the given file. *)
        val getSyntacticDiagnostics: t -> fileName:string -> monaco_languages_typescript_Diagnostic list Promise.t_1 [@@js.call "getSyntacticDiagnostics"]
        (** Get diagnostic messages for any semantic issues in the given file. *)
        val getSemanticDiagnostics: t -> fileName:string -> monaco_languages_typescript_Diagnostic list Promise.t_1 [@@js.call "getSemanticDiagnostics"]
        (** Get diagnostic messages for any suggestions related to the given file. *)
        val getSuggestionDiagnostics: t -> fileName:string -> monaco_languages_typescript_Diagnostic list Promise.t_1 [@@js.call "getSuggestionDiagnostics"]
        (** Get the content of a given file. *)
        val getScriptText: t -> fileName:string -> string or_undefined Promise.t_1 [@@js.call "getScriptText"]
        (**
          Get diagnostic messages related to the current compiler options.
          @param fileName Not used
        *)
        val getCompilerOptionsDiagnostics: t -> fileName:string -> monaco_languages_typescript_Diagnostic list Promise.t_1 [@@js.call "getCompilerOptionsDiagnostics"]
        (**
          Get code completions for the given file and position.
          @return `Promise<typescript.CompletionInfo | undefined>`
        *)
        val getCompletionsAtPosition: t -> fileName:string -> position:float -> any or_undefined Promise.t_1 [@@js.call "getCompletionsAtPosition"]
        (**
          Get code completion details for the given file, position, and entry.
          @return `Promise<typescript.CompletionEntryDetails | undefined>`
        *)
        val getCompletionEntryDetails: t -> fileName:string -> position:float -> entry:string -> any or_undefined Promise.t_1 [@@js.call "getCompletionEntryDetails"]
        (**
          Get signature help items for the item at the given file and position.
          @return `Promise<typescript.SignatureHelpItems | undefined>`
        *)
        val getSignatureHelpItems: t -> fileName:string -> position:float -> options:any -> any or_undefined Promise.t_1 [@@js.call "getSignatureHelpItems"]
        (**
          Get quick info for the item at the given position in the file.
          @return `Promise<typescript.QuickInfo | undefined>`
        *)
        val getQuickInfoAtPosition: t -> fileName:string -> position:float -> any or_undefined Promise.t_1 [@@js.call "getQuickInfoAtPosition"]
        (**
          Get other ranges which are related to the item at the given position in the file (often used for highlighting).
          @return `Promise<ReadonlyArray<typescript.ReferenceEntry> | undefined>`
        *)
        val getOccurrencesAtPosition: t -> fileName:string -> position:float -> any list or_undefined Promise.t_1 [@@js.call "getOccurrencesAtPosition"]
        (**
          Get the definition of the item at the given position in the file.
          @return `Promise<ReadonlyArray<typescript.DefinitionInfo> | undefined>`
        *)
        val getDefinitionAtPosition: t -> fileName:string -> position:float -> any list or_undefined Promise.t_1 [@@js.call "getDefinitionAtPosition"]
        (**
          Get references to the item at the given position in the file.
          @return `Promise<typescript.ReferenceEntry\[\] | undefined>`
        *)
        val getReferencesAtPosition: t -> fileName:string -> position:float -> any list or_undefined Promise.t_1 [@@js.call "getReferencesAtPosition"]
        (**
          Get outline entries for the item at the given position in the file.
          @return `Promise<typescript.NavigationBarItem\[\]>`
        *)
        val getNavigationBarItems: t -> fileName:string -> any list Promise.t_1 [@@js.call "getNavigationBarItems"]
        (**
          Get changes which should be applied to format the given file.
          @param options `typescript.FormatCodeOptions`
          @return `Promise<typescript.TextChange\[\]>`
        *)
        val getFormattingEditsForDocument: t -> fileName:string -> options:any -> any list Promise.t_1 [@@js.call "getFormattingEditsForDocument"]
        (**
          Get changes which should be applied to format the given range in the file.
          @param options `typescript.FormatCodeOptions`
          @return `Promise<typescript.TextChange\[\]>`
        *)
        val getFormattingEditsForRange: t -> fileName:string -> start:float -> end_:float -> options:any -> any list Promise.t_1 [@@js.call "getFormattingEditsForRange"]
        (**
          Get formatting changes which should be applied after the given keystroke.
          @param options `typescript.FormatCodeOptions`
          @return `Promise<typescript.TextChange\[\]>`
        *)
        val getFormattingEditsAfterKeystroke: t -> fileName:string -> postion:float -> ch:string -> options:any -> any list Promise.t_1 [@@js.call "getFormattingEditsAfterKeystroke"]
        (**
          Get other occurrences which should be updated when renaming the item at the given file and position.
          @return `Promise<readonly typescript.RenameLocation\[\] | undefined>`
        *)
        val findRenameLocations: t -> fileName:string -> positon:float -> findInStrings:bool -> findInComments:bool -> providePrefixAndSuffixTextForRename:bool -> any list or_undefined Promise.t_1 [@@js.call "findRenameLocations"]
        (**
          Get edits which should be applied to rename the item at the given file and position (or a failure reason).
          @param options `typescript.RenameInfoOptions`
          @return `Promise<typescript.RenameInfo>`
        *)
        val getRenameInfo: t -> fileName:string -> positon:float -> options:any -> any Promise.t_1 [@@js.call "getRenameInfo"]
        (**
          Get transpiled output for the given file.
          @return `typescript.EmitOutput`
        *)
        val getEmitOutput: t -> fileName:string -> monaco_languages_typescript_EmitOutput Promise.t_1 [@@js.call "getEmitOutput"]
        (**
          Get possible code fixes at the given position in the file.
          @param formatOptions `typescript.FormatCodeOptions`
          @return `Promise<ReadonlyArray<typescript.CodeFixAction>>`
        *)
        val getCodeFixesAtPosition: t -> fileName:string -> start:float -> end_:float -> errorCodes:float list -> formatOptions:any -> any list Promise.t_1 [@@js.call "getCodeFixesAtPosition"]
      end
      val typescriptVersion: string [@@js.global "typescriptVersion"]
      val typescriptDefaults: monaco_languages_typescript_LanguageServiceDefaults [@@js.global "typescriptDefaults"]
      val javascriptDefaults: monaco_languages_typescript_LanguageServiceDefaults [@@js.global "javascriptDefaults"]
      val getTypeScriptWorker: unit -> (uris:(monaco_Uri list [@js.variadic]) -> monaco_languages_typescript_TypeScriptWorker Promise.t_1) Promise.t_1 [@@js.global "getTypeScriptWorker"]
      val getJavaScriptWorker: unit -> (uris:(monaco_Uri list [@js.variadic]) -> monaco_languages_typescript_TypeScriptWorker Promise.t_1) Promise.t_1 [@@js.global "getJavaScriptWorker"]
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
        val get_lint: t -> anonymous_interface_3 [@@js.get "lint"]
      end
      module[@js.scope "ModeConfiguration"] ModeConfiguration : sig
        type t = monaco_languages_css_ModeConfiguration
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** Defines whether the built-in completionItemProvider is enabled. *)
        val get_completionItems: t -> bool [@@js.get "completionItems"]
        (** Defines whether the built-in hoverProvider is enabled. *)
        val get_hovers: t -> bool [@@js.get "hovers"]
        (** Defines whether the built-in documentSymbolProvider is enabled. *)
        val get_documentSymbols: t -> bool [@@js.get "documentSymbols"]
        (** Defines whether the built-in definitions provider is enabled. *)
        val get_definitions: t -> bool [@@js.get "definitions"]
        (** Defines whether the built-in references provider is enabled. *)
        val get_references: t -> bool [@@js.get "references"]
        (** Defines whether the built-in references provider is enabled. *)
        val get_documentHighlights: t -> bool [@@js.get "documentHighlights"]
        (** Defines whether the built-in rename provider is enabled. *)
        val get_rename: t -> bool [@@js.get "rename"]
        (** Defines whether the built-in color provider is enabled. *)
        val get_colors: t -> bool [@@js.get "colors"]
        (** Defines whether the built-in foldingRange provider is enabled. *)
        val get_foldingRanges: t -> bool [@@js.get "foldingRanges"]
        (** Defines whether the built-in diagnostic provider is enabled. *)
        val get_diagnostics: t -> bool [@@js.get "diagnostics"]
        (** Defines whether the built-in selection range provider is enabled. *)
        val get_selectionRanges: t -> bool [@@js.get "selectionRanges"]
      end
      module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
        type t = monaco_languages_css_LanguageServiceDefaults
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_languageId: t -> string [@@js.get "languageId"]
        val get_onDidChange: t -> t monaco_IEvent [@@js.get "onDidChange"]
        val get_diagnosticsOptions: t -> monaco_languages_css_DiagnosticsOptions [@@js.get "diagnosticsOptions"]
        val get_modeConfiguration: t -> monaco_languages_css_ModeConfiguration [@@js.get "modeConfiguration"]
        val setDiagnosticsOptions: t -> options:monaco_languages_css_DiagnosticsOptions -> unit [@@js.call "setDiagnosticsOptions"]
        val setModeConfiguration: t -> modeConfiguration:monaco_languages_css_ModeConfiguration -> unit [@@js.call "setModeConfiguration"]
      end
      val cssDefaults: monaco_languages_css_LanguageServiceDefaults [@@js.global "cssDefaults"]
      val scssDefaults: monaco_languages_css_LanguageServiceDefaults [@@js.global "scssDefaults"]
      val lessDefaults: monaco_languages_css_LanguageServiceDefaults [@@js.global "lessDefaults"]
    end
    module[@js.scope "json"] Json : sig
      module[@js.scope "DiagnosticsOptions"] DiagnosticsOptions : sig
        type t = monaco_languages_json_DiagnosticsOptions
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (**
          If set, the validator will be enabled and perform syntax and schema based validation,
          unless `DiagnosticsOptions.schemaValidation` is set to `ignore`.
        *)
        val get_validate: t -> bool [@@js.get "validate"]
        (**
          If set, comments are tolerated. If set to false, syntax errors will be emitted for comments.
          `DiagnosticsOptions.allowComments` will override this setting.
        *)
        val get_allowComments: t -> bool [@@js.get "allowComments"]
        (** A list of known schemas and/or associations of schemas to file names. *)
        val get_schemas: t -> anonymous_interface_20 list [@@js.get "schemas"]
        (** If set, the schema service would load schema content on-demand with 'fetch' if available *)
        val get_enableSchemaRequest: t -> bool [@@js.get "enableSchemaRequest"]
        (** The severity of problems from schema validation. If set to 'ignore', schema validation will be skipped. If not set, 'warning' is used. *)
        val get_schemaValidation: t -> monaco_languages_json_SeverityLevel [@@js.get "schemaValidation"]
        (** The severity of problems that occurred when resolving and loading schemas. If set to 'ignore', schema resolving problems are not reported. If not set, 'warning' is used. *)
        val get_schemaRequest: t -> monaco_languages_json_SeverityLevel [@@js.get "schemaRequest"]
        (** The severity of reported trailing commas. If not set, trailing commas will be reported as errors. *)
        val get_trailingCommas: t -> monaco_languages_json_SeverityLevel [@@js.get "trailingCommas"]
        (** The severity of reported comments. If not set, 'DiagnosticsOptions.allowComments' defines whether comments are ignored or reported as errors. *)
        val get_comments: t -> monaco_languages_json_SeverityLevel [@@js.get "comments"]
      end
      module SeverityLevel : sig
        type t = monaco_languages_json_SeverityLevel
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "ModeConfiguration"] ModeConfiguration : sig
        type t = monaco_languages_json_ModeConfiguration
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** Defines whether the built-in documentFormattingEdit provider is enabled. *)
        val get_documentFormattingEdits: t -> bool [@@js.get "documentFormattingEdits"]
        (** Defines whether the built-in documentRangeFormattingEdit provider is enabled. *)
        val get_documentRangeFormattingEdits: t -> bool [@@js.get "documentRangeFormattingEdits"]
        (** Defines whether the built-in completionItemProvider is enabled. *)
        val get_completionItems: t -> bool [@@js.get "completionItems"]
        (** Defines whether the built-in hoverProvider is enabled. *)
        val get_hovers: t -> bool [@@js.get "hovers"]
        (** Defines whether the built-in documentSymbolProvider is enabled. *)
        val get_documentSymbols: t -> bool [@@js.get "documentSymbols"]
        (** Defines whether the built-in tokens provider is enabled. *)
        val get_tokens: t -> bool [@@js.get "tokens"]
        (** Defines whether the built-in color provider is enabled. *)
        val get_colors: t -> bool [@@js.get "colors"]
        (** Defines whether the built-in foldingRange provider is enabled. *)
        val get_foldingRanges: t -> bool [@@js.get "foldingRanges"]
        (** Defines whether the built-in diagnostic provider is enabled. *)
        val get_diagnostics: t -> bool [@@js.get "diagnostics"]
        (** Defines whether the built-in selection range provider is enabled. *)
        val get_selectionRanges: t -> bool [@@js.get "selectionRanges"]
      end
      module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
        type t = monaco_languages_json_LanguageServiceDefaults
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_languageId: t -> string [@@js.get "languageId"]
        val get_onDidChange: t -> t monaco_IEvent [@@js.get "onDidChange"]
        val get_diagnosticsOptions: t -> monaco_languages_json_DiagnosticsOptions [@@js.get "diagnosticsOptions"]
        val get_modeConfiguration: t -> monaco_languages_json_ModeConfiguration [@@js.get "modeConfiguration"]
        val setDiagnosticsOptions: t -> options:monaco_languages_json_DiagnosticsOptions -> unit [@@js.call "setDiagnosticsOptions"]
        val setModeConfiguration: t -> modeConfiguration:monaco_languages_json_ModeConfiguration -> unit [@@js.call "setModeConfiguration"]
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
        val get_wrapAttributes: t -> ([`L_s5_auto[@js "auto"] | `L_s27_force[@js "force"] | `L_s28_force_aligned[@js "force-aligned"] | `L_s29_force_expand_multiline[@js "force-expand-multiline"]] [@js.enum]) [@@js.get "wrapAttributes"]
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
        (** If set, comments are tolerated. If set to false, syntax errors will be emitted for comments. *)
        val get_format: t -> monaco_languages_html_HTMLFormatConfiguration [@@js.get "format"]
        (** A list of known schemas and/or associations of schemas to file names. *)
        val get_suggest: t -> monaco_languages_html_CompletionConfiguration [@@js.get "suggest"]
      end
      module[@js.scope "ModeConfiguration"] ModeConfiguration : sig
        type t = monaco_languages_html_ModeConfiguration
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        (** Defines whether the built-in completionItemProvider is enabled. *)
        val get_completionItems: t -> bool [@@js.get "completionItems"]
        (** Defines whether the built-in hoverProvider is enabled. *)
        val get_hovers: t -> bool [@@js.get "hovers"]
        (** Defines whether the built-in documentSymbolProvider is enabled. *)
        val get_documentSymbols: t -> bool [@@js.get "documentSymbols"]
        (** Defines whether the built-in definitions provider is enabled. *)
        val get_links: t -> bool [@@js.get "links"]
        (** Defines whether the built-in references provider is enabled. *)
        val get_documentHighlights: t -> bool [@@js.get "documentHighlights"]
        (** Defines whether the built-in rename provider is enabled. *)
        val get_rename: t -> bool [@@js.get "rename"]
        (** Defines whether the built-in color provider is enabled. *)
        val get_colors: t -> bool [@@js.get "colors"]
        (** Defines whether the built-in foldingRange provider is enabled. *)
        val get_foldingRanges: t -> bool [@@js.get "foldingRanges"]
        (** Defines whether the built-in diagnostic provider is enabled. *)
        val get_diagnostics: t -> bool [@@js.get "diagnostics"]
        (** Defines whether the built-in selection range provider is enabled. *)
        val get_selectionRanges: t -> bool [@@js.get "selectionRanges"]
        (** Defines whether the built-in documentFormattingEdit provider is enabled. *)
        val get_documentFormattingEdits: t -> bool [@@js.get "documentFormattingEdits"]
        (** Defines whether the built-in documentRangeFormattingEdit provider is enabled. *)
        val get_documentRangeFormattingEdits: t -> bool [@@js.get "documentRangeFormattingEdits"]
      end
      module[@js.scope "LanguageServiceDefaults"] LanguageServiceDefaults : sig
        type t = monaco_languages_html_LanguageServiceDefaults
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_languageId: t -> string [@@js.get "languageId"]
        val get_modeConfiguration: t -> monaco_languages_html_ModeConfiguration [@@js.get "modeConfiguration"]
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
    module[@js.scope "IMirrorTextModel"] IMirrorTextModel : sig
      type t = monaco_worker_IMirrorTextModel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_version: t -> float [@@js.get "version"]
    end
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
      val cast: t -> monaco_worker_IMirrorTextModel [@@js.cast]
    end
    module[@js.scope "IWorkerContext"] IWorkerContext : sig
      type 'H t = 'H monaco_worker_IWorkerContext
      val t_to_js: ('H -> Ojs.t) -> 'H t -> Ojs.t
      val t_of_js: (Ojs.t -> 'H) -> Ojs.t -> 'H t
      type 'H t_1 = 'H t
      val t_1_to_js: ('H -> Ojs.t) -> 'H t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'H) -> Ojs.t -> 'H t_1
      type t_0 = never or_undefined t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      (** A proxy to the main thread host object. *)
      (** A proxy to the main thread host object. *)
      val get_host: 'H t -> 'H [@@js.get "host"]
      (** A proxy to the main thread host object. *)
      val set_host: 'H t -> 'H -> unit [@@js.set "host"]
      (** Get all available mirror models in this worker. *)
      val getMirrorModels: 'H t -> monaco_worker_IMirrorModel list [@@js.call "getMirrorModels"]
    end
  end
end
