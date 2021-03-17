[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Date
  - Promise<T1>
 *)
[@@@js.stop]
module type Missing = sig
  module Date : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Date : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Promise : sig
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
    end
    module Types : sig
      open AnonymousInterfaces
      type ts_AccessorDeclaration = (([`U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union2 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union2 [@js 164]] [@js.union on_field "kind"]), (ts_GetAccessorDeclaration, ts_SetAccessorDeclaration) or_) or_
      and ts_AdditiveOperator = ((ts_SyntaxKind_MinusToken, ts_SyntaxKind_PlusToken) or_, ([`MinusToken[@js 40] | `PlusToken[@js 39]] [@js.enum])) or_enum
      and ts_AdditiveOperatorOrHigher = ((ts_AdditiveOperator, (ts_ExponentiationOperator, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AsteriskAsteriskToken[@js 42] | `AsteriskToken[@js 41] | `MinusToken[@js 40] | `PercentToken[@js 44] | `PlusToken[@js 39] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and 'T ts_AffectedFileResult = anonymous_interface_13 or_undefined
      and ts_AfterFinallyFlow = [`Ts_AfterFinallyFlow | `Ts_FlowLock | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_AmdDependency = [`Ts_AmdDependency] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ApplicableRefactorInfo = [`Ts_ApplicableRefactorInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ApplyCodeActionCommandResult = [`Ts_ApplyCodeActionCommandResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ArrayBindingElement = (([`U_n_191 of (ts_BindingElement, ts_BindingElement) union2 [@js 191] | `U_n_215 of (ts_OmittedExpression, ts_OmittedExpression) union2 [@js 215]] [@js.union on_field "kind"]), (ts_BindingElement, ts_OmittedExpression) or_) or_
      and ts_ArrayBindingOrAssignmentPattern = (([`U_n_190 of (ts_ArrayBindingPattern, ts_ArrayBindingPattern) union2 [@js 190] | `U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2 [@js 192]] [@js.union on_field "kind"]), (ts_ArrayBindingPattern, ts_ArrayLiteralExpression) or_) or_
      and ts_ArrayBindingPattern = [`Ts_ArrayBindingPattern | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ArrayDestructuringAssignment = [`Ts_ArrayDestructuringAssignment | `Ts_BinaryExpression | `Ts_Declaration | `Ts_Expression | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_AssignmentExpression of ts_EqualsToken] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ArrayLiteralExpression = [`Ts_ArrayLiteralExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ArrayTypeNode = [`Ts_ArrayTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ArrowFunction = [`Ts_ArrowFunction | `Ts_Declaration | `Ts_Expression | `Ts_FunctionLikeDeclarationBase | `Ts_JSDocContainer | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_AsExpression = [`Ts_AsExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_AssertionExpression = (([`U_n_199 of (ts_TypeAssertion, ts_TypeAssertion) union2 [@js 199] | `U_n_217 of (ts_AsExpression, ts_AsExpression) union2 [@js 217]] [@js.union on_field "kind"]), (ts_AsExpression, ts_TypeAssertion) or_) or_
      and ts_AssertsIdentifierTypePredicate = [`Ts_AssertsIdentifierTypePredicate | `Ts_TypePredicateBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_AssertsThisTypePredicate = [`Ts_AssertsThisTypePredicate | `Ts_TypePredicateBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_AssertsToken = ts_SyntaxKind_AssertsKeyword ts_Token
      and 'TOperator ts_AssignmentExpression = [`Ts_AssignmentExpression of 'TOperator | `Ts_BinaryExpression | `Ts_Declaration | `Ts_Expression | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=(fun _TOperator -> Obj.magic); to_js=(fun _TOperator -> Obj.magic) }]
      and ts_AssignmentOperator = ((ts_CompoundAssignmentOperator, (ts_SyntaxKind_AmpersandEqualsToken, (ts_SyntaxKind_AsteriskAsteriskEqualsToken, (ts_SyntaxKind_AsteriskEqualsToken, (ts_SyntaxKind_BarEqualsToken, (ts_SyntaxKind_CaretEqualsToken, (ts_SyntaxKind_EqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_LessThanLessThanEqualsToken, (ts_SyntaxKind_MinusEqualsToken, (ts_SyntaxKind_PercentEqualsToken, (ts_SyntaxKind_PlusEqualsToken, ts_SyntaxKind_SlashEqualsToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandEqualsToken[@js 72] | `AsteriskAsteriskEqualsToken[@js 66] | `AsteriskEqualsToken[@js 65] | `BarEqualsToken[@js 73] | `CaretEqualsToken[@js 74] | `EqualsToken[@js 62] | `GreaterThanGreaterThanEqualsToken[@js 70] | `GreaterThanGreaterThanGreaterThanEqualsToken[@js 71] | `LessThanLessThanEqualsToken[@js 69] | `MinusEqualsToken[@js 64] | `PercentEqualsToken[@js 68] | `PlusEqualsToken[@js 63] | `SlashEqualsToken[@js 67]] [@js.enum])) or_enum
      and ts_AssignmentOperatorOrHigher = ((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_AssignmentOperator, (ts_BitwiseOperator, (ts_BitwiseOperatorOrHigher, (ts_CompoundAssignmentOperator, (ts_EqualityOperator, (ts_EqualityOperatorOrHigher, (ts_ExponentiationOperator, (ts_LogicalOperator, (ts_LogicalOperatorOrHigher, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_RelationalOperatorOrHigher, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AmpersandAmpersandToken, (ts_SyntaxKind_AmpersandEqualsToken, (ts_SyntaxKind_AmpersandToken, (ts_SyntaxKind_AsteriskAsteriskEqualsToken, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskEqualsToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_BarBarToken, (ts_SyntaxKind_BarEqualsToken, (ts_SyntaxKind_BarToken, (ts_SyntaxKind_CaretEqualsToken, (ts_SyntaxKind_CaretToken, (ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_EqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusEqualsToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentEqualsToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusEqualsToken, (ts_SyntaxKind_PlusToken, (ts_SyntaxKind_QuestionQuestionToken, (ts_SyntaxKind_SlashEqualsToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandAmpersandToken[@js 55] | `AmpersandEqualsToken[@js 72] | `AmpersandToken[@js 50] | `AsteriskAsteriskEqualsToken[@js 66] | `AsteriskAsteriskToken[@js 42] | `AsteriskEqualsToken[@js 65] | `AsteriskToken[@js 41] | `BarBarToken[@js 56] | `BarEqualsToken[@js 73] | `BarToken[@js 51] | `CaretEqualsToken[@js 74] | `CaretToken[@js 52] | `EqualsEqualsEqualsToken[@js 36] | `EqualsEqualsToken[@js 34] | `EqualsToken[@js 62] | `ExclamationEqualsEqualsToken[@js 37] | `ExclamationEqualsToken[@js 35] | `GreaterThanEqualsToken[@js 33] | `GreaterThanGreaterThanEqualsToken[@js 70] | `GreaterThanGreaterThanGreaterThanEqualsToken[@js 71] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `GreaterThanToken[@js 31] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `LessThanEqualsToken[@js 32] | `LessThanLessThanEqualsToken[@js 69] | `LessThanLessThanToken[@js 47] | `LessThanToken[@js 29] | `MinusEqualsToken[@js 64] | `MinusToken[@js 40] | `PercentEqualsToken[@js 68] | `PercentToken[@js 44] | `PlusEqualsToken[@js 63] | `PlusToken[@js 39] | `QuestionQuestionToken[@js 60] | `SlashEqualsToken[@js 67] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_AssignmentOperatorToken = ts_AssignmentOperator ts_Token
      and ts_AssignmentPattern = (([`U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2 [@js 192] | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193]] [@js.union on_field "kind"]), (ts_ArrayLiteralExpression, ts_ObjectLiteralExpression) or_) or_
      and ts_AsteriskToken = ts_SyntaxKind_AsteriskToken ts_Token
      and ts_AwaitExpression = [`Ts_AwaitExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_AwaitKeywordToken = ts_SyntaxKind_AwaitKeyword ts_Token
      and ts_BaseType = (ts_IndexedAccessType, (ts_IntersectionType, (ts_ObjectType, (ts_TypeParameter, ts_TypeVariable) or_) or_) or_) or_
      and ts_BigIntLiteral = [`Ts_BigIntLiteral | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_LiteralExpression | `Ts_LiteralLikeNode | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BigIntLiteralType = [`Ts_BigIntLiteralType | `Ts_LiteralType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BinaryExpression = [`Ts_BinaryExpression | `Ts_Declaration | `Ts_Expression | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BinaryOperator = ((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_AssignmentOperator, (ts_AssignmentOperatorOrHigher, (ts_BitwiseOperator, (ts_BitwiseOperatorOrHigher, (ts_CompoundAssignmentOperator, (ts_EqualityOperator, (ts_EqualityOperatorOrHigher, (ts_ExponentiationOperator, (ts_LogicalOperator, (ts_LogicalOperatorOrHigher, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_RelationalOperatorOrHigher, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AmpersandAmpersandToken, (ts_SyntaxKind_AmpersandEqualsToken, (ts_SyntaxKind_AmpersandToken, (ts_SyntaxKind_AsteriskAsteriskEqualsToken, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskEqualsToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_BarBarToken, (ts_SyntaxKind_BarEqualsToken, (ts_SyntaxKind_BarToken, (ts_SyntaxKind_CaretEqualsToken, (ts_SyntaxKind_CaretToken, (ts_SyntaxKind_CommaToken, (ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_EqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusEqualsToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentEqualsToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusEqualsToken, (ts_SyntaxKind_PlusToken, (ts_SyntaxKind_QuestionQuestionToken, (ts_SyntaxKind_SlashEqualsToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandAmpersandToken[@js 55] | `AmpersandEqualsToken[@js 72] | `AmpersandToken[@js 50] | `AsteriskAsteriskEqualsToken[@js 66] | `AsteriskAsteriskToken[@js 42] | `AsteriskEqualsToken[@js 65] | `AsteriskToken[@js 41] | `BarBarToken[@js 56] | `BarEqualsToken[@js 73] | `BarToken[@js 51] | `CaretEqualsToken[@js 74] | `CaretToken[@js 52] | `CommaToken[@js 27] | `EqualsEqualsEqualsToken[@js 36] | `EqualsEqualsToken[@js 34] | `EqualsToken[@js 62] | `ExclamationEqualsEqualsToken[@js 37] | `ExclamationEqualsToken[@js 35] | `GreaterThanEqualsToken[@js 33] | `GreaterThanGreaterThanEqualsToken[@js 70] | `GreaterThanGreaterThanGreaterThanEqualsToken[@js 71] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `GreaterThanToken[@js 31] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `LessThanEqualsToken[@js 32] | `LessThanLessThanEqualsToken[@js 69] | `LessThanLessThanToken[@js 47] | `LessThanToken[@js 29] | `MinusEqualsToken[@js 64] | `MinusToken[@js 40] | `PercentEqualsToken[@js 68] | `PercentToken[@js 44] | `PlusEqualsToken[@js 63] | `PlusToken[@js 39] | `QuestionQuestionToken[@js 60] | `SlashEqualsToken[@js 67] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_BinaryOperatorToken = ts_BinaryOperator ts_Token
      and ts_BindingElement = [`Ts_BindingElement | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BindingName = (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_189 of (ts_ObjectBindingPattern, ts_ObjectBindingPattern, ts_ObjectBindingPattern) union3 [@js 189] | `U_n_190 of (ts_ArrayBindingPattern, ts_ArrayBindingPattern, ts_ArrayBindingPattern) union3 [@js 190]] [@js.union on_field "kind"]), (ts_ArrayBindingPattern, (ts_BindingPattern, (ts_Identifier, ts_ObjectBindingPattern) or_) or_) or_) or_
      and ts_BindingOrAssignmentElement = (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_191 of (ts_BindingElement, ts_BindingElement) union2 [@js 191] | `U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2 [@js 192] | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193] | `U_n_194 of (ts_PropertyAccessExpression, ts_PropertyAccessExpression) union2 [@js 194] | `U_n_195 of (ts_ElementAccessExpression, ts_ElementAccessExpression) union2 [@js 195] | `U_n_209 of (ts_EqualsToken ts_AssignmentExpression, ts_EqualsToken ts_AssignmentExpression) union2 [@js 209] | `U_n_213 of (ts_SpreadElement, ts_SpreadElement) union2 [@js 213] | `U_n_215 of (ts_OmittedExpression, ts_OmittedExpression) union2 [@js 215] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242] | `U_n_281 of (ts_PropertyAssignment, ts_PropertyAssignment) union2 [@js 281] | `U_n_282 of (ts_ShorthandPropertyAssignment, ts_ShorthandPropertyAssignment) union2 [@js 282] | `U_n_283 of (ts_SpreadAssignment, ts_SpreadAssignment) union2 [@js 283]] [@js.union on_field "kind"]), (ts_ArrayLiteralExpression, (ts_BindingElement, (ts_ElementAccessExpression, (ts_Identifier, (ts_ObjectLiteralExpression, (ts_OmittedExpression, (ts_ParameterDeclaration, (ts_PropertyAccessExpression, (ts_PropertyAssignment, (ts_ShorthandPropertyAssignment, (ts_SpreadAssignment, (ts_SpreadElement, (ts_VariableDeclaration, ts_EqualsToken ts_AssignmentExpression) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_BindingOrAssignmentElementRestIndicator = (([`U_n_25 of (ts_SyntaxKind_DotDotDotToken ts_Token, ts_SyntaxKind_DotDotDotToken ts_Token, ts_SyntaxKind_DotDotDotToken ts_Token) union3 [@js 25] | `U_n_213 of (ts_SpreadElement, ts_SpreadElement) union2 [@js 213] | `U_n_283 of (ts_SpreadAssignment, ts_SpreadAssignment) union2 [@js 283]] [@js.union on_field "kind"]), (ts_DotDotDotToken, (ts_SpreadAssignment, (ts_SpreadElement, ts_SyntaxKind_DotDotDotToken ts_Token) or_) or_) or_) or_
      and ts_BindingOrAssignmentElementTarget = (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_189 of (ts_ObjectBindingPattern, ts_ObjectBindingPattern, ts_ObjectBindingPattern, ts_ObjectBindingPattern) union4 [@js 189] | `U_n_190 of (ts_ArrayBindingPattern, ts_ArrayBindingPattern, ts_ArrayBindingPattern, ts_ArrayBindingPattern) union4 [@js 190] | `U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression, ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union4 [@js 192] | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression, ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union4 [@js 193] | `U_n_194 of (ts_PropertyAccessExpression, ts_PropertyAccessExpression) union2 [@js 194] | `U_n_195 of (ts_ElementAccessExpression, ts_ElementAccessExpression) union2 [@js 195] | `U_n_215 of (ts_OmittedExpression, ts_OmittedExpression) union2 [@js 215]] [@js.union on_field "kind"]), (ts_ArrayBindingOrAssignmentPattern, (ts_ArrayBindingPattern, (ts_ArrayLiteralExpression, (ts_BindingOrAssignmentPattern, (ts_ElementAccessExpression, (ts_Identifier, (ts_ObjectBindingOrAssignmentPattern, (ts_ObjectBindingPattern, (ts_ObjectLiteralExpression, (ts_OmittedExpression, ts_PropertyAccessExpression) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_BindingOrAssignmentPattern = (([`U_n_189 of (ts_ObjectBindingPattern, ts_ObjectBindingPattern, ts_ObjectBindingPattern) union3 [@js 189] | `U_n_190 of (ts_ArrayBindingPattern, ts_ArrayBindingPattern, ts_ArrayBindingPattern) union3 [@js 190] | `U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union3 [@js 192] | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union3 [@js 193]] [@js.union on_field "kind"]), (ts_ArrayBindingOrAssignmentPattern, (ts_ArrayBindingPattern, (ts_ArrayLiteralExpression, (ts_ObjectBindingOrAssignmentPattern, (ts_ObjectBindingPattern, ts_ObjectLiteralExpression) or_) or_) or_) or_) or_) or_
      and ts_BindingPattern = (([`U_n_189 of (ts_ObjectBindingPattern, ts_ObjectBindingPattern) union2 [@js 189] | `U_n_190 of (ts_ArrayBindingPattern, ts_ArrayBindingPattern) union2 [@js 190]] [@js.union on_field "kind"]), (ts_ArrayBindingPattern, ts_ObjectBindingPattern) or_) or_
      and ts_BitwiseOperator = ((ts_SyntaxKind_AmpersandToken, (ts_SyntaxKind_BarToken, ts_SyntaxKind_CaretToken) or_) or_, ([`AmpersandToken[@js 50] | `BarToken[@js 51] | `CaretToken[@js 52]] [@js.enum])) or_enum
      and ts_BitwiseOperatorOrHigher = ((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_BitwiseOperator, (ts_EqualityOperator, (ts_EqualityOperatorOrHigher, (ts_ExponentiationOperator, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_RelationalOperatorOrHigher, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AmpersandToken, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_BarToken, (ts_SyntaxKind_CaretToken, (ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandToken[@js 50] | `AsteriskAsteriskToken[@js 42] | `AsteriskToken[@js 41] | `BarToken[@js 51] | `CaretToken[@js 52] | `EqualsEqualsEqualsToken[@js 36] | `EqualsEqualsToken[@js 34] | `ExclamationEqualsEqualsToken[@js 37] | `ExclamationEqualsToken[@js 35] | `GreaterThanEqualsToken[@js 33] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `GreaterThanToken[@js 31] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `LessThanEqualsToken[@js 32] | `LessThanLessThanToken[@js 47] | `LessThanToken[@js 29] | `MinusToken[@js 40] | `PercentToken[@js 44] | `PlusToken[@js 39] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_Block = [`Ts_Block | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BlockLike = (([`U_n_223 of (ts_Block, ts_Block) union2 [@js 223] | `U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2 [@js 250] | `U_n_277 of (ts_CaseClause, ts_CaseClause, ts_CaseClause) union3 [@js 277] | `U_n_278 of (ts_DefaultClause, ts_DefaultClause, ts_DefaultClause) union3 [@js 278] | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 [@js 290]] [@js.union on_field "kind"]), (ts_Block, (ts_CaseClause, (ts_CaseOrDefaultClause, (ts_DefaultClause, (ts_ModuleBlock, ts_SourceFile) or_) or_) or_) or_) or_) or_
      and ts_BooleanLiteral = [`Ts_BooleanLiteral | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_TypeNode | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BreakOrContinueStatement = (([`U_n_233 of (ts_ContinueStatement, ts_ContinueStatement) union2 [@js 233] | `U_n_234 of (ts_BreakStatement, ts_BreakStatement) union2 [@js 234]] [@js.union on_field "kind"]), (ts_BreakStatement, ts_ContinueStatement) or_) or_
      and ts_BreakStatement = [`Ts_BreakStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_BuildInvalidedProject = [`Ts_BuildInvalidedProject of 'T | `Ts_InvalidatedProjectBase] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_BuildOptions = [`Ts_BuildOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BuilderProgram = [`Ts_BuilderProgram] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_BuilderProgramHost = [`Ts_BuilderProgramHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Bundle = [`Ts_Bundle | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CallChain = [`Ts_CallChain | `Ts_CallExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CallExpression = [`Ts_CallExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CallHierarchyIncomingCall = [`Ts_CallHierarchyIncomingCall] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CallHierarchyItem = [`Ts_CallHierarchyItem] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CallHierarchyOutgoingCall = [`Ts_CallHierarchyOutgoingCall] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CallLikeExpression = (([`U_n_157 of (ts_Decorator, ts_Decorator) union2 [@js 157] | `U_n_196 of (ts_CallExpression, ts_CallExpression) union2 [@js 196] | `U_n_197 of (ts_NewExpression, ts_NewExpression) union2 [@js 197] | `U_n_198 of (ts_TaggedTemplateExpression, ts_TaggedTemplateExpression) union2 [@js 198] | `U_n_267 of (ts_JsxSelfClosingElement, ts_JsxSelfClosingElement, ts_JsxSelfClosingElement) union3 [@js 267] | `U_n_268 of (ts_JsxOpeningElement, ts_JsxOpeningElement, ts_JsxOpeningElement) union3 [@js 268]] [@js.union on_field "kind"]), (ts_CallExpression, (ts_Decorator, (ts_JsxOpeningElement, (ts_JsxOpeningLikeElement, (ts_JsxSelfClosingElement, (ts_NewExpression, ts_TaggedTemplateExpression) or_) or_) or_) or_) or_) or_) or_
      and ts_CallSignatureDeclaration = [`Ts_CallSignatureDeclaration | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeElement] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CancellationToken = [`Ts_CancellationToken] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CaseBlock = [`Ts_CaseBlock | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CaseClause = [`Ts_CaseClause | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CaseOrDefaultClause = (([`U_n_277 of (ts_CaseClause, ts_CaseClause) union2 [@js 277] | `U_n_278 of (ts_DefaultClause, ts_DefaultClause) union2 [@js 278]] [@js.union on_field "kind"]), (ts_CaseClause, ts_DefaultClause) or_) or_
      and ts_CatchClause = [`Ts_CatchClause | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CheckJsDirective = [`Ts_CheckJsDirective | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassDeclaration = [`Ts_ClassDeclaration | `Ts_ClassLikeDeclarationBase | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassElement = [`Ts_ClassElement | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassExpression = [`Ts_ClassExpression | `Ts_ClassLikeDeclarationBase | `Ts_Declaration | `Ts_Expression | `Ts_JSDocContainer | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassLikeDeclaration = (([`U_n_214 of (ts_ClassExpression, ts_ClassExpression) union2 [@js 214] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration) union2 [@js 245]] [@js.union on_field "kind"]), (ts_ClassDeclaration, ts_ClassExpression) or_) or_
      and ts_ClassLikeDeclarationBase = [`Ts_ClassLikeDeclarationBase | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassificationInfo = [`Ts_ClassificationInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassificationResult = [`Ts_ClassificationResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassificationType = [`comment[@js 1] | `identifier[@js 2] | `keyword[@js 3] | `numericLiteral[@js 4] | `operator[@js 5] | `stringLiteral[@js 6] | `regularExpressionLiteral[@js 7] | `whiteSpace[@js 8] | `text[@js 9] | `punctuation[@js 10] | `className[@js 11] | `enumName[@js 12] | `interfaceName[@js 13] | `moduleName[@js 14] | `typeParameterName[@js 15] | `typeAliasName[@js 16] | `parameterName[@js 17] | `docCommentTagName[@js 18] | `jsxOpenTagName[@js 19] | `jsxCloseTagName[@js 20] | `jsxSelfClosingTagName[@js 21] | `jsxAttribute[@js 22] | `jsxText[@js 23] | `jsxAttributeStringLiteralValue[@js 24] | `bigintLiteral[@js 25]] [@js.enum]
      and ts_ClassificationType_comment = [`comment[@js 1]] [@js.enum]
      and ts_ClassificationType_identifier = [`identifier[@js 2]] [@js.enum]
      and ts_ClassificationType_keyword = [`keyword[@js 3]] [@js.enum]
      and ts_ClassificationType_numericLiteral = [`numericLiteral[@js 4]] [@js.enum]
      and ts_ClassificationType_operator = [`operator[@js 5]] [@js.enum]
      and ts_ClassificationType_stringLiteral = [`stringLiteral[@js 6]] [@js.enum]
      and ts_ClassificationType_regularExpressionLiteral = [`regularExpressionLiteral[@js 7]] [@js.enum]
      and ts_ClassificationType_whiteSpace = [`whiteSpace[@js 8]] [@js.enum]
      and ts_ClassificationType_text = [`text[@js 9]] [@js.enum]
      and ts_ClassificationType_punctuation = [`punctuation[@js 10]] [@js.enum]
      and ts_ClassificationType_className = [`className[@js 11]] [@js.enum]
      and ts_ClassificationType_enumName = [`enumName[@js 12]] [@js.enum]
      and ts_ClassificationType_interfaceName = [`interfaceName[@js 13]] [@js.enum]
      and ts_ClassificationType_moduleName = [`moduleName[@js 14]] [@js.enum]
      and ts_ClassificationType_typeParameterName = [`typeParameterName[@js 15]] [@js.enum]
      and ts_ClassificationType_typeAliasName = [`typeAliasName[@js 16]] [@js.enum]
      and ts_ClassificationType_parameterName = [`parameterName[@js 17]] [@js.enum]
      and ts_ClassificationType_docCommentTagName = [`docCommentTagName[@js 18]] [@js.enum]
      and ts_ClassificationType_jsxOpenTagName = [`jsxOpenTagName[@js 19]] [@js.enum]
      and ts_ClassificationType_jsxCloseTagName = [`jsxCloseTagName[@js 20]] [@js.enum]
      and ts_ClassificationType_jsxSelfClosingTagName = [`jsxSelfClosingTagName[@js 21]] [@js.enum]
      and ts_ClassificationType_jsxAttribute = [`jsxAttribute[@js 22]] [@js.enum]
      and ts_ClassificationType_jsxText = [`jsxText[@js 23]] [@js.enum]
      and ts_ClassificationType_jsxAttributeStringLiteralValue = [`jsxAttributeStringLiteralValue[@js 24]] [@js.enum]
      and ts_ClassificationType_bigintLiteral = [`bigintLiteral[@js 25]] [@js.enum]
      and ts_ClassificationTypeNames = [`comment[@js "comment"] | `identifier[@js "identifier"] | `keyword[@js "keyword"] | `numericLiteral[@js "number"] | `bigintLiteral[@js "bigint"] | `operator[@js "operator"] | `stringLiteral[@js "string"] | `whiteSpace[@js "whitespace"] | `text[@js "text"] | `punctuation[@js "punctuation"] | `className[@js "class name"] | `enumName[@js "enum name"] | `interfaceName[@js "interface name"] | `moduleName[@js "module name"] | `typeParameterName[@js "type parameter name"] | `typeAliasName[@js "type alias name"] | `parameterName[@js "parameter name"] | `docCommentTagName[@js "doc comment tag name"] | `jsxOpenTagName[@js "jsx open tag name"] | `jsxCloseTagName[@js "jsx close tag name"] | `jsxSelfClosingTagName[@js "jsx self closing tag name"] | `jsxAttribute[@js "jsx attribute"] | `jsxText[@js "jsx text"] | `jsxAttributeStringLiteralValue[@js "jsx attribute string literal value"]] [@js.enum]
      and ts_ClassificationTypeNames_comment = [`comment[@js "comment"]] [@js.enum]
      and ts_ClassificationTypeNames_identifier = [`identifier[@js "identifier"]] [@js.enum]
      and ts_ClassificationTypeNames_keyword = [`keyword[@js "keyword"]] [@js.enum]
      and ts_ClassificationTypeNames_numericLiteral = [`numericLiteral[@js "number"]] [@js.enum]
      and ts_ClassificationTypeNames_bigintLiteral = [`bigintLiteral[@js "bigint"]] [@js.enum]
      and ts_ClassificationTypeNames_operator = [`operator[@js "operator"]] [@js.enum]
      and ts_ClassificationTypeNames_stringLiteral = [`stringLiteral[@js "string"]] [@js.enum]
      and ts_ClassificationTypeNames_whiteSpace = [`whiteSpace[@js "whitespace"]] [@js.enum]
      and ts_ClassificationTypeNames_text = [`text[@js "text"]] [@js.enum]
      and ts_ClassificationTypeNames_punctuation = [`punctuation[@js "punctuation"]] [@js.enum]
      and ts_ClassificationTypeNames_className = [`className[@js "class name"]] [@js.enum]
      and ts_ClassificationTypeNames_enumName = [`enumName[@js "enum name"]] [@js.enum]
      and ts_ClassificationTypeNames_interfaceName = [`interfaceName[@js "interface name"]] [@js.enum]
      and ts_ClassificationTypeNames_moduleName = [`moduleName[@js "module name"]] [@js.enum]
      and ts_ClassificationTypeNames_typeParameterName = [`typeParameterName[@js "type parameter name"]] [@js.enum]
      and ts_ClassificationTypeNames_typeAliasName = [`typeAliasName[@js "type alias name"]] [@js.enum]
      and ts_ClassificationTypeNames_parameterName = [`parameterName[@js "parameter name"]] [@js.enum]
      and ts_ClassificationTypeNames_docCommentTagName = [`docCommentTagName[@js "doc comment tag name"]] [@js.enum]
      and ts_ClassificationTypeNames_jsxOpenTagName = [`jsxOpenTagName[@js "jsx open tag name"]] [@js.enum]
      and ts_ClassificationTypeNames_jsxCloseTagName = [`jsxCloseTagName[@js "jsx close tag name"]] [@js.enum]
      and ts_ClassificationTypeNames_jsxSelfClosingTagName = [`jsxSelfClosingTagName[@js "jsx self closing tag name"]] [@js.enum]
      and ts_ClassificationTypeNames_jsxAttribute = [`jsxAttribute[@js "jsx attribute"]] [@js.enum]
      and ts_ClassificationTypeNames_jsxText = [`jsxText[@js "jsx text"]] [@js.enum]
      and ts_ClassificationTypeNames_jsxAttributeStringLiteralValue = [`jsxAttributeStringLiteralValue[@js "jsx attribute string literal value"]] [@js.enum]
      and ts_Classifications = [`Ts_Classifications] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ClassifiedSpan = [`Ts_ClassifiedSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Classifier = [`Ts_Classifier] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CodeAction = [`Ts_CodeAction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CodeActionCommand = ts_InstallPackageAction
      and ts_CodeFixAction = [`Ts_CodeFixAction | `Ts_CodeAction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ColonToken = ts_SyntaxKind_ColonToken ts_Token
      and ts_CombinedCodeActions = [`Ts_CombinedCodeActions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CombinedCodeFixScope = [`Ts_CombinedCodeFixScope] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CommaListExpression = [`Ts_CommaListExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CommentKind = ((ts_SyntaxKind_MultiLineCommentTrivia, ts_SyntaxKind_SingleLineCommentTrivia) or_, ([`MultiLineCommentTrivia[@js 3] | `SingleLineCommentTrivia[@js 2]] [@js.enum])) or_enum
      and ts_CommentRange = [`Ts_CommentRange | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CompilerHost = [`Ts_CompilerHost | `Ts_ModuleResolutionHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CompilerOptions = [`Ts_CompilerOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CompilerOptionsValue = (string list ts_MapLike, (ts_PluginImport, (ts_ProjectReference, (string, float) or_) or_) or_ or_string) or_array or_prim_union or_null_or_undefined
      and ts_CompletionEntry = [`Ts_CompletionEntry] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CompletionEntryDetails = [`Ts_CompletionEntryDetails] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CompletionInfo = [`Ts_CompletionInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CompletionsTriggerCharacter = ([`L_s1[@js "\""] | `L_s2[@js "#"] | `L_s3[@js "\'"] | `L_s7[@js "."] | `L_s15[@js "/"] | `L_s16[@js "<"] | `L_s17[@js "@"] | `L_s33[@js "`"]] [@js.enum])
      and ts_CompoundAssignmentOperator = ((ts_SyntaxKind_AmpersandEqualsToken, (ts_SyntaxKind_AsteriskAsteriskEqualsToken, (ts_SyntaxKind_AsteriskEqualsToken, (ts_SyntaxKind_BarEqualsToken, (ts_SyntaxKind_CaretEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_LessThanLessThanEqualsToken, (ts_SyntaxKind_MinusEqualsToken, (ts_SyntaxKind_PercentEqualsToken, (ts_SyntaxKind_PlusEqualsToken, ts_SyntaxKind_SlashEqualsToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandEqualsToken[@js 72] | `AsteriskAsteriskEqualsToken[@js 66] | `AsteriskEqualsToken[@js 65] | `BarEqualsToken[@js 73] | `CaretEqualsToken[@js 74] | `GreaterThanGreaterThanEqualsToken[@js 70] | `GreaterThanGreaterThanGreaterThanEqualsToken[@js 71] | `LessThanLessThanEqualsToken[@js 69] | `MinusEqualsToken[@js 64] | `PercentEqualsToken[@js 68] | `PlusEqualsToken[@js 63] | `SlashEqualsToken[@js 67]] [@js.enum])) or_enum
      and ts_ComputedPropertyName = [`Ts_ComputedPropertyName | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConciseBody = (([`U_n_223 of (ts_Block, ts_Block, ts_Block) union3 [@js 223]] [@js.union on_field "kind"]), (ts_Block, (ts_Expression, ts_FunctionBody) or_) or_) or_
      and ts_ConditionalExpression = [`Ts_ConditionalExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConditionalRoot = [`Ts_ConditionalRoot] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConditionalType = [`Ts_ConditionalType | `Ts_InstantiableType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConditionalTypeNode = [`Ts_ConditionalTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConfigFileDiagnosticsReporter = [`Ts_ConfigFileDiagnosticsReporter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConstructSignatureDeclaration = [`Ts_ConstructSignatureDeclaration | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeElement] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConstructorDeclaration = [`Ts_ConstructorDeclaration | `Ts_ClassElement | `Ts_Declaration | `Ts_FunctionLikeDeclarationBase | `Ts_JSDocContainer | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ConstructorTypeNode = [`Ts_ConstructorTypeNode | `Ts_Declaration | `Ts_FunctionOrConstructorTypeNodeBase | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ContinueStatement = [`Ts_ContinueStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_CreateProgram = [`Ts_CreateProgram of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_CreateProgramOptions = [`Ts_CreateProgramOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CustomTransformer = [`Ts_CustomTransformer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CustomTransformerFactory = [`Ts_CustomTransformerFactory] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_CustomTransformers = [`Ts_CustomTransformers] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DebuggerStatement = [`Ts_DebuggerStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Declaration = [`Ts_Declaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DeclarationName = (([`U_n_8 of (ts_NumericLiteral, ts_NumericLiteral) union2 [@js 8] | `U_n_10 of (ts_StringLiteral, ts_StringLiteral, ts_StringLiteral) union3 [@js 10] | `U_n_14 of (ts_NoSubstitutionTemplateLiteral, ts_NoSubstitutionTemplateLiteral, ts_NoSubstitutionTemplateLiteral) union3 [@js 14] | `U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier) union5 [@js 75] | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 [@js 76] | `U_n_154 of (ts_ComputedPropertyName, ts_ComputedPropertyName) union2 [@js 154] | `U_n_189 of (ts_ObjectBindingPattern, ts_ObjectBindingPattern, ts_ObjectBindingPattern) union3 [@js 189] | `U_n_190 of (ts_ArrayBindingPattern, ts_ArrayBindingPattern, ts_ArrayBindingPattern) union3 [@js 190] | `U_n_194 of (ts_PropertyAccessEntityNameExpression, ts_PropertyAccessEntityNameExpression, ts_PropertyAccessEntityNameExpression) union3 [@js 194] | `U_n_195 of (ts_ElementAccessExpression, ts_ElementAccessExpression) union2 [@js 195]] [@js.union on_field "kind"]), (ts_ArrayBindingPattern, (ts_BindingPattern, (ts_ComputedPropertyName, (ts_ElementAccessExpression, (ts_EntityNameExpression, (ts_Identifier, (ts_Identifier, (ts_NoSubstitutionTemplateLiteral, (ts_NumericLiteral, (ts_ObjectBindingPattern, (ts_PrivateIdentifier, (ts_PropertyAccessEntityNameExpression, (ts_StringLiteral, ts_StringLiteralLike) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_DeclarationStatement = [`Ts_DeclarationStatement | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DeclarationWithTypeParameterChildren = (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union3 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union3 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union3 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union4 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union4 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union3 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union3 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union3 [@js 167] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union3 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union3 [@js 171] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union3 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union3 [@js 202] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3 [@js 214] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union3 [@js 244] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 [@js 245] | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration) union2 [@js 246] | `U_n_247 of (ts_TypeAliasDeclaration, ts_TypeAliasDeclaration) union2 [@js 247] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union3 [@js 300] | `U_n_320 of (ts_JSDocTemplateTag, ts_JSDocTemplateTag) union2 [@js 320]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_InterfaceDeclaration, (ts_JSDocFunctionType, (ts_JSDocTemplateTag, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, (ts_SignatureDeclaration, ts_TypeAliasDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_DeclarationWithTypeParameters = (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union4 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union4 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union4 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union5 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union5 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union4 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union4 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union4 [@js 167] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union4 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union4 [@js 171] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union4 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union4 [@js 202] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union4 [@js 214] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union4 [@js 244] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union4 [@js 245] | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration, ts_InterfaceDeclaration) union3 [@js 246] | `U_n_247 of (ts_TypeAliasDeclaration, ts_TypeAliasDeclaration, ts_TypeAliasDeclaration) union3 [@js 247] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union4 [@js 300] | `U_n_305 of (ts_JSDocSignature, ts_JSDocSignature) union2 [@js 305] | `U_n_314 of (ts_JSDocCallbackTag, ts_JSDocCallbackTag) union2 [@js 314] | `U_n_320 of (ts_JSDocTemplateTag, ts_JSDocTemplateTag, ts_JSDocTemplateTag) union3 [@js 320] | `U_n_321 of (ts_JSDocTypedefTag, ts_JSDocTypedefTag) union2 [@js 321]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_DeclarationWithTypeParameterChildren, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_InterfaceDeclaration, (ts_JSDocCallbackTag, (ts_JSDocFunctionType, (ts_JSDocSignature, (ts_JSDocTemplateTag, (ts_JSDocTypedefTag, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, (ts_SignatureDeclaration, ts_TypeAliasDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_Decorator = [`Ts_Decorator | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DefaultClause = [`Ts_DefaultClause | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DeferredTypeReference = [`Ts_DeferredTypeReference | `Ts_ObjectType | `Ts_Type | `Ts_TypeReference] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DefinitionInfo = [`Ts_DefinitionInfo | `Ts_DocumentSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DefinitionInfoAndBoundSpan = [`Ts_DefinitionInfoAndBoundSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DeleteExpression = [`Ts_DeleteExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DestructuringAssignment = (([`U_n_209 of (ts_ArrayDestructuringAssignment, ts_ArrayDestructuringAssignment, ts_ObjectDestructuringAssignment, ts_ObjectDestructuringAssignment) union4 [@js 209]] [@js.union on_field "kind"]), (ts_ArrayDestructuringAssignment, ts_ObjectDestructuringAssignment) or_) or_
      and ts_DestructuringPattern = (([`U_n_189 of (ts_ObjectBindingPattern, ts_ObjectBindingPattern, ts_ObjectBindingPattern) union3 [@js 189] | `U_n_190 of (ts_ArrayBindingPattern, ts_ArrayBindingPattern, ts_ArrayBindingPattern) union3 [@js 190] | `U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2 [@js 192] | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193]] [@js.union on_field "kind"]), (ts_ArrayBindingPattern, (ts_ArrayLiteralExpression, (ts_BindingPattern, (ts_ObjectBindingPattern, ts_ObjectLiteralExpression) or_) or_) or_) or_) or_
      and ts_Diagnostic = [`Ts_Diagnostic | `Ts_DiagnosticRelatedInformation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DiagnosticCategory = [`Warning[@js 0] | `Error[@js 1] | `Suggestion[@js 2] | `Message[@js 3]] [@js.enum]
      and ts_DiagnosticCategory_Warning = [`Warning[@js 0]] [@js.enum]
      and ts_DiagnosticCategory_Error = [`Error[@js 1]] [@js.enum]
      and ts_DiagnosticCategory_Suggestion = [`Suggestion[@js 2]] [@js.enum]
      and ts_DiagnosticCategory_Message = [`Message[@js 3]] [@js.enum]
      and ts_DiagnosticMessage = [`Ts_DiagnosticMessage] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DiagnosticMessageChain = [`Ts_DiagnosticMessageChain] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DiagnosticRelatedInformation = [`Ts_DiagnosticRelatedInformation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DiagnosticReporter = [`Ts_DiagnosticReporter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DiagnosticWithLocation = [`Ts_DiagnosticWithLocation | `Ts_Diagnostic | `Ts_DiagnosticRelatedInformation] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DirectoryWatcherCallback = [`Ts_DirectoryWatcherCallback] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DoStatement = [`Ts_DoStatement | `Ts_IterationStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DocumentHighlights = [`Ts_DocumentHighlights] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DocumentRegistry = [`Ts_DocumentRegistry] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DocumentRegistryBucketKey = (string, anonymous_interface_1) intersection2
      and ts_DocumentSpan = [`Ts_DocumentSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_DotDotDotToken = ts_SyntaxKind_DotDotDotToken ts_Token
      and ts_DotToken = ts_SyntaxKind_DotToken ts_Token
      and ts_EditorOptions = [`Ts_EditorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EditorSettings = [`Ts_EditorSettings] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ElementAccessChain = [`Ts_ElementAccessChain | `Ts_ElementAccessExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ElementAccessExpression = [`Ts_ElementAccessExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EmitAndSemanticDiagnosticsBuilderProgram = [`Ts_EmitAndSemanticDiagnosticsBuilderProgram | `Ts_BuilderProgram | `Ts_SemanticDiagnosticsBuilderProgram] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EmitFlags = [`None[@js 0] | `SingleLine[@js 1] | `AdviseOnEmitNode[@js 2] | `NoSubstitution[@js 4] | `CapturesThis[@js 8] | `NoLeadingSourceMap[@js 16] | `NoTrailingSourceMap[@js 32] | `NoSourceMap[@js 48] | `NoNestedSourceMaps[@js 64] | `NoTokenLeadingSourceMaps[@js 128] | `NoTokenTrailingSourceMaps[@js 256] | `NoTokenSourceMaps[@js 384] | `NoLeadingComments[@js 512] | `NoTrailingComments[@js 1024] | `NoComments[@js 1536] | `NoNestedComments[@js 2048] | `HelperName[@js 4096] | `ExportName[@js 8192] | `LocalName[@js 16384] | `InternalName[@js 32768] | `Indented[@js 65536] | `NoIndentation[@js 131072] | `AsyncFunctionBody[@js 262144] | `ReuseTempVariableScope[@js 524288] | `CustomPrologue[@js 1048576] | `NoHoisting[@js 2097152] | `HasEndOfDeclarationMarker[@js 4194304] | `Iterator[@js 8388608] | `NoAsciiEscaping[@js 16777216]] [@js.enum]
      and ts_EmitFlags_None = [`None[@js 0]] [@js.enum]
      and ts_EmitFlags_SingleLine = [`SingleLine[@js 1]] [@js.enum]
      and ts_EmitFlags_AdviseOnEmitNode = [`AdviseOnEmitNode[@js 2]] [@js.enum]
      and ts_EmitFlags_NoSubstitution = [`NoSubstitution[@js 4]] [@js.enum]
      and ts_EmitFlags_CapturesThis = [`CapturesThis[@js 8]] [@js.enum]
      and ts_EmitFlags_NoLeadingSourceMap = [`NoLeadingSourceMap[@js 16]] [@js.enum]
      and ts_EmitFlags_NoTrailingSourceMap = [`NoTrailingSourceMap[@js 32]] [@js.enum]
      and ts_EmitFlags_NoSourceMap = [`NoSourceMap[@js 48]] [@js.enum]
      and ts_EmitFlags_NoNestedSourceMaps = [`NoNestedSourceMaps[@js 64]] [@js.enum]
      and ts_EmitFlags_NoTokenLeadingSourceMaps = [`NoTokenLeadingSourceMaps[@js 128]] [@js.enum]
      and ts_EmitFlags_NoTokenTrailingSourceMaps = [`NoTokenTrailingSourceMaps[@js 256]] [@js.enum]
      and ts_EmitFlags_NoTokenSourceMaps = [`NoTokenSourceMaps[@js 384]] [@js.enum]
      and ts_EmitFlags_NoLeadingComments = [`NoLeadingComments[@js 512]] [@js.enum]
      and ts_EmitFlags_NoTrailingComments = [`NoTrailingComments[@js 1024]] [@js.enum]
      and ts_EmitFlags_NoComments = [`NoComments[@js 1536]] [@js.enum]
      and ts_EmitFlags_NoNestedComments = [`NoNestedComments[@js 2048]] [@js.enum]
      and ts_EmitFlags_HelperName = [`HelperName[@js 4096]] [@js.enum]
      and ts_EmitFlags_ExportName = [`ExportName[@js 8192]] [@js.enum]
      and ts_EmitFlags_LocalName = [`LocalName[@js 16384]] [@js.enum]
      and ts_EmitFlags_InternalName = [`InternalName[@js 32768]] [@js.enum]
      and ts_EmitFlags_Indented = [`Indented[@js 65536]] [@js.enum]
      and ts_EmitFlags_NoIndentation = [`NoIndentation[@js 131072]] [@js.enum]
      and ts_EmitFlags_AsyncFunctionBody = [`AsyncFunctionBody[@js 262144]] [@js.enum]
      and ts_EmitFlags_ReuseTempVariableScope = [`ReuseTempVariableScope[@js 524288]] [@js.enum]
      and ts_EmitFlags_CustomPrologue = [`CustomPrologue[@js 1048576]] [@js.enum]
      and ts_EmitFlags_NoHoisting = [`NoHoisting[@js 2097152]] [@js.enum]
      and ts_EmitFlags_HasEndOfDeclarationMarker = [`HasEndOfDeclarationMarker[@js 4194304]] [@js.enum]
      and ts_EmitFlags_Iterator = [`Iterator[@js 8388608]] [@js.enum]
      and ts_EmitFlags_NoAsciiEscaping = [`NoAsciiEscaping[@js 16777216]] [@js.enum]
      and ts_EmitHelper = [`Ts_EmitHelper] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EmitHelperUniqueNameCallback = [`Ts_EmitHelperUniqueNameCallback] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EmitHint = [`SourceFile[@js 0] | `Expression[@js 1] | `IdentifierName[@js 2] | `MappedTypeParameter[@js 3] | `Unspecified[@js 4] | `EmbeddedStatement[@js 5] | `JsxAttributeValue[@js 6]] [@js.enum]
      and ts_EmitHint_SourceFile = [`SourceFile[@js 0]] [@js.enum]
      and ts_EmitHint_Expression = [`Expression[@js 1]] [@js.enum]
      and ts_EmitHint_IdentifierName = [`IdentifierName[@js 2]] [@js.enum]
      and ts_EmitHint_MappedTypeParameter = [`MappedTypeParameter[@js 3]] [@js.enum]
      and ts_EmitHint_Unspecified = [`Unspecified[@js 4]] [@js.enum]
      and ts_EmitHint_EmbeddedStatement = [`EmbeddedStatement[@js 5]] [@js.enum]
      and ts_EmitHint_JsxAttributeValue = [`JsxAttributeValue[@js 6]] [@js.enum]
      and ts_EmitOutput = [`Ts_EmitOutput] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EmitResult = [`Ts_EmitResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EmptyStatement = [`Ts_EmptyStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EndOfFileToken = (ts_SyntaxKind_EndOfFileToken ts_Token, ts_JSDocContainer) intersection2
      and ts_EndOfLineState = [`None[@js 0] | `InMultiLineCommentTrivia[@js 1] | `InSingleQuoteStringLiteral[@js 2] | `InDoubleQuoteStringLiteral[@js 3] | `InTemplateHeadOrNoSubstitutionTemplate[@js 4] | `InTemplateMiddleOrTail[@js 5] | `InTemplateSubstitutionPosition[@js 6]] [@js.enum]
      and ts_EndOfLineState_None = [`None[@js 0]] [@js.enum]
      and ts_EndOfLineState_InMultiLineCommentTrivia = [`InMultiLineCommentTrivia[@js 1]] [@js.enum]
      and ts_EndOfLineState_InSingleQuoteStringLiteral = [`InSingleQuoteStringLiteral[@js 2]] [@js.enum]
      and ts_EndOfLineState_InDoubleQuoteStringLiteral = [`InDoubleQuoteStringLiteral[@js 3]] [@js.enum]
      and ts_EndOfLineState_InTemplateHeadOrNoSubstitutionTemplate = [`InTemplateHeadOrNoSubstitutionTemplate[@js 4]] [@js.enum]
      and ts_EndOfLineState_InTemplateMiddleOrTail = [`InTemplateMiddleOrTail[@js 5]] [@js.enum]
      and ts_EndOfLineState_InTemplateSubstitutionPosition = [`InTemplateSubstitutionPosition[@js 6]] [@js.enum]
      and ts_EntityName = (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_153 of (ts_QualifiedName, ts_QualifiedName) union2 [@js 153]] [@js.union on_field "kind"]), (ts_Identifier, ts_QualifiedName) or_) or_
      and ts_EntityNameExpression = (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_194 of (ts_PropertyAccessEntityNameExpression, ts_PropertyAccessEntityNameExpression) union2 [@js 194]] [@js.union on_field "kind"]), (ts_Identifier, ts_PropertyAccessEntityNameExpression) or_) or_
      and ts_EntityNameOrEntityNameExpression = (([`U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier) union6 [@js 75] | `U_n_153 of (ts_QualifiedName, ts_QualifiedName, ts_QualifiedName) union3 [@js 153] | `U_n_194 of (ts_PropertyAccessEntityNameExpression, ts_PropertyAccessEntityNameExpression, ts_PropertyAccessEntityNameExpression) union3 [@js 194]] [@js.union on_field "kind"]), (ts_EntityName, (ts_EntityNameExpression, (ts_Identifier, (ts_Identifier, (ts_PropertyAccessEntityNameExpression, ts_QualifiedName) or_) or_) or_) or_) or_) or_
      and ts_EnumDeclaration = [`Ts_EnumDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EnumMember = [`Ts_EnumMember | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EnumType = [`Ts_EnumType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EqualityOperator = ((ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, ts_SyntaxKind_ExclamationEqualsToken) or_) or_) or_, ([`EqualsEqualsEqualsToken[@js 36] | `EqualsEqualsToken[@js 34] | `ExclamationEqualsEqualsToken[@js 37] | `ExclamationEqualsToken[@js 35]] [@js.enum])) or_enum
      and ts_EqualityOperatorOrHigher = ((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_EqualityOperator, (ts_ExponentiationOperator, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_RelationalOperatorOrHigher, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AsteriskAsteriskToken[@js 42] | `AsteriskToken[@js 41] | `EqualsEqualsEqualsToken[@js 36] | `EqualsEqualsToken[@js 34] | `ExclamationEqualsEqualsToken[@js 37] | `ExclamationEqualsToken[@js 35] | `GreaterThanEqualsToken[@js 33] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `GreaterThanToken[@js 31] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `LessThanEqualsToken[@js 32] | `LessThanLessThanToken[@js 47] | `LessThanToken[@js 29] | `MinusToken[@js 40] | `PercentToken[@js 44] | `PlusToken[@js 39] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_EqualsGreaterThanToken = ts_SyntaxKind_EqualsGreaterThanToken ts_Token
      and ts_EqualsToken = ts_SyntaxKind_EqualsToken ts_Token
      and ts_ErrorCallback = [`Ts_ErrorCallback] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_EvolvingArrayType = [`Ts_EvolvingArrayType | `Ts_ObjectType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ExclamationToken = ts_SyntaxKind_ExclamationToken ts_Token
      and ts_ExitStatus = [`Success[@js 0] | `DiagnosticsPresent_OutputsSkipped[@js 1] | `DiagnosticsPresent_OutputsGenerated[@js 2] | `InvalidProject_OutputsSkipped[@js 3] | `ProjectReferenceCycle_OutputsSkipped[@js 4]] [@js.enum]
      and ts_ExitStatus_Success = [`Success[@js 0]] [@js.enum]
      and ts_ExitStatus_DiagnosticsPresent_OutputsSkipped = [`DiagnosticsPresent_OutputsSkipped[@js 1]] [@js.enum]
      and ts_ExitStatus_DiagnosticsPresent_OutputsGenerated = [`DiagnosticsPresent_OutputsGenerated[@js 2]] [@js.enum]
      and ts_ExitStatus_InvalidProject_OutputsSkipped = [`InvalidProject_OutputsSkipped[@js 3]] [@js.enum]
      and ts_ExitStatus_ProjectReferenceCycle_OutputsSkipped = [`ProjectReferenceCycle_OutputsSkipped[@js 4]] [@js.enum]
      and ts_ExpandResult = [`Ts_ExpandResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ExponentiationOperator = ts_SyntaxKind_AsteriskAsteriskToken
      and ts_ExportAssignment = [`Ts_ExportAssignment | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ExportDeclaration = [`Ts_ExportDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ExportSpecifier = [`Ts_ExportSpecifier | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Expression = [`Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ExpressionStatement = [`Ts_ExpressionStatement | `Ts_JSDocContainer | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ExpressionWithTypeArguments = [`Ts_ExpressionWithTypeArguments | `Ts_Node | `Ts_NodeWithTypeArguments | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ExtendedConfigCacheEntry = [`Ts_ExtendedConfigCacheEntry] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Extension = [`Ts[@js ".ts"] | `Tsx[@js ".tsx"] | `Dts[@js ".d.ts"] | `Js[@js ".js"] | `Jsx[@js ".jsx"] | `Json[@js ".json"] | `TsBuildInfo[@js ".tsbuildinfo"]] [@js.enum]
      and ts_Extension_Ts = [`Ts[@js ".ts"]] [@js.enum]
      and ts_Extension_Tsx = [`Tsx[@js ".tsx"]] [@js.enum]
      and ts_Extension_Dts = [`Dts[@js ".d.ts"]] [@js.enum]
      and ts_Extension_Js = [`Js[@js ".js"]] [@js.enum]
      and ts_Extension_Jsx = [`Jsx[@js ".jsx"]] [@js.enum]
      and ts_Extension_Json = [`Json[@js ".json"]] [@js.enum]
      and ts_Extension_TsBuildInfo = [`TsBuildInfo[@js ".tsbuildinfo"]] [@js.enum]
      and ts_ExternalModuleReference = [`Ts_ExternalModuleReference | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FileExtensionInfo = [`Ts_FileExtensionInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FileReference = [`Ts_FileReference | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FileTextChanges = [`Ts_FileTextChanges] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FileWatcher = [`Ts_FileWatcher] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FileWatcherCallback = [`Ts_FileWatcherCallback] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FileWatcherEventKind = [`Created[@js 0] | `Changed[@js 1] | `Deleted[@js 2]] [@js.enum]
      and ts_FileWatcherEventKind_Created = [`Created[@js 0]] [@js.enum]
      and ts_FileWatcherEventKind_Changed = [`Changed[@js 1]] [@js.enum]
      and ts_FileWatcherEventKind_Deleted = [`Deleted[@js 2]] [@js.enum]
      and ts_FlowArrayMutation = [`Ts_FlowArrayMutation | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowAssignment = [`Ts_FlowAssignment | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowCall = [`Ts_FlowCall | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowCondition = [`Ts_FlowCondition | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowFlags = [`Unreachable[@js 1] | `Start[@js 2] | `BranchLabel[@js 4] | `LoopLabel[@js 8] | `Assignment[@js 16] | `TrueCondition[@js 32] | `FalseCondition[@js 64] | `SwitchClause[@js 128] | `ArrayMutation[@js 256] | `Call[@js 512] | `Referenced[@js 1024] | `Shared[@js 2048] | `PreFinally[@js 4096] | `AfterFinally[@js 8192] | `Label[@js 12] | `Condition[@js 96]] [@js.enum]
      and ts_FlowFlags_Unreachable = [`Unreachable[@js 1]] [@js.enum]
      and ts_FlowFlags_Start = [`Start[@js 2]] [@js.enum]
      and ts_FlowFlags_BranchLabel = [`BranchLabel[@js 4]] [@js.enum]
      and ts_FlowFlags_LoopLabel = [`LoopLabel[@js 8]] [@js.enum]
      and ts_FlowFlags_Assignment = [`Assignment[@js 16]] [@js.enum]
      and ts_FlowFlags_TrueCondition = [`TrueCondition[@js 32]] [@js.enum]
      and ts_FlowFlags_FalseCondition = [`FalseCondition[@js 64]] [@js.enum]
      and ts_FlowFlags_SwitchClause = [`SwitchClause[@js 128]] [@js.enum]
      and ts_FlowFlags_ArrayMutation = [`ArrayMutation[@js 256]] [@js.enum]
      and ts_FlowFlags_Call = [`Call[@js 512]] [@js.enum]
      and ts_FlowFlags_Referenced = [`Referenced[@js 1024]] [@js.enum]
      and ts_FlowFlags_Shared = [`Shared[@js 2048]] [@js.enum]
      and ts_FlowFlags_PreFinally = [`PreFinally[@js 4096]] [@js.enum]
      and ts_FlowFlags_AfterFinally = [`AfterFinally[@js 8192]] [@js.enum]
      and ts_FlowFlags_Label = [`Label[@js 12]] [@js.enum]
      and ts_FlowFlags_Condition = [`Condition[@js 96]] [@js.enum]
      and ts_FlowLabel = [`Ts_FlowLabel | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowLock = [`Ts_FlowLock] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowNode = (ts_AfterFinallyFlow, (ts_FlowArrayMutation, (ts_FlowAssignment, (ts_FlowCall, (ts_FlowCondition, (ts_FlowLabel, (ts_FlowStart, (ts_FlowSwitchClause, ts_PreFinallyFlow) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_FlowNodeBase = [`Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowStart = [`Ts_FlowStart | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowSwitchClause = [`Ts_FlowSwitchClause | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FlowType = (ts_IncompleteType, ts_Type) or_
      and ts_ForInOrOfStatement = (([`U_n_231 of (ts_ForInStatement, ts_ForInStatement) union2 [@js 231] | `U_n_232 of (ts_ForOfStatement, ts_ForOfStatement) union2 [@js 232]] [@js.union on_field "kind"]), (ts_ForInStatement, ts_ForOfStatement) or_) or_
      and ts_ForInStatement = [`Ts_ForInStatement | `Ts_IterationStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ForInitializer = (([`U_n_243 of (ts_VariableDeclarationList, ts_VariableDeclarationList) union2 [@js 243]] [@js.union on_field "kind"]), (ts_Expression, ts_VariableDeclarationList) or_) or_
      and ts_ForOfStatement = [`Ts_ForOfStatement | `Ts_IterationStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ForStatement = [`Ts_ForStatement | `Ts_IterationStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FormatCodeOptions = [`Ts_FormatCodeOptions | `Ts_EditorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FormatCodeSettings = [`Ts_FormatCodeSettings | `Ts_EditorSettings] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FormatDiagnosticsHost = [`Ts_FormatDiagnosticsHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FunctionBody = ts_Block
      and ts_FunctionDeclaration = [`Ts_FunctionDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_FunctionLikeDeclarationBase | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FunctionExpression = [`Ts_FunctionExpression | `Ts_Declaration | `Ts_Expression | `Ts_FunctionLikeDeclarationBase | `Ts_JSDocContainer | `Ts_JSDocContainer | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FunctionLike = ts_SignatureDeclaration
      and ts_FunctionLikeDeclaration = (([`U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration) union2 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration) union2 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union2 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union2 [@js 164] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression) union2 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction) union2 [@js 202] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration) union2 [@js 244]] [@js.union on_field "kind"]), (ts_ArrowFunction, (ts_ConstructorDeclaration, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_GetAccessorDeclaration, (ts_MethodDeclaration, ts_SetAccessorDeclaration) or_) or_) or_) or_) or_) or_) or_
      and ts_FunctionLikeDeclarationBase = [`Ts_FunctionLikeDeclarationBase | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FunctionOrConstructorTypeNode = (([`U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode) union2 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode) union2 [@js 171]] [@js.union on_field "kind"]), (ts_ConstructorTypeNode, ts_FunctionTypeNode) or_) or_
      and ts_FunctionOrConstructorTypeNodeBase = [`Ts_FunctionOrConstructorTypeNodeBase | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_FunctionTypeNode = [`Ts_FunctionTypeNode | `Ts_Declaration | `Ts_FunctionOrConstructorTypeNodeBase | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_GenericType = [`Ts_GenericType | `Ts_InterfaceType | `Ts_ObjectType | `Ts_ObjectType | `Ts_Type | `Ts_TypeReference] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_GetAccessorDeclaration = [`Ts_GetAccessorDeclaration | `Ts_ClassElement | `Ts_Declaration | `Ts_FunctionLikeDeclarationBase | `Ts_JSDocContainer | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_SignatureDeclarationBase | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_GetCompletionsAtPositionOptions = [`Ts_GetCompletionsAtPositionOptions | `Ts_UserPreferences] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_GetEffectiveTypeRootsHost = [`Ts_GetEffectiveTypeRootsHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_HasExpressionInitializer = (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_158 of (ts_PropertySignature, ts_PropertySignature) union2 [@js 158] | `U_n_159 of (ts_PropertyDeclaration, ts_PropertyDeclaration) union2 [@js 159] | `U_n_191 of (ts_BindingElement, ts_BindingElement) union2 [@js 191] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242] | `U_n_281 of (ts_PropertyAssignment, ts_PropertyAssignment) union2 [@js 281] | `U_n_284 of (ts_EnumMember, ts_EnumMember) union2 [@js 284]] [@js.union on_field "kind"]), (ts_BindingElement, (ts_EnumMember, (ts_ParameterDeclaration, (ts_PropertyAssignment, (ts_PropertyDeclaration, (ts_PropertySignature, ts_VariableDeclaration) or_) or_) or_) or_) or_) or_) or_
      and ts_HasInitializer = (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration, ts_ParameterDeclaration) union3 [@js 156] | `U_n_158 of (ts_PropertySignature, ts_PropertySignature, ts_PropertySignature) union3 [@js 158] | `U_n_159 of (ts_PropertyDeclaration, ts_PropertyDeclaration, ts_PropertyDeclaration) union3 [@js 159] | `U_n_191 of (ts_BindingElement, ts_BindingElement, ts_BindingElement) union3 [@js 191] | `U_n_230 of (ts_ForStatement, ts_ForStatement) union2 [@js 230] | `U_n_231 of (ts_ForInStatement, ts_ForInStatement) union2 [@js 231] | `U_n_232 of (ts_ForOfStatement, ts_ForOfStatement) union2 [@js 232] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration, ts_VariableDeclaration) union3 [@js 242] | `U_n_273 of (ts_JsxAttribute, ts_JsxAttribute) union2 [@js 273] | `U_n_281 of (ts_PropertyAssignment, ts_PropertyAssignment, ts_PropertyAssignment) union3 [@js 281] | `U_n_284 of (ts_EnumMember, ts_EnumMember, ts_EnumMember) union3 [@js 284]] [@js.union on_field "kind"]), (ts_BindingElement, (ts_EnumMember, (ts_ForInStatement, (ts_ForOfStatement, (ts_ForStatement, (ts_HasExpressionInitializer, (ts_JsxAttribute, (ts_ParameterDeclaration, (ts_PropertyAssignment, (ts_PropertyDeclaration, (ts_PropertySignature, ts_VariableDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_HasJSDoc = (([`U_n_1 of (ts_SyntaxKind_EndOfFileToken ts_Token, ts_SyntaxKind_EndOfFileToken ts_Token, (ts_SyntaxKind_EndOfFileToken ts_Token, ts_JSDocContainer) intersection2) union3 [@js 1] | `U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_158 of (ts_PropertySignature, ts_PropertySignature) union2 [@js 158] | `U_n_159 of (ts_PropertyDeclaration, ts_PropertyDeclaration) union2 [@js 159] | `U_n_160 of (ts_MethodSignature, ts_MethodSignature) union2 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration) union2 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration) union2 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union3 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union3 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union2 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union2 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union2 [@js 167] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode) union2 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode) union2 [@js 171] | `U_n_200 of (ts_ParenthesizedExpression, ts_ParenthesizedExpression) union2 [@js 200] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression) union2 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction) union2 [@js 202] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3 [@js 214] | `U_n_225 of (ts_VariableStatement, ts_VariableStatement) union2 [@js 225] | `U_n_226 of (ts_ExpressionStatement, ts_ExpressionStatement) union2 [@js 226] | `U_n_238 of (ts_LabeledStatement, ts_LabeledStatement) union2 [@js 238] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration) union2 [@js 244] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 [@js 245] | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration) union2 [@js 246] | `U_n_247 of (ts_TypeAliasDeclaration, ts_TypeAliasDeclaration) union2 [@js 247] | `U_n_248 of (ts_EnumDeclaration, ts_EnumDeclaration) union2 [@js 248] | `U_n_249 of (ts_ModuleDeclaration, ts_ModuleDeclaration) union2 [@js 249] | `U_n_253 of (ts_ImportEqualsDeclaration, ts_ImportEqualsDeclaration) union2 [@js 253] | `U_n_260 of (ts_ExportDeclaration, ts_ExportDeclaration) union2 [@js 260] | `U_n_281 of (ts_PropertyAssignment, ts_PropertyAssignment) union2 [@js 281] | `U_n_282 of (ts_ShorthandPropertyAssignment, ts_ShorthandPropertyAssignment) union2 [@js 282] | `U_n_283 of (ts_SpreadAssignment, ts_SpreadAssignment) union2 [@js 283] | `U_n_284 of (ts_EnumMember, ts_EnumMember) union2 [@js 284] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType) union2 [@js 300]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_EndOfFileToken, (ts_EnumDeclaration, (ts_EnumMember, (ts_ExportDeclaration, (ts_ExpressionStatement, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_ImportEqualsDeclaration, (ts_IndexSignatureDeclaration, (ts_InterfaceDeclaration, (ts_JSDocContainer, (ts_JSDocFunctionType, (ts_LabeledStatement, (ts_MethodDeclaration, (ts_MethodSignature, (ts_ModuleDeclaration, (ts_ParameterDeclaration, (ts_ParenthesizedExpression, (ts_PropertyAssignment, (ts_PropertyDeclaration, (ts_PropertySignature, (ts_SetAccessorDeclaration, (ts_ShorthandPropertyAssignment, (ts_SpreadAssignment, (ts_TypeAliasDeclaration, (ts_VariableStatement, ts_SyntaxKind_EndOfFileToken ts_Token) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_HasType = (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_158 of (ts_PropertySignature, ts_PropertySignature) union2 [@js 158] | `U_n_159 of (ts_PropertyDeclaration, ts_PropertyDeclaration) union2 [@js 159] | `U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union3 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union3 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union3 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union4 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union4 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union3 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union3 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union3 [@js 167] | `U_n_168 of (ts_TypePredicateNode, ts_TypePredicateNode) union2 [@js 168] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union3 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union3 [@js 171] | `U_n_182 of (ts_ParenthesizedTypeNode, ts_ParenthesizedTypeNode) union2 [@js 182] | `U_n_184 of (ts_TypeOperatorNode, ts_TypeOperatorNode) union2 [@js 184] | `U_n_186 of (ts_MappedTypeNode, ts_MappedTypeNode) union2 [@js 186] | `U_n_199 of (ts_TypeAssertion, ts_TypeAssertion, ts_TypeAssertion) union3 [@js 199] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union3 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union3 [@js 202] | `U_n_217 of (ts_AsExpression, ts_AsExpression, ts_AsExpression) union3 [@js 217] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union3 [@js 244] | `U_n_247 of (ts_TypeAliasDeclaration, ts_TypeAliasDeclaration) union2 [@js 247] | `U_n_294 of (ts_JSDocTypeExpression, ts_JSDocTypeExpression) union2 [@js 294] | `U_n_297 of (ts_JSDocNullableType, ts_JSDocNullableType) union2 [@js 297] | `U_n_298 of (ts_JSDocNonNullableType, ts_JSDocNonNullableType) union2 [@js 298] | `U_n_299 of (ts_JSDocOptionalType, ts_JSDocOptionalType) union2 [@js 299] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union3 [@js 300] | `U_n_301 of (ts_JSDocVariadicType, ts_JSDocVariadicType) union2 [@js 301]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_AsExpression, (ts_AssertionExpression, (ts_CallSignatureDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_JSDocFunctionType, (ts_JSDocNonNullableType, (ts_JSDocNullableType, (ts_JSDocOptionalType, (ts_JSDocTypeExpression, (ts_JSDocVariadicType, (ts_MappedTypeNode, (ts_MethodDeclaration, (ts_MethodSignature, (ts_ParameterDeclaration, (ts_ParenthesizedTypeNode, (ts_PropertyDeclaration, (ts_PropertySignature, (ts_SetAccessorDeclaration, (ts_SignatureDeclaration, (ts_TypeAliasDeclaration, (ts_TypeAssertion, (ts_TypeOperatorNode, (ts_TypePredicateNode, ts_VariableDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_HasTypeArguments = (([`U_n_196 of (ts_CallExpression, ts_CallExpression) union2 [@js 196] | `U_n_197 of (ts_NewExpression, ts_NewExpression) union2 [@js 197] | `U_n_198 of (ts_TaggedTemplateExpression, ts_TaggedTemplateExpression) union2 [@js 198] | `U_n_267 of (ts_JsxSelfClosingElement, ts_JsxSelfClosingElement) union2 [@js 267] | `U_n_268 of (ts_JsxOpeningElement, ts_JsxOpeningElement) union2 [@js 268]] [@js.union on_field "kind"]), (ts_CallExpression, (ts_JsxOpeningElement, (ts_JsxSelfClosingElement, (ts_NewExpression, ts_TaggedTemplateExpression) or_) or_) or_) or_) or_
      and ts_HeritageClause = [`Ts_HeritageClause | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_HighlightSpan = [`Ts_HighlightSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_HighlightSpanKind = [`none[@js "none"] | `definition[@js "definition"] | `reference[@js "reference"] | `writtenReference[@js "writtenReference"]] [@js.enum]
      and ts_HighlightSpanKind_none = [`none[@js "none"]] [@js.enum]
      and ts_HighlightSpanKind_definition = [`definition[@js "definition"]] [@js.enum]
      and ts_HighlightSpanKind_reference = [`reference[@js "reference"]] [@js.enum]
      and ts_HighlightSpanKind_writtenReference = [`writtenReference[@js "writtenReference"]] [@js.enum]
      and ts_HostCancellationToken = [`Ts_HostCancellationToken] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IScriptSnapshot = [`Ts_IScriptSnapshot] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Identifier = [`Ts_Identifier | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IdentifierTypePredicate = [`Ts_IdentifierTypePredicate | `Ts_TypePredicateBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IfStatement = [`Ts_IfStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImplementationLocation = [`Ts_ImplementationLocation | `Ts_DocumentSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportCall = [`Ts_ImportCall | `Ts_CallExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportClause = [`Ts_ImportClause | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportDeclaration = [`Ts_ImportDeclaration | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportEqualsDeclaration = [`Ts_ImportEqualsDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportExpression = [`Ts_ImportExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportOrExportSpecifier = (([`U_n_258 of (ts_ImportSpecifier, ts_ImportSpecifier) union2 [@js 258] | `U_n_263 of (ts_ExportSpecifier, ts_ExportSpecifier) union2 [@js 263]] [@js.union on_field "kind"]), (ts_ExportSpecifier, ts_ImportSpecifier) or_) or_
      and ts_ImportSpecifier = [`Ts_ImportSpecifier | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportTypeNode = [`Ts_ImportTypeNode | `Ts_Node | `Ts_NodeWithTypeArguments | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ImportsNotUsedAsValues = [`Remove[@js 0] | `Preserve[@js 1] | `Error[@js 2]] [@js.enum]
      and ts_ImportsNotUsedAsValues_Remove = [`Remove[@js 0]] [@js.enum]
      and ts_ImportsNotUsedAsValues_Preserve = [`Preserve[@js 1]] [@js.enum]
      and ts_ImportsNotUsedAsValues_Error = [`Error[@js 2]] [@js.enum]
      and ts_IncompleteType = [`Ts_IncompleteType] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IncrementExpression = ts_UpdateExpression
      and 'T ts_IncrementalProgramOptions = [`Ts_IncrementalProgramOptions of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_IndentStyle = [`None[@js 0] | `Block[@js 1] | `Smart[@js 2]] [@js.enum]
      and ts_IndentStyle_None = [`None[@js 0]] [@js.enum]
      and ts_IndentStyle_Block = [`Block[@js 1]] [@js.enum]
      and ts_IndentStyle_Smart = [`Smart[@js 2]] [@js.enum]
      and ts_IndexInfo = [`Ts_IndexInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IndexKind = [`String[@js 0] | `Number[@js 1]] [@js.enum]
      and ts_IndexKind_String = [`String[@js 0]] [@js.enum]
      and ts_IndexKind_Number = [`Number[@js 1]] [@js.enum]
      and ts_IndexSignatureDeclaration = [`Ts_IndexSignatureDeclaration | `Ts_ClassElement | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeElement] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IndexType = [`Ts_IndexType | `Ts_InstantiableType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IndexedAccessType = [`Ts_IndexedAccessType | `Ts_InstantiableType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IndexedAccessTypeNode = [`Ts_IndexedAccessTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InferTypeNode = [`Ts_InferTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InferencePriority = [`NakedTypeVariable[@js 1] | `HomomorphicMappedType[@js 2] | `PartialHomomorphicMappedType[@js 4] | `MappedTypeConstraint[@js 8] | `ContravariantConditional[@js 16] | `ReturnType[@js 32] | `LiteralKeyof[@js 64] | `NoConstraints[@js 128] | `AlwaysStrict[@js 256] | `MaxValue[@js 512] | `PriorityImpliesCombination[@js 104] | `Circularity[@js -1]] [@js.enum]
      and ts_InferencePriority_NakedTypeVariable = [`NakedTypeVariable[@js 1]] [@js.enum]
      and ts_InferencePriority_HomomorphicMappedType = [`HomomorphicMappedType[@js 2]] [@js.enum]
      and ts_InferencePriority_PartialHomomorphicMappedType = [`PartialHomomorphicMappedType[@js 4]] [@js.enum]
      and ts_InferencePriority_MappedTypeConstraint = [`MappedTypeConstraint[@js 8]] [@js.enum]
      and ts_InferencePriority_ContravariantConditional = [`ContravariantConditional[@js 16]] [@js.enum]
      and ts_InferencePriority_ReturnType = [`ReturnType[@js 32]] [@js.enum]
      and ts_InferencePriority_LiteralKeyof = [`LiteralKeyof[@js 64]] [@js.enum]
      and ts_InferencePriority_NoConstraints = [`NoConstraints[@js 128]] [@js.enum]
      and ts_InferencePriority_AlwaysStrict = [`AlwaysStrict[@js 256]] [@js.enum]
      and ts_InferencePriority_MaxValue = [`MaxValue[@js 512]] [@js.enum]
      and ts_InferencePriority_PriorityImpliesCombination = [`PriorityImpliesCombination[@js 104]] [@js.enum]
      and ts_InferencePriority_Circularity = [`Circularity[@js -1]] [@js.enum]
      and ts_InputFiles = [`Ts_InputFiles | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InstallPackageAction = [`Ts_InstallPackageAction] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InstallPackageOptions = [`Ts_InstallPackageOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InstantiableType = [`Ts_InstantiableType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InterfaceDeclaration = [`Ts_InterfaceDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InterfaceType = [`Ts_InterfaceType | `Ts_ObjectType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InterfaceTypeWithDeclaredMembers = [`Ts_InterfaceTypeWithDeclaredMembers | `Ts_InterfaceType | `Ts_ObjectType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InternalSymbolName = [`Call[@js "__call"] | `Constructor[@js "__constructor"] | `New[@js "__new"] | `Index[@js "__index"] | `ExportStar[@js "__export"] | `Global[@js "__global"] | `Missing[@js "__missing"] | `Type[@js "__type"] | `Object[@js "__object"] | `JSXAttributes[@js "__jsxAttributes"] | `Class[@js "__class"] | `Function[@js "__function"] | `Computed[@js "__computed"] | `Resolving[@js "__resolving__"] | `ExportEquals[@js "export="] | `Default[@js "default"] | `This[@js "this"]] [@js.enum]
      and ts_InternalSymbolName_Call = [`Call[@js "__call"]] [@js.enum]
      and ts_InternalSymbolName_Constructor = [`Constructor[@js "__constructor"]] [@js.enum]
      and ts_InternalSymbolName_New = [`New[@js "__new"]] [@js.enum]
      and ts_InternalSymbolName_Index = [`Index[@js "__index"]] [@js.enum]
      and ts_InternalSymbolName_ExportStar = [`ExportStar[@js "__export"]] [@js.enum]
      and ts_InternalSymbolName_Global = [`Global[@js "__global"]] [@js.enum]
      and ts_InternalSymbolName_Missing = [`Missing[@js "__missing"]] [@js.enum]
      and ts_InternalSymbolName_Type = [`Type[@js "__type"]] [@js.enum]
      and ts_InternalSymbolName_Object = [`Object[@js "__object"]] [@js.enum]
      and ts_InternalSymbolName_JSXAttributes = [`JSXAttributes[@js "__jsxAttributes"]] [@js.enum]
      and ts_InternalSymbolName_Class = [`Class[@js "__class"]] [@js.enum]
      and ts_InternalSymbolName_Function = [`Function[@js "__function"]] [@js.enum]
      and ts_InternalSymbolName_Computed = [`Computed[@js "__computed"]] [@js.enum]
      and ts_InternalSymbolName_Resolving = [`Resolving[@js "__resolving__"]] [@js.enum]
      and ts_InternalSymbolName_ExportEquals = [`ExportEquals[@js "export="]] [@js.enum]
      and ts_InternalSymbolName_Default = [`Default[@js "default"]] [@js.enum]
      and ts_InternalSymbolName_This = [`This[@js "this"]] [@js.enum]
      and ts_IntersectionType = [`Ts_IntersectionType | `Ts_Type | `Ts_UnionOrIntersectionType] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_IntersectionTypeNode = [`Ts_IntersectionTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_InvalidatedProject = (([`U_n_0 of ('T ts_BuildInvalidedProject, 'T ts_BuildInvalidedProject) union2 [@js 0] | `U_n_1 of ('T ts_UpdateBundleProject, 'T ts_UpdateBundleProject) union2 [@js 1] | `U_n_2 of (ts_UpdateOutputFileStampsProject, ts_UpdateOutputFileStampsProject) union2 [@js 2]] [@js.union on_field "kind"]), (ts_UpdateOutputFileStampsProject, ('T ts_BuildInvalidedProject, 'T ts_UpdateBundleProject) or_) or_) or_
      and ts_InvalidatedProjectBase = [`Ts_InvalidatedProjectBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_InvalidatedProjectKind = [`Build[@js 0] | `UpdateBundle[@js 1] | `UpdateOutputFileStamps[@js 2]] [@js.enum]
      and ts_InvalidatedProjectKind_Build = [`Build[@js 0]] [@js.enum]
      and ts_InvalidatedProjectKind_UpdateBundle = [`UpdateBundle[@js 1]] [@js.enum]
      and ts_InvalidatedProjectKind_UpdateOutputFileStamps = [`UpdateOutputFileStamps[@js 2]] [@js.enum]
      and ts_IterationStatement = [`Ts_IterationStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_Iterator = [`Ts_Iterator of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_JSDoc = [`Ts_JSDoc | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocAllType = [`Ts_JSDocAllType | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocAugmentsTag = [`Ts_JSDocAugmentsTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocAuthorTag = [`Ts_JSDocAuthorTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocCallbackTag = [`Ts_JSDocCallbackTag | `Ts_Declaration | `Ts_JSDocTag | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocClassTag = [`Ts_JSDocClassTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocContainer = [`Ts_JSDocContainer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocEnumTag = [`Ts_JSDocEnumTag | `Ts_Declaration | `Ts_JSDocTag | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocFunctionType = [`Ts_JSDocFunctionType | `Ts_Declaration | `Ts_JSDocContainer | `Ts_JSDocType | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocNamepathType = [`Ts_JSDocNamepathType | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocNamespaceBody = (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_249 of (ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration) union2 [@js 249]] [@js.union on_field "kind"]), (ts_Identifier, ts_JSDocNamespaceDeclaration) or_) or_
      and ts_JSDocNamespaceDeclaration = [`Ts_JSDocNamespaceDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_ModuleDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocNonNullableType = [`Ts_JSDocNonNullableType | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocNullableType = [`Ts_JSDocNullableType | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocOptionalType = [`Ts_JSDocOptionalType | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocParameterTag = [`Ts_JSDocParameterTag | `Ts_Declaration | `Ts_JSDocPropertyLikeTag | `Ts_JSDocTag | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocPrivateTag = [`Ts_JSDocPrivateTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocPropertyLikeTag = [`Ts_JSDocPropertyLikeTag | `Ts_Declaration | `Ts_JSDocTag | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocPropertyTag = [`Ts_JSDocPropertyTag | `Ts_Declaration | `Ts_JSDocPropertyLikeTag | `Ts_JSDocTag | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocProtectedTag = [`Ts_JSDocProtectedTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocPublicTag = [`Ts_JSDocPublicTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocReadonlyTag = [`Ts_JSDocReadonlyTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocReturnTag = [`Ts_JSDocReturnTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocSignature = [`Ts_JSDocSignature | `Ts_Declaration | `Ts_JSDocType | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocSyntaxKind = ((ts_KeywordSyntaxKind, (ts_SyntaxKind_AbstractKeyword, (ts_SyntaxKind_AnyKeyword, (ts_SyntaxKind_AsKeyword, (ts_SyntaxKind_AssertsKeyword, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_AsyncKeyword, (ts_SyntaxKind_AtToken, (ts_SyntaxKind_AwaitKeyword, (ts_SyntaxKind_BacktickToken, (ts_SyntaxKind_BigIntKeyword, (ts_SyntaxKind_BooleanKeyword, (ts_SyntaxKind_BreakKeyword, (ts_SyntaxKind_CaseKeyword, (ts_SyntaxKind_CatchKeyword, (ts_SyntaxKind_ClassKeyword, (ts_SyntaxKind_CloseBraceToken, (ts_SyntaxKind_CloseBracketToken, (ts_SyntaxKind_CommaToken, (ts_SyntaxKind_ConstKeyword, (ts_SyntaxKind_ConstructorKeyword, (ts_SyntaxKind_ContinueKeyword, (ts_SyntaxKind_DebuggerKeyword, (ts_SyntaxKind_DeclareKeyword, (ts_SyntaxKind_DefaultKeyword, (ts_SyntaxKind_DeleteKeyword, (ts_SyntaxKind_DoKeyword, (ts_SyntaxKind_DotToken, (ts_SyntaxKind_ElseKeyword, (ts_SyntaxKind_EndOfFileToken, (ts_SyntaxKind_EnumKeyword, (ts_SyntaxKind_EqualsToken, (ts_SyntaxKind_ExportKeyword, (ts_SyntaxKind_ExtendsKeyword, (ts_SyntaxKind_FalseKeyword, (ts_SyntaxKind_FinallyKeyword, (ts_SyntaxKind_ForKeyword, (ts_SyntaxKind_FromKeyword, (ts_SyntaxKind_FunctionKeyword, (ts_SyntaxKind_GetKeyword, (ts_SyntaxKind_GlobalKeyword, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_Identifier, (ts_SyntaxKind_IfKeyword, (ts_SyntaxKind_ImplementsKeyword, (ts_SyntaxKind_ImportKeyword, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InferKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_InterfaceKeyword, (ts_SyntaxKind_IsKeyword, (ts_SyntaxKind_KeyOfKeyword, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_LetKeyword, (ts_SyntaxKind_ModuleKeyword, (ts_SyntaxKind_NamespaceKeyword, (ts_SyntaxKind_NeverKeyword, (ts_SyntaxKind_NewKeyword, (ts_SyntaxKind_NewLineTrivia, (ts_SyntaxKind_NullKeyword, (ts_SyntaxKind_NumberKeyword, (ts_SyntaxKind_ObjectKeyword, (ts_SyntaxKind_OfKeyword, (ts_SyntaxKind_OpenBraceToken, (ts_SyntaxKind_OpenBracketToken, (ts_SyntaxKind_PackageKeyword, (ts_SyntaxKind_PrivateKeyword, (ts_SyntaxKind_ProtectedKeyword, (ts_SyntaxKind_PublicKeyword, (ts_SyntaxKind_ReadonlyKeyword, (ts_SyntaxKind_RequireKeyword, (ts_SyntaxKind_ReturnKeyword, (ts_SyntaxKind_SetKeyword, (ts_SyntaxKind_StaticKeyword, (ts_SyntaxKind_StringKeyword, (ts_SyntaxKind_SuperKeyword, (ts_SyntaxKind_SwitchKeyword, (ts_SyntaxKind_SymbolKeyword, (ts_SyntaxKind_ThisKeyword, (ts_SyntaxKind_ThrowKeyword, (ts_SyntaxKind_TrueKeyword, (ts_SyntaxKind_TryKeyword, (ts_SyntaxKind_TypeKeyword, (ts_SyntaxKind_TypeOfKeyword, (ts_SyntaxKind_UndefinedKeyword, (ts_SyntaxKind_UniqueKeyword, (ts_SyntaxKind_Unknown, (ts_SyntaxKind_UnknownKeyword, (ts_SyntaxKind_VarKeyword, (ts_SyntaxKind_VoidKeyword, (ts_SyntaxKind_WhileKeyword, (ts_SyntaxKind_WhitespaceTrivia, (ts_SyntaxKind_WithKeyword, ts_SyntaxKind_YieldKeyword) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AbstractKeyword[@js 122] | `AnyKeyword[@js 125] | `AsKeyword[@js 123] | `AssertsKeyword[@js 124] | `AsteriskToken[@js 41] | `AsyncKeyword[@js 126] | `AtToken[@js 59] | `AwaitKeyword[@js 127] | `BacktickToken[@js 61] | `BigIntKeyword[@js 151] | `BooleanKeyword[@js 128] | `BreakKeyword[@js 77] | `CaseKeyword[@js 78] | `CatchKeyword[@js 79] | `ClassKeyword[@js 80] | `CloseBraceToken[@js 19] | `CloseBracketToken[@js 23] | `CommaToken[@js 27] | `ConstKeyword[@js 81] | `ConstructorKeyword[@js 129] | `ContinueKeyword[@js 82] | `DebuggerKeyword[@js 83] | `DeclareKeyword[@js 130] | `DefaultKeyword[@js 84] | `DeleteKeyword[@js 85] | `DoKeyword[@js 86] | `DotToken[@js 24] | `ElseKeyword[@js 87] | `EndOfFileToken[@js 1] | `EnumKeyword[@js 88] | `EqualsToken[@js 62] | `ExportKeyword[@js 89] | `ExtendsKeyword[@js 90] | `FalseKeyword[@js 91] | `FinallyKeyword[@js 92] | `ForKeyword[@js 93] | `FromKeyword[@js 149] | `FunctionKeyword[@js 94] | `GetKeyword[@js 131] | `GlobalKeyword[@js 150] | `GreaterThanToken[@js 31] | `Identifier[@js 75] | `IfKeyword[@js 95] | `ImplementsKeyword[@js 113] | `ImportKeyword[@js 96] | `InKeyword[@js 97] | `InferKeyword[@js 132] | `InstanceOfKeyword[@js 98] | `InterfaceKeyword[@js 114] | `IsKeyword[@js 133] | `KeyOfKeyword[@js 134] | `LessThanToken[@js 29] | `LetKeyword[@js 115] | `ModuleKeyword[@js 135] | `NamespaceKeyword[@js 136] | `NeverKeyword[@js 137] | `NewKeyword[@js 99] | `NewLineTrivia[@js 4] | `NullKeyword[@js 100] | `NumberKeyword[@js 140] | `ObjectKeyword[@js 141] | `OfKeyword[@js 152] | `OpenBraceToken[@js 18] | `OpenBracketToken[@js 22] | `PackageKeyword[@js 116] | `PrivateKeyword[@js 117] | `ProtectedKeyword[@js 118] | `PublicKeyword[@js 119] | `ReadonlyKeyword[@js 138] | `RequireKeyword[@js 139] | `ReturnKeyword[@js 101] | `SetKeyword[@js 142] | `StaticKeyword[@js 120] | `StringKeyword[@js 143] | `SuperKeyword[@js 102] | `SwitchKeyword[@js 103] | `SymbolKeyword[@js 144] | `ThisKeyword[@js 104] | `ThrowKeyword[@js 105] | `TrueKeyword[@js 106] | `TryKeyword[@js 107] | `TypeKeyword[@js 145] | `TypeOfKeyword[@js 108] | `UndefinedKeyword[@js 146] | `UniqueKeyword[@js 147] | `Unknown[@js 0] | `UnknownKeyword[@js 148] | `VarKeyword[@js 109] | `VoidKeyword[@js 110] | `WhileKeyword[@js 111] | `WhitespaceTrivia[@js 5] | `WithKeyword[@js 112] | `YieldKeyword[@js 121]] [@js.enum])) or_enum
      and ts_JSDocTag = [`Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocTagInfo = [`Ts_JSDocTagInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocTemplateTag = [`Ts_JSDocTemplateTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocThisTag = [`Ts_JSDocThisTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocType = [`Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocTypeExpression = [`Ts_JSDocTypeExpression | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocTypeLiteral = [`Ts_JSDocTypeLiteral | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocTypeReferencingNode = (([`U_n_297 of (ts_JSDocNullableType, ts_JSDocNullableType) union2 [@js 297] | `U_n_298 of (ts_JSDocNonNullableType, ts_JSDocNonNullableType) union2 [@js 298] | `U_n_299 of (ts_JSDocOptionalType, ts_JSDocOptionalType) union2 [@js 299] | `U_n_301 of (ts_JSDocVariadicType, ts_JSDocVariadicType) union2 [@js 301]] [@js.union on_field "kind"]), (ts_JSDocNonNullableType, (ts_JSDocNullableType, (ts_JSDocOptionalType, ts_JSDocVariadicType) or_) or_) or_) or_
      and ts_JSDocTypeTag = [`Ts_JSDocTypeTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocTypedefTag = [`Ts_JSDocTypedefTag | `Ts_Declaration | `Ts_JSDocTag | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocUnknownTag = [`Ts_JSDocUnknownTag | `Ts_JSDocTag | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocUnknownType = [`Ts_JSDocUnknownType | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JSDocVariadicType = [`Ts_JSDocVariadicType | `Ts_JSDocType | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsFileExtensionInfo = ts_FileExtensionInfo
      and ts_JsonMinusNumericLiteral = [`Ts_JsonMinusNumericLiteral | `Ts_Expression | `Ts_Node | `Ts_PrefixUnaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsonObjectExpressionStatement = [`Ts_JsonObjectExpressionStatement | `Ts_ExpressionStatement | `Ts_JSDocContainer | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsonSourceFile = [`Ts_JsonSourceFile | `Ts_Declaration | `Ts_Node | `Ts_SourceFile | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxAttribute = [`Ts_JsxAttribute | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxAttributeLike = (([`U_n_273 of (ts_JsxAttribute, ts_JsxAttribute) union2 [@js 273] | `U_n_275 of (ts_JsxSpreadAttribute, ts_JsxSpreadAttribute) union2 [@js 275]] [@js.union on_field "kind"]), (ts_JsxAttribute, ts_JsxSpreadAttribute) or_) or_
      and ts_JsxAttributes = [`Ts_JsxAttributes | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression | `Ts_ObjectLiteralExpressionBase of ts_JsxAttributeLike] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxChild = (([`U_n_11 of (ts_JsxText, ts_JsxText) union2 [@js 11] | `U_n_266 of (ts_JsxElement, ts_JsxElement) union2 [@js 266] | `U_n_267 of (ts_JsxSelfClosingElement, ts_JsxSelfClosingElement) union2 [@js 267] | `U_n_270 of (ts_JsxFragment, ts_JsxFragment) union2 [@js 270] | `U_n_276 of (ts_JsxExpression, ts_JsxExpression) union2 [@js 276]] [@js.union on_field "kind"]), (ts_JsxElement, (ts_JsxExpression, (ts_JsxFragment, (ts_JsxSelfClosingElement, ts_JsxText) or_) or_) or_) or_) or_
      and ts_JsxClosingElement = [`Ts_JsxClosingElement | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxClosingFragment = [`Ts_JsxClosingFragment | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxClosingTagInfo = [`Ts_JsxClosingTagInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxElement = [`Ts_JsxElement | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxEmit = [`None[@js 0] | `Preserve[@js 1] | `React[@js 2] | `ReactNative[@js 3]] [@js.enum]
      and ts_JsxEmit_None = [`None[@js 0]] [@js.enum]
      and ts_JsxEmit_Preserve = [`Preserve[@js 1]] [@js.enum]
      and ts_JsxEmit_React = [`React[@js 2]] [@js.enum]
      and ts_JsxEmit_ReactNative = [`ReactNative[@js 3]] [@js.enum]
      and ts_JsxExpression = [`Ts_JsxExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxFlags = [`None[@js 0] | `IntrinsicNamedElement[@js 1] | `IntrinsicIndexedElement[@js 2] | `IntrinsicElement[@js 3]] [@js.enum]
      and ts_JsxFlags_None = [`None[@js 0]] [@js.enum]
      and ts_JsxFlags_IntrinsicNamedElement = [`IntrinsicNamedElement[@js 1]] [@js.enum]
      and ts_JsxFlags_IntrinsicIndexedElement = [`IntrinsicIndexedElement[@js 2]] [@js.enum]
      and ts_JsxFlags_IntrinsicElement = [`IntrinsicElement[@js 3]] [@js.enum]
      and ts_JsxFragment = [`Ts_JsxFragment | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxOpeningElement = [`Ts_JsxOpeningElement | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxOpeningFragment = [`Ts_JsxOpeningFragment | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxOpeningLikeElement = (([`U_n_267 of (ts_JsxSelfClosingElement, ts_JsxSelfClosingElement) union2 [@js 267] | `U_n_268 of (ts_JsxOpeningElement, ts_JsxOpeningElement) union2 [@js 268]] [@js.union on_field "kind"]), (ts_JsxOpeningElement, ts_JsxSelfClosingElement) or_) or_
      and ts_JsxSelfClosingElement = [`Ts_JsxSelfClosingElement | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxSpreadAttribute = [`Ts_JsxSpreadAttribute | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxTagNameExpression = (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_104 of (ts_ThisExpression, ts_ThisExpression) union2 [@js 104] | `U_n_194 of (ts_JsxTagNamePropertyAccess, ts_JsxTagNamePropertyAccess) union2 [@js 194]] [@js.union on_field "kind"]), (ts_Identifier, (ts_JsxTagNamePropertyAccess, ts_ThisExpression) or_) or_) or_
      and ts_JsxTagNamePropertyAccess = [`Ts_JsxTagNamePropertyAccess | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_PropertyAccessExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxText = [`Ts_JsxText | `Ts_LiteralLikeNode | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_JsxTokenSyntaxKind = ((ts_SyntaxKind_ConflictMarkerTrivia, (ts_SyntaxKind_EndOfFileToken, (ts_SyntaxKind_JsxText, (ts_SyntaxKind_JsxTextAllWhiteSpaces, (ts_SyntaxKind_LessThanSlashToken, (ts_SyntaxKind_LessThanToken, ts_SyntaxKind_OpenBraceToken) or_) or_) or_) or_) or_) or_, ([`ConflictMarkerTrivia[@js 7] | `EndOfFileToken[@js 1] | `JsxText[@js 11] | `JsxTextAllWhiteSpaces[@js 12] | `LessThanSlashToken[@js 30] | `LessThanToken[@js 29] | `OpenBraceToken[@js 18]] [@js.enum])) or_enum
      and ts_KeywordSyntaxKind = ((ts_SyntaxKind_AbstractKeyword, (ts_SyntaxKind_AnyKeyword, (ts_SyntaxKind_AsKeyword, (ts_SyntaxKind_AssertsKeyword, (ts_SyntaxKind_AsyncKeyword, (ts_SyntaxKind_AwaitKeyword, (ts_SyntaxKind_BigIntKeyword, (ts_SyntaxKind_BooleanKeyword, (ts_SyntaxKind_BreakKeyword, (ts_SyntaxKind_CaseKeyword, (ts_SyntaxKind_CatchKeyword, (ts_SyntaxKind_ClassKeyword, (ts_SyntaxKind_ConstKeyword, (ts_SyntaxKind_ConstructorKeyword, (ts_SyntaxKind_ContinueKeyword, (ts_SyntaxKind_DebuggerKeyword, (ts_SyntaxKind_DeclareKeyword, (ts_SyntaxKind_DefaultKeyword, (ts_SyntaxKind_DeleteKeyword, (ts_SyntaxKind_DoKeyword, (ts_SyntaxKind_ElseKeyword, (ts_SyntaxKind_EnumKeyword, (ts_SyntaxKind_ExportKeyword, (ts_SyntaxKind_ExtendsKeyword, (ts_SyntaxKind_FalseKeyword, (ts_SyntaxKind_FinallyKeyword, (ts_SyntaxKind_ForKeyword, (ts_SyntaxKind_FromKeyword, (ts_SyntaxKind_FunctionKeyword, (ts_SyntaxKind_GetKeyword, (ts_SyntaxKind_GlobalKeyword, (ts_SyntaxKind_IfKeyword, (ts_SyntaxKind_ImplementsKeyword, (ts_SyntaxKind_ImportKeyword, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InferKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_InterfaceKeyword, (ts_SyntaxKind_IsKeyword, (ts_SyntaxKind_KeyOfKeyword, (ts_SyntaxKind_LetKeyword, (ts_SyntaxKind_ModuleKeyword, (ts_SyntaxKind_NamespaceKeyword, (ts_SyntaxKind_NeverKeyword, (ts_SyntaxKind_NewKeyword, (ts_SyntaxKind_NullKeyword, (ts_SyntaxKind_NumberKeyword, (ts_SyntaxKind_ObjectKeyword, (ts_SyntaxKind_OfKeyword, (ts_SyntaxKind_PackageKeyword, (ts_SyntaxKind_PrivateKeyword, (ts_SyntaxKind_ProtectedKeyword, (ts_SyntaxKind_PublicKeyword, (ts_SyntaxKind_ReadonlyKeyword, (ts_SyntaxKind_RequireKeyword, (ts_SyntaxKind_ReturnKeyword, (ts_SyntaxKind_SetKeyword, (ts_SyntaxKind_StaticKeyword, (ts_SyntaxKind_StringKeyword, (ts_SyntaxKind_SuperKeyword, (ts_SyntaxKind_SwitchKeyword, (ts_SyntaxKind_SymbolKeyword, (ts_SyntaxKind_ThisKeyword, (ts_SyntaxKind_ThrowKeyword, (ts_SyntaxKind_TrueKeyword, (ts_SyntaxKind_TryKeyword, (ts_SyntaxKind_TypeKeyword, (ts_SyntaxKind_TypeOfKeyword, (ts_SyntaxKind_UndefinedKeyword, (ts_SyntaxKind_UniqueKeyword, (ts_SyntaxKind_UnknownKeyword, (ts_SyntaxKind_VarKeyword, (ts_SyntaxKind_VoidKeyword, (ts_SyntaxKind_WhileKeyword, (ts_SyntaxKind_WithKeyword, ts_SyntaxKind_YieldKeyword) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AbstractKeyword[@js 122] | `AnyKeyword[@js 125] | `AsKeyword[@js 123] | `AssertsKeyword[@js 124] | `AsyncKeyword[@js 126] | `AwaitKeyword[@js 127] | `BigIntKeyword[@js 151] | `BooleanKeyword[@js 128] | `BreakKeyword[@js 77] | `CaseKeyword[@js 78] | `CatchKeyword[@js 79] | `ClassKeyword[@js 80] | `ConstKeyword[@js 81] | `ConstructorKeyword[@js 129] | `ContinueKeyword[@js 82] | `DebuggerKeyword[@js 83] | `DeclareKeyword[@js 130] | `DefaultKeyword[@js 84] | `DeleteKeyword[@js 85] | `DoKeyword[@js 86] | `ElseKeyword[@js 87] | `EnumKeyword[@js 88] | `ExportKeyword[@js 89] | `ExtendsKeyword[@js 90] | `FalseKeyword[@js 91] | `FinallyKeyword[@js 92] | `ForKeyword[@js 93] | `FromKeyword[@js 149] | `FunctionKeyword[@js 94] | `GetKeyword[@js 131] | `GlobalKeyword[@js 150] | `IfKeyword[@js 95] | `ImplementsKeyword[@js 113] | `ImportKeyword[@js 96] | `InKeyword[@js 97] | `InferKeyword[@js 132] | `InstanceOfKeyword[@js 98] | `InterfaceKeyword[@js 114] | `IsKeyword[@js 133] | `KeyOfKeyword[@js 134] | `LetKeyword[@js 115] | `ModuleKeyword[@js 135] | `NamespaceKeyword[@js 136] | `NeverKeyword[@js 137] | `NewKeyword[@js 99] | `NullKeyword[@js 100] | `NumberKeyword[@js 140] | `ObjectKeyword[@js 141] | `OfKeyword[@js 152] | `PackageKeyword[@js 116] | `PrivateKeyword[@js 117] | `ProtectedKeyword[@js 118] | `PublicKeyword[@js 119] | `ReadonlyKeyword[@js 138] | `RequireKeyword[@js 139] | `ReturnKeyword[@js 101] | `SetKeyword[@js 142] | `StaticKeyword[@js 120] | `StringKeyword[@js 143] | `SuperKeyword[@js 102] | `SwitchKeyword[@js 103] | `SymbolKeyword[@js 144] | `ThisKeyword[@js 104] | `ThrowKeyword[@js 105] | `TrueKeyword[@js 106] | `TryKeyword[@js 107] | `TypeKeyword[@js 145] | `TypeOfKeyword[@js 108] | `UndefinedKeyword[@js 146] | `UniqueKeyword[@js 147] | `UnknownKeyword[@js 148] | `VarKeyword[@js 109] | `VoidKeyword[@js 110] | `WhileKeyword[@js 111] | `WithKeyword[@js 112] | `YieldKeyword[@js 121]] [@js.enum])) or_enum
      and ts_KeywordTypeNode = [`Ts_KeywordTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LabeledStatement = [`Ts_LabeledStatement | `Ts_JSDocContainer | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LanguageService = [`Ts_LanguageService] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LanguageServiceHost = [`Ts_LanguageServiceHost | `Ts_GetEffectiveTypeRootsHost | `Ts_ModuleSpecifierResolutionHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LanguageVariant = [`Standard[@js 0] | `JSX[@js 1]] [@js.enum]
      and ts_LanguageVariant_Standard = [`Standard[@js 0]] [@js.enum]
      and ts_LanguageVariant_JSX = [`JSX[@js 1]] [@js.enum]
      and ts_LeftHandSideExpression = [`Ts_LeftHandSideExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LineAndCharacter = [`Ts_LineAndCharacter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ListFormat = [`None[@js 0] | `SingleLine[@js 0] | `MultiLine[@js 1] | `PreserveLines[@js 2] | `LinesMask[@js 3] | `NotDelimited[@js 0] | `BarDelimited[@js 4] | `AmpersandDelimited[@js 8] | `CommaDelimited[@js 16] | `AsteriskDelimited[@js 32] | `DelimitersMask[@js 60] | `AllowTrailingComma[@js 64] | `Indented[@js 128] | `SpaceBetweenBraces[@js 256] | `SpaceBetweenSiblings[@js 512] | `Braces[@js 1024] | `Parenthesis[@js 2048] | `AngleBrackets[@js 4096] | `SquareBrackets[@js 8192] | `BracketsMask[@js 15360] | `OptionalIfUndefined[@js 16384] | `OptionalIfEmpty[@js 32768] | `Optional[@js 49152] | `PreferNewLine[@js 65536] | `NoTrailingNewLine[@js 131072] | `NoInterveningComments[@js 262144] | `NoSpaceIfEmpty[@js 524288] | `SingleElement[@js 1048576] | `Modifiers[@js 262656] | `HeritageClauses[@js 512] | `SingleLineTypeLiteralMembers[@js 768] | `MultiLineTypeLiteralMembers[@js 32897] | `TupleTypeElements[@js 528] | `UnionTypeConstituents[@js 516] | `IntersectionTypeConstituents[@js 520] | `ObjectBindingPatternElements[@js 525136] | `ArrayBindingPatternElements[@js 524880] | `ObjectLiteralExpressionProperties[@js 526226] | `ArrayLiteralExpressionElements[@js 8914] | `CommaListElements[@js 528] | `CallExpressionArguments[@js 2576] | `NewExpressionArguments[@js 18960] | `TemplateExpressionSpans[@js 262144] | `SingleLineBlockStatements[@js 768] | `MultiLineBlockStatements[@js 129] | `VariableDeclarationList[@js 528] | `SingleLineFunctionBodyStatements[@js 768] | `MultiLineFunctionBodyStatements[@js 1] | `ClassHeritageClauses[@js 0] | `ClassMembers[@js 129] | `InterfaceMembers[@js 129] | `EnumMembers[@js 145] | `CaseBlockClauses[@js 129] | `NamedImportsOrExportsElements[@js 525136] | `JsxElementOrFragmentChildren[@js 262144] | `JsxElementAttributes[@js 262656] | `CaseOrDefaultClauseStatements[@js 163969] | `HeritageClauseTypes[@js 528] | `SourceFileStatements[@js 131073] | `Decorators[@js 49153] | `TypeArguments[@js 53776] | `TypeParameters[@js 53776] | `Parameters[@js 2576] | `IndexSignatureParameters[@js 8848] | `JSDocComment[@js 33]] [@js.enum]
      and ts_ListFormat_None = [`None[@js 0]] [@js.enum]
      and ts_ListFormat_SingleLine = [`SingleLine[@js 0]] [@js.enum]
      and ts_ListFormat_MultiLine = [`MultiLine[@js 1]] [@js.enum]
      and ts_ListFormat_PreserveLines = [`PreserveLines[@js 2]] [@js.enum]
      and ts_ListFormat_LinesMask = [`LinesMask[@js 3]] [@js.enum]
      and ts_ListFormat_NotDelimited = [`NotDelimited[@js 0]] [@js.enum]
      and ts_ListFormat_BarDelimited = [`BarDelimited[@js 4]] [@js.enum]
      and ts_ListFormat_AmpersandDelimited = [`AmpersandDelimited[@js 8]] [@js.enum]
      and ts_ListFormat_CommaDelimited = [`CommaDelimited[@js 16]] [@js.enum]
      and ts_ListFormat_AsteriskDelimited = [`AsteriskDelimited[@js 32]] [@js.enum]
      and ts_ListFormat_DelimitersMask = [`DelimitersMask[@js 60]] [@js.enum]
      and ts_ListFormat_AllowTrailingComma = [`AllowTrailingComma[@js 64]] [@js.enum]
      and ts_ListFormat_Indented = [`Indented[@js 128]] [@js.enum]
      and ts_ListFormat_SpaceBetweenBraces = [`SpaceBetweenBraces[@js 256]] [@js.enum]
      and ts_ListFormat_SpaceBetweenSiblings = [`SpaceBetweenSiblings[@js 512]] [@js.enum]
      and ts_ListFormat_Braces = [`Braces[@js 1024]] [@js.enum]
      and ts_ListFormat_Parenthesis = [`Parenthesis[@js 2048]] [@js.enum]
      and ts_ListFormat_AngleBrackets = [`AngleBrackets[@js 4096]] [@js.enum]
      and ts_ListFormat_SquareBrackets = [`SquareBrackets[@js 8192]] [@js.enum]
      and ts_ListFormat_BracketsMask = [`BracketsMask[@js 15360]] [@js.enum]
      and ts_ListFormat_OptionalIfUndefined = [`OptionalIfUndefined[@js 16384]] [@js.enum]
      and ts_ListFormat_OptionalIfEmpty = [`OptionalIfEmpty[@js 32768]] [@js.enum]
      and ts_ListFormat_Optional = [`Optional[@js 49152]] [@js.enum]
      and ts_ListFormat_PreferNewLine = [`PreferNewLine[@js 65536]] [@js.enum]
      and ts_ListFormat_NoTrailingNewLine = [`NoTrailingNewLine[@js 131072]] [@js.enum]
      and ts_ListFormat_NoInterveningComments = [`NoInterveningComments[@js 262144]] [@js.enum]
      and ts_ListFormat_NoSpaceIfEmpty = [`NoSpaceIfEmpty[@js 524288]] [@js.enum]
      and ts_ListFormat_SingleElement = [`SingleElement[@js 1048576]] [@js.enum]
      and ts_ListFormat_Modifiers = [`Modifiers[@js 262656]] [@js.enum]
      and ts_ListFormat_HeritageClauses = [`HeritageClauses[@js 512]] [@js.enum]
      and ts_ListFormat_SingleLineTypeLiteralMembers = [`SingleLineTypeLiteralMembers[@js 768]] [@js.enum]
      and ts_ListFormat_MultiLineTypeLiteralMembers = [`MultiLineTypeLiteralMembers[@js 32897]] [@js.enum]
      and ts_ListFormat_TupleTypeElements = [`TupleTypeElements[@js 528]] [@js.enum]
      and ts_ListFormat_UnionTypeConstituents = [`UnionTypeConstituents[@js 516]] [@js.enum]
      and ts_ListFormat_IntersectionTypeConstituents = [`IntersectionTypeConstituents[@js 520]] [@js.enum]
      and ts_ListFormat_ObjectBindingPatternElements = [`ObjectBindingPatternElements[@js 525136]] [@js.enum]
      and ts_ListFormat_ArrayBindingPatternElements = [`ArrayBindingPatternElements[@js 524880]] [@js.enum]
      and ts_ListFormat_ObjectLiteralExpressionProperties = [`ObjectLiteralExpressionProperties[@js 526226]] [@js.enum]
      and ts_ListFormat_ArrayLiteralExpressionElements = [`ArrayLiteralExpressionElements[@js 8914]] [@js.enum]
      and ts_ListFormat_CommaListElements = [`CommaListElements[@js 528]] [@js.enum]
      and ts_ListFormat_CallExpressionArguments = [`CallExpressionArguments[@js 2576]] [@js.enum]
      and ts_ListFormat_NewExpressionArguments = [`NewExpressionArguments[@js 18960]] [@js.enum]
      and ts_ListFormat_TemplateExpressionSpans = [`TemplateExpressionSpans[@js 262144]] [@js.enum]
      and ts_ListFormat_SingleLineBlockStatements = [`SingleLineBlockStatements[@js 768]] [@js.enum]
      and ts_ListFormat_MultiLineBlockStatements = [`MultiLineBlockStatements[@js 129]] [@js.enum]
      and ts_ListFormat_VariableDeclarationList = [`VariableDeclarationList[@js 528]] [@js.enum]
      and ts_ListFormat_SingleLineFunctionBodyStatements = [`SingleLineFunctionBodyStatements[@js 768]] [@js.enum]
      and ts_ListFormat_MultiLineFunctionBodyStatements = [`MultiLineFunctionBodyStatements[@js 1]] [@js.enum]
      and ts_ListFormat_ClassHeritageClauses = [`ClassHeritageClauses[@js 0]] [@js.enum]
      and ts_ListFormat_ClassMembers = [`ClassMembers[@js 129]] [@js.enum]
      and ts_ListFormat_InterfaceMembers = [`InterfaceMembers[@js 129]] [@js.enum]
      and ts_ListFormat_EnumMembers = [`EnumMembers[@js 145]] [@js.enum]
      and ts_ListFormat_CaseBlockClauses = [`CaseBlockClauses[@js 129]] [@js.enum]
      and ts_ListFormat_NamedImportsOrExportsElements = [`NamedImportsOrExportsElements[@js 525136]] [@js.enum]
      and ts_ListFormat_JsxElementOrFragmentChildren = [`JsxElementOrFragmentChildren[@js 262144]] [@js.enum]
      and ts_ListFormat_JsxElementAttributes = [`JsxElementAttributes[@js 262656]] [@js.enum]
      and ts_ListFormat_CaseOrDefaultClauseStatements = [`CaseOrDefaultClauseStatements[@js 163969]] [@js.enum]
      and ts_ListFormat_HeritageClauseTypes = [`HeritageClauseTypes[@js 528]] [@js.enum]
      and ts_ListFormat_SourceFileStatements = [`SourceFileStatements[@js 131073]] [@js.enum]
      and ts_ListFormat_Decorators = [`Decorators[@js 49153]] [@js.enum]
      and ts_ListFormat_TypeArguments = [`TypeArguments[@js 53776]] [@js.enum]
      and ts_ListFormat_TypeParameters = [`TypeParameters[@js 53776]] [@js.enum]
      and ts_ListFormat_Parameters = [`Parameters[@js 2576]] [@js.enum]
      and ts_ListFormat_IndexSignatureParameters = [`IndexSignatureParameters[@js 8848]] [@js.enum]
      and ts_ListFormat_JSDocComment = [`JSDocComment[@js 33]] [@js.enum]
      and ts_LiteralExpression = [`Ts_LiteralExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_LiteralLikeNode | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LiteralLikeNode = [`Ts_LiteralLikeNode | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LiteralType = [`Ts_LiteralType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LiteralTypeNode = [`Ts_LiteralTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_LogicalOperator = ((ts_SyntaxKind_AmpersandAmpersandToken, ts_SyntaxKind_BarBarToken) or_, ([`AmpersandAmpersandToken[@js 55] | `BarBarToken[@js 56]] [@js.enum])) or_enum
      and ts_LogicalOperatorOrHigher = ((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_BitwiseOperator, (ts_BitwiseOperatorOrHigher, (ts_EqualityOperator, (ts_EqualityOperatorOrHigher, (ts_ExponentiationOperator, (ts_LogicalOperator, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_RelationalOperatorOrHigher, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AmpersandAmpersandToken, (ts_SyntaxKind_AmpersandToken, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_BarBarToken, (ts_SyntaxKind_BarToken, (ts_SyntaxKind_CaretToken, (ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandAmpersandToken[@js 55] | `AmpersandToken[@js 50] | `AsteriskAsteriskToken[@js 42] | `AsteriskToken[@js 41] | `BarBarToken[@js 56] | `BarToken[@js 51] | `CaretToken[@js 52] | `EqualsEqualsEqualsToken[@js 36] | `EqualsEqualsToken[@js 34] | `ExclamationEqualsEqualsToken[@js 37] | `ExclamationEqualsToken[@js 35] | `GreaterThanEqualsToken[@js 33] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `GreaterThanToken[@js 31] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `LessThanEqualsToken[@js 32] | `LessThanLessThanToken[@js 47] | `LessThanToken[@js 29] | `MinusToken[@js 40] | `PercentToken[@js 44] | `PlusToken[@js 39] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and 'T ts_Map = [`Ts_Map of 'T | `Ts_ReadonlyMap of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_MapLike = [`Ts_MapLike of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_MappedTypeNode = [`Ts_MappedTypeNode | `Ts_Declaration | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_MemberExpression = [`Ts_MemberExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_MetaProperty = [`Ts_MetaProperty | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_MethodDeclaration = [`Ts_MethodDeclaration | `Ts_ClassElement | `Ts_Declaration | `Ts_FunctionLikeDeclarationBase | `Ts_JSDocContainer | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_SignatureDeclarationBase | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_MethodSignature = [`Ts_MethodSignature | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_SignatureDeclarationBase | `Ts_TextRange | `Ts_TypeElement] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_MinusToken = ts_SyntaxKind_MinusToken ts_Token
      and ts_MissingDeclaration = [`Ts_MissingDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Modifier = (([`U_n_81 of (ts_SyntaxKind_ConstKeyword ts_Token, ts_SyntaxKind_ConstKeyword ts_Token) union2 [@js 81] | `U_n_84 of (ts_SyntaxKind_DefaultKeyword ts_Token, ts_SyntaxKind_DefaultKeyword ts_Token) union2 [@js 84] | `U_n_89 of (ts_SyntaxKind_ExportKeyword ts_Token, ts_SyntaxKind_ExportKeyword ts_Token) union2 [@js 89] | `U_n_117 of (ts_SyntaxKind_PrivateKeyword ts_Token, ts_SyntaxKind_PrivateKeyword ts_Token) union2 [@js 117] | `U_n_118 of (ts_SyntaxKind_ProtectedKeyword ts_Token, ts_SyntaxKind_ProtectedKeyword ts_Token) union2 [@js 118] | `U_n_119 of (ts_SyntaxKind_PublicKeyword ts_Token, ts_SyntaxKind_PublicKeyword ts_Token) union2 [@js 119] | `U_n_120 of (ts_SyntaxKind_StaticKeyword ts_Token, ts_SyntaxKind_StaticKeyword ts_Token) union2 [@js 120] | `U_n_122 of (ts_SyntaxKind_AbstractKeyword ts_Token, ts_SyntaxKind_AbstractKeyword ts_Token) union2 [@js 122] | `U_n_126 of (ts_SyntaxKind_AsyncKeyword ts_Token, ts_SyntaxKind_AsyncKeyword ts_Token) union2 [@js 126] | `U_n_130 of (ts_SyntaxKind_DeclareKeyword ts_Token, ts_SyntaxKind_DeclareKeyword ts_Token) union2 [@js 130] | `U_n_138 of (ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token) union2 [@js 138]] [@js.union on_field "kind"]), (ts_SyntaxKind_AbstractKeyword ts_Token, (ts_SyntaxKind_AsyncKeyword ts_Token, (ts_SyntaxKind_ConstKeyword ts_Token, (ts_SyntaxKind_DeclareKeyword ts_Token, (ts_SyntaxKind_DefaultKeyword ts_Token, (ts_SyntaxKind_ExportKeyword ts_Token, (ts_SyntaxKind_PublicKeyword ts_Token, (ts_SyntaxKind_PrivateKeyword ts_Token, (ts_SyntaxKind_ProtectedKeyword ts_Token, (ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_StaticKeyword ts_Token) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_ModifierFlags = [`None[@js 0] | `Export[@js 1] | `Ambient[@js 2] | `Public[@js 4] | `Private[@js 8] | `Protected[@js 16] | `Static[@js 32] | `Readonly[@js 64] | `Abstract[@js 128] | `Async[@js 256] | `Default[@js 512] | `Const[@js 2048] | `HasComputedFlags[@js 536870912] | `AccessibilityModifier[@js 28] | `ParameterPropertyModifier[@js 92] | `NonPublicAccessibilityModifier[@js 24] | `TypeScriptModifier[@js 2270] | `ExportDefault[@js 513] | `All[@js 3071]] [@js.enum]
      and ts_ModifierFlags_None = [`None[@js 0]] [@js.enum]
      and ts_ModifierFlags_Export = [`Export[@js 1]] [@js.enum]
      and ts_ModifierFlags_Ambient = [`Ambient[@js 2]] [@js.enum]
      and ts_ModifierFlags_Public = [`Public[@js 4]] [@js.enum]
      and ts_ModifierFlags_Private = [`Private[@js 8]] [@js.enum]
      and ts_ModifierFlags_Protected = [`Protected[@js 16]] [@js.enum]
      and ts_ModifierFlags_Static = [`Static[@js 32]] [@js.enum]
      and ts_ModifierFlags_Readonly = [`Readonly[@js 64]] [@js.enum]
      and ts_ModifierFlags_Abstract = [`Abstract[@js 128]] [@js.enum]
      and ts_ModifierFlags_Async = [`Async[@js 256]] [@js.enum]
      and ts_ModifierFlags_Default = [`Default[@js 512]] [@js.enum]
      and ts_ModifierFlags_Const = [`Const[@js 2048]] [@js.enum]
      and ts_ModifierFlags_HasComputedFlags = [`HasComputedFlags[@js 536870912]] [@js.enum]
      and ts_ModifierFlags_AccessibilityModifier = [`AccessibilityModifier[@js 28]] [@js.enum]
      and ts_ModifierFlags_ParameterPropertyModifier = [`ParameterPropertyModifier[@js 92]] [@js.enum]
      and ts_ModifierFlags_NonPublicAccessibilityModifier = [`NonPublicAccessibilityModifier[@js 24]] [@js.enum]
      and ts_ModifierFlags_TypeScriptModifier = [`TypeScriptModifier[@js 2270]] [@js.enum]
      and ts_ModifierFlags_ExportDefault = [`ExportDefault[@js 513]] [@js.enum]
      and ts_ModifierFlags_All = [`All[@js 3071]] [@js.enum]
      and ts_ModifiersArray = ts_Modifier ts_NodeArray
      and ts_ModuleBlock = [`Ts_ModuleBlock | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ModuleBody = (([`U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier) union3 [@js 75] | `U_n_249 of (ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_NamespaceDeclaration) union6 [@js 249] | `U_n_250 of (ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock) union3 [@js 250]] [@js.union on_field "kind"]), (ts_Identifier, (ts_JSDocNamespaceBody, (ts_JSDocNamespaceDeclaration, (ts_ModuleBlock, (ts_NamespaceBody, ts_NamespaceDeclaration) or_) or_) or_) or_) or_) or_
      and ts_ModuleDeclaration = [`Ts_ModuleDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ModuleKind = [`None[@js 0] | `CommonJS[@js 1] | `AMD[@js 2] | `UMD[@js 3] | `System[@js 4] | `ES2015[@js 5] | `ES2020[@js 6] | `ESNext[@js 99]] [@js.enum]
      and ts_ModuleKind_None = [`None[@js 0]] [@js.enum]
      and ts_ModuleKind_CommonJS = [`CommonJS[@js 1]] [@js.enum]
      and ts_ModuleKind_AMD = [`AMD[@js 2]] [@js.enum]
      and ts_ModuleKind_UMD = [`UMD[@js 3]] [@js.enum]
      and ts_ModuleKind_System = [`System[@js 4]] [@js.enum]
      and ts_ModuleKind_ES2015 = [`ES2015[@js 5]] [@js.enum]
      and ts_ModuleKind_ES2020 = [`ES2020[@js 6]] [@js.enum]
      and ts_ModuleKind_ESNext = [`ESNext[@js 99]] [@js.enum]
      and ts_ModuleName = (([`U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2 [@js 10] | `U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75]] [@js.union on_field "kind"]), (ts_Identifier, ts_StringLiteral) or_) or_
      and ts_ModuleReference = (([`U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier) union3 [@js 75] | `U_n_153 of (ts_QualifiedName, ts_QualifiedName, ts_QualifiedName) union3 [@js 153] | `U_n_265 of (ts_ExternalModuleReference, ts_ExternalModuleReference) union2 [@js 265]] [@js.union on_field "kind"]), (ts_EntityName, (ts_ExternalModuleReference, (ts_Identifier, ts_QualifiedName) or_) or_) or_) or_
      and ts_ModuleResolutionCache = [`Ts_ModuleResolutionCache | `Ts_NonRelativeModuleNameResolutionCache] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ModuleResolutionHost = [`Ts_ModuleResolutionHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ModuleResolutionKind = [`Classic[@js 1] | `NodeJs[@js 2]] [@js.enum]
      and ts_ModuleResolutionKind_Classic = [`Classic[@js 1]] [@js.enum]
      and ts_ModuleResolutionKind_NodeJs = [`NodeJs[@js 2]] [@js.enum]
      and ts_ModuleSpecifierResolutionHost = [`Ts_ModuleSpecifierResolutionHost | `Ts_GetEffectiveTypeRootsHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_MultiplicativeOperator = ((ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_PercentToken, ts_SyntaxKind_SlashToken) or_) or_, ([`AsteriskToken[@js 41] | `PercentToken[@js 44] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_MultiplicativeOperatorOrHigher = ((ts_ExponentiationOperator, (ts_MultiplicativeOperator, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_PercentToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_, ([`AsteriskAsteriskToken[@js 42] | `AsteriskToken[@js 41] | `PercentToken[@js 44] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_NamedDeclaration = [`Ts_NamedDeclaration | `Ts_Declaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NamedExportBindings = (([`U_n_261 of (ts_NamedExports, ts_NamedExports) union2 [@js 261] | `U_n_262 of (ts_NamespaceExport, ts_NamespaceExport) union2 [@js 262]] [@js.union on_field "kind"]), (ts_NamedExports, ts_NamespaceExport) or_) or_
      and ts_NamedExports = [`Ts_NamedExports | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NamedImportBindings = (([`U_n_256 of (ts_NamespaceImport, ts_NamespaceImport) union2 [@js 256] | `U_n_257 of (ts_NamedImports, ts_NamedImports) union2 [@js 257]] [@js.union on_field "kind"]), (ts_NamedImports, ts_NamespaceImport) or_) or_
      and ts_NamedImports = [`Ts_NamedImports | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NamedImportsOrExports = (([`U_n_257 of (ts_NamedImports, ts_NamedImports) union2 [@js 257] | `U_n_261 of (ts_NamedExports, ts_NamedExports) union2 [@js 261]] [@js.union on_field "kind"]), (ts_NamedExports, ts_NamedImports) or_) or_
      and ts_NamespaceBody = (([`U_n_249 of (ts_NamespaceDeclaration, ts_NamespaceDeclaration) union2 [@js 249] | `U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2 [@js 250]] [@js.union on_field "kind"]), (ts_ModuleBlock, ts_NamespaceDeclaration) or_) or_
      and ts_NamespaceDeclaration = [`Ts_NamespaceDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_ModuleDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NamespaceExport = [`Ts_NamespaceExport | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NamespaceExportDeclaration = [`Ts_NamespaceExportDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NamespaceImport = [`Ts_NamespaceImport | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NavigateToItem = [`Ts_NavigateToItem] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NavigationBarItem = [`Ts_NavigationBarItem] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NavigationTree = [`Ts_NavigationTree] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NewExpression = [`Ts_NewExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NewLineKind = [`CarriageReturnLineFeed[@js 0] | `LineFeed[@js 1]] [@js.enum]
      and ts_NewLineKind_CarriageReturnLineFeed = [`CarriageReturnLineFeed[@js 0]] [@js.enum]
      and ts_NewLineKind_LineFeed = [`LineFeed[@js 1]] [@js.enum]
      and ts_NoSubstitutionTemplateLiteral = [`Ts_NoSubstitutionTemplateLiteral | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_LiteralExpression | `Ts_LiteralLikeNode | `Ts_LiteralLikeNode | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TemplateLiteralLikeNode | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Node = [`Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_NodeArray = [`Ts_NodeArray of 'T | `Ts_TextRange | `ReadonlyArray of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_NodeBuilderFlags = [`None[@js 0] | `NoTruncation[@js 1] | `WriteArrayAsGenericType[@js 2] | `GenerateNamesForShadowedTypeParams[@js 4] | `UseStructuralFallback[@js 8] | `ForbidIndexedAccessSymbolReferences[@js 16] | `WriteTypeArgumentsOfSignature[@js 32] | `UseFullyQualifiedType[@js 64] | `UseOnlyExternalAliasing[@js 128] | `SuppressAnyReturnType[@js 256] | `WriteTypeParametersInQualifiedName[@js 512] | `MultilineObjectLiterals[@js 1024] | `WriteClassExpressionAsTypeLiteral[@js 2048] | `UseTypeOfFunction[@js 4096] | `OmitParameterModifiers[@js 8192] | `UseAliasDefinedOutsideCurrentScope[@js 16384] | `UseSingleQuotesForStringLiteralType[@js 268435456] | `AllowThisInObjectLiteral[@js 32768] | `AllowQualifedNameInPlaceOfIdentifier[@js 65536] | `AllowAnonymousIdentifier[@js 131072] | `AllowEmptyUnionOrIntersection[@js 262144] | `AllowEmptyTuple[@js 524288] | `AllowUniqueESSymbolType[@js 1048576] | `AllowEmptyIndexInfoType[@js 2097152] | `AllowNodeModulesRelativePaths[@js 67108864] | `IgnoreErrors[@js 70221824] | `InObjectTypeLiteral[@js 4194304] | `InTypeAlias[@js 8388608] | `InInitialEntityName[@js 16777216] | `InReverseMappedType[@js 33554432]] [@js.enum]
      and ts_NodeBuilderFlags_None = [`None[@js 0]] [@js.enum]
      and ts_NodeBuilderFlags_NoTruncation = [`NoTruncation[@js 1]] [@js.enum]
      and ts_NodeBuilderFlags_WriteArrayAsGenericType = [`WriteArrayAsGenericType[@js 2]] [@js.enum]
      and ts_NodeBuilderFlags_GenerateNamesForShadowedTypeParams = [`GenerateNamesForShadowedTypeParams[@js 4]] [@js.enum]
      and ts_NodeBuilderFlags_UseStructuralFallback = [`UseStructuralFallback[@js 8]] [@js.enum]
      and ts_NodeBuilderFlags_ForbidIndexedAccessSymbolReferences = [`ForbidIndexedAccessSymbolReferences[@js 16]] [@js.enum]
      and ts_NodeBuilderFlags_WriteTypeArgumentsOfSignature = [`WriteTypeArgumentsOfSignature[@js 32]] [@js.enum]
      and ts_NodeBuilderFlags_UseFullyQualifiedType = [`UseFullyQualifiedType[@js 64]] [@js.enum]
      and ts_NodeBuilderFlags_UseOnlyExternalAliasing = [`UseOnlyExternalAliasing[@js 128]] [@js.enum]
      and ts_NodeBuilderFlags_SuppressAnyReturnType = [`SuppressAnyReturnType[@js 256]] [@js.enum]
      and ts_NodeBuilderFlags_WriteTypeParametersInQualifiedName = [`WriteTypeParametersInQualifiedName[@js 512]] [@js.enum]
      and ts_NodeBuilderFlags_MultilineObjectLiterals = [`MultilineObjectLiterals[@js 1024]] [@js.enum]
      and ts_NodeBuilderFlags_WriteClassExpressionAsTypeLiteral = [`WriteClassExpressionAsTypeLiteral[@js 2048]] [@js.enum]
      and ts_NodeBuilderFlags_UseTypeOfFunction = [`UseTypeOfFunction[@js 4096]] [@js.enum]
      and ts_NodeBuilderFlags_OmitParameterModifiers = [`OmitParameterModifiers[@js 8192]] [@js.enum]
      and ts_NodeBuilderFlags_UseAliasDefinedOutsideCurrentScope = [`UseAliasDefinedOutsideCurrentScope[@js 16384]] [@js.enum]
      and ts_NodeBuilderFlags_UseSingleQuotesForStringLiteralType = [`UseSingleQuotesForStringLiteralType[@js 268435456]] [@js.enum]
      and ts_NodeBuilderFlags_AllowThisInObjectLiteral = [`AllowThisInObjectLiteral[@js 32768]] [@js.enum]
      and ts_NodeBuilderFlags_AllowQualifedNameInPlaceOfIdentifier = [`AllowQualifedNameInPlaceOfIdentifier[@js 65536]] [@js.enum]
      and ts_NodeBuilderFlags_AllowAnonymousIdentifier = [`AllowAnonymousIdentifier[@js 131072]] [@js.enum]
      and ts_NodeBuilderFlags_AllowEmptyUnionOrIntersection = [`AllowEmptyUnionOrIntersection[@js 262144]] [@js.enum]
      and ts_NodeBuilderFlags_AllowEmptyTuple = [`AllowEmptyTuple[@js 524288]] [@js.enum]
      and ts_NodeBuilderFlags_AllowUniqueESSymbolType = [`AllowUniqueESSymbolType[@js 1048576]] [@js.enum]
      and ts_NodeBuilderFlags_AllowEmptyIndexInfoType = [`AllowEmptyIndexInfoType[@js 2097152]] [@js.enum]
      and ts_NodeBuilderFlags_AllowNodeModulesRelativePaths = [`AllowNodeModulesRelativePaths[@js 67108864]] [@js.enum]
      and ts_NodeBuilderFlags_IgnoreErrors = [`IgnoreErrors[@js 70221824]] [@js.enum]
      and ts_NodeBuilderFlags_InObjectTypeLiteral = [`InObjectTypeLiteral[@js 4194304]] [@js.enum]
      and ts_NodeBuilderFlags_InTypeAlias = [`InTypeAlias[@js 8388608]] [@js.enum]
      and ts_NodeBuilderFlags_InInitialEntityName = [`InInitialEntityName[@js 16777216]] [@js.enum]
      and ts_NodeBuilderFlags_InReverseMappedType = [`InReverseMappedType[@js 33554432]] [@js.enum]
      and ts_NodeFlags = [`None[@js 0] | `Let[@js 1] | `Const[@js 2] | `NestedNamespace[@js 4] | `Synthesized[@js 8] | `Namespace[@js 16] | `OptionalChain[@js 32] | `ExportContext[@js 64] | `ContainsThis[@js 128] | `HasImplicitReturn[@js 256] | `HasExplicitReturn[@js 512] | `GlobalAugmentation[@js 1024] | `HasAsyncFunctions[@js 2048] | `DisallowInContext[@js 4096] | `YieldContext[@js 8192] | `DecoratorContext[@js 16384] | `AwaitContext[@js 32768] | `ThisNodeHasError[@js 65536] | `JavaScriptFile[@js 131072] | `ThisNodeOrAnySubNodesHasError[@js 262144] | `HasAggregatedChildData[@js 524288] | `JSDoc[@js 4194304] | `JsonFile[@js 33554432] | `BlockScoped[@js 3] | `ReachabilityCheckFlags[@js 768] | `ReachabilityAndEmitFlags[@js 2816] | `ContextFlags[@js 25358336] | `TypeExcludesFlags[@js 40960]] [@js.enum]
      and ts_NodeFlags_None = [`None[@js 0]] [@js.enum]
      and ts_NodeFlags_Let = [`Let[@js 1]] [@js.enum]
      and ts_NodeFlags_Const = [`Const[@js 2]] [@js.enum]
      and ts_NodeFlags_NestedNamespace = [`NestedNamespace[@js 4]] [@js.enum]
      and ts_NodeFlags_Synthesized = [`Synthesized[@js 8]] [@js.enum]
      and ts_NodeFlags_Namespace = [`Namespace[@js 16]] [@js.enum]
      and ts_NodeFlags_OptionalChain = [`OptionalChain[@js 32]] [@js.enum]
      and ts_NodeFlags_ExportContext = [`ExportContext[@js 64]] [@js.enum]
      and ts_NodeFlags_ContainsThis = [`ContainsThis[@js 128]] [@js.enum]
      and ts_NodeFlags_HasImplicitReturn = [`HasImplicitReturn[@js 256]] [@js.enum]
      and ts_NodeFlags_HasExplicitReturn = [`HasExplicitReturn[@js 512]] [@js.enum]
      and ts_NodeFlags_GlobalAugmentation = [`GlobalAugmentation[@js 1024]] [@js.enum]
      and ts_NodeFlags_HasAsyncFunctions = [`HasAsyncFunctions[@js 2048]] [@js.enum]
      and ts_NodeFlags_DisallowInContext = [`DisallowInContext[@js 4096]] [@js.enum]
      and ts_NodeFlags_YieldContext = [`YieldContext[@js 8192]] [@js.enum]
      and ts_NodeFlags_DecoratorContext = [`DecoratorContext[@js 16384]] [@js.enum]
      and ts_NodeFlags_AwaitContext = [`AwaitContext[@js 32768]] [@js.enum]
      and ts_NodeFlags_ThisNodeHasError = [`ThisNodeHasError[@js 65536]] [@js.enum]
      and ts_NodeFlags_JavaScriptFile = [`JavaScriptFile[@js 131072]] [@js.enum]
      and ts_NodeFlags_ThisNodeOrAnySubNodesHasError = [`ThisNodeOrAnySubNodesHasError[@js 262144]] [@js.enum]
      and ts_NodeFlags_HasAggregatedChildData = [`HasAggregatedChildData[@js 524288]] [@js.enum]
      and ts_NodeFlags_JSDoc = [`JSDoc[@js 4194304]] [@js.enum]
      and ts_NodeFlags_JsonFile = [`JsonFile[@js 33554432]] [@js.enum]
      and ts_NodeFlags_BlockScoped = [`BlockScoped[@js 3]] [@js.enum]
      and ts_NodeFlags_ReachabilityCheckFlags = [`ReachabilityCheckFlags[@js 768]] [@js.enum]
      and ts_NodeFlags_ReachabilityAndEmitFlags = [`ReachabilityAndEmitFlags[@js 2816]] [@js.enum]
      and ts_NodeFlags_ContextFlags = [`ContextFlags[@js 25358336]] [@js.enum]
      and ts_NodeFlags_TypeExcludesFlags = [`TypeExcludesFlags[@js 40960]] [@js.enum]
      and ts_NodeWithTypeArguments = [`Ts_NodeWithTypeArguments | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NonNullExpression = [`Ts_NonNullExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NonRelativeModuleNameResolutionCache = [`Ts_NonRelativeModuleNameResolutionCache] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NotEmittedStatement = [`Ts_NotEmittedStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NullLiteral = [`Ts_NullLiteral | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_TypeNode | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NumberLiteralType = [`Ts_NumberLiteralType | `Ts_LiteralType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_NumericLiteral = [`Ts_NumericLiteral | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_LiteralExpression | `Ts_LiteralLikeNode | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ObjectBindingOrAssignmentPattern = (([`U_n_189 of (ts_ObjectBindingPattern, ts_ObjectBindingPattern) union2 [@js 189] | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193]] [@js.union on_field "kind"]), (ts_ObjectBindingPattern, ts_ObjectLiteralExpression) or_) or_
      and ts_ObjectBindingPattern = [`Ts_ObjectBindingPattern | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ObjectDestructuringAssignment = [`Ts_ObjectDestructuringAssignment | `Ts_BinaryExpression | `Ts_Declaration | `Ts_Expression | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_AssignmentExpression of ts_EqualsToken] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ObjectFlags = [`Class[@js 1] | `Interface[@js 2] | `Reference[@js 4] | `Tuple[@js 8] | `Anonymous[@js 16] | `Mapped[@js 32] | `Instantiated[@js 64] | `ObjectLiteral[@js 128] | `EvolvingArray[@js 256] | `ObjectLiteralPatternWithComputedProperties[@js 512] | `ContainsSpread[@js 1024] | `ReverseMapped[@js 2048] | `JsxAttributes[@js 4096] | `MarkerType[@js 8192] | `JSLiteral[@js 16384] | `FreshLiteral[@js 32768] | `ArrayLiteral[@js 65536] | `ObjectRestType[@js 131072] | `ClassOrInterface[@js 3]] [@js.enum]
      and ts_ObjectFlags_Class = [`Class[@js 1]] [@js.enum]
      and ts_ObjectFlags_Interface = [`Interface[@js 2]] [@js.enum]
      and ts_ObjectFlags_Reference = [`Reference[@js 4]] [@js.enum]
      and ts_ObjectFlags_Tuple = [`Tuple[@js 8]] [@js.enum]
      and ts_ObjectFlags_Anonymous = [`Anonymous[@js 16]] [@js.enum]
      and ts_ObjectFlags_Mapped = [`Mapped[@js 32]] [@js.enum]
      and ts_ObjectFlags_Instantiated = [`Instantiated[@js 64]] [@js.enum]
      and ts_ObjectFlags_ObjectLiteral = [`ObjectLiteral[@js 128]] [@js.enum]
      and ts_ObjectFlags_EvolvingArray = [`EvolvingArray[@js 256]] [@js.enum]
      and ts_ObjectFlags_ObjectLiteralPatternWithComputedProperties = [`ObjectLiteralPatternWithComputedProperties[@js 512]] [@js.enum]
      and ts_ObjectFlags_ContainsSpread = [`ContainsSpread[@js 1024]] [@js.enum]
      and ts_ObjectFlags_ReverseMapped = [`ReverseMapped[@js 2048]] [@js.enum]
      and ts_ObjectFlags_JsxAttributes = [`JsxAttributes[@js 4096]] [@js.enum]
      and ts_ObjectFlags_MarkerType = [`MarkerType[@js 8192]] [@js.enum]
      and ts_ObjectFlags_JSLiteral = [`JSLiteral[@js 16384]] [@js.enum]
      and ts_ObjectFlags_FreshLiteral = [`FreshLiteral[@js 32768]] [@js.enum]
      and ts_ObjectFlags_ArrayLiteral = [`ArrayLiteral[@js 65536]] [@js.enum]
      and ts_ObjectFlags_ObjectRestType = [`ObjectRestType[@js 131072]] [@js.enum]
      and ts_ObjectFlags_ClassOrInterface = [`ClassOrInterface[@js 3]] [@js.enum]
      and ts_ObjectLiteralElement = [`Ts_ObjectLiteralElement | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ObjectLiteralElementLike = (([`U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration) union2 [@js 161] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union3 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union3 [@js 164] | `U_n_281 of (ts_PropertyAssignment, ts_PropertyAssignment) union2 [@js 281] | `U_n_282 of (ts_ShorthandPropertyAssignment, ts_ShorthandPropertyAssignment) union2 [@js 282] | `U_n_283 of (ts_SpreadAssignment, ts_SpreadAssignment) union2 [@js 283]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_GetAccessorDeclaration, (ts_MethodDeclaration, (ts_PropertyAssignment, (ts_SetAccessorDeclaration, (ts_ShorthandPropertyAssignment, ts_SpreadAssignment) or_) or_) or_) or_) or_) or_) or_
      and ts_ObjectLiteralExpression = [`Ts_ObjectLiteralExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression | `Ts_ObjectLiteralExpressionBase of ts_ObjectLiteralElementLike] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_ObjectLiteralExpressionBase = [`Ts_ObjectLiteralExpressionBase of 'T | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_ObjectType = [`Ts_ObjectType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ObjectTypeDeclaration = (([`U_n_173 of (ts_TypeLiteralNode, ts_TypeLiteralNode) union2 [@js 173] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3 [@js 214] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 [@js 245] | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration) union2 [@js 246]] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, (ts_InterfaceDeclaration, ts_TypeLiteralNode) or_) or_) or_) or_) or_
      and ts_OmittedExpression = [`Ts_OmittedExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_OperationCanceledException = [`Ts_OperationCanceledException] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_OptionalChain = (([`U_n_194 of (ts_PropertyAccessChain, ts_PropertyAccessChain) union2 [@js 194] | `U_n_195 of (ts_ElementAccessChain, ts_ElementAccessChain) union2 [@js 195] | `U_n_196 of (ts_CallChain, ts_CallChain) union2 [@js 196]] [@js.union on_field "kind"]), (ts_CallChain, (ts_ElementAccessChain, ts_PropertyAccessChain) or_) or_) or_
      and ts_OptionalTypeNode = [`Ts_OptionalTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_OrganizeImportsScope = ts_CombinedCodeFixScope
      and ts_OutliningSpan = [`Ts_OutliningSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_OutliningSpanKind = [`Comment[@js "comment"] | `Region[@js "region"] | `Code[@js "code"] | `Imports[@js "imports"]] [@js.enum]
      and ts_OutliningSpanKind_Comment = [`Comment[@js "comment"]] [@js.enum]
      and ts_OutliningSpanKind_Region = [`Region[@js "region"]] [@js.enum]
      and ts_OutliningSpanKind_Code = [`Code[@js "code"]] [@js.enum]
      and ts_OutliningSpanKind_Imports = [`Imports[@js "imports"]] [@js.enum]
      and ts_OutputFile = [`Ts_OutputFile] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_OutputFileType = [`JavaScript[@js 0] | `SourceMap[@js 1] | `Declaration[@js 2]] [@js.enum]
      and ts_OutputFileType_JavaScript = [`JavaScript[@js 0]] [@js.enum]
      and ts_OutputFileType_SourceMap = [`SourceMap[@js 1]] [@js.enum]
      and ts_OutputFileType_Declaration = [`Declaration[@js 2]] [@js.enum]
      and ts_PackageId = [`Ts_PackageId] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ParameterDeclaration = [`Ts_ParameterDeclaration | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ParameterPropertyDeclaration = (ts_ParameterDeclaration, anonymous_interface_12) intersection2
      and ts_ParenthesizedExpression = [`Ts_ParenthesizedExpression | `Ts_Expression | `Ts_JSDocContainer | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ParenthesizedTypeNode = [`Ts_ParenthesizedTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ParseConfigFileHost = [`Ts_ParseConfigFileHost | `Ts_ConfigFileDiagnosticsReporter | `Ts_ParseConfigHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ParseConfigHost = [`Ts_ParseConfigHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ParsedCommandLine = [`Ts_ParsedCommandLine] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ParsedTsconfig = [`Ts_ParsedTsconfig] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PartiallyEmittedExpression = [`Ts_PartiallyEmittedExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Path = (string, anonymous_interface_3) intersection2
      and ts_PerModuleNameCache = [`Ts_PerModuleNameCache] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PluginImport = [`Ts_PluginImport] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PlusToken = ts_SyntaxKind_PlusToken ts_Token
      and ts_PollingWatchKind = [`FixedInterval[@js 0] | `PriorityInterval[@js 1] | `DynamicPriority[@js 2]] [@js.enum]
      and ts_PollingWatchKind_FixedInterval = [`FixedInterval[@js 0]] [@js.enum]
      and ts_PollingWatchKind_PriorityInterval = [`PriorityInterval[@js 1]] [@js.enum]
      and ts_PollingWatchKind_DynamicPriority = [`DynamicPriority[@js 2]] [@js.enum]
      and ts_PostfixUnaryExpression = [`Ts_PostfixUnaryExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PostfixUnaryOperator = ((ts_SyntaxKind_MinusMinusToken, ts_SyntaxKind_PlusPlusToken) or_, ([`MinusMinusToken[@js 46] | `PlusPlusToken[@js 45]] [@js.enum])) or_enum
      and ts_PreFinallyFlow = [`Ts_PreFinallyFlow | `Ts_FlowNodeBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PreProcessedFileInfo = [`Ts_PreProcessedFileInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PrefixUnaryExpression = [`Ts_PrefixUnaryExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PrefixUnaryOperator = ((ts_SyntaxKind_ExclamationToken, (ts_SyntaxKind_MinusMinusToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PlusPlusToken, (ts_SyntaxKind_PlusToken, ts_SyntaxKind_TildeToken) or_) or_) or_) or_) or_, ([`ExclamationToken[@js 53] | `MinusMinusToken[@js 46] | `MinusToken[@js 40] | `PlusPlusToken[@js 45] | `PlusToken[@js 39] | `TildeToken[@js 54]] [@js.enum])) or_enum
      and ts_PrimaryExpression = [`Ts_PrimaryExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PrintHandlers = [`Ts_PrintHandlers] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Printer = [`Ts_Printer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PrinterOptions = [`Ts_PrinterOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PrivateIdentifier = [`Ts_PrivateIdentifier | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Program = [`Ts_Program | `Ts_ScriptReferenceHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_ProgramHost = [`Ts_ProgramHost of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_ProjectReference = [`Ts_ProjectReference] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PropertyAccessChain = [`Ts_PropertyAccessChain | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_PropertyAccessExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PropertyAccessEntityNameExpression = [`Ts_PropertyAccessEntityNameExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_PropertyAccessExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PropertyAccessExpression = [`Ts_PropertyAccessExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PropertyAssignment = [`Ts_PropertyAssignment | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PropertyDeclaration = [`Ts_PropertyDeclaration | `Ts_ClassElement | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PropertyLikeDeclaration = [`Ts_PropertyLikeDeclaration | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PropertyName = (([`U_n_8 of (ts_NumericLiteral, ts_NumericLiteral) union2 [@js 8] | `U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2 [@js 10] | `U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 [@js 76] | `U_n_154 of (ts_ComputedPropertyName, ts_ComputedPropertyName) union2 [@js 154]] [@js.union on_field "kind"]), (ts_ComputedPropertyName, (ts_Identifier, (ts_NumericLiteral, (ts_PrivateIdentifier, ts_StringLiteral) or_) or_) or_) or_) or_
      and ts_PropertySignature = [`Ts_PropertySignature | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange | `Ts_TypeElement] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_PseudoBigInt = [`Ts_PseudoBigInt] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_Push = [`Ts_Push of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_QualifiedName = [`Ts_QualifiedName | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_QuestionDotToken = ts_SyntaxKind_QuestionDotToken ts_Token
      and ts_QuestionToken = ts_SyntaxKind_QuestionToken ts_Token
      and ts_QuickInfo = [`Ts_QuickInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ReadBuildProgramHost = [`Ts_ReadBuildProgramHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_ReadonlyMap = [`Ts_ReadonlyMap of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_ReadonlyToken = ts_SyntaxKind_ReadonlyKeyword ts_Token
      and 'T ts_ReadonlyUnderscoreEscapedMap = [`Ts_ReadonlyUnderscoreEscapedMap of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_RefactorActionInfo = [`Ts_RefactorActionInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_RefactorEditInfo = [`Ts_RefactorEditInfo] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ReferenceEntry = [`Ts_ReferenceEntry | `Ts_DocumentSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ReferencedSymbol = [`Ts_ReferencedSymbol] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ReferencedSymbolDefinitionInfo = [`Ts_ReferencedSymbolDefinitionInfo | `Ts_DefinitionInfo | `Ts_DocumentSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_RegularExpressionLiteral = [`Ts_RegularExpressionLiteral | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_LiteralExpression | `Ts_LiteralLikeNode | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_RelationalOperator = ((ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, ts_SyntaxKind_LessThanToken) or_) or_) or_) or_) or_, ([`GreaterThanEqualsToken[@js 33] | `GreaterThanToken[@js 31] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `LessThanEqualsToken[@js 32] | `LessThanToken[@js 29]] [@js.enum])) or_enum
      and ts_RelationalOperatorOrHigher = ((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_ExponentiationOperator, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AsteriskAsteriskToken[@js 42] | `AsteriskToken[@js 41] | `GreaterThanEqualsToken[@js 33] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `GreaterThanToken[@js 31] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `LessThanEqualsToken[@js 32] | `LessThanLessThanToken[@js 47] | `LessThanToken[@js 29] | `MinusToken[@js 40] | `PercentToken[@js 44] | `PlusToken[@js 39] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_RenameInfo = (([`U_b_false of (ts_RenameInfoFailure, ts_RenameInfoFailure) union2 [@js false] | `U_b_true of (ts_RenameInfoSuccess, ts_RenameInfoSuccess) union2 [@js true]] [@js.union on_field "canRename"]), (ts_RenameInfoFailure, ts_RenameInfoSuccess) or_) or_
      and ts_RenameInfoFailure = [`Ts_RenameInfoFailure] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_RenameInfoOptions = [`Ts_RenameInfoOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_RenameInfoSuccess = [`Ts_RenameInfoSuccess] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_RenameLocation = [`Ts_RenameLocation | `Ts_DocumentSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ReportEmitErrorSummary = [`Ts_ReportEmitErrorSummary] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ResolveProjectReferencePathHost = [`Ts_ResolveProjectReferencePathHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ResolvedConfigFileName = (string, anonymous_interface_4) intersection2
      and ts_ResolvedModule = [`Ts_ResolvedModule] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ResolvedModuleFull = [`Ts_ResolvedModuleFull | `Ts_ResolvedModule] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ResolvedModuleWithFailedLookupLocations = [`Ts_ResolvedModuleWithFailedLookupLocations] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ResolvedProjectReference = [`Ts_ResolvedProjectReference] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ResolvedTypeReferenceDirective = [`Ts_ResolvedTypeReferenceDirective] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ResolvedTypeReferenceDirectiveWithFailedLookupLocations = [`Ts_ResolvedTypeReferenceDirectiveWithFailedLookupLocations] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_RestTypeNode = [`Ts_RestTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ReturnStatement = [`Ts_ReturnStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Scanner = [`Ts_Scanner] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ScriptElementKind = [`unknown[@js ""] | `warning[@js "warning"] | `keyword[@js "keyword"] | `scriptElement[@js "script"] | `moduleElement[@js "module"] | `classElement[@js "class"] | `localClassElement[@js "local class"] | `interfaceElement[@js "interface"] | `typeElement[@js "type"] | `enumElement[@js "enum"] | `enumMemberElement[@js "enum member"] | `variableElement[@js "var"] | `localVariableElement[@js "local var"] | `functionElement[@js "function"] | `localFunctionElement[@js "local function"] | `memberFunctionElement[@js "method"] | `memberGetAccessorElement[@js "getter"] | `memberSetAccessorElement[@js "setter"] | `memberVariableElement[@js "property"] | `constructorImplementationElement[@js "constructor"] | `callSignatureElement[@js "call"] | `indexSignatureElement[@js "index"] | `constructSignatureElement[@js "construct"] | `parameterElement[@js "parameter"] | `typeParameterElement[@js "type parameter"] | `primitiveType[@js "primitive type"] | `label[@js "label"] | `alias[@js "alias"] | `constElement[@js "const"] | `letElement[@js "let"] | `directory[@js "directory"] | `externalModuleName[@js "external module name"] | `jsxAttribute[@js "JSX attribute"] | `string[@js "string"]] [@js.enum]
      and ts_ScriptElementKind_unknown = [`unknown[@js ""]] [@js.enum]
      and ts_ScriptElementKind_warning = [`warning[@js "warning"]] [@js.enum]
      and ts_ScriptElementKind_keyword = [`keyword[@js "keyword"]] [@js.enum]
      and ts_ScriptElementKind_scriptElement = [`scriptElement[@js "script"]] [@js.enum]
      and ts_ScriptElementKind_moduleElement = [`moduleElement[@js "module"]] [@js.enum]
      and ts_ScriptElementKind_classElement = [`classElement[@js "class"]] [@js.enum]
      and ts_ScriptElementKind_localClassElement = [`localClassElement[@js "local class"]] [@js.enum]
      and ts_ScriptElementKind_interfaceElement = [`interfaceElement[@js "interface"]] [@js.enum]
      and ts_ScriptElementKind_typeElement = [`typeElement[@js "type"]] [@js.enum]
      and ts_ScriptElementKind_enumElement = [`enumElement[@js "enum"]] [@js.enum]
      and ts_ScriptElementKind_enumMemberElement = [`enumMemberElement[@js "enum member"]] [@js.enum]
      and ts_ScriptElementKind_variableElement = [`variableElement[@js "var"]] [@js.enum]
      and ts_ScriptElementKind_localVariableElement = [`localVariableElement[@js "local var"]] [@js.enum]
      and ts_ScriptElementKind_functionElement = [`functionElement[@js "function"]] [@js.enum]
      and ts_ScriptElementKind_localFunctionElement = [`localFunctionElement[@js "local function"]] [@js.enum]
      and ts_ScriptElementKind_memberFunctionElement = [`memberFunctionElement[@js "method"]] [@js.enum]
      and ts_ScriptElementKind_memberGetAccessorElement = [`memberGetAccessorElement[@js "getter"]] [@js.enum]
      and ts_ScriptElementKind_memberSetAccessorElement = [`memberSetAccessorElement[@js "setter"]] [@js.enum]
      and ts_ScriptElementKind_memberVariableElement = [`memberVariableElement[@js "property"]] [@js.enum]
      and ts_ScriptElementKind_constructorImplementationElement = [`constructorImplementationElement[@js "constructor"]] [@js.enum]
      and ts_ScriptElementKind_callSignatureElement = [`callSignatureElement[@js "call"]] [@js.enum]
      and ts_ScriptElementKind_indexSignatureElement = [`indexSignatureElement[@js "index"]] [@js.enum]
      and ts_ScriptElementKind_constructSignatureElement = [`constructSignatureElement[@js "construct"]] [@js.enum]
      and ts_ScriptElementKind_parameterElement = [`parameterElement[@js "parameter"]] [@js.enum]
      and ts_ScriptElementKind_typeParameterElement = [`typeParameterElement[@js "type parameter"]] [@js.enum]
      and ts_ScriptElementKind_primitiveType = [`primitiveType[@js "primitive type"]] [@js.enum]
      and ts_ScriptElementKind_label = [`label[@js "label"]] [@js.enum]
      and ts_ScriptElementKind_alias = [`alias[@js "alias"]] [@js.enum]
      and ts_ScriptElementKind_constElement = [`constElement[@js "const"]] [@js.enum]
      and ts_ScriptElementKind_letElement = [`letElement[@js "let"]] [@js.enum]
      and ts_ScriptElementKind_directory = [`directory[@js "directory"]] [@js.enum]
      and ts_ScriptElementKind_externalModuleName = [`externalModuleName[@js "external module name"]] [@js.enum]
      and ts_ScriptElementKind_jsxAttribute = [`jsxAttribute[@js "JSX attribute"]] [@js.enum]
      and ts_ScriptElementKind_string = [`string[@js "string"]] [@js.enum]
      and ts_ScriptElementKindModifier = [`none[@js ""] | `publicMemberModifier[@js "public"] | `privateMemberModifier[@js "private"] | `protectedMemberModifier[@js "protected"] | `exportedModifier[@js "export"] | `ambientModifier[@js "declare"] | `staticModifier[@js "static"] | `abstractModifier[@js "abstract"] | `optionalModifier[@js "optional"] | `dtsModifier[@js ".d.ts"] | `tsModifier[@js ".ts"] | `tsxModifier[@js ".tsx"] | `jsModifier[@js ".js"] | `jsxModifier[@js ".jsx"] | `jsonModifier[@js ".json"]] [@js.enum]
      and ts_ScriptElementKindModifier_none = [`none[@js ""]] [@js.enum]
      and ts_ScriptElementKindModifier_publicMemberModifier = [`publicMemberModifier[@js "public"]] [@js.enum]
      and ts_ScriptElementKindModifier_privateMemberModifier = [`privateMemberModifier[@js "private"]] [@js.enum]
      and ts_ScriptElementKindModifier_protectedMemberModifier = [`protectedMemberModifier[@js "protected"]] [@js.enum]
      and ts_ScriptElementKindModifier_exportedModifier = [`exportedModifier[@js "export"]] [@js.enum]
      and ts_ScriptElementKindModifier_ambientModifier = [`ambientModifier[@js "declare"]] [@js.enum]
      and ts_ScriptElementKindModifier_staticModifier = [`staticModifier[@js "static"]] [@js.enum]
      and ts_ScriptElementKindModifier_abstractModifier = [`abstractModifier[@js "abstract"]] [@js.enum]
      and ts_ScriptElementKindModifier_optionalModifier = [`optionalModifier[@js "optional"]] [@js.enum]
      and ts_ScriptElementKindModifier_dtsModifier = [`dtsModifier[@js ".d.ts"]] [@js.enum]
      and ts_ScriptElementKindModifier_tsModifier = [`tsModifier[@js ".ts"]] [@js.enum]
      and ts_ScriptElementKindModifier_tsxModifier = [`tsxModifier[@js ".tsx"]] [@js.enum]
      and ts_ScriptElementKindModifier_jsModifier = [`jsModifier[@js ".js"]] [@js.enum]
      and ts_ScriptElementKindModifier_jsxModifier = [`jsxModifier[@js ".jsx"]] [@js.enum]
      and ts_ScriptElementKindModifier_jsonModifier = [`jsonModifier[@js ".json"]] [@js.enum]
      and ts_ScriptKind = [`Unknown[@js 0] | `JS[@js 1] | `JSX[@js 2] | `TS[@js 3] | `TSX[@js 4] | `External[@js 5] | `JSON[@js 6] | `Deferred[@js 7]] [@js.enum]
      and ts_ScriptKind_Unknown = [`Unknown[@js 0]] [@js.enum]
      and ts_ScriptKind_JS = [`JS[@js 1]] [@js.enum]
      and ts_ScriptKind_JSX = [`JSX[@js 2]] [@js.enum]
      and ts_ScriptKind_TS = [`TS[@js 3]] [@js.enum]
      and ts_ScriptKind_TSX = [`TSX[@js 4]] [@js.enum]
      and ts_ScriptKind_External = [`External[@js 5]] [@js.enum]
      and ts_ScriptKind_JSON = [`JSON[@js 6]] [@js.enum]
      and ts_ScriptKind_Deferred = [`Deferred[@js 7]] [@js.enum]
      and ts_ScriptReferenceHost = [`Ts_ScriptReferenceHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ScriptTarget = [`ES3[@js 0] | `ES5[@js 1] | `ES2015[@js 2] | `ES2016[@js 3] | `ES2017[@js 4] | `ES2018[@js 5] | `ES2019[@js 6] | `ES2020[@js 7] | `ESNext[@js 99] | `JSON[@js 100] | `Latest[@js 99]] [@js.enum]
      and ts_ScriptTarget_ES3 = [`ES3[@js 0]] [@js.enum]
      and ts_ScriptTarget_ES5 = [`ES5[@js 1]] [@js.enum]
      and ts_ScriptTarget_ES2015 = [`ES2015[@js 2]] [@js.enum]
      and ts_ScriptTarget_ES2016 = [`ES2016[@js 3]] [@js.enum]
      and ts_ScriptTarget_ES2017 = [`ES2017[@js 4]] [@js.enum]
      and ts_ScriptTarget_ES2018 = [`ES2018[@js 5]] [@js.enum]
      and ts_ScriptTarget_ES2019 = [`ES2019[@js 6]] [@js.enum]
      and ts_ScriptTarget_ES2020 = [`ES2020[@js 7]] [@js.enum]
      and ts_ScriptTarget_ESNext = [`ESNext[@js 99]] [@js.enum]
      and ts_ScriptTarget_JSON = [`JSON[@js 100]] [@js.enum]
      and ts_ScriptTarget_Latest = [`Latest[@js 99]] [@js.enum]
      and ts_SelectionRange = [`Ts_SelectionRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SemanticDiagnosticsBuilderProgram = [`Ts_SemanticDiagnosticsBuilderProgram | `Ts_BuilderProgram] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SemicolonClassElement = [`Ts_SemicolonClassElement | `Ts_ClassElement | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SemicolonPreference = [`Ignore[@js "ignore"] | `Insert[@js "insert"] | `Remove[@js "remove"]] [@js.enum]
      and ts_SemicolonPreference_Ignore = [`Ignore[@js "ignore"]] [@js.enum]
      and ts_SemicolonPreference_Insert = [`Insert[@js "insert"]] [@js.enum]
      and ts_SemicolonPreference_Remove = [`Remove[@js "remove"]] [@js.enum]
      and ts_SetAccessorDeclaration = [`Ts_SetAccessorDeclaration | `Ts_ClassElement | `Ts_Declaration | `Ts_FunctionLikeDeclarationBase | `Ts_JSDocContainer | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_SignatureDeclarationBase | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ShiftOperator = ((ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, ts_SyntaxKind_LessThanLessThanToken) or_) or_, ([`GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `LessThanLessThanToken[@js 47]] [@js.enum])) or_enum
      and ts_ShiftOperatorOrHigher = ((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_ExponentiationOperator, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_ShiftOperator, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusToken, ts_SyntaxKind_SlashToken) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AsteriskAsteriskToken[@js 42] | `AsteriskToken[@js 41] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `GreaterThanGreaterThanToken[@js 48] | `LessThanLessThanToken[@js 47] | `MinusToken[@js 40] | `PercentToken[@js 44] | `PlusToken[@js 39] | `SlashToken[@js 43]] [@js.enum])) or_enum
      and ts_ShorthandPropertyAssignment = [`Ts_ShorthandPropertyAssignment | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Signature = [`Ts_Signature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureDeclaration = (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature) union2 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration) union2 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration) union2 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union3 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union3 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union2 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union2 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union2 [@js 167] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode) union2 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode) union2 [@js 171] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression) union2 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction) union2 [@js 202] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration) union2 [@js 244] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType) union2 [@js 300]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_JSDocFunctionType, (ts_MethodDeclaration, (ts_MethodSignature, ts_SetAccessorDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_SignatureDeclarationBase = [`Ts_SignatureDeclarationBase | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpCharacterTypedReason = [`Ts_SignatureHelpCharacterTypedReason] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpInvokedReason = [`Ts_SignatureHelpInvokedReason] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpItem = [`Ts_SignatureHelpItem] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpItems = [`Ts_SignatureHelpItems] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpItemsOptions = [`Ts_SignatureHelpItemsOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpParameter = [`Ts_SignatureHelpParameter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpRetriggerCharacter = (ts_SignatureHelpTriggerCharacter, ([`L_s4[@js "("] | `L_s5[@js ")"] | `L_s6[@js ","] | `L_s16[@js "<"]] [@js.enum])) or_enum
      and ts_SignatureHelpRetriggeredReason = [`Ts_SignatureHelpRetriggeredReason] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SignatureHelpTriggerCharacter = ([`L_s4[@js "("] | `L_s6[@js ","] | `L_s16[@js "<"]] [@js.enum])
      and ts_SignatureHelpTriggerReason = (([`U_s43_characterTyped of (ts_SignatureHelpCharacterTypedReason, ts_SignatureHelpCharacterTypedReason) union2 [@js "characterTyped"] | `U_s82_invoked of (ts_SignatureHelpInvokedReason, ts_SignatureHelpInvokedReason) union2 [@js "invoked"] | `U_s118_retrigger of (ts_SignatureHelpRetriggeredReason, ts_SignatureHelpRetriggeredReason) union2 [@js "retrigger"]] [@js.union on_field "kind"]), (ts_SignatureHelpCharacterTypedReason, (ts_SignatureHelpInvokedReason, ts_SignatureHelpRetriggeredReason) or_) or_) or_
      and ts_SignatureKind = [`Call[@js 0] | `Construct[@js 1]] [@js.enum]
      and ts_SignatureKind_Call = [`Call[@js 0]] [@js.enum]
      and ts_SignatureKind_Construct = [`Construct[@js 1]] [@js.enum]
      and 'T ts_SolutionBuilder = [`Ts_SolutionBuilder of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_SolutionBuilderHost = [`Ts_SolutionBuilderHost of 'T | `Ts_ProgramHost of 'T | `Ts_SolutionBuilderHostBase of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_SolutionBuilderHostBase = [`Ts_SolutionBuilderHostBase of 'T | `Ts_ProgramHost of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_SolutionBuilderWithWatchHost = [`Ts_SolutionBuilderWithWatchHost of 'T | `Ts_WatchHost | `Ts_ProgramHost of 'T | `Ts_SolutionBuilderHostBase of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_SortedArray = [`Ts_SortedArray of 'T | `Array of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_SortedReadonlyArray = [`Ts_SortedReadonlyArray of 'T | `ReadonlyArray of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_SourceFile = [`Ts_SourceFile | `Ts_Declaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SourceFileLike = [`Ts_SourceFileLike] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SourceMapRange = [`Ts_SourceMapRange | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SourceMapSource = [`Ts_SourceMapSource] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SourceMapSpan = [`Ts_SourceMapSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SpreadAssignment = [`Ts_SpreadAssignment | `Ts_Declaration | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_ObjectLiteralElement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SpreadElement = [`Ts_SpreadElement | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Statement = [`Ts_Statement | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_StringLiteral = [`Ts_StringLiteral | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_LiteralExpression | `Ts_LiteralLikeNode | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_StringLiteralLike = (([`U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2 [@js 10] | `U_n_14 of (ts_NoSubstitutionTemplateLiteral, ts_NoSubstitutionTemplateLiteral) union2 [@js 14]] [@js.union on_field "kind"]), (ts_NoSubstitutionTemplateLiteral, ts_StringLiteral) or_) or_
      and ts_StringLiteralType = [`Ts_StringLiteralType | `Ts_LiteralType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_StructuredType = (ts_IntersectionType, (ts_ObjectType, ts_UnionType) or_) or_
      and ts_SubstitutionType = [`Ts_SubstitutionType | `Ts_InstantiableType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SuperCall = [`Ts_SuperCall | `Ts_CallExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SuperElementAccessExpression = [`Ts_SuperElementAccessExpression | `Ts_ElementAccessExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SuperExpression = [`Ts_SuperExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SuperProperty = (([`U_n_194 of (ts_SuperPropertyAccessExpression, ts_SuperPropertyAccessExpression) union2 [@js 194] | `U_n_195 of (ts_SuperElementAccessExpression, ts_SuperElementAccessExpression) union2 [@js 195]] [@js.union on_field "kind"]), (ts_SuperElementAccessExpression, ts_SuperPropertyAccessExpression) or_) or_
      and ts_SuperPropertyAccessExpression = [`Ts_SuperPropertyAccessExpression | `Ts_Declaration | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_PropertyAccessExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SwitchStatement = [`Ts_SwitchStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Symbol = [`Ts_Symbol] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SymbolDisplayPart = [`Ts_SymbolDisplayPart] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SymbolDisplayPartKind = [`aliasName[@js 0] | `className[@js 1] | `enumName[@js 2] | `fieldName[@js 3] | `interfaceName[@js 4] | `keyword[@js 5] | `lineBreak[@js 6] | `numericLiteral[@js 7] | `stringLiteral[@js 8] | `localName[@js 9] | `methodName[@js 10] | `moduleName[@js 11] | `operator[@js 12] | `parameterName[@js 13] | `propertyName[@js 14] | `punctuation[@js 15] | `space[@js 16] | `text[@js 17] | `typeParameterName[@js 18] | `enumMemberName[@js 19] | `functionName[@js 20] | `regularExpressionLiteral[@js 21]] [@js.enum]
      and ts_SymbolDisplayPartKind_aliasName = [`aliasName[@js 0]] [@js.enum]
      and ts_SymbolDisplayPartKind_className = [`className[@js 1]] [@js.enum]
      and ts_SymbolDisplayPartKind_enumName = [`enumName[@js 2]] [@js.enum]
      and ts_SymbolDisplayPartKind_fieldName = [`fieldName[@js 3]] [@js.enum]
      and ts_SymbolDisplayPartKind_interfaceName = [`interfaceName[@js 4]] [@js.enum]
      and ts_SymbolDisplayPartKind_keyword = [`keyword[@js 5]] [@js.enum]
      and ts_SymbolDisplayPartKind_lineBreak = [`lineBreak[@js 6]] [@js.enum]
      and ts_SymbolDisplayPartKind_numericLiteral = [`numericLiteral[@js 7]] [@js.enum]
      and ts_SymbolDisplayPartKind_stringLiteral = [`stringLiteral[@js 8]] [@js.enum]
      and ts_SymbolDisplayPartKind_localName = [`localName[@js 9]] [@js.enum]
      and ts_SymbolDisplayPartKind_methodName = [`methodName[@js 10]] [@js.enum]
      and ts_SymbolDisplayPartKind_moduleName = [`moduleName[@js 11]] [@js.enum]
      and ts_SymbolDisplayPartKind_operator = [`operator[@js 12]] [@js.enum]
      and ts_SymbolDisplayPartKind_parameterName = [`parameterName[@js 13]] [@js.enum]
      and ts_SymbolDisplayPartKind_propertyName = [`propertyName[@js 14]] [@js.enum]
      and ts_SymbolDisplayPartKind_punctuation = [`punctuation[@js 15]] [@js.enum]
      and ts_SymbolDisplayPartKind_space = [`space[@js 16]] [@js.enum]
      and ts_SymbolDisplayPartKind_text = [`text[@js 17]] [@js.enum]
      and ts_SymbolDisplayPartKind_typeParameterName = [`typeParameterName[@js 18]] [@js.enum]
      and ts_SymbolDisplayPartKind_enumMemberName = [`enumMemberName[@js 19]] [@js.enum]
      and ts_SymbolDisplayPartKind_functionName = [`functionName[@js 20]] [@js.enum]
      and ts_SymbolDisplayPartKind_regularExpressionLiteral = [`regularExpressionLiteral[@js 21]] [@js.enum]
      and ts_SymbolFlags = [`None[@js 0] | `FunctionScopedVariable[@js 1] | `BlockScopedVariable[@js 2] | `Property[@js 4] | `EnumMember[@js 8] | `Function[@js 16] | `Class[@js 32] | `Interface[@js 64] | `ConstEnum[@js 128] | `RegularEnum[@js 256] | `ValueModule[@js 512] | `NamespaceModule[@js 1024] | `TypeLiteral[@js 2048] | `ObjectLiteral[@js 4096] | `Method[@js 8192] | `Constructor[@js 16384] | `GetAccessor[@js 32768] | `SetAccessor[@js 65536] | `Signature[@js 131072] | `TypeParameter[@js 262144] | `TypeAlias[@js 524288] | `ExportValue[@js 1048576] | `Alias[@js 2097152] | `Prototype[@js 4194304] | `ExportStar[@js 8388608] | `Optional[@js 16777216] | `Transient[@js 33554432] | `Assignment[@js 67108864] | `ModuleExports[@js 134217728] | `Enum[@js 384] | `Variable[@js 3] | `Value[@js 111551] | `Type[@js 788968] | `Namespace[@js 1920] | `Module[@js 1536] | `Accessor[@js 98304] | `FunctionScopedVariableExcludes[@js 111550] | `BlockScopedVariableExcludes[@js 111551] | `ParameterExcludes[@js 111551] | `PropertyExcludes[@js 0] | `EnumMemberExcludes[@js 900095] | `FunctionExcludes[@js 110991] | `ClassExcludes[@js 899503] | `InterfaceExcludes[@js 788872] | `RegularEnumExcludes[@js 899327] | `ConstEnumExcludes[@js 899967] | `ValueModuleExcludes[@js 110735] | `NamespaceModuleExcludes[@js 0] | `MethodExcludes[@js 103359] | `GetAccessorExcludes[@js 46015] | `SetAccessorExcludes[@js 78783] | `TypeParameterExcludes[@js 526824] | `TypeAliasExcludes[@js 788968] | `AliasExcludes[@js 2097152] | `ModuleMember[@js 2623475] | `ExportHasLocal[@js 944] | `BlockScoped[@js 418] | `PropertyOrAccessor[@js 98308] | `ClassMember[@js 106500]] [@js.enum]
      and ts_SymbolFlags_None = [`None[@js 0]] [@js.enum]
      and ts_SymbolFlags_FunctionScopedVariable = [`FunctionScopedVariable[@js 1]] [@js.enum]
      and ts_SymbolFlags_BlockScopedVariable = [`BlockScopedVariable[@js 2]] [@js.enum]
      and ts_SymbolFlags_Property = [`Property[@js 4]] [@js.enum]
      and ts_SymbolFlags_EnumMember = [`EnumMember[@js 8]] [@js.enum]
      and ts_SymbolFlags_Function = [`Function[@js 16]] [@js.enum]
      and ts_SymbolFlags_Class = [`Class[@js 32]] [@js.enum]
      and ts_SymbolFlags_Interface = [`Interface[@js 64]] [@js.enum]
      and ts_SymbolFlags_ConstEnum = [`ConstEnum[@js 128]] [@js.enum]
      and ts_SymbolFlags_RegularEnum = [`RegularEnum[@js 256]] [@js.enum]
      and ts_SymbolFlags_ValueModule = [`ValueModule[@js 512]] [@js.enum]
      and ts_SymbolFlags_NamespaceModule = [`NamespaceModule[@js 1024]] [@js.enum]
      and ts_SymbolFlags_TypeLiteral = [`TypeLiteral[@js 2048]] [@js.enum]
      and ts_SymbolFlags_ObjectLiteral = [`ObjectLiteral[@js 4096]] [@js.enum]
      and ts_SymbolFlags_Method = [`Method[@js 8192]] [@js.enum]
      and ts_SymbolFlags_Constructor = [`Constructor[@js 16384]] [@js.enum]
      and ts_SymbolFlags_GetAccessor = [`GetAccessor[@js 32768]] [@js.enum]
      and ts_SymbolFlags_SetAccessor = [`SetAccessor[@js 65536]] [@js.enum]
      and ts_SymbolFlags_Signature = [`Signature[@js 131072]] [@js.enum]
      and ts_SymbolFlags_TypeParameter = [`TypeParameter[@js 262144]] [@js.enum]
      and ts_SymbolFlags_TypeAlias = [`TypeAlias[@js 524288]] [@js.enum]
      and ts_SymbolFlags_ExportValue = [`ExportValue[@js 1048576]] [@js.enum]
      and ts_SymbolFlags_Alias = [`Alias[@js 2097152]] [@js.enum]
      and ts_SymbolFlags_Prototype = [`Prototype[@js 4194304]] [@js.enum]
      and ts_SymbolFlags_ExportStar = [`ExportStar[@js 8388608]] [@js.enum]
      and ts_SymbolFlags_Optional = [`Optional[@js 16777216]] [@js.enum]
      and ts_SymbolFlags_Transient = [`Transient[@js 33554432]] [@js.enum]
      and ts_SymbolFlags_Assignment = [`Assignment[@js 67108864]] [@js.enum]
      and ts_SymbolFlags_ModuleExports = [`ModuleExports[@js 134217728]] [@js.enum]
      and ts_SymbolFlags_Enum = [`Enum[@js 384]] [@js.enum]
      and ts_SymbolFlags_Variable = [`Variable[@js 3]] [@js.enum]
      and ts_SymbolFlags_Value = [`Value[@js 111551]] [@js.enum]
      and ts_SymbolFlags_Type = [`Type[@js 788968]] [@js.enum]
      and ts_SymbolFlags_Namespace = [`Namespace[@js 1920]] [@js.enum]
      and ts_SymbolFlags_Module = [`Module[@js 1536]] [@js.enum]
      and ts_SymbolFlags_Accessor = [`Accessor[@js 98304]] [@js.enum]
      and ts_SymbolFlags_FunctionScopedVariableExcludes = [`FunctionScopedVariableExcludes[@js 111550]] [@js.enum]
      and ts_SymbolFlags_BlockScopedVariableExcludes = [`BlockScopedVariableExcludes[@js 111551]] [@js.enum]
      and ts_SymbolFlags_ParameterExcludes = [`ParameterExcludes[@js 111551]] [@js.enum]
      and ts_SymbolFlags_PropertyExcludes = [`PropertyExcludes[@js 0]] [@js.enum]
      and ts_SymbolFlags_EnumMemberExcludes = [`EnumMemberExcludes[@js 900095]] [@js.enum]
      and ts_SymbolFlags_FunctionExcludes = [`FunctionExcludes[@js 110991]] [@js.enum]
      and ts_SymbolFlags_ClassExcludes = [`ClassExcludes[@js 899503]] [@js.enum]
      and ts_SymbolFlags_InterfaceExcludes = [`InterfaceExcludes[@js 788872]] [@js.enum]
      and ts_SymbolFlags_RegularEnumExcludes = [`RegularEnumExcludes[@js 899327]] [@js.enum]
      and ts_SymbolFlags_ConstEnumExcludes = [`ConstEnumExcludes[@js 899967]] [@js.enum]
      and ts_SymbolFlags_ValueModuleExcludes = [`ValueModuleExcludes[@js 110735]] [@js.enum]
      and ts_SymbolFlags_NamespaceModuleExcludes = [`NamespaceModuleExcludes[@js 0]] [@js.enum]
      and ts_SymbolFlags_MethodExcludes = [`MethodExcludes[@js 103359]] [@js.enum]
      and ts_SymbolFlags_GetAccessorExcludes = [`GetAccessorExcludes[@js 46015]] [@js.enum]
      and ts_SymbolFlags_SetAccessorExcludes = [`SetAccessorExcludes[@js 78783]] [@js.enum]
      and ts_SymbolFlags_TypeParameterExcludes = [`TypeParameterExcludes[@js 526824]] [@js.enum]
      and ts_SymbolFlags_TypeAliasExcludes = [`TypeAliasExcludes[@js 788968]] [@js.enum]
      and ts_SymbolFlags_AliasExcludes = [`AliasExcludes[@js 2097152]] [@js.enum]
      and ts_SymbolFlags_ModuleMember = [`ModuleMember[@js 2623475]] [@js.enum]
      and ts_SymbolFlags_ExportHasLocal = [`ExportHasLocal[@js 944]] [@js.enum]
      and ts_SymbolFlags_BlockScoped = [`BlockScoped[@js 418]] [@js.enum]
      and ts_SymbolFlags_PropertyOrAccessor = [`PropertyOrAccessor[@js 98308]] [@js.enum]
      and ts_SymbolFlags_ClassMember = [`ClassMember[@js 106500]] [@js.enum]
      and ts_SymbolFormatFlags = [`None[@js 0] | `WriteTypeParametersOrArguments[@js 1] | `UseOnlyExternalAliasing[@js 2] | `AllowAnyNodeKind[@js 4] | `UseAliasDefinedOutsideCurrentScope[@js 8]] [@js.enum]
      and ts_SymbolFormatFlags_None = [`None[@js 0]] [@js.enum]
      and ts_SymbolFormatFlags_WriteTypeParametersOrArguments = [`WriteTypeParametersOrArguments[@js 1]] [@js.enum]
      and ts_SymbolFormatFlags_UseOnlyExternalAliasing = [`UseOnlyExternalAliasing[@js 2]] [@js.enum]
      and ts_SymbolFormatFlags_AllowAnyNodeKind = [`AllowAnyNodeKind[@js 4]] [@js.enum]
      and ts_SymbolFormatFlags_UseAliasDefinedOutsideCurrentScope = [`UseAliasDefinedOutsideCurrentScope[@js 8]] [@js.enum]
      and ts_SymbolTable = ts_Symbol ts_UnderscoreEscapedMap
      and ts_SyntaxKind = [`Unknown[@js 0] | `EndOfFileToken[@js 1] | `SingleLineCommentTrivia[@js 2] | `MultiLineCommentTrivia[@js 3] | `NewLineTrivia[@js 4] | `WhitespaceTrivia[@js 5] | `ShebangTrivia[@js 6] | `ConflictMarkerTrivia[@js 7] | `NumericLiteral[@js 8] | `BigIntLiteral[@js 9] | `StringLiteral[@js 10] | `JsxText[@js 11] | `JsxTextAllWhiteSpaces[@js 12] | `RegularExpressionLiteral[@js 13] | `NoSubstitutionTemplateLiteral[@js 14] | `TemplateHead[@js 15] | `TemplateMiddle[@js 16] | `TemplateTail[@js 17] | `OpenBraceToken[@js 18] | `CloseBraceToken[@js 19] | `OpenParenToken[@js 20] | `CloseParenToken[@js 21] | `OpenBracketToken[@js 22] | `CloseBracketToken[@js 23] | `DotToken[@js 24] | `DotDotDotToken[@js 25] | `SemicolonToken[@js 26] | `CommaToken[@js 27] | `QuestionDotToken[@js 28] | `LessThanToken[@js 29] | `LessThanSlashToken[@js 30] | `GreaterThanToken[@js 31] | `LessThanEqualsToken[@js 32] | `GreaterThanEqualsToken[@js 33] | `EqualsEqualsToken[@js 34] | `ExclamationEqualsToken[@js 35] | `EqualsEqualsEqualsToken[@js 36] | `ExclamationEqualsEqualsToken[@js 37] | `EqualsGreaterThanToken[@js 38] | `PlusToken[@js 39] | `MinusToken[@js 40] | `AsteriskToken[@js 41] | `AsteriskAsteriskToken[@js 42] | `SlashToken[@js 43] | `PercentToken[@js 44] | `PlusPlusToken[@js 45] | `MinusMinusToken[@js 46] | `LessThanLessThanToken[@js 47] | `GreaterThanGreaterThanToken[@js 48] | `GreaterThanGreaterThanGreaterThanToken[@js 49] | `AmpersandToken[@js 50] | `BarToken[@js 51] | `CaretToken[@js 52] | `ExclamationToken[@js 53] | `TildeToken[@js 54] | `AmpersandAmpersandToken[@js 55] | `BarBarToken[@js 56] | `QuestionToken[@js 57] | `ColonToken[@js 58] | `AtToken[@js 59] | `QuestionQuestionToken[@js 60] | `BacktickToken[@js 61] | `EqualsToken[@js 62] | `PlusEqualsToken[@js 63] | `MinusEqualsToken[@js 64] | `AsteriskEqualsToken[@js 65] | `AsteriskAsteriskEqualsToken[@js 66] | `SlashEqualsToken[@js 67] | `PercentEqualsToken[@js 68] | `LessThanLessThanEqualsToken[@js 69] | `GreaterThanGreaterThanEqualsToken[@js 70] | `GreaterThanGreaterThanGreaterThanEqualsToken[@js 71] | `AmpersandEqualsToken[@js 72] | `BarEqualsToken[@js 73] | `CaretEqualsToken[@js 74] | `Identifier[@js 75] | `PrivateIdentifier[@js 76] | `BreakKeyword[@js 77] | `CaseKeyword[@js 78] | `CatchKeyword[@js 79] | `ClassKeyword[@js 80] | `ConstKeyword[@js 81] | `ContinueKeyword[@js 82] | `DebuggerKeyword[@js 83] | `DefaultKeyword[@js 84] | `DeleteKeyword[@js 85] | `DoKeyword[@js 86] | `ElseKeyword[@js 87] | `EnumKeyword[@js 88] | `ExportKeyword[@js 89] | `ExtendsKeyword[@js 90] | `FalseKeyword[@js 91] | `FinallyKeyword[@js 92] | `ForKeyword[@js 93] | `FunctionKeyword[@js 94] | `IfKeyword[@js 95] | `ImportKeyword[@js 96] | `InKeyword[@js 97] | `InstanceOfKeyword[@js 98] | `NewKeyword[@js 99] | `NullKeyword[@js 100] | `ReturnKeyword[@js 101] | `SuperKeyword[@js 102] | `SwitchKeyword[@js 103] | `ThisKeyword[@js 104] | `ThrowKeyword[@js 105] | `TrueKeyword[@js 106] | `TryKeyword[@js 107] | `TypeOfKeyword[@js 108] | `VarKeyword[@js 109] | `VoidKeyword[@js 110] | `WhileKeyword[@js 111] | `WithKeyword[@js 112] | `ImplementsKeyword[@js 113] | `InterfaceKeyword[@js 114] | `LetKeyword[@js 115] | `PackageKeyword[@js 116] | `PrivateKeyword[@js 117] | `ProtectedKeyword[@js 118] | `PublicKeyword[@js 119] | `StaticKeyword[@js 120] | `YieldKeyword[@js 121] | `AbstractKeyword[@js 122] | `AsKeyword[@js 123] | `AssertsKeyword[@js 124] | `AnyKeyword[@js 125] | `AsyncKeyword[@js 126] | `AwaitKeyword[@js 127] | `BooleanKeyword[@js 128] | `ConstructorKeyword[@js 129] | `DeclareKeyword[@js 130] | `GetKeyword[@js 131] | `InferKeyword[@js 132] | `IsKeyword[@js 133] | `KeyOfKeyword[@js 134] | `ModuleKeyword[@js 135] | `NamespaceKeyword[@js 136] | `NeverKeyword[@js 137] | `ReadonlyKeyword[@js 138] | `RequireKeyword[@js 139] | `NumberKeyword[@js 140] | `ObjectKeyword[@js 141] | `SetKeyword[@js 142] | `StringKeyword[@js 143] | `SymbolKeyword[@js 144] | `TypeKeyword[@js 145] | `UndefinedKeyword[@js 146] | `UniqueKeyword[@js 147] | `UnknownKeyword[@js 148] | `FromKeyword[@js 149] | `GlobalKeyword[@js 150] | `BigIntKeyword[@js 151] | `OfKeyword[@js 152] | `QualifiedName[@js 153] | `ComputedPropertyName[@js 154] | `TypeParameter[@js 155] | `Parameter[@js 156] | `Decorator[@js 157] | `PropertySignature[@js 158] | `PropertyDeclaration[@js 159] | `MethodSignature[@js 160] | `MethodDeclaration[@js 161] | `Constructor[@js 162] | `GetAccessor[@js 163] | `SetAccessor[@js 164] | `CallSignature[@js 165] | `ConstructSignature[@js 166] | `IndexSignature[@js 167] | `TypePredicate[@js 168] | `TypeReference[@js 169] | `FunctionType[@js 170] | `ConstructorType[@js 171] | `TypeQuery[@js 172] | `TypeLiteral[@js 173] | `ArrayType[@js 174] | `TupleType[@js 175] | `OptionalType[@js 176] | `RestType[@js 177] | `UnionType[@js 178] | `IntersectionType[@js 179] | `ConditionalType[@js 180] | `InferType[@js 181] | `ParenthesizedType[@js 182] | `ThisType[@js 183] | `TypeOperator[@js 184] | `IndexedAccessType[@js 185] | `MappedType[@js 186] | `LiteralType[@js 187] | `ImportType[@js 188] | `ObjectBindingPattern[@js 189] | `ArrayBindingPattern[@js 190] | `BindingElement[@js 191] | `ArrayLiteralExpression[@js 192] | `ObjectLiteralExpression[@js 193] | `PropertyAccessExpression[@js 194] | `ElementAccessExpression[@js 195] | `CallExpression[@js 196] | `NewExpression[@js 197] | `TaggedTemplateExpression[@js 198] | `TypeAssertionExpression[@js 199] | `ParenthesizedExpression[@js 200] | `FunctionExpression[@js 201] | `ArrowFunction[@js 202] | `DeleteExpression[@js 203] | `TypeOfExpression[@js 204] | `VoidExpression[@js 205] | `AwaitExpression[@js 206] | `PrefixUnaryExpression[@js 207] | `PostfixUnaryExpression[@js 208] | `BinaryExpression[@js 209] | `ConditionalExpression[@js 210] | `TemplateExpression[@js 211] | `YieldExpression[@js 212] | `SpreadElement[@js 213] | `ClassExpression[@js 214] | `OmittedExpression[@js 215] | `ExpressionWithTypeArguments[@js 216] | `AsExpression[@js 217] | `NonNullExpression[@js 218] | `MetaProperty[@js 219] | `SyntheticExpression[@js 220] | `TemplateSpan[@js 221] | `SemicolonClassElement[@js 222] | `Block[@js 223] | `EmptyStatement[@js 224] | `VariableStatement[@js 225] | `ExpressionStatement[@js 226] | `IfStatement[@js 227] | `DoStatement[@js 228] | `WhileStatement[@js 229] | `ForStatement[@js 230] | `ForInStatement[@js 231] | `ForOfStatement[@js 232] | `ContinueStatement[@js 233] | `BreakStatement[@js 234] | `ReturnStatement[@js 235] | `WithStatement[@js 236] | `SwitchStatement[@js 237] | `LabeledStatement[@js 238] | `ThrowStatement[@js 239] | `TryStatement[@js 240] | `DebuggerStatement[@js 241] | `VariableDeclaration[@js 242] | `VariableDeclarationList[@js 243] | `FunctionDeclaration[@js 244] | `ClassDeclaration[@js 245] | `InterfaceDeclaration[@js 246] | `TypeAliasDeclaration[@js 247] | `EnumDeclaration[@js 248] | `ModuleDeclaration[@js 249] | `ModuleBlock[@js 250] | `CaseBlock[@js 251] | `NamespaceExportDeclaration[@js 252] | `ImportEqualsDeclaration[@js 253] | `ImportDeclaration[@js 254] | `ImportClause[@js 255] | `NamespaceImport[@js 256] | `NamedImports[@js 257] | `ImportSpecifier[@js 258] | `ExportAssignment[@js 259] | `ExportDeclaration[@js 260] | `NamedExports[@js 261] | `NamespaceExport[@js 262] | `ExportSpecifier[@js 263] | `MissingDeclaration[@js 264] | `ExternalModuleReference[@js 265] | `JsxElement[@js 266] | `JsxSelfClosingElement[@js 267] | `JsxOpeningElement[@js 268] | `JsxClosingElement[@js 269] | `JsxFragment[@js 270] | `JsxOpeningFragment[@js 271] | `JsxClosingFragment[@js 272] | `JsxAttribute[@js 273] | `JsxAttributes[@js 274] | `JsxSpreadAttribute[@js 275] | `JsxExpression[@js 276] | `CaseClause[@js 277] | `DefaultClause[@js 278] | `HeritageClause[@js 279] | `CatchClause[@js 280] | `PropertyAssignment[@js 281] | `ShorthandPropertyAssignment[@js 282] | `SpreadAssignment[@js 283] | `EnumMember[@js 284] | `UnparsedPrologue[@js 285] | `UnparsedPrepend[@js 286] | `UnparsedText[@js 287] | `UnparsedInternalText[@js 288] | `UnparsedSyntheticReference[@js 289] | `SourceFile[@js 290] | `Bundle[@js 291] | `UnparsedSource[@js 292] | `InputFiles[@js 293] | `JSDocTypeExpression[@js 294] | `JSDocAllType[@js 295] | `JSDocUnknownType[@js 296] | `JSDocNullableType[@js 297] | `JSDocNonNullableType[@js 298] | `JSDocOptionalType[@js 299] | `JSDocFunctionType[@js 300] | `JSDocVariadicType[@js 301] | `JSDocNamepathType[@js 302] | `JSDocComment[@js 303] | `JSDocTypeLiteral[@js 304] | `JSDocSignature[@js 305] | `JSDocTag[@js 306] | `JSDocAugmentsTag[@js 307] | `JSDocAuthorTag[@js 308] | `JSDocClassTag[@js 309] | `JSDocPublicTag[@js 310] | `JSDocPrivateTag[@js 311] | `JSDocProtectedTag[@js 312] | `JSDocReadonlyTag[@js 313] | `JSDocCallbackTag[@js 314] | `JSDocEnumTag[@js 315] | `JSDocParameterTag[@js 316] | `JSDocReturnTag[@js 317] | `JSDocThisTag[@js 318] | `JSDocTypeTag[@js 319] | `JSDocTemplateTag[@js 320] | `JSDocTypedefTag[@js 321] | `JSDocPropertyTag[@js 322] | `SyntaxList[@js 323] | `NotEmittedStatement[@js 324] | `PartiallyEmittedExpression[@js 325] | `CommaListExpression[@js 326] | `MergeDeclarationMarker[@js 327] | `EndOfDeclarationMarker[@js 328] | `SyntheticReferenceExpression[@js 329] | `Count[@js 330] | `FirstAssignment[@js 62] | `LastAssignment[@js 74] | `FirstCompoundAssignment[@js 63] | `LastCompoundAssignment[@js 74] | `FirstReservedWord[@js 77] | `LastReservedWord[@js 112] | `FirstKeyword[@js 77] | `LastKeyword[@js 152] | `FirstFutureReservedWord[@js 113] | `LastFutureReservedWord[@js 121] | `FirstTypeNode[@js 168] | `LastTypeNode[@js 188] | `FirstPunctuation[@js 18] | `LastPunctuation[@js 74] | `FirstToken[@js 0] | `LastToken[@js 152] | `FirstTriviaToken[@js 2] | `LastTriviaToken[@js 7] | `FirstLiteralToken[@js 8] | `LastLiteralToken[@js 14] | `FirstTemplateToken[@js 14] | `LastTemplateToken[@js 17] | `FirstBinaryOperator[@js 29] | `LastBinaryOperator[@js 74] | `FirstStatement[@js 225] | `LastStatement[@js 241] | `FirstNode[@js 153] | `FirstJSDocNode[@js 294] | `LastJSDocNode[@js 322] | `FirstJSDocTagNode[@js 306] | `LastJSDocTagNode[@js 322]] [@js.enum]
      and ts_SyntaxKind_Unknown = [`Unknown[@js 0]] [@js.enum]
      and ts_SyntaxKind_EndOfFileToken = [`EndOfFileToken[@js 1]] [@js.enum]
      and ts_SyntaxKind_SingleLineCommentTrivia = [`SingleLineCommentTrivia[@js 2]] [@js.enum]
      and ts_SyntaxKind_MultiLineCommentTrivia = [`MultiLineCommentTrivia[@js 3]] [@js.enum]
      and ts_SyntaxKind_NewLineTrivia = [`NewLineTrivia[@js 4]] [@js.enum]
      and ts_SyntaxKind_WhitespaceTrivia = [`WhitespaceTrivia[@js 5]] [@js.enum]
      and ts_SyntaxKind_ShebangTrivia = [`ShebangTrivia[@js 6]] [@js.enum]
      and ts_SyntaxKind_ConflictMarkerTrivia = [`ConflictMarkerTrivia[@js 7]] [@js.enum]
      and ts_SyntaxKind_NumericLiteral = [`NumericLiteral[@js 8]] [@js.enum]
      and ts_SyntaxKind_BigIntLiteral = [`BigIntLiteral[@js 9]] [@js.enum]
      and ts_SyntaxKind_StringLiteral = [`StringLiteral[@js 10]] [@js.enum]
      and ts_SyntaxKind_JsxText = [`JsxText[@js 11]] [@js.enum]
      and ts_SyntaxKind_JsxTextAllWhiteSpaces = [`JsxTextAllWhiteSpaces[@js 12]] [@js.enum]
      and ts_SyntaxKind_RegularExpressionLiteral = [`RegularExpressionLiteral[@js 13]] [@js.enum]
      and ts_SyntaxKind_NoSubstitutionTemplateLiteral = [`NoSubstitutionTemplateLiteral[@js 14]] [@js.enum]
      and ts_SyntaxKind_TemplateHead = [`TemplateHead[@js 15]] [@js.enum]
      and ts_SyntaxKind_TemplateMiddle = [`TemplateMiddle[@js 16]] [@js.enum]
      and ts_SyntaxKind_TemplateTail = [`TemplateTail[@js 17]] [@js.enum]
      and ts_SyntaxKind_OpenBraceToken = [`OpenBraceToken[@js 18]] [@js.enum]
      and ts_SyntaxKind_CloseBraceToken = [`CloseBraceToken[@js 19]] [@js.enum]
      and ts_SyntaxKind_OpenParenToken = [`OpenParenToken[@js 20]] [@js.enum]
      and ts_SyntaxKind_CloseParenToken = [`CloseParenToken[@js 21]] [@js.enum]
      and ts_SyntaxKind_OpenBracketToken = [`OpenBracketToken[@js 22]] [@js.enum]
      and ts_SyntaxKind_CloseBracketToken = [`CloseBracketToken[@js 23]] [@js.enum]
      and ts_SyntaxKind_DotToken = [`DotToken[@js 24]] [@js.enum]
      and ts_SyntaxKind_DotDotDotToken = [`DotDotDotToken[@js 25]] [@js.enum]
      and ts_SyntaxKind_SemicolonToken = [`SemicolonToken[@js 26]] [@js.enum]
      and ts_SyntaxKind_CommaToken = [`CommaToken[@js 27]] [@js.enum]
      and ts_SyntaxKind_QuestionDotToken = [`QuestionDotToken[@js 28]] [@js.enum]
      and ts_SyntaxKind_LessThanToken = [`LessThanToken[@js 29]] [@js.enum]
      and ts_SyntaxKind_LessThanSlashToken = [`LessThanSlashToken[@js 30]] [@js.enum]
      and ts_SyntaxKind_GreaterThanToken = [`GreaterThanToken[@js 31]] [@js.enum]
      and ts_SyntaxKind_LessThanEqualsToken = [`LessThanEqualsToken[@js 32]] [@js.enum]
      and ts_SyntaxKind_GreaterThanEqualsToken = [`GreaterThanEqualsToken[@js 33]] [@js.enum]
      and ts_SyntaxKind_EqualsEqualsToken = [`EqualsEqualsToken[@js 34]] [@js.enum]
      and ts_SyntaxKind_ExclamationEqualsToken = [`ExclamationEqualsToken[@js 35]] [@js.enum]
      and ts_SyntaxKind_EqualsEqualsEqualsToken = [`EqualsEqualsEqualsToken[@js 36]] [@js.enum]
      and ts_SyntaxKind_ExclamationEqualsEqualsToken = [`ExclamationEqualsEqualsToken[@js 37]] [@js.enum]
      and ts_SyntaxKind_EqualsGreaterThanToken = [`EqualsGreaterThanToken[@js 38]] [@js.enum]
      and ts_SyntaxKind_PlusToken = [`PlusToken[@js 39]] [@js.enum]
      and ts_SyntaxKind_MinusToken = [`MinusToken[@js 40]] [@js.enum]
      and ts_SyntaxKind_AsteriskToken = [`AsteriskToken[@js 41]] [@js.enum]
      and ts_SyntaxKind_AsteriskAsteriskToken = [`AsteriskAsteriskToken[@js 42]] [@js.enum]
      and ts_SyntaxKind_SlashToken = [`SlashToken[@js 43]] [@js.enum]
      and ts_SyntaxKind_PercentToken = [`PercentToken[@js 44]] [@js.enum]
      and ts_SyntaxKind_PlusPlusToken = [`PlusPlusToken[@js 45]] [@js.enum]
      and ts_SyntaxKind_MinusMinusToken = [`MinusMinusToken[@js 46]] [@js.enum]
      and ts_SyntaxKind_LessThanLessThanToken = [`LessThanLessThanToken[@js 47]] [@js.enum]
      and ts_SyntaxKind_GreaterThanGreaterThanToken = [`GreaterThanGreaterThanToken[@js 48]] [@js.enum]
      and ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken = [`GreaterThanGreaterThanGreaterThanToken[@js 49]] [@js.enum]
      and ts_SyntaxKind_AmpersandToken = [`AmpersandToken[@js 50]] [@js.enum]
      and ts_SyntaxKind_BarToken = [`BarToken[@js 51]] [@js.enum]
      and ts_SyntaxKind_CaretToken = [`CaretToken[@js 52]] [@js.enum]
      and ts_SyntaxKind_ExclamationToken = [`ExclamationToken[@js 53]] [@js.enum]
      and ts_SyntaxKind_TildeToken = [`TildeToken[@js 54]] [@js.enum]
      and ts_SyntaxKind_AmpersandAmpersandToken = [`AmpersandAmpersandToken[@js 55]] [@js.enum]
      and ts_SyntaxKind_BarBarToken = [`BarBarToken[@js 56]] [@js.enum]
      and ts_SyntaxKind_QuestionToken = [`QuestionToken[@js 57]] [@js.enum]
      and ts_SyntaxKind_ColonToken = [`ColonToken[@js 58]] [@js.enum]
      and ts_SyntaxKind_AtToken = [`AtToken[@js 59]] [@js.enum]
      and ts_SyntaxKind_QuestionQuestionToken = [`QuestionQuestionToken[@js 60]] [@js.enum]
      and ts_SyntaxKind_BacktickToken = [`BacktickToken[@js 61]] [@js.enum]
      and ts_SyntaxKind_EqualsToken = [`EqualsToken[@js 62]] [@js.enum]
      and ts_SyntaxKind_PlusEqualsToken = [`PlusEqualsToken[@js 63]] [@js.enum]
      and ts_SyntaxKind_MinusEqualsToken = [`MinusEqualsToken[@js 64]] [@js.enum]
      and ts_SyntaxKind_AsteriskEqualsToken = [`AsteriskEqualsToken[@js 65]] [@js.enum]
      and ts_SyntaxKind_AsteriskAsteriskEqualsToken = [`AsteriskAsteriskEqualsToken[@js 66]] [@js.enum]
      and ts_SyntaxKind_SlashEqualsToken = [`SlashEqualsToken[@js 67]] [@js.enum]
      and ts_SyntaxKind_PercentEqualsToken = [`PercentEqualsToken[@js 68]] [@js.enum]
      and ts_SyntaxKind_LessThanLessThanEqualsToken = [`LessThanLessThanEqualsToken[@js 69]] [@js.enum]
      and ts_SyntaxKind_GreaterThanGreaterThanEqualsToken = [`GreaterThanGreaterThanEqualsToken[@js 70]] [@js.enum]
      and ts_SyntaxKind_GreaterThanGreaterThanGreaterThanEqualsToken = [`GreaterThanGreaterThanGreaterThanEqualsToken[@js 71]] [@js.enum]
      and ts_SyntaxKind_AmpersandEqualsToken = [`AmpersandEqualsToken[@js 72]] [@js.enum]
      and ts_SyntaxKind_BarEqualsToken = [`BarEqualsToken[@js 73]] [@js.enum]
      and ts_SyntaxKind_CaretEqualsToken = [`CaretEqualsToken[@js 74]] [@js.enum]
      and ts_SyntaxKind_Identifier = [`Identifier[@js 75]] [@js.enum]
      and ts_SyntaxKind_PrivateIdentifier = [`PrivateIdentifier[@js 76]] [@js.enum]
      and ts_SyntaxKind_BreakKeyword = [`BreakKeyword[@js 77]] [@js.enum]
      and ts_SyntaxKind_CaseKeyword = [`CaseKeyword[@js 78]] [@js.enum]
      and ts_SyntaxKind_CatchKeyword = [`CatchKeyword[@js 79]] [@js.enum]
      and ts_SyntaxKind_ClassKeyword = [`ClassKeyword[@js 80]] [@js.enum]
      and ts_SyntaxKind_ConstKeyword = [`ConstKeyword[@js 81]] [@js.enum]
      and ts_SyntaxKind_ContinueKeyword = [`ContinueKeyword[@js 82]] [@js.enum]
      and ts_SyntaxKind_DebuggerKeyword = [`DebuggerKeyword[@js 83]] [@js.enum]
      and ts_SyntaxKind_DefaultKeyword = [`DefaultKeyword[@js 84]] [@js.enum]
      and ts_SyntaxKind_DeleteKeyword = [`DeleteKeyword[@js 85]] [@js.enum]
      and ts_SyntaxKind_DoKeyword = [`DoKeyword[@js 86]] [@js.enum]
      and ts_SyntaxKind_ElseKeyword = [`ElseKeyword[@js 87]] [@js.enum]
      and ts_SyntaxKind_EnumKeyword = [`EnumKeyword[@js 88]] [@js.enum]
      and ts_SyntaxKind_ExportKeyword = [`ExportKeyword[@js 89]] [@js.enum]
      and ts_SyntaxKind_ExtendsKeyword = [`ExtendsKeyword[@js 90]] [@js.enum]
      and ts_SyntaxKind_FalseKeyword = [`FalseKeyword[@js 91]] [@js.enum]
      and ts_SyntaxKind_FinallyKeyword = [`FinallyKeyword[@js 92]] [@js.enum]
      and ts_SyntaxKind_ForKeyword = [`ForKeyword[@js 93]] [@js.enum]
      and ts_SyntaxKind_FunctionKeyword = [`FunctionKeyword[@js 94]] [@js.enum]
      and ts_SyntaxKind_IfKeyword = [`IfKeyword[@js 95]] [@js.enum]
      and ts_SyntaxKind_ImportKeyword = [`ImportKeyword[@js 96]] [@js.enum]
      and ts_SyntaxKind_InKeyword = [`InKeyword[@js 97]] [@js.enum]
      and ts_SyntaxKind_InstanceOfKeyword = [`InstanceOfKeyword[@js 98]] [@js.enum]
      and ts_SyntaxKind_NewKeyword = [`NewKeyword[@js 99]] [@js.enum]
      and ts_SyntaxKind_NullKeyword = [`NullKeyword[@js 100]] [@js.enum]
      and ts_SyntaxKind_ReturnKeyword = [`ReturnKeyword[@js 101]] [@js.enum]
      and ts_SyntaxKind_SuperKeyword = [`SuperKeyword[@js 102]] [@js.enum]
      and ts_SyntaxKind_SwitchKeyword = [`SwitchKeyword[@js 103]] [@js.enum]
      and ts_SyntaxKind_ThisKeyword = [`ThisKeyword[@js 104]] [@js.enum]
      and ts_SyntaxKind_ThrowKeyword = [`ThrowKeyword[@js 105]] [@js.enum]
      and ts_SyntaxKind_TrueKeyword = [`TrueKeyword[@js 106]] [@js.enum]
      and ts_SyntaxKind_TryKeyword = [`TryKeyword[@js 107]] [@js.enum]
      and ts_SyntaxKind_TypeOfKeyword = [`TypeOfKeyword[@js 108]] [@js.enum]
      and ts_SyntaxKind_VarKeyword = [`VarKeyword[@js 109]] [@js.enum]
      and ts_SyntaxKind_VoidKeyword = [`VoidKeyword[@js 110]] [@js.enum]
      and ts_SyntaxKind_WhileKeyword = [`WhileKeyword[@js 111]] [@js.enum]
      and ts_SyntaxKind_WithKeyword = [`WithKeyword[@js 112]] [@js.enum]
      and ts_SyntaxKind_ImplementsKeyword = [`ImplementsKeyword[@js 113]] [@js.enum]
      and ts_SyntaxKind_InterfaceKeyword = [`InterfaceKeyword[@js 114]] [@js.enum]
      and ts_SyntaxKind_LetKeyword = [`LetKeyword[@js 115]] [@js.enum]
      and ts_SyntaxKind_PackageKeyword = [`PackageKeyword[@js 116]] [@js.enum]
      and ts_SyntaxKind_PrivateKeyword = [`PrivateKeyword[@js 117]] [@js.enum]
      and ts_SyntaxKind_ProtectedKeyword = [`ProtectedKeyword[@js 118]] [@js.enum]
      and ts_SyntaxKind_PublicKeyword = [`PublicKeyword[@js 119]] [@js.enum]
      and ts_SyntaxKind_StaticKeyword = [`StaticKeyword[@js 120]] [@js.enum]
      and ts_SyntaxKind_YieldKeyword = [`YieldKeyword[@js 121]] [@js.enum]
      and ts_SyntaxKind_AbstractKeyword = [`AbstractKeyword[@js 122]] [@js.enum]
      and ts_SyntaxKind_AsKeyword = [`AsKeyword[@js 123]] [@js.enum]
      and ts_SyntaxKind_AssertsKeyword = [`AssertsKeyword[@js 124]] [@js.enum]
      and ts_SyntaxKind_AnyKeyword = [`AnyKeyword[@js 125]] [@js.enum]
      and ts_SyntaxKind_AsyncKeyword = [`AsyncKeyword[@js 126]] [@js.enum]
      and ts_SyntaxKind_AwaitKeyword = [`AwaitKeyword[@js 127]] [@js.enum]
      and ts_SyntaxKind_BooleanKeyword = [`BooleanKeyword[@js 128]] [@js.enum]
      and ts_SyntaxKind_ConstructorKeyword = [`ConstructorKeyword[@js 129]] [@js.enum]
      and ts_SyntaxKind_DeclareKeyword = [`DeclareKeyword[@js 130]] [@js.enum]
      and ts_SyntaxKind_GetKeyword = [`GetKeyword[@js 131]] [@js.enum]
      and ts_SyntaxKind_InferKeyword = [`InferKeyword[@js 132]] [@js.enum]
      and ts_SyntaxKind_IsKeyword = [`IsKeyword[@js 133]] [@js.enum]
      and ts_SyntaxKind_KeyOfKeyword = [`KeyOfKeyword[@js 134]] [@js.enum]
      and ts_SyntaxKind_ModuleKeyword = [`ModuleKeyword[@js 135]] [@js.enum]
      and ts_SyntaxKind_NamespaceKeyword = [`NamespaceKeyword[@js 136]] [@js.enum]
      and ts_SyntaxKind_NeverKeyword = [`NeverKeyword[@js 137]] [@js.enum]
      and ts_SyntaxKind_ReadonlyKeyword = [`ReadonlyKeyword[@js 138]] [@js.enum]
      and ts_SyntaxKind_RequireKeyword = [`RequireKeyword[@js 139]] [@js.enum]
      and ts_SyntaxKind_NumberKeyword = [`NumberKeyword[@js 140]] [@js.enum]
      and ts_SyntaxKind_ObjectKeyword = [`ObjectKeyword[@js 141]] [@js.enum]
      and ts_SyntaxKind_SetKeyword = [`SetKeyword[@js 142]] [@js.enum]
      and ts_SyntaxKind_StringKeyword = [`StringKeyword[@js 143]] [@js.enum]
      and ts_SyntaxKind_SymbolKeyword = [`SymbolKeyword[@js 144]] [@js.enum]
      and ts_SyntaxKind_TypeKeyword = [`TypeKeyword[@js 145]] [@js.enum]
      and ts_SyntaxKind_UndefinedKeyword = [`UndefinedKeyword[@js 146]] [@js.enum]
      and ts_SyntaxKind_UniqueKeyword = [`UniqueKeyword[@js 147]] [@js.enum]
      and ts_SyntaxKind_UnknownKeyword = [`UnknownKeyword[@js 148]] [@js.enum]
      and ts_SyntaxKind_FromKeyword = [`FromKeyword[@js 149]] [@js.enum]
      and ts_SyntaxKind_GlobalKeyword = [`GlobalKeyword[@js 150]] [@js.enum]
      and ts_SyntaxKind_BigIntKeyword = [`BigIntKeyword[@js 151]] [@js.enum]
      and ts_SyntaxKind_OfKeyword = [`OfKeyword[@js 152]] [@js.enum]
      and ts_SyntaxKind_QualifiedName = [`QualifiedName[@js 153]] [@js.enum]
      and ts_SyntaxKind_ComputedPropertyName = [`ComputedPropertyName[@js 154]] [@js.enum]
      and ts_SyntaxKind_TypeParameter = [`TypeParameter[@js 155]] [@js.enum]
      and ts_SyntaxKind_Parameter = [`Parameter[@js 156]] [@js.enum]
      and ts_SyntaxKind_Decorator = [`Decorator[@js 157]] [@js.enum]
      and ts_SyntaxKind_PropertySignature = [`PropertySignature[@js 158]] [@js.enum]
      and ts_SyntaxKind_PropertyDeclaration = [`PropertyDeclaration[@js 159]] [@js.enum]
      and ts_SyntaxKind_MethodSignature = [`MethodSignature[@js 160]] [@js.enum]
      and ts_SyntaxKind_MethodDeclaration = [`MethodDeclaration[@js 161]] [@js.enum]
      and ts_SyntaxKind_Constructor = [`Constructor[@js 162]] [@js.enum]
      and ts_SyntaxKind_GetAccessor = [`GetAccessor[@js 163]] [@js.enum]
      and ts_SyntaxKind_SetAccessor = [`SetAccessor[@js 164]] [@js.enum]
      and ts_SyntaxKind_CallSignature = [`CallSignature[@js 165]] [@js.enum]
      and ts_SyntaxKind_ConstructSignature = [`ConstructSignature[@js 166]] [@js.enum]
      and ts_SyntaxKind_IndexSignature = [`IndexSignature[@js 167]] [@js.enum]
      and ts_SyntaxKind_TypePredicate = [`TypePredicate[@js 168]] [@js.enum]
      and ts_SyntaxKind_TypeReference = [`TypeReference[@js 169]] [@js.enum]
      and ts_SyntaxKind_FunctionType = [`FunctionType[@js 170]] [@js.enum]
      and ts_SyntaxKind_ConstructorType = [`ConstructorType[@js 171]] [@js.enum]
      and ts_SyntaxKind_TypeQuery = [`TypeQuery[@js 172]] [@js.enum]
      and ts_SyntaxKind_TypeLiteral = [`TypeLiteral[@js 173]] [@js.enum]
      and ts_SyntaxKind_ArrayType = [`ArrayType[@js 174]] [@js.enum]
      and ts_SyntaxKind_TupleType = [`TupleType[@js 175]] [@js.enum]
      and ts_SyntaxKind_OptionalType = [`OptionalType[@js 176]] [@js.enum]
      and ts_SyntaxKind_RestType = [`RestType[@js 177]] [@js.enum]
      and ts_SyntaxKind_UnionType = [`UnionType[@js 178]] [@js.enum]
      and ts_SyntaxKind_IntersectionType = [`IntersectionType[@js 179]] [@js.enum]
      and ts_SyntaxKind_ConditionalType = [`ConditionalType[@js 180]] [@js.enum]
      and ts_SyntaxKind_InferType = [`InferType[@js 181]] [@js.enum]
      and ts_SyntaxKind_ParenthesizedType = [`ParenthesizedType[@js 182]] [@js.enum]
      and ts_SyntaxKind_ThisType = [`ThisType[@js 183]] [@js.enum]
      and ts_SyntaxKind_TypeOperator = [`TypeOperator[@js 184]] [@js.enum]
      and ts_SyntaxKind_IndexedAccessType = [`IndexedAccessType[@js 185]] [@js.enum]
      and ts_SyntaxKind_MappedType = [`MappedType[@js 186]] [@js.enum]
      and ts_SyntaxKind_LiteralType = [`LiteralType[@js 187]] [@js.enum]
      and ts_SyntaxKind_ImportType = [`ImportType[@js 188]] [@js.enum]
      and ts_SyntaxKind_ObjectBindingPattern = [`ObjectBindingPattern[@js 189]] [@js.enum]
      and ts_SyntaxKind_ArrayBindingPattern = [`ArrayBindingPattern[@js 190]] [@js.enum]
      and ts_SyntaxKind_BindingElement = [`BindingElement[@js 191]] [@js.enum]
      and ts_SyntaxKind_ArrayLiteralExpression = [`ArrayLiteralExpression[@js 192]] [@js.enum]
      and ts_SyntaxKind_ObjectLiteralExpression = [`ObjectLiteralExpression[@js 193]] [@js.enum]
      and ts_SyntaxKind_PropertyAccessExpression = [`PropertyAccessExpression[@js 194]] [@js.enum]
      and ts_SyntaxKind_ElementAccessExpression = [`ElementAccessExpression[@js 195]] [@js.enum]
      and ts_SyntaxKind_CallExpression = [`CallExpression[@js 196]] [@js.enum]
      and ts_SyntaxKind_NewExpression = [`NewExpression[@js 197]] [@js.enum]
      and ts_SyntaxKind_TaggedTemplateExpression = [`TaggedTemplateExpression[@js 198]] [@js.enum]
      and ts_SyntaxKind_TypeAssertionExpression = [`TypeAssertionExpression[@js 199]] [@js.enum]
      and ts_SyntaxKind_ParenthesizedExpression = [`ParenthesizedExpression[@js 200]] [@js.enum]
      and ts_SyntaxKind_FunctionExpression = [`FunctionExpression[@js 201]] [@js.enum]
      and ts_SyntaxKind_ArrowFunction = [`ArrowFunction[@js 202]] [@js.enum]
      and ts_SyntaxKind_DeleteExpression = [`DeleteExpression[@js 203]] [@js.enum]
      and ts_SyntaxKind_TypeOfExpression = [`TypeOfExpression[@js 204]] [@js.enum]
      and ts_SyntaxKind_VoidExpression = [`VoidExpression[@js 205]] [@js.enum]
      and ts_SyntaxKind_AwaitExpression = [`AwaitExpression[@js 206]] [@js.enum]
      and ts_SyntaxKind_PrefixUnaryExpression = [`PrefixUnaryExpression[@js 207]] [@js.enum]
      and ts_SyntaxKind_PostfixUnaryExpression = [`PostfixUnaryExpression[@js 208]] [@js.enum]
      and ts_SyntaxKind_BinaryExpression = [`BinaryExpression[@js 209]] [@js.enum]
      and ts_SyntaxKind_ConditionalExpression = [`ConditionalExpression[@js 210]] [@js.enum]
      and ts_SyntaxKind_TemplateExpression = [`TemplateExpression[@js 211]] [@js.enum]
      and ts_SyntaxKind_YieldExpression = [`YieldExpression[@js 212]] [@js.enum]
      and ts_SyntaxKind_SpreadElement = [`SpreadElement[@js 213]] [@js.enum]
      and ts_SyntaxKind_ClassExpression = [`ClassExpression[@js 214]] [@js.enum]
      and ts_SyntaxKind_OmittedExpression = [`OmittedExpression[@js 215]] [@js.enum]
      and ts_SyntaxKind_ExpressionWithTypeArguments = [`ExpressionWithTypeArguments[@js 216]] [@js.enum]
      and ts_SyntaxKind_AsExpression = [`AsExpression[@js 217]] [@js.enum]
      and ts_SyntaxKind_NonNullExpression = [`NonNullExpression[@js 218]] [@js.enum]
      and ts_SyntaxKind_MetaProperty = [`MetaProperty[@js 219]] [@js.enum]
      and ts_SyntaxKind_SyntheticExpression = [`SyntheticExpression[@js 220]] [@js.enum]
      and ts_SyntaxKind_TemplateSpan = [`TemplateSpan[@js 221]] [@js.enum]
      and ts_SyntaxKind_SemicolonClassElement = [`SemicolonClassElement[@js 222]] [@js.enum]
      and ts_SyntaxKind_Block = [`Block[@js 223]] [@js.enum]
      and ts_SyntaxKind_EmptyStatement = [`EmptyStatement[@js 224]] [@js.enum]
      and ts_SyntaxKind_VariableStatement = [`VariableStatement[@js 225]] [@js.enum]
      and ts_SyntaxKind_ExpressionStatement = [`ExpressionStatement[@js 226]] [@js.enum]
      and ts_SyntaxKind_IfStatement = [`IfStatement[@js 227]] [@js.enum]
      and ts_SyntaxKind_DoStatement = [`DoStatement[@js 228]] [@js.enum]
      and ts_SyntaxKind_WhileStatement = [`WhileStatement[@js 229]] [@js.enum]
      and ts_SyntaxKind_ForStatement = [`ForStatement[@js 230]] [@js.enum]
      and ts_SyntaxKind_ForInStatement = [`ForInStatement[@js 231]] [@js.enum]
      and ts_SyntaxKind_ForOfStatement = [`ForOfStatement[@js 232]] [@js.enum]
      and ts_SyntaxKind_ContinueStatement = [`ContinueStatement[@js 233]] [@js.enum]
      and ts_SyntaxKind_BreakStatement = [`BreakStatement[@js 234]] [@js.enum]
      and ts_SyntaxKind_ReturnStatement = [`ReturnStatement[@js 235]] [@js.enum]
      and ts_SyntaxKind_WithStatement = [`WithStatement[@js 236]] [@js.enum]
      and ts_SyntaxKind_SwitchStatement = [`SwitchStatement[@js 237]] [@js.enum]
      and ts_SyntaxKind_LabeledStatement = [`LabeledStatement[@js 238]] [@js.enum]
      and ts_SyntaxKind_ThrowStatement = [`ThrowStatement[@js 239]] [@js.enum]
      and ts_SyntaxKind_TryStatement = [`TryStatement[@js 240]] [@js.enum]
      and ts_SyntaxKind_DebuggerStatement = [`DebuggerStatement[@js 241]] [@js.enum]
      and ts_SyntaxKind_VariableDeclaration = [`VariableDeclaration[@js 242]] [@js.enum]
      and ts_SyntaxKind_VariableDeclarationList = [`VariableDeclarationList[@js 243]] [@js.enum]
      and ts_SyntaxKind_FunctionDeclaration = [`FunctionDeclaration[@js 244]] [@js.enum]
      and ts_SyntaxKind_ClassDeclaration = [`ClassDeclaration[@js 245]] [@js.enum]
      and ts_SyntaxKind_InterfaceDeclaration = [`InterfaceDeclaration[@js 246]] [@js.enum]
      and ts_SyntaxKind_TypeAliasDeclaration = [`TypeAliasDeclaration[@js 247]] [@js.enum]
      and ts_SyntaxKind_EnumDeclaration = [`EnumDeclaration[@js 248]] [@js.enum]
      and ts_SyntaxKind_ModuleDeclaration = [`ModuleDeclaration[@js 249]] [@js.enum]
      and ts_SyntaxKind_ModuleBlock = [`ModuleBlock[@js 250]] [@js.enum]
      and ts_SyntaxKind_CaseBlock = [`CaseBlock[@js 251]] [@js.enum]
      and ts_SyntaxKind_NamespaceExportDeclaration = [`NamespaceExportDeclaration[@js 252]] [@js.enum]
      and ts_SyntaxKind_ImportEqualsDeclaration = [`ImportEqualsDeclaration[@js 253]] [@js.enum]
      and ts_SyntaxKind_ImportDeclaration = [`ImportDeclaration[@js 254]] [@js.enum]
      and ts_SyntaxKind_ImportClause = [`ImportClause[@js 255]] [@js.enum]
      and ts_SyntaxKind_NamespaceImport = [`NamespaceImport[@js 256]] [@js.enum]
      and ts_SyntaxKind_NamedImports = [`NamedImports[@js 257]] [@js.enum]
      and ts_SyntaxKind_ImportSpecifier = [`ImportSpecifier[@js 258]] [@js.enum]
      and ts_SyntaxKind_ExportAssignment = [`ExportAssignment[@js 259]] [@js.enum]
      and ts_SyntaxKind_ExportDeclaration = [`ExportDeclaration[@js 260]] [@js.enum]
      and ts_SyntaxKind_NamedExports = [`NamedExports[@js 261]] [@js.enum]
      and ts_SyntaxKind_NamespaceExport = [`NamespaceExport[@js 262]] [@js.enum]
      and ts_SyntaxKind_ExportSpecifier = [`ExportSpecifier[@js 263]] [@js.enum]
      and ts_SyntaxKind_MissingDeclaration = [`MissingDeclaration[@js 264]] [@js.enum]
      and ts_SyntaxKind_ExternalModuleReference = [`ExternalModuleReference[@js 265]] [@js.enum]
      and ts_SyntaxKind_JsxElement = [`JsxElement[@js 266]] [@js.enum]
      and ts_SyntaxKind_JsxSelfClosingElement = [`JsxSelfClosingElement[@js 267]] [@js.enum]
      and ts_SyntaxKind_JsxOpeningElement = [`JsxOpeningElement[@js 268]] [@js.enum]
      and ts_SyntaxKind_JsxClosingElement = [`JsxClosingElement[@js 269]] [@js.enum]
      and ts_SyntaxKind_JsxFragment = [`JsxFragment[@js 270]] [@js.enum]
      and ts_SyntaxKind_JsxOpeningFragment = [`JsxOpeningFragment[@js 271]] [@js.enum]
      and ts_SyntaxKind_JsxClosingFragment = [`JsxClosingFragment[@js 272]] [@js.enum]
      and ts_SyntaxKind_JsxAttribute = [`JsxAttribute[@js 273]] [@js.enum]
      and ts_SyntaxKind_JsxAttributes = [`JsxAttributes[@js 274]] [@js.enum]
      and ts_SyntaxKind_JsxSpreadAttribute = [`JsxSpreadAttribute[@js 275]] [@js.enum]
      and ts_SyntaxKind_JsxExpression = [`JsxExpression[@js 276]] [@js.enum]
      and ts_SyntaxKind_CaseClause = [`CaseClause[@js 277]] [@js.enum]
      and ts_SyntaxKind_DefaultClause = [`DefaultClause[@js 278]] [@js.enum]
      and ts_SyntaxKind_HeritageClause = [`HeritageClause[@js 279]] [@js.enum]
      and ts_SyntaxKind_CatchClause = [`CatchClause[@js 280]] [@js.enum]
      and ts_SyntaxKind_PropertyAssignment = [`PropertyAssignment[@js 281]] [@js.enum]
      and ts_SyntaxKind_ShorthandPropertyAssignment = [`ShorthandPropertyAssignment[@js 282]] [@js.enum]
      and ts_SyntaxKind_SpreadAssignment = [`SpreadAssignment[@js 283]] [@js.enum]
      and ts_SyntaxKind_EnumMember = [`EnumMember[@js 284]] [@js.enum]
      and ts_SyntaxKind_UnparsedPrologue = [`UnparsedPrologue[@js 285]] [@js.enum]
      and ts_SyntaxKind_UnparsedPrepend = [`UnparsedPrepend[@js 286]] [@js.enum]
      and ts_SyntaxKind_UnparsedText = [`UnparsedText[@js 287]] [@js.enum]
      and ts_SyntaxKind_UnparsedInternalText = [`UnparsedInternalText[@js 288]] [@js.enum]
      and ts_SyntaxKind_UnparsedSyntheticReference = [`UnparsedSyntheticReference[@js 289]] [@js.enum]
      and ts_SyntaxKind_SourceFile = [`SourceFile[@js 290]] [@js.enum]
      and ts_SyntaxKind_Bundle = [`Bundle[@js 291]] [@js.enum]
      and ts_SyntaxKind_UnparsedSource = [`UnparsedSource[@js 292]] [@js.enum]
      and ts_SyntaxKind_InputFiles = [`InputFiles[@js 293]] [@js.enum]
      and ts_SyntaxKind_JSDocTypeExpression = [`JSDocTypeExpression[@js 294]] [@js.enum]
      and ts_SyntaxKind_JSDocAllType = [`JSDocAllType[@js 295]] [@js.enum]
      and ts_SyntaxKind_JSDocUnknownType = [`JSDocUnknownType[@js 296]] [@js.enum]
      and ts_SyntaxKind_JSDocNullableType = [`JSDocNullableType[@js 297]] [@js.enum]
      and ts_SyntaxKind_JSDocNonNullableType = [`JSDocNonNullableType[@js 298]] [@js.enum]
      and ts_SyntaxKind_JSDocOptionalType = [`JSDocOptionalType[@js 299]] [@js.enum]
      and ts_SyntaxKind_JSDocFunctionType = [`JSDocFunctionType[@js 300]] [@js.enum]
      and ts_SyntaxKind_JSDocVariadicType = [`JSDocVariadicType[@js 301]] [@js.enum]
      and ts_SyntaxKind_JSDocNamepathType = [`JSDocNamepathType[@js 302]] [@js.enum]
      and ts_SyntaxKind_JSDocComment = [`JSDocComment[@js 303]] [@js.enum]
      and ts_SyntaxKind_JSDocTypeLiteral = [`JSDocTypeLiteral[@js 304]] [@js.enum]
      and ts_SyntaxKind_JSDocSignature = [`JSDocSignature[@js 305]] [@js.enum]
      and ts_SyntaxKind_JSDocTag = [`JSDocTag[@js 306]] [@js.enum]
      and ts_SyntaxKind_JSDocAugmentsTag = [`JSDocAugmentsTag[@js 307]] [@js.enum]
      and ts_SyntaxKind_JSDocAuthorTag = [`JSDocAuthorTag[@js 308]] [@js.enum]
      and ts_SyntaxKind_JSDocClassTag = [`JSDocClassTag[@js 309]] [@js.enum]
      and ts_SyntaxKind_JSDocPublicTag = [`JSDocPublicTag[@js 310]] [@js.enum]
      and ts_SyntaxKind_JSDocPrivateTag = [`JSDocPrivateTag[@js 311]] [@js.enum]
      and ts_SyntaxKind_JSDocProtectedTag = [`JSDocProtectedTag[@js 312]] [@js.enum]
      and ts_SyntaxKind_JSDocReadonlyTag = [`JSDocReadonlyTag[@js 313]] [@js.enum]
      and ts_SyntaxKind_JSDocCallbackTag = [`JSDocCallbackTag[@js 314]] [@js.enum]
      and ts_SyntaxKind_JSDocEnumTag = [`JSDocEnumTag[@js 315]] [@js.enum]
      and ts_SyntaxKind_JSDocParameterTag = [`JSDocParameterTag[@js 316]] [@js.enum]
      and ts_SyntaxKind_JSDocReturnTag = [`JSDocReturnTag[@js 317]] [@js.enum]
      and ts_SyntaxKind_JSDocThisTag = [`JSDocThisTag[@js 318]] [@js.enum]
      and ts_SyntaxKind_JSDocTypeTag = [`JSDocTypeTag[@js 319]] [@js.enum]
      and ts_SyntaxKind_JSDocTemplateTag = [`JSDocTemplateTag[@js 320]] [@js.enum]
      and ts_SyntaxKind_JSDocTypedefTag = [`JSDocTypedefTag[@js 321]] [@js.enum]
      and ts_SyntaxKind_JSDocPropertyTag = [`JSDocPropertyTag[@js 322]] [@js.enum]
      and ts_SyntaxKind_SyntaxList = [`SyntaxList[@js 323]] [@js.enum]
      and ts_SyntaxKind_NotEmittedStatement = [`NotEmittedStatement[@js 324]] [@js.enum]
      and ts_SyntaxKind_PartiallyEmittedExpression = [`PartiallyEmittedExpression[@js 325]] [@js.enum]
      and ts_SyntaxKind_CommaListExpression = [`CommaListExpression[@js 326]] [@js.enum]
      and ts_SyntaxKind_MergeDeclarationMarker = [`MergeDeclarationMarker[@js 327]] [@js.enum]
      and ts_SyntaxKind_EndOfDeclarationMarker = [`EndOfDeclarationMarker[@js 328]] [@js.enum]
      and ts_SyntaxKind_SyntheticReferenceExpression = [`SyntheticReferenceExpression[@js 329]] [@js.enum]
      and ts_SyntaxKind_Count = [`Count[@js 330]] [@js.enum]
      and ts_SyntaxKind_FirstAssignment = [`FirstAssignment[@js 62]] [@js.enum]
      and ts_SyntaxKind_LastAssignment = [`LastAssignment[@js 74]] [@js.enum]
      and ts_SyntaxKind_FirstCompoundAssignment = [`FirstCompoundAssignment[@js 63]] [@js.enum]
      and ts_SyntaxKind_LastCompoundAssignment = [`LastCompoundAssignment[@js 74]] [@js.enum]
      and ts_SyntaxKind_FirstReservedWord = [`FirstReservedWord[@js 77]] [@js.enum]
      and ts_SyntaxKind_LastReservedWord = [`LastReservedWord[@js 112]] [@js.enum]
      and ts_SyntaxKind_FirstKeyword = [`FirstKeyword[@js 77]] [@js.enum]
      and ts_SyntaxKind_LastKeyword = [`LastKeyword[@js 152]] [@js.enum]
      and ts_SyntaxKind_FirstFutureReservedWord = [`FirstFutureReservedWord[@js 113]] [@js.enum]
      and ts_SyntaxKind_LastFutureReservedWord = [`LastFutureReservedWord[@js 121]] [@js.enum]
      and ts_SyntaxKind_FirstTypeNode = [`FirstTypeNode[@js 168]] [@js.enum]
      and ts_SyntaxKind_LastTypeNode = [`LastTypeNode[@js 188]] [@js.enum]
      and ts_SyntaxKind_FirstPunctuation = [`FirstPunctuation[@js 18]] [@js.enum]
      and ts_SyntaxKind_LastPunctuation = [`LastPunctuation[@js 74]] [@js.enum]
      and ts_SyntaxKind_FirstToken = [`FirstToken[@js 0]] [@js.enum]
      and ts_SyntaxKind_LastToken = [`LastToken[@js 152]] [@js.enum]
      and ts_SyntaxKind_FirstTriviaToken = [`FirstTriviaToken[@js 2]] [@js.enum]
      and ts_SyntaxKind_LastTriviaToken = [`LastTriviaToken[@js 7]] [@js.enum]
      and ts_SyntaxKind_FirstLiteralToken = [`FirstLiteralToken[@js 8]] [@js.enum]
      and ts_SyntaxKind_LastLiteralToken = [`LastLiteralToken[@js 14]] [@js.enum]
      and ts_SyntaxKind_FirstTemplateToken = [`FirstTemplateToken[@js 14]] [@js.enum]
      and ts_SyntaxKind_LastTemplateToken = [`LastTemplateToken[@js 17]] [@js.enum]
      and ts_SyntaxKind_FirstBinaryOperator = [`FirstBinaryOperator[@js 29]] [@js.enum]
      and ts_SyntaxKind_LastBinaryOperator = [`LastBinaryOperator[@js 74]] [@js.enum]
      and ts_SyntaxKind_FirstStatement = [`FirstStatement[@js 225]] [@js.enum]
      and ts_SyntaxKind_LastStatement = [`LastStatement[@js 241]] [@js.enum]
      and ts_SyntaxKind_FirstNode = [`FirstNode[@js 153]] [@js.enum]
      and ts_SyntaxKind_FirstJSDocNode = [`FirstJSDocNode[@js 294]] [@js.enum]
      and ts_SyntaxKind_LastJSDocNode = [`LastJSDocNode[@js 322]] [@js.enum]
      and ts_SyntaxKind_FirstJSDocTagNode = [`FirstJSDocTagNode[@js 306]] [@js.enum]
      and ts_SyntaxKind_LastJSDocTagNode = [`LastJSDocTagNode[@js 322]] [@js.enum]
      and ts_SyntaxList = [`Ts_SyntaxList | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SynthesizedComment = [`Ts_SynthesizedComment | `Ts_CommentRange | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_SyntheticExpression = [`Ts_SyntheticExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_System = [`Ts_System] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TaggedTemplateExpression = [`Ts_TaggedTemplateExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TemplateExpression = [`Ts_TemplateExpression | `Ts_Expression | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TemplateHead = [`Ts_TemplateHead | `Ts_LiteralLikeNode | `Ts_Node | `Ts_TemplateLiteralLikeNode | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TemplateLiteral = (([`U_n_14 of (ts_NoSubstitutionTemplateLiteral, ts_NoSubstitutionTemplateLiteral) union2 [@js 14] | `U_n_211 of (ts_TemplateExpression, ts_TemplateExpression) union2 [@js 211]] [@js.union on_field "kind"]), (ts_NoSubstitutionTemplateLiteral, ts_TemplateExpression) or_) or_
      and ts_TemplateLiteralLikeNode = [`Ts_TemplateLiteralLikeNode | `Ts_LiteralLikeNode | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TemplateLiteralToken = (([`U_n_14 of (ts_NoSubstitutionTemplateLiteral, ts_NoSubstitutionTemplateLiteral) union2 [@js 14] | `U_n_15 of (ts_TemplateHead, ts_TemplateHead) union2 [@js 15] | `U_n_16 of (ts_TemplateMiddle, ts_TemplateMiddle) union2 [@js 16] | `U_n_17 of (ts_TemplateTail, ts_TemplateTail) union2 [@js 17]] [@js.union on_field "kind"]), (ts_NoSubstitutionTemplateLiteral, (ts_TemplateHead, (ts_TemplateMiddle, ts_TemplateTail) or_) or_) or_) or_
      and ts_TemplateMiddle = [`Ts_TemplateMiddle | `Ts_LiteralLikeNode | `Ts_Node | `Ts_TemplateLiteralLikeNode | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TemplateSpan = [`Ts_TemplateSpan | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TemplateTail = [`Ts_TemplateTail | `Ts_LiteralLikeNode | `Ts_Node | `Ts_TemplateLiteralLikeNode | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TextChange = [`Ts_TextChange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TextChangeRange = [`Ts_TextChangeRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TextInsertion = [`Ts_TextInsertion] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TextRange = [`Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TextSpan = [`Ts_TextSpan] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ThisExpression = [`Ts_ThisExpression | `Ts_Expression | `Ts_KeywordTypeNode | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_TypeNode | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ThisTypeNode = [`Ts_ThisTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ThisTypePredicate = [`Ts_ThisTypePredicate | `Ts_TypePredicateBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_ThrowStatement = [`Ts_ThrowStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TodoComment = [`Ts_TodoComment] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TodoCommentDescriptor = [`Ts_TodoCommentDescriptor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'TKind ts_Token = [`Ts_Token of 'TKind | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=(fun _TKind -> Obj.magic); to_js=(fun _TKind -> Obj.magic) }]
      and ts_TokenClass = [`Punctuation[@js 0] | `Keyword[@js 1] | `Operator[@js 2] | `Comment[@js 3] | `Whitespace[@js 4] | `Identifier[@js 5] | `NumberLiteral[@js 6] | `BigIntLiteral[@js 7] | `StringLiteral[@js 8] | `RegExpLiteral[@js 9]] [@js.enum]
      and ts_TokenClass_Punctuation = [`Punctuation[@js 0]] [@js.enum]
      and ts_TokenClass_Keyword = [`Keyword[@js 1]] [@js.enum]
      and ts_TokenClass_Operator = [`Operator[@js 2]] [@js.enum]
      and ts_TokenClass_Comment = [`Comment[@js 3]] [@js.enum]
      and ts_TokenClass_Whitespace = [`Whitespace[@js 4]] [@js.enum]
      and ts_TokenClass_Identifier = [`Identifier[@js 5]] [@js.enum]
      and ts_TokenClass_NumberLiteral = [`NumberLiteral[@js 6]] [@js.enum]
      and ts_TokenClass_BigIntLiteral = [`BigIntLiteral[@js 7]] [@js.enum]
      and ts_TokenClass_StringLiteral = [`StringLiteral[@js 8]] [@js.enum]
      and ts_TokenClass_RegExpLiteral = [`RegExpLiteral[@js 9]] [@js.enum]
      and ts_TokenFlags = [`None[@js 0] | `Scientific[@js 16] | `Octal[@js 32] | `HexSpecifier[@js 64] | `BinarySpecifier[@js 128] | `OctalSpecifier[@js 256]] [@js.enum]
      and ts_TokenFlags_None = [`None[@js 0]] [@js.enum]
      and ts_TokenFlags_Scientific = [`Scientific[@js 16]] [@js.enum]
      and ts_TokenFlags_Octal = [`Octal[@js 32]] [@js.enum]
      and ts_TokenFlags_HexSpecifier = [`HexSpecifier[@js 64]] [@js.enum]
      and ts_TokenFlags_BinarySpecifier = [`BinarySpecifier[@js 128]] [@js.enum]
      and ts_TokenFlags_OctalSpecifier = [`OctalSpecifier[@js 256]] [@js.enum]
      and ts_TransformationContext = [`Ts_TransformationContext] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_TransformationResult = [`Ts_TransformationResult of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_Transformer = [`Ts_Transformer of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_TransformerFactory = [`Ts_TransformerFactory of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_TransientIdentifier = [`Ts_TransientIdentifier | `Ts_Declaration | `Ts_Expression | `Ts_Identifier | `Ts_LeftHandSideExpression | `Ts_MemberExpression | `Ts_Node | `Ts_Node | `Ts_PrimaryExpression | `Ts_TextRange | `Ts_UnaryExpression | `Ts_UpdateExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TranspileOptions = [`Ts_TranspileOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TranspileOutput = [`Ts_TranspileOutput] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TryStatement = [`Ts_TryStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TsConfigSourceFile = [`Ts_TsConfigSourceFile | `Ts_Declaration | `Ts_JsonSourceFile | `Ts_Node | `Ts_SourceFile | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TupleType = [`Ts_TupleType | `Ts_GenericType | `Ts_InterfaceType | `Ts_ObjectType | `Ts_ObjectType | `Ts_Type | `Ts_TypeReference] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TupleTypeNode = [`Ts_TupleTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TupleTypeReference = [`Ts_TupleTypeReference | `Ts_ObjectType | `Ts_Type | `Ts_TypeReference] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_Type = [`Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeAcquisition = [`Ts_TypeAcquisition] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeAliasDeclaration = [`Ts_TypeAliasDeclaration | `Ts_Declaration | `Ts_DeclarationStatement | `Ts_JSDocContainer | `Ts_NamedDeclaration | `Ts_Node | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeAssertion = [`Ts_TypeAssertion | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeChecker = [`Ts_TypeChecker] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeElement = [`Ts_TypeElement | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeFlags = [`Any[@js 1] | `Unknown[@js 2] | `String[@js 4] | `Number[@js 8] | `Boolean[@js 16] | `Enum[@js 32] | `BigInt[@js 64] | `StringLiteral[@js 128] | `NumberLiteral[@js 256] | `BooleanLiteral[@js 512] | `EnumLiteral[@js 1024] | `BigIntLiteral[@js 2048] | `ESSymbol[@js 4096] | `UniqueESSymbol[@js 8192] | `Void[@js 16384] | `Undefined[@js 32768] | `Null[@js 65536] | `Never[@js 131072] | `TypeParameter[@js 262144] | `Object[@js 524288] | `Union[@js 1048576] | `Intersection[@js 2097152] | `Index[@js 4194304] | `IndexedAccess[@js 8388608] | `Conditional[@js 16777216] | `Substitution[@js 33554432] | `NonPrimitive[@js 67108864] | `Literal[@js 2944] | `Unit[@js 109440] | `StringOrNumberLiteral[@js 384] | `PossiblyFalsy[@js 117724] | `StringLike[@js 132] | `NumberLike[@js 296] | `BigIntLike[@js 2112] | `BooleanLike[@js 528] | `EnumLike[@js 1056] | `ESSymbolLike[@js 12288] | `VoidLike[@js 49152] | `UnionOrIntersection[@js 3145728] | `StructuredType[@js 3670016] | `TypeVariable[@js 8650752] | `InstantiableNonPrimitive[@js 58982400] | `InstantiablePrimitive[@js 4194304] | `Instantiable[@js 63176704] | `StructuredOrInstantiable[@js 66846720] | `Narrowable[@js 133970943] | `NotUnionOrUnit[@js 67637251]] [@js.enum]
      and ts_TypeFlags_Any = [`Any[@js 1]] [@js.enum]
      and ts_TypeFlags_Unknown = [`Unknown[@js 2]] [@js.enum]
      and ts_TypeFlags_String = [`String[@js 4]] [@js.enum]
      and ts_TypeFlags_Number = [`Number[@js 8]] [@js.enum]
      and ts_TypeFlags_Boolean = [`Boolean[@js 16]] [@js.enum]
      and ts_TypeFlags_Enum = [`Enum[@js 32]] [@js.enum]
      and ts_TypeFlags_BigInt = [`BigInt[@js 64]] [@js.enum]
      and ts_TypeFlags_StringLiteral = [`StringLiteral[@js 128]] [@js.enum]
      and ts_TypeFlags_NumberLiteral = [`NumberLiteral[@js 256]] [@js.enum]
      and ts_TypeFlags_BooleanLiteral = [`BooleanLiteral[@js 512]] [@js.enum]
      and ts_TypeFlags_EnumLiteral = [`EnumLiteral[@js 1024]] [@js.enum]
      and ts_TypeFlags_BigIntLiteral = [`BigIntLiteral[@js 2048]] [@js.enum]
      and ts_TypeFlags_ESSymbol = [`ESSymbol[@js 4096]] [@js.enum]
      and ts_TypeFlags_UniqueESSymbol = [`UniqueESSymbol[@js 8192]] [@js.enum]
      and ts_TypeFlags_Void = [`Void[@js 16384]] [@js.enum]
      and ts_TypeFlags_Undefined = [`Undefined[@js 32768]] [@js.enum]
      and ts_TypeFlags_Null = [`Null[@js 65536]] [@js.enum]
      and ts_TypeFlags_Never = [`Never[@js 131072]] [@js.enum]
      and ts_TypeFlags_TypeParameter = [`TypeParameter[@js 262144]] [@js.enum]
      and ts_TypeFlags_Object = [`Object[@js 524288]] [@js.enum]
      and ts_TypeFlags_Union = [`Union[@js 1048576]] [@js.enum]
      and ts_TypeFlags_Intersection = [`Intersection[@js 2097152]] [@js.enum]
      and ts_TypeFlags_Index = [`Index[@js 4194304]] [@js.enum]
      and ts_TypeFlags_IndexedAccess = [`IndexedAccess[@js 8388608]] [@js.enum]
      and ts_TypeFlags_Conditional = [`Conditional[@js 16777216]] [@js.enum]
      and ts_TypeFlags_Substitution = [`Substitution[@js 33554432]] [@js.enum]
      and ts_TypeFlags_NonPrimitive = [`NonPrimitive[@js 67108864]] [@js.enum]
      and ts_TypeFlags_Literal = [`Literal[@js 2944]] [@js.enum]
      and ts_TypeFlags_Unit = [`Unit[@js 109440]] [@js.enum]
      and ts_TypeFlags_StringOrNumberLiteral = [`StringOrNumberLiteral[@js 384]] [@js.enum]
      and ts_TypeFlags_PossiblyFalsy = [`PossiblyFalsy[@js 117724]] [@js.enum]
      and ts_TypeFlags_StringLike = [`StringLike[@js 132]] [@js.enum]
      and ts_TypeFlags_NumberLike = [`NumberLike[@js 296]] [@js.enum]
      and ts_TypeFlags_BigIntLike = [`BigIntLike[@js 2112]] [@js.enum]
      and ts_TypeFlags_BooleanLike = [`BooleanLike[@js 528]] [@js.enum]
      and ts_TypeFlags_EnumLike = [`EnumLike[@js 1056]] [@js.enum]
      and ts_TypeFlags_ESSymbolLike = [`ESSymbolLike[@js 12288]] [@js.enum]
      and ts_TypeFlags_VoidLike = [`VoidLike[@js 49152]] [@js.enum]
      and ts_TypeFlags_UnionOrIntersection = [`UnionOrIntersection[@js 3145728]] [@js.enum]
      and ts_TypeFlags_StructuredType = [`StructuredType[@js 3670016]] [@js.enum]
      and ts_TypeFlags_TypeVariable = [`TypeVariable[@js 8650752]] [@js.enum]
      and ts_TypeFlags_InstantiableNonPrimitive = [`InstantiableNonPrimitive[@js 58982400]] [@js.enum]
      and ts_TypeFlags_InstantiablePrimitive = [`InstantiablePrimitive[@js 4194304]] [@js.enum]
      and ts_TypeFlags_Instantiable = [`Instantiable[@js 63176704]] [@js.enum]
      and ts_TypeFlags_StructuredOrInstantiable = [`StructuredOrInstantiable[@js 66846720]] [@js.enum]
      and ts_TypeFlags_Narrowable = [`Narrowable[@js 133970943]] [@js.enum]
      and ts_TypeFlags_NotUnionOrUnit = [`NotUnionOrUnit[@js 67637251]] [@js.enum]
      and ts_TypeFormatFlags = [`None[@js 0] | `NoTruncation[@js 1] | `WriteArrayAsGenericType[@js 2] | `UseStructuralFallback[@js 8] | `WriteTypeArgumentsOfSignature[@js 32] | `UseFullyQualifiedType[@js 64] | `SuppressAnyReturnType[@js 256] | `MultilineObjectLiterals[@js 1024] | `WriteClassExpressionAsTypeLiteral[@js 2048] | `UseTypeOfFunction[@js 4096] | `OmitParameterModifiers[@js 8192] | `UseAliasDefinedOutsideCurrentScope[@js 16384] | `UseSingleQuotesForStringLiteralType[@js 268435456] | `AllowUniqueESSymbolType[@js 1048576] | `AddUndefined[@js 131072] | `WriteArrowStyleSignature[@js 262144] | `InArrayType[@js 524288] | `InElementType[@js 2097152] | `InFirstTypeArgument[@js 4194304] | `InTypeAlias[@js 8388608] | `NodeBuilderFlagsMask[@js 277904747]] [@js.enum]
      and ts_TypeFormatFlags_None = [`None[@js 0]] [@js.enum]
      and ts_TypeFormatFlags_NoTruncation = [`NoTruncation[@js 1]] [@js.enum]
      and ts_TypeFormatFlags_WriteArrayAsGenericType = [`WriteArrayAsGenericType[@js 2]] [@js.enum]
      and ts_TypeFormatFlags_UseStructuralFallback = [`UseStructuralFallback[@js 8]] [@js.enum]
      and ts_TypeFormatFlags_WriteTypeArgumentsOfSignature = [`WriteTypeArgumentsOfSignature[@js 32]] [@js.enum]
      and ts_TypeFormatFlags_UseFullyQualifiedType = [`UseFullyQualifiedType[@js 64]] [@js.enum]
      and ts_TypeFormatFlags_SuppressAnyReturnType = [`SuppressAnyReturnType[@js 256]] [@js.enum]
      and ts_TypeFormatFlags_MultilineObjectLiterals = [`MultilineObjectLiterals[@js 1024]] [@js.enum]
      and ts_TypeFormatFlags_WriteClassExpressionAsTypeLiteral = [`WriteClassExpressionAsTypeLiteral[@js 2048]] [@js.enum]
      and ts_TypeFormatFlags_UseTypeOfFunction = [`UseTypeOfFunction[@js 4096]] [@js.enum]
      and ts_TypeFormatFlags_OmitParameterModifiers = [`OmitParameterModifiers[@js 8192]] [@js.enum]
      and ts_TypeFormatFlags_UseAliasDefinedOutsideCurrentScope = [`UseAliasDefinedOutsideCurrentScope[@js 16384]] [@js.enum]
      and ts_TypeFormatFlags_UseSingleQuotesForStringLiteralType = [`UseSingleQuotesForStringLiteralType[@js 268435456]] [@js.enum]
      and ts_TypeFormatFlags_AllowUniqueESSymbolType = [`AllowUniqueESSymbolType[@js 1048576]] [@js.enum]
      and ts_TypeFormatFlags_AddUndefined = [`AddUndefined[@js 131072]] [@js.enum]
      and ts_TypeFormatFlags_WriteArrowStyleSignature = [`WriteArrowStyleSignature[@js 262144]] [@js.enum]
      and ts_TypeFormatFlags_InArrayType = [`InArrayType[@js 524288]] [@js.enum]
      and ts_TypeFormatFlags_InElementType = [`InElementType[@js 2097152]] [@js.enum]
      and ts_TypeFormatFlags_InFirstTypeArgument = [`InFirstTypeArgument[@js 4194304]] [@js.enum]
      and ts_TypeFormatFlags_InTypeAlias = [`InTypeAlias[@js 8388608]] [@js.enum]
      and ts_TypeFormatFlags_NodeBuilderFlagsMask = [`NodeBuilderFlagsMask[@js 277904747]] [@js.enum]
      and ts_TypeLiteralNode = [`Ts_TypeLiteralNode | `Ts_Declaration | `Ts_Node | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeNode = [`Ts_TypeNode | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeOfExpression = [`Ts_TypeOfExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeOnlyCompatibleAliasDeclaration = (([`U_n_255 of (ts_ImportClause, ts_ImportClause) union2 [@js 255] | `U_n_256 of (ts_NamespaceImport, ts_NamespaceImport) union2 [@js 256] | `U_n_258 of (ts_ImportSpecifier, ts_ImportSpecifier, ts_ImportSpecifier) union3 [@js 258] | `U_n_263 of (ts_ExportSpecifier, ts_ExportSpecifier, ts_ExportSpecifier) union3 [@js 263]] [@js.union on_field "kind"]), (ts_ExportSpecifier, (ts_ImportClause, (ts_ImportOrExportSpecifier, (ts_ImportSpecifier, ts_NamespaceImport) or_) or_) or_) or_) or_
      and ts_TypeOperatorNode = [`Ts_TypeOperatorNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeParameter = [`Ts_TypeParameter | `Ts_InstantiableType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeParameterDeclaration = [`Ts_TypeParameterDeclaration | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypePredicate = (([`U_n_0 of (ts_ThisTypePredicate, ts_ThisTypePredicate) union2 [@js 0] | `U_n_1 of (ts_IdentifierTypePredicate, ts_IdentifierTypePredicate) union2 [@js 1] | `U_n_2 of (ts_AssertsThisTypePredicate, ts_AssertsThisTypePredicate) union2 [@js 2] | `U_n_3 of (ts_AssertsIdentifierTypePredicate, ts_AssertsIdentifierTypePredicate) union2 [@js 3]] [@js.union on_field "kind"]), (ts_AssertsIdentifierTypePredicate, (ts_AssertsThisTypePredicate, (ts_IdentifierTypePredicate, ts_ThisTypePredicate) or_) or_) or_) or_
      and ts_TypePredicateBase = [`Ts_TypePredicateBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypePredicateKind = [`This[@js 0] | `Identifier[@js 1] | `AssertsThis[@js 2] | `AssertsIdentifier[@js 3]] [@js.enum]
      and ts_TypePredicateKind_This = [`This[@js 0]] [@js.enum]
      and ts_TypePredicateKind_Identifier = [`Identifier[@js 1]] [@js.enum]
      and ts_TypePredicateKind_AssertsThis = [`AssertsThis[@js 2]] [@js.enum]
      and ts_TypePredicateKind_AssertsIdentifier = [`AssertsIdentifier[@js 3]] [@js.enum]
      and ts_TypePredicateNode = [`Ts_TypePredicateNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeQueryNode = [`Ts_TypeQueryNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeReference = [`Ts_TypeReference | `Ts_ObjectType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeReferenceNode = [`Ts_TypeReferenceNode | `Ts_Node | `Ts_NodeWithTypeArguments | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_TypeReferenceType = (([`U_n_169 of (ts_TypeReferenceNode, ts_TypeReferenceNode) union2 [@js 169] | `U_n_216 of (ts_ExpressionWithTypeArguments, ts_ExpressionWithTypeArguments) union2 [@js 216]] [@js.union on_field "kind"]), (ts_ExpressionWithTypeArguments, ts_TypeReferenceNode) or_) or_
      and ts_TypeVariable = (ts_IndexedAccessType, ts_TypeParameter) or_
      and ts_UnaryExpression = [`Ts_UnaryExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_UnderscoreEscapedMap = [`Ts_UnderscoreEscapedMap of 'T | `Ts_ReadonlyUnderscoreEscapedMap of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_UnionOrIntersectionType = [`Ts_UnionOrIntersectionType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnionOrIntersectionTypeNode = (([`U_n_178 of (ts_UnionTypeNode, ts_UnionTypeNode) union2 [@js 178] | `U_n_179 of (ts_IntersectionTypeNode, ts_IntersectionTypeNode) union2 [@js 179]] [@js.union on_field "kind"]), (ts_IntersectionTypeNode, ts_UnionTypeNode) or_) or_
      and ts_UnionType = [`Ts_UnionType | `Ts_Type | `Ts_UnionOrIntersectionType] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnionTypeNode = [`Ts_UnionTypeNode | `Ts_Node | `Ts_TextRange | `Ts_TypeNode] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UniqueESSymbolType = [`Ts_UniqueESSymbolType | `Ts_Type] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnparsedNode = (([`U_n_285 of (ts_UnparsedPrologue, ts_UnparsedPrologue) union2 [@js 285] | `U_n_286 of (ts_UnparsedPrepend, ts_UnparsedPrepend, ts_UnparsedPrepend) union3 [@js 286] | `U_n_289 of (ts_UnparsedSyntheticReference, ts_UnparsedSyntheticReference) union2 [@js 289]] [@js.union on_field "kind"]), (ts_UnparsedPrepend, (ts_UnparsedPrologue, (ts_UnparsedSourceText, (ts_UnparsedSyntheticReference, ts_UnparsedTextLike) or_) or_) or_) or_) or_
      and ts_UnparsedPrepend = [`Ts_UnparsedPrepend | `Ts_Node | `Ts_TextRange | `Ts_UnparsedSection] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnparsedPrologue = [`Ts_UnparsedPrologue | `Ts_Node | `Ts_TextRange | `Ts_UnparsedSection] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnparsedSection = [`Ts_UnparsedSection | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnparsedSource = [`Ts_UnparsedSource | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnparsedSourceText = (([`U_n_286 of (ts_UnparsedPrepend, ts_UnparsedPrepend) union2 [@js 286]] [@js.union on_field "kind"]), (ts_UnparsedPrepend, ts_UnparsedTextLike) or_) or_
      and ts_UnparsedSyntheticReference = [`Ts_UnparsedSyntheticReference | `Ts_Node | `Ts_TextRange | `Ts_UnparsedSection] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnparsedTextLike = [`Ts_UnparsedTextLike | `Ts_Node | `Ts_TextRange | `Ts_UnparsedSection] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UnscopedEmitHelper = [`Ts_UnscopedEmitHelper | `Ts_EmitHelper] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_UpdateBundleProject = [`Ts_UpdateBundleProject of 'T | `Ts_InvalidatedProjectBase] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_UpdateExpression = [`Ts_UpdateExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UpdateOutputFileStampsProject = [`Ts_UpdateOutputFileStampsProject | `Ts_InvalidatedProjectBase] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_UserPreferences = [`Ts_UserPreferences] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_VariableDeclaration = [`Ts_VariableDeclaration | `Ts_Declaration | `Ts_NamedDeclaration | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_VariableDeclarationList = [`Ts_VariableDeclarationList | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_VariableLikeDeclaration = (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_158 of (ts_PropertySignature, ts_PropertySignature) union2 [@js 158] | `U_n_159 of (ts_PropertyDeclaration, ts_PropertyDeclaration) union2 [@js 159] | `U_n_191 of (ts_BindingElement, ts_BindingElement) union2 [@js 191] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242] | `U_n_273 of (ts_JsxAttribute, ts_JsxAttribute) union2 [@js 273] | `U_n_281 of (ts_PropertyAssignment, ts_PropertyAssignment) union2 [@js 281] | `U_n_282 of (ts_ShorthandPropertyAssignment, ts_ShorthandPropertyAssignment) union2 [@js 282] | `U_n_284 of (ts_EnumMember, ts_EnumMember) union2 [@js 284] | `U_n_316 of (ts_JSDocParameterTag, ts_JSDocParameterTag) union2 [@js 316] | `U_n_322 of (ts_JSDocPropertyTag, ts_JSDocPropertyTag) union2 [@js 322]] [@js.union on_field "kind"]), (ts_BindingElement, (ts_EnumMember, (ts_JSDocParameterTag, (ts_JSDocPropertyTag, (ts_JsxAttribute, (ts_ParameterDeclaration, (ts_PropertyAssignment, (ts_PropertyDeclaration, (ts_PropertySignature, (ts_ShorthandPropertyAssignment, ts_VariableDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_
      and ts_VariableStatement = [`Ts_VariableStatement | `Ts_JSDocContainer | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_VisitResult = ('T, 'T) or_array or_undefined
      and ts_Visitor = [`Ts_Visitor] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_VoidExpression = [`Ts_VoidExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange | `Ts_UnaryExpression] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_Watch = [`Ts_Watch of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_WatchCompilerHost = [`Ts_WatchCompilerHost of 'T | `Ts_WatchHost | `Ts_ProgramHost of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_WatchCompilerHostOfConfigFile = [`Ts_WatchCompilerHostOfConfigFile of 'T | `Ts_ConfigFileDiagnosticsReporter | `Ts_WatchHost | `Ts_ProgramHost of 'T | `Ts_WatchCompilerHost of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_WatchCompilerHostOfFilesAndCompilerOptions = [`Ts_WatchCompilerHostOfFilesAndCompilerOptions of 'T | `Ts_WatchHost | `Ts_ProgramHost of 'T | `Ts_WatchCompilerHost of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_WatchDirectoryFlags = [`None[@js 0] | `Recursive[@js 1]] [@js.enum]
      and ts_WatchDirectoryFlags_None = [`None[@js 0]] [@js.enum]
      and ts_WatchDirectoryFlags_Recursive = [`Recursive[@js 1]] [@js.enum]
      and ts_WatchDirectoryKind = [`UseFsEvents[@js 0] | `FixedPollingInterval[@js 1] | `DynamicPriorityPolling[@js 2]] [@js.enum]
      and ts_WatchDirectoryKind_UseFsEvents = [`UseFsEvents[@js 0]] [@js.enum]
      and ts_WatchDirectoryKind_FixedPollingInterval = [`FixedPollingInterval[@js 1]] [@js.enum]
      and ts_WatchDirectoryKind_DynamicPriorityPolling = [`DynamicPriorityPolling[@js 2]] [@js.enum]
      and ts_WatchFileKind = [`FixedPollingInterval[@js 0] | `PriorityPollingInterval[@js 1] | `DynamicPriorityPolling[@js 2] | `UseFsEvents[@js 3] | `UseFsEventsOnParentDirectory[@js 4]] [@js.enum]
      and ts_WatchFileKind_FixedPollingInterval = [`FixedPollingInterval[@js 0]] [@js.enum]
      and ts_WatchFileKind_PriorityPollingInterval = [`PriorityPollingInterval[@js 1]] [@js.enum]
      and ts_WatchFileKind_DynamicPriorityPolling = [`DynamicPriorityPolling[@js 2]] [@js.enum]
      and ts_WatchFileKind_UseFsEvents = [`UseFsEvents[@js 3]] [@js.enum]
      and ts_WatchFileKind_UseFsEventsOnParentDirectory = [`UseFsEventsOnParentDirectory[@js 4]] [@js.enum]
      and ts_WatchHost = [`Ts_WatchHost] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_WatchOfConfigFile = [`Ts_WatchOfConfigFile of 'T | `Ts_Watch of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and 'T ts_WatchOfFilesAndCompilerOptions = [`Ts_WatchOfFilesAndCompilerOptions of 'T | `Ts_Watch of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and ts_WatchOptions = [`Ts_WatchOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_WatchStatusReporter = [`Ts_WatchStatusReporter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_WhileStatement = [`Ts_WhileStatement | `Ts_IterationStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'T ts_WithMetadata = ('T, anonymous_interface_9) intersection2
      and ts_WithStatement = [`Ts_WithStatement | `Ts_Node | `Ts_Statement | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_WriteFileCallback = [`Ts_WriteFileCallback] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_YieldExpression = [`Ts_YieldExpression | `Ts_Expression | `Ts_Node | `Ts_TextRange] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts___String = ((ts_InternalSymbolName, (string, (unit, anonymous_interface_2) or_) or_) or_, ([`Call[@js "__call"] | `Class[@js "__class"] | `Computed[@js "__computed"] | `Constructor[@js "__constructor"] | `Default[@js "default"] | `ExportEquals[@js "export="] | `ExportStar[@js "__export"] | `Function[@js "__function"] | `Global[@js "__global"] | `Index[@js "__index"] | `JSXAttributes[@js "__jsxAttributes"] | `Missing[@js "__missing"] | `New[@js "__new"] | `Object[@js "__object"] | `Resolving[@js "__resolving__"] | `This[@js "this"] | `Type[@js "__type"]] [@js.enum])) or_enum
      and ts_server_ActionInvalidate = ([`L_s35_action__invalidate[@js "action::invalidate"]] [@js.enum])
      and ts_server_ActionPackageInstalled = ([`L_s36_action__packageInstalled[@js "action::packageInstalled"]] [@js.enum])
      and ts_server_ActionSet = ([`L_s37_action__set[@js "action::set"]] [@js.enum])
      and ts_server_BeginInstallTypes = [`Ts_server_BeginInstallTypes | `Ts_server_InstallTypes | `Ts_server_ProjectResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_CloseProject = [`Ts_server_CloseProject | `Ts_server_TypingInstallerRequestWithProjectName] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_DiscoverTypings = [`Ts_server_DiscoverTypings | `Ts_server_TypingInstallerRequestWithProjectName] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_EndInstallTypes = [`Ts_server_EndInstallTypes | `Ts_server_InstallTypes | `Ts_server_ProjectResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_EventBeginInstallTypes = ([`L_s63_event__beginInstallTypes[@js "event::beginInstallTypes"]] [@js.enum])
      and ts_server_EventEndInstallTypes = ([`L_s64_event__endInstallTypes[@js "event::endInstallTypes"]] [@js.enum])
      and ts_server_EventInitializationFailed = ([`L_s65_event__initializationFailed[@js "event::initializationFailed"]] [@js.enum])
      and ts_server_EventTypesRegistry = ([`L_s66_event__typesRegistry[@js "event::typesRegistry"]] [@js.enum])
      and ts_server_InitializationFailedResponse = [`Ts_server_InitializationFailedResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_InstallPackageRequest = [`Ts_server_InstallPackageRequest | `Ts_server_TypingInstallerRequestWithProjectName] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_InstallTypes = [`Ts_server_InstallTypes | `Ts_server_ProjectResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_InvalidateCachedTypings = [`Ts_server_InvalidateCachedTypings | `Ts_server_ProjectResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_PackageInstalledResponse = [`Ts_server_PackageInstalledResponse | `Ts_server_ProjectResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_ProjectResponse = [`Ts_server_ProjectResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_SetTypings = [`Ts_server_SetTypings | `Ts_server_ProjectResponse | `Ts_server_TypingInstallerResponse] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_TypesRegistryRequest = [`Ts_server_TypesRegistryRequest] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_TypingInstallerRequestWithProjectName = [`Ts_server_TypingInstallerRequestWithProjectName] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ts_server_TypingInstallerResponse = [`Ts_server_TypingInstallerResponse] intf
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
    val get___bucketKey: t -> any [@@js.get "__bucketKey"]
    val set___bucketKey: t -> any -> unit [@@js.set "__bucketKey"]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get___escapedIdentifier: t -> unknown [@@js.get "__escapedIdentifier"]
    val set___escapedIdentifier: t -> unknown -> unit [@@js.set "__escapedIdentifier"]
  end
  module AnonymousInterface3 : sig
    type t = anonymous_interface_3
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get___pathBrand: t -> any [@@js.get "__pathBrand"]
    val set___pathBrand: t -> any -> unit [@@js.set "__pathBrand"]
  end
  module AnonymousInterface4 : sig
    type t = anonymous_interface_4
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__isResolvedConfigFileName: t -> never [@@js.get "_isResolvedConfigFileName"]
    val set__isResolvedConfigFileName: t -> never -> unit [@@js.set "_isResolvedConfigFileName"]
  end
  module AnonymousInterface5 : sig
    type t = anonymous_interface_5
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_assignable: t -> float [@@js.get "assignable"]
    val set_assignable: t -> float -> unit [@@js.set "assignable"]
    val get_identity: t -> float [@@js.get "identity"]
    val set_identity: t -> float -> unit [@@js.set "identity"]
    val get_subtype: t -> float [@@js.get "subtype"]
    val set_subtype: t -> float -> unit [@@js.set "subtype"]
    val get_strictSubtype: t -> float [@@js.get "strictSubtype"]
    val set_strictSubtype: t -> float -> unit [@@js.set "strictSubtype"]
  end
  module AnonymousInterface6 : sig
    type t = anonymous_interface_6
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_config: t -> any [@@js.get "config"]
    val set_config: t -> any -> unit [@@js.set "config"]
    val get_error: t -> ts_Diagnostic [@@js.get "error"]
    val set_error: t -> ts_Diagnostic -> unit [@@js.set "error"]
  end
  module AnonymousInterface7 : sig
    type t = anonymous_interface_7
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_config: t -> any [@@js.get "config"]
    val set_config: t -> any -> unit [@@js.set "config"]
    val get_error: t -> ts_Diagnostic [@@js.get "error"]
    val set_error: t -> ts_Diagnostic -> unit [@@js.set "error"]
  end
  module AnonymousInterface8 : sig
    type t = anonymous_interface_8
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_expression: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_194 of (ts_PropertyAccessEntityNameExpression, ts_PropertyAccessEntityNameExpression) union2 [@js 194]] [@js.union on_field "kind"]), (ts_Identifier, ts_PropertyAccessEntityNameExpression) or_) or_ [@@js.get "expression"]
    val set_expression: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_194 of (ts_PropertyAccessEntityNameExpression, ts_PropertyAccessEntityNameExpression) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_PropertyAccessEntityNameExpression) or_) or_ -> unit [@@js.set "expression"]
  end
  module AnonymousInterface9 : sig
    type t = anonymous_interface_9
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_metadata: t -> unknown [@@js.get "metadata"]
    val set_metadata: t -> unknown -> unit [@@js.set "metadata"]
  end
  module AnonymousInterface10 : sig
    type t = anonymous_interface_10
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_options: t -> ts_CompilerOptions [@@js.get "options"]
    val set_options: t -> ts_CompilerOptions -> unit [@@js.set "options"]
    val get_errors: t -> ts_Diagnostic list [@@js.get "errors"]
    val set_errors: t -> ts_Diagnostic list -> unit [@@js.set "errors"]
  end
  module AnonymousInterface11 : sig
    type t = anonymous_interface_11
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_options: t -> ts_TypeAcquisition [@@js.get "options"]
    val set_options: t -> ts_TypeAcquisition -> unit [@@js.set "options"]
    val get_errors: t -> ts_Diagnostic list [@@js.get "errors"]
    val set_errors: t -> ts_Diagnostic list -> unit [@@js.set "errors"]
  end
  module AnonymousInterface12 : sig
    type t = anonymous_interface_12
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_parent: t -> ts_ConstructorDeclaration [@@js.get "parent"]
    val set_parent: t -> ts_ConstructorDeclaration -> unit [@@js.set "parent"]
    val get_name: t -> ts_Identifier [@@js.get "name"]
    val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
  end
  module AnonymousInterface13 : sig
    type t = anonymous_interface_13
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_result: t -> 'T [@@js.get "result"]
    val set_result: t -> 'T -> unit [@@js.set "result"]
    val get_affected: t -> (([`U_n_290 of (ts_SourceFile, ts_SourceFile) union2 [@js 290]] [@js.union on_field "kind"]), (ts_Program, ts_SourceFile) or_) or_ [@@js.get "affected"]
    val set_affected: t -> (([`U_n_290 of (ts_SourceFile, ts_SourceFile) union2 ] [@js.union on_field "kind"]), (ts_Program, ts_SourceFile) or_) or_ -> unit [@@js.set "affected"]
  end
  module AnonymousInterface14 : sig
    type t = anonymous_interface_14
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_typeArguments: t -> ts_TypeNode ts_NodeArray [@@js.get "typeArguments"]
    val set_typeArguments: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "typeArguments"]
  end
  module AnonymousInterface15 : sig
    type t = anonymous_interface_15
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_value: t -> 'T [@@js.get "value"]
    val set_value: t -> 'T -> unit [@@js.set "value"]
    val get_done: t -> ([`L_b_false[@js false]] [@js.enum]) [@@js.get "done"]
    val set_done: t -> ([`L_b_false] [@js.enum]) -> unit [@@js.set "done"]
  end
  module AnonymousInterface16 : sig
    type t = anonymous_interface_16
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_value: t -> never [@@js.get "value"]
    val set_value: t -> never -> unit [@@js.set "value"]
    val get_done: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "done"]
    val set_done: t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "done"]
  end
  module AnonymousInterface17 : sig
    type t = anonymous_interface_17
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val getExecutingFilePath: t -> string [@@js.call "getExecutingFilePath"]
    val resolvePath: t -> path:string -> string [@@js.call "resolvePath"]
    val fileExists: t -> fileName:string -> bool [@@js.call "fileExists"]
    val readFile: t -> fileName:string -> string or_undefined [@@js.call "readFile"]
  end
  module AnonymousInterface18 : sig
    type t = anonymous_interface_18
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> nodes:'T ts_NodeArray or_undefined -> visitor:ts_Visitor -> ?test:(node:ts_Node -> bool) -> ?start:float -> ?count:float -> unit -> 'T ts_NodeArray [@@js.apply]
  end
  module[@js.scope "ts"] Ts : sig
    val versionMajorMinor: string [@@js.global "versionMajorMinor"]
    val version: string [@@js.global "version"]
    module[@js.scope "MapLike"] MapLike : sig
      type 'T t = 'T ts_MapLike
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get: 'T t -> string -> 'T [@@js.index_get]
      val set: 'T t -> string -> 'T -> unit [@@js.index_set]
    end
    module[@js.scope "SortedReadonlyArray"] SortedReadonlyArray : sig
      type 'T t = 'T ts_SortedReadonlyArray
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get___sortedArrayBrand: 'T t -> any [@@js.get "__sortedArrayBrand"]
      val set___sortedArrayBrand: 'T t -> any -> unit [@@js.set "__sortedArrayBrand"]
      val cast: 'T t -> 'T list [@@js.cast]
    end
    module[@js.scope "SortedArray"] SortedArray : sig
      type 'T t = 'T ts_SortedArray
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get___sortedArrayBrand: 'T t -> any [@@js.get "__sortedArrayBrand"]
      val set___sortedArrayBrand: 'T t -> any -> unit [@@js.set "__sortedArrayBrand"]
      val cast: 'T t -> 'T list [@@js.cast]
    end
    module[@js.scope "ReadonlyMap"] ReadonlyMap : sig
      type 'T t = 'T ts_ReadonlyMap
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_: 'T t -> key:string -> 'T or_undefined [@@js.call "get"]
      val has: 'T t -> key:string -> bool [@@js.call "has"]
      val forEach: 'T t -> action:(value:'T -> key:string -> unit) -> unit [@@js.call "forEach"]
      val get_size: 'T t -> float [@@js.get "size"]
      val keys: 'T t -> string ts_Iterator [@@js.call "keys"]
      val values: 'T t -> 'T ts_Iterator [@@js.call "values"]
      val entries: 'T t -> (string * 'T) ts_Iterator [@@js.call "entries"]
    end
    module[@js.scope "Map"] Map : sig
      type 'T t = 'T ts_Map
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val set_: 'T t -> key:string -> value:'T -> 'T t [@@js.call "set"]
      val delete: 'T t -> key:string -> bool [@@js.call "delete"]
      val clear: 'T t -> unit [@@js.call "clear"]
      val cast: 'T t -> 'T ts_ReadonlyMap [@@js.cast]
    end
    module[@js.scope "Iterator"] Iterator : sig
      type 'T t = 'T ts_Iterator
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val next: 'T t -> ([`U_b_false of anonymous_interface_15 [@js false] | `U_b_true of anonymous_interface_16 [@js true]] [@js.union on_field "done"]) [@@js.call "next"]
    end
    module[@js.scope "Push"] Push : sig
      type 'T t = 'T ts_Push
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val push: 'T t -> values:('T list [@js.variadic]) -> unit [@@js.call "push"]
    end
    module Path : sig
      type t = ts_Path
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "TextRange"] TextRange : sig
      type t = ts_TextRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_pos: t -> float [@@js.get "pos"]
      val set_pos: t -> float -> unit [@@js.set "pos"]
      val get_end: t -> float [@@js.get "end"]
      val set_end: t -> float -> unit [@@js.set "end"]
    end
    module JSDocSyntaxKind : sig
      type t = ts_JSDocSyntaxKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module KeywordSyntaxKind : sig
      type t = ts_KeywordSyntaxKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module JsxTokenSyntaxKind : sig
      type t = ts_JsxTokenSyntaxKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SyntaxKind : sig
      type t = ts_SyntaxKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NodeFlags : sig
      type t = ts_NodeFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ModifierFlags : sig
      type t = ts_ModifierFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module JsxFlags : sig
      type t = ts_JsxFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Node"] Node : sig
      type t = ts_Node
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getSourceFile: t -> ts_SourceFile [@@js.call "getSourceFile"]
      val getChildCount: t -> ?sourceFile:ts_SourceFile -> unit -> float [@@js.call "getChildCount"]
      val getChildAt: t -> index:float -> ?sourceFile:ts_SourceFile -> unit -> t [@@js.call "getChildAt"]
      val getChildren: t -> ?sourceFile:ts_SourceFile -> unit -> t list [@@js.call "getChildren"]
      val getStart: t -> ?sourceFile:ts_SourceFile -> ?includeJsDocComment:bool -> unit -> float [@@js.call "getStart"]
      val getFullStart: t -> float [@@js.call "getFullStart"]
      val getEnd: t -> float [@@js.call "getEnd"]
      val getWidth: t -> ?sourceFile:ts_SourceFileLike -> unit -> float [@@js.call "getWidth"]
      val getFullWidth: t -> float [@@js.call "getFullWidth"]
      val getLeadingTriviaWidth: t -> ?sourceFile:ts_SourceFile -> unit -> float [@@js.call "getLeadingTriviaWidth"]
      val getFullText: t -> ?sourceFile:ts_SourceFile -> unit -> string [@@js.call "getFullText"]
      val getText: t -> ?sourceFile:ts_SourceFile -> unit -> string [@@js.call "getText"]
      val getFirstToken: t -> ?sourceFile:ts_SourceFile -> unit -> t or_undefined [@@js.call "getFirstToken"]
      val getLastToken: t -> ?sourceFile:ts_SourceFile -> unit -> t or_undefined [@@js.call "getLastToken"]
      val forEachChild: t -> cbNode:(node:t -> 'T or_undefined) -> ?cbNodeArray:(nodes:t ts_NodeArray -> 'T or_undefined) -> unit -> 'T or_undefined [@@js.call "forEachChild"]
      val get_kind: t -> ts_SyntaxKind [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind -> unit [@@js.set "kind"]
      val get_flags: t -> ts_NodeFlags [@@js.get "flags"]
      val set_flags: t -> ts_NodeFlags -> unit [@@js.set "flags"]
      val get_decorators: t -> ts_Decorator ts_NodeArray [@@js.get "decorators"]
      val set_decorators: t -> ts_Decorator ts_NodeArray -> unit [@@js.set "decorators"]
      val get_modifiers: t -> ts_ModifiersArray [@@js.get "modifiers"]
      val set_modifiers: t -> ts_ModifiersArray -> unit [@@js.set "modifiers"]
      val get_parent: t -> t [@@js.get "parent"]
      val set_parent: t -> t -> unit [@@js.set "parent"]
      val cast: t -> ts_TextRange [@@js.cast]
    end
    module JSDocContainer : sig
      type t = ts_JSDocContainer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HasJSDoc : sig
      type t = ts_HasJSDoc
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HasType : sig
      type t = ts_HasType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HasTypeArguments : sig
      type t = ts_HasTypeArguments
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HasInitializer : sig
      type t = ts_HasInitializer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module HasExpressionInitializer : sig
      type t = ts_HasExpressionInitializer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "NodeArray"] NodeArray : sig
      type 'T t = 'T ts_NodeArray
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_hasTrailingComma: 'T t -> bool [@@js.get "hasTrailingComma"]
      val set_hasTrailingComma: 'T t -> bool -> unit [@@js.set "hasTrailingComma"]
      val cast: 'T t -> 'T list [@@js.cast]
      val cast': 'T t -> ts_TextRange [@@js.cast]
    end
    module[@js.scope "Token"] Token : sig
      type 'TKind t = 'TKind ts_Token
      val t_to_js: ('TKind -> Ojs.t) -> 'TKind t -> Ojs.t
      val t_of_js: (Ojs.t -> 'TKind) -> Ojs.t -> 'TKind t
      type 'TKind t_1 = 'TKind t
      val t_1_to_js: ('TKind -> Ojs.t) -> 'TKind t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'TKind) -> Ojs.t -> 'TKind t_1
      val get_kind: 'TKind t -> 'TKind [@@js.get "kind"]
      val set_kind: 'TKind t -> 'TKind -> unit [@@js.set "kind"]
      val cast: 'TKind t -> ts_Node [@@js.cast]
    end
    module DotToken : sig
      type t = ts_DotToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DotDotDotToken : sig
      type t = ts_DotDotDotToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module QuestionToken : sig
      type t = ts_QuestionToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module QuestionDotToken : sig
      type t = ts_QuestionDotToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ExclamationToken : sig
      type t = ts_ExclamationToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColonToken : sig
      type t = ts_ColonToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EqualsToken : sig
      type t = ts_EqualsToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AsteriskToken : sig
      type t = ts_AsteriskToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EqualsGreaterThanToken : sig
      type t = ts_EqualsGreaterThanToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EndOfFileToken : sig
      type t = ts_EndOfFileToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ReadonlyToken : sig
      type t = ts_ReadonlyToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AwaitKeywordToken : sig
      type t = ts_AwaitKeywordToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module PlusToken : sig
      type t = ts_PlusToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MinusToken : sig
      type t = ts_MinusToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AssertsToken : sig
      type t = ts_AssertsToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Modifier : sig
      type t = ts_Modifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ModifiersArray : sig
      type t = ts_ModifiersArray
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Identifier"] Identifier : sig
      type t = ts_Identifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val get_kind: t -> ts_SyntaxKind_Identifier [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_Identifier -> unit [@@js.set "kind"]
      val get_escapedText: t -> ts___String [@@js.get "escapedText"]
      val set_escapedText: t -> ts___String -> unit [@@js.set "escapedText"]
      val get_originalKeywordKind: t -> ts_SyntaxKind [@@js.get "originalKeywordKind"]
      val set_originalKeywordKind: t -> ts_SyntaxKind -> unit [@@js.set "originalKeywordKind"]
      val get_isInJSDocNamespace: t -> bool [@@js.get "isInJSDocNamespace"]
      val set_isInJSDocNamespace: t -> bool -> unit [@@js.set "isInJSDocNamespace"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "TransientIdentifier"] TransientIdentifier : sig
      type t = ts_TransientIdentifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resolvedSymbol: t -> ts_Symbol [@@js.get "resolvedSymbol"]
      val set_resolvedSymbol: t -> ts_Symbol -> unit [@@js.set "resolvedSymbol"]
      val cast: t -> ts_Identifier [@@js.cast]
    end
    module[@js.scope "QualifiedName"] QualifiedName : sig
      type t = ts_QualifiedName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_QualifiedName [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_QualifiedName -> unit [@@js.set "kind"]
      val get_left: t -> ts_EntityName [@@js.get "left"]
      val set_left: t -> ts_EntityName -> unit [@@js.set "left"]
      val get_right: t -> ts_Identifier [@@js.get "right"]
      val set_right: t -> ts_Identifier -> unit [@@js.set "right"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module EntityName : sig
      type t = ts_EntityName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module PropertyName : sig
      type t = ts_PropertyName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeclarationName : sig
      type t = ts_DeclarationName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Declaration"] Declaration : sig
      type t = ts_Declaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__declarationBrand: t -> any [@@js.get "_declarationBrand"]
      val set__declarationBrand: t -> any -> unit [@@js.set "_declarationBrand"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "NamedDeclaration"] NamedDeclaration : sig
      type t = ts_NamedDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> ts_DeclarationName [@@js.get "name"]
      val set_name: t -> ts_DeclarationName -> unit [@@js.set "name"]
      val cast: t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "DeclarationStatement"] DeclarationStatement : sig
      type t = ts_DeclarationStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> (([`U_n_8 of (ts_NumericLiteral, ts_NumericLiteral) union2 [@js 8] | `U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2 [@js 10] | `U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75]] [@js.union on_field "kind"]), (ts_Identifier, (ts_NumericLiteral, ts_StringLiteral) or_) or_) or_ [@@js.get "name"]
      val set_name: t -> (([`U_n_8 of (ts_NumericLiteral, ts_NumericLiteral) union2  | `U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2  | `U_n_75 of (ts_Identifier, ts_Identifier) union2 ] [@js.union on_field "kind"]), (ts_Identifier, (ts_NumericLiteral, ts_StringLiteral) or_) or_) or_ -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
      val cast': t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "ComputedPropertyName"] ComputedPropertyName : sig
      type t = ts_ComputedPropertyName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_Declaration [@@js.get "parent"]
      val set_parent: t -> ts_Declaration -> unit [@@js.set "parent"]
      val get_kind: t -> ts_SyntaxKind_ComputedPropertyName [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ComputedPropertyName -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "PrivateIdentifier"] PrivateIdentifier : sig
      type t = ts_PrivateIdentifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val get_kind: t -> ts_SyntaxKind_PrivateIdentifier [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PrivateIdentifier -> unit [@@js.set "kind"]
      val get_escapedText: t -> ts___String [@@js.get "escapedText"]
      val set_escapedText: t -> ts___String -> unit [@@js.set "escapedText"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "Decorator"] Decorator : sig
      type t = ts_Decorator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_Decorator [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_Decorator -> unit [@@js.set "kind"]
      val get_parent: t -> ts_NamedDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_NamedDeclaration -> unit [@@js.set "parent"]
      val get_expression: t -> ts_LeftHandSideExpression [@@js.get "expression"]
      val set_expression: t -> ts_LeftHandSideExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "TypeParameterDeclaration"] TypeParameterDeclaration : sig
      type t = ts_TypeParameterDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeParameter [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeParameter -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union4 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union4 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union4 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union5 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union5 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union4 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union4 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union4 [@js 167] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union4 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union4 [@js 171] | `U_n_181 of (ts_InferTypeNode, ts_InferTypeNode) union2 [@js 181] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union4 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union4 [@js 202] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union4 [@js 214] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union4 [@js 244] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union4 [@js 245] | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration, ts_InterfaceDeclaration) union3 [@js 246] | `U_n_247 of (ts_TypeAliasDeclaration, ts_TypeAliasDeclaration, ts_TypeAliasDeclaration) union3 [@js 247] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union4 [@js 300] | `U_n_320 of (ts_JSDocTemplateTag, ts_JSDocTemplateTag, ts_JSDocTemplateTag) union3 [@js 320]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_DeclarationWithTypeParameterChildren, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_InferTypeNode, (ts_InterfaceDeclaration, (ts_JSDocFunctionType, (ts_JSDocTemplateTag, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, (ts_SignatureDeclaration, ts_TypeAliasDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union4  | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union4  | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union4  | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union5  | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union5  | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union4  | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union4  | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union4  | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union4  | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union4  | `U_n_181 of (ts_InferTypeNode, ts_InferTypeNode) union2  | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union4  | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union4  | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union4  | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union4  | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union4  | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration, ts_InterfaceDeclaration) union3  | `U_n_247 of (ts_TypeAliasDeclaration, ts_TypeAliasDeclaration, ts_TypeAliasDeclaration) union3  | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union4  | `U_n_320 of (ts_JSDocTemplateTag, ts_JSDocTemplateTag, ts_JSDocTemplateTag) union3 ] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_DeclarationWithTypeParameterChildren, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_InferTypeNode, (ts_InterfaceDeclaration, (ts_JSDocFunctionType, (ts_JSDocTemplateTag, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, (ts_SignatureDeclaration, ts_TypeAliasDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_constraint: t -> ts_TypeNode [@@js.get "constraint"]
      val set_constraint: t -> ts_TypeNode -> unit [@@js.set "constraint"]
      val get_default: t -> ts_TypeNode [@@js.get "default"]
      val set_default: t -> ts_TypeNode -> unit [@@js.set "default"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "SignatureDeclarationBase"] SignatureDeclarationBase : sig
      type t = ts_SignatureDeclarationBase
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ((ts_SyntaxKind_ArrowFunction, (ts_SyntaxKind_CallSignature, (ts_SyntaxKind_ConstructSignature, (ts_SyntaxKind_Constructor, (ts_SyntaxKind_ConstructorType, (ts_SyntaxKind_FunctionDeclaration, (ts_SyntaxKind_FunctionExpression, (ts_SyntaxKind_FunctionType, (ts_SyntaxKind_GetAccessor, (ts_SyntaxKind_IndexSignature, (ts_SyntaxKind_JSDocFunctionType, (ts_SyntaxKind_MethodDeclaration, (ts_SyntaxKind_MethodSignature, ts_SyntaxKind_SetAccessor) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`ArrowFunction[@js 202] | `CallSignature[@js 165] | `ConstructSignature[@js 166] | `Constructor[@js 162] | `ConstructorType[@js 171] | `FunctionDeclaration[@js 244] | `FunctionExpression[@js 201] | `FunctionType[@js 170] | `GetAccessor[@js 163] | `IndexSignature[@js 167] | `JSDocFunctionType[@js 300] | `MethodDeclaration[@js 161] | `MethodSignature[@js 160] | `SetAccessor[@js 164]] [@js.enum])) or_enum [@@js.get "kind"]
      val set_kind: t -> ((ts_SyntaxKind_ArrowFunction, (ts_SyntaxKind_CallSignature, (ts_SyntaxKind_ConstructSignature, (ts_SyntaxKind_Constructor, (ts_SyntaxKind_ConstructorType, (ts_SyntaxKind_FunctionDeclaration, (ts_SyntaxKind_FunctionExpression, (ts_SyntaxKind_FunctionType, (ts_SyntaxKind_GetAccessor, (ts_SyntaxKind_IndexSignature, (ts_SyntaxKind_JSDocFunctionType, (ts_SyntaxKind_MethodDeclaration, (ts_SyntaxKind_MethodSignature, ts_SyntaxKind_SetAccessor) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`ArrowFunction | `CallSignature | `ConstructSignature | `Constructor | `ConstructorType | `FunctionDeclaration | `FunctionExpression | `FunctionType | `GetAccessor | `IndexSignature | `JSDocFunctionType | `MethodDeclaration | `MethodSignature | `SetAccessor] [@js.enum])) or_enum -> unit [@@js.set "kind"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray -> unit [@@js.set "typeParameters"]
      val get_parameters: t -> ts_ParameterDeclaration ts_NodeArray [@@js.get "parameters"]
      val set_parameters: t -> ts_ParameterDeclaration ts_NodeArray -> unit [@@js.set "parameters"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module SignatureDeclaration : sig
      type t = ts_SignatureDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "CallSignatureDeclaration"] CallSignatureDeclaration : sig
      type t = ts_CallSignatureDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_CallSignature [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_CallSignature -> unit [@@js.set "kind"]
      val cast: t -> ts_SignatureDeclarationBase [@@js.cast]
      val cast': t -> ts_TypeElement [@@js.cast]
    end
    module[@js.scope "ConstructSignatureDeclaration"] ConstructSignatureDeclaration : sig
      type t = ts_ConstructSignatureDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ConstructSignature [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ConstructSignature -> unit [@@js.set "kind"]
      val cast: t -> ts_SignatureDeclarationBase [@@js.cast]
      val cast': t -> ts_TypeElement [@@js.cast]
    end
    module BindingName : sig
      type t = ts_BindingName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "VariableDeclaration"] VariableDeclaration : sig
      type t = ts_VariableDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_VariableDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_VariableDeclaration -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_243 of (ts_VariableDeclarationList, ts_VariableDeclarationList) union2 [@js 243] | `U_n_280 of (ts_CatchClause, ts_CatchClause) union2 [@js 280]] [@js.union on_field "kind"]), (ts_CatchClause, ts_VariableDeclarationList) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_243 of (ts_VariableDeclarationList, ts_VariableDeclarationList) union2  | `U_n_280 of (ts_CatchClause, ts_CatchClause) union2 ] [@js.union on_field "kind"]), (ts_CatchClause, ts_VariableDeclarationList) or_) or_ -> unit [@@js.set "parent"]
      val get_name: t -> ts_BindingName [@@js.get "name"]
      val set_name: t -> ts_BindingName -> unit [@@js.set "name"]
      val get_exclamationToken: t -> ts_ExclamationToken [@@js.get "exclamationToken"]
      val set_exclamationToken: t -> ts_ExclamationToken -> unit [@@js.set "exclamationToken"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val get_initializer: t -> ts_Expression [@@js.get "initializer"]
      val set_initializer: t -> ts_Expression -> unit [@@js.set "initializer"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "VariableDeclarationList"] VariableDeclarationList : sig
      type t = ts_VariableDeclarationList
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_VariableDeclarationList [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_VariableDeclarationList -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_225 of (ts_VariableStatement, ts_VariableStatement) union2 [@js 225] | `U_n_230 of (ts_ForStatement, ts_ForStatement) union2 [@js 230] | `U_n_231 of (ts_ForInStatement, ts_ForInStatement) union2 [@js 231] | `U_n_232 of (ts_ForOfStatement, ts_ForOfStatement) union2 [@js 232]] [@js.union on_field "kind"]), (ts_ForInStatement, (ts_ForOfStatement, (ts_ForStatement, ts_VariableStatement) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_225 of (ts_VariableStatement, ts_VariableStatement) union2  | `U_n_230 of (ts_ForStatement, ts_ForStatement) union2  | `U_n_231 of (ts_ForInStatement, ts_ForInStatement) union2  | `U_n_232 of (ts_ForOfStatement, ts_ForOfStatement) union2 ] [@js.union on_field "kind"]), (ts_ForInStatement, (ts_ForOfStatement, (ts_ForStatement, ts_VariableStatement) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_declarations: t -> ts_VariableDeclaration ts_NodeArray [@@js.get "declarations"]
      val set_declarations: t -> ts_VariableDeclaration ts_NodeArray -> unit [@@js.set "declarations"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "ParameterDeclaration"] ParameterDeclaration : sig
      type t = ts_ParameterDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_Parameter [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_Parameter -> unit [@@js.set "kind"]
      val get_parent: t -> ts_SignatureDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_SignatureDeclaration -> unit [@@js.set "parent"]
      val get_dotDotDotToken: t -> ts_DotDotDotToken [@@js.get "dotDotDotToken"]
      val set_dotDotDotToken: t -> ts_DotDotDotToken -> unit [@@js.set "dotDotDotToken"]
      val get_name: t -> ts_BindingName [@@js.get "name"]
      val set_name: t -> ts_BindingName -> unit [@@js.set "name"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val get_initializer: t -> ts_Expression [@@js.get "initializer"]
      val set_initializer: t -> ts_Expression -> unit [@@js.set "initializer"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "BindingElement"] BindingElement : sig
      type t = ts_BindingElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_BindingElement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_BindingElement -> unit [@@js.set "kind"]
      val get_parent: t -> ts_BindingPattern [@@js.get "parent"]
      val set_parent: t -> ts_BindingPattern -> unit [@@js.set "parent"]
      val get_propertyName: t -> ts_PropertyName [@@js.get "propertyName"]
      val set_propertyName: t -> ts_PropertyName -> unit [@@js.set "propertyName"]
      val get_dotDotDotToken: t -> ts_DotDotDotToken [@@js.get "dotDotDotToken"]
      val set_dotDotDotToken: t -> ts_DotDotDotToken -> unit [@@js.set "dotDotDotToken"]
      val get_name: t -> ts_BindingName [@@js.get "name"]
      val set_name: t -> ts_BindingName -> unit [@@js.set "name"]
      val get_initializer: t -> ts_Expression [@@js.get "initializer"]
      val set_initializer: t -> ts_Expression -> unit [@@js.set "initializer"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "PropertySignature"] PropertySignature : sig
      type t = ts_PropertySignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_PropertySignature [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PropertySignature -> unit [@@js.set "kind"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val get_initializer: t -> ts_Expression [@@js.get "initializer"]
      val set_initializer: t -> ts_Expression -> unit [@@js.set "initializer"]
      val cast: t -> ts_TypeElement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "PropertyDeclaration"] PropertyDeclaration : sig
      type t = ts_PropertyDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_PropertyDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PropertyDeclaration -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ClassLikeDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ClassLikeDeclaration -> unit [@@js.set "parent"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val get_exclamationToken: t -> ts_ExclamationToken [@@js.get "exclamationToken"]
      val set_exclamationToken: t -> ts_ExclamationToken -> unit [@@js.set "exclamationToken"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val get_initializer: t -> ts_Expression [@@js.get "initializer"]
      val set_initializer: t -> ts_Expression -> unit [@@js.set "initializer"]
      val cast: t -> ts_ClassElement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ObjectLiteralElement"] ObjectLiteralElement : sig
      type t = ts_ObjectLiteralElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__objectLiteralBrand: t -> any [@@js.get "_objectLiteralBrand"]
      val set__objectLiteralBrand: t -> any -> unit [@@js.set "_objectLiteralBrand"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module ObjectLiteralElementLike : sig
      type t = ts_ObjectLiteralElementLike
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "PropertyAssignment"] PropertyAssignment : sig
      type t = ts_PropertyAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_ObjectLiteralExpression [@@js.get "parent"]
      val set_parent: t -> ts_ObjectLiteralExpression -> unit [@@js.set "parent"]
      val get_kind: t -> ts_SyntaxKind_PropertyAssignment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PropertyAssignment -> unit [@@js.set "kind"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val get_initializer: t -> ts_Expression [@@js.get "initializer"]
      val set_initializer: t -> ts_Expression -> unit [@@js.set "initializer"]
      val cast: t -> ts_ObjectLiteralElement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ShorthandPropertyAssignment"] ShorthandPropertyAssignment : sig
      type t = ts_ShorthandPropertyAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_ObjectLiteralExpression [@@js.get "parent"]
      val set_parent: t -> ts_ObjectLiteralExpression -> unit [@@js.set "parent"]
      val get_kind: t -> ts_SyntaxKind_ShorthandPropertyAssignment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ShorthandPropertyAssignment -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val get_exclamationToken: t -> ts_ExclamationToken [@@js.get "exclamationToken"]
      val set_exclamationToken: t -> ts_ExclamationToken -> unit [@@js.set "exclamationToken"]
      val get_equalsToken: t -> ts_SyntaxKind_EqualsToken ts_Token [@@js.get "equalsToken"]
      val set_equalsToken: t -> ts_SyntaxKind_EqualsToken ts_Token -> unit [@@js.set "equalsToken"]
      val get_objectAssignmentInitializer: t -> ts_Expression [@@js.get "objectAssignmentInitializer"]
      val set_objectAssignmentInitializer: t -> ts_Expression -> unit [@@js.set "objectAssignmentInitializer"]
      val cast: t -> ts_ObjectLiteralElement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "SpreadAssignment"] SpreadAssignment : sig
      type t = ts_SpreadAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_ObjectLiteralExpression [@@js.get "parent"]
      val set_parent: t -> ts_ObjectLiteralExpression -> unit [@@js.set "parent"]
      val get_kind: t -> ts_SyntaxKind_SpreadAssignment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SpreadAssignment -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_ObjectLiteralElement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module VariableLikeDeclaration : sig
      type t = ts_VariableLikeDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "PropertyLikeDeclaration"] PropertyLikeDeclaration : sig
      type t = ts_PropertyLikeDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "ObjectBindingPattern"] ObjectBindingPattern : sig
      type t = ts_ObjectBindingPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ObjectBindingPattern [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ObjectBindingPattern -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_191 of (ts_BindingElement, ts_BindingElement) union2 [@js 191] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242]] [@js.union on_field "kind"]), (ts_BindingElement, (ts_ParameterDeclaration, ts_VariableDeclaration) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2  | `U_n_191 of (ts_BindingElement, ts_BindingElement) union2  | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 ] [@js.union on_field "kind"]), (ts_BindingElement, (ts_ParameterDeclaration, ts_VariableDeclaration) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_elements: t -> ts_BindingElement ts_NodeArray [@@js.get "elements"]
      val set_elements: t -> ts_BindingElement ts_NodeArray -> unit [@@js.set "elements"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "ArrayBindingPattern"] ArrayBindingPattern : sig
      type t = ts_ArrayBindingPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ArrayBindingPattern [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ArrayBindingPattern -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_191 of (ts_BindingElement, ts_BindingElement) union2 [@js 191] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242]] [@js.union on_field "kind"]), (ts_BindingElement, (ts_ParameterDeclaration, ts_VariableDeclaration) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2  | `U_n_191 of (ts_BindingElement, ts_BindingElement) union2  | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 ] [@js.union on_field "kind"]), (ts_BindingElement, (ts_ParameterDeclaration, ts_VariableDeclaration) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_elements: t -> ts_ArrayBindingElement ts_NodeArray [@@js.get "elements"]
      val set_elements: t -> ts_ArrayBindingElement ts_NodeArray -> unit [@@js.set "elements"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module BindingPattern : sig
      type t = ts_BindingPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ArrayBindingElement : sig
      type t = ts_ArrayBindingElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "FunctionLikeDeclarationBase"] FunctionLikeDeclarationBase : sig
      type t = ts_FunctionLikeDeclarationBase
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__functionLikeDeclarationBrand: t -> any [@@js.get "_functionLikeDeclarationBrand"]
      val set__functionLikeDeclarationBrand: t -> any -> unit [@@js.set "_functionLikeDeclarationBrand"]
      val get_asteriskToken: t -> ts_AsteriskToken [@@js.get "asteriskToken"]
      val set_asteriskToken: t -> ts_AsteriskToken -> unit [@@js.set "asteriskToken"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val get_exclamationToken: t -> ts_ExclamationToken [@@js.get "exclamationToken"]
      val set_exclamationToken: t -> ts_ExclamationToken -> unit [@@js.set "exclamationToken"]
      val get_body: t -> (([`U_n_223 of (ts_Block, ts_Block) union2 [@js 223]] [@js.union on_field "kind"]), (ts_Block, ts_Expression) or_) or_ [@@js.get "body"]
      val set_body: t -> (([`U_n_223 of (ts_Block, ts_Block) union2 ] [@js.union on_field "kind"]), (ts_Block, ts_Expression) or_) or_ -> unit [@@js.set "body"]
      val cast: t -> ts_SignatureDeclarationBase [@@js.cast]
    end
    module FunctionLikeDeclaration : sig
      type t = ts_FunctionLikeDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FunctionLike : sig
      type t = ts_FunctionLike
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "FunctionDeclaration"] FunctionDeclaration : sig
      type t = ts_FunctionDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_FunctionDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_FunctionDeclaration -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_body: t -> ts_FunctionBody [@@js.get "body"]
      val set_body: t -> ts_FunctionBody -> unit [@@js.set "body"]
      val cast: t -> ts_FunctionLikeDeclarationBase [@@js.cast]
      val cast': t -> ts_DeclarationStatement [@@js.cast]
    end
    module[@js.scope "MethodSignature"] MethodSignature : sig
      type t = ts_MethodSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_MethodSignature [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_MethodSignature -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ObjectTypeDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ObjectTypeDeclaration -> unit [@@js.set "parent"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val cast: t -> ts_SignatureDeclarationBase [@@js.cast]
      val cast': t -> ts_TypeElement [@@js.cast]
    end
    module[@js.scope "MethodDeclaration"] MethodDeclaration : sig
      type t = ts_MethodDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_MethodDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_MethodDeclaration -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3 [@js 214] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 [@js 245]] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_ObjectLiteralExpression) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2  | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3  | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 ] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_ObjectLiteralExpression) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_body: t -> ts_FunctionBody [@@js.get "body"]
      val set_body: t -> ts_FunctionBody -> unit [@@js.set "body"]
      val cast: t -> ts_FunctionLikeDeclarationBase [@@js.cast]
      val cast': t -> ts_ClassElement [@@js.cast]
      val cast'': t -> ts_ObjectLiteralElement [@@js.cast]
      val cast''': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ConstructorDeclaration"] ConstructorDeclaration : sig
      type t = ts_ConstructorDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_Constructor [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_Constructor -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ClassLikeDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ClassLikeDeclaration -> unit [@@js.set "parent"]
      val get_body: t -> ts_FunctionBody [@@js.get "body"]
      val set_body: t -> ts_FunctionBody -> unit [@@js.set "body"]
      val cast: t -> ts_FunctionLikeDeclarationBase [@@js.cast]
      val cast': t -> ts_ClassElement [@@js.cast]
      val cast'': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "SemicolonClassElement"] SemicolonClassElement : sig
      type t = ts_SemicolonClassElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_SemicolonClassElement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SemicolonClassElement -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ClassLikeDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ClassLikeDeclaration -> unit [@@js.set "parent"]
      val cast: t -> ts_ClassElement [@@js.cast]
    end
    module[@js.scope "GetAccessorDeclaration"] GetAccessorDeclaration : sig
      type t = ts_GetAccessorDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_GetAccessor [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_GetAccessor -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3 [@js 214] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 [@js 245]] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_ObjectLiteralExpression) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2  | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3  | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 ] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_ObjectLiteralExpression) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_body: t -> ts_FunctionBody [@@js.get "body"]
      val set_body: t -> ts_FunctionBody -> unit [@@js.set "body"]
      val cast: t -> ts_FunctionLikeDeclarationBase [@@js.cast]
      val cast': t -> ts_ClassElement [@@js.cast]
      val cast'': t -> ts_ObjectLiteralElement [@@js.cast]
      val cast''': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "SetAccessorDeclaration"] SetAccessorDeclaration : sig
      type t = ts_SetAccessorDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_SetAccessor [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SetAccessor -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193] | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3 [@js 214] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 [@js 245]] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_ObjectLiteralExpression) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2  | `U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3  | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 ] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_ObjectLiteralExpression) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_body: t -> ts_FunctionBody [@@js.get "body"]
      val set_body: t -> ts_FunctionBody -> unit [@@js.set "body"]
      val cast: t -> ts_FunctionLikeDeclarationBase [@@js.cast]
      val cast': t -> ts_ClassElement [@@js.cast]
      val cast'': t -> ts_ObjectLiteralElement [@@js.cast]
      val cast''': t -> ts_JSDocContainer [@@js.cast]
    end
    module AccessorDeclaration : sig
      type t = ts_AccessorDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IndexSignatureDeclaration"] IndexSignatureDeclaration : sig
      type t = ts_IndexSignatureDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_IndexSignature [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_IndexSignature -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ObjectTypeDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ObjectTypeDeclaration -> unit [@@js.set "parent"]
      val cast: t -> ts_SignatureDeclarationBase [@@js.cast]
      val cast': t -> ts_ClassElement [@@js.cast]
      val cast'': t -> ts_TypeElement [@@js.cast]
    end
    module[@js.scope "TypeNode"] TypeNode : sig
      type t = ts_TypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__typeNodeBrand: t -> any [@@js.get "_typeNodeBrand"]
      val set__typeNodeBrand: t -> any -> unit [@@js.set "_typeNodeBrand"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "KeywordTypeNode"] KeywordTypeNode : sig
      type t = ts_KeywordTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ((ts_SyntaxKind_AnyKeyword, (ts_SyntaxKind_BigIntKeyword, (ts_SyntaxKind_BooleanKeyword, (ts_SyntaxKind_NeverKeyword, (ts_SyntaxKind_NullKeyword, (ts_SyntaxKind_NumberKeyword, (ts_SyntaxKind_ObjectKeyword, (ts_SyntaxKind_StringKeyword, (ts_SyntaxKind_SymbolKeyword, (ts_SyntaxKind_ThisKeyword, (ts_SyntaxKind_UndefinedKeyword, (ts_SyntaxKind_UnknownKeyword, ts_SyntaxKind_VoidKeyword) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AnyKeyword[@js 125] | `BigIntKeyword[@js 151] | `BooleanKeyword[@js 128] | `NeverKeyword[@js 137] | `NullKeyword[@js 100] | `NumberKeyword[@js 140] | `ObjectKeyword[@js 141] | `StringKeyword[@js 143] | `SymbolKeyword[@js 144] | `ThisKeyword[@js 104] | `UndefinedKeyword[@js 146] | `UnknownKeyword[@js 148] | `VoidKeyword[@js 110]] [@js.enum])) or_enum [@@js.get "kind"]
      val set_kind: t -> ((ts_SyntaxKind_AnyKeyword, (ts_SyntaxKind_BigIntKeyword, (ts_SyntaxKind_BooleanKeyword, (ts_SyntaxKind_NeverKeyword, (ts_SyntaxKind_NullKeyword, (ts_SyntaxKind_NumberKeyword, (ts_SyntaxKind_ObjectKeyword, (ts_SyntaxKind_StringKeyword, (ts_SyntaxKind_SymbolKeyword, (ts_SyntaxKind_ThisKeyword, (ts_SyntaxKind_UndefinedKeyword, (ts_SyntaxKind_UnknownKeyword, ts_SyntaxKind_VoidKeyword) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AnyKeyword | `BigIntKeyword | `BooleanKeyword | `NeverKeyword | `NullKeyword | `NumberKeyword | `ObjectKeyword | `StringKeyword | `SymbolKeyword | `ThisKeyword | `UndefinedKeyword | `UnknownKeyword | `VoidKeyword] [@js.enum])) or_enum -> unit [@@js.set "kind"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "ImportTypeNode"] ImportTypeNode : sig
      type t = ts_ImportTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ImportType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ImportType -> unit [@@js.set "kind"]
      val get_isTypeOf: t -> bool [@@js.get "isTypeOf"]
      val set_isTypeOf: t -> bool -> unit [@@js.set "isTypeOf"]
      val get_argument: t -> ts_TypeNode [@@js.get "argument"]
      val set_argument: t -> ts_TypeNode -> unit [@@js.set "argument"]
      val get_qualifier: t -> ts_EntityName [@@js.get "qualifier"]
      val set_qualifier: t -> ts_EntityName -> unit [@@js.set "qualifier"]
      val cast: t -> ts_NodeWithTypeArguments [@@js.cast]
    end
    module[@js.scope "ThisTypeNode"] ThisTypeNode : sig
      type t = ts_ThisTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ThisType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ThisType -> unit [@@js.set "kind"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module FunctionOrConstructorTypeNode : sig
      type t = ts_FunctionOrConstructorTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "FunctionOrConstructorTypeNodeBase"] FunctionOrConstructorTypeNodeBase : sig
      type t = ts_FunctionOrConstructorTypeNodeBase
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ((ts_SyntaxKind_ConstructorType, ts_SyntaxKind_FunctionType) or_, ([`ConstructorType[@js 171] | `FunctionType[@js 170]] [@js.enum])) or_enum [@@js.get "kind"]
      val set_kind: t -> ((ts_SyntaxKind_ConstructorType, ts_SyntaxKind_FunctionType) or_, ([`ConstructorType | `FunctionType] [@js.enum])) or_enum -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
      val cast': t -> ts_SignatureDeclarationBase [@@js.cast]
    end
    module[@js.scope "FunctionTypeNode"] FunctionTypeNode : sig
      type t = ts_FunctionTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_FunctionType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_FunctionType -> unit [@@js.set "kind"]
      val cast: t -> ts_FunctionOrConstructorTypeNodeBase [@@js.cast]
    end
    module[@js.scope "ConstructorTypeNode"] ConstructorTypeNode : sig
      type t = ts_ConstructorTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ConstructorType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ConstructorType -> unit [@@js.set "kind"]
      val cast: t -> ts_FunctionOrConstructorTypeNodeBase [@@js.cast]
    end
    module[@js.scope "NodeWithTypeArguments"] NodeWithTypeArguments : sig
      type t = ts_NodeWithTypeArguments
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_typeArguments: t -> ts_TypeNode ts_NodeArray [@@js.get "typeArguments"]
      val set_typeArguments: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "typeArguments"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module TypeReferenceType : sig
      type t = ts_TypeReferenceType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "TypeReferenceNode"] TypeReferenceNode : sig
      type t = ts_TypeReferenceNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeReference [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeReference -> unit [@@js.set "kind"]
      val get_typeName: t -> ts_EntityName [@@js.get "typeName"]
      val set_typeName: t -> ts_EntityName -> unit [@@js.set "typeName"]
      val cast: t -> ts_NodeWithTypeArguments [@@js.cast]
    end
    module[@js.scope "TypePredicateNode"] TypePredicateNode : sig
      type t = ts_TypePredicateNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypePredicate [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypePredicate -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union3 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union3 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union3 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union4 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union4 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union3 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union3 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union3 [@js 167] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union3 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union3 [@js 171] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union3 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union3 [@js 202] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union3 [@js 244] | `U_n_294 of (ts_JSDocTypeExpression, ts_JSDocTypeExpression) union2 [@js 294] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union3 [@js 300]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_JSDocFunctionType, (ts_JSDocTypeExpression, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, ts_SignatureDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union3  | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union3  | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union3  | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union4  | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union4  | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union3  | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union3  | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union3  | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union3  | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union3  | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union3  | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union3  | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union3  | `U_n_294 of (ts_JSDocTypeExpression, ts_JSDocTypeExpression) union2  | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union3 ] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_JSDocFunctionType, (ts_JSDocTypeExpression, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, ts_SignatureDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_assertsModifier: t -> ts_AssertsToken [@@js.get "assertsModifier"]
      val set_assertsModifier: t -> ts_AssertsToken -> unit [@@js.set "assertsModifier"]
      val get_parameterName: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_183 of (ts_ThisTypeNode, ts_ThisTypeNode) union2 [@js 183]] [@js.union on_field "kind"]), (ts_Identifier, ts_ThisTypeNode) or_) or_ [@@js.get "parameterName"]
      val set_parameterName: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_183 of (ts_ThisTypeNode, ts_ThisTypeNode) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_ThisTypeNode) or_) or_ -> unit [@@js.set "parameterName"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "TypeQueryNode"] TypeQueryNode : sig
      type t = ts_TypeQueryNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeQuery [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeQuery -> unit [@@js.set "kind"]
      val get_exprName: t -> ts_EntityName [@@js.get "exprName"]
      val set_exprName: t -> ts_EntityName -> unit [@@js.set "exprName"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "TypeLiteralNode"] TypeLiteralNode : sig
      type t = ts_TypeLiteralNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeLiteral [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeLiteral -> unit [@@js.set "kind"]
      val get_members: t -> ts_TypeElement ts_NodeArray [@@js.get "members"]
      val set_members: t -> ts_TypeElement ts_NodeArray -> unit [@@js.set "members"]
      val cast: t -> ts_TypeNode [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "ArrayTypeNode"] ArrayTypeNode : sig
      type t = ts_ArrayTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ArrayType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ArrayType -> unit [@@js.set "kind"]
      val get_elementType: t -> ts_TypeNode [@@js.get "elementType"]
      val set_elementType: t -> ts_TypeNode -> unit [@@js.set "elementType"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "TupleTypeNode"] TupleTypeNode : sig
      type t = ts_TupleTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TupleType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TupleType -> unit [@@js.set "kind"]
      val get_elementTypes: t -> ts_TypeNode ts_NodeArray [@@js.get "elementTypes"]
      val set_elementTypes: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "elementTypes"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "OptionalTypeNode"] OptionalTypeNode : sig
      type t = ts_OptionalTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_OptionalType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_OptionalType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "RestTypeNode"] RestTypeNode : sig
      type t = ts_RestTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_RestType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_RestType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module UnionOrIntersectionTypeNode : sig
      type t = ts_UnionOrIntersectionTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "UnionTypeNode"] UnionTypeNode : sig
      type t = ts_UnionTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_UnionType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_UnionType -> unit [@@js.set "kind"]
      val get_types: t -> ts_TypeNode ts_NodeArray [@@js.get "types"]
      val set_types: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "types"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "IntersectionTypeNode"] IntersectionTypeNode : sig
      type t = ts_IntersectionTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_IntersectionType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_IntersectionType -> unit [@@js.set "kind"]
      val get_types: t -> ts_TypeNode ts_NodeArray [@@js.get "types"]
      val set_types: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "types"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "ConditionalTypeNode"] ConditionalTypeNode : sig
      type t = ts_ConditionalTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ConditionalType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ConditionalType -> unit [@@js.set "kind"]
      val get_checkType: t -> ts_TypeNode [@@js.get "checkType"]
      val set_checkType: t -> ts_TypeNode -> unit [@@js.set "checkType"]
      val get_extendsType: t -> ts_TypeNode [@@js.get "extendsType"]
      val set_extendsType: t -> ts_TypeNode -> unit [@@js.set "extendsType"]
      val get_trueType: t -> ts_TypeNode [@@js.get "trueType"]
      val set_trueType: t -> ts_TypeNode -> unit [@@js.set "trueType"]
      val get_falseType: t -> ts_TypeNode [@@js.get "falseType"]
      val set_falseType: t -> ts_TypeNode -> unit [@@js.set "falseType"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "InferTypeNode"] InferTypeNode : sig
      type t = ts_InferTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_InferType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_InferType -> unit [@@js.set "kind"]
      val get_typeParameter: t -> ts_TypeParameterDeclaration [@@js.get "typeParameter"]
      val set_typeParameter: t -> ts_TypeParameterDeclaration -> unit [@@js.set "typeParameter"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "ParenthesizedTypeNode"] ParenthesizedTypeNode : sig
      type t = ts_ParenthesizedTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ParenthesizedType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ParenthesizedType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "TypeOperatorNode"] TypeOperatorNode : sig
      type t = ts_TypeOperatorNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeOperator [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeOperator -> unit [@@js.set "kind"]
      val get_operator: t -> ((ts_SyntaxKind_KeyOfKeyword, (ts_SyntaxKind_ReadonlyKeyword, ts_SyntaxKind_UniqueKeyword) or_) or_, ([`KeyOfKeyword[@js 134] | `ReadonlyKeyword[@js 138] | `UniqueKeyword[@js 147]] [@js.enum])) or_enum [@@js.get "operator"]
      val set_operator: t -> ((ts_SyntaxKind_KeyOfKeyword, (ts_SyntaxKind_ReadonlyKeyword, ts_SyntaxKind_UniqueKeyword) or_) or_, ([`KeyOfKeyword | `ReadonlyKeyword | `UniqueKeyword] [@js.enum])) or_enum -> unit [@@js.set "operator"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "IndexedAccessTypeNode"] IndexedAccessTypeNode : sig
      type t = ts_IndexedAccessTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_IndexedAccessType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_IndexedAccessType -> unit [@@js.set "kind"]
      val get_objectType: t -> ts_TypeNode [@@js.get "objectType"]
      val set_objectType: t -> ts_TypeNode -> unit [@@js.set "objectType"]
      val get_indexType: t -> ts_TypeNode [@@js.get "indexType"]
      val set_indexType: t -> ts_TypeNode -> unit [@@js.set "indexType"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "MappedTypeNode"] MappedTypeNode : sig
      type t = ts_MappedTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_MappedType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_MappedType -> unit [@@js.set "kind"]
      val get_readonlyToken: t -> (([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3 [@js 39] | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3 [@js 40] | `U_n_138 of (ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token) union3 [@js 138]] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_ReadonlyToken, (ts_SyntaxKind_ReadonlyKeyword ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ [@@js.get "readonlyToken"]
      val set_readonlyToken: t -> (([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3  | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3  | `U_n_138 of (ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token) union3 ] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_ReadonlyToken, (ts_SyntaxKind_ReadonlyKeyword ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "readonlyToken"]
      val get_typeParameter: t -> ts_TypeParameterDeclaration [@@js.get "typeParameter"]
      val set_typeParameter: t -> ts_TypeParameterDeclaration -> unit [@@js.set "typeParameter"]
      val get_questionToken: t -> (([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3 [@js 39] | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3 [@js 40] | `U_n_57 of (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token) union3 [@js 57]] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_QuestionToken, (ts_SyntaxKind_QuestionToken ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ [@@js.get "questionToken"]
      val set_questionToken: t -> (([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3  | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3  | `U_n_57 of (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token) union3 ] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_QuestionToken, (ts_SyntaxKind_QuestionToken ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "questionToken"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "LiteralTypeNode"] LiteralTypeNode : sig
      type t = ts_LiteralTypeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_LiteralType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_LiteralType -> unit [@@js.set "kind"]
      val get_literal: t -> (([`U_n_207 of (ts_PrefixUnaryExpression, ts_PrefixUnaryExpression) union2 [@js 207]] [@js.union on_field "kind"]), (ts_BooleanLiteral, (ts_LiteralExpression, ts_PrefixUnaryExpression) or_) or_) or_ [@@js.get "literal"]
      val set_literal: t -> (([`U_n_207 of (ts_PrefixUnaryExpression, ts_PrefixUnaryExpression) union2 ] [@js.union on_field "kind"]), (ts_BooleanLiteral, (ts_LiteralExpression, ts_PrefixUnaryExpression) or_) or_) or_ -> unit [@@js.set "literal"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "StringLiteral"] StringLiteral : sig
      type t = ts_StringLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_StringLiteral [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_StringLiteral -> unit [@@js.set "kind"]
      val cast: t -> ts_LiteralExpression [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module StringLiteralLike : sig
      type t = ts_StringLiteralLike
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Expression"] Expression : sig
      type t = ts_Expression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__expressionBrand: t -> any [@@js.get "_expressionBrand"]
      val set__expressionBrand: t -> any -> unit [@@js.set "_expressionBrand"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "OmittedExpression"] OmittedExpression : sig
      type t = ts_OmittedExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_OmittedExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_OmittedExpression -> unit [@@js.set "kind"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "PartiallyEmittedExpression"] PartiallyEmittedExpression : sig
      type t = ts_PartiallyEmittedExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_PartiallyEmittedExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PartiallyEmittedExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_LeftHandSideExpression [@@js.cast]
    end
    module[@js.scope "UnaryExpression"] UnaryExpression : sig
      type t = ts_UnaryExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__unaryExpressionBrand: t -> any [@@js.get "_unaryExpressionBrand"]
      val set__unaryExpressionBrand: t -> any -> unit [@@js.set "_unaryExpressionBrand"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module IncrementExpression : sig
      type t = ts_IncrementExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "UpdateExpression"] UpdateExpression : sig
      type t = ts_UpdateExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__updateExpressionBrand: t -> any [@@js.get "_updateExpressionBrand"]
      val set__updateExpressionBrand: t -> any -> unit [@@js.set "_updateExpressionBrand"]
      val cast: t -> ts_UnaryExpression [@@js.cast]
    end
    module PrefixUnaryOperator : sig
      type t = ts_PrefixUnaryOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "PrefixUnaryExpression"] PrefixUnaryExpression : sig
      type t = ts_PrefixUnaryExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_PrefixUnaryExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PrefixUnaryExpression -> unit [@@js.set "kind"]
      val get_operator: t -> ts_PrefixUnaryOperator [@@js.get "operator"]
      val set_operator: t -> ts_PrefixUnaryOperator -> unit [@@js.set "operator"]
      val get_operand: t -> ts_UnaryExpression [@@js.get "operand"]
      val set_operand: t -> ts_UnaryExpression -> unit [@@js.set "operand"]
      val cast: t -> ts_UpdateExpression [@@js.cast]
    end
    module PostfixUnaryOperator : sig
      type t = ts_PostfixUnaryOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "PostfixUnaryExpression"] PostfixUnaryExpression : sig
      type t = ts_PostfixUnaryExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_PostfixUnaryExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PostfixUnaryExpression -> unit [@@js.set "kind"]
      val get_operand: t -> ts_LeftHandSideExpression [@@js.get "operand"]
      val set_operand: t -> ts_LeftHandSideExpression -> unit [@@js.set "operand"]
      val get_operator: t -> ts_PostfixUnaryOperator [@@js.get "operator"]
      val set_operator: t -> ts_PostfixUnaryOperator -> unit [@@js.set "operator"]
      val cast: t -> ts_UpdateExpression [@@js.cast]
    end
    module[@js.scope "LeftHandSideExpression"] LeftHandSideExpression : sig
      type t = ts_LeftHandSideExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__leftHandSideExpressionBrand: t -> any [@@js.get "_leftHandSideExpressionBrand"]
      val set__leftHandSideExpressionBrand: t -> any -> unit [@@js.set "_leftHandSideExpressionBrand"]
      val cast: t -> ts_UpdateExpression [@@js.cast]
    end
    module[@js.scope "MemberExpression"] MemberExpression : sig
      type t = ts_MemberExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__memberExpressionBrand: t -> any [@@js.get "_memberExpressionBrand"]
      val set__memberExpressionBrand: t -> any -> unit [@@js.set "_memberExpressionBrand"]
      val cast: t -> ts_LeftHandSideExpression [@@js.cast]
    end
    module[@js.scope "PrimaryExpression"] PrimaryExpression : sig
      type t = ts_PrimaryExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__primaryExpressionBrand: t -> any [@@js.get "_primaryExpressionBrand"]
      val set__primaryExpressionBrand: t -> any -> unit [@@js.set "_primaryExpressionBrand"]
      val cast: t -> ts_MemberExpression [@@js.cast]
    end
    module[@js.scope "NullLiteral"] NullLiteral : sig
      type t = ts_NullLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NullKeyword [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NullKeyword -> unit [@@js.set "kind"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
      val cast': t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "BooleanLiteral"] BooleanLiteral : sig
      type t = ts_BooleanLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ((ts_SyntaxKind_FalseKeyword, ts_SyntaxKind_TrueKeyword) or_, ([`FalseKeyword[@js 91] | `TrueKeyword[@js 106]] [@js.enum])) or_enum [@@js.get "kind"]
      val set_kind: t -> ((ts_SyntaxKind_FalseKeyword, ts_SyntaxKind_TrueKeyword) or_, ([`FalseKeyword | `TrueKeyword] [@js.enum])) or_enum -> unit [@@js.set "kind"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
      val cast': t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "ThisExpression"] ThisExpression : sig
      type t = ts_ThisExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ThisKeyword [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ThisKeyword -> unit [@@js.set "kind"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
      val cast': t -> ts_KeywordTypeNode [@@js.cast]
    end
    module[@js.scope "SuperExpression"] SuperExpression : sig
      type t = ts_SuperExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_SuperKeyword [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SuperKeyword -> unit [@@js.set "kind"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "ImportExpression"] ImportExpression : sig
      type t = ts_ImportExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ImportKeyword [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ImportKeyword -> unit [@@js.set "kind"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "DeleteExpression"] DeleteExpression : sig
      type t = ts_DeleteExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_DeleteExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_DeleteExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_UnaryExpression [@@js.get "expression"]
      val set_expression: t -> ts_UnaryExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_UnaryExpression [@@js.cast]
    end
    module[@js.scope "TypeOfExpression"] TypeOfExpression : sig
      type t = ts_TypeOfExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeOfExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeOfExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_UnaryExpression [@@js.get "expression"]
      val set_expression: t -> ts_UnaryExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_UnaryExpression [@@js.cast]
    end
    module[@js.scope "VoidExpression"] VoidExpression : sig
      type t = ts_VoidExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_VoidExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_VoidExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_UnaryExpression [@@js.get "expression"]
      val set_expression: t -> ts_UnaryExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_UnaryExpression [@@js.cast]
    end
    module[@js.scope "AwaitExpression"] AwaitExpression : sig
      type t = ts_AwaitExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_AwaitExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_AwaitExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_UnaryExpression [@@js.get "expression"]
      val set_expression: t -> ts_UnaryExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_UnaryExpression [@@js.cast]
    end
    module[@js.scope "YieldExpression"] YieldExpression : sig
      type t = ts_YieldExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_YieldExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_YieldExpression -> unit [@@js.set "kind"]
      val get_asteriskToken: t -> ts_AsteriskToken [@@js.get "asteriskToken"]
      val set_asteriskToken: t -> ts_AsteriskToken -> unit [@@js.set "asteriskToken"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "SyntheticExpression"] SyntheticExpression : sig
      type t = ts_SyntheticExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_SyntheticExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SyntheticExpression -> unit [@@js.set "kind"]
      val get_isSpread: t -> bool [@@js.get "isSpread"]
      val set_isSpread: t -> bool -> unit [@@js.set "isSpread"]
      val get_type: t -> ts_Type [@@js.get "type"]
      val set_type: t -> ts_Type -> unit [@@js.set "type"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module ExponentiationOperator : sig
      type t = ts_ExponentiationOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MultiplicativeOperator : sig
      type t = ts_MultiplicativeOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MultiplicativeOperatorOrHigher : sig
      type t = ts_MultiplicativeOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AdditiveOperator : sig
      type t = ts_AdditiveOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AdditiveOperatorOrHigher : sig
      type t = ts_AdditiveOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ShiftOperator : sig
      type t = ts_ShiftOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ShiftOperatorOrHigher : sig
      type t = ts_ShiftOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RelationalOperator : sig
      type t = ts_RelationalOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RelationalOperatorOrHigher : sig
      type t = ts_RelationalOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EqualityOperator : sig
      type t = ts_EqualityOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EqualityOperatorOrHigher : sig
      type t = ts_EqualityOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BitwiseOperator : sig
      type t = ts_BitwiseOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BitwiseOperatorOrHigher : sig
      type t = ts_BitwiseOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LogicalOperator : sig
      type t = ts_LogicalOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LogicalOperatorOrHigher : sig
      type t = ts_LogicalOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompoundAssignmentOperator : sig
      type t = ts_CompoundAssignmentOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AssignmentOperator : sig
      type t = ts_AssignmentOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AssignmentOperatorOrHigher : sig
      type t = ts_AssignmentOperatorOrHigher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BinaryOperator : sig
      type t = ts_BinaryOperator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BinaryOperatorToken : sig
      type t = ts_BinaryOperatorToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "BinaryExpression"] BinaryExpression : sig
      type t = ts_BinaryExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_BinaryExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_BinaryExpression -> unit [@@js.set "kind"]
      val get_left: t -> ts_Expression [@@js.get "left"]
      val set_left: t -> ts_Expression -> unit [@@js.set "left"]
      val get_operatorToken: t -> ts_BinaryOperatorToken [@@js.get "operatorToken"]
      val set_operatorToken: t -> ts_BinaryOperatorToken -> unit [@@js.set "operatorToken"]
      val get_right: t -> ts_Expression [@@js.get "right"]
      val set_right: t -> ts_Expression -> unit [@@js.set "right"]
      val cast: t -> ts_Expression [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module AssignmentOperatorToken : sig
      type t = ts_AssignmentOperatorToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "AssignmentExpression"] AssignmentExpression : sig
      type 'TOperator t = 'TOperator ts_AssignmentExpression
      val t_to_js: ('TOperator -> Ojs.t) -> 'TOperator t -> Ojs.t
      val t_of_js: (Ojs.t -> 'TOperator) -> Ojs.t -> 'TOperator t
      type 'TOperator t_1 = 'TOperator t
      val t_1_to_js: ('TOperator -> Ojs.t) -> 'TOperator t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'TOperator) -> Ojs.t -> 'TOperator t_1
      val get_left: 'TOperator t -> ts_LeftHandSideExpression [@@js.get "left"]
      val set_left: 'TOperator t -> ts_LeftHandSideExpression -> unit [@@js.set "left"]
      val get_operatorToken: 'TOperator t -> 'TOperator [@@js.get "operatorToken"]
      val set_operatorToken: 'TOperator t -> 'TOperator -> unit [@@js.set "operatorToken"]
      val cast: 'TOperator t -> ts_BinaryExpression [@@js.cast]
    end
    module[@js.scope "ObjectDestructuringAssignment"] ObjectDestructuringAssignment : sig
      type t = ts_ObjectDestructuringAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_left: t -> ts_ObjectLiteralExpression [@@js.get "left"]
      val set_left: t -> ts_ObjectLiteralExpression -> unit [@@js.set "left"]
      val cast: t -> ts_EqualsToken ts_AssignmentExpression [@@js.cast]
    end
    module[@js.scope "ArrayDestructuringAssignment"] ArrayDestructuringAssignment : sig
      type t = ts_ArrayDestructuringAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_left: t -> ts_ArrayLiteralExpression [@@js.get "left"]
      val set_left: t -> ts_ArrayLiteralExpression -> unit [@@js.set "left"]
      val cast: t -> ts_EqualsToken ts_AssignmentExpression [@@js.cast]
    end
    module DestructuringAssignment : sig
      type t = ts_DestructuringAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BindingOrAssignmentElement : sig
      type t = ts_BindingOrAssignmentElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BindingOrAssignmentElementRestIndicator : sig
      type t = ts_BindingOrAssignmentElementRestIndicator
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BindingOrAssignmentElementTarget : sig
      type t = ts_BindingOrAssignmentElementTarget
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ObjectBindingOrAssignmentPattern : sig
      type t = ts_ObjectBindingOrAssignmentPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ArrayBindingOrAssignmentPattern : sig
      type t = ts_ArrayBindingOrAssignmentPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AssignmentPattern : sig
      type t = ts_AssignmentPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module BindingOrAssignmentPattern : sig
      type t = ts_BindingOrAssignmentPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ConditionalExpression"] ConditionalExpression : sig
      type t = ts_ConditionalExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ConditionalExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ConditionalExpression -> unit [@@js.set "kind"]
      val get_condition: t -> ts_Expression [@@js.get "condition"]
      val set_condition: t -> ts_Expression -> unit [@@js.set "condition"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val get_whenTrue: t -> ts_Expression [@@js.get "whenTrue"]
      val set_whenTrue: t -> ts_Expression -> unit [@@js.set "whenTrue"]
      val get_colonToken: t -> ts_ColonToken [@@js.get "colonToken"]
      val set_colonToken: t -> ts_ColonToken -> unit [@@js.set "colonToken"]
      val get_whenFalse: t -> ts_Expression [@@js.get "whenFalse"]
      val set_whenFalse: t -> ts_Expression -> unit [@@js.set "whenFalse"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module FunctionBody : sig
      type t = ts_FunctionBody
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ConciseBody : sig
      type t = ts_ConciseBody
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "FunctionExpression"] FunctionExpression : sig
      type t = ts_FunctionExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_FunctionExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_FunctionExpression -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_body: t -> ts_FunctionBody [@@js.get "body"]
      val set_body: t -> ts_FunctionBody -> unit [@@js.set "body"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
      val cast': t -> ts_FunctionLikeDeclarationBase [@@js.cast]
      val cast'': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ArrowFunction"] ArrowFunction : sig
      type t = ts_ArrowFunction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ArrowFunction [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ArrowFunction -> unit [@@js.set "kind"]
      val get_equalsGreaterThanToken: t -> ts_EqualsGreaterThanToken [@@js.get "equalsGreaterThanToken"]
      val set_equalsGreaterThanToken: t -> ts_EqualsGreaterThanToken -> unit [@@js.set "equalsGreaterThanToken"]
      val get_body: t -> ts_ConciseBody [@@js.get "body"]
      val set_body: t -> ts_ConciseBody -> unit [@@js.set "body"]
      val get_name: t -> never [@@js.get "name"]
      val set_name: t -> never -> unit [@@js.set "name"]
      val cast: t -> ts_Expression [@@js.cast]
      val cast': t -> ts_FunctionLikeDeclarationBase [@@js.cast]
      val cast'': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "LiteralLikeNode"] LiteralLikeNode : sig
      type t = ts_LiteralLikeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_isUnterminated: t -> bool [@@js.get "isUnterminated"]
      val set_isUnterminated: t -> bool -> unit [@@js.set "isUnterminated"]
      val get_hasExtendedUnicodeEscape: t -> bool [@@js.get "hasExtendedUnicodeEscape"]
      val set_hasExtendedUnicodeEscape: t -> bool -> unit [@@js.set "hasExtendedUnicodeEscape"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "TemplateLiteralLikeNode"] TemplateLiteralLikeNode : sig
      type t = ts_TemplateLiteralLikeNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_rawText: t -> string [@@js.get "rawText"]
      val set_rawText: t -> string -> unit [@@js.set "rawText"]
      val cast: t -> ts_LiteralLikeNode [@@js.cast]
    end
    module[@js.scope "LiteralExpression"] LiteralExpression : sig
      type t = ts_LiteralExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__literalExpressionBrand: t -> any [@@js.get "_literalExpressionBrand"]
      val set__literalExpressionBrand: t -> any -> unit [@@js.set "_literalExpressionBrand"]
      val cast: t -> ts_LiteralLikeNode [@@js.cast]
      val cast': t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "RegularExpressionLiteral"] RegularExpressionLiteral : sig
      type t = ts_RegularExpressionLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_RegularExpressionLiteral [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_RegularExpressionLiteral -> unit [@@js.set "kind"]
      val cast: t -> ts_LiteralExpression [@@js.cast]
    end
    module[@js.scope "NoSubstitutionTemplateLiteral"] NoSubstitutionTemplateLiteral : sig
      type t = ts_NoSubstitutionTemplateLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NoSubstitutionTemplateLiteral [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NoSubstitutionTemplateLiteral -> unit [@@js.set "kind"]
      val cast: t -> ts_LiteralExpression [@@js.cast]
      val cast': t -> ts_TemplateLiteralLikeNode [@@js.cast]
      val cast'': t -> ts_Declaration [@@js.cast]
    end
    module TokenFlags : sig
      type t = ts_TokenFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "NumericLiteral"] NumericLiteral : sig
      type t = ts_NumericLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NumericLiteral [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NumericLiteral -> unit [@@js.set "kind"]
      val cast: t -> ts_LiteralExpression [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "BigIntLiteral"] BigIntLiteral : sig
      type t = ts_BigIntLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_BigIntLiteral [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_BigIntLiteral -> unit [@@js.set "kind"]
      val cast: t -> ts_LiteralExpression [@@js.cast]
    end
    module[@js.scope "TemplateHead"] TemplateHead : sig
      type t = ts_TemplateHead
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TemplateHead [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TemplateHead -> unit [@@js.set "kind"]
      val get_parent: t -> ts_TemplateExpression [@@js.get "parent"]
      val set_parent: t -> ts_TemplateExpression -> unit [@@js.set "parent"]
      val cast: t -> ts_TemplateLiteralLikeNode [@@js.cast]
    end
    module[@js.scope "TemplateMiddle"] TemplateMiddle : sig
      type t = ts_TemplateMiddle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TemplateMiddle [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TemplateMiddle -> unit [@@js.set "kind"]
      val get_parent: t -> ts_TemplateSpan [@@js.get "parent"]
      val set_parent: t -> ts_TemplateSpan -> unit [@@js.set "parent"]
      val cast: t -> ts_TemplateLiteralLikeNode [@@js.cast]
    end
    module[@js.scope "TemplateTail"] TemplateTail : sig
      type t = ts_TemplateTail
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TemplateTail [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TemplateTail -> unit [@@js.set "kind"]
      val get_parent: t -> ts_TemplateSpan [@@js.get "parent"]
      val set_parent: t -> ts_TemplateSpan -> unit [@@js.set "parent"]
      val cast: t -> ts_TemplateLiteralLikeNode [@@js.cast]
    end
    module TemplateLiteral : sig
      type t = ts_TemplateLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "TemplateExpression"] TemplateExpression : sig
      type t = ts_TemplateExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TemplateExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TemplateExpression -> unit [@@js.set "kind"]
      val get_head: t -> ts_TemplateHead [@@js.get "head"]
      val set_head: t -> ts_TemplateHead -> unit [@@js.set "head"]
      val get_templateSpans: t -> ts_TemplateSpan ts_NodeArray [@@js.get "templateSpans"]
      val set_templateSpans: t -> ts_TemplateSpan ts_NodeArray -> unit [@@js.set "templateSpans"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "TemplateSpan"] TemplateSpan : sig
      type t = ts_TemplateSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TemplateSpan [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TemplateSpan -> unit [@@js.set "kind"]
      val get_parent: t -> ts_TemplateExpression [@@js.get "parent"]
      val set_parent: t -> ts_TemplateExpression -> unit [@@js.set "parent"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val get_literal: t -> (([`U_n_16 of (ts_TemplateMiddle, ts_TemplateMiddle) union2 [@js 16] | `U_n_17 of (ts_TemplateTail, ts_TemplateTail) union2 [@js 17]] [@js.union on_field "kind"]), (ts_TemplateMiddle, ts_TemplateTail) or_) or_ [@@js.get "literal"]
      val set_literal: t -> (([`U_n_16 of (ts_TemplateMiddle, ts_TemplateMiddle) union2  | `U_n_17 of (ts_TemplateTail, ts_TemplateTail) union2 ] [@js.union on_field "kind"]), (ts_TemplateMiddle, ts_TemplateTail) or_) or_ -> unit [@@js.set "literal"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "ParenthesizedExpression"] ParenthesizedExpression : sig
      type t = ts_ParenthesizedExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ParenthesizedExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ParenthesizedExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ArrayLiteralExpression"] ArrayLiteralExpression : sig
      type t = ts_ArrayLiteralExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ArrayLiteralExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ArrayLiteralExpression -> unit [@@js.set "kind"]
      val get_elements: t -> ts_Expression ts_NodeArray [@@js.get "elements"]
      val set_elements: t -> ts_Expression ts_NodeArray -> unit [@@js.set "elements"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "SpreadElement"] SpreadElement : sig
      type t = ts_SpreadElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_SpreadElement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SpreadElement -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2 [@js 192] | `U_n_196 of (ts_CallExpression, ts_CallExpression) union2 [@js 196] | `U_n_197 of (ts_NewExpression, ts_NewExpression) union2 [@js 197]] [@js.union on_field "kind"]), (ts_ArrayLiteralExpression, (ts_CallExpression, ts_NewExpression) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2  | `U_n_196 of (ts_CallExpression, ts_CallExpression) union2  | `U_n_197 of (ts_NewExpression, ts_NewExpression) union2 ] [@js.union on_field "kind"]), (ts_ArrayLiteralExpression, (ts_CallExpression, ts_NewExpression) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "ObjectLiteralExpressionBase"] ObjectLiteralExpressionBase : sig
      type 'T t = 'T ts_ObjectLiteralExpressionBase
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_properties: 'T t -> 'T ts_NodeArray [@@js.get "properties"]
      val set_properties: 'T t -> 'T ts_NodeArray -> unit [@@js.set "properties"]
      val cast: 'T t -> ts_PrimaryExpression [@@js.cast]
      val cast': 'T t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "ObjectLiteralExpression"] ObjectLiteralExpression : sig
      type t = ts_ObjectLiteralExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ObjectLiteralExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ObjectLiteralExpression -> unit [@@js.set "kind"]
      val cast: t -> ts_ObjectLiteralElementLike ts_ObjectLiteralExpressionBase [@@js.cast]
    end
    module EntityNameExpression : sig
      type t = ts_EntityNameExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EntityNameOrEntityNameExpression : sig
      type t = ts_EntityNameOrEntityNameExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "PropertyAccessExpression"] PropertyAccessExpression : sig
      type t = ts_PropertyAccessExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_PropertyAccessExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PropertyAccessExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_LeftHandSideExpression [@@js.get "expression"]
      val set_expression: t -> ts_LeftHandSideExpression -> unit [@@js.set "expression"]
      val get_questionDotToken: t -> ts_QuestionDotToken [@@js.get "questionDotToken"]
      val set_questionDotToken: t -> ts_QuestionDotToken -> unit [@@js.set "questionDotToken"]
      val get_name: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 [@js 76]] [@js.union on_field "kind"]), (ts_Identifier, ts_PrivateIdentifier) or_) or_ [@@js.get "name"]
      val set_name: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_PrivateIdentifier) or_) or_ -> unit [@@js.set "name"]
      val cast: t -> ts_MemberExpression [@@js.cast]
      val cast': t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "PropertyAccessChain"] PropertyAccessChain : sig
      type t = ts_PropertyAccessChain
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__optionalChainBrand: t -> any [@@js.get "_optionalChainBrand"]
      val set__optionalChainBrand: t -> any -> unit [@@js.set "_optionalChainBrand"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_PropertyAccessExpression [@@js.cast]
    end
    module[@js.scope "SuperPropertyAccessExpression"] SuperPropertyAccessExpression : sig
      type t = ts_SuperPropertyAccessExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_expression: t -> ts_SuperExpression [@@js.get "expression"]
      val set_expression: t -> ts_SuperExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_PropertyAccessExpression [@@js.cast]
    end
    module[@js.scope "PropertyAccessEntityNameExpression"] PropertyAccessEntityNameExpression : sig
      type t = ts_PropertyAccessEntityNameExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__propertyAccessExpressionLikeQualifiedNameBrand: t -> any [@@js.get "_propertyAccessExpressionLikeQualifiedNameBrand"]
      val set__propertyAccessExpressionLikeQualifiedNameBrand: t -> any -> unit [@@js.set "_propertyAccessExpressionLikeQualifiedNameBrand"]
      val get_expression: t -> ts_EntityNameExpression [@@js.get "expression"]
      val set_expression: t -> ts_EntityNameExpression -> unit [@@js.set "expression"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_PropertyAccessExpression [@@js.cast]
    end
    module[@js.scope "ElementAccessExpression"] ElementAccessExpression : sig
      type t = ts_ElementAccessExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ElementAccessExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ElementAccessExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_LeftHandSideExpression [@@js.get "expression"]
      val set_expression: t -> ts_LeftHandSideExpression -> unit [@@js.set "expression"]
      val get_questionDotToken: t -> ts_QuestionDotToken [@@js.get "questionDotToken"]
      val set_questionDotToken: t -> ts_QuestionDotToken -> unit [@@js.set "questionDotToken"]
      val get_argumentExpression: t -> ts_Expression [@@js.get "argumentExpression"]
      val set_argumentExpression: t -> ts_Expression -> unit [@@js.set "argumentExpression"]
      val cast: t -> ts_MemberExpression [@@js.cast]
    end
    module[@js.scope "ElementAccessChain"] ElementAccessChain : sig
      type t = ts_ElementAccessChain
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__optionalChainBrand: t -> any [@@js.get "_optionalChainBrand"]
      val set__optionalChainBrand: t -> any -> unit [@@js.set "_optionalChainBrand"]
      val cast: t -> ts_ElementAccessExpression [@@js.cast]
    end
    module[@js.scope "SuperElementAccessExpression"] SuperElementAccessExpression : sig
      type t = ts_SuperElementAccessExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_expression: t -> ts_SuperExpression [@@js.get "expression"]
      val set_expression: t -> ts_SuperExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_ElementAccessExpression [@@js.cast]
    end
    module SuperProperty : sig
      type t = ts_SuperProperty
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "CallExpression"] CallExpression : sig
      type t = ts_CallExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_CallExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_CallExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_LeftHandSideExpression [@@js.get "expression"]
      val set_expression: t -> ts_LeftHandSideExpression -> unit [@@js.set "expression"]
      val get_questionDotToken: t -> ts_QuestionDotToken [@@js.get "questionDotToken"]
      val set_questionDotToken: t -> ts_QuestionDotToken -> unit [@@js.set "questionDotToken"]
      val get_typeArguments: t -> ts_TypeNode ts_NodeArray [@@js.get "typeArguments"]
      val set_typeArguments: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "typeArguments"]
      val get_arguments: t -> ts_Expression ts_NodeArray [@@js.get "arguments"]
      val set_arguments: t -> ts_Expression ts_NodeArray -> unit [@@js.set "arguments"]
      val cast: t -> ts_LeftHandSideExpression [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "CallChain"] CallChain : sig
      type t = ts_CallChain
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__optionalChainBrand: t -> any [@@js.get "_optionalChainBrand"]
      val set__optionalChainBrand: t -> any -> unit [@@js.set "_optionalChainBrand"]
      val cast: t -> ts_CallExpression [@@js.cast]
    end
    module OptionalChain : sig
      type t = ts_OptionalChain
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "SuperCall"] SuperCall : sig
      type t = ts_SuperCall
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_expression: t -> ts_SuperExpression [@@js.get "expression"]
      val set_expression: t -> ts_SuperExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_CallExpression [@@js.cast]
    end
    module[@js.scope "ImportCall"] ImportCall : sig
      type t = ts_ImportCall
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_expression: t -> ts_ImportExpression [@@js.get "expression"]
      val set_expression: t -> ts_ImportExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_CallExpression [@@js.cast]
    end
    module[@js.scope "ExpressionWithTypeArguments"] ExpressionWithTypeArguments : sig
      type t = ts_ExpressionWithTypeArguments
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ExpressionWithTypeArguments [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ExpressionWithTypeArguments -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_279 of (ts_HeritageClause, ts_HeritageClause) union2 [@js 279] | `U_n_307 of (ts_JSDocAugmentsTag, ts_JSDocAugmentsTag) union2 [@js 307]] [@js.union on_field "kind"]), (ts_HeritageClause, ts_JSDocAugmentsTag) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_279 of (ts_HeritageClause, ts_HeritageClause) union2  | `U_n_307 of (ts_JSDocAugmentsTag, ts_JSDocAugmentsTag) union2 ] [@js.union on_field "kind"]), (ts_HeritageClause, ts_JSDocAugmentsTag) or_) or_ -> unit [@@js.set "parent"]
      val get_expression: t -> ts_LeftHandSideExpression [@@js.get "expression"]
      val set_expression: t -> ts_LeftHandSideExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_NodeWithTypeArguments [@@js.cast]
    end
    module[@js.scope "NewExpression"] NewExpression : sig
      type t = ts_NewExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NewExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NewExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_LeftHandSideExpression [@@js.get "expression"]
      val set_expression: t -> ts_LeftHandSideExpression -> unit [@@js.set "expression"]
      val get_typeArguments: t -> ts_TypeNode ts_NodeArray [@@js.get "typeArguments"]
      val set_typeArguments: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "typeArguments"]
      val get_arguments: t -> ts_Expression ts_NodeArray [@@js.get "arguments"]
      val set_arguments: t -> ts_Expression ts_NodeArray -> unit [@@js.set "arguments"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "TaggedTemplateExpression"] TaggedTemplateExpression : sig
      type t = ts_TaggedTemplateExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TaggedTemplateExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TaggedTemplateExpression -> unit [@@js.set "kind"]
      val get_tag: t -> ts_LeftHandSideExpression [@@js.get "tag"]
      val set_tag: t -> ts_LeftHandSideExpression -> unit [@@js.set "tag"]
      val get_typeArguments: t -> ts_TypeNode ts_NodeArray [@@js.get "typeArguments"]
      val set_typeArguments: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "typeArguments"]
      val get_template: t -> ts_TemplateLiteral [@@js.get "template"]
      val set_template: t -> ts_TemplateLiteral -> unit [@@js.set "template"]
      val cast: t -> ts_MemberExpression [@@js.cast]
    end
    module CallLikeExpression : sig
      type t = ts_CallLikeExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "AsExpression"] AsExpression : sig
      type t = ts_AsExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_AsExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_AsExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "TypeAssertion"] TypeAssertion : sig
      type t = ts_TypeAssertion
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeAssertionExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeAssertionExpression -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val get_expression: t -> ts_UnaryExpression [@@js.get "expression"]
      val set_expression: t -> ts_UnaryExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_UnaryExpression [@@js.cast]
    end
    module AssertionExpression : sig
      type t = ts_AssertionExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "NonNullExpression"] NonNullExpression : sig
      type t = ts_NonNullExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NonNullExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NonNullExpression -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_LeftHandSideExpression [@@js.cast]
    end
    module[@js.scope "MetaProperty"] MetaProperty : sig
      type t = ts_MetaProperty
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_MetaProperty [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_MetaProperty -> unit [@@js.set "kind"]
      val get_keywordToken: t -> ((ts_SyntaxKind_ImportKeyword, ts_SyntaxKind_NewKeyword) or_, ([`ImportKeyword[@js 96] | `NewKeyword[@js 99]] [@js.enum])) or_enum [@@js.get "keywordToken"]
      val set_keywordToken: t -> ((ts_SyntaxKind_ImportKeyword, ts_SyntaxKind_NewKeyword) or_, ([`ImportKeyword | `NewKeyword] [@js.enum])) or_enum -> unit [@@js.set "keywordToken"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "JsxElement"] JsxElement : sig
      type t = ts_JsxElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxElement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxElement -> unit [@@js.set "kind"]
      val get_openingElement: t -> ts_JsxOpeningElement [@@js.get "openingElement"]
      val set_openingElement: t -> ts_JsxOpeningElement -> unit [@@js.set "openingElement"]
      val get_children: t -> ts_JsxChild ts_NodeArray [@@js.get "children"]
      val set_children: t -> ts_JsxChild ts_NodeArray -> unit [@@js.set "children"]
      val get_closingElement: t -> ts_JsxClosingElement [@@js.get "closingElement"]
      val set_closingElement: t -> ts_JsxClosingElement -> unit [@@js.set "closingElement"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module JsxOpeningLikeElement : sig
      type t = ts_JsxOpeningLikeElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module JsxAttributeLike : sig
      type t = ts_JsxAttributeLike
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module JsxTagNameExpression : sig
      type t = ts_JsxTagNameExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "JsxTagNamePropertyAccess"] JsxTagNamePropertyAccess : sig
      type t = ts_JsxTagNamePropertyAccess
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_expression: t -> ts_JsxTagNameExpression [@@js.get "expression"]
      val set_expression: t -> ts_JsxTagNameExpression -> unit [@@js.set "expression"]
      val cast: t -> ts_PropertyAccessExpression [@@js.cast]
    end
    module[@js.scope "JsxAttributes"] JsxAttributes : sig
      type t = ts_JsxAttributes
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxAttributes [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxAttributes -> unit [@@js.set "kind"]
      val get_parent: t -> ts_JsxOpeningLikeElement [@@js.get "parent"]
      val set_parent: t -> ts_JsxOpeningLikeElement -> unit [@@js.set "parent"]
      val cast: t -> ts_JsxAttributeLike ts_ObjectLiteralExpressionBase [@@js.cast]
    end
    module[@js.scope "JsxOpeningElement"] JsxOpeningElement : sig
      type t = ts_JsxOpeningElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxOpeningElement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxOpeningElement -> unit [@@js.set "kind"]
      val get_parent: t -> ts_JsxElement [@@js.get "parent"]
      val set_parent: t -> ts_JsxElement -> unit [@@js.set "parent"]
      val get_tagName: t -> ts_JsxTagNameExpression [@@js.get "tagName"]
      val set_tagName: t -> ts_JsxTagNameExpression -> unit [@@js.set "tagName"]
      val get_typeArguments: t -> ts_TypeNode ts_NodeArray [@@js.get "typeArguments"]
      val set_typeArguments: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "typeArguments"]
      val get_attributes: t -> ts_JsxAttributes [@@js.get "attributes"]
      val set_attributes: t -> ts_JsxAttributes -> unit [@@js.set "attributes"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "JsxSelfClosingElement"] JsxSelfClosingElement : sig
      type t = ts_JsxSelfClosingElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxSelfClosingElement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxSelfClosingElement -> unit [@@js.set "kind"]
      val get_tagName: t -> ts_JsxTagNameExpression [@@js.get "tagName"]
      val set_tagName: t -> ts_JsxTagNameExpression -> unit [@@js.set "tagName"]
      val get_typeArguments: t -> ts_TypeNode ts_NodeArray [@@js.get "typeArguments"]
      val set_typeArguments: t -> ts_TypeNode ts_NodeArray -> unit [@@js.set "typeArguments"]
      val get_attributes: t -> ts_JsxAttributes [@@js.get "attributes"]
      val set_attributes: t -> ts_JsxAttributes -> unit [@@js.set "attributes"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "JsxFragment"] JsxFragment : sig
      type t = ts_JsxFragment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxFragment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxFragment -> unit [@@js.set "kind"]
      val get_openingFragment: t -> ts_JsxOpeningFragment [@@js.get "openingFragment"]
      val set_openingFragment: t -> ts_JsxOpeningFragment -> unit [@@js.set "openingFragment"]
      val get_children: t -> ts_JsxChild ts_NodeArray [@@js.get "children"]
      val set_children: t -> ts_JsxChild ts_NodeArray -> unit [@@js.set "children"]
      val get_closingFragment: t -> ts_JsxClosingFragment [@@js.get "closingFragment"]
      val set_closingFragment: t -> ts_JsxClosingFragment -> unit [@@js.set "closingFragment"]
      val cast: t -> ts_PrimaryExpression [@@js.cast]
    end
    module[@js.scope "JsxOpeningFragment"] JsxOpeningFragment : sig
      type t = ts_JsxOpeningFragment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxOpeningFragment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxOpeningFragment -> unit [@@js.set "kind"]
      val get_parent: t -> ts_JsxFragment [@@js.get "parent"]
      val set_parent: t -> ts_JsxFragment -> unit [@@js.set "parent"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "JsxClosingFragment"] JsxClosingFragment : sig
      type t = ts_JsxClosingFragment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxClosingFragment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxClosingFragment -> unit [@@js.set "kind"]
      val get_parent: t -> ts_JsxFragment [@@js.get "parent"]
      val set_parent: t -> ts_JsxFragment -> unit [@@js.set "parent"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "JsxAttribute"] JsxAttribute : sig
      type t = ts_JsxAttribute
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxAttribute [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxAttribute -> unit [@@js.set "kind"]
      val get_parent: t -> ts_JsxAttributes [@@js.get "parent"]
      val set_parent: t -> ts_JsxAttributes -> unit [@@js.set "parent"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_initializer: t -> (([`U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2 [@js 10] | `U_n_276 of (ts_JsxExpression, ts_JsxExpression) union2 [@js 276]] [@js.union on_field "kind"]), (ts_JsxExpression, ts_StringLiteral) or_) or_ [@@js.get "initializer"]
      val set_initializer: t -> (([`U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2  | `U_n_276 of (ts_JsxExpression, ts_JsxExpression) union2 ] [@js.union on_field "kind"]), (ts_JsxExpression, ts_StringLiteral) or_) or_ -> unit [@@js.set "initializer"]
      val cast: t -> ts_ObjectLiteralElement [@@js.cast]
    end
    module[@js.scope "JsxSpreadAttribute"] JsxSpreadAttribute : sig
      type t = ts_JsxSpreadAttribute
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxSpreadAttribute [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxSpreadAttribute -> unit [@@js.set "kind"]
      val get_parent: t -> ts_JsxAttributes [@@js.get "parent"]
      val set_parent: t -> ts_JsxAttributes -> unit [@@js.set "parent"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_ObjectLiteralElement [@@js.cast]
    end
    module[@js.scope "JsxClosingElement"] JsxClosingElement : sig
      type t = ts_JsxClosingElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxClosingElement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxClosingElement -> unit [@@js.set "kind"]
      val get_parent: t -> ts_JsxElement [@@js.get "parent"]
      val set_parent: t -> ts_JsxElement -> unit [@@js.set "parent"]
      val get_tagName: t -> ts_JsxTagNameExpression [@@js.get "tagName"]
      val set_tagName: t -> ts_JsxTagNameExpression -> unit [@@js.set "tagName"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "JsxExpression"] JsxExpression : sig
      type t = ts_JsxExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxExpression -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_266 of (ts_JsxElement, ts_JsxElement) union2 [@js 266] | `U_n_273 of (ts_JsxAttribute, ts_JsxAttribute, ts_JsxAttribute) union3 [@js 273] | `U_n_275 of (ts_JsxSpreadAttribute, ts_JsxSpreadAttribute, ts_JsxSpreadAttribute) union3 [@js 275]] [@js.union on_field "kind"]), (ts_JsxAttribute, (ts_JsxAttributeLike, (ts_JsxElement, ts_JsxSpreadAttribute) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_266 of (ts_JsxElement, ts_JsxElement) union2  | `U_n_273 of (ts_JsxAttribute, ts_JsxAttribute, ts_JsxAttribute) union3  | `U_n_275 of (ts_JsxSpreadAttribute, ts_JsxSpreadAttribute, ts_JsxSpreadAttribute) union3 ] [@js.union on_field "kind"]), (ts_JsxAttribute, (ts_JsxAttributeLike, (ts_JsxElement, ts_JsxSpreadAttribute) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_dotDotDotToken: t -> ts_SyntaxKind_DotDotDotToken ts_Token [@@js.get "dotDotDotToken"]
      val set_dotDotDotToken: t -> ts_SyntaxKind_DotDotDotToken ts_Token -> unit [@@js.set "dotDotDotToken"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "JsxText"] JsxText : sig
      type t = ts_JsxText
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JsxText [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JsxText -> unit [@@js.set "kind"]
      val get_containsOnlyTriviaWhiteSpaces: t -> bool [@@js.get "containsOnlyTriviaWhiteSpaces"]
      val set_containsOnlyTriviaWhiteSpaces: t -> bool -> unit [@@js.set "containsOnlyTriviaWhiteSpaces"]
      val get_parent: t -> ts_JsxElement [@@js.get "parent"]
      val set_parent: t -> ts_JsxElement -> unit [@@js.set "parent"]
      val cast: t -> ts_LiteralLikeNode [@@js.cast]
    end
    module JsxChild : sig
      type t = ts_JsxChild
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Statement"] Statement : sig
      type t = ts_Statement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__statementBrand: t -> any [@@js.get "_statementBrand"]
      val set__statementBrand: t -> any -> unit [@@js.set "_statementBrand"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "NotEmittedStatement"] NotEmittedStatement : sig
      type t = ts_NotEmittedStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NotEmittedStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NotEmittedStatement -> unit [@@js.set "kind"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "CommaListExpression"] CommaListExpression : sig
      type t = ts_CommaListExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_CommaListExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_CommaListExpression -> unit [@@js.set "kind"]
      val get_elements: t -> ts_Expression ts_NodeArray [@@js.get "elements"]
      val set_elements: t -> ts_Expression ts_NodeArray -> unit [@@js.set "elements"]
      val cast: t -> ts_Expression [@@js.cast]
    end
    module[@js.scope "EmptyStatement"] EmptyStatement : sig
      type t = ts_EmptyStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_EmptyStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_EmptyStatement -> unit [@@js.set "kind"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "DebuggerStatement"] DebuggerStatement : sig
      type t = ts_DebuggerStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_DebuggerStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_DebuggerStatement -> unit [@@js.set "kind"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "MissingDeclaration"] MissingDeclaration : sig
      type t = ts_MissingDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_MissingDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_MissingDeclaration -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
    end
    module BlockLike : sig
      type t = ts_BlockLike
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Block"] Block : sig
      type t = ts_Block
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_Block [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_Block -> unit [@@js.set "kind"]
      val get_statements: t -> ts_Statement ts_NodeArray [@@js.get "statements"]
      val set_statements: t -> ts_Statement ts_NodeArray -> unit [@@js.set "statements"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "VariableStatement"] VariableStatement : sig
      type t = ts_VariableStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_VariableStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_VariableStatement -> unit [@@js.set "kind"]
      val get_declarationList: t -> ts_VariableDeclarationList [@@js.get "declarationList"]
      val set_declarationList: t -> ts_VariableDeclarationList -> unit [@@js.set "declarationList"]
      val cast: t -> ts_Statement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ExpressionStatement"] ExpressionStatement : sig
      type t = ts_ExpressionStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ExpressionStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ExpressionStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Statement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "IfStatement"] IfStatement : sig
      type t = ts_IfStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_IfStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_IfStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val get_thenStatement: t -> ts_Statement [@@js.get "thenStatement"]
      val set_thenStatement: t -> ts_Statement -> unit [@@js.set "thenStatement"]
      val get_elseStatement: t -> ts_Statement [@@js.get "elseStatement"]
      val set_elseStatement: t -> ts_Statement -> unit [@@js.set "elseStatement"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "IterationStatement"] IterationStatement : sig
      type t = ts_IterationStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_statement: t -> ts_Statement [@@js.get "statement"]
      val set_statement: t -> ts_Statement -> unit [@@js.set "statement"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "DoStatement"] DoStatement : sig
      type t = ts_DoStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_DoStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_DoStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_IterationStatement [@@js.cast]
    end
    module[@js.scope "WhileStatement"] WhileStatement : sig
      type t = ts_WhileStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_WhileStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_WhileStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_IterationStatement [@@js.cast]
    end
    module ForInitializer : sig
      type t = ts_ForInitializer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ForStatement"] ForStatement : sig
      type t = ts_ForStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ForStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ForStatement -> unit [@@js.set "kind"]
      val get_initializer: t -> ts_ForInitializer [@@js.get "initializer"]
      val set_initializer: t -> ts_ForInitializer -> unit [@@js.set "initializer"]
      val get_condition: t -> ts_Expression [@@js.get "condition"]
      val set_condition: t -> ts_Expression -> unit [@@js.set "condition"]
      val get_incrementor: t -> ts_Expression [@@js.get "incrementor"]
      val set_incrementor: t -> ts_Expression -> unit [@@js.set "incrementor"]
      val cast: t -> ts_IterationStatement [@@js.cast]
    end
    module ForInOrOfStatement : sig
      type t = ts_ForInOrOfStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ForInStatement"] ForInStatement : sig
      type t = ts_ForInStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ForInStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ForInStatement -> unit [@@js.set "kind"]
      val get_initializer: t -> ts_ForInitializer [@@js.get "initializer"]
      val set_initializer: t -> ts_ForInitializer -> unit [@@js.set "initializer"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_IterationStatement [@@js.cast]
    end
    module[@js.scope "ForOfStatement"] ForOfStatement : sig
      type t = ts_ForOfStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ForOfStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ForOfStatement -> unit [@@js.set "kind"]
      val get_awaitModifier: t -> ts_AwaitKeywordToken [@@js.get "awaitModifier"]
      val set_awaitModifier: t -> ts_AwaitKeywordToken -> unit [@@js.set "awaitModifier"]
      val get_initializer: t -> ts_ForInitializer [@@js.get "initializer"]
      val set_initializer: t -> ts_ForInitializer -> unit [@@js.set "initializer"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_IterationStatement [@@js.cast]
    end
    module[@js.scope "BreakStatement"] BreakStatement : sig
      type t = ts_BreakStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_BreakStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_BreakStatement -> unit [@@js.set "kind"]
      val get_label: t -> ts_Identifier [@@js.get "label"]
      val set_label: t -> ts_Identifier -> unit [@@js.set "label"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "ContinueStatement"] ContinueStatement : sig
      type t = ts_ContinueStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ContinueStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ContinueStatement -> unit [@@js.set "kind"]
      val get_label: t -> ts_Identifier [@@js.get "label"]
      val set_label: t -> ts_Identifier -> unit [@@js.set "label"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module BreakOrContinueStatement : sig
      type t = ts_BreakOrContinueStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ReturnStatement"] ReturnStatement : sig
      type t = ts_ReturnStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ReturnStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ReturnStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "WithStatement"] WithStatement : sig
      type t = ts_WithStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_WithStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_WithStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val get_statement: t -> ts_Statement [@@js.get "statement"]
      val set_statement: t -> ts_Statement -> unit [@@js.set "statement"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "SwitchStatement"] SwitchStatement : sig
      type t = ts_SwitchStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_SwitchStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SwitchStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val get_caseBlock: t -> ts_CaseBlock [@@js.get "caseBlock"]
      val set_caseBlock: t -> ts_CaseBlock -> unit [@@js.set "caseBlock"]
      val get_possiblyExhaustive: t -> bool [@@js.get "possiblyExhaustive"]
      val set_possiblyExhaustive: t -> bool -> unit [@@js.set "possiblyExhaustive"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "CaseBlock"] CaseBlock : sig
      type t = ts_CaseBlock
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_CaseBlock [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_CaseBlock -> unit [@@js.set "kind"]
      val get_parent: t -> ts_SwitchStatement [@@js.get "parent"]
      val set_parent: t -> ts_SwitchStatement -> unit [@@js.set "parent"]
      val get_clauses: t -> ts_CaseOrDefaultClause ts_NodeArray [@@js.get "clauses"]
      val set_clauses: t -> ts_CaseOrDefaultClause ts_NodeArray -> unit [@@js.set "clauses"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "CaseClause"] CaseClause : sig
      type t = ts_CaseClause
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_CaseClause [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_CaseClause -> unit [@@js.set "kind"]
      val get_parent: t -> ts_CaseBlock [@@js.get "parent"]
      val set_parent: t -> ts_CaseBlock -> unit [@@js.set "parent"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val get_statements: t -> ts_Statement ts_NodeArray [@@js.get "statements"]
      val set_statements: t -> ts_Statement ts_NodeArray -> unit [@@js.set "statements"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "DefaultClause"] DefaultClause : sig
      type t = ts_DefaultClause
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_DefaultClause [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_DefaultClause -> unit [@@js.set "kind"]
      val get_parent: t -> ts_CaseBlock [@@js.get "parent"]
      val set_parent: t -> ts_CaseBlock -> unit [@@js.set "parent"]
      val get_statements: t -> ts_Statement ts_NodeArray [@@js.get "statements"]
      val set_statements: t -> ts_Statement ts_NodeArray -> unit [@@js.set "statements"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module CaseOrDefaultClause : sig
      type t = ts_CaseOrDefaultClause
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "LabeledStatement"] LabeledStatement : sig
      type t = ts_LabeledStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_LabeledStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_LabeledStatement -> unit [@@js.set "kind"]
      val get_label: t -> ts_Identifier [@@js.get "label"]
      val set_label: t -> ts_Identifier -> unit [@@js.set "label"]
      val get_statement: t -> ts_Statement [@@js.get "statement"]
      val set_statement: t -> ts_Statement -> unit [@@js.set "statement"]
      val cast: t -> ts_Statement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ThrowStatement"] ThrowStatement : sig
      type t = ts_ThrowStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ThrowStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ThrowStatement -> unit [@@js.set "kind"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "TryStatement"] TryStatement : sig
      type t = ts_TryStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TryStatement [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TryStatement -> unit [@@js.set "kind"]
      val get_tryBlock: t -> ts_Block [@@js.get "tryBlock"]
      val set_tryBlock: t -> ts_Block -> unit [@@js.set "tryBlock"]
      val get_catchClause: t -> ts_CatchClause [@@js.get "catchClause"]
      val set_catchClause: t -> ts_CatchClause -> unit [@@js.set "catchClause"]
      val get_finallyBlock: t -> ts_Block [@@js.get "finallyBlock"]
      val set_finallyBlock: t -> ts_Block -> unit [@@js.set "finallyBlock"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module[@js.scope "CatchClause"] CatchClause : sig
      type t = ts_CatchClause
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_CatchClause [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_CatchClause -> unit [@@js.set "kind"]
      val get_parent: t -> ts_TryStatement [@@js.get "parent"]
      val set_parent: t -> ts_TryStatement -> unit [@@js.set "parent"]
      val get_variableDeclaration: t -> ts_VariableDeclaration [@@js.get "variableDeclaration"]
      val set_variableDeclaration: t -> ts_VariableDeclaration -> unit [@@js.set "variableDeclaration"]
      val get_block: t -> ts_Block [@@js.get "block"]
      val set_block: t -> ts_Block -> unit [@@js.set "block"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module ObjectTypeDeclaration : sig
      type t = ts_ObjectTypeDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeclarationWithTypeParameters : sig
      type t = ts_DeclarationWithTypeParameters
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeclarationWithTypeParameterChildren : sig
      type t = ts_DeclarationWithTypeParameterChildren
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ClassLikeDeclarationBase"] ClassLikeDeclarationBase : sig
      type t = ts_ClassLikeDeclarationBase
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ((ts_SyntaxKind_ClassDeclaration, ts_SyntaxKind_ClassExpression) or_, ([`ClassDeclaration[@js 245] | `ClassExpression[@js 214]] [@js.enum])) or_enum [@@js.get "kind"]
      val set_kind: t -> ((ts_SyntaxKind_ClassDeclaration, ts_SyntaxKind_ClassExpression) or_, ([`ClassDeclaration | `ClassExpression] [@js.enum])) or_enum -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray -> unit [@@js.set "typeParameters"]
      val get_heritageClauses: t -> ts_HeritageClause ts_NodeArray [@@js.get "heritageClauses"]
      val set_heritageClauses: t -> ts_HeritageClause ts_NodeArray -> unit [@@js.set "heritageClauses"]
      val get_members: t -> ts_ClassElement ts_NodeArray [@@js.get "members"]
      val set_members: t -> ts_ClassElement ts_NodeArray -> unit [@@js.set "members"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ClassDeclaration"] ClassDeclaration : sig
      type t = ts_ClassDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ClassDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ClassDeclaration -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_ClassLikeDeclarationBase [@@js.cast]
      val cast': t -> ts_DeclarationStatement [@@js.cast]
    end
    module[@js.scope "ClassExpression"] ClassExpression : sig
      type t = ts_ClassExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ClassExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ClassExpression -> unit [@@js.set "kind"]
      val cast: t -> ts_ClassLikeDeclarationBase [@@js.cast]
      val cast': t -> ts_PrimaryExpression [@@js.cast]
    end
    module ClassLikeDeclaration : sig
      type t = ts_ClassLikeDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ClassElement"] ClassElement : sig
      type t = ts_ClassElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__classElementBrand: t -> any [@@js.get "_classElementBrand"]
      val set__classElementBrand: t -> any -> unit [@@js.set "_classElementBrand"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "TypeElement"] TypeElement : sig
      type t = ts_TypeElement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__typeElementBrand: t -> any [@@js.get "_typeElementBrand"]
      val set__typeElementBrand: t -> any -> unit [@@js.set "_typeElementBrand"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_questionToken: t -> ts_QuestionToken [@@js.get "questionToken"]
      val set_questionToken: t -> ts_QuestionToken -> unit [@@js.set "questionToken"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "InterfaceDeclaration"] InterfaceDeclaration : sig
      type t = ts_InterfaceDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_InterfaceDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_InterfaceDeclaration -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray -> unit [@@js.set "typeParameters"]
      val get_heritageClauses: t -> ts_HeritageClause ts_NodeArray [@@js.get "heritageClauses"]
      val set_heritageClauses: t -> ts_HeritageClause ts_NodeArray -> unit [@@js.set "heritageClauses"]
      val get_members: t -> ts_TypeElement ts_NodeArray [@@js.get "members"]
      val set_members: t -> ts_TypeElement ts_NodeArray -> unit [@@js.set "members"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "HeritageClause"] HeritageClause : sig
      type t = ts_HeritageClause
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_HeritageClause [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_HeritageClause -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3 [@js 214] | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3 [@js 245] | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration) union2 [@js 246]] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_InterfaceDeclaration) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_214 of (ts_ClassExpression, ts_ClassExpression, ts_ClassExpression) union3  | `U_n_245 of (ts_ClassDeclaration, ts_ClassDeclaration, ts_ClassDeclaration) union3  | `U_n_246 of (ts_InterfaceDeclaration, ts_InterfaceDeclaration) union2 ] [@js.union on_field "kind"]), (ts_ClassDeclaration, (ts_ClassExpression, (ts_ClassLikeDeclaration, ts_InterfaceDeclaration) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_token: t -> ((ts_SyntaxKind_ExtendsKeyword, ts_SyntaxKind_ImplementsKeyword) or_, ([`ExtendsKeyword[@js 90] | `ImplementsKeyword[@js 113]] [@js.enum])) or_enum [@@js.get "token"]
      val set_token: t -> ((ts_SyntaxKind_ExtendsKeyword, ts_SyntaxKind_ImplementsKeyword) or_, ([`ExtendsKeyword | `ImplementsKeyword] [@js.enum])) or_enum -> unit [@@js.set "token"]
      val get_types: t -> ts_ExpressionWithTypeArguments ts_NodeArray [@@js.get "types"]
      val set_types: t -> ts_ExpressionWithTypeArguments ts_NodeArray -> unit [@@js.set "types"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "TypeAliasDeclaration"] TypeAliasDeclaration : sig
      type t = ts_TypeAliasDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_TypeAliasDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_TypeAliasDeclaration -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray -> unit [@@js.set "typeParameters"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "EnumMember"] EnumMember : sig
      type t = ts_EnumMember
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_EnumMember [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_EnumMember -> unit [@@js.set "kind"]
      val get_parent: t -> ts_EnumDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_EnumDeclaration -> unit [@@js.set "parent"]
      val get_name: t -> ts_PropertyName [@@js.get "name"]
      val set_name: t -> ts_PropertyName -> unit [@@js.set "name"]
      val get_initializer: t -> ts_Expression [@@js.get "initializer"]
      val set_initializer: t -> ts_Expression -> unit [@@js.set "initializer"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "EnumDeclaration"] EnumDeclaration : sig
      type t = ts_EnumDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_EnumDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_EnumDeclaration -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_members: t -> ts_EnumMember ts_NodeArray [@@js.get "members"]
      val set_members: t -> ts_EnumMember ts_NodeArray -> unit [@@js.set "members"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module ModuleName : sig
      type t = ts_ModuleName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ModuleBody : sig
      type t = ts_ModuleBody
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ModuleDeclaration"] ModuleDeclaration : sig
      type t = ts_ModuleDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ModuleDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ModuleDeclaration -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier) union4 [@js 75] | `U_n_249 of (ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_NamespaceDeclaration) union8 [@js 249] | `U_n_250 of (ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock) union4 [@js 250] | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 [@js 290]] [@js.union on_field "kind"]), (ts_Identifier, (ts_JSDocNamespaceBody, (ts_JSDocNamespaceDeclaration, (ts_ModuleBlock, (ts_ModuleBody, (ts_NamespaceBody, (ts_NamespaceDeclaration, ts_SourceFile) or_) or_) or_) or_) or_) or_) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier) union4  | `U_n_249 of (ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_NamespaceDeclaration) union8  | `U_n_250 of (ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock) union4  | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 ] [@js.union on_field "kind"]), (ts_Identifier, (ts_JSDocNamespaceBody, (ts_JSDocNamespaceDeclaration, (ts_ModuleBlock, (ts_ModuleBody, (ts_NamespaceBody, (ts_NamespaceDeclaration, ts_SourceFile) or_) or_) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "parent"]
      val get_name: t -> ts_ModuleName [@@js.get "name"]
      val set_name: t -> ts_ModuleName -> unit [@@js.set "name"]
      val get_body: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier) union4 [@js 75] | `U_n_249 of (((ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_NamespaceDeclaration) union8, ts_JSDocNamespaceDeclaration) or_, ts_JSDocNamespaceDeclaration) or_ [@js 249] | `U_n_250 of (ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock) union4 [@js 250]] [@js.union on_field "kind"]), (ts_Identifier, (ts_JSDocNamespaceBody, (ts_JSDocNamespaceDeclaration, (ts_JSDocNamespaceDeclaration, (ts_ModuleBlock, (ts_ModuleBody, (ts_NamespaceBody, ts_NamespaceDeclaration) or_) or_) or_) or_) or_) or_) or_) or_ [@@js.get "body"]
      val set_body: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier, ts_Identifier, ts_Identifier) union4  | `U_n_249 of (((ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_NamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration, ts_NamespaceDeclaration) union8, ts_JSDocNamespaceDeclaration) or_, ts_JSDocNamespaceDeclaration) or_  | `U_n_250 of (ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock, ts_ModuleBlock) union4 ] [@js.union on_field "kind"]), (ts_Identifier, (ts_JSDocNamespaceBody, (ts_JSDocNamespaceDeclaration, (ts_JSDocNamespaceDeclaration, (ts_ModuleBlock, (ts_ModuleBody, (ts_NamespaceBody, ts_NamespaceDeclaration) or_) or_) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "body"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module NamespaceBody : sig
      type t = ts_NamespaceBody
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "NamespaceDeclaration"] NamespaceDeclaration : sig
      type t = ts_NamespaceDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_body: t -> ts_NamespaceBody [@@js.get "body"]
      val set_body: t -> ts_NamespaceBody -> unit [@@js.set "body"]
      val cast: t -> ts_ModuleDeclaration [@@js.cast]
    end
    module JSDocNamespaceBody : sig
      type t = ts_JSDocNamespaceBody
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "JSDocNamespaceDeclaration"] JSDocNamespaceDeclaration : sig
      type t = ts_JSDocNamespaceDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_body: t -> ts_JSDocNamespaceBody [@@js.get "body"]
      val set_body: t -> ts_JSDocNamespaceBody -> unit [@@js.set "body"]
      val cast: t -> ts_ModuleDeclaration [@@js.cast]
    end
    module[@js.scope "ModuleBlock"] ModuleBlock : sig
      type t = ts_ModuleBlock
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ModuleBlock [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ModuleBlock -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ModuleDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ModuleDeclaration -> unit [@@js.set "parent"]
      val get_statements: t -> ts_Statement ts_NodeArray [@@js.get "statements"]
      val set_statements: t -> ts_Statement ts_NodeArray -> unit [@@js.set "statements"]
      val cast: t -> ts_Node [@@js.cast]
      val cast': t -> ts_Statement [@@js.cast]
    end
    module ModuleReference : sig
      type t = ts_ModuleReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ImportEqualsDeclaration"] ImportEqualsDeclaration : sig
      type t = ts_ImportEqualsDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ImportEqualsDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ImportEqualsDeclaration -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2 [@js 250] | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 [@js 290]] [@js.union on_field "kind"]), (ts_ModuleBlock, ts_SourceFile) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2  | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 ] [@js.union on_field "kind"]), (ts_ModuleBlock, ts_SourceFile) or_) or_ -> unit [@@js.set "parent"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_moduleReference: t -> ts_ModuleReference [@@js.get "moduleReference"]
      val set_moduleReference: t -> ts_ModuleReference -> unit [@@js.set "moduleReference"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "ExternalModuleReference"] ExternalModuleReference : sig
      type t = ts_ExternalModuleReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ExternalModuleReference [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ExternalModuleReference -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ImportEqualsDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ImportEqualsDeclaration -> unit [@@js.set "parent"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "ImportDeclaration"] ImportDeclaration : sig
      type t = ts_ImportDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ImportDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ImportDeclaration -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2 [@js 250] | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 [@js 290]] [@js.union on_field "kind"]), (ts_ModuleBlock, ts_SourceFile) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2  | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 ] [@js.union on_field "kind"]), (ts_ModuleBlock, ts_SourceFile) or_) or_ -> unit [@@js.set "parent"]
      val get_importClause: t -> ts_ImportClause [@@js.get "importClause"]
      val set_importClause: t -> ts_ImportClause -> unit [@@js.set "importClause"]
      val get_moduleSpecifier: t -> ts_Expression [@@js.get "moduleSpecifier"]
      val set_moduleSpecifier: t -> ts_Expression -> unit [@@js.set "moduleSpecifier"]
      val cast: t -> ts_Statement [@@js.cast]
    end
    module NamedImportBindings : sig
      type t = ts_NamedImportBindings
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NamedExportBindings : sig
      type t = ts_NamedExportBindings
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ImportClause"] ImportClause : sig
      type t = ts_ImportClause
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ImportClause [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ImportClause -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ImportDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ImportDeclaration -> unit [@@js.set "parent"]
      val get_isTypeOnly: t -> bool [@@js.get "isTypeOnly"]
      val set_isTypeOnly: t -> bool -> unit [@@js.set "isTypeOnly"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_namedBindings: t -> ts_NamedImportBindings [@@js.get "namedBindings"]
      val set_namedBindings: t -> ts_NamedImportBindings -> unit [@@js.set "namedBindings"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "NamespaceImport"] NamespaceImport : sig
      type t = ts_NamespaceImport
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NamespaceImport [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NamespaceImport -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ImportClause [@@js.get "parent"]
      val set_parent: t -> ts_ImportClause -> unit [@@js.set "parent"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "NamespaceExport"] NamespaceExport : sig
      type t = ts_NamespaceExport
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NamespaceExport [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NamespaceExport -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ExportDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ExportDeclaration -> unit [@@js.set "parent"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "NamespaceExportDeclaration"] NamespaceExportDeclaration : sig
      type t = ts_NamespaceExportDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NamespaceExportDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NamespaceExportDeclaration -> unit [@@js.set "kind"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
    end
    module[@js.scope "ExportDeclaration"] ExportDeclaration : sig
      type t = ts_ExportDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ExportDeclaration [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ExportDeclaration -> unit [@@js.set "kind"]
      val get_parent: t -> (([`U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2 [@js 250] | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 [@js 290]] [@js.union on_field "kind"]), (ts_ModuleBlock, ts_SourceFile) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_250 of (ts_ModuleBlock, ts_ModuleBlock) union2  | `U_n_290 of (ts_SourceFile, ts_SourceFile) union2 ] [@js.union on_field "kind"]), (ts_ModuleBlock, ts_SourceFile) or_) or_ -> unit [@@js.set "parent"]
      val get_isTypeOnly: t -> bool [@@js.get "isTypeOnly"]
      val set_isTypeOnly: t -> bool -> unit [@@js.set "isTypeOnly"]
      val get_exportClause: t -> ts_NamedExportBindings [@@js.get "exportClause"]
      val set_exportClause: t -> ts_NamedExportBindings -> unit [@@js.set "exportClause"]
      val get_moduleSpecifier: t -> ts_Expression [@@js.get "moduleSpecifier"]
      val set_moduleSpecifier: t -> ts_Expression -> unit [@@js.set "moduleSpecifier"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
      val cast': t -> ts_JSDocContainer [@@js.cast]
    end
    module[@js.scope "NamedImports"] NamedImports : sig
      type t = ts_NamedImports
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NamedImports [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NamedImports -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ImportClause [@@js.get "parent"]
      val set_parent: t -> ts_ImportClause -> unit [@@js.set "parent"]
      val get_elements: t -> ts_ImportSpecifier ts_NodeArray [@@js.get "elements"]
      val set_elements: t -> ts_ImportSpecifier ts_NodeArray -> unit [@@js.set "elements"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "NamedExports"] NamedExports : sig
      type t = ts_NamedExports
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_NamedExports [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_NamedExports -> unit [@@js.set "kind"]
      val get_parent: t -> ts_ExportDeclaration [@@js.get "parent"]
      val set_parent: t -> ts_ExportDeclaration -> unit [@@js.set "parent"]
      val get_elements: t -> ts_ExportSpecifier ts_NodeArray [@@js.get "elements"]
      val set_elements: t -> ts_ExportSpecifier ts_NodeArray -> unit [@@js.set "elements"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module NamedImportsOrExports : sig
      type t = ts_NamedImportsOrExports
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ImportSpecifier"] ImportSpecifier : sig
      type t = ts_ImportSpecifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ImportSpecifier [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ImportSpecifier -> unit [@@js.set "kind"]
      val get_parent: t -> ts_NamedImports [@@js.get "parent"]
      val set_parent: t -> ts_NamedImports -> unit [@@js.set "parent"]
      val get_propertyName: t -> ts_Identifier [@@js.get "propertyName"]
      val set_propertyName: t -> ts_Identifier -> unit [@@js.set "propertyName"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "ExportSpecifier"] ExportSpecifier : sig
      type t = ts_ExportSpecifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ExportSpecifier [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ExportSpecifier -> unit [@@js.set "kind"]
      val get_parent: t -> ts_NamedExports [@@js.get "parent"]
      val set_parent: t -> ts_NamedExports -> unit [@@js.set "parent"]
      val get_propertyName: t -> ts_Identifier [@@js.get "propertyName"]
      val set_propertyName: t -> ts_Identifier -> unit [@@js.set "propertyName"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val cast: t -> ts_NamedDeclaration [@@js.cast]
    end
    module ImportOrExportSpecifier : sig
      type t = ts_ImportOrExportSpecifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TypeOnlyCompatibleAliasDeclaration : sig
      type t = ts_TypeOnlyCompatibleAliasDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ExportAssignment"] ExportAssignment : sig
      type t = ts_ExportAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_ExportAssignment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_ExportAssignment -> unit [@@js.set "kind"]
      val get_parent: t -> ts_SourceFile [@@js.get "parent"]
      val set_parent: t -> ts_SourceFile -> unit [@@js.set "parent"]
      val get_isExportEquals: t -> bool [@@js.get "isExportEquals"]
      val set_isExportEquals: t -> bool -> unit [@@js.set "isExportEquals"]
      val get_expression: t -> ts_Expression [@@js.get "expression"]
      val set_expression: t -> ts_Expression -> unit [@@js.set "expression"]
      val cast: t -> ts_DeclarationStatement [@@js.cast]
    end
    module[@js.scope "FileReference"] FileReference : sig
      type t = ts_FileReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val cast: t -> ts_TextRange [@@js.cast]
    end
    module[@js.scope "CheckJsDirective"] CheckJsDirective : sig
      type t = ts_CheckJsDirective
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_enabled: t -> bool [@@js.get "enabled"]
      val set_enabled: t -> bool -> unit [@@js.set "enabled"]
      val cast: t -> ts_TextRange [@@js.cast]
    end
    module CommentKind : sig
      type t = ts_CommentKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "CommentRange"] CommentRange : sig
      type t = ts_CommentRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_hasTrailingNewLine: t -> bool [@@js.get "hasTrailingNewLine"]
      val set_hasTrailingNewLine: t -> bool -> unit [@@js.set "hasTrailingNewLine"]
      val get_kind: t -> ts_CommentKind [@@js.get "kind"]
      val set_kind: t -> ts_CommentKind -> unit [@@js.set "kind"]
      val cast: t -> ts_TextRange [@@js.cast]
    end
    module[@js.scope "SynthesizedComment"] SynthesizedComment : sig
      type t = ts_SynthesizedComment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_pos: t -> ([`L_n_minus1[@js -1]] [@js.enum]) [@@js.get "pos"]
      val set_pos: t -> ([`L_n_minus1] [@js.enum]) -> unit [@@js.set "pos"]
      val get_end: t -> ([`L_n_minus1[@js -1]] [@js.enum]) [@@js.get "end"]
      val set_end: t -> ([`L_n_minus1] [@js.enum]) -> unit [@@js.set "end"]
      val cast: t -> ts_CommentRange [@@js.cast]
    end
    module[@js.scope "JSDocTypeExpression"] JSDocTypeExpression : sig
      type t = ts_JSDocTypeExpression
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocTypeExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocTypeExpression -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "JSDocType"] JSDocType : sig
      type t = ts_JSDocType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__jsDocTypeBrand: t -> any [@@js.get "_jsDocTypeBrand"]
      val set__jsDocTypeBrand: t -> any -> unit [@@js.set "_jsDocTypeBrand"]
      val cast: t -> ts_TypeNode [@@js.cast]
    end
    module[@js.scope "JSDocAllType"] JSDocAllType : sig
      type t = ts_JSDocAllType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocAllType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocAllType -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module[@js.scope "JSDocUnknownType"] JSDocUnknownType : sig
      type t = ts_JSDocUnknownType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocUnknownType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocUnknownType -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module[@js.scope "JSDocNonNullableType"] JSDocNonNullableType : sig
      type t = ts_JSDocNonNullableType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocNonNullableType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocNonNullableType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module[@js.scope "JSDocNullableType"] JSDocNullableType : sig
      type t = ts_JSDocNullableType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocNullableType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocNullableType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module[@js.scope "JSDocOptionalType"] JSDocOptionalType : sig
      type t = ts_JSDocOptionalType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocOptionalType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocOptionalType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module[@js.scope "JSDocFunctionType"] JSDocFunctionType : sig
      type t = ts_JSDocFunctionType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocFunctionType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocFunctionType -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocType [@@js.cast]
      val cast': t -> ts_SignatureDeclarationBase [@@js.cast]
    end
    module[@js.scope "JSDocVariadicType"] JSDocVariadicType : sig
      type t = ts_JSDocVariadicType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocVariadicType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocVariadicType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module[@js.scope "JSDocNamepathType"] JSDocNamepathType : sig
      type t = ts_JSDocNamepathType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocNamepathType [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocNamepathType -> unit [@@js.set "kind"]
      val get_type: t -> ts_TypeNode [@@js.get "type"]
      val set_type: t -> ts_TypeNode -> unit [@@js.set "type"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module JSDocTypeReferencingNode : sig
      type t = ts_JSDocTypeReferencingNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "JSDoc"] JSDoc : sig
      type t = ts_JSDoc
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocComment [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocComment -> unit [@@js.set "kind"]
      val get_parent: t -> ts_HasJSDoc [@@js.get "parent"]
      val set_parent: t -> ts_HasJSDoc -> unit [@@js.set "parent"]
      val get_tags: t -> ts_JSDocTag ts_NodeArray [@@js.get "tags"]
      val set_tags: t -> ts_JSDocTag ts_NodeArray -> unit [@@js.set "tags"]
      val get_comment: t -> string [@@js.get "comment"]
      val set_comment: t -> string -> unit [@@js.set "comment"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "JSDocTag"] JSDocTag : sig
      type t = ts_JSDocTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> (([`U_n_303 of (ts_JSDoc, ts_JSDoc) union2 [@js 303] | `U_n_304 of (ts_JSDocTypeLiteral, ts_JSDocTypeLiteral) union2 [@js 304]] [@js.union on_field "kind"]), (ts_JSDoc, ts_JSDocTypeLiteral) or_) or_ [@@js.get "parent"]
      val set_parent: t -> (([`U_n_303 of (ts_JSDoc, ts_JSDoc) union2  | `U_n_304 of (ts_JSDocTypeLiteral, ts_JSDocTypeLiteral) union2 ] [@js.union on_field "kind"]), (ts_JSDoc, ts_JSDocTypeLiteral) or_) or_ -> unit [@@js.set "parent"]
      val get_tagName: t -> ts_Identifier [@@js.get "tagName"]
      val set_tagName: t -> ts_Identifier -> unit [@@js.set "tagName"]
      val get_comment: t -> string [@@js.get "comment"]
      val set_comment: t -> string -> unit [@@js.set "comment"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "JSDocUnknownTag"] JSDocUnknownTag : sig
      type t = ts_JSDocUnknownTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocAugmentsTag"] JSDocAugmentsTag : sig
      type t = ts_JSDocAugmentsTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocAugmentsTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocAugmentsTag -> unit [@@js.set "kind"]
      val get_class: t -> (ts_ExpressionWithTypeArguments, anonymous_interface_8) intersection2 [@@js.get "class"]
      val set_class: t -> (ts_ExpressionWithTypeArguments, anonymous_interface_8) intersection2 -> unit [@@js.set "class"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocAuthorTag"] JSDocAuthorTag : sig
      type t = ts_JSDocAuthorTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocAuthorTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocAuthorTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocClassTag"] JSDocClassTag : sig
      type t = ts_JSDocClassTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocClassTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocClassTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocPublicTag"] JSDocPublicTag : sig
      type t = ts_JSDocPublicTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocPublicTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocPublicTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocPrivateTag"] JSDocPrivateTag : sig
      type t = ts_JSDocPrivateTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocPrivateTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocPrivateTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocProtectedTag"] JSDocProtectedTag : sig
      type t = ts_JSDocProtectedTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocProtectedTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocProtectedTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocReadonlyTag"] JSDocReadonlyTag : sig
      type t = ts_JSDocReadonlyTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocReadonlyTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocReadonlyTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocEnumTag"] JSDocEnumTag : sig
      type t = ts_JSDocEnumTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_JSDoc [@@js.get "parent"]
      val set_parent: t -> ts_JSDoc -> unit [@@js.set "parent"]
      val get_kind: t -> ts_SyntaxKind_JSDocEnumTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocEnumTag -> unit [@@js.set "kind"]
      val get_typeExpression: t -> ts_JSDocTypeExpression [@@js.get "typeExpression"]
      val set_typeExpression: t -> ts_JSDocTypeExpression -> unit [@@js.set "typeExpression"]
      val cast: t -> ts_JSDocTag [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "JSDocThisTag"] JSDocThisTag : sig
      type t = ts_JSDocThisTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocThisTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocThisTag -> unit [@@js.set "kind"]
      val get_typeExpression: t -> ts_JSDocTypeExpression [@@js.get "typeExpression"]
      val set_typeExpression: t -> ts_JSDocTypeExpression -> unit [@@js.set "typeExpression"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocTemplateTag"] JSDocTemplateTag : sig
      type t = ts_JSDocTemplateTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocTemplateTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocTemplateTag -> unit [@@js.set "kind"]
      val get_constraint: t -> ts_JSDocTypeExpression or_undefined [@@js.get "constraint"]
      val set_constraint: t -> ts_JSDocTypeExpression or_undefined -> unit [@@js.set "constraint"]
      val get_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_TypeParameterDeclaration ts_NodeArray -> unit [@@js.set "typeParameters"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocReturnTag"] JSDocReturnTag : sig
      type t = ts_JSDocReturnTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocReturnTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocReturnTag -> unit [@@js.set "kind"]
      val get_typeExpression: t -> ts_JSDocTypeExpression [@@js.get "typeExpression"]
      val set_typeExpression: t -> ts_JSDocTypeExpression -> unit [@@js.set "typeExpression"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocTypeTag"] JSDocTypeTag : sig
      type t = ts_JSDocTypeTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocTypeTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocTypeTag -> unit [@@js.set "kind"]
      val get_typeExpression: t -> ts_JSDocTypeExpression [@@js.get "typeExpression"]
      val set_typeExpression: t -> ts_JSDocTypeExpression -> unit [@@js.set "typeExpression"]
      val cast: t -> ts_JSDocTag [@@js.cast]
    end
    module[@js.scope "JSDocTypedefTag"] JSDocTypedefTag : sig
      type t = ts_JSDocTypedefTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_JSDoc [@@js.get "parent"]
      val set_parent: t -> ts_JSDoc -> unit [@@js.set "parent"]
      val get_kind: t -> ts_SyntaxKind_JSDocTypedefTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocTypedefTag -> unit [@@js.set "kind"]
      val get_fullName: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_249 of (ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration) union2 [@js 249]] [@js.union on_field "kind"]), (ts_Identifier, ts_JSDocNamespaceDeclaration) or_) or_ [@@js.get "fullName"]
      val set_fullName: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_249 of (ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_JSDocNamespaceDeclaration) or_) or_ -> unit [@@js.set "fullName"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_typeExpression: t -> (([`U_n_294 of (ts_JSDocTypeExpression, ts_JSDocTypeExpression) union2 [@js 294] | `U_n_304 of (ts_JSDocTypeLiteral, ts_JSDocTypeLiteral) union2 [@js 304]] [@js.union on_field "kind"]), (ts_JSDocTypeExpression, ts_JSDocTypeLiteral) or_) or_ [@@js.get "typeExpression"]
      val set_typeExpression: t -> (([`U_n_294 of (ts_JSDocTypeExpression, ts_JSDocTypeExpression) union2  | `U_n_304 of (ts_JSDocTypeLiteral, ts_JSDocTypeLiteral) union2 ] [@js.union on_field "kind"]), (ts_JSDocTypeExpression, ts_JSDocTypeLiteral) or_) or_ -> unit [@@js.set "typeExpression"]
      val cast: t -> ts_JSDocTag [@@js.cast]
      val cast': t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "JSDocCallbackTag"] JSDocCallbackTag : sig
      type t = ts_JSDocCallbackTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_JSDoc [@@js.get "parent"]
      val set_parent: t -> ts_JSDoc -> unit [@@js.set "parent"]
      val get_kind: t -> ts_SyntaxKind_JSDocCallbackTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocCallbackTag -> unit [@@js.set "kind"]
      val get_fullName: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_249 of (ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration) union2 [@js 249]] [@js.union on_field "kind"]), (ts_Identifier, ts_JSDocNamespaceDeclaration) or_) or_ [@@js.get "fullName"]
      val set_fullName: t -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_249 of (ts_JSDocNamespaceDeclaration, ts_JSDocNamespaceDeclaration) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_JSDocNamespaceDeclaration) or_) or_ -> unit [@@js.set "fullName"]
      val get_name: t -> ts_Identifier [@@js.get "name"]
      val set_name: t -> ts_Identifier -> unit [@@js.set "name"]
      val get_typeExpression: t -> ts_JSDocSignature [@@js.get "typeExpression"]
      val set_typeExpression: t -> ts_JSDocSignature -> unit [@@js.set "typeExpression"]
      val cast: t -> ts_JSDocTag [@@js.cast]
      val cast': t -> ts_NamedDeclaration [@@js.cast]
    end
    module[@js.scope "JSDocSignature"] JSDocSignature : sig
      type t = ts_JSDocSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocSignature [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocSignature -> unit [@@js.set "kind"]
      val get_typeParameters: t -> ts_JSDocTemplateTag list [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_JSDocTemplateTag list -> unit [@@js.set "typeParameters"]
      val get_parameters: t -> ts_JSDocParameterTag list [@@js.get "parameters"]
      val set_parameters: t -> ts_JSDocParameterTag list -> unit [@@js.set "parameters"]
      val get_type: t -> ts_JSDocReturnTag or_undefined [@@js.get "type"]
      val set_type: t -> ts_JSDocReturnTag or_undefined -> unit [@@js.set "type"]
      val cast: t -> ts_JSDocType [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "JSDocPropertyLikeTag"] JSDocPropertyLikeTag : sig
      type t = ts_JSDocPropertyLikeTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_parent: t -> ts_JSDoc [@@js.get "parent"]
      val set_parent: t -> ts_JSDoc -> unit [@@js.set "parent"]
      val get_name: t -> ts_EntityName [@@js.get "name"]
      val set_name: t -> ts_EntityName -> unit [@@js.set "name"]
      val get_typeExpression: t -> ts_JSDocTypeExpression [@@js.get "typeExpression"]
      val set_typeExpression: t -> ts_JSDocTypeExpression -> unit [@@js.set "typeExpression"]
      val get_isNameFirst: t -> bool [@@js.get "isNameFirst"]
      val set_isNameFirst: t -> bool -> unit [@@js.set "isNameFirst"]
      val get_isBracketed: t -> bool [@@js.get "isBracketed"]
      val set_isBracketed: t -> bool -> unit [@@js.set "isBracketed"]
      val cast: t -> ts_JSDocTag [@@js.cast]
      val cast': t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "JSDocPropertyTag"] JSDocPropertyTag : sig
      type t = ts_JSDocPropertyTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocPropertyTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocPropertyTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocPropertyLikeTag [@@js.cast]
    end
    module[@js.scope "JSDocParameterTag"] JSDocParameterTag : sig
      type t = ts_JSDocParameterTag
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocParameterTag [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocParameterTag -> unit [@@js.set "kind"]
      val cast: t -> ts_JSDocPropertyLikeTag [@@js.cast]
    end
    module[@js.scope "JSDocTypeLiteral"] JSDocTypeLiteral : sig
      type t = ts_JSDocTypeLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_JSDocTypeLiteral [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_JSDocTypeLiteral -> unit [@@js.set "kind"]
      val get_jsDocPropertyTags: t -> ts_JSDocPropertyLikeTag list [@@js.get "jsDocPropertyTags"]
      val set_jsDocPropertyTags: t -> ts_JSDocPropertyLikeTag list -> unit [@@js.set "jsDocPropertyTags"]
      val get_isArrayType: t -> bool [@@js.get "isArrayType"]
      val set_isArrayType: t -> bool -> unit [@@js.set "isArrayType"]
      val cast: t -> ts_JSDocType [@@js.cast]
    end
    module FlowFlags : sig
      type t = ts_FlowFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FlowNode : sig
      type t = ts_FlowNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "FlowNodeBase"] FlowNodeBase : sig
      type t = ts_FlowNodeBase
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_flags: t -> ts_FlowFlags [@@js.get "flags"]
      val set_flags: t -> ts_FlowFlags -> unit [@@js.set "flags"]
      val get_id: t -> float [@@js.get "id"]
      val set_id: t -> float -> unit [@@js.set "id"]
    end
    module[@js.scope "FlowLock"] FlowLock : sig
      type t = ts_FlowLock
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_locked: t -> bool [@@js.get "locked"]
      val set_locked: t -> bool -> unit [@@js.set "locked"]
    end
    module[@js.scope "AfterFinallyFlow"] AfterFinallyFlow : sig
      type t = ts_AfterFinallyFlow
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_antecedent: t -> ts_FlowNode [@@js.get "antecedent"]
      val set_antecedent: t -> ts_FlowNode -> unit [@@js.set "antecedent"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
      val cast': t -> ts_FlowLock [@@js.cast]
    end
    module[@js.scope "PreFinallyFlow"] PreFinallyFlow : sig
      type t = ts_PreFinallyFlow
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_antecedent: t -> ts_FlowNode [@@js.get "antecedent"]
      val set_antecedent: t -> ts_FlowNode -> unit [@@js.set "antecedent"]
      val get_lock: t -> ts_FlowLock [@@js.get "lock"]
      val set_lock: t -> ts_FlowLock -> unit [@@js.set "lock"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module[@js.scope "FlowStart"] FlowStart : sig
      type t = ts_FlowStart
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_node: t -> (([`U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration) union2 [@js 161] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression) union2 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction) union2 [@js 202]] [@js.union on_field "kind"]), (ts_ArrowFunction, (ts_FunctionExpression, ts_MethodDeclaration) or_) or_) or_ [@@js.get "node"]
      val set_node: t -> (([`U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration) union2  | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression) union2  | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction) union2 ] [@js.union on_field "kind"]), (ts_ArrowFunction, (ts_FunctionExpression, ts_MethodDeclaration) or_) or_) or_ -> unit [@@js.set "node"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module[@js.scope "FlowLabel"] FlowLabel : sig
      type t = ts_FlowLabel
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_antecedents: t -> ts_FlowNode list or_undefined [@@js.get "antecedents"]
      val set_antecedents: t -> ts_FlowNode list or_undefined -> unit [@@js.set "antecedents"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module[@js.scope "FlowAssignment"] FlowAssignment : sig
      type t = ts_FlowAssignment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_node: t -> (([`U_n_191 of (ts_BindingElement, ts_BindingElement) union2 [@js 191] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242]] [@js.union on_field "kind"]), (ts_BindingElement, (ts_Expression, ts_VariableDeclaration) or_) or_) or_ [@@js.get "node"]
      val set_node: t -> (([`U_n_191 of (ts_BindingElement, ts_BindingElement) union2  | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 ] [@js.union on_field "kind"]), (ts_BindingElement, (ts_Expression, ts_VariableDeclaration) or_) or_) or_ -> unit [@@js.set "node"]
      val get_antecedent: t -> ts_FlowNode [@@js.get "antecedent"]
      val set_antecedent: t -> ts_FlowNode -> unit [@@js.set "antecedent"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module[@js.scope "FlowCall"] FlowCall : sig
      type t = ts_FlowCall
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_node: t -> ts_CallExpression [@@js.get "node"]
      val set_node: t -> ts_CallExpression -> unit [@@js.set "node"]
      val get_antecedent: t -> ts_FlowNode [@@js.get "antecedent"]
      val set_antecedent: t -> ts_FlowNode -> unit [@@js.set "antecedent"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module[@js.scope "FlowCondition"] FlowCondition : sig
      type t = ts_FlowCondition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_node: t -> ts_Expression [@@js.get "node"]
      val set_node: t -> ts_Expression -> unit [@@js.set "node"]
      val get_antecedent: t -> ts_FlowNode [@@js.get "antecedent"]
      val set_antecedent: t -> ts_FlowNode -> unit [@@js.set "antecedent"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module[@js.scope "FlowSwitchClause"] FlowSwitchClause : sig
      type t = ts_FlowSwitchClause
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_switchStatement: t -> ts_SwitchStatement [@@js.get "switchStatement"]
      val set_switchStatement: t -> ts_SwitchStatement -> unit [@@js.set "switchStatement"]
      val get_clauseStart: t -> float [@@js.get "clauseStart"]
      val set_clauseStart: t -> float -> unit [@@js.set "clauseStart"]
      val get_clauseEnd: t -> float [@@js.get "clauseEnd"]
      val set_clauseEnd: t -> float -> unit [@@js.set "clauseEnd"]
      val get_antecedent: t -> ts_FlowNode [@@js.get "antecedent"]
      val set_antecedent: t -> ts_FlowNode -> unit [@@js.set "antecedent"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module[@js.scope "FlowArrayMutation"] FlowArrayMutation : sig
      type t = ts_FlowArrayMutation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_node: t -> (([`U_n_196 of (ts_CallExpression, ts_CallExpression) union2 [@js 196] | `U_n_209 of (ts_BinaryExpression, ts_BinaryExpression) union2 [@js 209]] [@js.union on_field "kind"]), (ts_BinaryExpression, ts_CallExpression) or_) or_ [@@js.get "node"]
      val set_node: t -> (([`U_n_196 of (ts_CallExpression, ts_CallExpression) union2  | `U_n_209 of (ts_BinaryExpression, ts_BinaryExpression) union2 ] [@js.union on_field "kind"]), (ts_BinaryExpression, ts_CallExpression) or_) or_ -> unit [@@js.set "node"]
      val get_antecedent: t -> ts_FlowNode [@@js.get "antecedent"]
      val set_antecedent: t -> ts_FlowNode -> unit [@@js.set "antecedent"]
      val cast: t -> ts_FlowNodeBase [@@js.cast]
    end
    module FlowType : sig
      type t = ts_FlowType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IncompleteType"] IncompleteType : sig
      type t = ts_IncompleteType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_flags: t -> ts_TypeFlags [@@js.get "flags"]
      val set_flags: t -> ts_TypeFlags -> unit [@@js.set "flags"]
      val get_type: t -> ts_Type [@@js.get "type"]
      val set_type: t -> ts_Type -> unit [@@js.set "type"]
    end
    module[@js.scope "AmdDependency"] AmdDependency : sig
      type t = ts_AmdDependency
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_path: t -> string [@@js.get "path"]
      val set_path: t -> string -> unit [@@js.set "path"]
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
    end
    module[@js.scope "SourceFile"] SourceFile : sig
      type t = ts_SourceFile
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getLineAndCharacterOfPosition: t -> pos:float -> ts_LineAndCharacter [@@js.call "getLineAndCharacterOfPosition"]
      val getLineEndOfPosition: t -> pos:float -> float [@@js.call "getLineEndOfPosition"]
      val getLineStarts: t -> float list [@@js.call "getLineStarts"]
      val getPositionOfLineAndCharacter: t -> line:float -> character:float -> float [@@js.call "getPositionOfLineAndCharacter"]
      val update: t -> newText:string -> textChangeRange:ts_TextChangeRange -> t [@@js.call "update"]
      val get_kind: t -> ts_SyntaxKind_SourceFile [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_SourceFile -> unit [@@js.set "kind"]
      val get_statements: t -> ts_Statement ts_NodeArray [@@js.get "statements"]
      val set_statements: t -> ts_Statement ts_NodeArray -> unit [@@js.set "statements"]
      val get_endOfFileToken: t -> ts_SyntaxKind_EndOfFileToken ts_Token [@@js.get "endOfFileToken"]
      val set_endOfFileToken: t -> ts_SyntaxKind_EndOfFileToken ts_Token -> unit [@@js.set "endOfFileToken"]
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_amdDependencies: t -> ts_AmdDependency list [@@js.get "amdDependencies"]
      val set_amdDependencies: t -> ts_AmdDependency list -> unit [@@js.set "amdDependencies"]
      val get_moduleName: t -> string [@@js.get "moduleName"]
      val set_moduleName: t -> string -> unit [@@js.set "moduleName"]
      val get_referencedFiles: t -> ts_FileReference list [@@js.get "referencedFiles"]
      val set_referencedFiles: t -> ts_FileReference list -> unit [@@js.set "referencedFiles"]
      val get_typeReferenceDirectives: t -> ts_FileReference list [@@js.get "typeReferenceDirectives"]
      val set_typeReferenceDirectives: t -> ts_FileReference list -> unit [@@js.set "typeReferenceDirectives"]
      val get_libReferenceDirectives: t -> ts_FileReference list [@@js.get "libReferenceDirectives"]
      val set_libReferenceDirectives: t -> ts_FileReference list -> unit [@@js.set "libReferenceDirectives"]
      val get_languageVariant: t -> ts_LanguageVariant [@@js.get "languageVariant"]
      val set_languageVariant: t -> ts_LanguageVariant -> unit [@@js.set "languageVariant"]
      val get_isDeclarationFile: t -> bool [@@js.get "isDeclarationFile"]
      val set_isDeclarationFile: t -> bool -> unit [@@js.set "isDeclarationFile"]
      val get_hasNoDefaultLib: t -> bool [@@js.get "hasNoDefaultLib"]
      val set_hasNoDefaultLib: t -> bool -> unit [@@js.set "hasNoDefaultLib"]
      val get_languageVersion: t -> ts_ScriptTarget [@@js.get "languageVersion"]
      val set_languageVersion: t -> ts_ScriptTarget -> unit [@@js.set "languageVersion"]
      val cast: t -> ts_Declaration [@@js.cast]
    end
    module[@js.scope "Bundle"] Bundle : sig
      type t = ts_Bundle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_Bundle [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_Bundle -> unit [@@js.set "kind"]
      val get_prepends: t -> (([`U_n_292 of (ts_UnparsedSource, ts_UnparsedSource) union2 [@js 292] | `U_n_293 of (ts_InputFiles, ts_InputFiles) union2 [@js 293]] [@js.union on_field "kind"]), (ts_InputFiles, ts_UnparsedSource) or_) or_ list [@@js.get "prepends"]
      val set_prepends: t -> (([`U_n_292 of (ts_UnparsedSource, ts_UnparsedSource) union2  | `U_n_293 of (ts_InputFiles, ts_InputFiles) union2 ] [@js.union on_field "kind"]), (ts_InputFiles, ts_UnparsedSource) or_) or_ list -> unit [@@js.set "prepends"]
      val get_sourceFiles: t -> ts_SourceFile list [@@js.get "sourceFiles"]
      val set_sourceFiles: t -> ts_SourceFile list -> unit [@@js.set "sourceFiles"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "InputFiles"] InputFiles : sig
      type t = ts_InputFiles
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_InputFiles [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_InputFiles -> unit [@@js.set "kind"]
      val get_javascriptPath: t -> string [@@js.get "javascriptPath"]
      val set_javascriptPath: t -> string -> unit [@@js.set "javascriptPath"]
      val get_javascriptText: t -> string [@@js.get "javascriptText"]
      val set_javascriptText: t -> string -> unit [@@js.set "javascriptText"]
      val get_javascriptMapPath: t -> string [@@js.get "javascriptMapPath"]
      val set_javascriptMapPath: t -> string -> unit [@@js.set "javascriptMapPath"]
      val get_javascriptMapText: t -> string [@@js.get "javascriptMapText"]
      val set_javascriptMapText: t -> string -> unit [@@js.set "javascriptMapText"]
      val get_declarationPath: t -> string [@@js.get "declarationPath"]
      val set_declarationPath: t -> string -> unit [@@js.set "declarationPath"]
      val get_declarationText: t -> string [@@js.get "declarationText"]
      val set_declarationText: t -> string -> unit [@@js.set "declarationText"]
      val get_declarationMapPath: t -> string [@@js.get "declarationMapPath"]
      val set_declarationMapPath: t -> string -> unit [@@js.set "declarationMapPath"]
      val get_declarationMapText: t -> string [@@js.get "declarationMapText"]
      val set_declarationMapText: t -> string -> unit [@@js.set "declarationMapText"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "UnparsedSource"] UnparsedSource : sig
      type t = ts_UnparsedSource
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_UnparsedSource [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_UnparsedSource -> unit [@@js.set "kind"]
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_prologues: t -> ts_UnparsedPrologue list [@@js.get "prologues"]
      val set_prologues: t -> ts_UnparsedPrologue list -> unit [@@js.set "prologues"]
      val get_helpers: t -> ts_UnscopedEmitHelper list or_undefined [@@js.get "helpers"]
      val set_helpers: t -> ts_UnscopedEmitHelper list or_undefined -> unit [@@js.set "helpers"]
      val get_referencedFiles: t -> ts_FileReference list [@@js.get "referencedFiles"]
      val set_referencedFiles: t -> ts_FileReference list -> unit [@@js.set "referencedFiles"]
      val get_typeReferenceDirectives: t -> string list or_undefined [@@js.get "typeReferenceDirectives"]
      val set_typeReferenceDirectives: t -> string list or_undefined -> unit [@@js.set "typeReferenceDirectives"]
      val get_libReferenceDirectives: t -> ts_FileReference list [@@js.get "libReferenceDirectives"]
      val set_libReferenceDirectives: t -> ts_FileReference list -> unit [@@js.set "libReferenceDirectives"]
      val get_hasNoDefaultLib: t -> bool [@@js.get "hasNoDefaultLib"]
      val set_hasNoDefaultLib: t -> bool -> unit [@@js.set "hasNoDefaultLib"]
      val get_sourceMapPath: t -> string [@@js.get "sourceMapPath"]
      val set_sourceMapPath: t -> string -> unit [@@js.set "sourceMapPath"]
      val get_sourceMapText: t -> string [@@js.get "sourceMapText"]
      val set_sourceMapText: t -> string -> unit [@@js.set "sourceMapText"]
      val get_syntheticReferences: t -> ts_UnparsedSyntheticReference list [@@js.get "syntheticReferences"]
      val set_syntheticReferences: t -> ts_UnparsedSyntheticReference list -> unit [@@js.set "syntheticReferences"]
      val get_texts: t -> ts_UnparsedSourceText list [@@js.get "texts"]
      val set_texts: t -> ts_UnparsedSourceText list -> unit [@@js.set "texts"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module UnparsedSourceText : sig
      type t = ts_UnparsedSourceText
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module UnparsedNode : sig
      type t = ts_UnparsedNode
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "UnparsedSection"] UnparsedSection : sig
      type t = ts_UnparsedSection
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind -> unit [@@js.set "kind"]
      val get_data: t -> string [@@js.get "data"]
      val set_data: t -> string -> unit [@@js.set "data"]
      val get_parent: t -> ts_UnparsedSource [@@js.get "parent"]
      val set_parent: t -> ts_UnparsedSource -> unit [@@js.set "parent"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module[@js.scope "UnparsedPrologue"] UnparsedPrologue : sig
      type t = ts_UnparsedPrologue
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_UnparsedPrologue [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_UnparsedPrologue -> unit [@@js.set "kind"]
      val get_data: t -> string [@@js.get "data"]
      val set_data: t -> string -> unit [@@js.set "data"]
      val get_parent: t -> ts_UnparsedSource [@@js.get "parent"]
      val set_parent: t -> ts_UnparsedSource -> unit [@@js.set "parent"]
      val cast: t -> ts_UnparsedSection [@@js.cast]
    end
    module[@js.scope "UnparsedPrepend"] UnparsedPrepend : sig
      type t = ts_UnparsedPrepend
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_UnparsedPrepend [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_UnparsedPrepend -> unit [@@js.set "kind"]
      val get_data: t -> string [@@js.get "data"]
      val set_data: t -> string -> unit [@@js.set "data"]
      val get_parent: t -> ts_UnparsedSource [@@js.get "parent"]
      val set_parent: t -> ts_UnparsedSource -> unit [@@js.set "parent"]
      val get_texts: t -> ts_UnparsedTextLike list [@@js.get "texts"]
      val set_texts: t -> ts_UnparsedTextLike list -> unit [@@js.set "texts"]
      val cast: t -> ts_UnparsedSection [@@js.cast]
    end
    module[@js.scope "UnparsedTextLike"] UnparsedTextLike : sig
      type t = ts_UnparsedTextLike
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ((ts_SyntaxKind_UnparsedInternalText, ts_SyntaxKind_UnparsedText) or_, ([`UnparsedInternalText[@js 288] | `UnparsedText[@js 287]] [@js.enum])) or_enum [@@js.get "kind"]
      val set_kind: t -> ((ts_SyntaxKind_UnparsedInternalText, ts_SyntaxKind_UnparsedText) or_, ([`UnparsedInternalText | `UnparsedText] [@js.enum])) or_enum -> unit [@@js.set "kind"]
      val get_parent: t -> ts_UnparsedSource [@@js.get "parent"]
      val set_parent: t -> ts_UnparsedSource -> unit [@@js.set "parent"]
      val cast: t -> ts_UnparsedSection [@@js.cast]
    end
    module[@js.scope "UnparsedSyntheticReference"] UnparsedSyntheticReference : sig
      type t = ts_UnparsedSyntheticReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_UnparsedSyntheticReference [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_UnparsedSyntheticReference -> unit [@@js.set "kind"]
      val get_parent: t -> ts_UnparsedSource [@@js.get "parent"]
      val set_parent: t -> ts_UnparsedSource -> unit [@@js.set "parent"]
      val cast: t -> ts_UnparsedSection [@@js.cast]
    end
    module[@js.scope "JsonSourceFile"] JsonSourceFile : sig
      type t = ts_JsonSourceFile
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_statements: t -> ts_JsonObjectExpressionStatement ts_NodeArray [@@js.get "statements"]
      val set_statements: t -> ts_JsonObjectExpressionStatement ts_NodeArray -> unit [@@js.set "statements"]
      val cast: t -> ts_SourceFile [@@js.cast]
    end
    module[@js.scope "TsConfigSourceFile"] TsConfigSourceFile : sig
      type t = ts_TsConfigSourceFile
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_extendedSourceFiles: t -> string list [@@js.get "extendedSourceFiles"]
      val set_extendedSourceFiles: t -> string list -> unit [@@js.set "extendedSourceFiles"]
      val cast: t -> ts_JsonSourceFile [@@js.cast]
    end
    module[@js.scope "JsonMinusNumericLiteral"] JsonMinusNumericLiteral : sig
      type t = ts_JsonMinusNumericLiteral
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_SyntaxKind_PrefixUnaryExpression [@@js.get "kind"]
      val set_kind: t -> ts_SyntaxKind_PrefixUnaryExpression -> unit [@@js.set "kind"]
      val get_operator: t -> ts_SyntaxKind_MinusToken [@@js.get "operator"]
      val set_operator: t -> ts_SyntaxKind_MinusToken -> unit [@@js.set "operator"]
      val get_operand: t -> ts_NumericLiteral [@@js.get "operand"]
      val set_operand: t -> ts_NumericLiteral -> unit [@@js.set "operand"]
      val cast: t -> ts_PrefixUnaryExpression [@@js.cast]
    end
    module[@js.scope "JsonObjectExpressionStatement"] JsonObjectExpressionStatement : sig
      type t = ts_JsonObjectExpressionStatement
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_expression: t -> (([`U_n_8 of (ts_NumericLiteral, ts_NumericLiteral) union2 [@js 8] | `U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2 [@js 10] | `U_n_100 of (ts_NullLiteral, ts_NullLiteral) union2 [@js 100] | `U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2 [@js 192] | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 [@js 193] | `U_n_207 of (ts_JsonMinusNumericLiteral, ts_JsonMinusNumericLiteral) union2 [@js 207]] [@js.union on_field "kind"]), (ts_ArrayLiteralExpression, (ts_BooleanLiteral, (ts_JsonMinusNumericLiteral, (ts_NullLiteral, (ts_NumericLiteral, (ts_ObjectLiteralExpression, ts_StringLiteral) or_) or_) or_) or_) or_) or_) or_ [@@js.get "expression"]
      val set_expression: t -> (([`U_n_8 of (ts_NumericLiteral, ts_NumericLiteral) union2  | `U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2  | `U_n_100 of (ts_NullLiteral, ts_NullLiteral) union2  | `U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2  | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2  | `U_n_207 of (ts_JsonMinusNumericLiteral, ts_JsonMinusNumericLiteral) union2 ] [@js.union on_field "kind"]), (ts_ArrayLiteralExpression, (ts_BooleanLiteral, (ts_JsonMinusNumericLiteral, (ts_NullLiteral, (ts_NumericLiteral, (ts_ObjectLiteralExpression, ts_StringLiteral) or_) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "expression"]
      val cast: t -> ts_ExpressionStatement [@@js.cast]
    end
    module[@js.scope "ScriptReferenceHost"] ScriptReferenceHost : sig
      type t = ts_ScriptReferenceHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getCompilerOptions: t -> ts_CompilerOptions [@@js.call "getCompilerOptions"]
      val getSourceFile: t -> fileName:string -> ts_SourceFile or_undefined [@@js.call "getSourceFile"]
      val getSourceFileByPath: t -> path:ts_Path -> ts_SourceFile or_undefined [@@js.call "getSourceFileByPath"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
    end
    module[@js.scope "ParseConfigHost"] ParseConfigHost : sig
      type t = ts_ParseConfigHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_useCaseSensitiveFileNames: t -> bool [@@js.get "useCaseSensitiveFileNames"]
      val set_useCaseSensitiveFileNames: t -> bool -> unit [@@js.set "useCaseSensitiveFileNames"]
      val readDirectory: t -> rootDir:string -> extensions:string list -> excludes:string list or_undefined -> includes:string list -> ?depth:float -> unit -> string list [@@js.call "readDirectory"]
      val fileExists: t -> path:string -> bool [@@js.call "fileExists"]
      val readFile: t -> path:string -> string or_undefined [@@js.call "readFile"]
      val trace: t -> s:string -> unit [@@js.call "trace"]
    end
    module ResolvedConfigFileName : sig
      type t = ts_ResolvedConfigFileName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "WriteFileCallback"] WriteFileCallback : sig
      type t = ts_WriteFileCallback
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> fileName:string -> data:string -> writeByteOrderMark:bool -> ?onError:(message:string -> unit) -> ?sourceFiles:ts_SourceFile list -> unit -> unit [@@js.apply]
    end
    module OperationCanceledException : sig
      type t = ts_OperationCanceledException
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "CancellationToken"] CancellationToken : sig
      type t = ts_CancellationToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val isCancellationRequested: t -> bool [@@js.call "isCancellationRequested"]
      val throwIfCancellationRequested: t -> unit [@@js.call "throwIfCancellationRequested"]
    end
    module[@js.scope "Program"] Program : sig
      type t = ts_Program
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getRootFileNames: t -> string list [@@js.call "getRootFileNames"]
      val getSourceFiles: t -> ts_SourceFile list [@@js.call "getSourceFiles"]
      val emit: t -> ?targetSourceFile:ts_SourceFile -> ?writeFile:ts_WriteFileCallback -> ?cancellationToken:ts_CancellationToken -> ?emitOnlyDtsFiles:bool -> ?customTransformers:ts_CustomTransformers -> unit -> ts_EmitResult [@@js.call "emit"]
      val getOptionsDiagnostics: t -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getOptionsDiagnostics"]
      val getGlobalDiagnostics: t -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getGlobalDiagnostics"]
      val getSyntacticDiagnostics: t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_DiagnosticWithLocation list [@@js.call "getSyntacticDiagnostics"]
      val getSemanticDiagnostics: t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getSemanticDiagnostics"]
      val getDeclarationDiagnostics: t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_DiagnosticWithLocation list [@@js.call "getDeclarationDiagnostics"]
      val getConfigFileParsingDiagnostics: t -> ts_Diagnostic list [@@js.call "getConfigFileParsingDiagnostics"]
      val getTypeChecker: t -> ts_TypeChecker [@@js.call "getTypeChecker"]
      val getNodeCount: t -> float [@@js.call "getNodeCount"]
      val getIdentifierCount: t -> float [@@js.call "getIdentifierCount"]
      val getSymbolCount: t -> float [@@js.call "getSymbolCount"]
      val getTypeCount: t -> float [@@js.call "getTypeCount"]
      val getRelationCacheSizes: t -> anonymous_interface_5 [@@js.call "getRelationCacheSizes"]
      val isSourceFileFromExternalLibrary: t -> file:ts_SourceFile -> bool [@@js.call "isSourceFileFromExternalLibrary"]
      val isSourceFileDefaultLibrary: t -> file:ts_SourceFile -> bool [@@js.call "isSourceFileDefaultLibrary"]
      val getProjectReferences: t -> ts_ProjectReference list or_undefined [@@js.call "getProjectReferences"]
      val getResolvedProjectReferences: t -> ts_ResolvedProjectReference or_undefined list or_undefined [@@js.call "getResolvedProjectReferences"]
      val cast: t -> ts_ScriptReferenceHost [@@js.cast]
    end
    module[@js.scope "ResolvedProjectReference"] ResolvedProjectReference : sig
      type t = ts_ResolvedProjectReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_commandLine: t -> ts_ParsedCommandLine [@@js.get "commandLine"]
      val set_commandLine: t -> ts_ParsedCommandLine -> unit [@@js.set "commandLine"]
      val get_sourceFile: t -> ts_SourceFile [@@js.get "sourceFile"]
      val set_sourceFile: t -> ts_SourceFile -> unit [@@js.set "sourceFile"]
      val get_references: t -> t or_undefined list [@@js.get "references"]
      val set_references: t -> t or_undefined list -> unit [@@js.set "references"]
    end
    module[@js.scope "CustomTransformerFactory"] CustomTransformerFactory : sig
      type t = ts_CustomTransformerFactory
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> context:ts_TransformationContext -> ts_CustomTransformer [@@js.apply]
    end
    module[@js.scope "CustomTransformer"] CustomTransformer : sig
      type t = ts_CustomTransformer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val transformSourceFile: t -> node:ts_SourceFile -> ts_SourceFile [@@js.call "transformSourceFile"]
      val transformBundle: t -> node:ts_Bundle -> ts_Bundle [@@js.call "transformBundle"]
    end
    module[@js.scope "CustomTransformers"] CustomTransformers : sig
      type t = ts_CustomTransformers
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_before: t -> (ts_CustomTransformerFactory, ts_SourceFile ts_TransformerFactory) or_ list [@@js.get "before"]
      val set_before: t -> (ts_CustomTransformerFactory, ts_SourceFile ts_TransformerFactory) or_ list -> unit [@@js.set "before"]
      val get_after: t -> (ts_CustomTransformerFactory, ts_SourceFile ts_TransformerFactory) or_ list [@@js.get "after"]
      val set_after: t -> (ts_CustomTransformerFactory, ts_SourceFile ts_TransformerFactory) or_ list -> unit [@@js.set "after"]
      val get_afterDeclarations: t -> (ts_CustomTransformerFactory, (([`U_n_290 of (ts_SourceFile, ts_SourceFile) union2 [@js 290] | `U_n_291 of (ts_Bundle, ts_Bundle) union2 [@js 291]] [@js.union on_field "kind"]), (ts_Bundle, ts_SourceFile) or_) or_ ts_TransformerFactory) or_ list [@@js.get "afterDeclarations"]
      val set_afterDeclarations: t -> (ts_CustomTransformerFactory, (([`U_n_290 of (ts_SourceFile, ts_SourceFile) union2  | `U_n_291 of (ts_Bundle, ts_Bundle) union2 ] [@js.union on_field "kind"]), (ts_Bundle, ts_SourceFile) or_) or_ ts_TransformerFactory) or_ list -> unit [@@js.set "afterDeclarations"]
    end
    module[@js.scope "SourceMapSpan"] SourceMapSpan : sig
      type t = ts_SourceMapSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_emittedLine: t -> float [@@js.get "emittedLine"]
      val set_emittedLine: t -> float -> unit [@@js.set "emittedLine"]
      val get_emittedColumn: t -> float [@@js.get "emittedColumn"]
      val set_emittedColumn: t -> float -> unit [@@js.set "emittedColumn"]
      val get_sourceLine: t -> float [@@js.get "sourceLine"]
      val set_sourceLine: t -> float -> unit [@@js.set "sourceLine"]
      val get_sourceColumn: t -> float [@@js.get "sourceColumn"]
      val set_sourceColumn: t -> float -> unit [@@js.set "sourceColumn"]
      val get_nameIndex: t -> float [@@js.get "nameIndex"]
      val set_nameIndex: t -> float -> unit [@@js.set "nameIndex"]
      val get_sourceIndex: t -> float [@@js.get "sourceIndex"]
      val set_sourceIndex: t -> float -> unit [@@js.set "sourceIndex"]
    end
    module ExitStatus : sig
      type t = ts_ExitStatus
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "EmitResult"] EmitResult : sig
      type t = ts_EmitResult
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_emitSkipped: t -> bool [@@js.get "emitSkipped"]
      val set_emitSkipped: t -> bool -> unit [@@js.set "emitSkipped"]
      val get_diagnostics: t -> ts_Diagnostic list [@@js.get "diagnostics"]
      val set_diagnostics: t -> ts_Diagnostic list -> unit [@@js.set "diagnostics"]
      val get_emittedFiles: t -> string list [@@js.get "emittedFiles"]
      val set_emittedFiles: t -> string list -> unit [@@js.set "emittedFiles"]
    end
    module[@js.scope "TypeChecker"] TypeChecker : sig
      type t = ts_TypeChecker
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getTypeOfSymbolAtLocation: t -> symbol:ts_Symbol -> node:ts_Node -> ts_Type [@@js.call "getTypeOfSymbolAtLocation"]
      val getDeclaredTypeOfSymbol: t -> symbol:ts_Symbol -> ts_Type [@@js.call "getDeclaredTypeOfSymbol"]
      val getPropertiesOfType: t -> type_:ts_Type -> ts_Symbol list [@@js.call "getPropertiesOfType"]
      val getPropertyOfType: t -> type_:ts_Type -> propertyName:string -> ts_Symbol or_undefined [@@js.call "getPropertyOfType"]
      val getPrivateIdentifierPropertyOfType: t -> leftType:ts_Type -> name:string -> location:ts_Node -> ts_Symbol or_undefined [@@js.call "getPrivateIdentifierPropertyOfType"]
      val getIndexInfoOfType: t -> type_:ts_Type -> kind:ts_IndexKind -> ts_IndexInfo or_undefined [@@js.call "getIndexInfoOfType"]
      val getSignaturesOfType: t -> type_:ts_Type -> kind:ts_SignatureKind -> ts_Signature list [@@js.call "getSignaturesOfType"]
      val getIndexTypeOfType: t -> type_:ts_Type -> kind:ts_IndexKind -> ts_Type or_undefined [@@js.call "getIndexTypeOfType"]
      val getBaseTypes: t -> type_:ts_InterfaceType -> ts_BaseType list [@@js.call "getBaseTypes"]
      val getBaseTypeOfLiteralType: t -> type_:ts_Type -> ts_Type [@@js.call "getBaseTypeOfLiteralType"]
      val getWidenedType: t -> type_:ts_Type -> ts_Type [@@js.call "getWidenedType"]
      val getReturnTypeOfSignature: t -> signature:ts_Signature -> ts_Type [@@js.call "getReturnTypeOfSignature"]
      val getNullableType: t -> type_:ts_Type -> flags:ts_TypeFlags -> ts_Type [@@js.call "getNullableType"]
      val getNonNullableType: t -> type_:ts_Type -> ts_Type [@@js.call "getNonNullableType"]
      val getTypeArguments: t -> type_:ts_TypeReference -> ts_Type list [@@js.call "getTypeArguments"]
      val typeToTypeNode: t -> type_:ts_Type -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> ts_TypeNode or_undefined [@@js.call "typeToTypeNode"]
      val signatureToSignatureDeclaration: t -> signature:ts_Signature -> kind:ts_SyntaxKind -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> (ts_SignatureDeclaration, anonymous_interface_14) intersection2 or_undefined [@@js.call "signatureToSignatureDeclaration"]
      val indexInfoToIndexSignatureDeclaration: t -> indexInfo:ts_IndexInfo -> kind:ts_IndexKind -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> ts_IndexSignatureDeclaration or_undefined [@@js.call "indexInfoToIndexSignatureDeclaration"]
      val symbolToEntityName: t -> symbol:ts_Symbol -> meaning:ts_SymbolFlags -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> ts_EntityName or_undefined [@@js.call "symbolToEntityName"]
      val symbolToExpression: t -> symbol:ts_Symbol -> meaning:ts_SymbolFlags -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> ts_Expression or_undefined [@@js.call "symbolToExpression"]
      val symbolToTypeParameterDeclarations: t -> symbol:ts_Symbol -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> ts_TypeParameterDeclaration ts_NodeArray or_undefined [@@js.call "symbolToTypeParameterDeclarations"]
      val symbolToParameterDeclaration: t -> symbol:ts_Symbol -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> ts_ParameterDeclaration or_undefined [@@js.call "symbolToParameterDeclaration"]
      val typeParameterToDeclaration: t -> parameter:ts_TypeParameter -> ?enclosingDeclaration:ts_Node -> ?flags:ts_NodeBuilderFlags -> unit -> ts_TypeParameterDeclaration or_undefined [@@js.call "typeParameterToDeclaration"]
      val getSymbolsInScope: t -> location:ts_Node -> meaning:ts_SymbolFlags -> ts_Symbol list [@@js.call "getSymbolsInScope"]
      val getSymbolAtLocation: t -> node:ts_Node -> ts_Symbol or_undefined [@@js.call "getSymbolAtLocation"]
      val getSymbolsOfParameterPropertyDeclaration: t -> parameter:ts_ParameterDeclaration -> parameterName:string -> ts_Symbol list [@@js.call "getSymbolsOfParameterPropertyDeclaration"]
      val getShorthandAssignmentValueSymbol: t -> location:ts_Node -> ts_Symbol or_undefined [@@js.call "getShorthandAssignmentValueSymbol"]
      val getExportSpecifierLocalTargetSymbol: t -> location:ts_ExportSpecifier -> ts_Symbol or_undefined [@@js.call "getExportSpecifierLocalTargetSymbol"]
      val getExportSymbolOfSymbol: t -> symbol:ts_Symbol -> ts_Symbol [@@js.call "getExportSymbolOfSymbol"]
      val getPropertySymbolOfDestructuringAssignment: t -> location:ts_Identifier -> ts_Symbol or_undefined [@@js.call "getPropertySymbolOfDestructuringAssignment"]
      val getTypeOfAssignmentPattern: t -> pattern:ts_AssignmentPattern -> ts_Type [@@js.call "getTypeOfAssignmentPattern"]
      val getTypeAtLocation: t -> node:ts_Node -> ts_Type [@@js.call "getTypeAtLocation"]
      val getTypeFromTypeNode: t -> node:ts_TypeNode -> ts_Type [@@js.call "getTypeFromTypeNode"]
      val signatureToString: t -> signature:ts_Signature -> ?enclosingDeclaration:ts_Node -> ?flags:ts_TypeFormatFlags -> ?kind:ts_SignatureKind -> unit -> string [@@js.call "signatureToString"]
      val typeToString: t -> type_:ts_Type -> ?enclosingDeclaration:ts_Node -> ?flags:ts_TypeFormatFlags -> unit -> string [@@js.call "typeToString"]
      val symbolToString: t -> symbol:ts_Symbol -> ?enclosingDeclaration:ts_Node -> ?meaning:ts_SymbolFlags -> ?flags:ts_SymbolFormatFlags -> unit -> string [@@js.call "symbolToString"]
      val typePredicateToString: t -> predicate:ts_TypePredicate -> ?enclosingDeclaration:ts_Node -> ?flags:ts_TypeFormatFlags -> unit -> string [@@js.call "typePredicateToString"]
      val getFullyQualifiedName: t -> symbol:ts_Symbol -> string [@@js.call "getFullyQualifiedName"]
      val getAugmentedPropertiesOfType: t -> type_:ts_Type -> ts_Symbol list [@@js.call "getAugmentedPropertiesOfType"]
      val getRootSymbols: t -> symbol:ts_Symbol -> ts_Symbol list [@@js.call "getRootSymbols"]
      val getContextualType: t -> node:ts_Expression -> ts_Type or_undefined [@@js.call "getContextualType"]
      val getResolvedSignature: t -> node:ts_CallLikeExpression -> ?candidatesOutArray:ts_Signature list -> ?argumentCount:float -> unit -> ts_Signature or_undefined [@@js.call "getResolvedSignature"]
      val getSignatureFromDeclaration: t -> declaration:ts_SignatureDeclaration -> ts_Signature or_undefined [@@js.call "getSignatureFromDeclaration"]
      val isImplementationOfOverload: t -> node:ts_SignatureDeclaration -> bool or_undefined [@@js.call "isImplementationOfOverload"]
      val isUndefinedSymbol: t -> symbol:ts_Symbol -> bool [@@js.call "isUndefinedSymbol"]
      val isArgumentsSymbol: t -> symbol:ts_Symbol -> bool [@@js.call "isArgumentsSymbol"]
      val isUnknownSymbol: t -> symbol:ts_Symbol -> bool [@@js.call "isUnknownSymbol"]
      val getConstantValue: t -> node:(([`U_n_194 of (ts_PropertyAccessExpression, ts_PropertyAccessExpression) union2  | `U_n_195 of (ts_ElementAccessExpression, ts_ElementAccessExpression) union2  | `U_n_284 of (ts_EnumMember, ts_EnumMember) union2 ] [@js.union on_field "kind"]), (ts_ElementAccessExpression, (ts_EnumMember, ts_PropertyAccessExpression) or_) or_) or_ -> prim_union or_undefined [@@js.call "getConstantValue"]
      val isValidPropertyAccess: t -> node:(([`U_n_153 of (ts_QualifiedName, ts_QualifiedName) union2  | `U_n_188 of (ts_ImportTypeNode, ts_ImportTypeNode) union2  | `U_n_194 of (ts_PropertyAccessExpression, ts_PropertyAccessExpression) union2 ] [@js.union on_field "kind"]), (ts_ImportTypeNode, (ts_PropertyAccessExpression, ts_QualifiedName) or_) or_) or_ -> propertyName:string -> bool [@@js.call "isValidPropertyAccess"]
      val getAliasedSymbol: t -> symbol:ts_Symbol -> ts_Symbol [@@js.call "getAliasedSymbol"]
      val getExportsOfModule: t -> moduleSymbol:ts_Symbol -> ts_Symbol list [@@js.call "getExportsOfModule"]
      val getJsxIntrinsicTagNamesAt: t -> location:ts_Node -> ts_Symbol list [@@js.call "getJsxIntrinsicTagNamesAt"]
      val isOptionalParameter: t -> node:ts_ParameterDeclaration -> bool [@@js.call "isOptionalParameter"]
      val getAmbientModules: t -> ts_Symbol list [@@js.call "getAmbientModules"]
      val tryGetMemberInModuleExports: t -> memberName:string -> moduleSymbol:ts_Symbol -> ts_Symbol or_undefined [@@js.call "tryGetMemberInModuleExports"]
      val getApparentType: t -> type_:ts_Type -> ts_Type [@@js.call "getApparentType"]
      val getBaseConstraintOfType: t -> type_:ts_Type -> ts_Type or_undefined [@@js.call "getBaseConstraintOfType"]
      val getDefaultFromTypeParameter: t -> type_:ts_Type -> ts_Type or_undefined [@@js.call "getDefaultFromTypeParameter"]
      val runWithCancellationToken: t -> token:ts_CancellationToken -> cb:(checker:t -> 'T) -> 'T [@@js.call "runWithCancellationToken"]
    end
    module NodeBuilderFlags : sig
      type t = ts_NodeBuilderFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TypeFormatFlags : sig
      type t = ts_TypeFormatFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolFormatFlags : sig
      type t = ts_SymbolFormatFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TypePredicateKind : sig
      type t = ts_TypePredicateKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "TypePredicateBase"] TypePredicateBase : sig
      type t = ts_TypePredicateBase
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_TypePredicateKind [@@js.get "kind"]
      val set_kind: t -> ts_TypePredicateKind -> unit [@@js.set "kind"]
      val get_type: t -> ts_Type or_undefined [@@js.get "type"]
      val set_type: t -> ts_Type or_undefined -> unit [@@js.set "type"]
    end
    module[@js.scope "ThisTypePredicate"] ThisTypePredicate : sig
      type t = ts_ThisTypePredicate
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_TypePredicateKind_This [@@js.get "kind"]
      val set_kind: t -> ts_TypePredicateKind_This -> unit [@@js.set "kind"]
      val get_parameterName: t -> never or_undefined [@@js.get "parameterName"]
      val set_parameterName: t -> never or_undefined -> unit [@@js.set "parameterName"]
      val get_parameterIndex: t -> never or_undefined [@@js.get "parameterIndex"]
      val set_parameterIndex: t -> never or_undefined -> unit [@@js.set "parameterIndex"]
      val get_type: t -> ts_Type [@@js.get "type"]
      val set_type: t -> ts_Type -> unit [@@js.set "type"]
      val cast: t -> ts_TypePredicateBase [@@js.cast]
    end
    module[@js.scope "IdentifierTypePredicate"] IdentifierTypePredicate : sig
      type t = ts_IdentifierTypePredicate
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_TypePredicateKind_Identifier [@@js.get "kind"]
      val set_kind: t -> ts_TypePredicateKind_Identifier -> unit [@@js.set "kind"]
      val get_parameterName: t -> string [@@js.get "parameterName"]
      val set_parameterName: t -> string -> unit [@@js.set "parameterName"]
      val get_parameterIndex: t -> float [@@js.get "parameterIndex"]
      val set_parameterIndex: t -> float -> unit [@@js.set "parameterIndex"]
      val get_type: t -> ts_Type [@@js.get "type"]
      val set_type: t -> ts_Type -> unit [@@js.set "type"]
      val cast: t -> ts_TypePredicateBase [@@js.cast]
    end
    module[@js.scope "AssertsThisTypePredicate"] AssertsThisTypePredicate : sig
      type t = ts_AssertsThisTypePredicate
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_TypePredicateKind_AssertsThis [@@js.get "kind"]
      val set_kind: t -> ts_TypePredicateKind_AssertsThis -> unit [@@js.set "kind"]
      val get_parameterName: t -> never or_undefined [@@js.get "parameterName"]
      val set_parameterName: t -> never or_undefined -> unit [@@js.set "parameterName"]
      val get_parameterIndex: t -> never or_undefined [@@js.get "parameterIndex"]
      val set_parameterIndex: t -> never or_undefined -> unit [@@js.set "parameterIndex"]
      val get_type: t -> ts_Type or_undefined [@@js.get "type"]
      val set_type: t -> ts_Type or_undefined -> unit [@@js.set "type"]
      val cast: t -> ts_TypePredicateBase [@@js.cast]
    end
    module[@js.scope "AssertsIdentifierTypePredicate"] AssertsIdentifierTypePredicate : sig
      type t = ts_AssertsIdentifierTypePredicate
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_TypePredicateKind_AssertsIdentifier [@@js.get "kind"]
      val set_kind: t -> ts_TypePredicateKind_AssertsIdentifier -> unit [@@js.set "kind"]
      val get_parameterName: t -> string [@@js.get "parameterName"]
      val set_parameterName: t -> string -> unit [@@js.set "parameterName"]
      val get_parameterIndex: t -> float [@@js.get "parameterIndex"]
      val set_parameterIndex: t -> float -> unit [@@js.set "parameterIndex"]
      val get_type: t -> ts_Type or_undefined [@@js.get "type"]
      val set_type: t -> ts_Type or_undefined -> unit [@@js.set "type"]
      val cast: t -> ts_TypePredicateBase [@@js.cast]
    end
    module TypePredicate : sig
      type t = ts_TypePredicate
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SymbolFlags : sig
      type t = ts_SymbolFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Symbol"] Symbol : sig
      type t = ts_Symbol
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val getFlags: t -> ts_SymbolFlags [@@js.call "getFlags"]
      val getEscapedName: t -> ts___String [@@js.call "getEscapedName"]
      val getName: t -> string [@@js.call "getName"]
      val getDeclarations: t -> ts_Declaration list or_undefined [@@js.call "getDeclarations"]
      val getDocumentationComment: t -> typeChecker:ts_TypeChecker or_undefined -> ts_SymbolDisplayPart list [@@js.call "getDocumentationComment"]
      val getJsDocTags: t -> ts_JSDocTagInfo list [@@js.call "getJsDocTags"]
      val get_flags: t -> ts_SymbolFlags [@@js.get "flags"]
      val set_flags: t -> ts_SymbolFlags -> unit [@@js.set "flags"]
      val get_escapedName: t -> ts___String [@@js.get "escapedName"]
      val set_escapedName: t -> ts___String -> unit [@@js.set "escapedName"]
      val get_declarations: t -> ts_Declaration list [@@js.get "declarations"]
      val set_declarations: t -> ts_Declaration list -> unit [@@js.set "declarations"]
      val get_valueDeclaration: t -> ts_Declaration [@@js.get "valueDeclaration"]
      val set_valueDeclaration: t -> ts_Declaration -> unit [@@js.set "valueDeclaration"]
      val get_members: t -> ts_SymbolTable [@@js.get "members"]
      val set_members: t -> ts_SymbolTable -> unit [@@js.set "members"]
      val get_exports: t -> ts_SymbolTable [@@js.get "exports"]
      val set_exports: t -> ts_SymbolTable -> unit [@@js.set "exports"]
      val get_globalExports: t -> ts_SymbolTable [@@js.get "globalExports"]
      val set_globalExports: t -> ts_SymbolTable -> unit [@@js.set "globalExports"]
    end
    module InternalSymbolName : sig
      type t = ts_InternalSymbolName
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module M__String : sig
      type t = ts___String
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ReadonlyUnderscoreEscapedMap"] ReadonlyUnderscoreEscapedMap : sig
      type 'T t = 'T ts_ReadonlyUnderscoreEscapedMap
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_: 'T t -> key:ts___String -> 'T or_undefined [@@js.call "get"]
      val has: 'T t -> key:ts___String -> bool [@@js.call "has"]
      val forEach: 'T t -> action:(value:'T -> key:ts___String -> unit) -> unit [@@js.call "forEach"]
      val get_size: 'T t -> float [@@js.get "size"]
      val keys: 'T t -> ts___String ts_Iterator [@@js.call "keys"]
      val values: 'T t -> 'T ts_Iterator [@@js.call "values"]
      val entries: 'T t -> (ts___String * 'T) ts_Iterator [@@js.call "entries"]
    end
    module[@js.scope "UnderscoreEscapedMap"] UnderscoreEscapedMap : sig
      type 'T t = 'T ts_UnderscoreEscapedMap
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val set_: 'T t -> key:ts___String -> value:'T -> 'T t [@@js.call "set"]
      val delete: 'T t -> key:ts___String -> bool [@@js.call "delete"]
      val clear: 'T t -> unit [@@js.call "clear"]
      val cast: 'T t -> 'T ts_ReadonlyUnderscoreEscapedMap [@@js.cast]
    end
    module SymbolTable : sig
      type t = ts_SymbolTable
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TypeFlags : sig
      type t = ts_TypeFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DestructuringPattern : sig
      type t = ts_DestructuringPattern
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Type"] Type : sig
      type t = ts_Type
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getFlags: t -> ts_TypeFlags [@@js.call "getFlags"]
      val getSymbol: t -> ts_Symbol or_undefined [@@js.call "getSymbol"]
      val getProperties: t -> ts_Symbol list [@@js.call "getProperties"]
      val getProperty: t -> propertyName:string -> ts_Symbol or_undefined [@@js.call "getProperty"]
      val getApparentProperties: t -> ts_Symbol list [@@js.call "getApparentProperties"]
      val getCallSignatures: t -> ts_Signature list [@@js.call "getCallSignatures"]
      val getConstructSignatures: t -> ts_Signature list [@@js.call "getConstructSignatures"]
      val getStringIndexType: t -> t or_undefined [@@js.call "getStringIndexType"]
      val getNumberIndexType: t -> t or_undefined [@@js.call "getNumberIndexType"]
      val getBaseTypes: t -> ts_BaseType list or_undefined [@@js.call "getBaseTypes"]
      val getNonNullableType: t -> t [@@js.call "getNonNullableType"]
      val getConstraint: t -> t or_undefined [@@js.call "getConstraint"]
      val getDefault: t -> t or_undefined [@@js.call "getDefault"]
      val isUnion: t -> bool [@@js.call "isUnion"]
      val isIntersection: t -> bool [@@js.call "isIntersection"]
      val isUnionOrIntersection: t -> bool [@@js.call "isUnionOrIntersection"]
      val isLiteral: t -> bool [@@js.call "isLiteral"]
      val isStringLiteral: t -> bool [@@js.call "isStringLiteral"]
      val isNumberLiteral: t -> bool [@@js.call "isNumberLiteral"]
      val isTypeParameter: t -> bool [@@js.call "isTypeParameter"]
      val isClassOrInterface: t -> bool [@@js.call "isClassOrInterface"]
      val isClass: t -> bool [@@js.call "isClass"]
      val get_flags: t -> ts_TypeFlags [@@js.get "flags"]
      val set_flags: t -> ts_TypeFlags -> unit [@@js.set "flags"]
      val get_symbol: t -> ts_Symbol [@@js.get "symbol"]
      val set_symbol: t -> ts_Symbol -> unit [@@js.set "symbol"]
      val get_pattern: t -> ts_DestructuringPattern [@@js.get "pattern"]
      val set_pattern: t -> ts_DestructuringPattern -> unit [@@js.set "pattern"]
      val get_aliasSymbol: t -> ts_Symbol [@@js.get "aliasSymbol"]
      val set_aliasSymbol: t -> ts_Symbol -> unit [@@js.set "aliasSymbol"]
      val get_aliasTypeArguments: t -> t list [@@js.get "aliasTypeArguments"]
      val set_aliasTypeArguments: t -> t list -> unit [@@js.set "aliasTypeArguments"]
    end
    module[@js.scope "LiteralType"] LiteralType : sig
      type t = ts_LiteralType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_value: t -> ts_PseudoBigInt or_prim_union [@@js.get "value"]
      val set_value: t -> ts_PseudoBigInt or_prim_union -> unit [@@js.set "value"]
      val get_freshType: t -> t [@@js.get "freshType"]
      val set_freshType: t -> t -> unit [@@js.set "freshType"]
      val get_regularType: t -> t [@@js.get "regularType"]
      val set_regularType: t -> t -> unit [@@js.set "regularType"]
      val cast: t -> ts_Type [@@js.cast]
    end
    module[@js.scope "UniqueESSymbolType"] UniqueESSymbolType : sig
      type t = ts_UniqueESSymbolType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_symbol: t -> ts_Symbol [@@js.get "symbol"]
      val set_symbol: t -> ts_Symbol -> unit [@@js.set "symbol"]
      val get_escapedName: t -> ts___String [@@js.get "escapedName"]
      val set_escapedName: t -> ts___String -> unit [@@js.set "escapedName"]
      val cast: t -> ts_Type [@@js.cast]
    end
    module[@js.scope "StringLiteralType"] StringLiteralType : sig
      type t = ts_StringLiteralType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_value: t -> string [@@js.get "value"]
      val set_value: t -> string -> unit [@@js.set "value"]
      val cast: t -> ts_LiteralType [@@js.cast]
    end
    module[@js.scope "NumberLiteralType"] NumberLiteralType : sig
      type t = ts_NumberLiteralType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_value: t -> float [@@js.get "value"]
      val set_value: t -> float -> unit [@@js.set "value"]
      val cast: t -> ts_LiteralType [@@js.cast]
    end
    module[@js.scope "BigIntLiteralType"] BigIntLiteralType : sig
      type t = ts_BigIntLiteralType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_value: t -> ts_PseudoBigInt [@@js.get "value"]
      val set_value: t -> ts_PseudoBigInt -> unit [@@js.set "value"]
      val cast: t -> ts_LiteralType [@@js.cast]
    end
    module[@js.scope "EnumType"] EnumType : sig
      type t = ts_EnumType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cast: t -> ts_Type [@@js.cast]
    end
    module ObjectFlags : sig
      type t = ts_ObjectFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ObjectType"] ObjectType : sig
      type t = ts_ObjectType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_objectFlags: t -> ts_ObjectFlags [@@js.get "objectFlags"]
      val set_objectFlags: t -> ts_ObjectFlags -> unit [@@js.set "objectFlags"]
      val cast: t -> ts_Type [@@js.cast]
    end
    module[@js.scope "InterfaceType"] InterfaceType : sig
      type t = ts_InterfaceType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_typeParameters: t -> ts_TypeParameter list or_undefined [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_TypeParameter list or_undefined -> unit [@@js.set "typeParameters"]
      val get_outerTypeParameters: t -> ts_TypeParameter list or_undefined [@@js.get "outerTypeParameters"]
      val set_outerTypeParameters: t -> ts_TypeParameter list or_undefined -> unit [@@js.set "outerTypeParameters"]
      val get_localTypeParameters: t -> ts_TypeParameter list or_undefined [@@js.get "localTypeParameters"]
      val set_localTypeParameters: t -> ts_TypeParameter list or_undefined -> unit [@@js.set "localTypeParameters"]
      val get_thisType: t -> ts_TypeParameter or_undefined [@@js.get "thisType"]
      val set_thisType: t -> ts_TypeParameter or_undefined -> unit [@@js.set "thisType"]
      val cast: t -> ts_ObjectType [@@js.cast]
    end
    module BaseType : sig
      type t = ts_BaseType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "InterfaceTypeWithDeclaredMembers"] InterfaceTypeWithDeclaredMembers : sig
      type t = ts_InterfaceTypeWithDeclaredMembers
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_declaredProperties: t -> ts_Symbol list [@@js.get "declaredProperties"]
      val set_declaredProperties: t -> ts_Symbol list -> unit [@@js.set "declaredProperties"]
      val get_declaredCallSignatures: t -> ts_Signature list [@@js.get "declaredCallSignatures"]
      val set_declaredCallSignatures: t -> ts_Signature list -> unit [@@js.set "declaredCallSignatures"]
      val get_declaredConstructSignatures: t -> ts_Signature list [@@js.get "declaredConstructSignatures"]
      val set_declaredConstructSignatures: t -> ts_Signature list -> unit [@@js.set "declaredConstructSignatures"]
      val get_declaredStringIndexInfo: t -> ts_IndexInfo [@@js.get "declaredStringIndexInfo"]
      val set_declaredStringIndexInfo: t -> ts_IndexInfo -> unit [@@js.set "declaredStringIndexInfo"]
      val get_declaredNumberIndexInfo: t -> ts_IndexInfo [@@js.get "declaredNumberIndexInfo"]
      val set_declaredNumberIndexInfo: t -> ts_IndexInfo -> unit [@@js.set "declaredNumberIndexInfo"]
      val cast: t -> ts_InterfaceType [@@js.cast]
    end
    module[@js.scope "TypeReference"] TypeReference : sig
      type t = ts_TypeReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_typeArguments: t -> ts_Type list [@@js.get "typeArguments"]
      val set_typeArguments: t -> ts_Type list -> unit [@@js.set "typeArguments"]
      val get_target: t -> ts_GenericType [@@js.get "target"]
      val set_target: t -> ts_GenericType -> unit [@@js.set "target"]
      val get_node: t -> (([`U_n_169 of (ts_TypeReferenceNode, ts_TypeReferenceNode) union2 [@js 169] | `U_n_174 of (ts_ArrayTypeNode, ts_ArrayTypeNode) union2 [@js 174] | `U_n_175 of (ts_TupleTypeNode, ts_TupleTypeNode) union2 [@js 175]] [@js.union on_field "kind"]), (ts_ArrayTypeNode, (ts_TupleTypeNode, ts_TypeReferenceNode) or_) or_) or_ [@@js.get "node"]
      val set_node: t -> (([`U_n_169 of (ts_TypeReferenceNode, ts_TypeReferenceNode) union2  | `U_n_174 of (ts_ArrayTypeNode, ts_ArrayTypeNode) union2  | `U_n_175 of (ts_TupleTypeNode, ts_TupleTypeNode) union2 ] [@js.union on_field "kind"]), (ts_ArrayTypeNode, (ts_TupleTypeNode, ts_TypeReferenceNode) or_) or_) or_ -> unit [@@js.set "node"]
      val cast: t -> ts_ObjectType [@@js.cast]
    end
    module[@js.scope "DeferredTypeReference"] DeferredTypeReference : sig
      type t = ts_DeferredTypeReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cast: t -> ts_TypeReference [@@js.cast]
    end
    module[@js.scope "GenericType"] GenericType : sig
      type t = ts_GenericType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cast: t -> ts_InterfaceType [@@js.cast]
      val cast': t -> ts_TypeReference [@@js.cast]
    end
    module[@js.scope "TupleType"] TupleType : sig
      type t = ts_TupleType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_minLength: t -> float [@@js.get "minLength"]
      val set_minLength: t -> float -> unit [@@js.set "minLength"]
      val get_hasRestElement: t -> bool [@@js.get "hasRestElement"]
      val set_hasRestElement: t -> bool -> unit [@@js.set "hasRestElement"]
      val get_readonly: t -> bool [@@js.get "readonly"]
      val set_readonly: t -> bool -> unit [@@js.set "readonly"]
      val get_associatedNames: t -> ts___String list [@@js.get "associatedNames"]
      val set_associatedNames: t -> ts___String list -> unit [@@js.set "associatedNames"]
      val cast: t -> ts_GenericType [@@js.cast]
    end
    module[@js.scope "TupleTypeReference"] TupleTypeReference : sig
      type t = ts_TupleTypeReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_target: t -> ts_TupleType [@@js.get "target"]
      val set_target: t -> ts_TupleType -> unit [@@js.set "target"]
      val cast: t -> ts_TypeReference [@@js.cast]
    end
    module[@js.scope "UnionOrIntersectionType"] UnionOrIntersectionType : sig
      type t = ts_UnionOrIntersectionType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_types: t -> ts_Type list [@@js.get "types"]
      val set_types: t -> ts_Type list -> unit [@@js.set "types"]
      val cast: t -> ts_Type [@@js.cast]
    end
    module[@js.scope "UnionType"] UnionType : sig
      type t = ts_UnionType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cast: t -> ts_UnionOrIntersectionType [@@js.cast]
    end
    module[@js.scope "IntersectionType"] IntersectionType : sig
      type t = ts_IntersectionType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cast: t -> ts_UnionOrIntersectionType [@@js.cast]
    end
    module StructuredType : sig
      type t = ts_StructuredType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "EvolvingArrayType"] EvolvingArrayType : sig
      type t = ts_EvolvingArrayType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_elementType: t -> ts_Type [@@js.get "elementType"]
      val set_elementType: t -> ts_Type -> unit [@@js.set "elementType"]
      val get_finalArrayType: t -> ts_Type [@@js.get "finalArrayType"]
      val set_finalArrayType: t -> ts_Type -> unit [@@js.set "finalArrayType"]
      val cast: t -> ts_ObjectType [@@js.cast]
    end
    module[@js.scope "InstantiableType"] InstantiableType : sig
      type t = ts_InstantiableType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cast: t -> ts_Type [@@js.cast]
    end
    module[@js.scope "TypeParameter"] TypeParameter : sig
      type t = ts_TypeParameter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cast: t -> ts_InstantiableType [@@js.cast]
    end
    module[@js.scope "IndexedAccessType"] IndexedAccessType : sig
      type t = ts_IndexedAccessType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_objectType: t -> ts_Type [@@js.get "objectType"]
      val set_objectType: t -> ts_Type -> unit [@@js.set "objectType"]
      val get_indexType: t -> ts_Type [@@js.get "indexType"]
      val set_indexType: t -> ts_Type -> unit [@@js.set "indexType"]
      val get_constraint: t -> ts_Type [@@js.get "constraint"]
      val set_constraint: t -> ts_Type -> unit [@@js.set "constraint"]
      val get_simplifiedForReading: t -> ts_Type [@@js.get "simplifiedForReading"]
      val set_simplifiedForReading: t -> ts_Type -> unit [@@js.set "simplifiedForReading"]
      val get_simplifiedForWriting: t -> ts_Type [@@js.get "simplifiedForWriting"]
      val set_simplifiedForWriting: t -> ts_Type -> unit [@@js.set "simplifiedForWriting"]
      val cast: t -> ts_InstantiableType [@@js.cast]
    end
    module TypeVariable : sig
      type t = ts_TypeVariable
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IndexType"] IndexType : sig
      type t = ts_IndexType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_type: t -> (ts_InstantiableType, ts_UnionOrIntersectionType) or_ [@@js.get "type"]
      val set_type: t -> (ts_InstantiableType, ts_UnionOrIntersectionType) or_ -> unit [@@js.set "type"]
      val cast: t -> ts_InstantiableType [@@js.cast]
    end
    module[@js.scope "ConditionalRoot"] ConditionalRoot : sig
      type t = ts_ConditionalRoot
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_node: t -> ts_ConditionalTypeNode [@@js.get "node"]
      val set_node: t -> ts_ConditionalTypeNode -> unit [@@js.set "node"]
      val get_checkType: t -> ts_Type [@@js.get "checkType"]
      val set_checkType: t -> ts_Type -> unit [@@js.set "checkType"]
      val get_extendsType: t -> ts_Type [@@js.get "extendsType"]
      val set_extendsType: t -> ts_Type -> unit [@@js.set "extendsType"]
      val get_trueType: t -> ts_Type [@@js.get "trueType"]
      val set_trueType: t -> ts_Type -> unit [@@js.set "trueType"]
      val get_falseType: t -> ts_Type [@@js.get "falseType"]
      val set_falseType: t -> ts_Type -> unit [@@js.set "falseType"]
      val get_isDistributive: t -> bool [@@js.get "isDistributive"]
      val set_isDistributive: t -> bool -> unit [@@js.set "isDistributive"]
      val get_inferTypeParameters: t -> ts_TypeParameter list [@@js.get "inferTypeParameters"]
      val set_inferTypeParameters: t -> ts_TypeParameter list -> unit [@@js.set "inferTypeParameters"]
      val get_outerTypeParameters: t -> ts_TypeParameter list [@@js.get "outerTypeParameters"]
      val set_outerTypeParameters: t -> ts_TypeParameter list -> unit [@@js.set "outerTypeParameters"]
      val get_instantiations: t -> ts_Type ts_Map [@@js.get "instantiations"]
      val set_instantiations: t -> ts_Type ts_Map -> unit [@@js.set "instantiations"]
      val get_aliasSymbol: t -> ts_Symbol [@@js.get "aliasSymbol"]
      val set_aliasSymbol: t -> ts_Symbol -> unit [@@js.set "aliasSymbol"]
      val get_aliasTypeArguments: t -> ts_Type list [@@js.get "aliasTypeArguments"]
      val set_aliasTypeArguments: t -> ts_Type list -> unit [@@js.set "aliasTypeArguments"]
    end
    module[@js.scope "ConditionalType"] ConditionalType : sig
      type t = ts_ConditionalType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_root: t -> ts_ConditionalRoot [@@js.get "root"]
      val set_root: t -> ts_ConditionalRoot -> unit [@@js.set "root"]
      val get_checkType: t -> ts_Type [@@js.get "checkType"]
      val set_checkType: t -> ts_Type -> unit [@@js.set "checkType"]
      val get_extendsType: t -> ts_Type [@@js.get "extendsType"]
      val set_extendsType: t -> ts_Type -> unit [@@js.set "extendsType"]
      val get_resolvedTrueType: t -> ts_Type [@@js.get "resolvedTrueType"]
      val set_resolvedTrueType: t -> ts_Type -> unit [@@js.set "resolvedTrueType"]
      val get_resolvedFalseType: t -> ts_Type [@@js.get "resolvedFalseType"]
      val set_resolvedFalseType: t -> ts_Type -> unit [@@js.set "resolvedFalseType"]
      val cast: t -> ts_InstantiableType [@@js.cast]
    end
    module[@js.scope "SubstitutionType"] SubstitutionType : sig
      type t = ts_SubstitutionType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_typeVariable: t -> ts_TypeVariable [@@js.get "typeVariable"]
      val set_typeVariable: t -> ts_TypeVariable -> unit [@@js.set "typeVariable"]
      val get_substitute: t -> ts_Type [@@js.get "substitute"]
      val set_substitute: t -> ts_Type -> unit [@@js.set "substitute"]
      val cast: t -> ts_InstantiableType [@@js.cast]
    end
    module SignatureKind : sig
      type t = ts_SignatureKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "Signature"] Signature : sig
      type t = ts_Signature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getDeclaration: t -> ts_SignatureDeclaration [@@js.call "getDeclaration"]
      val getTypeParameters: t -> ts_TypeParameter list or_undefined [@@js.call "getTypeParameters"]
      val getParameters: t -> ts_Symbol list [@@js.call "getParameters"]
      val getReturnType: t -> ts_Type [@@js.call "getReturnType"]
      val getDocumentationComment: t -> typeChecker:ts_TypeChecker or_undefined -> ts_SymbolDisplayPart list [@@js.call "getDocumentationComment"]
      val getJsDocTags: t -> ts_JSDocTagInfo list [@@js.call "getJsDocTags"]
      val get_declaration: t -> (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union3 [@js 160] | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union3 [@js 161] | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union3 [@js 162] | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union4 [@js 163] | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union4 [@js 164] | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union3 [@js 165] | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union3 [@js 166] | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union3 [@js 167] | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union3 [@js 170] | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union3 [@js 171] | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union3 [@js 201] | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union3 [@js 202] | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union3 [@js 244] | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union3 [@js 300] | `U_n_305 of (ts_JSDocSignature, ts_JSDocSignature) union2 [@js 305]] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_JSDocFunctionType, (ts_JSDocSignature, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, ts_SignatureDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ [@@js.get "declaration"]
      val set_declaration: t -> (([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union3  | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union3  | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union3  | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union4  | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union4  | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union3  | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union3  | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union3  | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union3  | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union3  | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union3  | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union3  | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union3  | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union3  | `U_n_305 of (ts_JSDocSignature, ts_JSDocSignature) union2 ] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_JSDocFunctionType, (ts_JSDocSignature, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, ts_SignatureDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ -> unit [@@js.set "declaration"]
      val get_typeParameters: t -> ts_TypeParameter list [@@js.get "typeParameters"]
      val set_typeParameters: t -> ts_TypeParameter list -> unit [@@js.set "typeParameters"]
      val get_parameters: t -> ts_Symbol list [@@js.get "parameters"]
      val set_parameters: t -> ts_Symbol list -> unit [@@js.set "parameters"]
    end
    module IndexKind : sig
      type t = ts_IndexKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "IndexInfo"] IndexInfo : sig
      type t = ts_IndexInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_type: t -> ts_Type [@@js.get "type"]
      val set_type: t -> ts_Type -> unit [@@js.set "type"]
      val get_isReadonly: t -> bool [@@js.get "isReadonly"]
      val set_isReadonly: t -> bool -> unit [@@js.set "isReadonly"]
      val get_declaration: t -> ts_IndexSignatureDeclaration [@@js.get "declaration"]
      val set_declaration: t -> ts_IndexSignatureDeclaration -> unit [@@js.set "declaration"]
    end
    module InferencePriority : sig
      type t = ts_InferencePriority
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module JsFileExtensionInfo : sig
      type t = ts_JsFileExtensionInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "FileExtensionInfo"] FileExtensionInfo : sig
      type t = ts_FileExtensionInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_extension: t -> string [@@js.get "extension"]
      val set_extension: t -> string -> unit [@@js.set "extension"]
      val get_isMixedContent: t -> bool [@@js.get "isMixedContent"]
      val set_isMixedContent: t -> bool -> unit [@@js.set "isMixedContent"]
      val get_scriptKind: t -> ts_ScriptKind [@@js.get "scriptKind"]
      val set_scriptKind: t -> ts_ScriptKind -> unit [@@js.set "scriptKind"]
    end
    module[@js.scope "DiagnosticMessage"] DiagnosticMessage : sig
      type t = ts_DiagnosticMessage
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_key: t -> string [@@js.get "key"]
      val set_key: t -> string -> unit [@@js.set "key"]
      val get_category: t -> ts_DiagnosticCategory [@@js.get "category"]
      val set_category: t -> ts_DiagnosticCategory -> unit [@@js.set "category"]
      val get_code: t -> float [@@js.get "code"]
      val set_code: t -> float -> unit [@@js.set "code"]
      val get_message: t -> string [@@js.get "message"]
      val set_message: t -> string -> unit [@@js.set "message"]
      val get_reportsUnnecessary: t -> anonymous_interface_0 [@@js.get "reportsUnnecessary"]
      val set_reportsUnnecessary: t -> anonymous_interface_0 -> unit [@@js.set "reportsUnnecessary"]
    end
    module[@js.scope "DiagnosticMessageChain"] DiagnosticMessageChain : sig
      type t = ts_DiagnosticMessageChain
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_messageText: t -> string [@@js.get "messageText"]
      val set_messageText: t -> string -> unit [@@js.set "messageText"]
      val get_category: t -> ts_DiagnosticCategory [@@js.get "category"]
      val set_category: t -> ts_DiagnosticCategory -> unit [@@js.set "category"]
      val get_code: t -> float [@@js.get "code"]
      val set_code: t -> float -> unit [@@js.set "code"]
      val get_next: t -> t list [@@js.get "next"]
      val set_next: t -> t list -> unit [@@js.set "next"]
    end
    module[@js.scope "Diagnostic"] Diagnostic : sig
      type t = ts_Diagnostic
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_reportsUnnecessary: t -> anonymous_interface_0 [@@js.get "reportsUnnecessary"]
      val set_reportsUnnecessary: t -> anonymous_interface_0 -> unit [@@js.set "reportsUnnecessary"]
      val get_source: t -> string [@@js.get "source"]
      val set_source: t -> string -> unit [@@js.set "source"]
      val get_relatedInformation: t -> ts_DiagnosticRelatedInformation list [@@js.get "relatedInformation"]
      val set_relatedInformation: t -> ts_DiagnosticRelatedInformation list -> unit [@@js.set "relatedInformation"]
      val cast: t -> ts_DiagnosticRelatedInformation [@@js.cast]
    end
    module[@js.scope "DiagnosticRelatedInformation"] DiagnosticRelatedInformation : sig
      type t = ts_DiagnosticRelatedInformation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_category: t -> ts_DiagnosticCategory [@@js.get "category"]
      val set_category: t -> ts_DiagnosticCategory -> unit [@@js.set "category"]
      val get_code: t -> float [@@js.get "code"]
      val set_code: t -> float -> unit [@@js.set "code"]
      val get_file: t -> ts_SourceFile or_undefined [@@js.get "file"]
      val set_file: t -> ts_SourceFile or_undefined -> unit [@@js.set "file"]
      val get_start: t -> float or_undefined [@@js.get "start"]
      val set_start: t -> float or_undefined -> unit [@@js.set "start"]
      val get_length: t -> float or_undefined [@@js.get "length"]
      val set_length: t -> float or_undefined -> unit [@@js.set "length"]
      val get_messageText: t -> ts_DiagnosticMessageChain or_string [@@js.get "messageText"]
      val set_messageText: t -> ts_DiagnosticMessageChain or_string -> unit [@@js.set "messageText"]
    end
    module[@js.scope "DiagnosticWithLocation"] DiagnosticWithLocation : sig
      type t = ts_DiagnosticWithLocation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_file: t -> ts_SourceFile [@@js.get "file"]
      val set_file: t -> ts_SourceFile -> unit [@@js.set "file"]
      val get_start: t -> float [@@js.get "start"]
      val set_start: t -> float -> unit [@@js.set "start"]
      val get_length: t -> float [@@js.get "length"]
      val set_length: t -> float -> unit [@@js.set "length"]
      val cast: t -> ts_Diagnostic [@@js.cast]
    end
    module DiagnosticCategory : sig
      type t = ts_DiagnosticCategory
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ModuleResolutionKind : sig
      type t = ts_ModuleResolutionKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "PluginImport"] PluginImport : sig
      type t = ts_PluginImport
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
    end
    module[@js.scope "ProjectReference"] ProjectReference : sig
      type t = ts_ProjectReference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_path: t -> string [@@js.get "path"]
      val set_path: t -> string -> unit [@@js.set "path"]
      val get_originalPath: t -> string [@@js.get "originalPath"]
      val set_originalPath: t -> string -> unit [@@js.set "originalPath"]
      val get_prepend: t -> bool [@@js.get "prepend"]
      val set_prepend: t -> bool -> unit [@@js.set "prepend"]
      val get_circular: t -> bool [@@js.get "circular"]
      val set_circular: t -> bool -> unit [@@js.set "circular"]
    end
    module WatchFileKind : sig
      type t = ts_WatchFileKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WatchDirectoryKind : sig
      type t = ts_WatchDirectoryKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module PollingWatchKind : sig
      type t = ts_PollingWatchKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompilerOptionsValue : sig
      type t = ts_CompilerOptionsValue
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "CompilerOptions"] CompilerOptions : sig
      type t = ts_CompilerOptions
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
      val get_disableSolutionSearching: t -> bool [@@js.get "disableSolutionSearching"]
      val set_disableSolutionSearching: t -> bool -> unit [@@js.set "disableSolutionSearching"]
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
      val get_importsNotUsedAsValues: t -> ts_ImportsNotUsedAsValues [@@js.get "importsNotUsedAsValues"]
      val set_importsNotUsedAsValues: t -> ts_ImportsNotUsedAsValues -> unit [@@js.set "importsNotUsedAsValues"]
      val get_inlineSourceMap: t -> bool [@@js.get "inlineSourceMap"]
      val set_inlineSourceMap: t -> bool -> unit [@@js.set "inlineSourceMap"]
      val get_inlineSources: t -> bool [@@js.get "inlineSources"]
      val set_inlineSources: t -> bool -> unit [@@js.set "inlineSources"]
      val get_isolatedModules: t -> bool [@@js.get "isolatedModules"]
      val set_isolatedModules: t -> bool -> unit [@@js.set "isolatedModules"]
      val get_jsx: t -> ts_JsxEmit [@@js.get "jsx"]
      val set_jsx: t -> ts_JsxEmit -> unit [@@js.set "jsx"]
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
      val get_module: t -> ts_ModuleKind [@@js.get "module"]
      val set_module: t -> ts_ModuleKind -> unit [@@js.set "module"]
      val get_moduleResolution: t -> ts_ModuleResolutionKind [@@js.get "moduleResolution"]
      val set_moduleResolution: t -> ts_ModuleResolutionKind -> unit [@@js.set "moduleResolution"]
      val get_newLine: t -> ts_NewLineKind [@@js.get "newLine"]
      val set_newLine: t -> ts_NewLineKind -> unit [@@js.set "newLine"]
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
      val get_assumeChangesOnlyAffectDirectDependencies: t -> bool [@@js.get "assumeChangesOnlyAffectDirectDependencies"]
      val set_assumeChangesOnlyAffectDirectDependencies: t -> bool -> unit [@@js.set "assumeChangesOnlyAffectDirectDependencies"]
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
      val get_paths: t -> string list ts_MapLike [@@js.get "paths"]
      val set_paths: t -> string list ts_MapLike -> unit [@@js.set "paths"]
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
      val get_incremental: t -> bool [@@js.get "incremental"]
      val set_incremental: t -> bool -> unit [@@js.set "incremental"]
      val get_tsBuildInfoFile: t -> string [@@js.get "tsBuildInfoFile"]
      val set_tsBuildInfoFile: t -> string -> unit [@@js.set "tsBuildInfoFile"]
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
      val get_target: t -> ts_ScriptTarget [@@js.get "target"]
      val set_target: t -> ts_ScriptTarget -> unit [@@js.set "target"]
      val get_traceResolution: t -> bool [@@js.get "traceResolution"]
      val set_traceResolution: t -> bool -> unit [@@js.set "traceResolution"]
      val get_resolveJsonModule: t -> bool [@@js.get "resolveJsonModule"]
      val set_resolveJsonModule: t -> bool -> unit [@@js.set "resolveJsonModule"]
      val get_types: t -> string list [@@js.get "types"]
      val set_types: t -> string list -> unit [@@js.set "types"]
      val get_typeRoots: t -> string list [@@js.get "typeRoots"]
      val set_typeRoots: t -> string list -> unit [@@js.set "typeRoots"]
      val get_esModuleInterop: t -> bool [@@js.get "esModuleInterop"]
      val set_esModuleInterop: t -> bool -> unit [@@js.set "esModuleInterop"]
      val get_useDefineForClassFields: t -> bool [@@js.get "useDefineForClassFields"]
      val set_useDefineForClassFields: t -> bool -> unit [@@js.set "useDefineForClassFields"]
      val get: t -> string -> (([`U_n_290 of (ts_TsConfigSourceFile, ts_TsConfigSourceFile) union2 [@js 290]] [@js.union on_field "kind"]), (ts_CompilerOptionsValue, (ts_TsConfigSourceFile, (string, (bool, (float, (never or_null, (never or_undefined, (string list ts_MapLike, (ts_PluginImport list, (ts_ProjectReference list, (string list, prim_union list) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ or_undefined [@@js.index_get]
      val set: t -> string -> (([`U_n_290 of (ts_TsConfigSourceFile, ts_TsConfigSourceFile) union2 ] [@js.union on_field "kind"]), (ts_CompilerOptionsValue, (ts_TsConfigSourceFile, (string, (bool, (float, (never or_null, (never or_undefined, (string list ts_MapLike, (ts_PluginImport list, (ts_ProjectReference list, (string list, prim_union list) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ or_undefined -> unit [@@js.index_set]
    end
    module[@js.scope "WatchOptions"] WatchOptions : sig
      type t = ts_WatchOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_watchFile: t -> ts_WatchFileKind [@@js.get "watchFile"]
      val set_watchFile: t -> ts_WatchFileKind -> unit [@@js.set "watchFile"]
      val get_watchDirectory: t -> ts_WatchDirectoryKind [@@js.get "watchDirectory"]
      val set_watchDirectory: t -> ts_WatchDirectoryKind -> unit [@@js.set "watchDirectory"]
      val get_fallbackPolling: t -> ts_PollingWatchKind [@@js.get "fallbackPolling"]
      val set_fallbackPolling: t -> ts_PollingWatchKind -> unit [@@js.set "fallbackPolling"]
      val get_synchronousWatchDirectory: t -> bool [@@js.get "synchronousWatchDirectory"]
      val set_synchronousWatchDirectory: t -> bool -> unit [@@js.set "synchronousWatchDirectory"]
      val get: t -> string -> ts_CompilerOptionsValue or_undefined [@@js.index_get]
      val set: t -> string -> ts_CompilerOptionsValue or_undefined -> unit [@@js.index_set]
    end
    module[@js.scope "TypeAcquisition"] TypeAcquisition : sig
      type t = ts_TypeAcquisition
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_enableAutoDiscovery: t -> bool [@@js.get "enableAutoDiscovery"]
      val set_enableAutoDiscovery: t -> bool -> unit [@@js.set "enableAutoDiscovery"]
      val get_enable: t -> bool [@@js.get "enable"]
      val set_enable: t -> bool -> unit [@@js.set "enable"]
      val get_include: t -> string list [@@js.get "include"]
      val set_include: t -> string list -> unit [@@js.set "include"]
      val get_exclude: t -> string list [@@js.get "exclude"]
      val set_exclude: t -> string list -> unit [@@js.set "exclude"]
      val get: t -> string -> string list or_boolean or_undefined [@@js.index_get]
      val set: t -> string -> string list or_boolean or_undefined -> unit [@@js.index_set]
    end
    module ModuleKind : sig
      type t = ts_ModuleKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module JsxEmit : sig
      type t = ts_JsxEmit
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ImportsNotUsedAsValues : sig
      type t = ts_ImportsNotUsedAsValues
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NewLineKind : sig
      type t = ts_NewLineKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "LineAndCharacter"] LineAndCharacter : sig
      type t = ts_LineAndCharacter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_line: t -> float [@@js.get "line"]
      val set_line: t -> float -> unit [@@js.set "line"]
      val get_character: t -> float [@@js.get "character"]
      val set_character: t -> float -> unit [@@js.set "character"]
    end
    module ScriptKind : sig
      type t = ts_ScriptKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ScriptTarget : sig
      type t = ts_ScriptTarget
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LanguageVariant : sig
      type t = ts_LanguageVariant
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ParsedCommandLine"] ParsedCommandLine : sig
      type t = ts_ParsedCommandLine
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_options: t -> ts_CompilerOptions [@@js.get "options"]
      val set_options: t -> ts_CompilerOptions -> unit [@@js.set "options"]
      val get_typeAcquisition: t -> ts_TypeAcquisition [@@js.get "typeAcquisition"]
      val set_typeAcquisition: t -> ts_TypeAcquisition -> unit [@@js.set "typeAcquisition"]
      val get_fileNames: t -> string list [@@js.get "fileNames"]
      val set_fileNames: t -> string list -> unit [@@js.set "fileNames"]
      val get_projectReferences: t -> ts_ProjectReference list [@@js.get "projectReferences"]
      val set_projectReferences: t -> ts_ProjectReference list -> unit [@@js.set "projectReferences"]
      val get_watchOptions: t -> ts_WatchOptions [@@js.get "watchOptions"]
      val set_watchOptions: t -> ts_WatchOptions -> unit [@@js.set "watchOptions"]
      val get_raw: t -> any [@@js.get "raw"]
      val set_raw: t -> any -> unit [@@js.set "raw"]
      val get_errors: t -> ts_Diagnostic list [@@js.get "errors"]
      val set_errors: t -> ts_Diagnostic list -> unit [@@js.set "errors"]
      val get_wildcardDirectories: t -> ts_WatchDirectoryFlags ts_MapLike [@@js.get "wildcardDirectories"]
      val set_wildcardDirectories: t -> ts_WatchDirectoryFlags ts_MapLike -> unit [@@js.set "wildcardDirectories"]
      val get_compileOnSave: t -> bool [@@js.get "compileOnSave"]
      val set_compileOnSave: t -> bool -> unit [@@js.set "compileOnSave"]
    end
    module WatchDirectoryFlags : sig
      type t = ts_WatchDirectoryFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ExpandResult"] ExpandResult : sig
      type t = ts_ExpandResult
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_fileNames: t -> string list [@@js.get "fileNames"]
      val set_fileNames: t -> string list -> unit [@@js.set "fileNames"]
      val get_wildcardDirectories: t -> ts_WatchDirectoryFlags ts_MapLike [@@js.get "wildcardDirectories"]
      val set_wildcardDirectories: t -> ts_WatchDirectoryFlags ts_MapLike -> unit [@@js.set "wildcardDirectories"]
    end
    module[@js.scope "CreateProgramOptions"] CreateProgramOptions : sig
      type t = ts_CreateProgramOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_rootNames: t -> string list [@@js.get "rootNames"]
      val set_rootNames: t -> string list -> unit [@@js.set "rootNames"]
      val get_options: t -> ts_CompilerOptions [@@js.get "options"]
      val set_options: t -> ts_CompilerOptions -> unit [@@js.set "options"]
      val get_projectReferences: t -> ts_ProjectReference list [@@js.get "projectReferences"]
      val set_projectReferences: t -> ts_ProjectReference list -> unit [@@js.set "projectReferences"]
      val get_host: t -> ts_CompilerHost [@@js.get "host"]
      val set_host: t -> ts_CompilerHost -> unit [@@js.set "host"]
      val get_oldProgram: t -> ts_Program [@@js.get "oldProgram"]
      val set_oldProgram: t -> ts_Program -> unit [@@js.set "oldProgram"]
      val get_configFileParsingDiagnostics: t -> ts_Diagnostic list [@@js.get "configFileParsingDiagnostics"]
      val set_configFileParsingDiagnostics: t -> ts_Diagnostic list -> unit [@@js.set "configFileParsingDiagnostics"]
    end
    module[@js.scope "ModuleResolutionHost"] ModuleResolutionHost : sig
      type t = ts_ModuleResolutionHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val fileExists: t -> fileName:string -> bool [@@js.call "fileExists"]
      val readFile: t -> fileName:string -> string or_undefined [@@js.call "readFile"]
      val trace: t -> s:string -> unit [@@js.call "trace"]
      val directoryExists: t -> directoryName:string -> bool [@@js.call "directoryExists"]
      val realpath: t -> path:string -> string [@@js.call "realpath"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
      val getDirectories: t -> path:string -> string list [@@js.call "getDirectories"]
    end
    module[@js.scope "ResolvedModule"] ResolvedModule : sig
      type t = ts_ResolvedModule
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resolvedFileName: t -> string [@@js.get "resolvedFileName"]
      val set_resolvedFileName: t -> string -> unit [@@js.set "resolvedFileName"]
      val get_isExternalLibraryImport: t -> bool [@@js.get "isExternalLibraryImport"]
      val set_isExternalLibraryImport: t -> bool -> unit [@@js.set "isExternalLibraryImport"]
    end
    module[@js.scope "ResolvedModuleFull"] ResolvedModuleFull : sig
      type t = ts_ResolvedModuleFull
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_extension: t -> ts_Extension [@@js.get "extension"]
      val set_extension: t -> ts_Extension -> unit [@@js.set "extension"]
      val get_packageId: t -> ts_PackageId [@@js.get "packageId"]
      val set_packageId: t -> ts_PackageId -> unit [@@js.set "packageId"]
      val cast: t -> ts_ResolvedModule [@@js.cast]
    end
    module[@js.scope "PackageId"] PackageId : sig
      type t = ts_PackageId
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_subModuleName: t -> string [@@js.get "subModuleName"]
      val set_subModuleName: t -> string -> unit [@@js.set "subModuleName"]
      val get_version: t -> string [@@js.get "version"]
      val set_version: t -> string -> unit [@@js.set "version"]
    end
    module Extension : sig
      type t = ts_Extension
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ResolvedModuleWithFailedLookupLocations"] ResolvedModuleWithFailedLookupLocations : sig
      type t = ts_ResolvedModuleWithFailedLookupLocations
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resolvedModule: t -> ts_ResolvedModuleFull or_undefined [@@js.get "resolvedModule"]
    end
    module[@js.scope "ResolvedTypeReferenceDirective"] ResolvedTypeReferenceDirective : sig
      type t = ts_ResolvedTypeReferenceDirective
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_primary: t -> bool [@@js.get "primary"]
      val set_primary: t -> bool -> unit [@@js.set "primary"]
      val get_resolvedFileName: t -> string or_undefined [@@js.get "resolvedFileName"]
      val set_resolvedFileName: t -> string or_undefined -> unit [@@js.set "resolvedFileName"]
      val get_packageId: t -> ts_PackageId [@@js.get "packageId"]
      val set_packageId: t -> ts_PackageId -> unit [@@js.set "packageId"]
      val get_isExternalLibraryImport: t -> bool [@@js.get "isExternalLibraryImport"]
      val set_isExternalLibraryImport: t -> bool -> unit [@@js.set "isExternalLibraryImport"]
    end
    module[@js.scope "ResolvedTypeReferenceDirectiveWithFailedLookupLocations"] ResolvedTypeReferenceDirectiveWithFailedLookupLocations : sig
      type t = ts_ResolvedTypeReferenceDirectiveWithFailedLookupLocations
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_resolvedTypeReferenceDirective: t -> ts_ResolvedTypeReferenceDirective or_undefined [@@js.get "resolvedTypeReferenceDirective"]
      val get_failedLookupLocations: t -> string list [@@js.get "failedLookupLocations"]
    end
    module[@js.scope "CompilerHost"] CompilerHost : sig
      type t = ts_CompilerHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getSourceFile: t -> fileName:string -> languageVersion:ts_ScriptTarget -> ?onError:(message:string -> unit) -> ?shouldCreateNewSourceFile:bool -> unit -> ts_SourceFile or_undefined [@@js.call "getSourceFile"]
      val getSourceFileByPath: t -> fileName:string -> path:ts_Path -> languageVersion:ts_ScriptTarget -> ?onError:(message:string -> unit) -> ?shouldCreateNewSourceFile:bool -> unit -> ts_SourceFile or_undefined [@@js.call "getSourceFileByPath"]
      val getCancellationToken: t -> ts_CancellationToken [@@js.call "getCancellationToken"]
      val getDefaultLibFileName: t -> options:ts_CompilerOptions -> string [@@js.call "getDefaultLibFileName"]
      val getDefaultLibLocation: t -> string [@@js.call "getDefaultLibLocation"]
      val get_writeFile: t -> ts_WriteFileCallback [@@js.get "writeFile"]
      val set_writeFile: t -> ts_WriteFileCallback -> unit [@@js.set "writeFile"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
      val getCanonicalFileName: t -> fileName:string -> string [@@js.call "getCanonicalFileName"]
      val useCaseSensitiveFileNames: t -> bool [@@js.call "useCaseSensitiveFileNames"]
      val getNewLine: t -> string [@@js.call "getNewLine"]
      val readDirectory: t -> rootDir:string -> extensions:string list -> excludes:string list or_undefined -> includes:string list -> ?depth:float -> unit -> string list [@@js.call "readDirectory"]
      val resolveModuleNames: t -> moduleNames:string list -> containingFile:string -> reusedNames:string list or_undefined -> redirectedReference:ts_ResolvedProjectReference or_undefined -> options:ts_CompilerOptions -> ts_ResolvedModule or_undefined list [@@js.call "resolveModuleNames"]
      val resolveTypeReferenceDirectives: t -> typeReferenceDirectiveNames:string list -> containingFile:string -> redirectedReference:ts_ResolvedProjectReference or_undefined -> options:ts_CompilerOptions -> ts_ResolvedTypeReferenceDirective or_undefined list [@@js.call "resolveTypeReferenceDirectives"]
      val getEnvironmentVariable: t -> name:string -> string or_undefined [@@js.call "getEnvironmentVariable"]
      val createHash: t -> data:string -> string [@@js.call "createHash"]
      val getParsedCommandLine: t -> fileName:string -> ts_ParsedCommandLine or_undefined [@@js.call "getParsedCommandLine"]
      val cast: t -> ts_ModuleResolutionHost [@@js.cast]
    end
    module[@js.scope "SourceMapRange"] SourceMapRange : sig
      type t = ts_SourceMapRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_source: t -> ts_SourceMapSource [@@js.get "source"]
      val set_source: t -> ts_SourceMapSource -> unit [@@js.set "source"]
      val cast: t -> ts_TextRange [@@js.cast]
    end
    module[@js.scope "SourceMapSource"] SourceMapSource : sig
      type t = ts_SourceMapSource
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getLineAndCharacterOfPosition: t -> pos:float -> ts_LineAndCharacter [@@js.call "getLineAndCharacterOfPosition"]
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val skipTrivia: t -> pos:float -> float [@@js.call "skipTrivia"]
    end
    module EmitFlags : sig
      type t = ts_EmitFlags
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "EmitHelper"] EmitHelper : sig
      type t = ts_EmitHelper
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val get_scoped: t -> bool [@@js.get "scoped"]
      val get_text: t -> (node:ts_EmitHelperUniqueNameCallback -> string) or_string [@@js.get "text"]
      val get_priority: t -> float [@@js.get "priority"]
    end
    module[@js.scope "UnscopedEmitHelper"] UnscopedEmitHelper : sig
      type t = ts_UnscopedEmitHelper
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_scoped: t -> ([`L_b_false[@js false]] [@js.enum]) [@@js.get "scoped"]
      val get_text: t -> string [@@js.get "text"]
      val cast: t -> ts_EmitHelper [@@js.cast]
    end
    module[@js.scope "EmitHelperUniqueNameCallback"] EmitHelperUniqueNameCallback : sig
      type t = ts_EmitHelperUniqueNameCallback
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> name:string -> string [@@js.apply]
    end
    module EmitHint : sig
      type t = ts_EmitHint
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "TransformationContext"] TransformationContext : sig
      type t = ts_TransformationContext
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getCompilerOptions: t -> ts_CompilerOptions [@@js.call "getCompilerOptions"]
      val startLexicalEnvironment: t -> unit [@@js.call "startLexicalEnvironment"]
      val suspendLexicalEnvironment: t -> unit [@@js.call "suspendLexicalEnvironment"]
      val resumeLexicalEnvironment: t -> unit [@@js.call "resumeLexicalEnvironment"]
      val endLexicalEnvironment: t -> ts_Statement list or_undefined [@@js.call "endLexicalEnvironment"]
      val hoistFunctionDeclaration: t -> node:ts_FunctionDeclaration -> unit [@@js.call "hoistFunctionDeclaration"]
      val hoistVariableDeclaration: t -> node:ts_Identifier -> unit [@@js.call "hoistVariableDeclaration"]
      val requestEmitHelper: t -> helper:ts_EmitHelper -> unit [@@js.call "requestEmitHelper"]
      val readEmitHelpers: t -> ts_EmitHelper list or_undefined [@@js.call "readEmitHelpers"]
      val enableSubstitution: t -> kind:ts_SyntaxKind -> unit [@@js.call "enableSubstitution"]
      val isSubstitutionEnabled: t -> node:ts_Node -> bool [@@js.call "isSubstitutionEnabled"]
      val onSubstituteNode: t -> hint:ts_EmitHint -> node:ts_Node -> ts_Node [@@js.call "onSubstituteNode"]
      val enableEmitNotification: t -> kind:ts_SyntaxKind -> unit [@@js.call "enableEmitNotification"]
      val isEmitNotificationEnabled: t -> node:ts_Node -> bool [@@js.call "isEmitNotificationEnabled"]
      val onEmitNode: t -> hint:ts_EmitHint -> node:ts_Node -> emitCallback:(hint:ts_EmitHint -> node:ts_Node -> unit) -> unit [@@js.call "onEmitNode"]
    end
    module[@js.scope "TransformationResult"] TransformationResult : sig
      type 'T t = 'T ts_TransformationResult
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_transformed: 'T t -> 'T list [@@js.get "transformed"]
      val set_transformed: 'T t -> 'T list -> unit [@@js.set "transformed"]
      val get_diagnostics: 'T t -> ts_DiagnosticWithLocation list [@@js.get "diagnostics"]
      val set_diagnostics: 'T t -> ts_DiagnosticWithLocation list -> unit [@@js.set "diagnostics"]
      val substituteNode: 'T t -> hint:ts_EmitHint -> node:ts_Node -> ts_Node [@@js.call "substituteNode"]
      val emitNodeWithNotification: 'T t -> hint:ts_EmitHint -> node:ts_Node -> emitCallback:(hint:ts_EmitHint -> node:ts_Node -> unit) -> unit [@@js.call "emitNodeWithNotification"]
      val isEmitNotificationEnabled: 'T t -> node:ts_Node -> bool [@@js.call "isEmitNotificationEnabled"]
      val dispose: 'T t -> unit [@@js.call "dispose"]
    end
    module[@js.scope "TransformerFactory"] TransformerFactory : sig
      type 'T t = 'T ts_TransformerFactory
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val apply: 'T t -> context:ts_TransformationContext -> 'T ts_Transformer [@@js.apply]
    end
    module[@js.scope "Transformer"] Transformer : sig
      type 'T t = 'T ts_Transformer
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val apply: 'T t -> node:'T -> 'T [@@js.apply]
    end
    module[@js.scope "Visitor"] Visitor : sig
      type t = ts_Visitor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> node:ts_Node -> ts_Node ts_VisitResult [@@js.apply]
    end
    module VisitResult : sig
      type 'T t = 'T ts_VisitResult
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    module[@js.scope "Printer"] Printer : sig
      type t = ts_Printer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val printNode: t -> hint:ts_EmitHint -> node:ts_Node -> sourceFile:ts_SourceFile -> string [@@js.call "printNode"]
      val printList: t -> format:ts_ListFormat -> list:'T ts_NodeArray -> sourceFile:ts_SourceFile -> string [@@js.call "printList"]
      val printFile: t -> sourceFile:ts_SourceFile -> string [@@js.call "printFile"]
      val printBundle: t -> bundle:ts_Bundle -> string [@@js.call "printBundle"]
    end
    module[@js.scope "PrintHandlers"] PrintHandlers : sig
      type t = ts_PrintHandlers
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val hasGlobalName: t -> name:string -> bool [@@js.call "hasGlobalName"]
      val onEmitNode: t -> hint:ts_EmitHint -> node:ts_Node or_undefined -> emitCallback:(hint:ts_EmitHint -> node:ts_Node or_undefined -> unit) -> unit [@@js.call "onEmitNode"]
      val isEmitNotificationEnabled: t -> node:ts_Node or_undefined -> bool [@@js.call "isEmitNotificationEnabled"]
      val substituteNode: t -> hint:ts_EmitHint -> node:ts_Node -> ts_Node [@@js.call "substituteNode"]
    end
    module[@js.scope "PrinterOptions"] PrinterOptions : sig
      type t = ts_PrinterOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_removeComments: t -> bool [@@js.get "removeComments"]
      val set_removeComments: t -> bool -> unit [@@js.set "removeComments"]
      val get_newLine: t -> ts_NewLineKind [@@js.get "newLine"]
      val set_newLine: t -> ts_NewLineKind -> unit [@@js.set "newLine"]
      val get_omitTrailingSemicolon: t -> bool [@@js.get "omitTrailingSemicolon"]
      val set_omitTrailingSemicolon: t -> bool -> unit [@@js.set "omitTrailingSemicolon"]
      val get_noEmitHelpers: t -> bool [@@js.get "noEmitHelpers"]
      val set_noEmitHelpers: t -> bool -> unit [@@js.set "noEmitHelpers"]
    end
    module[@js.scope "GetEffectiveTypeRootsHost"] GetEffectiveTypeRootsHost : sig
      type t = ts_GetEffectiveTypeRootsHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val directoryExists: t -> directoryName:string -> bool [@@js.call "directoryExists"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
    end
    module[@js.scope "ModuleSpecifierResolutionHost"] ModuleSpecifierResolutionHost : sig
      type t = ts_ModuleSpecifierResolutionHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val useCaseSensitiveFileNames: t -> bool [@@js.call "useCaseSensitiveFileNames"]
      val fileExists: t -> path:string -> bool [@@js.call "fileExists"]
      val readFile: t -> path:string -> string or_undefined [@@js.call "readFile"]
      val cast: t -> ts_GetEffectiveTypeRootsHost [@@js.cast]
    end
    module[@js.scope "TextSpan"] TextSpan : sig
      type t = ts_TextSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_start: t -> float [@@js.get "start"]
      val set_start: t -> float -> unit [@@js.set "start"]
      val get_length: t -> float [@@js.get "length"]
      val set_length: t -> float -> unit [@@js.set "length"]
    end
    module[@js.scope "TextChangeRange"] TextChangeRange : sig
      type t = ts_TextChangeRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_span: t -> ts_TextSpan [@@js.get "span"]
      val set_span: t -> ts_TextSpan -> unit [@@js.set "span"]
      val get_newLength: t -> float [@@js.get "newLength"]
      val set_newLength: t -> float -> unit [@@js.set "newLength"]
    end
    module[@js.scope "SyntaxList"] SyntaxList : sig
      type t = ts_SyntaxList
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get__children: t -> ts_Node list [@@js.get "_children"]
      val set__children: t -> ts_Node list -> unit [@@js.set "_children"]
      val cast: t -> ts_Node [@@js.cast]
    end
    module ListFormat : sig
      type t = ts_ListFormat
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "UserPreferences"] UserPreferences : sig
      type t = ts_UserPreferences
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_disableSuggestions: t -> bool [@@js.get "disableSuggestions"]
      val get_quotePreference: t -> ([`L_s39_auto[@js "auto"] | `L_s58_double[@js "double"] | `L_s121_single[@js "single"]] [@js.enum]) [@@js.get "quotePreference"]
      val get_includeCompletionsForModuleExports: t -> bool [@@js.get "includeCompletionsForModuleExports"]
      val get_includeAutomaticOptionalChainCompletions: t -> bool [@@js.get "includeAutomaticOptionalChainCompletions"]
      val get_includeCompletionsWithInsertText: t -> bool [@@js.get "includeCompletionsWithInsertText"]
      val get_importModuleSpecifierPreference: t -> ([`L_s39_auto[@js "auto"] | `L_s100_non_relative[@js "non-relative"] | `L_s116_relative[@js "relative"]] [@js.enum]) [@@js.get "importModuleSpecifierPreference"]
      val get_importModuleSpecifierEnding: t -> ([`L_s77_index[@js "index"] | `L_s83_js[@js "js"] | `L_s97_minimal[@js "minimal"]] [@js.enum]) [@@js.get "importModuleSpecifierEnding"]
      val get_allowTextChangesInNewFiles: t -> bool [@@js.get "allowTextChangesInNewFiles"]
      val get_providePrefixAndSuffixTextForRename: t -> bool [@@js.get "providePrefixAndSuffixTextForRename"]
    end
    module[@js.scope "PseudoBigInt"] PseudoBigInt : sig
      type t = ts_PseudoBigInt
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_negative: t -> bool [@@js.get "negative"]
      val set_negative: t -> bool -> unit [@@js.set "negative"]
      val get_base10Value: t -> string [@@js.get "base10Value"]
      val set_base10Value: t -> string -> unit [@@js.set "base10Value"]
    end
    (* export {}; *)
    module FileWatcherEventKind : sig
      type t = ts_FileWatcherEventKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "FileWatcherCallback"] FileWatcherCallback : sig
      type t = ts_FileWatcherCallback
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> fileName:string -> eventKind:ts_FileWatcherEventKind -> unit [@@js.apply]
    end
    module[@js.scope "DirectoryWatcherCallback"] DirectoryWatcherCallback : sig
      type t = ts_DirectoryWatcherCallback
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> fileName:string -> unit [@@js.apply]
    end
    module[@js.scope "System"] System : sig
      type t = ts_System
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_args: t -> string list [@@js.get "args"]
      val set_args: t -> string list -> unit [@@js.set "args"]
      val get_newLine: t -> string [@@js.get "newLine"]
      val set_newLine: t -> string -> unit [@@js.set "newLine"]
      val get_useCaseSensitiveFileNames: t -> bool [@@js.get "useCaseSensitiveFileNames"]
      val set_useCaseSensitiveFileNames: t -> bool -> unit [@@js.set "useCaseSensitiveFileNames"]
      val write: t -> s:string -> unit [@@js.call "write"]
      val writeOutputIsTTY: t -> bool [@@js.call "writeOutputIsTTY"]
      val readFile: t -> path:string -> ?encoding:string -> unit -> string or_undefined [@@js.call "readFile"]
      val getFileSize: t -> path:string -> float [@@js.call "getFileSize"]
      val writeFile: t -> path:string -> data:string -> ?writeByteOrderMark:bool -> unit -> unit [@@js.call "writeFile"]
      val watchFile: t -> path:string -> callback:ts_FileWatcherCallback -> ?pollingInterval:float -> ?options:ts_WatchOptions -> unit -> ts_FileWatcher [@@js.call "watchFile"]
      val watchDirectory: t -> path:string -> callback:ts_DirectoryWatcherCallback -> ?recursive:bool -> ?options:ts_WatchOptions -> unit -> ts_FileWatcher [@@js.call "watchDirectory"]
      val resolvePath: t -> path:string -> string [@@js.call "resolvePath"]
      val fileExists: t -> path:string -> bool [@@js.call "fileExists"]
      val directoryExists: t -> path:string -> bool [@@js.call "directoryExists"]
      val createDirectory: t -> path:string -> unit [@@js.call "createDirectory"]
      val getExecutingFilePath: t -> string [@@js.call "getExecutingFilePath"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
      val getDirectories: t -> path:string -> string list [@@js.call "getDirectories"]
      val readDirectory: t -> path:string -> ?extensions:string list -> ?exclude:string list -> ?include_:string list -> ?depth:float -> unit -> string list [@@js.call "readDirectory"]
      val getModifiedTime: t -> path:string -> Date.t_0 or_undefined [@@js.call "getModifiedTime"]
      val setModifiedTime: t -> path:string -> time:Date.t_0 -> unit [@@js.call "setModifiedTime"]
      val deleteFile: t -> path:string -> unit [@@js.call "deleteFile"]
      val createHash: t -> data:string -> string [@@js.call "createHash"]
      val createSHA256Hash: t -> data:string -> string [@@js.call "createSHA256Hash"]
      val getMemoryUsage: t -> float [@@js.call "getMemoryUsage"]
      val exit: t -> ?exitCode:float -> unit -> unit [@@js.call "exit"]
      val realpath: t -> path:string -> string [@@js.call "realpath"]
      val setTimeout: t -> callback:(args:(any list [@js.variadic]) -> unit) -> ms:float -> args:(any list [@js.variadic]) -> any [@@js.call "setTimeout"]
      val clearTimeout: t -> timeoutId:any -> unit [@@js.call "clearTimeout"]
      val clearScreen: t -> unit [@@js.call "clearScreen"]
      val base64decode: t -> input:string -> string [@@js.call "base64decode"]
      val base64encode: t -> input:string -> string [@@js.call "base64encode"]
    end
    module[@js.scope "FileWatcher"] FileWatcher : sig
      type t = ts_FileWatcher
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val close: t -> unit [@@js.call "close"]
    end
    val getNodeMajorVersion: unit -> float or_undefined [@@js.global "getNodeMajorVersion"]
    val sys: ts_System [@@js.global "sys"]
    (* export {}; *)
    module[@js.scope "ErrorCallback"] ErrorCallback : sig
      type t = ts_ErrorCallback
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> message:ts_DiagnosticMessage -> length:float -> unit [@@js.apply]
    end
    module[@js.scope "Scanner"] Scanner : sig
      type t = ts_Scanner
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getStartPos: t -> float [@@js.call "getStartPos"]
      val getToken: t -> ts_SyntaxKind [@@js.call "getToken"]
      val getTextPos: t -> float [@@js.call "getTextPos"]
      val getTokenPos: t -> float [@@js.call "getTokenPos"]
      val getTokenText: t -> string [@@js.call "getTokenText"]
      val getTokenValue: t -> string [@@js.call "getTokenValue"]
      val hasUnicodeEscape: t -> bool [@@js.call "hasUnicodeEscape"]
      val hasExtendedUnicodeEscape: t -> bool [@@js.call "hasExtendedUnicodeEscape"]
      val hasPrecedingLineBreak: t -> bool [@@js.call "hasPrecedingLineBreak"]
      val isIdentifier: t -> bool [@@js.call "isIdentifier"]
      val isReservedWord: t -> bool [@@js.call "isReservedWord"]
      val isUnterminated: t -> bool [@@js.call "isUnterminated"]
      val reScanGreaterToken: t -> ts_SyntaxKind [@@js.call "reScanGreaterToken"]
      val reScanSlashToken: t -> ts_SyntaxKind [@@js.call "reScanSlashToken"]
      val reScanTemplateToken: t -> ts_SyntaxKind [@@js.call "reScanTemplateToken"]
      val scanJsxIdentifier: t -> ts_SyntaxKind [@@js.call "scanJsxIdentifier"]
      val scanJsxAttributeValue: t -> ts_SyntaxKind [@@js.call "scanJsxAttributeValue"]
      val reScanJsxAttributeValue: t -> ts_SyntaxKind [@@js.call "reScanJsxAttributeValue"]
      val reScanJsxToken: t -> ts_JsxTokenSyntaxKind [@@js.call "reScanJsxToken"]
      val reScanLessThanToken: t -> ts_SyntaxKind [@@js.call "reScanLessThanToken"]
      val reScanQuestionToken: t -> ts_SyntaxKind [@@js.call "reScanQuestionToken"]
      val scanJsxToken: t -> ts_JsxTokenSyntaxKind [@@js.call "scanJsxToken"]
      val scanJsDocToken: t -> ts_JSDocSyntaxKind [@@js.call "scanJsDocToken"]
      val scan: t -> ts_SyntaxKind [@@js.call "scan"]
      val getText: t -> string [@@js.call "getText"]
      val setText: t -> text:string or_undefined -> ?start:float -> ?length:float -> unit -> unit [@@js.call "setText"]
      val setOnError: t -> onError:ts_ErrorCallback or_undefined -> unit [@@js.call "setOnError"]
      val setScriptTarget: t -> scriptTarget:ts_ScriptTarget -> unit [@@js.call "setScriptTarget"]
      val setLanguageVariant: t -> variant:ts_LanguageVariant -> unit [@@js.call "setLanguageVariant"]
      val setTextPos: t -> textPos:float -> unit [@@js.call "setTextPos"]
      val lookAhead: t -> callback:(unit -> 'T) -> 'T [@@js.call "lookAhead"]
      val scanRange: t -> start:float -> length:float -> callback:(unit -> 'T) -> 'T [@@js.call "scanRange"]
      val tryScan: t -> callback:(unit -> 'T) -> 'T [@@js.call "tryScan"]
    end
    val tokenToString: t:ts_SyntaxKind -> string or_undefined [@@js.global "tokenToString"]
    val getPositionOfLineAndCharacter: sourceFile:ts_SourceFileLike -> line:float -> character:float -> float [@@js.global "getPositionOfLineAndCharacter"]
    val getLineAndCharacterOfPosition: sourceFile:ts_SourceFileLike -> position:float -> ts_LineAndCharacter [@@js.global "getLineAndCharacterOfPosition"]
    val isWhiteSpaceLike: ch:float -> bool [@@js.global "isWhiteSpaceLike"]
    val isWhiteSpaceSingleLine: ch:float -> bool [@@js.global "isWhiteSpaceSingleLine"]
    val isLineBreak: ch:float -> bool [@@js.global "isLineBreak"]
    val couldStartTrivia: text:string -> pos:float -> bool [@@js.global "couldStartTrivia"]
    val forEachLeadingCommentRange: text:string -> pos:float -> cb:(pos:float -> end_:float -> kind:ts_CommentKind -> hasTrailingNewLine:bool -> 'U) -> 'U or_undefined [@@js.global "forEachLeadingCommentRange"]
    val forEachLeadingCommentRange: text:string -> pos:float -> cb:(pos:float -> end_:float -> kind:ts_CommentKind -> hasTrailingNewLine:bool -> state:'T -> 'U) -> state:'T -> 'U or_undefined [@@js.global "forEachLeadingCommentRange"]
    val forEachTrailingCommentRange: text:string -> pos:float -> cb:(pos:float -> end_:float -> kind:ts_CommentKind -> hasTrailingNewLine:bool -> 'U) -> 'U or_undefined [@@js.global "forEachTrailingCommentRange"]
    val forEachTrailingCommentRange: text:string -> pos:float -> cb:(pos:float -> end_:float -> kind:ts_CommentKind -> hasTrailingNewLine:bool -> state:'T -> 'U) -> state:'T -> 'U or_undefined [@@js.global "forEachTrailingCommentRange"]
    val reduceEachLeadingCommentRange: text:string -> pos:float -> cb:(pos:float -> end_:float -> kind:ts_CommentKind -> hasTrailingNewLine:bool -> state:'T -> memo:'U -> 'U) -> state:'T -> initial:'U -> 'U or_undefined [@@js.global "reduceEachLeadingCommentRange"]
    val reduceEachTrailingCommentRange: text:string -> pos:float -> cb:(pos:float -> end_:float -> kind:ts_CommentKind -> hasTrailingNewLine:bool -> state:'T -> memo:'U -> 'U) -> state:'T -> initial:'U -> 'U or_undefined [@@js.global "reduceEachTrailingCommentRange"]
    val getLeadingCommentRanges: text:string -> pos:float -> ts_CommentRange list or_undefined [@@js.global "getLeadingCommentRanges"]
    val getTrailingCommentRanges: text:string -> pos:float -> ts_CommentRange list or_undefined [@@js.global "getTrailingCommentRanges"]
    val getShebang: text:string -> string or_undefined [@@js.global "getShebang"]
    val isIdentifierStart: ch:float -> languageVersion:ts_ScriptTarget or_undefined -> bool [@@js.global "isIdentifierStart"]
    val isIdentifierPart: ch:float -> languageVersion:ts_ScriptTarget or_undefined -> bool [@@js.global "isIdentifierPart"]
    val createScanner: languageVersion:ts_ScriptTarget -> skipTrivia:bool -> ?languageVariant:ts_LanguageVariant -> ?textInitial:string -> ?onError:ts_ErrorCallback -> ?start:float -> ?length:float -> unit -> ts_Scanner [@@js.global "createScanner"]
    val isExternalModuleNameRelative: moduleName:string -> bool [@@js.global "isExternalModuleNameRelative"]
    val sortAndDeduplicateDiagnostics: diagnostics:'T list -> 'T ts_SortedReadonlyArray [@@js.global "sortAndDeduplicateDiagnostics"]
    val getDefaultLibFileName: options:ts_CompilerOptions -> string [@@js.global "getDefaultLibFileName"]
    val textSpanEnd: span:ts_TextSpan -> float [@@js.global "textSpanEnd"]
    val textSpanIsEmpty: span:ts_TextSpan -> bool [@@js.global "textSpanIsEmpty"]
    val textSpanContainsPosition: span:ts_TextSpan -> position:float -> bool [@@js.global "textSpanContainsPosition"]
    val textSpanContainsTextSpan: span:ts_TextSpan -> other:ts_TextSpan -> bool [@@js.global "textSpanContainsTextSpan"]
    val textSpanOverlapsWith: span:ts_TextSpan -> other:ts_TextSpan -> bool [@@js.global "textSpanOverlapsWith"]
    val textSpanOverlap: span1:ts_TextSpan -> span2:ts_TextSpan -> ts_TextSpan or_undefined [@@js.global "textSpanOverlap"]
    val textSpanIntersectsWithTextSpan: span:ts_TextSpan -> other:ts_TextSpan -> bool [@@js.global "textSpanIntersectsWithTextSpan"]
    val textSpanIntersectsWith: span:ts_TextSpan -> start:float -> length:float -> bool [@@js.global "textSpanIntersectsWith"]
    val decodedTextSpanIntersectsWith: start1:float -> length1:float -> start2:float -> length2:float -> bool [@@js.global "decodedTextSpanIntersectsWith"]
    val textSpanIntersectsWithPosition: span:ts_TextSpan -> position:float -> bool [@@js.global "textSpanIntersectsWithPosition"]
    val textSpanIntersection: span1:ts_TextSpan -> span2:ts_TextSpan -> ts_TextSpan or_undefined [@@js.global "textSpanIntersection"]
    val createTextSpan: start:float -> length:float -> ts_TextSpan [@@js.global "createTextSpan"]
    val createTextSpanFromBounds: start:float -> end_:float -> ts_TextSpan [@@js.global "createTextSpanFromBounds"]
    val textChangeRangeNewSpan: range:ts_TextChangeRange -> ts_TextSpan [@@js.global "textChangeRangeNewSpan"]
    val textChangeRangeIsUnchanged: range:ts_TextChangeRange -> bool [@@js.global "textChangeRangeIsUnchanged"]
    val createTextChangeRange: span:ts_TextSpan -> newLength:float -> ts_TextChangeRange [@@js.global "createTextChangeRange"]
    val unchangedTextChangeRange: ts_TextChangeRange [@@js.global "unchangedTextChangeRange"]
    val collapseTextChangeRangesAcrossMultipleVersions: changes:ts_TextChangeRange list -> ts_TextChangeRange [@@js.global "collapseTextChangeRangesAcrossMultipleVersions"]
    val getTypeParameterOwner: d:ts_Declaration -> ts_Declaration or_undefined [@@js.global "getTypeParameterOwner"]
    module ParameterPropertyDeclaration : sig
      type t = ts_ParameterPropertyDeclaration
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val isParameterPropertyDeclaration: node:ts_Node -> parent:ts_Node -> bool [@@js.global "isParameterPropertyDeclaration"]
    val isEmptyBindingPattern: node:ts_BindingName -> bool [@@js.global "isEmptyBindingPattern"]
    val isEmptyBindingElement: node:ts_BindingElement -> bool [@@js.global "isEmptyBindingElement"]
    val walkUpBindingElementsAndPatterns: binding:ts_BindingElement -> (([`U_n_156 of (ts_ParameterDeclaration, ts_ParameterDeclaration) union2 [@js 156] | `U_n_242 of (ts_VariableDeclaration, ts_VariableDeclaration) union2 [@js 242]] [@js.union on_field "kind"]), (ts_ParameterDeclaration, ts_VariableDeclaration) or_) or_ [@@js.global "walkUpBindingElementsAndPatterns"]
    val getCombinedModifierFlags: node:ts_Declaration -> ts_ModifierFlags [@@js.global "getCombinedModifierFlags"]
    val getCombinedNodeFlags: node:ts_Node -> ts_NodeFlags [@@js.global "getCombinedNodeFlags"]
    val validateLocaleAndSetLanguage: locale:string -> sys:anonymous_interface_17 -> ?errors:ts_Diagnostic ts_Push -> unit -> unit [@@js.global "validateLocaleAndSetLanguage"]
    val getOriginalNode: node:ts_Node -> ts_Node [@@js.global "getOriginalNode"]
    val getOriginalNode: node:ts_Node -> nodeTest:(node:ts_Node -> bool) -> 'T [@@js.global "getOriginalNode"]
    val getOriginalNode: node:ts_Node or_undefined -> ts_Node or_undefined [@@js.global "getOriginalNode"]
    val getOriginalNode: node:ts_Node or_undefined -> nodeTest:(node:ts_Node or_undefined -> bool) -> 'T or_undefined [@@js.global "getOriginalNode"]
    val isParseTreeNode: node:ts_Node -> bool [@@js.global "isParseTreeNode"]
    val getParseTreeNode: node:ts_Node -> ts_Node [@@js.global "getParseTreeNode"]
    val getParseTreeNode: node:ts_Node or_undefined -> ?nodeTest:(node:ts_Node -> bool) -> unit -> 'T or_undefined [@@js.global "getParseTreeNode"]
    val escapeLeadingUnderscores: identifier:string -> ts___String [@@js.global "escapeLeadingUnderscores"]
    val unescapeLeadingUnderscores: identifier:ts___String -> string [@@js.global "unescapeLeadingUnderscores"]
    val idText: identifierOrPrivateName:(([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_PrivateIdentifier) or_) or_ -> string [@@js.global "idText"]
    val symbolName: symbol:ts_Symbol -> string [@@js.global "symbolName"]
    val getNameOfJSDocTypedef: declaration:ts_JSDocTypedefTag -> (([`U_n_75 of (ts_Identifier, ts_Identifier) union2 [@js 75] | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 [@js 76]] [@js.union on_field "kind"]), (ts_Identifier, ts_PrivateIdentifier) or_) or_ or_undefined [@@js.global "getNameOfJSDocTypedef"]
    val getNameOfDeclaration: declaration:(ts_Declaration, ts_Expression) or_ -> ts_DeclarationName or_undefined [@@js.global "getNameOfDeclaration"]
    val getJSDocParameterTags: param:ts_ParameterDeclaration -> ts_JSDocParameterTag list [@@js.global "getJSDocParameterTags"]
    val getJSDocTypeParameterTags: param:ts_TypeParameterDeclaration -> ts_JSDocTemplateTag list [@@js.global "getJSDocTypeParameterTags"]
    val hasJSDocParameterTags: node:(([`U_n_160 of (ts_MethodSignature, ts_MethodSignature, ts_MethodSignature) union3  | `U_n_161 of (ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration, ts_MethodDeclaration) union6  | `U_n_162 of (ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration, ts_ConstructorDeclaration) union6  | `U_n_163 of (ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration, ts_GetAccessorDeclaration) union7  | `U_n_164 of (ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration, ts_SetAccessorDeclaration) union7  | `U_n_165 of (ts_CallSignatureDeclaration, ts_CallSignatureDeclaration, ts_CallSignatureDeclaration) union3  | `U_n_166 of (ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration, ts_ConstructSignatureDeclaration) union3  | `U_n_167 of (ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration, ts_IndexSignatureDeclaration) union3  | `U_n_170 of (ts_FunctionTypeNode, ts_FunctionTypeNode, ts_FunctionTypeNode) union3  | `U_n_171 of (ts_ConstructorTypeNode, ts_ConstructorTypeNode, ts_ConstructorTypeNode) union3  | `U_n_201 of (ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression, ts_FunctionExpression) union6  | `U_n_202 of (ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction, ts_ArrowFunction) union6  | `U_n_244 of (ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration, ts_FunctionDeclaration) union6  | `U_n_300 of (ts_JSDocFunctionType, ts_JSDocFunctionType, ts_JSDocFunctionType) union3 ] [@js.union on_field "kind"]), (ts_AccessorDeclaration, (ts_ArrowFunction, (ts_ArrowFunction, (ts_CallSignatureDeclaration, (ts_ConstructSignatureDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorDeclaration, (ts_ConstructorTypeNode, (ts_FunctionDeclaration, (ts_FunctionDeclaration, (ts_FunctionExpression, (ts_FunctionExpression, (ts_FunctionLikeDeclaration, (ts_FunctionTypeNode, (ts_GetAccessorDeclaration, (ts_GetAccessorDeclaration, (ts_IndexSignatureDeclaration, (ts_JSDocFunctionType, (ts_MethodDeclaration, (ts_MethodDeclaration, (ts_MethodSignature, (ts_SetAccessorDeclaration, (ts_SetAccessorDeclaration, ts_SignatureDeclaration) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_ -> bool [@@js.global "hasJSDocParameterTags"]
    val getJSDocAugmentsTag: node:ts_Node -> ts_JSDocAugmentsTag or_undefined [@@js.global "getJSDocAugmentsTag"]
    val getJSDocClassTag: node:ts_Node -> ts_JSDocClassTag or_undefined [@@js.global "getJSDocClassTag"]
    val getJSDocPublicTag: node:ts_Node -> ts_JSDocPublicTag or_undefined [@@js.global "getJSDocPublicTag"]
    val getJSDocPrivateTag: node:ts_Node -> ts_JSDocPrivateTag or_undefined [@@js.global "getJSDocPrivateTag"]
    val getJSDocProtectedTag: node:ts_Node -> ts_JSDocProtectedTag or_undefined [@@js.global "getJSDocProtectedTag"]
    val getJSDocReadonlyTag: node:ts_Node -> ts_JSDocReadonlyTag or_undefined [@@js.global "getJSDocReadonlyTag"]
    val getJSDocEnumTag: node:ts_Node -> ts_JSDocEnumTag or_undefined [@@js.global "getJSDocEnumTag"]
    val getJSDocThisTag: node:ts_Node -> ts_JSDocThisTag or_undefined [@@js.global "getJSDocThisTag"]
    val getJSDocReturnTag: node:ts_Node -> ts_JSDocReturnTag or_undefined [@@js.global "getJSDocReturnTag"]
    val getJSDocTemplateTag: node:ts_Node -> ts_JSDocTemplateTag or_undefined [@@js.global "getJSDocTemplateTag"]
    val getJSDocTypeTag: node:ts_Node -> ts_JSDocTypeTag or_undefined [@@js.global "getJSDocTypeTag"]
    val getJSDocType: node:ts_Node -> ts_TypeNode or_undefined [@@js.global "getJSDocType"]
    val getJSDocReturnType: node:ts_Node -> ts_TypeNode or_undefined [@@js.global "getJSDocReturnType"]
    val getJSDocTags: node:ts_Node -> ts_JSDocTag list [@@js.global "getJSDocTags"]
    val getAllJSDocTagsOfKind: node:ts_Node -> kind:ts_SyntaxKind -> ts_JSDocTag list [@@js.global "getAllJSDocTagsOfKind"]
    val getEffectiveTypeParameterDeclarations: node:ts_DeclarationWithTypeParameters -> ts_TypeParameterDeclaration list [@@js.global "getEffectiveTypeParameterDeclarations"]
    val getEffectiveConstraintOfTypeParameter: node:ts_TypeParameterDeclaration -> ts_TypeNode or_undefined [@@js.global "getEffectiveConstraintOfTypeParameter"]
    val isNumericLiteral: node:ts_Node -> bool [@@js.global "isNumericLiteral"]
    val isBigIntLiteral: node:ts_Node -> bool [@@js.global "isBigIntLiteral"]
    val isStringLiteral: node:ts_Node -> bool [@@js.global "isStringLiteral"]
    val isJsxText: node:ts_Node -> bool [@@js.global "isJsxText"]
    val isRegularExpressionLiteral: node:ts_Node -> bool [@@js.global "isRegularExpressionLiteral"]
    val isNoSubstitutionTemplateLiteral: node:ts_Node -> bool [@@js.global "isNoSubstitutionTemplateLiteral"]
    val isTemplateHead: node:ts_Node -> bool [@@js.global "isTemplateHead"]
    val isTemplateMiddle: node:ts_Node -> bool [@@js.global "isTemplateMiddle"]
    val isTemplateTail: node:ts_Node -> bool [@@js.global "isTemplateTail"]
    val isIdentifier: node:ts_Node -> bool [@@js.global "isIdentifier"]
    val isQualifiedName: node:ts_Node -> bool [@@js.global "isQualifiedName"]
    val isComputedPropertyName: node:ts_Node -> bool [@@js.global "isComputedPropertyName"]
    val isPrivateIdentifier: node:ts_Node -> bool [@@js.global "isPrivateIdentifier"]
    val isIdentifierOrPrivateIdentifier: node:ts_Node -> bool [@@js.global "isIdentifierOrPrivateIdentifier"]
    val isTypeParameterDeclaration: node:ts_Node -> bool [@@js.global "isTypeParameterDeclaration"]
    val isParameter: node:ts_Node -> bool [@@js.global "isParameter"]
    val isDecorator: node:ts_Node -> bool [@@js.global "isDecorator"]
    val isPropertySignature: node:ts_Node -> bool [@@js.global "isPropertySignature"]
    val isPropertyDeclaration: node:ts_Node -> bool [@@js.global "isPropertyDeclaration"]
    val isMethodSignature: node:ts_Node -> bool [@@js.global "isMethodSignature"]
    val isMethodDeclaration: node:ts_Node -> bool [@@js.global "isMethodDeclaration"]
    val isConstructorDeclaration: node:ts_Node -> bool [@@js.global "isConstructorDeclaration"]
    val isGetAccessorDeclaration: node:ts_Node -> bool [@@js.global "isGetAccessorDeclaration"]
    val isSetAccessorDeclaration: node:ts_Node -> bool [@@js.global "isSetAccessorDeclaration"]
    val isCallSignatureDeclaration: node:ts_Node -> bool [@@js.global "isCallSignatureDeclaration"]
    val isConstructSignatureDeclaration: node:ts_Node -> bool [@@js.global "isConstructSignatureDeclaration"]
    val isIndexSignatureDeclaration: node:ts_Node -> bool [@@js.global "isIndexSignatureDeclaration"]
    val isTypePredicateNode: node:ts_Node -> bool [@@js.global "isTypePredicateNode"]
    val isTypeReferenceNode: node:ts_Node -> bool [@@js.global "isTypeReferenceNode"]
    val isFunctionTypeNode: node:ts_Node -> bool [@@js.global "isFunctionTypeNode"]
    val isConstructorTypeNode: node:ts_Node -> bool [@@js.global "isConstructorTypeNode"]
    val isTypeQueryNode: node:ts_Node -> bool [@@js.global "isTypeQueryNode"]
    val isTypeLiteralNode: node:ts_Node -> bool [@@js.global "isTypeLiteralNode"]
    val isArrayTypeNode: node:ts_Node -> bool [@@js.global "isArrayTypeNode"]
    val isTupleTypeNode: node:ts_Node -> bool [@@js.global "isTupleTypeNode"]
    val isUnionTypeNode: node:ts_Node -> bool [@@js.global "isUnionTypeNode"]
    val isIntersectionTypeNode: node:ts_Node -> bool [@@js.global "isIntersectionTypeNode"]
    val isConditionalTypeNode: node:ts_Node -> bool [@@js.global "isConditionalTypeNode"]
    val isInferTypeNode: node:ts_Node -> bool [@@js.global "isInferTypeNode"]
    val isParenthesizedTypeNode: node:ts_Node -> bool [@@js.global "isParenthesizedTypeNode"]
    val isThisTypeNode: node:ts_Node -> bool [@@js.global "isThisTypeNode"]
    val isTypeOperatorNode: node:ts_Node -> bool [@@js.global "isTypeOperatorNode"]
    val isIndexedAccessTypeNode: node:ts_Node -> bool [@@js.global "isIndexedAccessTypeNode"]
    val isMappedTypeNode: node:ts_Node -> bool [@@js.global "isMappedTypeNode"]
    val isLiteralTypeNode: node:ts_Node -> bool [@@js.global "isLiteralTypeNode"]
    val isImportTypeNode: node:ts_Node -> bool [@@js.global "isImportTypeNode"]
    val isObjectBindingPattern: node:ts_Node -> bool [@@js.global "isObjectBindingPattern"]
    val isArrayBindingPattern: node:ts_Node -> bool [@@js.global "isArrayBindingPattern"]
    val isBindingElement: node:ts_Node -> bool [@@js.global "isBindingElement"]
    val isArrayLiteralExpression: node:ts_Node -> bool [@@js.global "isArrayLiteralExpression"]
    val isObjectLiteralExpression: node:ts_Node -> bool [@@js.global "isObjectLiteralExpression"]
    val isPropertyAccessExpression: node:ts_Node -> bool [@@js.global "isPropertyAccessExpression"]
    val isPropertyAccessChain: node:ts_Node -> bool [@@js.global "isPropertyAccessChain"]
    val isElementAccessExpression: node:ts_Node -> bool [@@js.global "isElementAccessExpression"]
    val isElementAccessChain: node:ts_Node -> bool [@@js.global "isElementAccessChain"]
    val isCallExpression: node:ts_Node -> bool [@@js.global "isCallExpression"]
    val isCallChain: node:ts_Node -> bool [@@js.global "isCallChain"]
    val isOptionalChain: node:ts_Node -> bool [@@js.global "isOptionalChain"]
    val isNullishCoalesce: node:ts_Node -> bool [@@js.global "isNullishCoalesce"]
    val isNewExpression: node:ts_Node -> bool [@@js.global "isNewExpression"]
    val isTaggedTemplateExpression: node:ts_Node -> bool [@@js.global "isTaggedTemplateExpression"]
    val isTypeAssertion: node:ts_Node -> bool [@@js.global "isTypeAssertion"]
    val isConstTypeReference: node:ts_Node -> bool [@@js.global "isConstTypeReference"]
    val isParenthesizedExpression: node:ts_Node -> bool [@@js.global "isParenthesizedExpression"]
    val skipPartiallyEmittedExpressions: node:ts_Expression -> ts_Expression [@@js.global "skipPartiallyEmittedExpressions"]
    val skipPartiallyEmittedExpressions: node:ts_Node -> ts_Node [@@js.global "skipPartiallyEmittedExpressions"]
    val isFunctionExpression: node:ts_Node -> bool [@@js.global "isFunctionExpression"]
    val isArrowFunction: node:ts_Node -> bool [@@js.global "isArrowFunction"]
    val isDeleteExpression: node:ts_Node -> bool [@@js.global "isDeleteExpression"]
    val isTypeOfExpression: node:ts_Node -> bool [@@js.global "isTypeOfExpression"]
    val isVoidExpression: node:ts_Node -> bool [@@js.global "isVoidExpression"]
    val isAwaitExpression: node:ts_Node -> bool [@@js.global "isAwaitExpression"]
    val isPrefixUnaryExpression: node:ts_Node -> bool [@@js.global "isPrefixUnaryExpression"]
    val isPostfixUnaryExpression: node:ts_Node -> bool [@@js.global "isPostfixUnaryExpression"]
    val isBinaryExpression: node:ts_Node -> bool [@@js.global "isBinaryExpression"]
    val isConditionalExpression: node:ts_Node -> bool [@@js.global "isConditionalExpression"]
    val isTemplateExpression: node:ts_Node -> bool [@@js.global "isTemplateExpression"]
    val isYieldExpression: node:ts_Node -> bool [@@js.global "isYieldExpression"]
    val isSpreadElement: node:ts_Node -> bool [@@js.global "isSpreadElement"]
    val isClassExpression: node:ts_Node -> bool [@@js.global "isClassExpression"]
    val isOmittedExpression: node:ts_Node -> bool [@@js.global "isOmittedExpression"]
    val isExpressionWithTypeArguments: node:ts_Node -> bool [@@js.global "isExpressionWithTypeArguments"]
    val isAsExpression: node:ts_Node -> bool [@@js.global "isAsExpression"]
    val isNonNullExpression: node:ts_Node -> bool [@@js.global "isNonNullExpression"]
    val isMetaProperty: node:ts_Node -> bool [@@js.global "isMetaProperty"]
    val isTemplateSpan: node:ts_Node -> bool [@@js.global "isTemplateSpan"]
    val isSemicolonClassElement: node:ts_Node -> bool [@@js.global "isSemicolonClassElement"]
    val isBlock: node:ts_Node -> bool [@@js.global "isBlock"]
    val isVariableStatement: node:ts_Node -> bool [@@js.global "isVariableStatement"]
    val isEmptyStatement: node:ts_Node -> bool [@@js.global "isEmptyStatement"]
    val isExpressionStatement: node:ts_Node -> bool [@@js.global "isExpressionStatement"]
    val isIfStatement: node:ts_Node -> bool [@@js.global "isIfStatement"]
    val isDoStatement: node:ts_Node -> bool [@@js.global "isDoStatement"]
    val isWhileStatement: node:ts_Node -> bool [@@js.global "isWhileStatement"]
    val isForStatement: node:ts_Node -> bool [@@js.global "isForStatement"]
    val isForInStatement: node:ts_Node -> bool [@@js.global "isForInStatement"]
    val isForOfStatement: node:ts_Node -> bool [@@js.global "isForOfStatement"]
    val isContinueStatement: node:ts_Node -> bool [@@js.global "isContinueStatement"]
    val isBreakStatement: node:ts_Node -> bool [@@js.global "isBreakStatement"]
    val isBreakOrContinueStatement: node:ts_Node -> bool [@@js.global "isBreakOrContinueStatement"]
    val isReturnStatement: node:ts_Node -> bool [@@js.global "isReturnStatement"]
    val isWithStatement: node:ts_Node -> bool [@@js.global "isWithStatement"]
    val isSwitchStatement: node:ts_Node -> bool [@@js.global "isSwitchStatement"]
    val isLabeledStatement: node:ts_Node -> bool [@@js.global "isLabeledStatement"]
    val isThrowStatement: node:ts_Node -> bool [@@js.global "isThrowStatement"]
    val isTryStatement: node:ts_Node -> bool [@@js.global "isTryStatement"]
    val isDebuggerStatement: node:ts_Node -> bool [@@js.global "isDebuggerStatement"]
    val isVariableDeclaration: node:ts_Node -> bool [@@js.global "isVariableDeclaration"]
    val isVariableDeclarationList: node:ts_Node -> bool [@@js.global "isVariableDeclarationList"]
    val isFunctionDeclaration: node:ts_Node -> bool [@@js.global "isFunctionDeclaration"]
    val isClassDeclaration: node:ts_Node -> bool [@@js.global "isClassDeclaration"]
    val isInterfaceDeclaration: node:ts_Node -> bool [@@js.global "isInterfaceDeclaration"]
    val isTypeAliasDeclaration: node:ts_Node -> bool [@@js.global "isTypeAliasDeclaration"]
    val isEnumDeclaration: node:ts_Node -> bool [@@js.global "isEnumDeclaration"]
    val isModuleDeclaration: node:ts_Node -> bool [@@js.global "isModuleDeclaration"]
    val isModuleBlock: node:ts_Node -> bool [@@js.global "isModuleBlock"]
    val isCaseBlock: node:ts_Node -> bool [@@js.global "isCaseBlock"]
    val isNamespaceExportDeclaration: node:ts_Node -> bool [@@js.global "isNamespaceExportDeclaration"]
    val isImportEqualsDeclaration: node:ts_Node -> bool [@@js.global "isImportEqualsDeclaration"]
    val isImportDeclaration: node:ts_Node -> bool [@@js.global "isImportDeclaration"]
    val isImportClause: node:ts_Node -> bool [@@js.global "isImportClause"]
    val isNamespaceImport: node:ts_Node -> bool [@@js.global "isNamespaceImport"]
    val isNamespaceExport: node:ts_Node -> bool [@@js.global "isNamespaceExport"]
    val isNamedExportBindings: node:ts_Node -> bool [@@js.global "isNamedExportBindings"]
    val isNamedImports: node:ts_Node -> bool [@@js.global "isNamedImports"]
    val isImportSpecifier: node:ts_Node -> bool [@@js.global "isImportSpecifier"]
    val isExportAssignment: node:ts_Node -> bool [@@js.global "isExportAssignment"]
    val isExportDeclaration: node:ts_Node -> bool [@@js.global "isExportDeclaration"]
    val isNamedExports: node:ts_Node -> bool [@@js.global "isNamedExports"]
    val isExportSpecifier: node:ts_Node -> bool [@@js.global "isExportSpecifier"]
    val isMissingDeclaration: node:ts_Node -> bool [@@js.global "isMissingDeclaration"]
    val isExternalModuleReference: node:ts_Node -> bool [@@js.global "isExternalModuleReference"]
    val isJsxElement: node:ts_Node -> bool [@@js.global "isJsxElement"]
    val isJsxSelfClosingElement: node:ts_Node -> bool [@@js.global "isJsxSelfClosingElement"]
    val isJsxOpeningElement: node:ts_Node -> bool [@@js.global "isJsxOpeningElement"]
    val isJsxClosingElement: node:ts_Node -> bool [@@js.global "isJsxClosingElement"]
    val isJsxFragment: node:ts_Node -> bool [@@js.global "isJsxFragment"]
    val isJsxOpeningFragment: node:ts_Node -> bool [@@js.global "isJsxOpeningFragment"]
    val isJsxClosingFragment: node:ts_Node -> bool [@@js.global "isJsxClosingFragment"]
    val isJsxAttribute: node:ts_Node -> bool [@@js.global "isJsxAttribute"]
    val isJsxAttributes: node:ts_Node -> bool [@@js.global "isJsxAttributes"]
    val isJsxSpreadAttribute: node:ts_Node -> bool [@@js.global "isJsxSpreadAttribute"]
    val isJsxExpression: node:ts_Node -> bool [@@js.global "isJsxExpression"]
    val isCaseClause: node:ts_Node -> bool [@@js.global "isCaseClause"]
    val isDefaultClause: node:ts_Node -> bool [@@js.global "isDefaultClause"]
    val isHeritageClause: node:ts_Node -> bool [@@js.global "isHeritageClause"]
    val isCatchClause: node:ts_Node -> bool [@@js.global "isCatchClause"]
    val isPropertyAssignment: node:ts_Node -> bool [@@js.global "isPropertyAssignment"]
    val isShorthandPropertyAssignment: node:ts_Node -> bool [@@js.global "isShorthandPropertyAssignment"]
    val isSpreadAssignment: node:ts_Node -> bool [@@js.global "isSpreadAssignment"]
    val isEnumMember: node:ts_Node -> bool [@@js.global "isEnumMember"]
    val isSourceFile: node:ts_Node -> bool [@@js.global "isSourceFile"]
    val isBundle: node:ts_Node -> bool [@@js.global "isBundle"]
    val isUnparsedSource: node:ts_Node -> bool [@@js.global "isUnparsedSource"]
    val isUnparsedPrepend: node:ts_Node -> bool [@@js.global "isUnparsedPrepend"]
    val isUnparsedTextLike: node:ts_Node -> bool [@@js.global "isUnparsedTextLike"]
    val isUnparsedNode: node:ts_Node -> bool [@@js.global "isUnparsedNode"]
    val isJSDocTypeExpression: node:ts_Node -> bool [@@js.global "isJSDocTypeExpression"]
    val isJSDocAllType: node:ts_Node -> bool [@@js.global "isJSDocAllType"]
    val isJSDocUnknownType: node:ts_Node -> bool [@@js.global "isJSDocUnknownType"]
    val isJSDocNullableType: node:ts_Node -> bool [@@js.global "isJSDocNullableType"]
    val isJSDocNonNullableType: node:ts_Node -> bool [@@js.global "isJSDocNonNullableType"]
    val isJSDocOptionalType: node:ts_Node -> bool [@@js.global "isJSDocOptionalType"]
    val isJSDocFunctionType: node:ts_Node -> bool [@@js.global "isJSDocFunctionType"]
    val isJSDocVariadicType: node:ts_Node -> bool [@@js.global "isJSDocVariadicType"]
    val isJSDoc: node:ts_Node -> bool [@@js.global "isJSDoc"]
    val isJSDocAuthorTag: node:ts_Node -> bool [@@js.global "isJSDocAuthorTag"]
    val isJSDocAugmentsTag: node:ts_Node -> bool [@@js.global "isJSDocAugmentsTag"]
    val isJSDocClassTag: node:ts_Node -> bool [@@js.global "isJSDocClassTag"]
    val isJSDocPublicTag: node:ts_Node -> bool [@@js.global "isJSDocPublicTag"]
    val isJSDocPrivateTag: node:ts_Node -> bool [@@js.global "isJSDocPrivateTag"]
    val isJSDocProtectedTag: node:ts_Node -> bool [@@js.global "isJSDocProtectedTag"]
    val isJSDocReadonlyTag: node:ts_Node -> bool [@@js.global "isJSDocReadonlyTag"]
    val isJSDocEnumTag: node:ts_Node -> bool [@@js.global "isJSDocEnumTag"]
    val isJSDocThisTag: node:ts_Node -> bool [@@js.global "isJSDocThisTag"]
    val isJSDocParameterTag: node:ts_Node -> bool [@@js.global "isJSDocParameterTag"]
    val isJSDocReturnTag: node:ts_Node -> bool [@@js.global "isJSDocReturnTag"]
    val isJSDocTypeTag: node:ts_Node -> bool [@@js.global "isJSDocTypeTag"]
    val isJSDocTemplateTag: node:ts_Node -> bool [@@js.global "isJSDocTemplateTag"]
    val isJSDocTypedefTag: node:ts_Node -> bool [@@js.global "isJSDocTypedefTag"]
    val isJSDocPropertyTag: node:ts_Node -> bool [@@js.global "isJSDocPropertyTag"]
    val isJSDocPropertyLikeTag: node:ts_Node -> bool [@@js.global "isJSDocPropertyLikeTag"]
    val isJSDocTypeLiteral: node:ts_Node -> bool [@@js.global "isJSDocTypeLiteral"]
    val isJSDocCallbackTag: node:ts_Node -> bool [@@js.global "isJSDocCallbackTag"]
    val isJSDocSignature: node:ts_Node -> bool [@@js.global "isJSDocSignature"]
    val isToken: n:ts_Node -> bool [@@js.global "isToken"]
    val isLiteralExpression: node:ts_Node -> bool [@@js.global "isLiteralExpression"]
    module TemplateLiteralToken : sig
      type t = ts_TemplateLiteralToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val isTemplateLiteralToken: node:ts_Node -> bool [@@js.global "isTemplateLiteralToken"]
    val isTemplateMiddleOrTemplateTail: node:ts_Node -> bool [@@js.global "isTemplateMiddleOrTemplateTail"]
    val isImportOrExportSpecifier: node:ts_Node -> bool [@@js.global "isImportOrExportSpecifier"]
    val isTypeOnlyImportOrExportDeclaration: node:ts_Node -> bool [@@js.global "isTypeOnlyImportOrExportDeclaration"]
    val isStringTextContainingNode: node:ts_Node -> bool [@@js.global "isStringTextContainingNode"]
    val isModifier: node:ts_Node -> bool [@@js.global "isModifier"]
    val isEntityName: node:ts_Node -> bool [@@js.global "isEntityName"]
    val isPropertyName: node:ts_Node -> bool [@@js.global "isPropertyName"]
    val isBindingName: node:ts_Node -> bool [@@js.global "isBindingName"]
    val isFunctionLike: node:ts_Node -> bool [@@js.global "isFunctionLike"]
    val isClassElement: node:ts_Node -> bool [@@js.global "isClassElement"]
    val isClassLike: node:ts_Node -> bool [@@js.global "isClassLike"]
    val isAccessor: node:ts_Node -> bool [@@js.global "isAccessor"]
    val isTypeElement: node:ts_Node -> bool [@@js.global "isTypeElement"]
    val isClassOrTypeElement: node:ts_Node -> bool [@@js.global "isClassOrTypeElement"]
    val isObjectLiteralElementLike: node:ts_Node -> bool [@@js.global "isObjectLiteralElementLike"]
    val isTypeNode: node:ts_Node -> bool [@@js.global "isTypeNode"]
    val isFunctionOrConstructorTypeNode: node:ts_Node -> bool [@@js.global "isFunctionOrConstructorTypeNode"]
    val isPropertyAccessOrQualifiedName: node:ts_Node -> bool [@@js.global "isPropertyAccessOrQualifiedName"]
    val isCallLikeExpression: node:ts_Node -> bool [@@js.global "isCallLikeExpression"]
    val isCallOrNewExpression: node:ts_Node -> bool [@@js.global "isCallOrNewExpression"]
    val isTemplateLiteral: node:ts_Node -> bool [@@js.global "isTemplateLiteral"]
    val isAssertionExpression: node:ts_Node -> bool [@@js.global "isAssertionExpression"]
    val isIterationStatement: node:ts_Node -> lookInLabeledStatements:([`L_b_false] [@js.enum]) -> bool [@@js.global "isIterationStatement"]
    val isIterationStatement: node:ts_Node -> lookInLabeledStatements:bool -> bool [@@js.global "isIterationStatement"]
    val isJsxOpeningLikeElement: node:ts_Node -> bool [@@js.global "isJsxOpeningLikeElement"]
    val isCaseOrDefaultClause: node:ts_Node -> bool [@@js.global "isCaseOrDefaultClause"]
    val isJSDocCommentContainingNode: node:ts_Node -> bool [@@js.global "isJSDocCommentContainingNode"]
    val isSetAccessor: node:ts_Node -> bool [@@js.global "isSetAccessor"]
    val isGetAccessor: node:ts_Node -> bool [@@js.global "isGetAccessor"]
    val isObjectLiteralElement: node:ts_Node -> bool [@@js.global "isObjectLiteralElement"]
    val isStringLiteralLike: node:ts_Node -> bool [@@js.global "isStringLiteralLike"]
    val createNode: kind:ts_SyntaxKind -> ?pos:float -> ?end_:float -> unit -> ts_Node [@@js.global "createNode"]
    val forEachChild: node:ts_Node -> cbNode:(node:ts_Node -> 'T or_undefined) -> ?cbNodes:(nodes:ts_Node ts_NodeArray -> 'T or_undefined) -> unit -> 'T or_undefined [@@js.global "forEachChild"]
    val createSourceFile: fileName:string -> sourceText:string -> languageVersion:ts_ScriptTarget -> ?setParentNodes:bool -> ?scriptKind:ts_ScriptKind -> unit -> ts_SourceFile [@@js.global "createSourceFile"]
    val parseIsolatedEntityName: text:string -> languageVersion:ts_ScriptTarget -> ts_EntityName or_undefined [@@js.global "parseIsolatedEntityName"]
    val parseJsonText: fileName:string -> sourceText:string -> ts_JsonSourceFile [@@js.global "parseJsonText"]
    val isExternalModule: file:ts_SourceFile -> bool [@@js.global "isExternalModule"]
    val updateSourceFile: sourceFile:ts_SourceFile -> newText:string -> textChangeRange:ts_TextChangeRange -> ?aggressiveChecks:bool -> unit -> ts_SourceFile [@@js.global "updateSourceFile"]
    (* export {}; *)
    val parseCommandLine: commandLine:string list -> ?readFile:(path:string -> string or_undefined) -> unit -> ts_ParsedCommandLine [@@js.global "parseCommandLine"]
    module[@js.scope "DiagnosticReporter"] DiagnosticReporter : sig
      type t = ts_DiagnosticReporter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> diagnostic:ts_Diagnostic -> unit [@@js.apply]
    end
    module[@js.scope "ConfigFileDiagnosticsReporter"] ConfigFileDiagnosticsReporter : sig
      type t = ts_ConfigFileDiagnosticsReporter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_onUnRecoverableConfigFileDiagnostic: t -> ts_DiagnosticReporter [@@js.get "onUnRecoverableConfigFileDiagnostic"]
      val set_onUnRecoverableConfigFileDiagnostic: t -> ts_DiagnosticReporter -> unit [@@js.set "onUnRecoverableConfigFileDiagnostic"]
    end
    module[@js.scope "ParseConfigFileHost"] ParseConfigFileHost : sig
      type t = ts_ParseConfigFileHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
      val cast: t -> ts_ParseConfigHost [@@js.cast]
      val cast': t -> ts_ConfigFileDiagnosticsReporter [@@js.cast]
    end
    val getParsedCommandLineOfConfigFile: configFileName:string -> optionsToExtend:ts_CompilerOptions -> host:ts_ParseConfigFileHost -> ?extendedConfigCache:ts_ExtendedConfigCacheEntry ts_Map -> ?watchOptionsToExtend:ts_WatchOptions -> unit -> ts_ParsedCommandLine or_undefined [@@js.global "getParsedCommandLineOfConfigFile"]
    val readConfigFile: fileName:string -> readFile:(path:string -> string or_undefined) -> anonymous_interface_6 [@@js.global "readConfigFile"]
    val parseConfigFileTextToJson: fileName:string -> jsonText:string -> anonymous_interface_7 [@@js.global "parseConfigFileTextToJson"]
    val readJsonConfigFile: fileName:string -> readFile:(path:string -> string or_undefined) -> ts_TsConfigSourceFile [@@js.global "readJsonConfigFile"]
    val convertToObject: sourceFile:ts_JsonSourceFile -> errors:ts_Diagnostic ts_Push -> any [@@js.global "convertToObject"]
    val parseJsonConfigFileContent: json:any -> host:ts_ParseConfigHost -> basePath:string -> ?existingOptions:ts_CompilerOptions -> ?configFileName:string -> ?resolutionStack:ts_Path list -> ?extraFileExtensions:ts_FileExtensionInfo list -> ?extendedConfigCache:ts_ExtendedConfigCacheEntry ts_Map -> ?existingWatchOptions:ts_WatchOptions -> unit -> ts_ParsedCommandLine [@@js.global "parseJsonConfigFileContent"]
    val parseJsonSourceFileConfigFileContent: sourceFile:ts_TsConfigSourceFile -> host:ts_ParseConfigHost -> basePath:string -> ?existingOptions:ts_CompilerOptions -> ?configFileName:string -> ?resolutionStack:ts_Path list -> ?extraFileExtensions:ts_FileExtensionInfo list -> ?extendedConfigCache:ts_ExtendedConfigCacheEntry ts_Map -> ?existingWatchOptions:ts_WatchOptions -> unit -> ts_ParsedCommandLine [@@js.global "parseJsonSourceFileConfigFileContent"]
    module[@js.scope "ParsedTsconfig"] ParsedTsconfig : sig
      type t = ts_ParsedTsconfig
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_raw: t -> any [@@js.get "raw"]
      val set_raw: t -> any -> unit [@@js.set "raw"]
      val get_options: t -> ts_CompilerOptions [@@js.get "options"]
      val set_options: t -> ts_CompilerOptions -> unit [@@js.set "options"]
      val get_watchOptions: t -> ts_WatchOptions [@@js.get "watchOptions"]
      val set_watchOptions: t -> ts_WatchOptions -> unit [@@js.set "watchOptions"]
      val get_typeAcquisition: t -> ts_TypeAcquisition [@@js.get "typeAcquisition"]
      val set_typeAcquisition: t -> ts_TypeAcquisition -> unit [@@js.set "typeAcquisition"]
      val get_extendedConfigPath: t -> string [@@js.get "extendedConfigPath"]
      val set_extendedConfigPath: t -> string -> unit [@@js.set "extendedConfigPath"]
    end
    module[@js.scope "ExtendedConfigCacheEntry"] ExtendedConfigCacheEntry : sig
      type t = ts_ExtendedConfigCacheEntry
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_extendedResult: t -> ts_TsConfigSourceFile [@@js.get "extendedResult"]
      val set_extendedResult: t -> ts_TsConfigSourceFile -> unit [@@js.set "extendedResult"]
      val get_extendedConfig: t -> ts_ParsedTsconfig or_undefined [@@js.get "extendedConfig"]
      val set_extendedConfig: t -> ts_ParsedTsconfig or_undefined -> unit [@@js.set "extendedConfig"]
    end
    val convertCompilerOptionsFromJson: jsonOptions:any -> basePath:string -> ?configFileName:string -> unit -> anonymous_interface_10 [@@js.global "convertCompilerOptionsFromJson"]
    val convertTypeAcquisitionFromJson: jsonOptions:any -> basePath:string -> ?configFileName:string -> unit -> anonymous_interface_11 [@@js.global "convertTypeAcquisitionFromJson"]
    (* export {}; *)
    val getEffectiveTypeRoots: options:ts_CompilerOptions -> host:ts_GetEffectiveTypeRootsHost -> string list or_undefined [@@js.global "getEffectiveTypeRoots"]
    val resolveTypeReferenceDirective: typeReferenceDirectiveName:string -> containingFile:string or_undefined -> options:ts_CompilerOptions -> host:ts_ModuleResolutionHost -> ?redirectedReference:ts_ResolvedProjectReference -> unit -> ts_ResolvedTypeReferenceDirectiveWithFailedLookupLocations [@@js.global "resolveTypeReferenceDirective"]
    val getAutomaticTypeDirectiveNames: options:ts_CompilerOptions -> host:ts_ModuleResolutionHost -> string list [@@js.global "getAutomaticTypeDirectiveNames"]
    module[@js.scope "ModuleResolutionCache"] ModuleResolutionCache : sig
      type t = ts_ModuleResolutionCache
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getOrCreateCacheForDirectory: t -> directoryName:string -> ?redirectedReference:ts_ResolvedProjectReference -> unit -> ts_ResolvedModuleWithFailedLookupLocations ts_Map [@@js.call "getOrCreateCacheForDirectory"]
      val cast: t -> ts_NonRelativeModuleNameResolutionCache [@@js.cast]
    end
    module[@js.scope "NonRelativeModuleNameResolutionCache"] NonRelativeModuleNameResolutionCache : sig
      type t = ts_NonRelativeModuleNameResolutionCache
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getOrCreateCacheForModuleName: t -> nonRelativeModuleName:string -> ?redirectedReference:ts_ResolvedProjectReference -> unit -> ts_PerModuleNameCache [@@js.call "getOrCreateCacheForModuleName"]
    end
    module[@js.scope "PerModuleNameCache"] PerModuleNameCache : sig
      type t = ts_PerModuleNameCache
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_: t -> directory:string -> ts_ResolvedModuleWithFailedLookupLocations or_undefined [@@js.call "get"]
      val set_: t -> directory:string -> result:ts_ResolvedModuleWithFailedLookupLocations -> unit [@@js.call "set"]
    end
    val createModuleResolutionCache: currentDirectory:string -> getCanonicalFileName:(s:string -> string) -> ?options:ts_CompilerOptions -> unit -> ts_ModuleResolutionCache [@@js.global "createModuleResolutionCache"]
    val resolveModuleNameFromCache: moduleName:string -> containingFile:string -> cache:ts_ModuleResolutionCache -> ts_ResolvedModuleWithFailedLookupLocations or_undefined [@@js.global "resolveModuleNameFromCache"]
    val resolveModuleName: moduleName:string -> containingFile:string -> compilerOptions:ts_CompilerOptions -> host:ts_ModuleResolutionHost -> ?cache:ts_ModuleResolutionCache -> ?redirectedReference:ts_ResolvedProjectReference -> unit -> ts_ResolvedModuleWithFailedLookupLocations [@@js.global "resolveModuleName"]
    val nodeModuleNameResolver: moduleName:string -> containingFile:string -> compilerOptions:ts_CompilerOptions -> host:ts_ModuleResolutionHost -> ?cache:ts_ModuleResolutionCache -> ?redirectedReference:ts_ResolvedProjectReference -> unit -> ts_ResolvedModuleWithFailedLookupLocations [@@js.global "nodeModuleNameResolver"]
    val classicNameResolver: moduleName:string -> containingFile:string -> compilerOptions:ts_CompilerOptions -> host:ts_ModuleResolutionHost -> ?cache:ts_NonRelativeModuleNameResolutionCache -> ?redirectedReference:ts_ResolvedProjectReference -> unit -> ts_ResolvedModuleWithFailedLookupLocations [@@js.global "classicNameResolver"]
    val createNodeArray: ?elements:'T list -> ?hasTrailingComma:bool -> unit -> 'T ts_NodeArray [@@js.global "createNodeArray"]
    val createLiteral: value:(([`U_n_8 of (ts_NumericLiteral, ts_NumericLiteral) union2  | `U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2  | `U_n_14 of (ts_NoSubstitutionTemplateLiteral, ts_NoSubstitutionTemplateLiteral) union2  | `U_n_75 of (ts_Identifier, ts_Identifier) union2 ] [@js.union on_field "kind"]), (ts_Identifier, (ts_NoSubstitutionTemplateLiteral, (ts_NumericLiteral, ts_StringLiteral) or_) or_) or_) or_ or_string -> ts_StringLiteral [@@js.global "createLiteral"]
    val createLiteral: value:ts_PseudoBigInt or_number -> ts_NumericLiteral [@@js.global "createLiteral"]
    val createLiteral: value:bool -> ts_BooleanLiteral [@@js.global "createLiteral"]
    val createLiteral: value:ts_PseudoBigInt or_prim_union -> ts_PrimaryExpression [@@js.global "createLiteral"]
    val createNumericLiteral: value:string -> ?numericLiteralFlags:ts_TokenFlags -> unit -> ts_NumericLiteral [@@js.global "createNumericLiteral"]
    val createBigIntLiteral: value:string -> ts_BigIntLiteral [@@js.global "createBigIntLiteral"]
    val createStringLiteral: text:string -> ts_StringLiteral [@@js.global "createStringLiteral"]
    val createRegularExpressionLiteral: text:string -> ts_RegularExpressionLiteral [@@js.global "createRegularExpressionLiteral"]
    val createIdentifier: text:string -> ts_Identifier [@@js.global "createIdentifier"]
    val updateIdentifier: node:ts_Identifier -> ts_Identifier [@@js.global "updateIdentifier"]
    val createTempVariable: recordTempVariable:(node:ts_Identifier -> unit) or_undefined -> ts_Identifier [@@js.global "createTempVariable"]
    val createLoopVariable: unit -> ts_Identifier [@@js.global "createLoopVariable"]
    val createUniqueName: text:string -> ts_Identifier [@@js.global "createUniqueName"]
    val createOptimisticUniqueName: text:string -> ts_Identifier [@@js.global "createOptimisticUniqueName"]
    val createFileLevelUniqueName: text:string -> ts_Identifier [@@js.global "createFileLevelUniqueName"]
    val getGeneratedNameForNode: node:ts_Node or_undefined -> ts_Identifier [@@js.global "getGeneratedNameForNode"]
    val createPrivateIdentifier: text:string -> ts_PrivateIdentifier [@@js.global "createPrivateIdentifier"]
    val createToken: token:'TKind -> 'TKind ts_Token [@@js.global "createToken"]
    val createSuper: unit -> ts_SuperExpression [@@js.global "createSuper"]
    val createThis: unit -> (ts_ThisExpression, ts_SyntaxKind_ThisKeyword ts_Token) intersection2 [@@js.global "createThis"]
    val createNull: unit -> (ts_NullLiteral, ts_SyntaxKind_NullKeyword ts_Token) intersection2 [@@js.global "createNull"]
    val createTrue: unit -> (ts_BooleanLiteral, ts_SyntaxKind_TrueKeyword ts_Token) intersection2 [@@js.global "createTrue"]
    val createFalse: unit -> (ts_BooleanLiteral, ts_SyntaxKind_FalseKeyword ts_Token) intersection2 [@@js.global "createFalse"]
    val createModifier: kind:'T -> 'T ts_Token [@@js.global "createModifier"]
    val createModifiersFromModifierFlags: flags:ts_ModifierFlags -> ts_Modifier list [@@js.global "createModifiersFromModifierFlags"]
    val createQualifiedName: left:ts_EntityName -> right:ts_Identifier or_string -> ts_QualifiedName [@@js.global "createQualifiedName"]
    val updateQualifiedName: node:ts_QualifiedName -> left:ts_EntityName -> right:ts_Identifier -> ts_QualifiedName [@@js.global "updateQualifiedName"]
    val createComputedPropertyName: expression:ts_Expression -> ts_ComputedPropertyName [@@js.global "createComputedPropertyName"]
    val updateComputedPropertyName: node:ts_ComputedPropertyName -> expression:ts_Expression -> ts_ComputedPropertyName [@@js.global "updateComputedPropertyName"]
    val createTypeParameterDeclaration: name:ts_Identifier or_string -> ?constraint_:ts_TypeNode -> ?defaultType:ts_TypeNode -> unit -> ts_TypeParameterDeclaration [@@js.global "createTypeParameterDeclaration"]
    val updateTypeParameterDeclaration: node:ts_TypeParameterDeclaration -> name:ts_Identifier -> constraint_:ts_TypeNode or_undefined -> defaultType:ts_TypeNode or_undefined -> ts_TypeParameterDeclaration [@@js.global "updateTypeParameterDeclaration"]
    val createParameter: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> dotDotDotToken:ts_DotDotDotToken or_undefined -> name:ts_BindingName or_string -> ?questionToken:ts_QuestionToken -> ?type_:ts_TypeNode -> ?initializer_:ts_Expression -> unit -> ts_ParameterDeclaration [@@js.global "createParameter"]
    val updateParameter: node:ts_ParameterDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> dotDotDotToken:ts_DotDotDotToken or_undefined -> name:ts_BindingName or_string -> questionToken:ts_QuestionToken or_undefined -> type_:ts_TypeNode or_undefined -> initializer_:ts_Expression or_undefined -> ts_ParameterDeclaration [@@js.global "updateParameter"]
    val createDecorator: expression:ts_Expression -> ts_Decorator [@@js.global "createDecorator"]
    val updateDecorator: node:ts_Decorator -> expression:ts_Expression -> ts_Decorator [@@js.global "updateDecorator"]
    val createPropertySignature: modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName or_string -> questionToken:ts_QuestionToken or_undefined -> type_:ts_TypeNode or_undefined -> initializer_:ts_Expression or_undefined -> ts_PropertySignature [@@js.global "createPropertySignature"]
    val updatePropertySignature: node:ts_PropertySignature -> modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName -> questionToken:ts_QuestionToken or_undefined -> type_:ts_TypeNode or_undefined -> initializer_:ts_Expression or_undefined -> ts_PropertySignature [@@js.global "updatePropertySignature"]
    val createProperty: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName or_string -> questionOrExclamationToken:(([`U_n_53 of (ts_SyntaxKind_ExclamationToken ts_Token, ts_SyntaxKind_ExclamationToken ts_Token, ts_SyntaxKind_ExclamationToken ts_Token) union3  | `U_n_57 of (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token) union3 ] [@js.union on_field "kind"]), (ts_ExclamationToken, (ts_QuestionToken, (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_ExclamationToken ts_Token) or_) or_) or_) or_ or_undefined -> type_:ts_TypeNode or_undefined -> initializer_:ts_Expression or_undefined -> ts_PropertyDeclaration [@@js.global "createProperty"]
    val updateProperty: node:ts_PropertyDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName or_string -> questionOrExclamationToken:(([`U_n_53 of (ts_SyntaxKind_ExclamationToken ts_Token, ts_SyntaxKind_ExclamationToken ts_Token, ts_SyntaxKind_ExclamationToken ts_Token) union3  | `U_n_57 of (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token) union3 ] [@js.union on_field "kind"]), (ts_ExclamationToken, (ts_QuestionToken, (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_ExclamationToken ts_Token) or_) or_) or_) or_ or_undefined -> type_:ts_TypeNode or_undefined -> initializer_:ts_Expression or_undefined -> ts_PropertyDeclaration [@@js.global "updateProperty"]
    val createMethodSignature: typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> name:ts_PropertyName or_string -> questionToken:ts_QuestionToken or_undefined -> ts_MethodSignature [@@js.global "createMethodSignature"]
    val updateMethodSignature: node:ts_MethodSignature -> typeParameters:ts_TypeParameterDeclaration ts_NodeArray or_undefined -> parameters:ts_ParameterDeclaration ts_NodeArray -> type_:ts_TypeNode or_undefined -> name:ts_PropertyName -> questionToken:ts_QuestionToken or_undefined -> ts_MethodSignature [@@js.global "updateMethodSignature"]
    val createMethod: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> asteriskToken:ts_AsteriskToken or_undefined -> name:ts_PropertyName or_string -> questionToken:ts_QuestionToken or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> body:ts_Block or_undefined -> ts_MethodDeclaration [@@js.global "createMethod"]
    val updateMethod: node:ts_MethodDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> asteriskToken:ts_AsteriskToken or_undefined -> name:ts_PropertyName -> questionToken:ts_QuestionToken or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> body:ts_Block or_undefined -> ts_MethodDeclaration [@@js.global "updateMethod"]
    val createConstructor: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> parameters:ts_ParameterDeclaration list -> body:ts_Block or_undefined -> ts_ConstructorDeclaration [@@js.global "createConstructor"]
    val updateConstructor: node:ts_ConstructorDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> parameters:ts_ParameterDeclaration list -> body:ts_Block or_undefined -> ts_ConstructorDeclaration [@@js.global "updateConstructor"]
    val createGetAccessor: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName or_string -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> body:ts_Block or_undefined -> ts_GetAccessorDeclaration [@@js.global "createGetAccessor"]
    val updateGetAccessor: node:ts_GetAccessorDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> body:ts_Block or_undefined -> ts_GetAccessorDeclaration [@@js.global "updateGetAccessor"]
    val createSetAccessor: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName or_string -> parameters:ts_ParameterDeclaration list -> body:ts_Block or_undefined -> ts_SetAccessorDeclaration [@@js.global "createSetAccessor"]
    val updateSetAccessor: node:ts_SetAccessorDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_PropertyName -> parameters:ts_ParameterDeclaration list -> body:ts_Block or_undefined -> ts_SetAccessorDeclaration [@@js.global "updateSetAccessor"]
    val createCallSignature: typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> ts_CallSignatureDeclaration [@@js.global "createCallSignature"]
    val updateCallSignature: node:ts_CallSignatureDeclaration -> typeParameters:ts_TypeParameterDeclaration ts_NodeArray or_undefined -> parameters:ts_ParameterDeclaration ts_NodeArray -> type_:ts_TypeNode or_undefined -> ts_CallSignatureDeclaration [@@js.global "updateCallSignature"]
    val createConstructSignature: typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> ts_ConstructSignatureDeclaration [@@js.global "createConstructSignature"]
    val updateConstructSignature: node:ts_ConstructSignatureDeclaration -> typeParameters:ts_TypeParameterDeclaration ts_NodeArray or_undefined -> parameters:ts_ParameterDeclaration ts_NodeArray -> type_:ts_TypeNode or_undefined -> ts_ConstructSignatureDeclaration [@@js.global "updateConstructSignature"]
    val createIndexSignature: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode -> ts_IndexSignatureDeclaration [@@js.global "createIndexSignature"]
    val updateIndexSignature: node:ts_IndexSignatureDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode -> ts_IndexSignatureDeclaration [@@js.global "updateIndexSignature"]
    val createKeywordTypeNode: kind:((ts_SyntaxKind_AnyKeyword, (ts_SyntaxKind_BigIntKeyword, (ts_SyntaxKind_BooleanKeyword, (ts_SyntaxKind_NeverKeyword, (ts_SyntaxKind_NullKeyword, (ts_SyntaxKind_NumberKeyword, (ts_SyntaxKind_ObjectKeyword, (ts_SyntaxKind_StringKeyword, (ts_SyntaxKind_SymbolKeyword, (ts_SyntaxKind_ThisKeyword, (ts_SyntaxKind_UndefinedKeyword, (ts_SyntaxKind_UnknownKeyword, ts_SyntaxKind_VoidKeyword) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AnyKeyword | `BigIntKeyword | `BooleanKeyword | `NeverKeyword | `NullKeyword | `NumberKeyword | `ObjectKeyword | `StringKeyword | `SymbolKeyword | `ThisKeyword | `UndefinedKeyword | `UnknownKeyword | `VoidKeyword] [@js.enum])) or_enum -> ts_KeywordTypeNode [@@js.global "createKeywordTypeNode"]
    val createTypePredicateNode: parameterName:(([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_183 of (ts_ThisTypeNode, ts_ThisTypeNode) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_ThisTypeNode) or_) or_ or_string -> type_:ts_TypeNode -> ts_TypePredicateNode [@@js.global "createTypePredicateNode"]
    val createTypePredicateNodeWithModifier: assertsModifier:ts_AssertsToken or_undefined -> parameterName:(([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_183 of (ts_ThisTypeNode, ts_ThisTypeNode) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_ThisTypeNode) or_) or_ or_string -> type_:ts_TypeNode or_undefined -> ts_TypePredicateNode [@@js.global "createTypePredicateNodeWithModifier"]
    val updateTypePredicateNode: node:ts_TypePredicateNode -> parameterName:(([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_183 of (ts_ThisTypeNode, ts_ThisTypeNode) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_ThisTypeNode) or_) or_ -> type_:ts_TypeNode -> ts_TypePredicateNode [@@js.global "updateTypePredicateNode"]
    val updateTypePredicateNodeWithModifier: node:ts_TypePredicateNode -> assertsModifier:ts_AssertsToken or_undefined -> parameterName:(([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_183 of (ts_ThisTypeNode, ts_ThisTypeNode) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_ThisTypeNode) or_) or_ -> type_:ts_TypeNode or_undefined -> ts_TypePredicateNode [@@js.global "updateTypePredicateNodeWithModifier"]
    val createTypeReferenceNode: typeName:ts_EntityName or_string -> typeArguments:ts_TypeNode list or_undefined -> ts_TypeReferenceNode [@@js.global "createTypeReferenceNode"]
    val updateTypeReferenceNode: node:ts_TypeReferenceNode -> typeName:ts_EntityName -> typeArguments:ts_TypeNode ts_NodeArray or_undefined -> ts_TypeReferenceNode [@@js.global "updateTypeReferenceNode"]
    val createFunctionTypeNode: typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> ts_FunctionTypeNode [@@js.global "createFunctionTypeNode"]
    val updateFunctionTypeNode: node:ts_FunctionTypeNode -> typeParameters:ts_TypeParameterDeclaration ts_NodeArray or_undefined -> parameters:ts_ParameterDeclaration ts_NodeArray -> type_:ts_TypeNode or_undefined -> ts_FunctionTypeNode [@@js.global "updateFunctionTypeNode"]
    val createConstructorTypeNode: typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> ts_ConstructorTypeNode [@@js.global "createConstructorTypeNode"]
    val updateConstructorTypeNode: node:ts_ConstructorTypeNode -> typeParameters:ts_TypeParameterDeclaration ts_NodeArray or_undefined -> parameters:ts_ParameterDeclaration ts_NodeArray -> type_:ts_TypeNode or_undefined -> ts_ConstructorTypeNode [@@js.global "updateConstructorTypeNode"]
    val createTypeQueryNode: exprName:ts_EntityName -> ts_TypeQueryNode [@@js.global "createTypeQueryNode"]
    val updateTypeQueryNode: node:ts_TypeQueryNode -> exprName:ts_EntityName -> ts_TypeQueryNode [@@js.global "updateTypeQueryNode"]
    val createTypeLiteralNode: members:ts_TypeElement list or_undefined -> ts_TypeLiteralNode [@@js.global "createTypeLiteralNode"]
    val updateTypeLiteralNode: node:ts_TypeLiteralNode -> members:ts_TypeElement ts_NodeArray -> ts_TypeLiteralNode [@@js.global "updateTypeLiteralNode"]
    val createArrayTypeNode: elementType:ts_TypeNode -> ts_ArrayTypeNode [@@js.global "createArrayTypeNode"]
    val updateArrayTypeNode: node:ts_ArrayTypeNode -> elementType:ts_TypeNode -> ts_ArrayTypeNode [@@js.global "updateArrayTypeNode"]
    val createTupleTypeNode: elementTypes:ts_TypeNode list -> ts_TupleTypeNode [@@js.global "createTupleTypeNode"]
    val updateTupleTypeNode: node:ts_TupleTypeNode -> elementTypes:ts_TypeNode list -> ts_TupleTypeNode [@@js.global "updateTupleTypeNode"]
    val createOptionalTypeNode: type_:ts_TypeNode -> ts_OptionalTypeNode [@@js.global "createOptionalTypeNode"]
    val updateOptionalTypeNode: node:ts_OptionalTypeNode -> type_:ts_TypeNode -> ts_OptionalTypeNode [@@js.global "updateOptionalTypeNode"]
    val createRestTypeNode: type_:ts_TypeNode -> ts_RestTypeNode [@@js.global "createRestTypeNode"]
    val updateRestTypeNode: node:ts_RestTypeNode -> type_:ts_TypeNode -> ts_RestTypeNode [@@js.global "updateRestTypeNode"]
    val createUnionTypeNode: types:ts_TypeNode list -> ts_UnionTypeNode [@@js.global "createUnionTypeNode"]
    val updateUnionTypeNode: node:ts_UnionTypeNode -> types:ts_TypeNode ts_NodeArray -> ts_UnionTypeNode [@@js.global "updateUnionTypeNode"]
    val createIntersectionTypeNode: types:ts_TypeNode list -> ts_IntersectionTypeNode [@@js.global "createIntersectionTypeNode"]
    val updateIntersectionTypeNode: node:ts_IntersectionTypeNode -> types:ts_TypeNode ts_NodeArray -> ts_IntersectionTypeNode [@@js.global "updateIntersectionTypeNode"]
    val createUnionOrIntersectionTypeNode: kind:((ts_SyntaxKind_IntersectionType, ts_SyntaxKind_UnionType) or_, ([`IntersectionType | `UnionType] [@js.enum])) or_enum -> types:ts_TypeNode list -> ts_UnionOrIntersectionTypeNode [@@js.global "createUnionOrIntersectionTypeNode"]
    val createConditionalTypeNode: checkType:ts_TypeNode -> extendsType:ts_TypeNode -> trueType:ts_TypeNode -> falseType:ts_TypeNode -> ts_ConditionalTypeNode [@@js.global "createConditionalTypeNode"]
    val updateConditionalTypeNode: node:ts_ConditionalTypeNode -> checkType:ts_TypeNode -> extendsType:ts_TypeNode -> trueType:ts_TypeNode -> falseType:ts_TypeNode -> ts_ConditionalTypeNode [@@js.global "updateConditionalTypeNode"]
    val createInferTypeNode: typeParameter:ts_TypeParameterDeclaration -> ts_InferTypeNode [@@js.global "createInferTypeNode"]
    val updateInferTypeNode: node:ts_InferTypeNode -> typeParameter:ts_TypeParameterDeclaration -> ts_InferTypeNode [@@js.global "updateInferTypeNode"]
    val createImportTypeNode: argument:ts_TypeNode -> ?qualifier:ts_EntityName -> ?typeArguments:ts_TypeNode list -> ?isTypeOf:bool -> unit -> ts_ImportTypeNode [@@js.global "createImportTypeNode"]
    val updateImportTypeNode: node:ts_ImportTypeNode -> argument:ts_TypeNode -> ?qualifier:ts_EntityName -> ?typeArguments:ts_TypeNode list -> ?isTypeOf:bool -> unit -> ts_ImportTypeNode [@@js.global "updateImportTypeNode"]
    val createParenthesizedType: type_:ts_TypeNode -> ts_ParenthesizedTypeNode [@@js.global "createParenthesizedType"]
    val updateParenthesizedType: node:ts_ParenthesizedTypeNode -> type_:ts_TypeNode -> ts_ParenthesizedTypeNode [@@js.global "updateParenthesizedType"]
    val createThisTypeNode: unit -> ts_ThisTypeNode [@@js.global "createThisTypeNode"]
    val createTypeOperatorNode: type_:ts_TypeNode -> ts_TypeOperatorNode [@@js.global "createTypeOperatorNode"]
    val createTypeOperatorNode: operator:((ts_SyntaxKind_KeyOfKeyword, (ts_SyntaxKind_ReadonlyKeyword, ts_SyntaxKind_UniqueKeyword) or_) or_, ([`KeyOfKeyword | `ReadonlyKeyword | `UniqueKeyword] [@js.enum])) or_enum -> type_:ts_TypeNode -> ts_TypeOperatorNode [@@js.global "createTypeOperatorNode"]
    val updateTypeOperatorNode: node:ts_TypeOperatorNode -> type_:ts_TypeNode -> ts_TypeOperatorNode [@@js.global "updateTypeOperatorNode"]
    val createIndexedAccessTypeNode: objectType:ts_TypeNode -> indexType:ts_TypeNode -> ts_IndexedAccessTypeNode [@@js.global "createIndexedAccessTypeNode"]
    val updateIndexedAccessTypeNode: node:ts_IndexedAccessTypeNode -> objectType:ts_TypeNode -> indexType:ts_TypeNode -> ts_IndexedAccessTypeNode [@@js.global "updateIndexedAccessTypeNode"]
    val createMappedTypeNode: readonlyToken:(([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3  | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3  | `U_n_138 of (ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token) union3 ] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_ReadonlyToken, (ts_SyntaxKind_ReadonlyKeyword ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ or_undefined -> typeParameter:ts_TypeParameterDeclaration -> questionToken:(([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3  | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3  | `U_n_57 of (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token) union3 ] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_QuestionToken, (ts_SyntaxKind_QuestionToken ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ or_undefined -> type_:ts_TypeNode or_undefined -> ts_MappedTypeNode [@@js.global "createMappedTypeNode"]
    val updateMappedTypeNode: node:ts_MappedTypeNode -> readonlyToken:(([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3  | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3  | `U_n_138 of (ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token, ts_SyntaxKind_ReadonlyKeyword ts_Token) union3 ] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_ReadonlyToken, (ts_SyntaxKind_ReadonlyKeyword ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ or_undefined -> typeParameter:ts_TypeParameterDeclaration -> questionToken:(([`U_n_39 of (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_PlusToken ts_Token) union3  | `U_n_40 of (ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) union3  | `U_n_57 of (ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token, ts_SyntaxKind_QuestionToken ts_Token) union3 ] [@js.union on_field "kind"]), (ts_MinusToken, (ts_PlusToken, (ts_QuestionToken, (ts_SyntaxKind_QuestionToken ts_Token, (ts_SyntaxKind_PlusToken ts_Token, ts_SyntaxKind_MinusToken ts_Token) or_) or_) or_) or_) or_) or_ or_undefined -> type_:ts_TypeNode or_undefined -> ts_MappedTypeNode [@@js.global "updateMappedTypeNode"]
    val createLiteralTypeNode: literal:(([`U_n_207 of (ts_PrefixUnaryExpression, ts_PrefixUnaryExpression) union2 ] [@js.union on_field "kind"]), (ts_BooleanLiteral, (ts_LiteralExpression, ts_PrefixUnaryExpression) or_) or_) or_ -> ts_LiteralTypeNode [@@js.global "createLiteralTypeNode"]
    val updateLiteralTypeNode: node:ts_LiteralTypeNode -> literal:(([`U_n_207 of (ts_PrefixUnaryExpression, ts_PrefixUnaryExpression) union2 ] [@js.union on_field "kind"]), (ts_BooleanLiteral, (ts_LiteralExpression, ts_PrefixUnaryExpression) or_) or_) or_ -> ts_LiteralTypeNode [@@js.global "updateLiteralTypeNode"]
    val createObjectBindingPattern: elements:ts_BindingElement list -> ts_ObjectBindingPattern [@@js.global "createObjectBindingPattern"]
    val updateObjectBindingPattern: node:ts_ObjectBindingPattern -> elements:ts_BindingElement list -> ts_ObjectBindingPattern [@@js.global "updateObjectBindingPattern"]
    val createArrayBindingPattern: elements:ts_ArrayBindingElement list -> ts_ArrayBindingPattern [@@js.global "createArrayBindingPattern"]
    val updateArrayBindingPattern: node:ts_ArrayBindingPattern -> elements:ts_ArrayBindingElement list -> ts_ArrayBindingPattern [@@js.global "updateArrayBindingPattern"]
    val createBindingElement: dotDotDotToken:ts_DotDotDotToken or_undefined -> propertyName:ts_PropertyName or_string or_undefined -> name:ts_BindingName or_string -> ?initializer_:ts_Expression -> unit -> ts_BindingElement [@@js.global "createBindingElement"]
    val updateBindingElement: node:ts_BindingElement -> dotDotDotToken:ts_DotDotDotToken or_undefined -> propertyName:ts_PropertyName or_undefined -> name:ts_BindingName -> initializer_:ts_Expression or_undefined -> ts_BindingElement [@@js.global "updateBindingElement"]
    val createArrayLiteral: ?elements:ts_Expression list -> ?multiLine:bool -> unit -> ts_ArrayLiteralExpression [@@js.global "createArrayLiteral"]
    val updateArrayLiteral: node:ts_ArrayLiteralExpression -> elements:ts_Expression list -> ts_ArrayLiteralExpression [@@js.global "updateArrayLiteral"]
    val createObjectLiteral: ?properties:ts_ObjectLiteralElementLike list -> ?multiLine:bool -> unit -> ts_ObjectLiteralExpression [@@js.global "createObjectLiteral"]
    val updateObjectLiteral: node:ts_ObjectLiteralExpression -> properties:ts_ObjectLiteralElementLike list -> ts_ObjectLiteralExpression [@@js.global "updateObjectLiteral"]
    val createPropertyAccess: expression:ts_Expression -> name:(([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_PrivateIdentifier) or_) or_ or_string -> ts_PropertyAccessExpression [@@js.global "createPropertyAccess"]
    val updatePropertyAccess: node:ts_PropertyAccessExpression -> expression:ts_Expression -> name:(([`U_n_75 of (ts_Identifier, ts_Identifier) union2  | `U_n_76 of (ts_PrivateIdentifier, ts_PrivateIdentifier) union2 ] [@js.union on_field "kind"]), (ts_Identifier, ts_PrivateIdentifier) or_) or_ -> ts_PropertyAccessExpression [@@js.global "updatePropertyAccess"]
    val createPropertyAccessChain: expression:ts_Expression -> questionDotToken:ts_QuestionDotToken or_undefined -> name:ts_Identifier or_string -> ts_PropertyAccessChain [@@js.global "createPropertyAccessChain"]
    val updatePropertyAccessChain: node:ts_PropertyAccessChain -> expression:ts_Expression -> questionDotToken:ts_QuestionDotToken or_undefined -> name:ts_Identifier -> ts_PropertyAccessChain [@@js.global "updatePropertyAccessChain"]
    val createElementAccess: expression:ts_Expression -> index:ts_Expression or_number -> ts_ElementAccessExpression [@@js.global "createElementAccess"]
    val updateElementAccess: node:ts_ElementAccessExpression -> expression:ts_Expression -> argumentExpression:ts_Expression -> ts_ElementAccessExpression [@@js.global "updateElementAccess"]
    val createElementAccessChain: expression:ts_Expression -> questionDotToken:ts_QuestionDotToken or_undefined -> index:ts_Expression or_number -> ts_ElementAccessChain [@@js.global "createElementAccessChain"]
    val updateElementAccessChain: node:ts_ElementAccessChain -> expression:ts_Expression -> questionDotToken:ts_QuestionDotToken or_undefined -> argumentExpression:ts_Expression -> ts_ElementAccessChain [@@js.global "updateElementAccessChain"]
    val createCall: expression:ts_Expression -> typeArguments:ts_TypeNode list or_undefined -> argumentsArray:ts_Expression list or_undefined -> ts_CallExpression [@@js.global "createCall"]
    val updateCall: node:ts_CallExpression -> expression:ts_Expression -> typeArguments:ts_TypeNode list or_undefined -> argumentsArray:ts_Expression list -> ts_CallExpression [@@js.global "updateCall"]
    val createCallChain: expression:ts_Expression -> questionDotToken:ts_QuestionDotToken or_undefined -> typeArguments:ts_TypeNode list or_undefined -> argumentsArray:ts_Expression list or_undefined -> ts_CallChain [@@js.global "createCallChain"]
    val updateCallChain: node:ts_CallChain -> expression:ts_Expression -> questionDotToken:ts_QuestionDotToken or_undefined -> typeArguments:ts_TypeNode list or_undefined -> argumentsArray:ts_Expression list -> ts_CallChain [@@js.global "updateCallChain"]
    val createNew: expression:ts_Expression -> typeArguments:ts_TypeNode list or_undefined -> argumentsArray:ts_Expression list or_undefined -> ts_NewExpression [@@js.global "createNew"]
    val updateNew: node:ts_NewExpression -> expression:ts_Expression -> typeArguments:ts_TypeNode list or_undefined -> argumentsArray:ts_Expression list or_undefined -> ts_NewExpression [@@js.global "updateNew"]
    val createTaggedTemplate: tag:ts_Expression -> template:ts_TemplateLiteral -> ts_TaggedTemplateExpression [@@js.global "createTaggedTemplate"]
    val createTaggedTemplate: tag:ts_Expression -> typeArguments:ts_TypeNode list or_undefined -> template:ts_TemplateLiteral -> ts_TaggedTemplateExpression [@@js.global "createTaggedTemplate"]
    val updateTaggedTemplate: node:ts_TaggedTemplateExpression -> tag:ts_Expression -> template:ts_TemplateLiteral -> ts_TaggedTemplateExpression [@@js.global "updateTaggedTemplate"]
    val updateTaggedTemplate: node:ts_TaggedTemplateExpression -> tag:ts_Expression -> typeArguments:ts_TypeNode list or_undefined -> template:ts_TemplateLiteral -> ts_TaggedTemplateExpression [@@js.global "updateTaggedTemplate"]
    val createTypeAssertion: type_:ts_TypeNode -> expression:ts_Expression -> ts_TypeAssertion [@@js.global "createTypeAssertion"]
    val updateTypeAssertion: node:ts_TypeAssertion -> type_:ts_TypeNode -> expression:ts_Expression -> ts_TypeAssertion [@@js.global "updateTypeAssertion"]
    val createParen: expression:ts_Expression -> ts_ParenthesizedExpression [@@js.global "createParen"]
    val updateParen: node:ts_ParenthesizedExpression -> expression:ts_Expression -> ts_ParenthesizedExpression [@@js.global "updateParen"]
    val createFunctionExpression: modifiers:ts_Modifier list or_undefined -> asteriskToken:ts_AsteriskToken or_undefined -> name:ts_Identifier or_string or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list or_undefined -> type_:ts_TypeNode or_undefined -> body:ts_Block -> ts_FunctionExpression [@@js.global "createFunctionExpression"]
    val updateFunctionExpression: node:ts_FunctionExpression -> modifiers:ts_Modifier list or_undefined -> asteriskToken:ts_AsteriskToken or_undefined -> name:ts_Identifier or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> body:ts_Block -> ts_FunctionExpression [@@js.global "updateFunctionExpression"]
    val createArrowFunction: modifiers:ts_Modifier list or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> equalsGreaterThanToken:ts_EqualsGreaterThanToken or_undefined -> body:ts_ConciseBody -> ts_ArrowFunction [@@js.global "createArrowFunction"]
    val updateArrowFunction: node:ts_ArrowFunction -> modifiers:ts_Modifier list or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> equalsGreaterThanToken:ts_SyntaxKind_EqualsGreaterThanToken ts_Token -> body:ts_ConciseBody -> ts_ArrowFunction [@@js.global "updateArrowFunction"]
    val createDelete: expression:ts_Expression -> ts_DeleteExpression [@@js.global "createDelete"]
    val updateDelete: node:ts_DeleteExpression -> expression:ts_Expression -> ts_DeleteExpression [@@js.global "updateDelete"]
    val createTypeOf: expression:ts_Expression -> ts_TypeOfExpression [@@js.global "createTypeOf"]
    val updateTypeOf: node:ts_TypeOfExpression -> expression:ts_Expression -> ts_TypeOfExpression [@@js.global "updateTypeOf"]
    val createVoid: expression:ts_Expression -> ts_VoidExpression [@@js.global "createVoid"]
    val updateVoid: node:ts_VoidExpression -> expression:ts_Expression -> ts_VoidExpression [@@js.global "updateVoid"]
    val createAwait: expression:ts_Expression -> ts_AwaitExpression [@@js.global "createAwait"]
    val updateAwait: node:ts_AwaitExpression -> expression:ts_Expression -> ts_AwaitExpression [@@js.global "updateAwait"]
    val createPrefix: operator:ts_PrefixUnaryOperator -> operand:ts_Expression -> ts_PrefixUnaryExpression [@@js.global "createPrefix"]
    val updatePrefix: node:ts_PrefixUnaryExpression -> operand:ts_Expression -> ts_PrefixUnaryExpression [@@js.global "updatePrefix"]
    val createPostfix: operand:ts_Expression -> operator:ts_PostfixUnaryOperator -> ts_PostfixUnaryExpression [@@js.global "createPostfix"]
    val updatePostfix: node:ts_PostfixUnaryExpression -> operand:ts_Expression -> ts_PostfixUnaryExpression [@@js.global "updatePostfix"]
    val createBinary: left:ts_Expression -> operator:((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_AssignmentOperator, (ts_AssignmentOperatorOrHigher, (ts_BinaryOperator, (ts_BinaryOperatorToken, (ts_BitwiseOperator, (ts_BitwiseOperatorOrHigher, (ts_CompoundAssignmentOperator, (ts_EqualityOperator, (ts_EqualityOperatorOrHigher, (ts_ExponentiationOperator, (ts_LogicalOperator, (ts_LogicalOperatorOrHigher, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_RelationalOperatorOrHigher, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AmpersandAmpersandToken, (ts_SyntaxKind_AmpersandEqualsToken, (ts_SyntaxKind_AmpersandToken, (ts_SyntaxKind_AsteriskAsteriskEqualsToken, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskEqualsToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_BarBarToken, (ts_SyntaxKind_BarEqualsToken, (ts_SyntaxKind_BarToken, (ts_SyntaxKind_CaretEqualsToken, (ts_SyntaxKind_CaretToken, (ts_SyntaxKind_CommaToken, (ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_EqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusEqualsToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentEqualsToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusEqualsToken, (ts_SyntaxKind_PlusToken, (ts_SyntaxKind_QuestionQuestionToken, (ts_SyntaxKind_SlashEqualsToken, (ts_SyntaxKind_SlashToken, ts_BinaryOperator ts_Token) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandAmpersandToken | `AmpersandEqualsToken | `AmpersandToken | `AsteriskAsteriskEqualsToken | `AsteriskAsteriskToken | `AsteriskEqualsToken | `AsteriskToken | `BarBarToken | `BarEqualsToken | `BarToken | `CaretEqualsToken | `CaretToken | `CommaToken | `EqualsEqualsEqualsToken | `EqualsEqualsToken | `EqualsToken | `ExclamationEqualsEqualsToken | `ExclamationEqualsToken | `GreaterThanEqualsToken | `GreaterThanGreaterThanEqualsToken | `GreaterThanGreaterThanGreaterThanEqualsToken | `GreaterThanGreaterThanGreaterThanToken | `GreaterThanGreaterThanToken | `GreaterThanToken | `InKeyword | `InstanceOfKeyword | `LessThanEqualsToken | `LessThanLessThanEqualsToken | `LessThanLessThanToken | `LessThanToken | `MinusEqualsToken | `MinusToken | `PercentEqualsToken | `PercentToken | `PlusEqualsToken | `PlusToken | `QuestionQuestionToken | `SlashEqualsToken | `SlashToken] [@js.enum])) or_enum -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createBinary"]
    val updateBinary: node:ts_BinaryExpression -> left:ts_Expression -> right:ts_Expression -> ?operator:((ts_AdditiveOperator, (ts_AdditiveOperatorOrHigher, (ts_AssignmentOperator, (ts_AssignmentOperatorOrHigher, (ts_BinaryOperator, (ts_BinaryOperatorToken, (ts_BitwiseOperator, (ts_BitwiseOperatorOrHigher, (ts_CompoundAssignmentOperator, (ts_EqualityOperator, (ts_EqualityOperatorOrHigher, (ts_ExponentiationOperator, (ts_LogicalOperator, (ts_LogicalOperatorOrHigher, (ts_MultiplicativeOperator, (ts_MultiplicativeOperatorOrHigher, (ts_RelationalOperator, (ts_RelationalOperatorOrHigher, (ts_ShiftOperator, (ts_ShiftOperatorOrHigher, (ts_SyntaxKind_AmpersandAmpersandToken, (ts_SyntaxKind_AmpersandEqualsToken, (ts_SyntaxKind_AmpersandToken, (ts_SyntaxKind_AsteriskAsteriskEqualsToken, (ts_SyntaxKind_AsteriskAsteriskToken, (ts_SyntaxKind_AsteriskEqualsToken, (ts_SyntaxKind_AsteriskToken, (ts_SyntaxKind_BarBarToken, (ts_SyntaxKind_BarEqualsToken, (ts_SyntaxKind_BarToken, (ts_SyntaxKind_CaretEqualsToken, (ts_SyntaxKind_CaretToken, (ts_SyntaxKind_CommaToken, (ts_SyntaxKind_EqualsEqualsEqualsToken, (ts_SyntaxKind_EqualsEqualsToken, (ts_SyntaxKind_EqualsToken, (ts_SyntaxKind_ExclamationEqualsEqualsToken, (ts_SyntaxKind_ExclamationEqualsToken, (ts_SyntaxKind_GreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanEqualsToken, (ts_SyntaxKind_GreaterThanGreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanGreaterThanToken, (ts_SyntaxKind_GreaterThanToken, (ts_SyntaxKind_InKeyword, (ts_SyntaxKind_InstanceOfKeyword, (ts_SyntaxKind_LessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanEqualsToken, (ts_SyntaxKind_LessThanLessThanToken, (ts_SyntaxKind_LessThanToken, (ts_SyntaxKind_MinusEqualsToken, (ts_SyntaxKind_MinusToken, (ts_SyntaxKind_PercentEqualsToken, (ts_SyntaxKind_PercentToken, (ts_SyntaxKind_PlusEqualsToken, (ts_SyntaxKind_PlusToken, (ts_SyntaxKind_QuestionQuestionToken, (ts_SyntaxKind_SlashEqualsToken, (ts_SyntaxKind_SlashToken, ts_BinaryOperator ts_Token) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_) or_, ([`AmpersandAmpersandToken | `AmpersandEqualsToken | `AmpersandToken | `AsteriskAsteriskEqualsToken | `AsteriskAsteriskToken | `AsteriskEqualsToken | `AsteriskToken | `BarBarToken | `BarEqualsToken | `BarToken | `CaretEqualsToken | `CaretToken | `CommaToken | `EqualsEqualsEqualsToken | `EqualsEqualsToken | `EqualsToken | `ExclamationEqualsEqualsToken | `ExclamationEqualsToken | `GreaterThanEqualsToken | `GreaterThanGreaterThanEqualsToken | `GreaterThanGreaterThanGreaterThanEqualsToken | `GreaterThanGreaterThanGreaterThanToken | `GreaterThanGreaterThanToken | `GreaterThanToken | `InKeyword | `InstanceOfKeyword | `LessThanEqualsToken | `LessThanLessThanEqualsToken | `LessThanLessThanToken | `LessThanToken | `MinusEqualsToken | `MinusToken | `PercentEqualsToken | `PercentToken | `PlusEqualsToken | `PlusToken | `QuestionQuestionToken | `SlashEqualsToken | `SlashToken] [@js.enum])) or_enum -> unit -> ts_BinaryExpression [@@js.global "updateBinary"]
    val createConditional: condition:ts_Expression -> whenTrue:ts_Expression -> whenFalse:ts_Expression -> ts_ConditionalExpression [@@js.global "createConditional"]
    val createConditional: condition:ts_Expression -> questionToken:ts_QuestionToken -> whenTrue:ts_Expression -> colonToken:ts_ColonToken -> whenFalse:ts_Expression -> ts_ConditionalExpression [@@js.global "createConditional"]
    val updateConditional: node:ts_ConditionalExpression -> condition:ts_Expression -> questionToken:ts_SyntaxKind_QuestionToken ts_Token -> whenTrue:ts_Expression -> colonToken:ts_SyntaxKind_ColonToken ts_Token -> whenFalse:ts_Expression -> ts_ConditionalExpression [@@js.global "updateConditional"]
    val createTemplateExpression: head:ts_TemplateHead -> templateSpans:ts_TemplateSpan list -> ts_TemplateExpression [@@js.global "createTemplateExpression"]
    val updateTemplateExpression: node:ts_TemplateExpression -> head:ts_TemplateHead -> templateSpans:ts_TemplateSpan list -> ts_TemplateExpression [@@js.global "updateTemplateExpression"]
    val createTemplateHead: text:string -> ?rawText:string -> unit -> ts_TemplateHead [@@js.global "createTemplateHead"]
    val createTemplateMiddle: text:string -> ?rawText:string -> unit -> ts_TemplateMiddle [@@js.global "createTemplateMiddle"]
    val createTemplateTail: text:string -> ?rawText:string -> unit -> ts_TemplateTail [@@js.global "createTemplateTail"]
    val createNoSubstitutionTemplateLiteral: text:string -> ?rawText:string -> unit -> ts_NoSubstitutionTemplateLiteral [@@js.global "createNoSubstitutionTemplateLiteral"]
    val createYield: ?expression:ts_Expression -> unit -> ts_YieldExpression [@@js.global "createYield"]
    val createYield: asteriskToken:ts_AsteriskToken or_undefined -> expression:ts_Expression -> ts_YieldExpression [@@js.global "createYield"]
    val updateYield: node:ts_YieldExpression -> asteriskToken:ts_AsteriskToken or_undefined -> expression:ts_Expression -> ts_YieldExpression [@@js.global "updateYield"]
    val createSpread: expression:ts_Expression -> ts_SpreadElement [@@js.global "createSpread"]
    val updateSpread: node:ts_SpreadElement -> expression:ts_Expression -> ts_SpreadElement [@@js.global "updateSpread"]
    val createClassExpression: modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_string or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> heritageClauses:ts_HeritageClause list or_undefined -> members:ts_ClassElement list -> ts_ClassExpression [@@js.global "createClassExpression"]
    val updateClassExpression: node:ts_ClassExpression -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> heritageClauses:ts_HeritageClause list or_undefined -> members:ts_ClassElement list -> ts_ClassExpression [@@js.global "updateClassExpression"]
    val createOmittedExpression: unit -> ts_OmittedExpression [@@js.global "createOmittedExpression"]
    val createExpressionWithTypeArguments: typeArguments:ts_TypeNode list or_undefined -> expression:ts_Expression -> ts_ExpressionWithTypeArguments [@@js.global "createExpressionWithTypeArguments"]
    val updateExpressionWithTypeArguments: node:ts_ExpressionWithTypeArguments -> typeArguments:ts_TypeNode list or_undefined -> expression:ts_Expression -> ts_ExpressionWithTypeArguments [@@js.global "updateExpressionWithTypeArguments"]
    val createAsExpression: expression:ts_Expression -> type_:ts_TypeNode -> ts_AsExpression [@@js.global "createAsExpression"]
    val updateAsExpression: node:ts_AsExpression -> expression:ts_Expression -> type_:ts_TypeNode -> ts_AsExpression [@@js.global "updateAsExpression"]
    val createNonNullExpression: expression:ts_Expression -> ts_NonNullExpression [@@js.global "createNonNullExpression"]
    val updateNonNullExpression: node:ts_NonNullExpression -> expression:ts_Expression -> ts_NonNullExpression [@@js.global "updateNonNullExpression"]
    val createMetaProperty: keywordToken:((ts_SyntaxKind_ImportKeyword, ts_SyntaxKind_NewKeyword) or_, ([`ImportKeyword | `NewKeyword] [@js.enum])) or_enum -> name:ts_Identifier -> ts_MetaProperty [@@js.global "createMetaProperty"]
    val updateMetaProperty: node:ts_MetaProperty -> name:ts_Identifier -> ts_MetaProperty [@@js.global "updateMetaProperty"]
    val createTemplateSpan: expression:ts_Expression -> literal:(([`U_n_16 of (ts_TemplateMiddle, ts_TemplateMiddle) union2  | `U_n_17 of (ts_TemplateTail, ts_TemplateTail) union2 ] [@js.union on_field "kind"]), (ts_TemplateMiddle, ts_TemplateTail) or_) or_ -> ts_TemplateSpan [@@js.global "createTemplateSpan"]
    val updateTemplateSpan: node:ts_TemplateSpan -> expression:ts_Expression -> literal:(([`U_n_16 of (ts_TemplateMiddle, ts_TemplateMiddle) union2  | `U_n_17 of (ts_TemplateTail, ts_TemplateTail) union2 ] [@js.union on_field "kind"]), (ts_TemplateMiddle, ts_TemplateTail) or_) or_ -> ts_TemplateSpan [@@js.global "updateTemplateSpan"]
    val createSemicolonClassElement: unit -> ts_SemicolonClassElement [@@js.global "createSemicolonClassElement"]
    val createBlock: statements:ts_Statement list -> ?multiLine:bool -> unit -> ts_Block [@@js.global "createBlock"]
    val updateBlock: node:ts_Block -> statements:ts_Statement list -> ts_Block [@@js.global "updateBlock"]
    val createVariableStatement: modifiers:ts_Modifier list or_undefined -> declarationList:(([`U_n_243 of (ts_VariableDeclarationList, ts_VariableDeclarationList) union2 ] [@js.union on_field "kind"]), (ts_VariableDeclarationList, ts_VariableDeclaration list) or_) or_ -> ts_VariableStatement [@@js.global "createVariableStatement"]
    val updateVariableStatement: node:ts_VariableStatement -> modifiers:ts_Modifier list or_undefined -> declarationList:ts_VariableDeclarationList -> ts_VariableStatement [@@js.global "updateVariableStatement"]
    val createEmptyStatement: unit -> ts_EmptyStatement [@@js.global "createEmptyStatement"]
    val createExpressionStatement: expression:ts_Expression -> ts_ExpressionStatement [@@js.global "createExpressionStatement"]
    val updateExpressionStatement: node:ts_ExpressionStatement -> expression:ts_Expression -> ts_ExpressionStatement [@@js.global "updateExpressionStatement"]
    val createStatement: expression:ts_Expression -> ts_ExpressionStatement [@@js.global "createStatement"]
    val updateStatement: node:ts_ExpressionStatement -> expression:ts_Expression -> ts_ExpressionStatement [@@js.global "updateStatement"]
    val createIf: expression:ts_Expression -> thenStatement:ts_Statement -> ?elseStatement:ts_Statement -> unit -> ts_IfStatement [@@js.global "createIf"]
    val updateIf: node:ts_IfStatement -> expression:ts_Expression -> thenStatement:ts_Statement -> elseStatement:ts_Statement or_undefined -> ts_IfStatement [@@js.global "updateIf"]
    val createDo: statement:ts_Statement -> expression:ts_Expression -> ts_DoStatement [@@js.global "createDo"]
    val updateDo: node:ts_DoStatement -> statement:ts_Statement -> expression:ts_Expression -> ts_DoStatement [@@js.global "updateDo"]
    val createWhile: expression:ts_Expression -> statement:ts_Statement -> ts_WhileStatement [@@js.global "createWhile"]
    val updateWhile: node:ts_WhileStatement -> expression:ts_Expression -> statement:ts_Statement -> ts_WhileStatement [@@js.global "updateWhile"]
    val createFor: initializer_:ts_ForInitializer or_undefined -> condition:ts_Expression or_undefined -> incrementor:ts_Expression or_undefined -> statement:ts_Statement -> ts_ForStatement [@@js.global "createFor"]
    val updateFor: node:ts_ForStatement -> initializer_:ts_ForInitializer or_undefined -> condition:ts_Expression or_undefined -> incrementor:ts_Expression or_undefined -> statement:ts_Statement -> ts_ForStatement [@@js.global "updateFor"]
    val createForIn: initializer_:ts_ForInitializer -> expression:ts_Expression -> statement:ts_Statement -> ts_ForInStatement [@@js.global "createForIn"]
    val updateForIn: node:ts_ForInStatement -> initializer_:ts_ForInitializer -> expression:ts_Expression -> statement:ts_Statement -> ts_ForInStatement [@@js.global "updateForIn"]
    val createForOf: awaitModifier:ts_AwaitKeywordToken or_undefined -> initializer_:ts_ForInitializer -> expression:ts_Expression -> statement:ts_Statement -> ts_ForOfStatement [@@js.global "createForOf"]
    val updateForOf: node:ts_ForOfStatement -> awaitModifier:ts_AwaitKeywordToken or_undefined -> initializer_:ts_ForInitializer -> expression:ts_Expression -> statement:ts_Statement -> ts_ForOfStatement [@@js.global "updateForOf"]
    val createContinue: ?label:ts_Identifier or_string -> unit -> ts_ContinueStatement [@@js.global "createContinue"]
    val updateContinue: node:ts_ContinueStatement -> label:ts_Identifier or_undefined -> ts_ContinueStatement [@@js.global "updateContinue"]
    val createBreak: ?label:ts_Identifier or_string -> unit -> ts_BreakStatement [@@js.global "createBreak"]
    val updateBreak: node:ts_BreakStatement -> label:ts_Identifier or_undefined -> ts_BreakStatement [@@js.global "updateBreak"]
    val createReturn: ?expression:ts_Expression -> unit -> ts_ReturnStatement [@@js.global "createReturn"]
    val updateReturn: node:ts_ReturnStatement -> expression:ts_Expression or_undefined -> ts_ReturnStatement [@@js.global "updateReturn"]
    val createWith: expression:ts_Expression -> statement:ts_Statement -> ts_WithStatement [@@js.global "createWith"]
    val updateWith: node:ts_WithStatement -> expression:ts_Expression -> statement:ts_Statement -> ts_WithStatement [@@js.global "updateWith"]
    val createSwitch: expression:ts_Expression -> caseBlock:ts_CaseBlock -> ts_SwitchStatement [@@js.global "createSwitch"]
    val updateSwitch: node:ts_SwitchStatement -> expression:ts_Expression -> caseBlock:ts_CaseBlock -> ts_SwitchStatement [@@js.global "updateSwitch"]
    val createLabel: label:ts_Identifier or_string -> statement:ts_Statement -> ts_LabeledStatement [@@js.global "createLabel"]
    val updateLabel: node:ts_LabeledStatement -> label:ts_Identifier -> statement:ts_Statement -> ts_LabeledStatement [@@js.global "updateLabel"]
    val createThrow: expression:ts_Expression -> ts_ThrowStatement [@@js.global "createThrow"]
    val updateThrow: node:ts_ThrowStatement -> expression:ts_Expression -> ts_ThrowStatement [@@js.global "updateThrow"]
    val createTry: tryBlock:ts_Block -> catchClause:ts_CatchClause or_undefined -> finallyBlock:ts_Block or_undefined -> ts_TryStatement [@@js.global "createTry"]
    val updateTry: node:ts_TryStatement -> tryBlock:ts_Block -> catchClause:ts_CatchClause or_undefined -> finallyBlock:ts_Block or_undefined -> ts_TryStatement [@@js.global "updateTry"]
    val createDebuggerStatement: unit -> ts_DebuggerStatement [@@js.global "createDebuggerStatement"]
    val createVariableDeclaration: name:ts_BindingName or_string -> ?type_:ts_TypeNode -> ?initializer_:ts_Expression -> unit -> ts_VariableDeclaration [@@js.global "createVariableDeclaration"]
    val updateVariableDeclaration: node:ts_VariableDeclaration -> name:ts_BindingName -> type_:ts_TypeNode or_undefined -> initializer_:ts_Expression or_undefined -> ts_VariableDeclaration [@@js.global "updateVariableDeclaration"]
    val createVariableDeclarationList: declarations:ts_VariableDeclaration list -> ?flags:ts_NodeFlags -> unit -> ts_VariableDeclarationList [@@js.global "createVariableDeclarationList"]
    val updateVariableDeclarationList: node:ts_VariableDeclarationList -> declarations:ts_VariableDeclaration list -> ts_VariableDeclarationList [@@js.global "updateVariableDeclarationList"]
    val createFunctionDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> asteriskToken:ts_AsteriskToken or_undefined -> name:ts_Identifier or_string or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> body:ts_Block or_undefined -> ts_FunctionDeclaration [@@js.global "createFunctionDeclaration"]
    val updateFunctionDeclaration: node:ts_FunctionDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> asteriskToken:ts_AsteriskToken or_undefined -> name:ts_Identifier or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> parameters:ts_ParameterDeclaration list -> type_:ts_TypeNode or_undefined -> body:ts_Block or_undefined -> ts_FunctionDeclaration [@@js.global "updateFunctionDeclaration"]
    val createClassDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_string or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> heritageClauses:ts_HeritageClause list or_undefined -> members:ts_ClassElement list -> ts_ClassDeclaration [@@js.global "createClassDeclaration"]
    val updateClassDeclaration: node:ts_ClassDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_undefined -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> heritageClauses:ts_HeritageClause list or_undefined -> members:ts_ClassElement list -> ts_ClassDeclaration [@@js.global "updateClassDeclaration"]
    val createInterfaceDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_string -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> heritageClauses:ts_HeritageClause list or_undefined -> members:ts_TypeElement list -> ts_InterfaceDeclaration [@@js.global "createInterfaceDeclaration"]
    val updateInterfaceDeclaration: node:ts_InterfaceDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> heritageClauses:ts_HeritageClause list or_undefined -> members:ts_TypeElement list -> ts_InterfaceDeclaration [@@js.global "updateInterfaceDeclaration"]
    val createTypeAliasDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_string -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> type_:ts_TypeNode -> ts_TypeAliasDeclaration [@@js.global "createTypeAliasDeclaration"]
    val updateTypeAliasDeclaration: node:ts_TypeAliasDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier -> typeParameters:ts_TypeParameterDeclaration list or_undefined -> type_:ts_TypeNode -> ts_TypeAliasDeclaration [@@js.global "updateTypeAliasDeclaration"]
    val createEnumDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_string -> members:ts_EnumMember list -> ts_EnumDeclaration [@@js.global "createEnumDeclaration"]
    val updateEnumDeclaration: node:ts_EnumDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier -> members:ts_EnumMember list -> ts_EnumDeclaration [@@js.global "updateEnumDeclaration"]
    val createModuleDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_ModuleName -> body:ts_ModuleBody or_undefined -> ?flags:ts_NodeFlags -> unit -> ts_ModuleDeclaration [@@js.global "createModuleDeclaration"]
    val updateModuleDeclaration: node:ts_ModuleDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_ModuleName -> body:ts_ModuleBody or_undefined -> ts_ModuleDeclaration [@@js.global "updateModuleDeclaration"]
    val createModuleBlock: statements:ts_Statement list -> ts_ModuleBlock [@@js.global "createModuleBlock"]
    val updateModuleBlock: node:ts_ModuleBlock -> statements:ts_Statement list -> ts_ModuleBlock [@@js.global "updateModuleBlock"]
    val createCaseBlock: clauses:ts_CaseOrDefaultClause list -> ts_CaseBlock [@@js.global "createCaseBlock"]
    val updateCaseBlock: node:ts_CaseBlock -> clauses:ts_CaseOrDefaultClause list -> ts_CaseBlock [@@js.global "updateCaseBlock"]
    val createNamespaceExportDeclaration: name:ts_Identifier or_string -> ts_NamespaceExportDeclaration [@@js.global "createNamespaceExportDeclaration"]
    val updateNamespaceExportDeclaration: node:ts_NamespaceExportDeclaration -> name:ts_Identifier -> ts_NamespaceExportDeclaration [@@js.global "updateNamespaceExportDeclaration"]
    val createImportEqualsDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier or_string -> moduleReference:ts_ModuleReference -> ts_ImportEqualsDeclaration [@@js.global "createImportEqualsDeclaration"]
    val updateImportEqualsDeclaration: node:ts_ImportEqualsDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> name:ts_Identifier -> moduleReference:ts_ModuleReference -> ts_ImportEqualsDeclaration [@@js.global "updateImportEqualsDeclaration"]
    val createImportDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> importClause:ts_ImportClause or_undefined -> moduleSpecifier:ts_Expression -> ts_ImportDeclaration [@@js.global "createImportDeclaration"]
    val updateImportDeclaration: node:ts_ImportDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> importClause:ts_ImportClause or_undefined -> moduleSpecifier:ts_Expression -> ts_ImportDeclaration [@@js.global "updateImportDeclaration"]
    val createImportClause: name:ts_Identifier or_undefined -> namedBindings:ts_NamedImportBindings or_undefined -> ?isTypeOnly:bool -> unit -> ts_ImportClause [@@js.global "createImportClause"]
    val updateImportClause: node:ts_ImportClause -> name:ts_Identifier or_undefined -> namedBindings:ts_NamedImportBindings or_undefined -> isTypeOnly:bool -> ts_ImportClause [@@js.global "updateImportClause"]
    val createNamespaceImport: name:ts_Identifier -> ts_NamespaceImport [@@js.global "createNamespaceImport"]
    val createNamespaceExport: name:ts_Identifier -> ts_NamespaceExport [@@js.global "createNamespaceExport"]
    val updateNamespaceImport: node:ts_NamespaceImport -> name:ts_Identifier -> ts_NamespaceImport [@@js.global "updateNamespaceImport"]
    val updateNamespaceExport: node:ts_NamespaceExport -> name:ts_Identifier -> ts_NamespaceExport [@@js.global "updateNamespaceExport"]
    val createNamedImports: elements:ts_ImportSpecifier list -> ts_NamedImports [@@js.global "createNamedImports"]
    val updateNamedImports: node:ts_NamedImports -> elements:ts_ImportSpecifier list -> ts_NamedImports [@@js.global "updateNamedImports"]
    val createImportSpecifier: propertyName:ts_Identifier or_undefined -> name:ts_Identifier -> ts_ImportSpecifier [@@js.global "createImportSpecifier"]
    val updateImportSpecifier: node:ts_ImportSpecifier -> propertyName:ts_Identifier or_undefined -> name:ts_Identifier -> ts_ImportSpecifier [@@js.global "updateImportSpecifier"]
    val createExportAssignment: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> isExportEquals:bool or_undefined -> expression:ts_Expression -> ts_ExportAssignment [@@js.global "createExportAssignment"]
    val updateExportAssignment: node:ts_ExportAssignment -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> expression:ts_Expression -> ts_ExportAssignment [@@js.global "updateExportAssignment"]
    val createExportDeclaration: decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> exportClause:ts_NamedExportBindings or_undefined -> ?moduleSpecifier:ts_Expression -> ?isTypeOnly:bool -> unit -> ts_ExportDeclaration [@@js.global "createExportDeclaration"]
    val updateExportDeclaration: node:ts_ExportDeclaration -> decorators:ts_Decorator list or_undefined -> modifiers:ts_Modifier list or_undefined -> exportClause:ts_NamedExportBindings or_undefined -> moduleSpecifier:ts_Expression or_undefined -> isTypeOnly:bool -> ts_ExportDeclaration [@@js.global "updateExportDeclaration"]
    val createNamedExports: elements:ts_ExportSpecifier list -> ts_NamedExports [@@js.global "createNamedExports"]
    val updateNamedExports: node:ts_NamedExports -> elements:ts_ExportSpecifier list -> ts_NamedExports [@@js.global "updateNamedExports"]
    val createExportSpecifier: propertyName:ts_Identifier or_string or_undefined -> name:ts_Identifier or_string -> ts_ExportSpecifier [@@js.global "createExportSpecifier"]
    val updateExportSpecifier: node:ts_ExportSpecifier -> propertyName:ts_Identifier or_undefined -> name:ts_Identifier -> ts_ExportSpecifier [@@js.global "updateExportSpecifier"]
    val createExternalModuleReference: expression:ts_Expression -> ts_ExternalModuleReference [@@js.global "createExternalModuleReference"]
    val updateExternalModuleReference: node:ts_ExternalModuleReference -> expression:ts_Expression -> ts_ExternalModuleReference [@@js.global "updateExternalModuleReference"]
    val createJsxElement: openingElement:ts_JsxOpeningElement -> children:ts_JsxChild list -> closingElement:ts_JsxClosingElement -> ts_JsxElement [@@js.global "createJsxElement"]
    val updateJsxElement: node:ts_JsxElement -> openingElement:ts_JsxOpeningElement -> children:ts_JsxChild list -> closingElement:ts_JsxClosingElement -> ts_JsxElement [@@js.global "updateJsxElement"]
    val createJsxSelfClosingElement: tagName:ts_JsxTagNameExpression -> typeArguments:ts_TypeNode list or_undefined -> attributes:ts_JsxAttributes -> ts_JsxSelfClosingElement [@@js.global "createJsxSelfClosingElement"]
    val updateJsxSelfClosingElement: node:ts_JsxSelfClosingElement -> tagName:ts_JsxTagNameExpression -> typeArguments:ts_TypeNode list or_undefined -> attributes:ts_JsxAttributes -> ts_JsxSelfClosingElement [@@js.global "updateJsxSelfClosingElement"]
    val createJsxOpeningElement: tagName:ts_JsxTagNameExpression -> typeArguments:ts_TypeNode list or_undefined -> attributes:ts_JsxAttributes -> ts_JsxOpeningElement [@@js.global "createJsxOpeningElement"]
    val updateJsxOpeningElement: node:ts_JsxOpeningElement -> tagName:ts_JsxTagNameExpression -> typeArguments:ts_TypeNode list or_undefined -> attributes:ts_JsxAttributes -> ts_JsxOpeningElement [@@js.global "updateJsxOpeningElement"]
    val createJsxClosingElement: tagName:ts_JsxTagNameExpression -> ts_JsxClosingElement [@@js.global "createJsxClosingElement"]
    val updateJsxClosingElement: node:ts_JsxClosingElement -> tagName:ts_JsxTagNameExpression -> ts_JsxClosingElement [@@js.global "updateJsxClosingElement"]
    val createJsxFragment: openingFragment:ts_JsxOpeningFragment -> children:ts_JsxChild list -> closingFragment:ts_JsxClosingFragment -> ts_JsxFragment [@@js.global "createJsxFragment"]
    val createJsxText: text:string -> ?containsOnlyTriviaWhiteSpaces:bool -> unit -> ts_JsxText [@@js.global "createJsxText"]
    val updateJsxText: node:ts_JsxText -> text:string -> ?containsOnlyTriviaWhiteSpaces:bool -> unit -> ts_JsxText [@@js.global "updateJsxText"]
    val createJsxOpeningFragment: unit -> ts_JsxOpeningFragment [@@js.global "createJsxOpeningFragment"]
    val createJsxJsxClosingFragment: unit -> ts_JsxClosingFragment [@@js.global "createJsxJsxClosingFragment"]
    val updateJsxFragment: node:ts_JsxFragment -> openingFragment:ts_JsxOpeningFragment -> children:ts_JsxChild list -> closingFragment:ts_JsxClosingFragment -> ts_JsxFragment [@@js.global "updateJsxFragment"]
    val createJsxAttribute: name:ts_Identifier -> initializer_:(([`U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2  | `U_n_276 of (ts_JsxExpression, ts_JsxExpression) union2 ] [@js.union on_field "kind"]), (ts_JsxExpression, ts_StringLiteral) or_) or_ -> ts_JsxAttribute [@@js.global "createJsxAttribute"]
    val updateJsxAttribute: node:ts_JsxAttribute -> name:ts_Identifier -> initializer_:(([`U_n_10 of (ts_StringLiteral, ts_StringLiteral) union2  | `U_n_276 of (ts_JsxExpression, ts_JsxExpression) union2 ] [@js.union on_field "kind"]), (ts_JsxExpression, ts_StringLiteral) or_) or_ -> ts_JsxAttribute [@@js.global "updateJsxAttribute"]
    val createJsxAttributes: properties:ts_JsxAttributeLike list -> ts_JsxAttributes [@@js.global "createJsxAttributes"]
    val updateJsxAttributes: node:ts_JsxAttributes -> properties:ts_JsxAttributeLike list -> ts_JsxAttributes [@@js.global "updateJsxAttributes"]
    val createJsxSpreadAttribute: expression:ts_Expression -> ts_JsxSpreadAttribute [@@js.global "createJsxSpreadAttribute"]
    val updateJsxSpreadAttribute: node:ts_JsxSpreadAttribute -> expression:ts_Expression -> ts_JsxSpreadAttribute [@@js.global "updateJsxSpreadAttribute"]
    val createJsxExpression: dotDotDotToken:ts_DotDotDotToken or_undefined -> expression:ts_Expression or_undefined -> ts_JsxExpression [@@js.global "createJsxExpression"]
    val updateJsxExpression: node:ts_JsxExpression -> expression:ts_Expression or_undefined -> ts_JsxExpression [@@js.global "updateJsxExpression"]
    val createCaseClause: expression:ts_Expression -> statements:ts_Statement list -> ts_CaseClause [@@js.global "createCaseClause"]
    val updateCaseClause: node:ts_CaseClause -> expression:ts_Expression -> statements:ts_Statement list -> ts_CaseClause [@@js.global "updateCaseClause"]
    val createDefaultClause: statements:ts_Statement list -> ts_DefaultClause [@@js.global "createDefaultClause"]
    val updateDefaultClause: node:ts_DefaultClause -> statements:ts_Statement list -> ts_DefaultClause [@@js.global "updateDefaultClause"]
    val createHeritageClause: token:((ts_SyntaxKind_ExtendsKeyword, ts_SyntaxKind_ImplementsKeyword) or_, ([`ExtendsKeyword | `ImplementsKeyword] [@js.enum])) or_enum -> types:ts_ExpressionWithTypeArguments list -> ts_HeritageClause [@@js.global "createHeritageClause"]
    val updateHeritageClause: node:ts_HeritageClause -> types:ts_ExpressionWithTypeArguments list -> ts_HeritageClause [@@js.global "updateHeritageClause"]
    val createCatchClause: variableDeclaration:ts_VariableDeclaration or_string or_undefined -> block:ts_Block -> ts_CatchClause [@@js.global "createCatchClause"]
    val updateCatchClause: node:ts_CatchClause -> variableDeclaration:ts_VariableDeclaration or_undefined -> block:ts_Block -> ts_CatchClause [@@js.global "updateCatchClause"]
    val createPropertyAssignment: name:ts_PropertyName or_string -> initializer_:ts_Expression -> ts_PropertyAssignment [@@js.global "createPropertyAssignment"]
    val updatePropertyAssignment: node:ts_PropertyAssignment -> name:ts_PropertyName -> initializer_:ts_Expression -> ts_PropertyAssignment [@@js.global "updatePropertyAssignment"]
    val createShorthandPropertyAssignment: name:ts_Identifier or_string -> ?objectAssignmentInitializer:ts_Expression -> unit -> ts_ShorthandPropertyAssignment [@@js.global "createShorthandPropertyAssignment"]
    val updateShorthandPropertyAssignment: node:ts_ShorthandPropertyAssignment -> name:ts_Identifier -> objectAssignmentInitializer:ts_Expression or_undefined -> ts_ShorthandPropertyAssignment [@@js.global "updateShorthandPropertyAssignment"]
    val createSpreadAssignment: expression:ts_Expression -> ts_SpreadAssignment [@@js.global "createSpreadAssignment"]
    val updateSpreadAssignment: node:ts_SpreadAssignment -> expression:ts_Expression -> ts_SpreadAssignment [@@js.global "updateSpreadAssignment"]
    val createEnumMember: name:ts_PropertyName or_string -> ?initializer_:ts_Expression -> unit -> ts_EnumMember [@@js.global "createEnumMember"]
    val updateEnumMember: node:ts_EnumMember -> name:ts_PropertyName -> initializer_:ts_Expression or_undefined -> ts_EnumMember [@@js.global "updateEnumMember"]
    val updateSourceFileNode: node:ts_SourceFile -> statements:ts_Statement list -> ?isDeclarationFile:bool -> ?referencedFiles:ts_FileReference list -> ?typeReferences:ts_FileReference list -> ?hasNoDefaultLib:bool -> ?libReferences:ts_FileReference list -> unit -> ts_SourceFile [@@js.global "updateSourceFileNode"]
    val getMutableClone: node:'T -> 'T [@@js.global "getMutableClone"]
    val createNotEmittedStatement: original:ts_Node -> ts_NotEmittedStatement [@@js.global "createNotEmittedStatement"]
    val createPartiallyEmittedExpression: expression:ts_Expression -> ?original:ts_Node -> unit -> ts_PartiallyEmittedExpression [@@js.global "createPartiallyEmittedExpression"]
    val updatePartiallyEmittedExpression: node:ts_PartiallyEmittedExpression -> expression:ts_Expression -> ts_PartiallyEmittedExpression [@@js.global "updatePartiallyEmittedExpression"]
    val createCommaList: elements:ts_Expression list -> ts_CommaListExpression [@@js.global "createCommaList"]
    val updateCommaList: node:ts_CommaListExpression -> elements:ts_Expression list -> ts_CommaListExpression [@@js.global "updateCommaList"]
    val createBundle: sourceFiles:ts_SourceFile list -> ?prepends:(([`U_n_292 of (ts_UnparsedSource, ts_UnparsedSource) union2  | `U_n_293 of (ts_InputFiles, ts_InputFiles) union2 ] [@js.union on_field "kind"]), (ts_InputFiles, ts_UnparsedSource) or_) or_ list -> unit -> ts_Bundle [@@js.global "createBundle"]
    val createUnparsedSourceFile: text:string -> ts_UnparsedSource [@@js.global "createUnparsedSourceFile"]
    val createUnparsedSourceFile: inputFile:ts_InputFiles -> type_:([`L_s59_dts | `L_s83_js] [@js.enum]) -> ?stripInternal:bool -> unit -> ts_UnparsedSource [@@js.global "createUnparsedSourceFile"]
    val createUnparsedSourceFile: text:string -> mapPath:string or_undefined -> map:string or_undefined -> ts_UnparsedSource [@@js.global "createUnparsedSourceFile"]
    val createInputFiles: javascriptText:string -> declarationText:string -> ts_InputFiles [@@js.global "createInputFiles"]
    val createInputFiles: readFileText:(path:string -> string or_undefined) -> javascriptPath:string -> javascriptMapPath:string or_undefined -> declarationPath:string -> declarationMapPath:string or_undefined -> buildInfoPath:string or_undefined -> ts_InputFiles [@@js.global "createInputFiles"]
    val createInputFiles: javascriptText:string -> declarationText:string -> javascriptMapPath:string or_undefined -> javascriptMapText:string or_undefined -> declarationMapPath:string or_undefined -> declarationMapText:string or_undefined -> ts_InputFiles [@@js.global "createInputFiles"]
    val updateBundle: node:ts_Bundle -> sourceFiles:ts_SourceFile list -> ?prepends:(([`U_n_292 of (ts_UnparsedSource, ts_UnparsedSource) union2  | `U_n_293 of (ts_InputFiles, ts_InputFiles) union2 ] [@js.union on_field "kind"]), (ts_InputFiles, ts_UnparsedSource) or_) or_ list -> unit -> ts_Bundle [@@js.global "updateBundle"]
    val createImmediatelyInvokedFunctionExpression: statements:ts_Statement list -> ts_CallExpression [@@js.global "createImmediatelyInvokedFunctionExpression"]
    val createImmediatelyInvokedFunctionExpression: statements:ts_Statement list -> param:ts_ParameterDeclaration -> paramValue:ts_Expression -> ts_CallExpression [@@js.global "createImmediatelyInvokedFunctionExpression"]
    val createImmediatelyInvokedArrowFunction: statements:ts_Statement list -> ts_CallExpression [@@js.global "createImmediatelyInvokedArrowFunction"]
    val createImmediatelyInvokedArrowFunction: statements:ts_Statement list -> param:ts_ParameterDeclaration -> paramValue:ts_Expression -> ts_CallExpression [@@js.global "createImmediatelyInvokedArrowFunction"]
    val createComma: left:ts_Expression -> right:ts_Expression -> ts_Expression [@@js.global "createComma"]
    val createLessThan: left:ts_Expression -> right:ts_Expression -> ts_Expression [@@js.global "createLessThan"]
    val createAssignment: left:(([`U_n_192 of (ts_ArrayLiteralExpression, ts_ArrayLiteralExpression) union2  | `U_n_193 of (ts_ObjectLiteralExpression, ts_ObjectLiteralExpression) union2 ] [@js.union on_field "kind"]), (ts_ArrayLiteralExpression, ts_ObjectLiteralExpression) or_) or_ -> right:ts_Expression -> ts_DestructuringAssignment [@@js.global "createAssignment"]
    val createAssignment: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createAssignment"]
    val createStrictEquality: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createStrictEquality"]
    val createStrictInequality: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createStrictInequality"]
    val createAdd: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createAdd"]
    val createSubtract: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createSubtract"]
    val createPostfixIncrement: operand:ts_Expression -> ts_PostfixUnaryExpression [@@js.global "createPostfixIncrement"]
    val createLogicalAnd: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createLogicalAnd"]
    val createLogicalOr: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createLogicalOr"]
    val createNullishCoalesce: left:ts_Expression -> right:ts_Expression -> ts_BinaryExpression [@@js.global "createNullishCoalesce"]
    val createLogicalNot: operand:ts_Expression -> ts_PrefixUnaryExpression [@@js.global "createLogicalNot"]
    val createVoidZero: unit -> ts_VoidExpression [@@js.global "createVoidZero"]
    val createExportDefault: expression:ts_Expression -> ts_ExportAssignment [@@js.global "createExportDefault"]
    val createExternalModuleExport: exportName:ts_Identifier -> ts_ExportDeclaration [@@js.global "createExternalModuleExport"]
    val disposeEmitNodes: sourceFile:ts_SourceFile -> unit [@@js.global "disposeEmitNodes"]
    val setTextRange: range:'T -> location:ts_TextRange or_undefined -> 'T [@@js.global "setTextRange"]
    val setEmitFlags: node:'T -> emitFlags:ts_EmitFlags -> 'T [@@js.global "setEmitFlags"]
    val getSourceMapRange: node:ts_Node -> ts_SourceMapRange [@@js.global "getSourceMapRange"]
    val setSourceMapRange: node:'T -> range:ts_SourceMapRange or_undefined -> 'T [@@js.global "setSourceMapRange"]
    val createSourceMapSource: fileName:string -> text:string -> ?skipTrivia:(pos:float -> float) -> unit -> ts_SourceMapSource [@@js.global "createSourceMapSource"]
    val getTokenSourceMapRange: node:ts_Node -> token:ts_SyntaxKind -> ts_SourceMapRange or_undefined [@@js.global "getTokenSourceMapRange"]
    val setTokenSourceMapRange: node:'T -> token:ts_SyntaxKind -> range:ts_SourceMapRange or_undefined -> 'T [@@js.global "setTokenSourceMapRange"]
    val getCommentRange: node:ts_Node -> ts_TextRange [@@js.global "getCommentRange"]
    val setCommentRange: node:'T -> range:ts_TextRange -> 'T [@@js.global "setCommentRange"]
    val getSyntheticLeadingComments: node:ts_Node -> ts_SynthesizedComment list or_undefined [@@js.global "getSyntheticLeadingComments"]
    val setSyntheticLeadingComments: node:'T -> comments:ts_SynthesizedComment list or_undefined -> 'T [@@js.global "setSyntheticLeadingComments"]
    val addSyntheticLeadingComment: node:'T -> kind:((ts_SyntaxKind_MultiLineCommentTrivia, ts_SyntaxKind_SingleLineCommentTrivia) or_, ([`MultiLineCommentTrivia | `SingleLineCommentTrivia] [@js.enum])) or_enum -> text:string -> ?hasTrailingNewLine:bool -> unit -> 'T [@@js.global "addSyntheticLeadingComment"]
    val getSyntheticTrailingComments: node:ts_Node -> ts_SynthesizedComment list or_undefined [@@js.global "getSyntheticTrailingComments"]
    val setSyntheticTrailingComments: node:'T -> comments:ts_SynthesizedComment list or_undefined -> 'T [@@js.global "setSyntheticTrailingComments"]
    val addSyntheticTrailingComment: node:'T -> kind:((ts_SyntaxKind_MultiLineCommentTrivia, ts_SyntaxKind_SingleLineCommentTrivia) or_, ([`MultiLineCommentTrivia | `SingleLineCommentTrivia] [@js.enum])) or_enum -> text:string -> ?hasTrailingNewLine:bool -> unit -> 'T [@@js.global "addSyntheticTrailingComment"]
    val moveSyntheticComments: node:'T -> original:ts_Node -> 'T [@@js.global "moveSyntheticComments"]
    val getConstantValue: node:(([`U_n_194 of (ts_PropertyAccessExpression, ts_PropertyAccessExpression) union2  | `U_n_195 of (ts_ElementAccessExpression, ts_ElementAccessExpression) union2 ] [@js.union on_field "kind"]), (ts_ElementAccessExpression, ts_PropertyAccessExpression) or_) or_ -> prim_union or_undefined [@@js.global "getConstantValue"]
    val setConstantValue: node:(([`U_n_194 of (ts_PropertyAccessExpression, ts_PropertyAccessExpression) union2  | `U_n_195 of (ts_ElementAccessExpression, ts_ElementAccessExpression) union2 ] [@js.union on_field "kind"]), (ts_ElementAccessExpression, ts_PropertyAccessExpression) or_) or_ -> value:prim_union -> (([`U_n_194 of (ts_PropertyAccessExpression, ts_PropertyAccessExpression) union2 [@js 194] | `U_n_195 of (ts_ElementAccessExpression, ts_ElementAccessExpression) union2 [@js 195]] [@js.union on_field "kind"]), (ts_ElementAccessExpression, ts_PropertyAccessExpression) or_) or_ [@@js.global "setConstantValue"]
    val addEmitHelper: node:'T -> helper:ts_EmitHelper -> 'T [@@js.global "addEmitHelper"]
    val addEmitHelpers: node:'T -> helpers:ts_EmitHelper list or_undefined -> 'T [@@js.global "addEmitHelpers"]
    val removeEmitHelper: node:ts_Node -> helper:ts_EmitHelper -> bool [@@js.global "removeEmitHelper"]
    val getEmitHelpers: node:ts_Node -> ts_EmitHelper list or_undefined [@@js.global "getEmitHelpers"]
    val moveEmitHelpers: source:ts_Node -> target:ts_Node -> predicate:(helper:ts_EmitHelper -> bool) -> unit [@@js.global "moveEmitHelpers"]
    val setOriginalNode: node:'T -> original:ts_Node or_undefined -> 'T [@@js.global "setOriginalNode"]
    val visitNode: node:'T or_undefined -> visitor:ts_Visitor or_undefined -> ?test:(node:ts_Node -> bool) -> ?lift:(node:ts_Node ts_NodeArray -> 'T) -> unit -> 'T [@@js.global "visitNode"]
    val visitNode: node:'T or_undefined -> visitor:ts_Visitor or_undefined -> ?test:(node:ts_Node -> bool) -> ?lift:(node:ts_Node ts_NodeArray -> 'T) -> unit -> 'T or_undefined [@@js.global "visitNode"]
    val visitNodes: nodes:'T ts_NodeArray or_undefined -> visitor:ts_Visitor -> ?test:(node:ts_Node -> bool) -> ?start:float -> ?count:float -> unit -> 'T ts_NodeArray [@@js.global "visitNodes"]
    val visitNodes: nodes:'T ts_NodeArray or_undefined -> visitor:ts_Visitor -> ?test:(node:ts_Node -> bool) -> ?start:float -> ?count:float -> unit -> 'T ts_NodeArray or_undefined [@@js.global "visitNodes"]
    val visitLexicalEnvironment: statements:ts_Statement ts_NodeArray -> visitor:ts_Visitor -> context:ts_TransformationContext -> ?start:float -> ?ensureUseStrict:bool -> unit -> ts_Statement ts_NodeArray [@@js.global "visitLexicalEnvironment"]
    val visitParameterList: nodes:ts_ParameterDeclaration ts_NodeArray or_undefined -> visitor:ts_Visitor -> context:ts_TransformationContext -> ?nodesVisitor:anonymous_interface_18 -> unit -> ts_ParameterDeclaration ts_NodeArray [@@js.global "visitParameterList"]
    val visitFunctionBody: node:ts_FunctionBody -> visitor:ts_Visitor -> context:ts_TransformationContext -> ts_FunctionBody [@@js.global "visitFunctionBody"]
    val visitFunctionBody: node:ts_FunctionBody or_undefined -> visitor:ts_Visitor -> context:ts_TransformationContext -> ts_FunctionBody or_undefined [@@js.global "visitFunctionBody"]
    val visitFunctionBody: node:ts_ConciseBody -> visitor:ts_Visitor -> context:ts_TransformationContext -> ts_ConciseBody [@@js.global "visitFunctionBody"]
    val visitEachChild: node:'T -> visitor:ts_Visitor -> context:ts_TransformationContext -> 'T [@@js.global "visitEachChild"]
    val visitEachChild: node:'T or_undefined -> visitor:ts_Visitor -> context:ts_TransformationContext -> ?nodesVisitor:anonymous_interface_18 -> ?tokenVisitor:ts_Visitor -> unit -> 'T or_undefined [@@js.global "visitEachChild"]
    val getTsBuildInfoEmitOutputFilePath: options:ts_CompilerOptions -> string or_undefined [@@js.global "getTsBuildInfoEmitOutputFilePath"]
    val getOutputFileNames: commandLine:ts_ParsedCommandLine -> inputFileName:string -> ignoreCase:bool -> string list [@@js.global "getOutputFileNames"]
    val createPrinter: ?printerOptions:ts_PrinterOptions -> ?handlers:ts_PrintHandlers -> unit -> ts_Printer [@@js.global "createPrinter"]
    val findConfigFile: searchPath:string -> fileExists:(fileName:string -> bool) -> ?configName:string -> unit -> string or_undefined [@@js.global "findConfigFile"]
    val resolveTripleslashReference: moduleName:string -> containingFile:string -> string [@@js.global "resolveTripleslashReference"]
    val createCompilerHost: options:ts_CompilerOptions -> ?setParentNodes:bool -> unit -> ts_CompilerHost [@@js.global "createCompilerHost"]
    val getPreEmitDiagnostics: program:ts_Program -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.global "getPreEmitDiagnostics"]
    module[@js.scope "FormatDiagnosticsHost"] FormatDiagnosticsHost : sig
      type t = ts_FormatDiagnosticsHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
      val getCanonicalFileName: t -> fileName:string -> string [@@js.call "getCanonicalFileName"]
      val getNewLine: t -> string [@@js.call "getNewLine"]
    end
    val formatDiagnostics: diagnostics:ts_Diagnostic list -> host:ts_FormatDiagnosticsHost -> string [@@js.global "formatDiagnostics"]
    val formatDiagnostic: diagnostic:ts_Diagnostic -> host:ts_FormatDiagnosticsHost -> string [@@js.global "formatDiagnostic"]
    val formatDiagnosticsWithColorAndContext: diagnostics:ts_Diagnostic list -> host:ts_FormatDiagnosticsHost -> string [@@js.global "formatDiagnosticsWithColorAndContext"]
    val flattenDiagnosticMessageText: diag:ts_DiagnosticMessageChain or_string or_undefined -> newLine:string -> ?indent:float -> unit -> string [@@js.global "flattenDiagnosticMessageText"]
    val getConfigFileParsingDiagnostics: configFileParseResult:ts_ParsedCommandLine -> ts_Diagnostic list [@@js.global "getConfigFileParsingDiagnostics"]
    val createProgram: createProgramOptions:ts_CreateProgramOptions -> ts_Program [@@js.global "createProgram"]
    val createProgram: rootNames:string list -> options:ts_CompilerOptions -> ?host:ts_CompilerHost -> ?oldProgram:ts_Program -> ?configFileParsingDiagnostics:ts_Diagnostic list -> unit -> ts_Program [@@js.global "createProgram"]
    module[@js.scope "ResolveProjectReferencePathHost"] ResolveProjectReferencePathHost : sig
      type t = ts_ResolveProjectReferencePathHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val fileExists: t -> fileName:string -> bool [@@js.call "fileExists"]
    end
    val resolveProjectReferencePath: ref:ts_ProjectReference -> ts_ResolvedConfigFileName [@@js.global "resolveProjectReferencePath"]
    val resolveProjectReferencePath: host:ts_ResolveProjectReferencePathHost -> ref:ts_ProjectReference -> ts_ResolvedConfigFileName [@@js.global "resolveProjectReferencePath"]
    (* export {}; *)
    module[@js.scope "EmitOutput"] EmitOutput : sig
      type t = ts_EmitOutput
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_outputFiles: t -> ts_OutputFile list [@@js.get "outputFiles"]
      val set_outputFiles: t -> ts_OutputFile list -> unit [@@js.set "outputFiles"]
      val get_emitSkipped: t -> bool [@@js.get "emitSkipped"]
      val set_emitSkipped: t -> bool -> unit [@@js.set "emitSkipped"]
    end
    module[@js.scope "OutputFile"] OutputFile : sig
      type t = ts_OutputFile
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
    module AffectedFileResult : sig
      type 'T t = 'T ts_AffectedFileResult
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    module[@js.scope "BuilderProgramHost"] BuilderProgramHost : sig
      type t = ts_BuilderProgramHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val useCaseSensitiveFileNames: t -> bool [@@js.call "useCaseSensitiveFileNames"]
      val createHash: t -> data:string -> string [@@js.call "createHash"]
      val get_writeFile: t -> ts_WriteFileCallback [@@js.get "writeFile"]
      val set_writeFile: t -> ts_WriteFileCallback -> unit [@@js.set "writeFile"]
    end
    module[@js.scope "BuilderProgram"] BuilderProgram : sig
      type t = ts_BuilderProgram
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getProgram: t -> ts_Program [@@js.call "getProgram"]
      val getCompilerOptions: t -> ts_CompilerOptions [@@js.call "getCompilerOptions"]
      val getSourceFile: t -> fileName:string -> ts_SourceFile or_undefined [@@js.call "getSourceFile"]
      val getSourceFiles: t -> ts_SourceFile list [@@js.call "getSourceFiles"]
      val getOptionsDiagnostics: t -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getOptionsDiagnostics"]
      val getGlobalDiagnostics: t -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getGlobalDiagnostics"]
      val getConfigFileParsingDiagnostics: t -> ts_Diagnostic list [@@js.call "getConfigFileParsingDiagnostics"]
      val getSyntacticDiagnostics: t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getSyntacticDiagnostics"]
      val getDeclarationDiagnostics: t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_DiagnosticWithLocation list [@@js.call "getDeclarationDiagnostics"]
      val getAllDependencies: t -> sourceFile:ts_SourceFile -> string list [@@js.call "getAllDependencies"]
      val getSemanticDiagnostics: t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getSemanticDiagnostics"]
      val emit: t -> ?targetSourceFile:ts_SourceFile -> ?writeFile:ts_WriteFileCallback -> ?cancellationToken:ts_CancellationToken -> ?emitOnlyDtsFiles:bool -> ?customTransformers:ts_CustomTransformers -> unit -> ts_EmitResult [@@js.call "emit"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
    end
    module[@js.scope "SemanticDiagnosticsBuilderProgram"] SemanticDiagnosticsBuilderProgram : sig
      type t = ts_SemanticDiagnosticsBuilderProgram
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getSemanticDiagnosticsOfNextAffectedFile: t -> ?cancellationToken:ts_CancellationToken -> ?ignoreSourceFile:(sourceFile:ts_SourceFile -> bool) -> unit -> ts_Diagnostic list ts_AffectedFileResult [@@js.call "getSemanticDiagnosticsOfNextAffectedFile"]
      val cast: t -> ts_BuilderProgram [@@js.cast]
    end
    module[@js.scope "EmitAndSemanticDiagnosticsBuilderProgram"] EmitAndSemanticDiagnosticsBuilderProgram : sig
      type t = ts_EmitAndSemanticDiagnosticsBuilderProgram
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val emitNextAffectedFile: t -> ?writeFile:ts_WriteFileCallback -> ?cancellationToken:ts_CancellationToken -> ?emitOnlyDtsFiles:bool -> ?customTransformers:ts_CustomTransformers -> unit -> ts_EmitResult ts_AffectedFileResult [@@js.call "emitNextAffectedFile"]
      val cast: t -> ts_SemanticDiagnosticsBuilderProgram [@@js.cast]
    end
    val createSemanticDiagnosticsBuilderProgram: newProgram:ts_Program -> host:ts_BuilderProgramHost -> ?oldProgram:ts_SemanticDiagnosticsBuilderProgram -> ?configFileParsingDiagnostics:ts_Diagnostic list -> unit -> ts_SemanticDiagnosticsBuilderProgram [@@js.global "createSemanticDiagnosticsBuilderProgram"]
    val createSemanticDiagnosticsBuilderProgram: rootNames:string list or_undefined -> options:ts_CompilerOptions or_undefined -> ?host:ts_CompilerHost -> ?oldProgram:ts_SemanticDiagnosticsBuilderProgram -> ?configFileParsingDiagnostics:ts_Diagnostic list -> ?projectReferences:ts_ProjectReference list -> unit -> ts_SemanticDiagnosticsBuilderProgram [@@js.global "createSemanticDiagnosticsBuilderProgram"]
    val createEmitAndSemanticDiagnosticsBuilderProgram: newProgram:ts_Program -> host:ts_BuilderProgramHost -> ?oldProgram:ts_EmitAndSemanticDiagnosticsBuilderProgram -> ?configFileParsingDiagnostics:ts_Diagnostic list -> unit -> ts_EmitAndSemanticDiagnosticsBuilderProgram [@@js.global "createEmitAndSemanticDiagnosticsBuilderProgram"]
    val createEmitAndSemanticDiagnosticsBuilderProgram: rootNames:string list or_undefined -> options:ts_CompilerOptions or_undefined -> ?host:ts_CompilerHost -> ?oldProgram:ts_EmitAndSemanticDiagnosticsBuilderProgram -> ?configFileParsingDiagnostics:ts_Diagnostic list -> ?projectReferences:ts_ProjectReference list -> unit -> ts_EmitAndSemanticDiagnosticsBuilderProgram [@@js.global "createEmitAndSemanticDiagnosticsBuilderProgram"]
    val createAbstractBuilder: newProgram:ts_Program -> host:ts_BuilderProgramHost -> ?oldProgram:ts_BuilderProgram -> ?configFileParsingDiagnostics:ts_Diagnostic list -> unit -> ts_BuilderProgram [@@js.global "createAbstractBuilder"]
    val createAbstractBuilder: rootNames:string list or_undefined -> options:ts_CompilerOptions or_undefined -> ?host:ts_CompilerHost -> ?oldProgram:ts_BuilderProgram -> ?configFileParsingDiagnostics:ts_Diagnostic list -> ?projectReferences:ts_ProjectReference list -> unit -> ts_BuilderProgram [@@js.global "createAbstractBuilder"]
    module[@js.scope "ReadBuildProgramHost"] ReadBuildProgramHost : sig
      type t = ts_ReadBuildProgramHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val useCaseSensitiveFileNames: t -> bool [@@js.call "useCaseSensitiveFileNames"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
      val readFile: t -> fileName:string -> string or_undefined [@@js.call "readFile"]
    end
    val readBuilderProgram: compilerOptions:ts_CompilerOptions -> host:ts_ReadBuildProgramHost -> ts_EmitAndSemanticDiagnosticsBuilderProgram or_undefined [@@js.global "readBuilderProgram"]
    val createIncrementalCompilerHost: options:ts_CompilerOptions -> ?system:ts_System -> unit -> ts_CompilerHost [@@js.global "createIncrementalCompilerHost"]
    module[@js.scope "IncrementalProgramOptions"] IncrementalProgramOptions : sig
      type 'T t = 'T ts_IncrementalProgramOptions
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_rootNames: 'T t -> string list [@@js.get "rootNames"]
      val set_rootNames: 'T t -> string list -> unit [@@js.set "rootNames"]
      val get_options: 'T t -> ts_CompilerOptions [@@js.get "options"]
      val set_options: 'T t -> ts_CompilerOptions -> unit [@@js.set "options"]
      val get_configFileParsingDiagnostics: 'T t -> ts_Diagnostic list [@@js.get "configFileParsingDiagnostics"]
      val set_configFileParsingDiagnostics: 'T t -> ts_Diagnostic list -> unit [@@js.set "configFileParsingDiagnostics"]
      val get_projectReferences: 'T t -> ts_ProjectReference list [@@js.get "projectReferences"]
      val set_projectReferences: 'T t -> ts_ProjectReference list -> unit [@@js.set "projectReferences"]
      val get_host: 'T t -> ts_CompilerHost [@@js.get "host"]
      val set_host: 'T t -> ts_CompilerHost -> unit [@@js.set "host"]
      val get_createProgram: 'T t -> 'T ts_CreateProgram [@@js.get "createProgram"]
      val set_createProgram: 'T t -> 'T ts_CreateProgram -> unit [@@js.set "createProgram"]
    end
    val createIncrementalProgram: 'T ts_IncrementalProgramOptions -> 'T [@@js.global "createIncrementalProgram"]
    module[@js.scope "WatchStatusReporter"] WatchStatusReporter : sig
      type t = ts_WatchStatusReporter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> diagnostic:ts_Diagnostic -> newLine:string -> options:ts_CompilerOptions -> ?errorCount:float -> unit -> unit [@@js.apply]
    end
    module[@js.scope "CreateProgram"] CreateProgram : sig
      type 'T t = 'T ts_CreateProgram
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val apply: 'T t -> rootNames:string list or_undefined -> options:ts_CompilerOptions or_undefined -> ?host:ts_CompilerHost -> ?oldProgram:'T -> ?configFileParsingDiagnostics:ts_Diagnostic list -> ?projectReferences:ts_ProjectReference list or_undefined -> unit -> 'T [@@js.apply]
    end
    module[@js.scope "WatchHost"] WatchHost : sig
      type t = ts_WatchHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val onWatchStatusChange: t -> diagnostic:ts_Diagnostic -> newLine:string -> options:ts_CompilerOptions -> ?errorCount:float -> unit -> unit [@@js.call "onWatchStatusChange"]
      val watchFile: t -> path:string -> callback:ts_FileWatcherCallback -> ?pollingInterval:float -> ?options:ts_CompilerOptions -> unit -> ts_FileWatcher [@@js.call "watchFile"]
      val watchDirectory: t -> path:string -> callback:ts_DirectoryWatcherCallback -> ?recursive:bool -> ?options:ts_CompilerOptions -> unit -> ts_FileWatcher [@@js.call "watchDirectory"]
      val setTimeout: t -> callback:(args:(any list [@js.variadic]) -> unit) -> ms:float -> args:(any list [@js.variadic]) -> any [@@js.call "setTimeout"]
      val clearTimeout: t -> timeoutId:any -> unit [@@js.call "clearTimeout"]
    end
    module[@js.scope "ProgramHost"] ProgramHost : sig
      type 'T t = 'T ts_ProgramHost
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_createProgram: 'T t -> 'T ts_CreateProgram [@@js.get "createProgram"]
      val set_createProgram: 'T t -> 'T ts_CreateProgram -> unit [@@js.set "createProgram"]
      val useCaseSensitiveFileNames: 'T t -> bool [@@js.call "useCaseSensitiveFileNames"]
      val getNewLine: 'T t -> string [@@js.call "getNewLine"]
      val getCurrentDirectory: 'T t -> string [@@js.call "getCurrentDirectory"]
      val getDefaultLibFileName: 'T t -> options:ts_CompilerOptions -> string [@@js.call "getDefaultLibFileName"]
      val getDefaultLibLocation: 'T t -> string [@@js.call "getDefaultLibLocation"]
      val createHash: 'T t -> data:string -> string [@@js.call "createHash"]
      val fileExists: 'T t -> path:string -> bool [@@js.call "fileExists"]
      val readFile: 'T t -> path:string -> ?encoding:string -> unit -> string or_undefined [@@js.call "readFile"]
      val directoryExists: 'T t -> path:string -> bool [@@js.call "directoryExists"]
      val getDirectories: 'T t -> path:string -> string list [@@js.call "getDirectories"]
      val readDirectory: 'T t -> path:string -> ?extensions:string list -> ?exclude:string list -> ?include_:string list -> ?depth:float -> unit -> string list [@@js.call "readDirectory"]
      val realpath: 'T t -> path:string -> string [@@js.call "realpath"]
      val trace: 'T t -> s:string -> unit [@@js.call "trace"]
      val getEnvironmentVariable: 'T t -> name:string -> string or_undefined [@@js.call "getEnvironmentVariable"]
      val resolveModuleNames: 'T t -> moduleNames:string list -> containingFile:string -> reusedNames:string list or_undefined -> redirectedReference:ts_ResolvedProjectReference or_undefined -> options:ts_CompilerOptions -> ts_ResolvedModule or_undefined list [@@js.call "resolveModuleNames"]
      val resolveTypeReferenceDirectives: 'T t -> typeReferenceDirectiveNames:string list -> containingFile:string -> redirectedReference:ts_ResolvedProjectReference or_undefined -> options:ts_CompilerOptions -> ts_ResolvedTypeReferenceDirective or_undefined list [@@js.call "resolveTypeReferenceDirectives"]
    end
    module[@js.scope "WatchCompilerHost"] WatchCompilerHost : sig
      type 'T t = 'T ts_WatchCompilerHost
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val afterProgramCreate: 'T t -> program:'T -> unit [@@js.call "afterProgramCreate"]
      val cast: 'T t -> 'T ts_ProgramHost [@@js.cast]
      val cast': 'T t -> ts_WatchHost [@@js.cast]
    end
    module[@js.scope "WatchCompilerHostOfFilesAndCompilerOptions"] WatchCompilerHostOfFilesAndCompilerOptions : sig
      type 'T t = 'T ts_WatchCompilerHostOfFilesAndCompilerOptions
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_rootFiles: 'T t -> string list [@@js.get "rootFiles"]
      val set_rootFiles: 'T t -> string list -> unit [@@js.set "rootFiles"]
      val get_options: 'T t -> ts_CompilerOptions [@@js.get "options"]
      val set_options: 'T t -> ts_CompilerOptions -> unit [@@js.set "options"]
      val get_watchOptions: 'T t -> ts_WatchOptions [@@js.get "watchOptions"]
      val set_watchOptions: 'T t -> ts_WatchOptions -> unit [@@js.set "watchOptions"]
      val get_projectReferences: 'T t -> ts_ProjectReference list [@@js.get "projectReferences"]
      val set_projectReferences: 'T t -> ts_ProjectReference list -> unit [@@js.set "projectReferences"]
      val cast: 'T t -> 'T ts_WatchCompilerHost [@@js.cast]
    end
    module[@js.scope "WatchCompilerHostOfConfigFile"] WatchCompilerHostOfConfigFile : sig
      type 'T t = 'T ts_WatchCompilerHostOfConfigFile
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_configFileName: 'T t -> string [@@js.get "configFileName"]
      val set_configFileName: 'T t -> string -> unit [@@js.set "configFileName"]
      val get_optionsToExtend: 'T t -> ts_CompilerOptions [@@js.get "optionsToExtend"]
      val set_optionsToExtend: 'T t -> ts_CompilerOptions -> unit [@@js.set "optionsToExtend"]
      val get_watchOptionsToExtend: 'T t -> ts_WatchOptions [@@js.get "watchOptionsToExtend"]
      val set_watchOptionsToExtend: 'T t -> ts_WatchOptions -> unit [@@js.set "watchOptionsToExtend"]
      val readDirectory: 'T t -> path:string -> ?extensions:string list -> ?exclude:string list -> ?include_:string list -> ?depth:float -> unit -> string list [@@js.call "readDirectory"]
      val cast: 'T t -> 'T ts_WatchCompilerHost [@@js.cast]
      val cast': 'T t -> ts_ConfigFileDiagnosticsReporter [@@js.cast]
    end
    module[@js.scope "Watch"] Watch : sig
      type 'T t = 'T ts_Watch
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val getProgram: 'T t -> 'T [@@js.call "getProgram"]
      val close: 'T t -> unit [@@js.call "close"]
    end
    module[@js.scope "WatchOfConfigFile"] WatchOfConfigFile : sig
      type 'T t = 'T ts_WatchOfConfigFile
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val cast: 'T t -> 'T ts_Watch [@@js.cast]
    end
    module[@js.scope "WatchOfFilesAndCompilerOptions"] WatchOfFilesAndCompilerOptions : sig
      type 'T t = 'T ts_WatchOfFilesAndCompilerOptions
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val updateRootFileNames: 'T t -> fileNames:string list -> unit [@@js.call "updateRootFileNames"]
      val cast: 'T t -> 'T ts_Watch [@@js.cast]
    end
    val createWatchCompilerHost: configFileName:string -> optionsToExtend:ts_CompilerOptions or_undefined -> system:ts_System -> ?createProgram:'T ts_CreateProgram -> ?reportDiagnostic:ts_DiagnosticReporter -> ?reportWatchStatus:ts_WatchStatusReporter -> ?watchOptionsToExtend:ts_WatchOptions -> unit -> 'T ts_WatchCompilerHostOfConfigFile [@@js.global "createWatchCompilerHost"]
    val createWatchCompilerHost: rootFiles:string list -> options:ts_CompilerOptions -> system:ts_System -> ?createProgram:'T ts_CreateProgram -> ?reportDiagnostic:ts_DiagnosticReporter -> ?reportWatchStatus:ts_WatchStatusReporter -> ?projectReferences:ts_ProjectReference list -> ?watchOptions:ts_WatchOptions -> unit -> 'T ts_WatchCompilerHostOfFilesAndCompilerOptions [@@js.global "createWatchCompilerHost"]
    val createWatchProgram: host:'T ts_WatchCompilerHostOfFilesAndCompilerOptions -> 'T ts_WatchOfFilesAndCompilerOptions [@@js.global "createWatchProgram"]
    val createWatchProgram: host:'T ts_WatchCompilerHostOfConfigFile -> 'T ts_WatchOfConfigFile [@@js.global "createWatchProgram"]
    module[@js.scope "BuildOptions"] BuildOptions : sig
      type t = ts_BuildOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_dry: t -> bool [@@js.get "dry"]
      val set_dry: t -> bool -> unit [@@js.set "dry"]
      val get_force: t -> bool [@@js.get "force"]
      val set_force: t -> bool -> unit [@@js.set "force"]
      val get_verbose: t -> bool [@@js.get "verbose"]
      val set_verbose: t -> bool -> unit [@@js.set "verbose"]
      val get_incremental: t -> bool [@@js.get "incremental"]
      val set_incremental: t -> bool -> unit [@@js.set "incremental"]
      val get_assumeChangesOnlyAffectDirectDependencies: t -> bool [@@js.get "assumeChangesOnlyAffectDirectDependencies"]
      val set_assumeChangesOnlyAffectDirectDependencies: t -> bool -> unit [@@js.set "assumeChangesOnlyAffectDirectDependencies"]
      val get_traceResolution: t -> bool [@@js.get "traceResolution"]
      val set_traceResolution: t -> bool -> unit [@@js.set "traceResolution"]
      val get: t -> string -> ts_CompilerOptionsValue or_undefined [@@js.index_get]
      val set: t -> string -> ts_CompilerOptionsValue or_undefined -> unit [@@js.index_set]
    end
    module[@js.scope "ReportEmitErrorSummary"] ReportEmitErrorSummary : sig
      type t = ts_ReportEmitErrorSummary
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> errorCount:float -> unit [@@js.apply]
    end
    module[@js.scope "SolutionBuilderHostBase"] SolutionBuilderHostBase : sig
      type 'T t = 'T ts_SolutionBuilderHostBase
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val createDirectory: 'T t -> path:string -> unit [@@js.call "createDirectory"]
      val writeFile: 'T t -> path:string -> data:string -> ?writeByteOrderMark:bool -> unit -> unit [@@js.call "writeFile"]
      val getModifiedTime: 'T t -> fileName:string -> Date.t_0 or_undefined [@@js.call "getModifiedTime"]
      val setModifiedTime: 'T t -> fileName:string -> date:Date.t_0 -> unit [@@js.call "setModifiedTime"]
      val deleteFile: 'T t -> fileName:string -> unit [@@js.call "deleteFile"]
      val getParsedCommandLine: 'T t -> fileName:string -> ts_ParsedCommandLine or_undefined [@@js.call "getParsedCommandLine"]
      val get_reportDiagnostic: 'T t -> ts_DiagnosticReporter [@@js.get "reportDiagnostic"]
      val set_reportDiagnostic: 'T t -> ts_DiagnosticReporter -> unit [@@js.set "reportDiagnostic"]
      val get_reportSolutionBuilderStatus: 'T t -> ts_DiagnosticReporter [@@js.get "reportSolutionBuilderStatus"]
      val set_reportSolutionBuilderStatus: 'T t -> ts_DiagnosticReporter -> unit [@@js.set "reportSolutionBuilderStatus"]
      val afterProgramEmitAndDiagnostics: 'T t -> program:'T -> unit [@@js.call "afterProgramEmitAndDiagnostics"]
      val cast: 'T t -> 'T ts_ProgramHost [@@js.cast]
    end
    module[@js.scope "SolutionBuilderHost"] SolutionBuilderHost : sig
      type 'T t = 'T ts_SolutionBuilderHost
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_reportErrorSummary: 'T t -> ts_ReportEmitErrorSummary [@@js.get "reportErrorSummary"]
      val set_reportErrorSummary: 'T t -> ts_ReportEmitErrorSummary -> unit [@@js.set "reportErrorSummary"]
      val cast: 'T t -> 'T ts_SolutionBuilderHostBase [@@js.cast]
    end
    module[@js.scope "SolutionBuilderWithWatchHost"] SolutionBuilderWithWatchHost : sig
      type 'T t = 'T ts_SolutionBuilderWithWatchHost
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val cast: 'T t -> 'T ts_SolutionBuilderHostBase [@@js.cast]
      val cast': 'T t -> ts_WatchHost [@@js.cast]
    end
    module[@js.scope "SolutionBuilder"] SolutionBuilder : sig
      type 'T t = 'T ts_SolutionBuilder
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val build: 'T t -> ?project:string -> ?cancellationToken:ts_CancellationToken -> unit -> ts_ExitStatus [@@js.call "build"]
      val clean: 'T t -> ?project:string -> unit -> ts_ExitStatus [@@js.call "clean"]
      val buildReferences: 'T t -> project:string -> ?cancellationToken:ts_CancellationToken -> unit -> ts_ExitStatus [@@js.call "buildReferences"]
      val cleanReferences: 'T t -> ?project:string -> unit -> ts_ExitStatus [@@js.call "cleanReferences"]
      val getNextInvalidatedProject: 'T t -> ?cancellationToken:ts_CancellationToken -> unit -> 'T ts_InvalidatedProject or_undefined [@@js.call "getNextInvalidatedProject"]
    end
    val createBuilderStatusReporter: system:ts_System -> ?pretty:bool -> unit -> ts_DiagnosticReporter [@@js.global "createBuilderStatusReporter"]
    val createSolutionBuilderHost: ?system:ts_System -> ?createProgram:'T ts_CreateProgram -> ?reportDiagnostic:ts_DiagnosticReporter -> ?reportSolutionBuilderStatus:ts_DiagnosticReporter -> ?reportErrorSummary:ts_ReportEmitErrorSummary -> unit -> 'T ts_SolutionBuilderHost [@@js.global "createSolutionBuilderHost"]
    val createSolutionBuilderWithWatchHost: ?system:ts_System -> ?createProgram:'T ts_CreateProgram -> ?reportDiagnostic:ts_DiagnosticReporter -> ?reportSolutionBuilderStatus:ts_DiagnosticReporter -> ?reportWatchStatus:ts_WatchStatusReporter -> unit -> 'T ts_SolutionBuilderWithWatchHost [@@js.global "createSolutionBuilderWithWatchHost"]
    val createSolutionBuilder: host:'T ts_SolutionBuilderHost -> rootNames:string list -> defaultOptions:ts_BuildOptions -> 'T ts_SolutionBuilder [@@js.global "createSolutionBuilder"]
    val createSolutionBuilderWithWatch: host:'T ts_SolutionBuilderWithWatchHost -> rootNames:string list -> defaultOptions:ts_BuildOptions -> ?baseWatchOptions:ts_WatchOptions -> unit -> 'T ts_SolutionBuilder [@@js.global "createSolutionBuilderWithWatch"]
    module InvalidatedProjectKind : sig
      type t = ts_InvalidatedProjectKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "InvalidatedProjectBase"] InvalidatedProjectBase : sig
      type t = ts_InvalidatedProjectBase
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_InvalidatedProjectKind [@@js.get "kind"]
      val get_project: t -> ts_ResolvedConfigFileName [@@js.get "project"]
      val done_: t -> ?cancellationToken:ts_CancellationToken -> ?writeFile:ts_WriteFileCallback -> ?customTransformers:ts_CustomTransformers -> unit -> ts_ExitStatus [@@js.call "done"]
      val getCompilerOptions: t -> ts_CompilerOptions [@@js.call "getCompilerOptions"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
    end
    module[@js.scope "UpdateOutputFileStampsProject"] UpdateOutputFileStampsProject : sig
      type t = ts_UpdateOutputFileStampsProject
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_InvalidatedProjectKind_UpdateOutputFileStamps [@@js.get "kind"]
      val updateOutputFileStatmps: t -> unit [@@js.call "updateOutputFileStatmps"]
      val cast: t -> ts_InvalidatedProjectBase [@@js.cast]
    end
    module[@js.scope "BuildInvalidedProject"] BuildInvalidedProject : sig
      type 'T t = 'T ts_BuildInvalidedProject
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_kind: 'T t -> ts_InvalidatedProjectKind_Build [@@js.get "kind"]
      val getBuilderProgram: 'T t -> 'T or_undefined [@@js.call "getBuilderProgram"]
      val getProgram: 'T t -> ts_Program or_undefined [@@js.call "getProgram"]
      val getSourceFile: 'T t -> fileName:string -> ts_SourceFile or_undefined [@@js.call "getSourceFile"]
      val getSourceFiles: 'T t -> ts_SourceFile list [@@js.call "getSourceFiles"]
      val getOptionsDiagnostics: 'T t -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getOptionsDiagnostics"]
      val getGlobalDiagnostics: 'T t -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getGlobalDiagnostics"]
      val getConfigFileParsingDiagnostics: 'T t -> ts_Diagnostic list [@@js.call "getConfigFileParsingDiagnostics"]
      val getSyntacticDiagnostics: 'T t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getSyntacticDiagnostics"]
      val getAllDependencies: 'T t -> sourceFile:ts_SourceFile -> string list [@@js.call "getAllDependencies"]
      val getSemanticDiagnostics: 'T t -> ?sourceFile:ts_SourceFile -> ?cancellationToken:ts_CancellationToken -> unit -> ts_Diagnostic list [@@js.call "getSemanticDiagnostics"]
      val getSemanticDiagnosticsOfNextAffectedFile: 'T t -> ?cancellationToken:ts_CancellationToken -> ?ignoreSourceFile:(sourceFile:ts_SourceFile -> bool) -> unit -> ts_Diagnostic list ts_AffectedFileResult [@@js.call "getSemanticDiagnosticsOfNextAffectedFile"]
      val emit: 'T t -> ?targetSourceFile:ts_SourceFile -> ?writeFile:ts_WriteFileCallback -> ?cancellationToken:ts_CancellationToken -> ?emitOnlyDtsFiles:bool -> ?customTransformers:ts_CustomTransformers -> unit -> ts_EmitResult or_undefined [@@js.call "emit"]
      val cast: 'T t -> ts_InvalidatedProjectBase [@@js.cast]
    end
    module[@js.scope "UpdateBundleProject"] UpdateBundleProject : sig
      type 'T t = 'T ts_UpdateBundleProject
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
      val get_kind: 'T t -> ts_InvalidatedProjectKind_UpdateBundle [@@js.get "kind"]
      val emit: 'T t -> ?writeFile:ts_WriteFileCallback -> ?customTransformers:ts_CustomTransformers -> unit -> (([`U_n_0 of ('T ts_BuildInvalidedProject, 'T ts_BuildInvalidedProject) union2 [@js 0]] [@js.union on_field "kind"]), (ts_EmitResult, 'T ts_BuildInvalidedProject) or_) or_ or_undefined [@@js.call "emit"]
      val cast: 'T t -> ts_InvalidatedProjectBase [@@js.cast]
    end
    module InvalidatedProject : sig
      type 'T t = 'T ts_InvalidatedProject
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    module[@js.scope "server"] Server : sig
      module ActionSet : sig
        type t = ts_server_ActionSet
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ActionInvalidate : sig
        type t = ts_server_ActionInvalidate
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ActionPackageInstalled : sig
        type t = ts_server_ActionPackageInstalled
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module EventTypesRegistry : sig
        type t = ts_server_EventTypesRegistry
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module EventBeginInstallTypes : sig
        type t = ts_server_EventBeginInstallTypes
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module EventEndInstallTypes : sig
        type t = ts_server_EventEndInstallTypes
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module EventInitializationFailed : sig
        type t = ts_server_EventInitializationFailed
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module[@js.scope "TypingInstallerResponse"] TypingInstallerResponse : sig
        type t = ts_server_TypingInstallerResponse
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ((ts_server_ActionInvalidate, (ts_server_ActionPackageInstalled, (ts_server_ActionSet, (ts_server_EventBeginInstallTypes, (ts_server_EventEndInstallTypes, (ts_server_EventInitializationFailed, ts_server_EventTypesRegistry) or_) or_) or_) or_) or_) or_, ([`L_s35_action__invalidate[@js "action::invalidate"] | `L_s36_action__packageInstalled[@js "action::packageInstalled"] | `L_s37_action__set[@js "action::set"] | `L_s63_event__beginInstallTypes[@js "event::beginInstallTypes"] | `L_s64_event__endInstallTypes[@js "event::endInstallTypes"] | `L_s65_event__initializationFailed[@js "event::initializationFailed"] | `L_s66_event__typesRegistry[@js "event::typesRegistry"]] [@js.enum])) or_enum [@@js.get "kind"]
      end
      module[@js.scope "TypingInstallerRequestWithProjectName"] TypingInstallerRequestWithProjectName : sig
        type t = ts_server_TypingInstallerRequestWithProjectName
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_projectName: t -> string [@@js.get "projectName"]
      end
      module[@js.scope "DiscoverTypings"] DiscoverTypings : sig
        type t = ts_server_DiscoverTypings
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_fileNames: t -> string list [@@js.get "fileNames"]
        val get_projectRootPath: t -> ts_Path [@@js.get "projectRootPath"]
        val get_compilerOptions: t -> ts_CompilerOptions [@@js.get "compilerOptions"]
        val get_watchOptions: t -> ts_WatchOptions [@@js.get "watchOptions"]
        val get_typeAcquisition: t -> ts_TypeAcquisition [@@js.get "typeAcquisition"]
        val get_unresolvedImports: t -> string ts_SortedReadonlyArray [@@js.get "unresolvedImports"]
        val get_cachePath: t -> string [@@js.get "cachePath"]
        val get_kind: t -> ([`L_s56_discover[@js "discover"]] [@js.enum]) [@@js.get "kind"]
        val cast: t -> ts_server_TypingInstallerRequestWithProjectName [@@js.cast]
      end
      module[@js.scope "CloseProject"] CloseProject : sig
        type t = ts_server_CloseProject
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ([`L_s46_closeProject[@js "closeProject"]] [@js.enum]) [@@js.get "kind"]
        val cast: t -> ts_server_TypingInstallerRequestWithProjectName [@@js.cast]
      end
      module[@js.scope "TypesRegistryRequest"] TypesRegistryRequest : sig
        type t = ts_server_TypesRegistryRequest
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ([`L_s131_typesRegistry[@js "typesRegistry"]] [@js.enum]) [@@js.get "kind"]
      end
      module[@js.scope "InstallPackageRequest"] InstallPackageRequest : sig
        type t = ts_server_InstallPackageRequest
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ([`L_s79_installPackage[@js "installPackage"]] [@js.enum]) [@@js.get "kind"]
        val get_fileName: t -> ts_Path [@@js.get "fileName"]
        val get_packageName: t -> string [@@js.get "packageName"]
        val get_projectRootPath: t -> ts_Path [@@js.get "projectRootPath"]
        val cast: t -> ts_server_TypingInstallerRequestWithProjectName [@@js.cast]
      end
      module[@js.scope "PackageInstalledResponse"] PackageInstalledResponse : sig
        type t = ts_server_PackageInstalledResponse
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ts_server_ActionPackageInstalled [@@js.get "kind"]
        val get_success: t -> bool [@@js.get "success"]
        val get_message: t -> string [@@js.get "message"]
        val cast: t -> ts_server_ProjectResponse [@@js.cast]
      end
      module[@js.scope "InitializationFailedResponse"] InitializationFailedResponse : sig
        type t = ts_server_InitializationFailedResponse
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ts_server_EventInitializationFailed [@@js.get "kind"]
        val get_message: t -> string [@@js.get "message"]
        val cast: t -> ts_server_TypingInstallerResponse [@@js.cast]
      end
      module[@js.scope "ProjectResponse"] ProjectResponse : sig
        type t = ts_server_ProjectResponse
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_projectName: t -> string [@@js.get "projectName"]
        val cast: t -> ts_server_TypingInstallerResponse [@@js.cast]
      end
      module[@js.scope "InvalidateCachedTypings"] InvalidateCachedTypings : sig
        type t = ts_server_InvalidateCachedTypings
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ts_server_ActionInvalidate [@@js.get "kind"]
        val cast: t -> ts_server_ProjectResponse [@@js.cast]
      end
      module[@js.scope "InstallTypes"] InstallTypes : sig
        type t = ts_server_InstallTypes
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ((ts_server_EventBeginInstallTypes, ts_server_EventEndInstallTypes) or_, ([`L_s63_event__beginInstallTypes[@js "event::beginInstallTypes"] | `L_s64_event__endInstallTypes[@js "event::endInstallTypes"]] [@js.enum])) or_enum [@@js.get "kind"]
        val get_eventId: t -> float [@@js.get "eventId"]
        val get_typingsInstallerVersion: t -> string [@@js.get "typingsInstallerVersion"]
        val get_packagesToInstall: t -> string list [@@js.get "packagesToInstall"]
        val cast: t -> ts_server_ProjectResponse [@@js.cast]
      end
      module[@js.scope "BeginInstallTypes"] BeginInstallTypes : sig
        type t = ts_server_BeginInstallTypes
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ts_server_EventBeginInstallTypes [@@js.get "kind"]
        val cast: t -> ts_server_InstallTypes [@@js.cast]
      end
      module[@js.scope "EndInstallTypes"] EndInstallTypes : sig
        type t = ts_server_EndInstallTypes
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_kind: t -> ts_server_EventEndInstallTypes [@@js.get "kind"]
        val get_installSuccess: t -> bool [@@js.get "installSuccess"]
        val cast: t -> ts_server_InstallTypes [@@js.cast]
      end
      module[@js.scope "SetTypings"] SetTypings : sig
        type t = ts_server_SetTypings
        val t_to_js: t -> Ojs.t
        val t_of_js: Ojs.t -> t
        type t_0 = t
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
        val get_typeAcquisition: t -> ts_TypeAcquisition [@@js.get "typeAcquisition"]
        val get_compilerOptions: t -> ts_CompilerOptions [@@js.get "compilerOptions"]
        val get_typings: t -> string list [@@js.get "typings"]
        val get_unresolvedImports: t -> string ts_SortedReadonlyArray [@@js.get "unresolvedImports"]
        val get_kind: t -> ts_server_ActionSet [@@js.get "kind"]
        val cast: t -> ts_server_ProjectResponse [@@js.cast]
      end
    end
    module[@js.scope "SourceFileLike"] SourceFileLike : sig
      type t = ts_SourceFileLike
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getLineAndCharacterOfPosition: t -> pos:float -> ts_LineAndCharacter [@@js.call "getLineAndCharacterOfPosition"]
    end
    module[@js.scope "IScriptSnapshot"] IScriptSnapshot : sig
      type t = ts_IScriptSnapshot
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getText: t -> start:float -> end_:float -> string [@@js.call "getText"]
      val getLength: t -> float [@@js.call "getLength"]
      val getChangeRange: t -> oldSnapshot:t -> ts_TextChangeRange or_undefined [@@js.call "getChangeRange"]
      val dispose: t -> unit [@@js.call "dispose"]
    end
    module[@js.scope "ScriptSnapshot"] ScriptSnapshot : sig
      val fromString: text:string -> ts_IScriptSnapshot [@@js.global "fromString"]
    end
    module[@js.scope "PreProcessedFileInfo"] PreProcessedFileInfo : sig
      type t = ts_PreProcessedFileInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_referencedFiles: t -> ts_FileReference list [@@js.get "referencedFiles"]
      val set_referencedFiles: t -> ts_FileReference list -> unit [@@js.set "referencedFiles"]
      val get_typeReferenceDirectives: t -> ts_FileReference list [@@js.get "typeReferenceDirectives"]
      val set_typeReferenceDirectives: t -> ts_FileReference list -> unit [@@js.set "typeReferenceDirectives"]
      val get_libReferenceDirectives: t -> ts_FileReference list [@@js.get "libReferenceDirectives"]
      val set_libReferenceDirectives: t -> ts_FileReference list -> unit [@@js.set "libReferenceDirectives"]
      val get_importedFiles: t -> ts_FileReference list [@@js.get "importedFiles"]
      val set_importedFiles: t -> ts_FileReference list -> unit [@@js.set "importedFiles"]
      val get_ambientExternalModules: t -> string list [@@js.get "ambientExternalModules"]
      val set_ambientExternalModules: t -> string list -> unit [@@js.set "ambientExternalModules"]
      val get_isLibFile: t -> bool [@@js.get "isLibFile"]
      val set_isLibFile: t -> bool -> unit [@@js.set "isLibFile"]
    end
    module[@js.scope "HostCancellationToken"] HostCancellationToken : sig
      type t = ts_HostCancellationToken
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val isCancellationRequested: t -> bool [@@js.call "isCancellationRequested"]
    end
    module[@js.scope "InstallPackageOptions"] InstallPackageOptions : sig
      type t = ts_InstallPackageOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_fileName: t -> ts_Path [@@js.get "fileName"]
      val set_fileName: t -> ts_Path -> unit [@@js.set "fileName"]
      val get_packageName: t -> string [@@js.get "packageName"]
      val set_packageName: t -> string -> unit [@@js.set "packageName"]
    end
    module[@js.scope "LanguageServiceHost"] LanguageServiceHost : sig
      type t = ts_LanguageServiceHost
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getCompilationSettings: t -> ts_CompilerOptions [@@js.call "getCompilationSettings"]
      val getNewLine: t -> string [@@js.call "getNewLine"]
      val getProjectVersion: t -> string [@@js.call "getProjectVersion"]
      val getScriptFileNames: t -> string list [@@js.call "getScriptFileNames"]
      val getScriptKind: t -> fileName:string -> ts_ScriptKind [@@js.call "getScriptKind"]
      val getScriptVersion: t -> fileName:string -> string [@@js.call "getScriptVersion"]
      val getScriptSnapshot: t -> fileName:string -> ts_IScriptSnapshot or_undefined [@@js.call "getScriptSnapshot"]
      val getProjectReferences: t -> ts_ProjectReference list or_undefined [@@js.call "getProjectReferences"]
      val getLocalizedDiagnosticMessages: t -> any [@@js.call "getLocalizedDiagnosticMessages"]
      val getCancellationToken: t -> ts_HostCancellationToken [@@js.call "getCancellationToken"]
      val getCurrentDirectory: t -> string [@@js.call "getCurrentDirectory"]
      val getDefaultLibFileName: t -> options:ts_CompilerOptions -> string [@@js.call "getDefaultLibFileName"]
      val log: t -> s:string -> unit [@@js.call "log"]
      val trace: t -> s:string -> unit [@@js.call "trace"]
      val error: t -> s:string -> unit [@@js.call "error"]
      val readDirectory: t -> path:string -> ?extensions:string list -> ?exclude:string list -> ?include_:string list -> ?depth:float -> unit -> string list [@@js.call "readDirectory"]
      val readFile: t -> path:string -> ?encoding:string -> unit -> string or_undefined [@@js.call "readFile"]
      val realpath: t -> path:string -> string [@@js.call "realpath"]
      val fileExists: t -> path:string -> bool [@@js.call "fileExists"]
      val getTypeRootsVersion: t -> float [@@js.call "getTypeRootsVersion"]
      val resolveModuleNames: t -> moduleNames:string list -> containingFile:string -> reusedNames:string list or_undefined -> redirectedReference:ts_ResolvedProjectReference or_undefined -> options:ts_CompilerOptions -> ts_ResolvedModule or_undefined list [@@js.call "resolveModuleNames"]
      val getResolvedModuleWithFailedLookupLocationsFromCache: t -> modulename:string -> containingFile:string -> ts_ResolvedModuleWithFailedLookupLocations or_undefined [@@js.call "getResolvedModuleWithFailedLookupLocationsFromCache"]
      val resolveTypeReferenceDirectives: t -> typeDirectiveNames:string list -> containingFile:string -> redirectedReference:ts_ResolvedProjectReference or_undefined -> options:ts_CompilerOptions -> ts_ResolvedTypeReferenceDirective or_undefined list [@@js.call "resolveTypeReferenceDirectives"]
      val getDirectories: t -> directoryName:string -> string list [@@js.call "getDirectories"]
      val getCustomTransformers: t -> ts_CustomTransformers or_undefined [@@js.call "getCustomTransformers"]
      val isKnownTypesPackageName: t -> name:string -> bool [@@js.call "isKnownTypesPackageName"]
      val installPackage: t -> options:ts_InstallPackageOptions -> ts_ApplyCodeActionCommandResult Promise.t_1 [@@js.call "installPackage"]
      val writeFile: t -> fileName:string -> content:string -> unit [@@js.call "writeFile"]
      val cast: t -> ts_ModuleSpecifierResolutionHost [@@js.cast]
    end
    module WithMetadata : sig
      type 'T t = 'T ts_WithMetadata
      val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
      val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
      type 'T t_1 = 'T t
      val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    end
    module[@js.scope "LanguageService"] LanguageService : sig
      type t = ts_LanguageService
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val cleanupSemanticCache: t -> unit [@@js.call "cleanupSemanticCache"]
      val getSyntacticDiagnostics: t -> fileName:string -> ts_DiagnosticWithLocation list [@@js.call "getSyntacticDiagnostics"]
      val getSemanticDiagnostics: t -> fileName:string -> ts_Diagnostic list [@@js.call "getSemanticDiagnostics"]
      val getSuggestionDiagnostics: t -> fileName:string -> ts_DiagnosticWithLocation list [@@js.call "getSuggestionDiagnostics"]
      val getCompilerOptionsDiagnostics: t -> ts_Diagnostic list [@@js.call "getCompilerOptionsDiagnostics"]
      val getSyntacticClassifications: t -> fileName:string -> span:ts_TextSpan -> ts_ClassifiedSpan list [@@js.call "getSyntacticClassifications"]
      val getSemanticClassifications: t -> fileName:string -> span:ts_TextSpan -> ts_ClassifiedSpan list [@@js.call "getSemanticClassifications"]
      val getEncodedSyntacticClassifications: t -> fileName:string -> span:ts_TextSpan -> ts_Classifications [@@js.call "getEncodedSyntacticClassifications"]
      val getEncodedSemanticClassifications: t -> fileName:string -> span:ts_TextSpan -> ts_Classifications [@@js.call "getEncodedSemanticClassifications"]
      val getCompletionsAtPosition: t -> fileName:string -> position:float -> options:ts_GetCompletionsAtPositionOptions or_undefined -> ts_CompletionInfo ts_WithMetadata or_undefined [@@js.call "getCompletionsAtPosition"]
      val getCompletionEntryDetails: t -> fileName:string -> position:float -> name:string -> formatOptions:(ts_FormatCodeOptions, ts_FormatCodeSettings) or_ or_undefined -> source:string or_undefined -> preferences:ts_UserPreferences or_undefined -> ts_CompletionEntryDetails or_undefined [@@js.call "getCompletionEntryDetails"]
      val getCompletionEntrySymbol: t -> fileName:string -> position:float -> name:string -> source:string or_undefined -> ts_Symbol or_undefined [@@js.call "getCompletionEntrySymbol"]
      val getQuickInfoAtPosition: t -> fileName:string -> position:float -> ts_QuickInfo or_undefined [@@js.call "getQuickInfoAtPosition"]
      val getNameOrDottedNameSpan: t -> fileName:string -> startPos:float -> endPos:float -> ts_TextSpan or_undefined [@@js.call "getNameOrDottedNameSpan"]
      val getBreakpointStatementAtPosition: t -> fileName:string -> position:float -> ts_TextSpan or_undefined [@@js.call "getBreakpointStatementAtPosition"]
      val getSignatureHelpItems: t -> fileName:string -> position:float -> options:ts_SignatureHelpItemsOptions or_undefined -> ts_SignatureHelpItems or_undefined [@@js.call "getSignatureHelpItems"]
      val getRenameInfo: t -> fileName:string -> position:float -> ?options:ts_RenameInfoOptions -> unit -> ts_RenameInfo [@@js.call "getRenameInfo"]
      val findRenameLocations: t -> fileName:string -> position:float -> findInStrings:bool -> findInComments:bool -> ?providePrefixAndSuffixTextForRename:bool -> unit -> ts_RenameLocation list or_undefined [@@js.call "findRenameLocations"]
      val getSmartSelectionRange: t -> fileName:string -> position:float -> ts_SelectionRange [@@js.call "getSmartSelectionRange"]
      val getDefinitionAtPosition: t -> fileName:string -> position:float -> ts_DefinitionInfo list or_undefined [@@js.call "getDefinitionAtPosition"]
      val getDefinitionAndBoundSpan: t -> fileName:string -> position:float -> ts_DefinitionInfoAndBoundSpan or_undefined [@@js.call "getDefinitionAndBoundSpan"]
      val getTypeDefinitionAtPosition: t -> fileName:string -> position:float -> ts_DefinitionInfo list or_undefined [@@js.call "getTypeDefinitionAtPosition"]
      val getImplementationAtPosition: t -> fileName:string -> position:float -> ts_ImplementationLocation list or_undefined [@@js.call "getImplementationAtPosition"]
      val getReferencesAtPosition: t -> fileName:string -> position:float -> ts_ReferenceEntry list or_undefined [@@js.call "getReferencesAtPosition"]
      val findReferences: t -> fileName:string -> position:float -> ts_ReferencedSymbol list or_undefined [@@js.call "findReferences"]
      val getDocumentHighlights: t -> fileName:string -> position:float -> filesToSearch:string list -> ts_DocumentHighlights list or_undefined [@@js.call "getDocumentHighlights"]
      val getOccurrencesAtPosition: t -> fileName:string -> position:float -> ts_ReferenceEntry list or_undefined [@@js.call "getOccurrencesAtPosition"]
      val getNavigateToItems: t -> searchValue:string -> ?maxResultCount:float -> ?fileName:string -> ?excludeDtsFiles:bool -> unit -> ts_NavigateToItem list [@@js.call "getNavigateToItems"]
      val getNavigationBarItems: t -> fileName:string -> ts_NavigationBarItem list [@@js.call "getNavigationBarItems"]
      val getNavigationTree: t -> fileName:string -> ts_NavigationTree [@@js.call "getNavigationTree"]
      val prepareCallHierarchy: t -> fileName:string -> position:float -> (ts_CallHierarchyItem, ts_CallHierarchyItem) or_array or_undefined [@@js.call "prepareCallHierarchy"]
      val provideCallHierarchyIncomingCalls: t -> fileName:string -> position:float -> ts_CallHierarchyIncomingCall list [@@js.call "provideCallHierarchyIncomingCalls"]
      val provideCallHierarchyOutgoingCalls: t -> fileName:string -> position:float -> ts_CallHierarchyOutgoingCall list [@@js.call "provideCallHierarchyOutgoingCalls"]
      val getOutliningSpans: t -> fileName:string -> ts_OutliningSpan list [@@js.call "getOutliningSpans"]
      val getTodoComments: t -> fileName:string -> descriptors:ts_TodoCommentDescriptor list -> ts_TodoComment list [@@js.call "getTodoComments"]
      val getBraceMatchingAtPosition: t -> fileName:string -> position:float -> ts_TextSpan list [@@js.call "getBraceMatchingAtPosition"]
      val getIndentationAtPosition: t -> fileName:string -> position:float -> options:(ts_EditorOptions, ts_EditorSettings) or_ -> float [@@js.call "getIndentationAtPosition"]
      val getFormattingEditsForRange: t -> fileName:string -> start:float -> end_:float -> options:(ts_FormatCodeOptions, ts_FormatCodeSettings) or_ -> ts_TextChange list [@@js.call "getFormattingEditsForRange"]
      val getFormattingEditsForDocument: t -> fileName:string -> options:(ts_FormatCodeOptions, ts_FormatCodeSettings) or_ -> ts_TextChange list [@@js.call "getFormattingEditsForDocument"]
      val getFormattingEditsAfterKeystroke: t -> fileName:string -> position:float -> key:string -> options:(ts_FormatCodeOptions, ts_FormatCodeSettings) or_ -> ts_TextChange list [@@js.call "getFormattingEditsAfterKeystroke"]
      val getDocCommentTemplateAtPosition: t -> fileName:string -> position:float -> ts_TextInsertion or_undefined [@@js.call "getDocCommentTemplateAtPosition"]
      val isValidBraceCompletionAtPosition: t -> fileName:string -> position:float -> openingBrace:float -> bool [@@js.call "isValidBraceCompletionAtPosition"]
      val getJsxClosingTagAtPosition: t -> fileName:string -> position:float -> ts_JsxClosingTagInfo or_undefined [@@js.call "getJsxClosingTagAtPosition"]
      val getSpanOfEnclosingComment: t -> fileName:string -> position:float -> onlyMultiLine:bool -> ts_TextSpan or_undefined [@@js.call "getSpanOfEnclosingComment"]
      val toLineColumnOffset: t -> fileName:string -> position:float -> ts_LineAndCharacter [@@js.call "toLineColumnOffset"]
      val getCodeFixesAtPosition: t -> fileName:string -> start:float -> end_:float -> errorCodes:float list -> formatOptions:ts_FormatCodeSettings -> preferences:ts_UserPreferences -> ts_CodeFixAction list [@@js.call "getCodeFixesAtPosition"]
      val getCombinedCodeFix: t -> scope:ts_CombinedCodeFixScope -> fixId:anonymous_interface_0 -> formatOptions:ts_FormatCodeSettings -> preferences:ts_UserPreferences -> ts_CombinedCodeActions [@@js.call "getCombinedCodeFix"]
      val applyCodeActionCommand: t -> action:ts_CodeActionCommand -> ?formatSettings:ts_FormatCodeSettings -> unit -> ts_ApplyCodeActionCommandResult Promise.t_1 [@@js.call "applyCodeActionCommand"]
      val applyCodeActionCommand': t -> action:ts_CodeActionCommand list -> ?formatSettings:ts_FormatCodeSettings -> unit -> ts_ApplyCodeActionCommandResult list Promise.t_1 [@@js.call "applyCodeActionCommand"]
      val applyCodeActionCommand'': t -> action:(ts_CodeActionCommand, ts_CodeActionCommand) or_array -> ?formatSettings:ts_FormatCodeSettings -> unit -> (ts_ApplyCodeActionCommandResult, ts_ApplyCodeActionCommandResult) or_array Promise.t_1 [@@js.call "applyCodeActionCommand"]
      val applyCodeActionCommand''': t -> fileName:string -> action:ts_CodeActionCommand -> ts_ApplyCodeActionCommandResult Promise.t_1 [@@js.call "applyCodeActionCommand"]
      val applyCodeActionCommand'''': t -> fileName:string -> action:ts_CodeActionCommand list -> ts_ApplyCodeActionCommandResult list Promise.t_1 [@@js.call "applyCodeActionCommand"]
      val applyCodeActionCommand''''': t -> fileName:string -> action:(ts_CodeActionCommand, ts_CodeActionCommand) or_array -> (ts_ApplyCodeActionCommandResult, ts_ApplyCodeActionCommandResult) or_array Promise.t_1 [@@js.call "applyCodeActionCommand"]
      val getApplicableRefactors: t -> fileName:string -> positionOrRange:ts_TextRange or_number -> preferences:ts_UserPreferences or_undefined -> ts_ApplicableRefactorInfo list [@@js.call "getApplicableRefactors"]
      val getEditsForRefactor: t -> fileName:string -> formatOptions:ts_FormatCodeSettings -> positionOrRange:ts_TextRange or_number -> refactorName:string -> actionName:string -> preferences:ts_UserPreferences or_undefined -> ts_RefactorEditInfo or_undefined [@@js.call "getEditsForRefactor"]
      val organizeImports: t -> scope:ts_OrganizeImportsScope -> formatOptions:ts_FormatCodeSettings -> preferences:ts_UserPreferences or_undefined -> ts_FileTextChanges list [@@js.call "organizeImports"]
      val getEditsForFileRename: t -> oldFilePath:string -> newFilePath:string -> formatOptions:ts_FormatCodeSettings -> preferences:ts_UserPreferences or_undefined -> ts_FileTextChanges list [@@js.call "getEditsForFileRename"]
      val getEmitOutput: t -> fileName:string -> ?emitOnlyDtsFiles:bool -> ?forceDtsEmit:bool -> unit -> ts_EmitOutput [@@js.call "getEmitOutput"]
      val getProgram: t -> ts_Program or_undefined [@@js.call "getProgram"]
      val dispose: t -> unit [@@js.call "dispose"]
    end
    module[@js.scope "JsxClosingTagInfo"] JsxClosingTagInfo : sig
      type t = ts_JsxClosingTagInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_newText: t -> string [@@js.get "newText"]
    end
    module[@js.scope "CombinedCodeFixScope"] CombinedCodeFixScope : sig
      type t = ts_CombinedCodeFixScope
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_type: t -> ([`L_s71_file[@js "file"]] [@js.enum]) [@@js.get "type"]
      val set_type: t -> ([`L_s71_file] [@js.enum]) -> unit [@@js.set "type"]
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
    end
    module OrganizeImportsScope : sig
      type t = ts_OrganizeImportsScope
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CompletionsTriggerCharacter : sig
      type t = ts_CompletionsTriggerCharacter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "GetCompletionsAtPositionOptions"] GetCompletionsAtPositionOptions : sig
      type t = ts_GetCompletionsAtPositionOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_triggerCharacter: t -> ts_CompletionsTriggerCharacter [@@js.get "triggerCharacter"]
      val set_triggerCharacter: t -> ts_CompletionsTriggerCharacter -> unit [@@js.set "triggerCharacter"]
      val get_includeExternalModuleExports: t -> bool [@@js.get "includeExternalModuleExports"]
      val set_includeExternalModuleExports: t -> bool -> unit [@@js.set "includeExternalModuleExports"]
      val get_includeInsertTextCompletions: t -> bool [@@js.get "includeInsertTextCompletions"]
      val set_includeInsertTextCompletions: t -> bool -> unit [@@js.set "includeInsertTextCompletions"]
      val cast: t -> ts_UserPreferences [@@js.cast]
    end
    module SignatureHelpTriggerCharacter : sig
      type t = ts_SignatureHelpTriggerCharacter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SignatureHelpRetriggerCharacter : sig
      type t = ts_SignatureHelpRetriggerCharacter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "SignatureHelpItemsOptions"] SignatureHelpItemsOptions : sig
      type t = ts_SignatureHelpItemsOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_triggerReason: t -> ts_SignatureHelpTriggerReason [@@js.get "triggerReason"]
      val set_triggerReason: t -> ts_SignatureHelpTriggerReason -> unit [@@js.set "triggerReason"]
    end
    module SignatureHelpTriggerReason : sig
      type t = ts_SignatureHelpTriggerReason
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "SignatureHelpInvokedReason"] SignatureHelpInvokedReason : sig
      type t = ts_SignatureHelpInvokedReason
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ([`L_s82_invoked[@js "invoked"]] [@js.enum]) [@@js.get "kind"]
      val set_kind: t -> ([`L_s82_invoked] [@js.enum]) -> unit [@@js.set "kind"]
      val get_triggerCharacter: t -> never or_undefined [@@js.get "triggerCharacter"]
      val set_triggerCharacter: t -> never or_undefined -> unit [@@js.set "triggerCharacter"]
    end
    module[@js.scope "SignatureHelpCharacterTypedReason"] SignatureHelpCharacterTypedReason : sig
      type t = ts_SignatureHelpCharacterTypedReason
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ([`L_s43_characterTyped[@js "characterTyped"]] [@js.enum]) [@@js.get "kind"]
      val set_kind: t -> ([`L_s43_characterTyped] [@js.enum]) -> unit [@@js.set "kind"]
      val get_triggerCharacter: t -> ts_SignatureHelpTriggerCharacter [@@js.get "triggerCharacter"]
      val set_triggerCharacter: t -> ts_SignatureHelpTriggerCharacter -> unit [@@js.set "triggerCharacter"]
    end
    module[@js.scope "SignatureHelpRetriggeredReason"] SignatureHelpRetriggeredReason : sig
      type t = ts_SignatureHelpRetriggeredReason
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ([`L_s118_retrigger[@js "retrigger"]] [@js.enum]) [@@js.get "kind"]
      val set_kind: t -> ([`L_s118_retrigger] [@js.enum]) -> unit [@@js.set "kind"]
      val get_triggerCharacter: t -> ts_SignatureHelpRetriggerCharacter [@@js.get "triggerCharacter"]
      val set_triggerCharacter: t -> ts_SignatureHelpRetriggerCharacter -> unit [@@js.set "triggerCharacter"]
    end
    module[@js.scope "ApplyCodeActionCommandResult"] ApplyCodeActionCommandResult : sig
      type t = ts_ApplyCodeActionCommandResult
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_successMessage: t -> string [@@js.get "successMessage"]
      val set_successMessage: t -> string -> unit [@@js.set "successMessage"]
    end
    module[@js.scope "Classifications"] Classifications : sig
      type t = ts_Classifications
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_spans: t -> float list [@@js.get "spans"]
      val set_spans: t -> float list -> unit [@@js.set "spans"]
      val get_endOfLineState: t -> ts_EndOfLineState [@@js.get "endOfLineState"]
      val set_endOfLineState: t -> ts_EndOfLineState -> unit [@@js.set "endOfLineState"]
    end
    module[@js.scope "ClassifiedSpan"] ClassifiedSpan : sig
      type t = ts_ClassifiedSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
      val get_classificationType: t -> ts_ClassificationTypeNames [@@js.get "classificationType"]
      val set_classificationType: t -> ts_ClassificationTypeNames -> unit [@@js.set "classificationType"]
    end
    module[@js.scope "NavigationBarItem"] NavigationBarItem : sig
      type t = ts_NavigationBarItem
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_kindModifiers: t -> string [@@js.get "kindModifiers"]
      val set_kindModifiers: t -> string -> unit [@@js.set "kindModifiers"]
      val get_spans: t -> ts_TextSpan list [@@js.get "spans"]
      val set_spans: t -> ts_TextSpan list -> unit [@@js.set "spans"]
      val get_childItems: t -> t list [@@js.get "childItems"]
      val set_childItems: t -> t list -> unit [@@js.set "childItems"]
      val get_indent: t -> float [@@js.get "indent"]
      val set_indent: t -> float -> unit [@@js.set "indent"]
      val get_bolded: t -> bool [@@js.get "bolded"]
      val set_bolded: t -> bool -> unit [@@js.set "bolded"]
      val get_grayed: t -> bool [@@js.get "grayed"]
      val set_grayed: t -> bool -> unit [@@js.set "grayed"]
    end
    module[@js.scope "NavigationTree"] NavigationTree : sig
      type t = ts_NavigationTree
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_kindModifiers: t -> string [@@js.get "kindModifiers"]
      val set_kindModifiers: t -> string -> unit [@@js.set "kindModifiers"]
      val get_spans: t -> ts_TextSpan list [@@js.get "spans"]
      val set_spans: t -> ts_TextSpan list -> unit [@@js.set "spans"]
      val get_nameSpan: t -> ts_TextSpan or_undefined [@@js.get "nameSpan"]
      val set_nameSpan: t -> ts_TextSpan or_undefined -> unit [@@js.set "nameSpan"]
      val get_childItems: t -> t list [@@js.get "childItems"]
      val set_childItems: t -> t list -> unit [@@js.set "childItems"]
    end
    module[@js.scope "CallHierarchyItem"] CallHierarchyItem : sig
      type t = ts_CallHierarchyItem
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_file: t -> string [@@js.get "file"]
      val set_file: t -> string -> unit [@@js.set "file"]
      val get_span: t -> ts_TextSpan [@@js.get "span"]
      val set_span: t -> ts_TextSpan -> unit [@@js.set "span"]
      val get_selectionSpan: t -> ts_TextSpan [@@js.get "selectionSpan"]
      val set_selectionSpan: t -> ts_TextSpan -> unit [@@js.set "selectionSpan"]
    end
    module[@js.scope "CallHierarchyIncomingCall"] CallHierarchyIncomingCall : sig
      type t = ts_CallHierarchyIncomingCall
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_from: t -> ts_CallHierarchyItem [@@js.get "from"]
      val set_from: t -> ts_CallHierarchyItem -> unit [@@js.set "from"]
      val get_fromSpans: t -> ts_TextSpan list [@@js.get "fromSpans"]
      val set_fromSpans: t -> ts_TextSpan list -> unit [@@js.set "fromSpans"]
    end
    module[@js.scope "CallHierarchyOutgoingCall"] CallHierarchyOutgoingCall : sig
      type t = ts_CallHierarchyOutgoingCall
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_to: t -> ts_CallHierarchyItem [@@js.get "to"]
      val set_to: t -> ts_CallHierarchyItem -> unit [@@js.set "to"]
      val get_fromSpans: t -> ts_TextSpan list [@@js.get "fromSpans"]
      val set_fromSpans: t -> ts_TextSpan list -> unit [@@js.set "fromSpans"]
    end
    module[@js.scope "TodoCommentDescriptor"] TodoCommentDescriptor : sig
      type t = ts_TodoCommentDescriptor
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_priority: t -> float [@@js.get "priority"]
      val set_priority: t -> float -> unit [@@js.set "priority"]
    end
    module[@js.scope "TodoComment"] TodoComment : sig
      type t = ts_TodoComment
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_descriptor: t -> ts_TodoCommentDescriptor [@@js.get "descriptor"]
      val set_descriptor: t -> ts_TodoCommentDescriptor -> unit [@@js.set "descriptor"]
      val get_message: t -> string [@@js.get "message"]
      val set_message: t -> string -> unit [@@js.set "message"]
      val get_position: t -> float [@@js.get "position"]
      val set_position: t -> float -> unit [@@js.set "position"]
    end
    module[@js.scope "TextChange"] TextChange : sig
      type t = ts_TextChange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_span: t -> ts_TextSpan [@@js.get "span"]
      val set_span: t -> ts_TextSpan -> unit [@@js.set "span"]
      val get_newText: t -> string [@@js.get "newText"]
      val set_newText: t -> string -> unit [@@js.set "newText"]
    end
    module[@js.scope "FileTextChanges"] FileTextChanges : sig
      type t = ts_FileTextChanges
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_textChanges: t -> ts_TextChange list [@@js.get "textChanges"]
      val set_textChanges: t -> ts_TextChange list -> unit [@@js.set "textChanges"]
      val get_isNewFile: t -> bool [@@js.get "isNewFile"]
      val set_isNewFile: t -> bool -> unit [@@js.set "isNewFile"]
    end
    module[@js.scope "CodeAction"] CodeAction : sig
      type t = ts_CodeAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_description: t -> string [@@js.get "description"]
      val set_description: t -> string -> unit [@@js.set "description"]
      val get_changes: t -> ts_FileTextChanges list [@@js.get "changes"]
      val set_changes: t -> ts_FileTextChanges list -> unit [@@js.set "changes"]
      val get_commands: t -> ts_CodeActionCommand list [@@js.get "commands"]
      val set_commands: t -> ts_CodeActionCommand list -> unit [@@js.set "commands"]
    end
    module[@js.scope "CodeFixAction"] CodeFixAction : sig
      type t = ts_CodeFixAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_fixName: t -> string [@@js.get "fixName"]
      val set_fixName: t -> string -> unit [@@js.set "fixName"]
      val get_fixId: t -> anonymous_interface_0 [@@js.get "fixId"]
      val set_fixId: t -> anonymous_interface_0 -> unit [@@js.set "fixId"]
      val get_fixAllDescription: t -> string [@@js.get "fixAllDescription"]
      val set_fixAllDescription: t -> string -> unit [@@js.set "fixAllDescription"]
      val cast: t -> ts_CodeAction [@@js.cast]
    end
    module[@js.scope "CombinedCodeActions"] CombinedCodeActions : sig
      type t = ts_CombinedCodeActions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_changes: t -> ts_FileTextChanges list [@@js.get "changes"]
      val set_changes: t -> ts_FileTextChanges list -> unit [@@js.set "changes"]
      val get_commands: t -> ts_CodeActionCommand list [@@js.get "commands"]
      val set_commands: t -> ts_CodeActionCommand list -> unit [@@js.set "commands"]
    end
    module CodeActionCommand : sig
      type t = ts_CodeActionCommand
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module InstallPackageAction : sig
      type t = ts_InstallPackageAction
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ApplicableRefactorInfo"] ApplicableRefactorInfo : sig
      type t = ts_ApplicableRefactorInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_description: t -> string [@@js.get "description"]
      val set_description: t -> string -> unit [@@js.set "description"]
      val get_inlineable: t -> bool [@@js.get "inlineable"]
      val set_inlineable: t -> bool -> unit [@@js.set "inlineable"]
      val get_actions: t -> ts_RefactorActionInfo list [@@js.get "actions"]
      val set_actions: t -> ts_RefactorActionInfo list -> unit [@@js.set "actions"]
    end
    module[@js.scope "RefactorActionInfo"] RefactorActionInfo : sig
      type t = ts_RefactorActionInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_description: t -> string [@@js.get "description"]
      val set_description: t -> string -> unit [@@js.set "description"]
    end
    module[@js.scope "RefactorEditInfo"] RefactorEditInfo : sig
      type t = ts_RefactorEditInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_edits: t -> ts_FileTextChanges list [@@js.get "edits"]
      val set_edits: t -> ts_FileTextChanges list -> unit [@@js.set "edits"]
      val get_renameFilename: t -> string [@@js.get "renameFilename"]
      val set_renameFilename: t -> string -> unit [@@js.set "renameFilename"]
      val get_renameLocation: t -> float [@@js.get "renameLocation"]
      val set_renameLocation: t -> float -> unit [@@js.set "renameLocation"]
      val get_commands: t -> ts_CodeActionCommand list [@@js.get "commands"]
      val set_commands: t -> ts_CodeActionCommand list -> unit [@@js.set "commands"]
    end
    module[@js.scope "TextInsertion"] TextInsertion : sig
      type t = ts_TextInsertion
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_newText: t -> string [@@js.get "newText"]
      val set_newText: t -> string -> unit [@@js.set "newText"]
      val get_caretOffset: t -> float [@@js.get "caretOffset"]
      val set_caretOffset: t -> float -> unit [@@js.set "caretOffset"]
    end
    module[@js.scope "DocumentSpan"] DocumentSpan : sig
      type t = ts_DocumentSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_originalTextSpan: t -> ts_TextSpan [@@js.get "originalTextSpan"]
      val set_originalTextSpan: t -> ts_TextSpan -> unit [@@js.set "originalTextSpan"]
      val get_originalFileName: t -> string [@@js.get "originalFileName"]
      val set_originalFileName: t -> string -> unit [@@js.set "originalFileName"]
      val get_contextSpan: t -> ts_TextSpan [@@js.get "contextSpan"]
      val set_contextSpan: t -> ts_TextSpan -> unit [@@js.set "contextSpan"]
      val get_originalContextSpan: t -> ts_TextSpan [@@js.get "originalContextSpan"]
      val set_originalContextSpan: t -> ts_TextSpan -> unit [@@js.set "originalContextSpan"]
    end
    module[@js.scope "RenameLocation"] RenameLocation : sig
      type t = ts_RenameLocation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_prefixText: t -> string [@@js.get "prefixText"]
      val get_suffixText: t -> string [@@js.get "suffixText"]
      val cast: t -> ts_DocumentSpan [@@js.cast]
    end
    module[@js.scope "ReferenceEntry"] ReferenceEntry : sig
      type t = ts_ReferenceEntry
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_isWriteAccess: t -> bool [@@js.get "isWriteAccess"]
      val set_isWriteAccess: t -> bool -> unit [@@js.set "isWriteAccess"]
      val get_isDefinition: t -> bool [@@js.get "isDefinition"]
      val set_isDefinition: t -> bool -> unit [@@js.set "isDefinition"]
      val get_isInString: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "isInString"]
      val set_isInString: t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "isInString"]
      val cast: t -> ts_DocumentSpan [@@js.cast]
    end
    module[@js.scope "ImplementationLocation"] ImplementationLocation : sig
      type t = ts_ImplementationLocation
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_displayParts: t -> ts_SymbolDisplayPart list [@@js.get "displayParts"]
      val set_displayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "displayParts"]
      val cast: t -> ts_DocumentSpan [@@js.cast]
    end
    module HighlightSpanKind : sig
      type t = ts_HighlightSpanKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "HighlightSpan"] HighlightSpan : sig
      type t = ts_HighlightSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_isInString: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "isInString"]
      val set_isInString: t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "isInString"]
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
      val get_contextSpan: t -> ts_TextSpan [@@js.get "contextSpan"]
      val set_contextSpan: t -> ts_TextSpan -> unit [@@js.set "contextSpan"]
      val get_kind: t -> ts_HighlightSpanKind [@@js.get "kind"]
      val set_kind: t -> ts_HighlightSpanKind -> unit [@@js.set "kind"]
    end
    module[@js.scope "NavigateToItem"] NavigateToItem : sig
      type t = ts_NavigateToItem
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_kindModifiers: t -> string [@@js.get "kindModifiers"]
      val set_kindModifiers: t -> string -> unit [@@js.set "kindModifiers"]
      val get_matchKind: t -> ([`L_s42_camelCase[@js "camelCase"] | `L_s67_exact[@js "exact"] | `L_s107_prefix[@js "prefix"] | `L_s124_substring[@js "substring"]] [@js.enum]) [@@js.get "matchKind"]
      val set_matchKind: t -> ([`L_s42_camelCase | `L_s67_exact | `L_s107_prefix | `L_s124_substring] [@js.enum]) -> unit [@@js.set "matchKind"]
      val get_isCaseSensitive: t -> bool [@@js.get "isCaseSensitive"]
      val set_isCaseSensitive: t -> bool -> unit [@@js.set "isCaseSensitive"]
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
      val get_containerName: t -> string [@@js.get "containerName"]
      val set_containerName: t -> string -> unit [@@js.set "containerName"]
      val get_containerKind: t -> ts_ScriptElementKind [@@js.get "containerKind"]
      val set_containerKind: t -> ts_ScriptElementKind -> unit [@@js.set "containerKind"]
    end
    module IndentStyle : sig
      type t = ts_IndentStyle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemicolonPreference : sig
      type t = ts_SemicolonPreference
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "EditorOptions"] EditorOptions : sig
      type t = ts_EditorOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_BaseIndentSize: t -> float [@@js.get "BaseIndentSize"]
      val set_BaseIndentSize: t -> float -> unit [@@js.set "BaseIndentSize"]
      val get_IndentSize: t -> float [@@js.get "IndentSize"]
      val set_IndentSize: t -> float -> unit [@@js.set "IndentSize"]
      val get_TabSize: t -> float [@@js.get "TabSize"]
      val set_TabSize: t -> float -> unit [@@js.set "TabSize"]
      val get_NewLineCharacter: t -> string [@@js.get "NewLineCharacter"]
      val set_NewLineCharacter: t -> string -> unit [@@js.set "NewLineCharacter"]
      val get_ConvertTabsToSpaces: t -> bool [@@js.get "ConvertTabsToSpaces"]
      val set_ConvertTabsToSpaces: t -> bool -> unit [@@js.set "ConvertTabsToSpaces"]
      val get_IndentStyle: t -> ts_IndentStyle [@@js.get "IndentStyle"]
      val set_IndentStyle: t -> ts_IndentStyle -> unit [@@js.set "IndentStyle"]
    end
    module[@js.scope "EditorSettings"] EditorSettings : sig
      type t = ts_EditorSettings
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_baseIndentSize: t -> float [@@js.get "baseIndentSize"]
      val set_baseIndentSize: t -> float -> unit [@@js.set "baseIndentSize"]
      val get_indentSize: t -> float [@@js.get "indentSize"]
      val set_indentSize: t -> float -> unit [@@js.set "indentSize"]
      val get_tabSize: t -> float [@@js.get "tabSize"]
      val set_tabSize: t -> float -> unit [@@js.set "tabSize"]
      val get_newLineCharacter: t -> string [@@js.get "newLineCharacter"]
      val set_newLineCharacter: t -> string -> unit [@@js.set "newLineCharacter"]
      val get_convertTabsToSpaces: t -> bool [@@js.get "convertTabsToSpaces"]
      val set_convertTabsToSpaces: t -> bool -> unit [@@js.set "convertTabsToSpaces"]
      val get_indentStyle: t -> ts_IndentStyle [@@js.get "indentStyle"]
      val set_indentStyle: t -> ts_IndentStyle -> unit [@@js.set "indentStyle"]
    end
    module[@js.scope "FormatCodeOptions"] FormatCodeOptions : sig
      type t = ts_FormatCodeOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_InsertSpaceAfterCommaDelimiter: t -> bool [@@js.get "InsertSpaceAfterCommaDelimiter"]
      val set_InsertSpaceAfterCommaDelimiter: t -> bool -> unit [@@js.set "InsertSpaceAfterCommaDelimiter"]
      val get_InsertSpaceAfterSemicolonInForStatements: t -> bool [@@js.get "InsertSpaceAfterSemicolonInForStatements"]
      val set_InsertSpaceAfterSemicolonInForStatements: t -> bool -> unit [@@js.set "InsertSpaceAfterSemicolonInForStatements"]
      val get_InsertSpaceBeforeAndAfterBinaryOperators: t -> bool [@@js.get "InsertSpaceBeforeAndAfterBinaryOperators"]
      val set_InsertSpaceBeforeAndAfterBinaryOperators: t -> bool -> unit [@@js.set "InsertSpaceBeforeAndAfterBinaryOperators"]
      val get_InsertSpaceAfterConstructor: t -> bool [@@js.get "InsertSpaceAfterConstructor"]
      val set_InsertSpaceAfterConstructor: t -> bool -> unit [@@js.set "InsertSpaceAfterConstructor"]
      val get_InsertSpaceAfterKeywordsInControlFlowStatements: t -> bool [@@js.get "InsertSpaceAfterKeywordsInControlFlowStatements"]
      val set_InsertSpaceAfterKeywordsInControlFlowStatements: t -> bool -> unit [@@js.set "InsertSpaceAfterKeywordsInControlFlowStatements"]
      val get_InsertSpaceAfterFunctionKeywordForAnonymousFunctions: t -> bool [@@js.get "InsertSpaceAfterFunctionKeywordForAnonymousFunctions"]
      val set_InsertSpaceAfterFunctionKeywordForAnonymousFunctions: t -> bool -> unit [@@js.set "InsertSpaceAfterFunctionKeywordForAnonymousFunctions"]
      val get_InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis: t -> bool [@@js.get "InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis"]
      val set_InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis: t -> bool -> unit [@@js.set "InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis"]
      val get_InsertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets: t -> bool [@@js.get "InsertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets"]
      val set_InsertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets: t -> bool -> unit [@@js.set "InsertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets"]
      val get_InsertSpaceAfterOpeningAndBeforeClosingNonemptyBraces: t -> bool [@@js.get "InsertSpaceAfterOpeningAndBeforeClosingNonemptyBraces"]
      val set_InsertSpaceAfterOpeningAndBeforeClosingNonemptyBraces: t -> bool -> unit [@@js.set "InsertSpaceAfterOpeningAndBeforeClosingNonemptyBraces"]
      val get_InsertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces: t -> bool [@@js.get "InsertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces"]
      val set_InsertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces: t -> bool -> unit [@@js.set "InsertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces"]
      val get_InsertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces: t -> bool [@@js.get "InsertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces"]
      val set_InsertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces: t -> bool -> unit [@@js.set "InsertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces"]
      val get_InsertSpaceAfterTypeAssertion: t -> bool [@@js.get "InsertSpaceAfterTypeAssertion"]
      val set_InsertSpaceAfterTypeAssertion: t -> bool -> unit [@@js.set "InsertSpaceAfterTypeAssertion"]
      val get_InsertSpaceBeforeFunctionParenthesis: t -> bool [@@js.get "InsertSpaceBeforeFunctionParenthesis"]
      val set_InsertSpaceBeforeFunctionParenthesis: t -> bool -> unit [@@js.set "InsertSpaceBeforeFunctionParenthesis"]
      val get_PlaceOpenBraceOnNewLineForFunctions: t -> bool [@@js.get "PlaceOpenBraceOnNewLineForFunctions"]
      val set_PlaceOpenBraceOnNewLineForFunctions: t -> bool -> unit [@@js.set "PlaceOpenBraceOnNewLineForFunctions"]
      val get_PlaceOpenBraceOnNewLineForControlBlocks: t -> bool [@@js.get "PlaceOpenBraceOnNewLineForControlBlocks"]
      val set_PlaceOpenBraceOnNewLineForControlBlocks: t -> bool -> unit [@@js.set "PlaceOpenBraceOnNewLineForControlBlocks"]
      val get_insertSpaceBeforeTypeAnnotation: t -> bool [@@js.get "insertSpaceBeforeTypeAnnotation"]
      val set_insertSpaceBeforeTypeAnnotation: t -> bool -> unit [@@js.set "insertSpaceBeforeTypeAnnotation"]
      val cast: t -> ts_EditorOptions [@@js.cast]
    end
    module[@js.scope "FormatCodeSettings"] FormatCodeSettings : sig
      type t = ts_FormatCodeSettings
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_insertSpaceAfterCommaDelimiter: t -> bool [@@js.get "insertSpaceAfterCommaDelimiter"]
      val get_insertSpaceAfterSemicolonInForStatements: t -> bool [@@js.get "insertSpaceAfterSemicolonInForStatements"]
      val get_insertSpaceBeforeAndAfterBinaryOperators: t -> bool [@@js.get "insertSpaceBeforeAndAfterBinaryOperators"]
      val get_insertSpaceAfterConstructor: t -> bool [@@js.get "insertSpaceAfterConstructor"]
      val get_insertSpaceAfterKeywordsInControlFlowStatements: t -> bool [@@js.get "insertSpaceAfterKeywordsInControlFlowStatements"]
      val get_insertSpaceAfterFunctionKeywordForAnonymousFunctions: t -> bool [@@js.get "insertSpaceAfterFunctionKeywordForAnonymousFunctions"]
      val get_insertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis: t -> bool [@@js.get "insertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis"]
      val get_insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets: t -> bool [@@js.get "insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets"]
      val get_insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces: t -> bool [@@js.get "insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces"]
      val get_insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces: t -> bool [@@js.get "insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces"]
      val get_insertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces: t -> bool [@@js.get "insertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces"]
      val get_insertSpaceAfterTypeAssertion: t -> bool [@@js.get "insertSpaceAfterTypeAssertion"]
      val get_insertSpaceBeforeFunctionParenthesis: t -> bool [@@js.get "insertSpaceBeforeFunctionParenthesis"]
      val get_placeOpenBraceOnNewLineForFunctions: t -> bool [@@js.get "placeOpenBraceOnNewLineForFunctions"]
      val get_placeOpenBraceOnNewLineForControlBlocks: t -> bool [@@js.get "placeOpenBraceOnNewLineForControlBlocks"]
      val get_insertSpaceBeforeTypeAnnotation: t -> bool [@@js.get "insertSpaceBeforeTypeAnnotation"]
      val get_indentMultiLineObjectLiteralBeginningOnBlankLine: t -> bool [@@js.get "indentMultiLineObjectLiteralBeginningOnBlankLine"]
      val get_semicolons: t -> ts_SemicolonPreference [@@js.get "semicolons"]
      val cast: t -> ts_EditorSettings [@@js.cast]
    end
    val getDefaultFormatCodeSettings: ?newLineCharacter:string -> unit -> ts_FormatCodeSettings [@@js.global "getDefaultFormatCodeSettings"]
    module[@js.scope "DefinitionInfo"] DefinitionInfo : sig
      type t = ts_DefinitionInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_containerKind: t -> ts_ScriptElementKind [@@js.get "containerKind"]
      val set_containerKind: t -> ts_ScriptElementKind -> unit [@@js.set "containerKind"]
      val get_containerName: t -> string [@@js.get "containerName"]
      val set_containerName: t -> string -> unit [@@js.set "containerName"]
      val cast: t -> ts_DocumentSpan [@@js.cast]
    end
    module[@js.scope "DefinitionInfoAndBoundSpan"] DefinitionInfoAndBoundSpan : sig
      type t = ts_DefinitionInfoAndBoundSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_definitions: t -> ts_DefinitionInfo list [@@js.get "definitions"]
      val set_definitions: t -> ts_DefinitionInfo list -> unit [@@js.set "definitions"]
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
    end
    module[@js.scope "ReferencedSymbolDefinitionInfo"] ReferencedSymbolDefinitionInfo : sig
      type t = ts_ReferencedSymbolDefinitionInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_displayParts: t -> ts_SymbolDisplayPart list [@@js.get "displayParts"]
      val set_displayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "displayParts"]
      val cast: t -> ts_DefinitionInfo [@@js.cast]
    end
    module[@js.scope "ReferencedSymbol"] ReferencedSymbol : sig
      type t = ts_ReferencedSymbol
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_definition: t -> ts_ReferencedSymbolDefinitionInfo [@@js.get "definition"]
      val set_definition: t -> ts_ReferencedSymbolDefinitionInfo -> unit [@@js.set "definition"]
      val get_references: t -> ts_ReferenceEntry list [@@js.get "references"]
      val set_references: t -> ts_ReferenceEntry list -> unit [@@js.set "references"]
    end
    module SymbolDisplayPartKind : sig
      type t = ts_SymbolDisplayPartKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "SymbolDisplayPart"] SymbolDisplayPart : sig
      type t = ts_SymbolDisplayPart
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
      val get_kind: t -> string [@@js.get "kind"]
      val set_kind: t -> string -> unit [@@js.set "kind"]
    end
    module[@js.scope "JSDocTagInfo"] JSDocTagInfo : sig
      type t = ts_JSDocTagInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_text: t -> string [@@js.get "text"]
      val set_text: t -> string -> unit [@@js.set "text"]
    end
    module[@js.scope "QuickInfo"] QuickInfo : sig
      type t = ts_QuickInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_kindModifiers: t -> string [@@js.get "kindModifiers"]
      val set_kindModifiers: t -> string -> unit [@@js.set "kindModifiers"]
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
      val get_displayParts: t -> ts_SymbolDisplayPart list [@@js.get "displayParts"]
      val set_displayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "displayParts"]
      val get_documentation: t -> ts_SymbolDisplayPart list [@@js.get "documentation"]
      val set_documentation: t -> ts_SymbolDisplayPart list -> unit [@@js.set "documentation"]
      val get_tags: t -> ts_JSDocTagInfo list [@@js.get "tags"]
      val set_tags: t -> ts_JSDocTagInfo list -> unit [@@js.set "tags"]
    end
    module RenameInfo : sig
      type t = ts_RenameInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "RenameInfoSuccess"] RenameInfoSuccess : sig
      type t = ts_RenameInfoSuccess
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_canRename: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "canRename"]
      val set_canRename: t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "canRename"]
      val get_fileToRename: t -> string [@@js.get "fileToRename"]
      val set_fileToRename: t -> string -> unit [@@js.set "fileToRename"]
      val get_displayName: t -> string [@@js.get "displayName"]
      val set_displayName: t -> string -> unit [@@js.set "displayName"]
      val get_fullDisplayName: t -> string [@@js.get "fullDisplayName"]
      val set_fullDisplayName: t -> string -> unit [@@js.set "fullDisplayName"]
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_kindModifiers: t -> string [@@js.get "kindModifiers"]
      val set_kindModifiers: t -> string -> unit [@@js.set "kindModifiers"]
      val get_triggerSpan: t -> ts_TextSpan [@@js.get "triggerSpan"]
      val set_triggerSpan: t -> ts_TextSpan -> unit [@@js.set "triggerSpan"]
    end
    module[@js.scope "RenameInfoFailure"] RenameInfoFailure : sig
      type t = ts_RenameInfoFailure
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_canRename: t -> ([`L_b_false[@js false]] [@js.enum]) [@@js.get "canRename"]
      val set_canRename: t -> ([`L_b_false] [@js.enum]) -> unit [@@js.set "canRename"]
      val get_localizedErrorMessage: t -> string [@@js.get "localizedErrorMessage"]
      val set_localizedErrorMessage: t -> string -> unit [@@js.set "localizedErrorMessage"]
    end
    module[@js.scope "RenameInfoOptions"] RenameInfoOptions : sig
      type t = ts_RenameInfoOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_allowRenameOfImportPath: t -> bool [@@js.get "allowRenameOfImportPath"]
    end
    module[@js.scope "SignatureHelpParameter"] SignatureHelpParameter : sig
      type t = ts_SignatureHelpParameter
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_documentation: t -> ts_SymbolDisplayPart list [@@js.get "documentation"]
      val set_documentation: t -> ts_SymbolDisplayPart list -> unit [@@js.set "documentation"]
      val get_displayParts: t -> ts_SymbolDisplayPart list [@@js.get "displayParts"]
      val set_displayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "displayParts"]
      val get_isOptional: t -> bool [@@js.get "isOptional"]
      val set_isOptional: t -> bool -> unit [@@js.set "isOptional"]
    end
    module[@js.scope "SelectionRange"] SelectionRange : sig
      type t = ts_SelectionRange
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
      val get_parent: t -> t [@@js.get "parent"]
      val set_parent: t -> t -> unit [@@js.set "parent"]
    end
    module[@js.scope "SignatureHelpItem"] SignatureHelpItem : sig
      type t = ts_SignatureHelpItem
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_isVariadic: t -> bool [@@js.get "isVariadic"]
      val set_isVariadic: t -> bool -> unit [@@js.set "isVariadic"]
      val get_prefixDisplayParts: t -> ts_SymbolDisplayPart list [@@js.get "prefixDisplayParts"]
      val set_prefixDisplayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "prefixDisplayParts"]
      val get_suffixDisplayParts: t -> ts_SymbolDisplayPart list [@@js.get "suffixDisplayParts"]
      val set_suffixDisplayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "suffixDisplayParts"]
      val get_separatorDisplayParts: t -> ts_SymbolDisplayPart list [@@js.get "separatorDisplayParts"]
      val set_separatorDisplayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "separatorDisplayParts"]
      val get_parameters: t -> ts_SignatureHelpParameter list [@@js.get "parameters"]
      val set_parameters: t -> ts_SignatureHelpParameter list -> unit [@@js.set "parameters"]
      val get_documentation: t -> ts_SymbolDisplayPart list [@@js.get "documentation"]
      val set_documentation: t -> ts_SymbolDisplayPart list -> unit [@@js.set "documentation"]
      val get_tags: t -> ts_JSDocTagInfo list [@@js.get "tags"]
      val set_tags: t -> ts_JSDocTagInfo list -> unit [@@js.set "tags"]
    end
    module[@js.scope "SignatureHelpItems"] SignatureHelpItems : sig
      type t = ts_SignatureHelpItems
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_items: t -> ts_SignatureHelpItem list [@@js.get "items"]
      val set_items: t -> ts_SignatureHelpItem list -> unit [@@js.set "items"]
      val get_applicableSpan: t -> ts_TextSpan [@@js.get "applicableSpan"]
      val set_applicableSpan: t -> ts_TextSpan -> unit [@@js.set "applicableSpan"]
      val get_selectedItemIndex: t -> float [@@js.get "selectedItemIndex"]
      val set_selectedItemIndex: t -> float -> unit [@@js.set "selectedItemIndex"]
      val get_argumentIndex: t -> float [@@js.get "argumentIndex"]
      val set_argumentIndex: t -> float -> unit [@@js.set "argumentIndex"]
      val get_argumentCount: t -> float [@@js.get "argumentCount"]
      val set_argumentCount: t -> float -> unit [@@js.set "argumentCount"]
    end
    module[@js.scope "CompletionInfo"] CompletionInfo : sig
      type t = ts_CompletionInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_isGlobalCompletion: t -> bool [@@js.get "isGlobalCompletion"]
      val set_isGlobalCompletion: t -> bool -> unit [@@js.set "isGlobalCompletion"]
      val get_isMemberCompletion: t -> bool [@@js.get "isMemberCompletion"]
      val set_isMemberCompletion: t -> bool -> unit [@@js.set "isMemberCompletion"]
      val get_isNewIdentifierLocation: t -> bool [@@js.get "isNewIdentifierLocation"]
      val set_isNewIdentifierLocation: t -> bool -> unit [@@js.set "isNewIdentifierLocation"]
      val get_entries: t -> ts_CompletionEntry list [@@js.get "entries"]
      val set_entries: t -> ts_CompletionEntry list -> unit [@@js.set "entries"]
    end
    module[@js.scope "CompletionEntry"] CompletionEntry : sig
      type t = ts_CompletionEntry
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_kindModifiers: t -> string [@@js.get "kindModifiers"]
      val set_kindModifiers: t -> string -> unit [@@js.set "kindModifiers"]
      val get_sortText: t -> string [@@js.get "sortText"]
      val set_sortText: t -> string -> unit [@@js.set "sortText"]
      val get_insertText: t -> string [@@js.get "insertText"]
      val set_insertText: t -> string -> unit [@@js.set "insertText"]
      val get_replacementSpan: t -> ts_TextSpan [@@js.get "replacementSpan"]
      val set_replacementSpan: t -> ts_TextSpan -> unit [@@js.set "replacementSpan"]
      val get_hasAction: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "hasAction"]
      val set_hasAction: t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "hasAction"]
      val get_source: t -> string [@@js.get "source"]
      val set_source: t -> string -> unit [@@js.set "source"]
      val get_isRecommended: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "isRecommended"]
      val set_isRecommended: t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "isRecommended"]
      val get_isFromUncheckedFile: t -> ([`L_b_true[@js true]] [@js.enum]) [@@js.get "isFromUncheckedFile"]
      val set_isFromUncheckedFile: t -> ([`L_b_true] [@js.enum]) -> unit [@@js.set "isFromUncheckedFile"]
    end
    module[@js.scope "CompletionEntryDetails"] CompletionEntryDetails : sig
      type t = ts_CompletionEntryDetails
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_name: t -> string [@@js.get "name"]
      val set_name: t -> string -> unit [@@js.set "name"]
      val get_kind: t -> ts_ScriptElementKind [@@js.get "kind"]
      val set_kind: t -> ts_ScriptElementKind -> unit [@@js.set "kind"]
      val get_kindModifiers: t -> string [@@js.get "kindModifiers"]
      val set_kindModifiers: t -> string -> unit [@@js.set "kindModifiers"]
      val get_displayParts: t -> ts_SymbolDisplayPart list [@@js.get "displayParts"]
      val set_displayParts: t -> ts_SymbolDisplayPart list -> unit [@@js.set "displayParts"]
      val get_documentation: t -> ts_SymbolDisplayPart list [@@js.get "documentation"]
      val set_documentation: t -> ts_SymbolDisplayPart list -> unit [@@js.set "documentation"]
      val get_tags: t -> ts_JSDocTagInfo list [@@js.get "tags"]
      val set_tags: t -> ts_JSDocTagInfo list -> unit [@@js.set "tags"]
      val get_codeActions: t -> ts_CodeAction list [@@js.get "codeActions"]
      val set_codeActions: t -> ts_CodeAction list -> unit [@@js.set "codeActions"]
      val get_source: t -> ts_SymbolDisplayPart list [@@js.get "source"]
      val set_source: t -> ts_SymbolDisplayPart list -> unit [@@js.set "source"]
    end
    module[@js.scope "OutliningSpan"] OutliningSpan : sig
      type t = ts_OutliningSpan
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_textSpan: t -> ts_TextSpan [@@js.get "textSpan"]
      val set_textSpan: t -> ts_TextSpan -> unit [@@js.set "textSpan"]
      val get_hintSpan: t -> ts_TextSpan [@@js.get "hintSpan"]
      val set_hintSpan: t -> ts_TextSpan -> unit [@@js.set "hintSpan"]
      val get_bannerText: t -> string [@@js.get "bannerText"]
      val set_bannerText: t -> string -> unit [@@js.set "bannerText"]
      val get_autoCollapse: t -> bool [@@js.get "autoCollapse"]
      val set_autoCollapse: t -> bool -> unit [@@js.set "autoCollapse"]
      val get_kind: t -> ts_OutliningSpanKind [@@js.get "kind"]
      val set_kind: t -> ts_OutliningSpanKind -> unit [@@js.set "kind"]
    end
    module OutliningSpanKind : sig
      type t = ts_OutliningSpanKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module OutputFileType : sig
      type t = ts_OutputFileType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EndOfLineState : sig
      type t = ts_EndOfLineState
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TokenClass : sig
      type t = ts_TokenClass
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "ClassificationResult"] ClassificationResult : sig
      type t = ts_ClassificationResult
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_finalLexState: t -> ts_EndOfLineState [@@js.get "finalLexState"]
      val set_finalLexState: t -> ts_EndOfLineState -> unit [@@js.set "finalLexState"]
      val get_entries: t -> ts_ClassificationInfo list [@@js.get "entries"]
      val set_entries: t -> ts_ClassificationInfo list -> unit [@@js.set "entries"]
    end
    module[@js.scope "ClassificationInfo"] ClassificationInfo : sig
      type t = ts_ClassificationInfo
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_length: t -> float [@@js.get "length"]
      val set_length: t -> float -> unit [@@js.set "length"]
      val get_classification: t -> ts_TokenClass [@@js.get "classification"]
      val set_classification: t -> ts_TokenClass -> unit [@@js.set "classification"]
    end
    module[@js.scope "Classifier"] Classifier : sig
      type t = ts_Classifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val getClassificationsForLine: t -> text:string -> lexState:ts_EndOfLineState -> syntacticClassifierAbsent:bool -> ts_ClassificationResult [@@js.call "getClassificationsForLine"]
      val getEncodedLexicalClassifications: t -> text:string -> endOfLineState:ts_EndOfLineState -> syntacticClassifierAbsent:bool -> ts_Classifications [@@js.call "getEncodedLexicalClassifications"]
    end
    module ScriptElementKind : sig
      type t = ts_ScriptElementKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ScriptElementKindModifier : sig
      type t = ts_ScriptElementKindModifier
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ClassificationTypeNames : sig
      type t = ts_ClassificationTypeNames
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ClassificationType : sig
      type t = ts_ClassificationType
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val createClassifier: unit -> ts_Classifier [@@js.global "createClassifier"]
    module[@js.scope "DocumentHighlights"] DocumentHighlights : sig
      type t = ts_DocumentHighlights
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_highlightSpans: t -> ts_HighlightSpan list [@@js.get "highlightSpans"]
      val set_highlightSpans: t -> ts_HighlightSpan list -> unit [@@js.set "highlightSpans"]
    end
    module[@js.scope "DocumentRegistry"] DocumentRegistry : sig
      type t = ts_DocumentRegistry
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val acquireDocument: t -> fileName:string -> compilationSettings:ts_CompilerOptions -> scriptSnapshot:ts_IScriptSnapshot -> version:string -> ?scriptKind:ts_ScriptKind -> unit -> ts_SourceFile [@@js.call "acquireDocument"]
      val acquireDocumentWithKey: t -> fileName:string -> path:ts_Path -> compilationSettings:ts_CompilerOptions -> key:ts_DocumentRegistryBucketKey -> scriptSnapshot:ts_IScriptSnapshot -> version:string -> ?scriptKind:ts_ScriptKind -> unit -> ts_SourceFile [@@js.call "acquireDocumentWithKey"]
      val updateDocument: t -> fileName:string -> compilationSettings:ts_CompilerOptions -> scriptSnapshot:ts_IScriptSnapshot -> version:string -> ?scriptKind:ts_ScriptKind -> unit -> ts_SourceFile [@@js.call "updateDocument"]
      val updateDocumentWithKey: t -> fileName:string -> path:ts_Path -> compilationSettings:ts_CompilerOptions -> key:ts_DocumentRegistryBucketKey -> scriptSnapshot:ts_IScriptSnapshot -> version:string -> ?scriptKind:ts_ScriptKind -> unit -> ts_SourceFile [@@js.call "updateDocumentWithKey"]
      val getKeyForCompilationSettings: t -> settings:ts_CompilerOptions -> ts_DocumentRegistryBucketKey [@@js.call "getKeyForCompilationSettings"]
      val releaseDocument: t -> fileName:string -> compilationSettings:ts_CompilerOptions -> unit [@@js.call "releaseDocument"]
      val releaseDocumentWithKey: t -> path:ts_Path -> key:ts_DocumentRegistryBucketKey -> unit [@@js.call "releaseDocumentWithKey"]
      val reportStats: t -> string [@@js.call "reportStats"]
    end
    module DocumentRegistryBucketKey : sig
      type t = ts_DocumentRegistryBucketKey
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val createDocumentRegistry: ?useCaseSensitiveFileNames:bool -> ?currentDirectory:string -> unit -> ts_DocumentRegistry [@@js.global "createDocumentRegistry"]
    val preProcessFile: sourceText:string -> ?readImportFiles:bool -> ?detectJavaScriptImports:bool -> unit -> ts_PreProcessedFileInfo [@@js.global "preProcessFile"]
    module[@js.scope "TranspileOptions"] TranspileOptions : sig
      type t = ts_TranspileOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_compilerOptions: t -> ts_CompilerOptions [@@js.get "compilerOptions"]
      val set_compilerOptions: t -> ts_CompilerOptions -> unit [@@js.set "compilerOptions"]
      val get_fileName: t -> string [@@js.get "fileName"]
      val set_fileName: t -> string -> unit [@@js.set "fileName"]
      val get_reportDiagnostics: t -> bool [@@js.get "reportDiagnostics"]
      val set_reportDiagnostics: t -> bool -> unit [@@js.set "reportDiagnostics"]
      val get_moduleName: t -> string [@@js.get "moduleName"]
      val set_moduleName: t -> string -> unit [@@js.set "moduleName"]
      val get_renamedDependencies: t -> string ts_MapLike [@@js.get "renamedDependencies"]
      val set_renamedDependencies: t -> string ts_MapLike -> unit [@@js.set "renamedDependencies"]
      val get_transformers: t -> ts_CustomTransformers [@@js.get "transformers"]
      val set_transformers: t -> ts_CustomTransformers -> unit [@@js.set "transformers"]
    end
    module[@js.scope "TranspileOutput"] TranspileOutput : sig
      type t = ts_TranspileOutput
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val get_outputText: t -> string [@@js.get "outputText"]
      val set_outputText: t -> string -> unit [@@js.set "outputText"]
      val get_diagnostics: t -> ts_Diagnostic list [@@js.get "diagnostics"]
      val set_diagnostics: t -> ts_Diagnostic list -> unit [@@js.set "diagnostics"]
      val get_sourceMapText: t -> string [@@js.get "sourceMapText"]
      val set_sourceMapText: t -> string -> unit [@@js.set "sourceMapText"]
    end
    val transpileModule: input:string -> transpileOptions:ts_TranspileOptions -> ts_TranspileOutput [@@js.global "transpileModule"]
    val transpile: input:string -> ?compilerOptions:ts_CompilerOptions -> ?fileName:string -> ?diagnostics:ts_Diagnostic list -> ?moduleName:string -> unit -> string [@@js.global "transpile"]
    val servicesVersion: string [@@js.global "servicesVersion"]
    val toEditorSettings: options:(ts_EditorOptions, ts_EditorSettings) or_ -> ts_EditorSettings [@@js.global "toEditorSettings"]
    val displayPartsToString: displayParts:ts_SymbolDisplayPart list or_undefined -> string [@@js.global "displayPartsToString"]
    val getDefaultCompilerOptions: unit -> ts_CompilerOptions [@@js.global "getDefaultCompilerOptions"]
    val getSupportedCodeFixes: unit -> string list [@@js.global "getSupportedCodeFixes"]
    val createLanguageServiceSourceFile: fileName:string -> scriptSnapshot:ts_IScriptSnapshot -> scriptTarget:ts_ScriptTarget -> version:string -> setNodeParents:bool -> ?scriptKind:ts_ScriptKind -> unit -> ts_SourceFile [@@js.global "createLanguageServiceSourceFile"]
    val updateLanguageServiceSourceFile: sourceFile:ts_SourceFile -> scriptSnapshot:ts_IScriptSnapshot -> version:string -> textChangeRange:ts_TextChangeRange or_undefined -> ?aggressiveChecks:bool -> unit -> ts_SourceFile [@@js.global "updateLanguageServiceSourceFile"]
    val createLanguageService: host:ts_LanguageServiceHost -> ?documentRegistry:ts_DocumentRegistry -> ?syntaxOnly:bool -> unit -> ts_LanguageService [@@js.global "createLanguageService"]
    val getDefaultLibFilePath: options:ts_CompilerOptions -> string [@@js.global "getDefaultLibFilePath"]
    val transform: source:('T, 'T) or_array -> transformers:'T ts_TransformerFactory list -> ?compilerOptions:ts_CompilerOptions -> unit -> 'T ts_TransformationResult [@@js.global "transform"]
  end
  val setTimeout: handler:(args:(any list [@js.variadic]) -> unit) -> timeout:float -> any [@@js.global "setTimeout"]
  val clearTimeout: handle:any -> unit [@@js.global "clearTimeout"]
  (* export = ts *)
end
