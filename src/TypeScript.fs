// ts2fable 0.7.1
module rec TypeScript
open System
open Fable.Core
open Fable.Core.JS

type Array<'T> = System.Collections.Generic.IList<'T>
type ReadonlyArray<'T> = System.Collections.Generic.IReadOnlyList<'T>
type ReadonlySet<'T> = Set<'T>
type Symbol = obj

let [<Import("*","typescript")>] ts: Ts.IExports = jsNative

type [<AllowNullLiteral>] IExports =
    abstract setTimeout: handler: (ResizeArray<obj option> -> unit) * timeout: float -> obj option
    abstract clearTimeout: handle: obj option -> unit

module Ts =
    let [<Import("ScriptSnapshot","typescript/ts")>] scriptSnapshot: ScriptSnapshot.IExports = jsNative

    type [<AllowNullLiteral>] IExports =
        abstract versionMajorMinor: obj
        abstract version: string
        abstract OperationCanceledException: OperationCanceledExceptionStatic
        abstract getNodeMajorVersion: unit -> float option
        abstract sys: System
        abstract tokenToString: t: SyntaxKind -> string option
        abstract getPositionOfLineAndCharacter: sourceFile: SourceFileLike * line: float * character: float -> float
        abstract getLineAndCharacterOfPosition: sourceFile: SourceFileLike * position: float -> LineAndCharacter
        abstract isWhiteSpaceLike: ch: float -> bool
        /// Does not include line breaks. For that, see isWhiteSpaceLike.
        abstract isWhiteSpaceSingleLine: ch: float -> bool
        abstract isLineBreak: ch: float -> bool
        abstract couldStartTrivia: text: string * pos: float -> bool
        abstract forEachLeadingCommentRange: text: string * pos: float * cb: (float -> float -> CommentKind -> bool -> 'U) -> 'U option
        abstract forEachLeadingCommentRange: text: string * pos: float * cb: (float -> float -> CommentKind -> bool -> 'T -> 'U) * state: 'T -> 'U option
        abstract forEachTrailingCommentRange: text: string * pos: float * cb: (float -> float -> CommentKind -> bool -> 'U) -> 'U option
        abstract forEachTrailingCommentRange: text: string * pos: float * cb: (float -> float -> CommentKind -> bool -> 'T -> 'U) * state: 'T -> 'U option
        abstract reduceEachLeadingCommentRange: text: string * pos: float * cb: (float -> float -> CommentKind -> bool -> 'T -> 'U -> 'U) * state: 'T * initial: 'U -> 'U option
        abstract reduceEachTrailingCommentRange: text: string * pos: float * cb: (float -> float -> CommentKind -> bool -> 'T -> 'U -> 'U) * state: 'T * initial: 'U -> 'U option
        abstract getLeadingCommentRanges: text: string * pos: float -> ResizeArray<CommentRange> option
        abstract getTrailingCommentRanges: text: string * pos: float -> ResizeArray<CommentRange> option
        /// Optionally, get the shebang
        abstract getShebang: text: string -> string option
        abstract isIdentifierStart: ch: float * languageVersion: ScriptTarget option -> bool
        abstract isIdentifierPart: ch: float * languageVersion: ScriptTarget option * ?identifierVariant: LanguageVariant -> bool
        abstract createScanner: languageVersion: ScriptTarget * skipTrivia: bool * ?languageVariant: LanguageVariant * ?textInitial: string * ?onError: ErrorCallback * ?start: float * ?length: float -> Scanner
        abstract isExternalModuleNameRelative: moduleName: string -> bool
        abstract sortAndDeduplicateDiagnostics: diagnostics: ResizeArray<'T> -> SortedReadonlyArray<'T>
        abstract getDefaultLibFileName: options: CompilerOptions -> string
        abstract textSpanEnd: span: TextSpan -> float
        abstract textSpanIsEmpty: span: TextSpan -> bool
        abstract textSpanContainsPosition: span: TextSpan * position: float -> bool
        abstract textSpanContainsTextSpan: span: TextSpan * other: TextSpan -> bool
        abstract textSpanOverlapsWith: span: TextSpan * other: TextSpan -> bool
        abstract textSpanOverlap: span1: TextSpan * span2: TextSpan -> TextSpan option
        abstract textSpanIntersectsWithTextSpan: span: TextSpan * other: TextSpan -> bool
        abstract textSpanIntersectsWith: span: TextSpan * start: float * length: float -> bool
        abstract decodedTextSpanIntersectsWith: start1: float * length1: float * start2: float * length2: float -> bool
        abstract textSpanIntersectsWithPosition: span: TextSpan * position: float -> bool
        abstract textSpanIntersection: span1: TextSpan * span2: TextSpan -> TextSpan option
        abstract createTextSpan: start: float * length: float -> TextSpan
        abstract createTextSpanFromBounds: start: float * ``end``: float -> TextSpan
        abstract textChangeRangeNewSpan: range: TextChangeRange -> TextSpan
        abstract textChangeRangeIsUnchanged: range: TextChangeRange -> bool
        abstract createTextChangeRange: span: TextSpan * newLength: float -> TextChangeRange
        abstract unchangedTextChangeRange: TextChangeRange
        /// Called to merge all the changes that occurred across several versions of a script snapshot
        /// into a single change.  i.e. if a user keeps making successive edits to a script we will
        /// have a text change from V1 to V2, V2 to V3, ..., Vn.
        /// 
        /// This function will then merge those changes into a single change range valid between V1 and
        /// Vn.
        abstract collapseTextChangeRangesAcrossMultipleVersions: changes: ResizeArray<TextChangeRange> -> TextChangeRange
        abstract getTypeParameterOwner: d: Declaration -> Declaration option
        abstract isParameterPropertyDeclaration: node: Node * parent: Node -> bool
        abstract isEmptyBindingPattern: node: BindingName -> bool
        abstract isEmptyBindingElement: node: BindingElement -> bool
        abstract walkUpBindingElementsAndPatterns: binding: BindingElement -> U2<VariableDeclaration, ParameterDeclaration>
        abstract getCombinedModifierFlags: node: Declaration -> ModifierFlags
        abstract getCombinedNodeFlags: node: Node -> NodeFlags
        /// Checks to see if the locale is in the appropriate format,
        /// and if it is, attempts to set the appropriate language.
        abstract validateLocaleAndSetLanguage: locale: string * sys: ValidateLocaleAndSetLanguageSys * ?errors: Push<Diagnostic> -> unit
        abstract getOriginalNode: node: Node -> Node
        abstract getOriginalNode: node: Node * nodeTest: (Node -> bool) -> 'T
        abstract getOriginalNode: node: Node option -> Node option
        abstract getOriginalNode: node: Node option * nodeTest: (Node option -> bool) -> 'T option
        /// Iterates through the parent chain of a node and performs the callback on each parent until the callback
        /// returns a truthy value, then returns that value.
        /// If no such value is found, it applies the callback until the parent pointer is undefined or the callback returns "quit"
        /// At that point findAncestor returns undefined.
        abstract findAncestor: node: Node option * callback: (Node -> bool) -> 'T option
        abstract findAncestor: node: Node option * callback: (Node -> U2<bool, string>) -> Node option
        /// <summary>Gets a value indicating whether a node originated in the parse tree.</summary>
        /// <param name="node">The node to test.</param>
        abstract isParseTreeNode: node: Node -> bool
        /// <summary>Gets the original parse tree node for a node.</summary>
        /// <param name="node">The original node.</param>
        abstract getParseTreeNode: node: Node option -> Node option
        /// <summary>Gets the original parse tree node for a node.</summary>
        /// <param name="node">The original node.</param>
        /// <param name="nodeTest">A callback used to ensure the correct type of parse tree node is returned.</param>
        abstract getParseTreeNode: node: 'T option * ?nodeTest: (Node -> bool) -> 'T option
        /// Add an extra underscore to identifiers that start with two underscores to avoid issues with magic names like '__proto__'
        abstract escapeLeadingUnderscores: identifier: string -> __String
        /// <summary>Remove extra underscore from escaped identifier text content.</summary>
        /// <param name="identifier">The escaped identifier text.</param>
        abstract unescapeLeadingUnderscores: identifier: __String -> string
        abstract idText: identifierOrPrivateName: U2<Identifier, PrivateIdentifier> -> string
        abstract symbolName: symbol: Symbol -> string
        abstract getNameOfJSDocTypedef: declaration: JSDocTypedefTag -> U2<Identifier, PrivateIdentifier> option
        abstract getNameOfDeclaration: declaration: U2<Declaration, Expression> -> DeclarationName option
        /// Gets the JSDoc parameter tags for the node if present.
        abstract getJSDocParameterTags: param: ParameterDeclaration -> ResizeArray<JSDocParameterTag>
        /// Gets the JSDoc type parameter tags for the node if present.
        abstract getJSDocTypeParameterTags: param: TypeParameterDeclaration -> ResizeArray<JSDocTemplateTag>
        /// Return true if the node has JSDoc parameter tags.
        abstract hasJSDocParameterTags: node: U2<FunctionLikeDeclaration, SignatureDeclaration> -> bool
        /// Gets the JSDoc augments tag for the node if present
        abstract getJSDocAugmentsTag: node: Node -> JSDocAugmentsTag option
        /// Gets the JSDoc implements tags for the node if present
        abstract getJSDocImplementsTags: node: Node -> ResizeArray<JSDocImplementsTag>
        /// Gets the JSDoc class tag for the node if present
        abstract getJSDocClassTag: node: Node -> JSDocClassTag option
        /// Gets the JSDoc public tag for the node if present
        abstract getJSDocPublicTag: node: Node -> JSDocPublicTag option
        /// Gets the JSDoc private tag for the node if present
        abstract getJSDocPrivateTag: node: Node -> JSDocPrivateTag option
        /// Gets the JSDoc protected tag for the node if present
        abstract getJSDocProtectedTag: node: Node -> JSDocProtectedTag option
        /// Gets the JSDoc protected tag for the node if present
        abstract getJSDocReadonlyTag: node: Node -> JSDocReadonlyTag option
        /// Gets the JSDoc deprecated tag for the node if present
        abstract getJSDocDeprecatedTag: node: Node -> JSDocDeprecatedTag option
        /// Gets the JSDoc enum tag for the node if present
        abstract getJSDocEnumTag: node: Node -> JSDocEnumTag option
        /// Gets the JSDoc this tag for the node if present
        abstract getJSDocThisTag: node: Node -> JSDocThisTag option
        /// Gets the JSDoc return tag for the node if present
        abstract getJSDocReturnTag: node: Node -> JSDocReturnTag option
        /// Gets the JSDoc template tag for the node if present
        abstract getJSDocTemplateTag: node: Node -> JSDocTemplateTag option
        /// Gets the JSDoc type tag for the node if present and valid
        abstract getJSDocTypeTag: node: Node -> JSDocTypeTag option
        /// Gets the type node for the node if provided via JSDoc.
        abstract getJSDocType: node: Node -> TypeNode option
        /// Gets the return type node for the node if provided via JSDoc return tag or type tag.
        abstract getJSDocReturnType: node: Node -> TypeNode option
        /// Get all JSDoc tags related to a node, including those on parent nodes.
        abstract getJSDocTags: node: Node -> ResizeArray<JSDocTag>
        /// Gets all JSDoc tags that match a specified predicate
        abstract getAllJSDocTags: node: Node * predicate: (JSDocTag -> bool) -> ResizeArray<'T>
        /// Gets all JSDoc tags of a specified kind
        abstract getAllJSDocTagsOfKind: node: Node * kind: SyntaxKind -> ResizeArray<JSDocTag>
        /// Gets the effective type parameters. If the node was parsed in a
        /// JavaScript file, gets the type parameters from the `@template` tag from JSDoc.
        abstract getEffectiveTypeParameterDeclarations: node: DeclarationWithTypeParameters -> ResizeArray<TypeParameterDeclaration>
        abstract getEffectiveConstraintOfTypeParameter: node: TypeParameterDeclaration -> TypeNode option
        abstract isIdentifierOrPrivateIdentifier: node: Node -> bool
        abstract isPropertyAccessChain: node: Node -> bool
        abstract isElementAccessChain: node: Node -> bool
        abstract isCallChain: node: Node -> bool
        abstract isOptionalChain: node: Node -> bool
        abstract isNullishCoalesce: node: Node -> bool
        abstract isConstTypeReference: node: Node -> bool
        abstract skipPartiallyEmittedExpressions: node: Expression -> Expression
        abstract skipPartiallyEmittedExpressions: node: Node -> Node
        abstract isNonNullChain: node: Node -> bool
        abstract isBreakOrContinueStatement: node: Node -> bool
        abstract isNamedExportBindings: node: Node -> bool
        abstract isUnparsedTextLike: node: Node -> bool
        abstract isUnparsedNode: node: Node -> bool
        abstract isJSDocPropertyLikeTag: node: Node -> bool
        /// True if node is of some token syntax kind.
        /// For example, this is true for an IfKeyword but not for an IfStatement.
        /// Literals are considered tokens, except TemplateLiteral, but does include TemplateHead/Middle/Tail.
        abstract isToken: n: Node -> bool
        abstract isLiteralExpression: node: Node -> bool
        abstract isTemplateLiteralToken: node: Node -> bool
        abstract isTemplateMiddleOrTemplateTail: node: Node -> bool
        abstract isImportOrExportSpecifier: node: Node -> bool
        abstract isTypeOnlyImportOrExportDeclaration: node: Node -> bool
        abstract isStringTextContainingNode: node: Node -> bool
        abstract isModifier: node: Node -> bool
        abstract isEntityName: node: Node -> bool
        abstract isPropertyName: node: Node -> bool
        abstract isBindingName: node: Node -> bool
        abstract isFunctionLike: node: Node -> bool
        abstract isClassElement: node: Node -> bool
        abstract isClassLike: node: Node -> bool
        abstract isAccessor: node: Node -> bool
        abstract isTypeElement: node: Node -> bool
        abstract isClassOrTypeElement: node: Node -> bool
        abstract isObjectLiteralElementLike: node: Node -> bool
        /// Node test that determines whether a node is a valid type node.
        /// This differs from the `isPartOfTypeNode` function which determines whether a node is *part*
        /// of a TypeNode.
        abstract isTypeNode: node: Node -> bool
        abstract isFunctionOrConstructorTypeNode: node: Node -> bool
        abstract isPropertyAccessOrQualifiedName: node: Node -> bool
        abstract isCallLikeExpression: node: Node -> bool
        abstract isCallOrNewExpression: node: Node -> bool
        abstract isTemplateLiteral: node: Node -> bool
        abstract isAssertionExpression: node: Node -> bool
        abstract isIterationStatement: node: Node * lookInLabeledStatements: obj -> bool
        abstract isIterationStatement: node: Node * lookInLabeledStatements: bool -> bool
        abstract isJsxOpeningLikeElement: node: Node -> bool
        abstract isCaseOrDefaultClause: node: Node -> bool
        /// True if node is of a kind that may contain comment text.
        abstract isJSDocCommentContainingNode: node: Node -> bool
        abstract isSetAccessor: node: Node -> bool
        abstract isGetAccessor: node: Node -> bool
        /// True if has initializer node attached to it.
        abstract hasOnlyExpressionInitializer: node: Node -> bool
        abstract isObjectLiteralElement: node: Node -> bool
        abstract isStringLiteralLike: node: Node -> bool
        abstract factory: NodeFactory
        abstract createUnparsedSourceFile: text: string -> UnparsedSource
        abstract createUnparsedSourceFile: inputFile: InputFiles * ``type``: CreateUnparsedSourceFileType * ?stripInternal: bool -> UnparsedSource
        abstract createUnparsedSourceFile: text: string * mapPath: string option * map: string option -> UnparsedSource
        abstract createInputFiles: javascriptText: string * declarationText: string -> InputFiles
        abstract createInputFiles: readFileText: (string -> string option) * javascriptPath: string * javascriptMapPath: string option * declarationPath: string * declarationMapPath: string option * buildInfoPath: string option -> InputFiles
        abstract createInputFiles: javascriptText: string * declarationText: string * javascriptMapPath: string option * javascriptMapText: string option * declarationMapPath: string option * declarationMapText: string option -> InputFiles
        /// Create an external source map source file reference
        abstract createSourceMapSource: fileName: string * text: string * ?skipTrivia: (float -> float) -> SourceMapSource
        abstract setOriginalNode: node: 'T * original: Node option -> 'T
        /// <summary>Clears any `EmitNode` entries from parse-tree nodes.</summary>
        /// <param name="sourceFile">A source file.</param>
        abstract disposeEmitNodes: sourceFile: SourceFile option -> unit
        /// Sets flags that control emit behavior of a node.
        abstract setEmitFlags: node: 'T * emitFlags: EmitFlags -> 'T
        /// Gets a custom text range to use when emitting source maps.
        abstract getSourceMapRange: node: Node -> SourceMapRange
        /// Sets a custom text range to use when emitting source maps.
        abstract setSourceMapRange: node: 'T * range: SourceMapRange option -> 'T
        /// Gets the TextRange to use for source maps for a token of a node.
        abstract getTokenSourceMapRange: node: Node * token: SyntaxKind -> SourceMapRange option
        /// Sets the TextRange to use for source maps for a token of a node.
        abstract setTokenSourceMapRange: node: 'T * token: SyntaxKind * range: SourceMapRange option -> 'T
        /// Gets a custom text range to use when emitting comments.
        abstract getCommentRange: node: Node -> TextRange
        /// Sets a custom text range to use when emitting comments.
        abstract setCommentRange: node: 'T * range: TextRange -> 'T
        abstract getSyntheticLeadingComments: node: Node -> ResizeArray<SynthesizedComment> option
        abstract setSyntheticLeadingComments: node: 'T * comments: ResizeArray<SynthesizedComment> option -> 'T
        abstract addSyntheticLeadingComment: node: 'T * kind: SyntaxKind * text: string * ?hasTrailingNewLine: bool -> 'T
        abstract getSyntheticTrailingComments: node: Node -> ResizeArray<SynthesizedComment> option
        abstract setSyntheticTrailingComments: node: 'T * comments: ResizeArray<SynthesizedComment> option -> 'T
        abstract addSyntheticTrailingComment: node: 'T * kind: SyntaxKind * text: string * ?hasTrailingNewLine: bool -> 'T
        abstract moveSyntheticComments: node: 'T * original: Node -> 'T
        /// Gets the constant value to emit for an expression representing an enum.
        abstract getConstantValue: node: AccessExpression -> U2<string, float> option
        /// Sets the constant value to emit for an expression.
        abstract setConstantValue: node: AccessExpression * value: U2<string, float> -> AccessExpression
        /// Adds an EmitHelper to a node.
        abstract addEmitHelper: node: 'T * helper: EmitHelper -> 'T
        /// Add EmitHelpers to a node.
        abstract addEmitHelpers: node: 'T * helpers: ResizeArray<EmitHelper> option -> 'T
        /// Removes an EmitHelper from a node.
        abstract removeEmitHelper: node: Node * helper: EmitHelper -> bool
        /// Gets the EmitHelpers of a node.
        abstract getEmitHelpers: node: Node -> ResizeArray<EmitHelper> option
        /// Moves matching emit helpers from a source node to a target node.
        abstract moveEmitHelpers: source: Node * target: Node * predicate: (EmitHelper -> bool) -> unit
        abstract isNumericLiteral: node: Node -> bool
        abstract isBigIntLiteral: node: Node -> bool
        abstract isStringLiteral: node: Node -> bool
        abstract isJsxText: node: Node -> bool
        abstract isRegularExpressionLiteral: node: Node -> bool
        abstract isNoSubstitutionTemplateLiteral: node: Node -> bool
        abstract isTemplateHead: node: Node -> bool
        abstract isTemplateMiddle: node: Node -> bool
        abstract isTemplateTail: node: Node -> bool
        abstract isIdentifier: node: Node -> bool
        abstract isQualifiedName: node: Node -> bool
        abstract isComputedPropertyName: node: Node -> bool
        abstract isPrivateIdentifier: node: Node -> bool
        abstract isTypeParameterDeclaration: node: Node -> bool
        abstract isParameter: node: Node -> bool
        abstract isDecorator: node: Node -> bool
        abstract isPropertySignature: node: Node -> bool
        abstract isPropertyDeclaration: node: Node -> bool
        abstract isMethodSignature: node: Node -> bool
        abstract isMethodDeclaration: node: Node -> bool
        abstract isConstructorDeclaration: node: Node -> bool
        abstract isGetAccessorDeclaration: node: Node -> bool
        abstract isSetAccessorDeclaration: node: Node -> bool
        abstract isCallSignatureDeclaration: node: Node -> bool
        abstract isConstructSignatureDeclaration: node: Node -> bool
        abstract isIndexSignatureDeclaration: node: Node -> bool
        abstract isTypePredicateNode: node: Node -> bool
        abstract isTypeReferenceNode: node: Node -> bool
        abstract isFunctionTypeNode: node: Node -> bool
        abstract isConstructorTypeNode: node: Node -> bool
        abstract isTypeQueryNode: node: Node -> bool
        abstract isTypeLiteralNode: node: Node -> bool
        abstract isArrayTypeNode: node: Node -> bool
        abstract isTupleTypeNode: node: Node -> bool
        abstract isNamedTupleMember: node: Node -> bool
        abstract isOptionalTypeNode: node: Node -> bool
        abstract isRestTypeNode: node: Node -> bool
        abstract isUnionTypeNode: node: Node -> bool
        abstract isIntersectionTypeNode: node: Node -> bool
        abstract isConditionalTypeNode: node: Node -> bool
        abstract isInferTypeNode: node: Node -> bool
        abstract isParenthesizedTypeNode: node: Node -> bool
        abstract isThisTypeNode: node: Node -> bool
        abstract isTypeOperatorNode: node: Node -> bool
        abstract isIndexedAccessTypeNode: node: Node -> bool
        abstract isMappedTypeNode: node: Node -> bool
        abstract isLiteralTypeNode: node: Node -> bool
        abstract isImportTypeNode: node: Node -> bool
        abstract isTemplateLiteralTypeSpan: node: Node -> bool
        abstract isTemplateLiteralTypeNode: node: Node -> bool
        abstract isObjectBindingPattern: node: Node -> bool
        abstract isArrayBindingPattern: node: Node -> bool
        abstract isBindingElement: node: Node -> bool
        abstract isArrayLiteralExpression: node: Node -> bool
        abstract isObjectLiteralExpression: node: Node -> bool
        abstract isPropertyAccessExpression: node: Node -> bool
        abstract isElementAccessExpression: node: Node -> bool
        abstract isCallExpression: node: Node -> bool
        abstract isNewExpression: node: Node -> bool
        abstract isTaggedTemplateExpression: node: Node -> bool
        abstract isTypeAssertionExpression: node: Node -> bool
        abstract isParenthesizedExpression: node: Node -> bool
        abstract isFunctionExpression: node: Node -> bool
        abstract isArrowFunction: node: Node -> bool
        abstract isDeleteExpression: node: Node -> bool
        abstract isTypeOfExpression: node: Node -> bool
        abstract isVoidExpression: node: Node -> bool
        abstract isAwaitExpression: node: Node -> bool
        abstract isPrefixUnaryExpression: node: Node -> bool
        abstract isPostfixUnaryExpression: node: Node -> bool
        abstract isBinaryExpression: node: Node -> bool
        abstract isConditionalExpression: node: Node -> bool
        abstract isTemplateExpression: node: Node -> bool
        abstract isYieldExpression: node: Node -> bool
        abstract isSpreadElement: node: Node -> bool
        abstract isClassExpression: node: Node -> bool
        abstract isOmittedExpression: node: Node -> bool
        abstract isExpressionWithTypeArguments: node: Node -> bool
        abstract isAsExpression: node: Node -> bool
        abstract isNonNullExpression: node: Node -> bool
        abstract isMetaProperty: node: Node -> bool
        abstract isSyntheticExpression: node: Node -> bool
        abstract isPartiallyEmittedExpression: node: Node -> bool
        abstract isCommaListExpression: node: Node -> bool
        abstract isTemplateSpan: node: Node -> bool
        abstract isSemicolonClassElement: node: Node -> bool
        abstract isBlock: node: Node -> bool
        abstract isVariableStatement: node: Node -> bool
        abstract isEmptyStatement: node: Node -> bool
        abstract isExpressionStatement: node: Node -> bool
        abstract isIfStatement: node: Node -> bool
        abstract isDoStatement: node: Node -> bool
        abstract isWhileStatement: node: Node -> bool
        abstract isForStatement: node: Node -> bool
        abstract isForInStatement: node: Node -> bool
        abstract isForOfStatement: node: Node -> bool
        abstract isContinueStatement: node: Node -> bool
        abstract isBreakStatement: node: Node -> bool
        abstract isReturnStatement: node: Node -> bool
        abstract isWithStatement: node: Node -> bool
        abstract isSwitchStatement: node: Node -> bool
        abstract isLabeledStatement: node: Node -> bool
        abstract isThrowStatement: node: Node -> bool
        abstract isTryStatement: node: Node -> bool
        abstract isDebuggerStatement: node: Node -> bool
        abstract isVariableDeclaration: node: Node -> bool
        abstract isVariableDeclarationList: node: Node -> bool
        abstract isFunctionDeclaration: node: Node -> bool
        abstract isClassDeclaration: node: Node -> bool
        abstract isInterfaceDeclaration: node: Node -> bool
        abstract isTypeAliasDeclaration: node: Node -> bool
        abstract isEnumDeclaration: node: Node -> bool
        abstract isModuleDeclaration: node: Node -> bool
        abstract isModuleBlock: node: Node -> bool
        abstract isCaseBlock: node: Node -> bool
        abstract isNamespaceExportDeclaration: node: Node -> bool
        abstract isImportEqualsDeclaration: node: Node -> bool
        abstract isImportDeclaration: node: Node -> bool
        abstract isImportClause: node: Node -> bool
        abstract isNamespaceImport: node: Node -> bool
        abstract isNamespaceExport: node: Node -> bool
        abstract isNamedImports: node: Node -> bool
        abstract isImportSpecifier: node: Node -> bool
        abstract isExportAssignment: node: Node -> bool
        abstract isExportDeclaration: node: Node -> bool
        abstract isNamedExports: node: Node -> bool
        abstract isExportSpecifier: node: Node -> bool
        abstract isMissingDeclaration: node: Node -> bool
        abstract isNotEmittedStatement: node: Node -> bool
        abstract isExternalModuleReference: node: Node -> bool
        abstract isJsxElement: node: Node -> bool
        abstract isJsxSelfClosingElement: node: Node -> bool
        abstract isJsxOpeningElement: node: Node -> bool
        abstract isJsxClosingElement: node: Node -> bool
        abstract isJsxFragment: node: Node -> bool
        abstract isJsxOpeningFragment: node: Node -> bool
        abstract isJsxClosingFragment: node: Node -> bool
        abstract isJsxAttribute: node: Node -> bool
        abstract isJsxAttributes: node: Node -> bool
        abstract isJsxSpreadAttribute: node: Node -> bool
        abstract isJsxExpression: node: Node -> bool
        abstract isCaseClause: node: Node -> bool
        abstract isDefaultClause: node: Node -> bool
        abstract isHeritageClause: node: Node -> bool
        abstract isCatchClause: node: Node -> bool
        abstract isPropertyAssignment: node: Node -> bool
        abstract isShorthandPropertyAssignment: node: Node -> bool
        abstract isSpreadAssignment: node: Node -> bool
        abstract isEnumMember: node: Node -> bool
        abstract isUnparsedPrepend: node: Node -> bool
        abstract isSourceFile: node: Node -> bool
        abstract isBundle: node: Node -> bool
        abstract isUnparsedSource: node: Node -> bool
        abstract isJSDocTypeExpression: node: Node -> bool
        abstract isJSDocNameReference: node: Node -> bool
        abstract isJSDocAllType: node: Node -> bool
        abstract isJSDocUnknownType: node: Node -> bool
        abstract isJSDocNullableType: node: Node -> bool
        abstract isJSDocNonNullableType: node: Node -> bool
        abstract isJSDocOptionalType: node: Node -> bool
        abstract isJSDocFunctionType: node: Node -> bool
        abstract isJSDocVariadicType: node: Node -> bool
        abstract isJSDocNamepathType: node: Node -> bool
        abstract isJSDoc: node: Node -> bool
        abstract isJSDocTypeLiteral: node: Node -> bool
        abstract isJSDocSignature: node: Node -> bool
        abstract isJSDocAugmentsTag: node: Node -> bool
        abstract isJSDocAuthorTag: node: Node -> bool
        abstract isJSDocClassTag: node: Node -> bool
        abstract isJSDocCallbackTag: node: Node -> bool
        abstract isJSDocPublicTag: node: Node -> bool
        abstract isJSDocPrivateTag: node: Node -> bool
        abstract isJSDocProtectedTag: node: Node -> bool
        abstract isJSDocReadonlyTag: node: Node -> bool
        abstract isJSDocDeprecatedTag: node: Node -> bool
        abstract isJSDocSeeTag: node: Node -> bool
        abstract isJSDocEnumTag: node: Node -> bool
        abstract isJSDocParameterTag: node: Node -> bool
        abstract isJSDocReturnTag: node: Node -> bool
        abstract isJSDocThisTag: node: Node -> bool
        abstract isJSDocTypeTag: node: Node -> bool
        abstract isJSDocTemplateTag: node: Node -> bool
        abstract isJSDocTypedefTag: node: Node -> bool
        abstract isJSDocUnknownTag: node: Node -> bool
        abstract isJSDocPropertyTag: node: Node -> bool
        abstract isJSDocImplementsTag: node: Node -> bool
        abstract setTextRange: range: 'T * location: TextRange option -> 'T
        /// <summary>Invokes a callback for each child of the given node. The 'cbNode' callback is invoked for all child nodes
        /// stored in properties. If a 'cbNodes' callback is specified, it is invoked for embedded arrays; otherwise,
        /// embedded arrays are flattened and the 'cbNode' callback is invoked for each element. If a callback returns
        /// a truthy value, iteration stops and that value is returned. Otherwise, undefined is returned.</summary>
        /// <param name="node">a given node to visit its children</param>
        /// <param name="cbNode">a callback to be invoked for all child nodes</param>
        /// <param name="cbNodes">a callback to be invoked for embedded array</param>
        abstract forEachChild: node: Node * cbNode: (Node -> 'T option) * ?cbNodes: (ResizeArray<Node> -> 'T option) -> 'T option
        abstract createSourceFile: fileName: string * sourceText: string * languageVersion: ScriptTarget * ?setParentNodes: bool * ?scriptKind: ScriptKind -> SourceFile
        abstract parseIsolatedEntityName: text: string * languageVersion: ScriptTarget -> EntityName option
        /// Parse json text into SyntaxTree and return node and parse errors if any
        abstract parseJsonText: fileName: string * sourceText: string -> JsonSourceFile
        abstract isExternalModule: file: SourceFile -> bool
        abstract updateSourceFile: sourceFile: SourceFile * newText: string * textChangeRange: TextChangeRange * ?aggressiveChecks: bool -> SourceFile
        abstract parseCommandLine: commandLine: ResizeArray<string> * ?readFile: (string -> string option) -> ParsedCommandLine
        /// Reads the config file, reports errors if any and exits if the config file cannot be found
        abstract getParsedCommandLineOfConfigFile: configFileName: string * optionsToExtend: CompilerOptions * host: ParseConfigFileHost * ?extendedConfigCache: Map<ExtendedConfigCacheEntry> * ?watchOptionsToExtend: WatchOptions * ?extraFileExtensions: ResizeArray<FileExtensionInfo> -> ParsedCommandLine option
        /// <summary>Read tsconfig.json file</summary>
        /// <param name="fileName">The path to the config file</param>
        abstract readConfigFile: fileName: string * readFile: (string -> string option) -> ReadConfigFileReturn
        /// <summary>Parse the text of the tsconfig.json file</summary>
        /// <param name="fileName">The path to the config file</param>
        /// <param name="jsonText">The text of the config file</param>
        abstract parseConfigFileTextToJson: fileName: string * jsonText: string -> ParseConfigFileTextToJsonReturn
        /// <summary>Read tsconfig.json file</summary>
        /// <param name="fileName">The path to the config file</param>
        abstract readJsonConfigFile: fileName: string * readFile: (string -> string option) -> TsConfigSourceFile
        /// Convert the json syntax tree into the json value
        abstract convertToObject: sourceFile: JsonSourceFile * errors: Push<Diagnostic> -> obj option
        /// <summary>Parse the contents of a config file (tsconfig.json).</summary>
        /// <param name="json">The contents of the config file to parse</param>
        /// <param name="host">Instance of ParseConfigHost used to enumerate files in folder.</param>
        /// <param name="basePath">A root directory to resolve relative path entries in the config
        /// file to. e.g. outDir</param>
        abstract parseJsonConfigFileContent: json: obj option * host: ParseConfigHost * basePath: string * ?existingOptions: CompilerOptions * ?configFileName: string * ?resolutionStack: ResizeArray<Path> * ?extraFileExtensions: ResizeArray<FileExtensionInfo> * ?extendedConfigCache: Map<ExtendedConfigCacheEntry> * ?existingWatchOptions: WatchOptions -> ParsedCommandLine
        /// <summary>Parse the contents of a config file (tsconfig.json).</summary>
        /// <param name="host">Instance of ParseConfigHost used to enumerate files in folder.</param>
        /// <param name="basePath">A root directory to resolve relative path entries in the config
        /// file to. e.g. outDir</param>
        abstract parseJsonSourceFileConfigFileContent: sourceFile: TsConfigSourceFile * host: ParseConfigHost * basePath: string * ?existingOptions: CompilerOptions * ?configFileName: string * ?resolutionStack: ResizeArray<Path> * ?extraFileExtensions: ResizeArray<FileExtensionInfo> * ?extendedConfigCache: Map<ExtendedConfigCacheEntry> * ?existingWatchOptions: WatchOptions -> ParsedCommandLine
        abstract convertCompilerOptionsFromJson: jsonOptions: obj option * basePath: string * ?configFileName: string -> ConvertCompilerOptionsFromJsonReturn
        abstract convertTypeAcquisitionFromJson: jsonOptions: obj option * basePath: string * ?configFileName: string -> ConvertTypeAcquisitionFromJsonReturn
        abstract getEffectiveTypeRoots: options: CompilerOptions * host: GetEffectiveTypeRootsHost -> ResizeArray<string> option
        /// <param name="containingFile">- file that contains type reference directive, can be undefined if containing file is unknown.
        /// This is possible in case if resolution is performed for directives specified via 'types' parameter. In this case initial path for secondary lookups
        /// is assumed to be the same as root directory of the project.</param>
        abstract resolveTypeReferenceDirective: typeReferenceDirectiveName: string * containingFile: string option * options: CompilerOptions * host: ModuleResolutionHost * ?redirectedReference: ResolvedProjectReference -> ResolvedTypeReferenceDirectiveWithFailedLookupLocations
        /// Given a set of options, returns the set of type directive names
        ///    that should be included for this program automatically.
        /// This list could either come from the config file,
        ///    or from enumerating the types root + initial secondary types lookup location.
        /// More type directives might appear in the program later as a result of loading actual source files;
        ///    this list is only the set of defaults that are implicitly included.
        abstract getAutomaticTypeDirectiveNames: options: CompilerOptions * host: ModuleResolutionHost -> ResizeArray<string>
        abstract createModuleResolutionCache: currentDirectory: string * getCanonicalFileName: (string -> string) * ?options: CompilerOptions -> ModuleResolutionCache
        abstract resolveModuleNameFromCache: moduleName: string * containingFile: string * cache: ModuleResolutionCache -> ResolvedModuleWithFailedLookupLocations option
        abstract resolveModuleName: moduleName: string * containingFile: string * compilerOptions: CompilerOptions * host: ModuleResolutionHost * ?cache: ModuleResolutionCache * ?redirectedReference: ResolvedProjectReference -> ResolvedModuleWithFailedLookupLocations
        abstract nodeModuleNameResolver: moduleName: string * containingFile: string * compilerOptions: CompilerOptions * host: ModuleResolutionHost * ?cache: ModuleResolutionCache * ?redirectedReference: ResolvedProjectReference -> ResolvedModuleWithFailedLookupLocations
        abstract classicNameResolver: moduleName: string * containingFile: string * compilerOptions: CompilerOptions * host: ModuleResolutionHost * ?cache: NonRelativeModuleNameResolutionCache * ?redirectedReference: ResolvedProjectReference -> ResolvedModuleWithFailedLookupLocations
        /// <summary>Visits a Node using the supplied visitor, possibly returning a new Node in its place.</summary>
        /// <param name="node">The Node to visit.</param>
        /// <param name="visitor">The callback used to visit the Node.</param>
        /// <param name="test">A callback to execute to verify the Node is valid.</param>
        /// <param name="lift">An optional callback to execute to lift a NodeArray into a valid Node.</param>
        abstract visitNode: node: 'T * visitor: Visitor option * ?test: (Node -> bool) * ?lift: (ResizeArray<Node> -> 'T) -> 'T
        /// <summary>Visits a Node using the supplied visitor, possibly returning a new Node in its place.</summary>
        /// <param name="node">The Node to visit.</param>
        /// <param name="visitor">The callback used to visit the Node.</param>
        /// <param name="test">A callback to execute to verify the Node is valid.</param>
        /// <param name="lift">An optional callback to execute to lift a NodeArray into a valid Node.</param>
        abstract visitNode: node: 'T option * visitor: Visitor option * ?test: (Node -> bool) * ?lift: (ResizeArray<Node> -> 'T) -> 'T option
        /// <summary>Visits a NodeArray using the supplied visitor, possibly returning a new NodeArray in its place.</summary>
        /// <param name="nodes">The NodeArray to visit.</param>
        /// <param name="visitor">The callback used to visit a Node.</param>
        /// <param name="test">A node test to execute for each node.</param>
        /// <param name="start">An optional value indicating the starting offset at which to start visiting.</param>
        /// <param name="count">An optional value indicating the maximum number of nodes to visit.</param>
        abstract visitNodes: nodes: ResizeArray<'T> * visitor: Visitor option * ?test: (Node -> bool) * ?start: float * ?count: float -> ResizeArray<'T>
        /// <summary>Visits a NodeArray using the supplied visitor, possibly returning a new NodeArray in its place.</summary>
        /// <param name="nodes">The NodeArray to visit.</param>
        /// <param name="visitor">The callback used to visit a Node.</param>
        /// <param name="test">A node test to execute for each node.</param>
        /// <param name="start">An optional value indicating the starting offset at which to start visiting.</param>
        /// <param name="count">An optional value indicating the maximum number of nodes to visit.</param>
        abstract visitNodes: nodes: ResizeArray<'T> option * visitor: Visitor option * ?test: (Node -> bool) * ?start: float * ?count: float -> ResizeArray<'T> option
        /// Starts a new lexical environment and visits a statement list, ending the lexical environment
        /// and merging hoisted declarations upon completion.
        abstract visitLexicalEnvironment: statements: ResizeArray<Statement> * visitor: Visitor * context: TransformationContext * ?start: float * ?ensureUseStrict: bool * ?nodesVisitor: NodesVisitor -> ResizeArray<Statement>
        /// Starts a new lexical environment and visits a parameter list, suspending the lexical
        /// environment upon completion.
        abstract visitParameterList: nodes: ResizeArray<ParameterDeclaration> * visitor: Visitor * context: TransformationContext * ?nodesVisitor: NodesVisitor -> ResizeArray<ParameterDeclaration>
        abstract visitParameterList: nodes: ResizeArray<ParameterDeclaration> option * visitor: Visitor * context: TransformationContext * ?nodesVisitor: NodesVisitor -> ResizeArray<ParameterDeclaration> option
        /// Resumes a suspended lexical environment and visits a function body, ending the lexical
        /// environment and merging hoisted declarations upon completion.
        abstract visitFunctionBody: node: FunctionBody * visitor: Visitor * context: TransformationContext -> FunctionBody
        /// Resumes a suspended lexical environment and visits a function body, ending the lexical
        /// environment and merging hoisted declarations upon completion.
        abstract visitFunctionBody: node: FunctionBody option * visitor: Visitor * context: TransformationContext -> FunctionBody option
        /// Resumes a suspended lexical environment and visits a concise body, ending the lexical
        /// environment and merging hoisted declarations upon completion.
        abstract visitFunctionBody: node: ConciseBody * visitor: Visitor * context: TransformationContext -> ConciseBody
        /// <summary>Visits each child of a Node using the supplied visitor, possibly returning a new Node of the same kind in its place.</summary>
        /// <param name="node">The Node whose children will be visited.</param>
        /// <param name="visitor">The callback used to visit each child.</param>
        /// <param name="context">A lexical environment context for the visitor.</param>
        abstract visitEachChild: node: 'T * visitor: Visitor * context: TransformationContext -> 'T
        /// <summary>Visits each child of a Node using the supplied visitor, possibly returning a new Node of the same kind in its place.</summary>
        /// <param name="node">The Node whose children will be visited.</param>
        /// <param name="visitor">The callback used to visit each child.</param>
        /// <param name="context">A lexical environment context for the visitor.</param>
        abstract visitEachChild: node: 'T option * visitor: Visitor * context: TransformationContext * ?nodesVisitor: obj * ?tokenVisitor: Visitor -> 'T option
        abstract getTsBuildInfoEmitOutputFilePath: options: CompilerOptions -> string option
        abstract getOutputFileNames: commandLine: ParsedCommandLine * inputFileName: string * ignoreCase: bool -> ResizeArray<string>
        abstract createPrinter: ?printerOptions: PrinterOptions * ?handlers: PrintHandlers -> Printer
        abstract findConfigFile: searchPath: string * fileExists: (string -> bool) * ?configName: string -> string option
        abstract resolveTripleslashReference: moduleName: string * containingFile: string -> string
        abstract createCompilerHost: options: CompilerOptions * ?setParentNodes: bool -> CompilerHost
        abstract getPreEmitDiagnostics: program: Program * ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract formatDiagnostics: diagnostics: ResizeArray<Diagnostic> * host: FormatDiagnosticsHost -> string
        abstract formatDiagnostic: diagnostic: Diagnostic * host: FormatDiagnosticsHost -> string
        abstract formatDiagnosticsWithColorAndContext: diagnostics: ResizeArray<Diagnostic> * host: FormatDiagnosticsHost -> string
        abstract flattenDiagnosticMessageText: diag: U2<string, DiagnosticMessageChain> option * newLine: string * ?indent: float -> string
        abstract getConfigFileParsingDiagnostics: configFileParseResult: ParsedCommandLine -> ResizeArray<Diagnostic>
        /// <summary>Create a new 'Program' instance. A Program is an immutable collection of 'SourceFile's and a 'CompilerOptions'
        /// that represent a compilation unit.
        /// 
        /// Creating a program proceeds from a set of root files, expanding the set of inputs by following imports and
        /// triple-slash-reference-path directives transitively. '@types' and triple-slash-reference-types are also pulled in.</summary>
        /// <param name="createProgramOptions">- The options for creating a program.</param>
        abstract createProgram: createProgramOptions: CreateProgramOptions -> Program
        /// <summary>Create a new 'Program' instance. A Program is an immutable collection of 'SourceFile's and a 'CompilerOptions'
        /// that represent a compilation unit.
        /// 
        /// Creating a program proceeds from a set of root files, expanding the set of inputs by following imports and
        /// triple-slash-reference-path directives transitively. '@types' and triple-slash-reference-types are also pulled in.</summary>
        /// <param name="rootNames">- A set of root files.</param>
        /// <param name="options">- The compiler options which should be used.</param>
        /// <param name="host">- The host interacts with the underlying file system.</param>
        /// <param name="oldProgram">- Reuses an old program structure.</param>
        /// <param name="configFileParsingDiagnostics">- error during config file parsing</param>
        abstract createProgram: rootNames: ResizeArray<string> * options: CompilerOptions * ?host: CompilerHost * ?oldProgram: Program * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> -> Program
        /// Returns the target config filename of a project reference.
        /// Note: The file might not exist.
        abstract resolveProjectReferencePath: ref: ProjectReference -> ResolvedConfigFileName
        abstract resolveProjectReferencePath: host: ResolveProjectReferencePathHost * ref: ProjectReference -> ResolvedConfigFileName
        /// Create the builder to manage semantic diagnostics and cache them
        abstract createSemanticDiagnosticsBuilderProgram: newProgram: Program * host: BuilderProgramHost * ?oldProgram: SemanticDiagnosticsBuilderProgram * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> -> SemanticDiagnosticsBuilderProgram
        abstract createSemanticDiagnosticsBuilderProgram: rootNames: ResizeArray<string> option * options: CompilerOptions option * ?host: CompilerHost * ?oldProgram: SemanticDiagnosticsBuilderProgram * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> * ?projectReferences: ResizeArray<ProjectReference> -> SemanticDiagnosticsBuilderProgram
        /// Create the builder that can handle the changes in program and iterate through changed files
        /// to emit the those files and manage semantic diagnostics cache as well
        abstract createEmitAndSemanticDiagnosticsBuilderProgram: newProgram: Program * host: BuilderProgramHost * ?oldProgram: EmitAndSemanticDiagnosticsBuilderProgram * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> -> EmitAndSemanticDiagnosticsBuilderProgram
        abstract createEmitAndSemanticDiagnosticsBuilderProgram: rootNames: ResizeArray<string> option * options: CompilerOptions option * ?host: CompilerHost * ?oldProgram: EmitAndSemanticDiagnosticsBuilderProgram * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> * ?projectReferences: ResizeArray<ProjectReference> -> EmitAndSemanticDiagnosticsBuilderProgram
        /// Creates a builder thats just abstraction over program and can be used with watch
        abstract createAbstractBuilder: newProgram: Program * host: BuilderProgramHost * ?oldProgram: BuilderProgram * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> -> BuilderProgram
        abstract createAbstractBuilder: rootNames: ResizeArray<string> option * options: CompilerOptions option * ?host: CompilerHost * ?oldProgram: BuilderProgram * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> * ?projectReferences: ResizeArray<ProjectReference> -> BuilderProgram
        abstract readBuilderProgram: compilerOptions: CompilerOptions * host: ReadBuildProgramHost -> EmitAndSemanticDiagnosticsBuilderProgram option
        abstract createIncrementalCompilerHost: options: CompilerOptions * ?system: System -> CompilerHost
        abstract createIncrementalProgram: p0: IncrementalProgramOptions<'T> -> 'T
        /// Create the watch compiler host for either configFile or fileNames and its options
        abstract createWatchCompilerHost: configFileName: string * optionsToExtend: CompilerOptions option * system: System * ?createProgram: CreateProgram<'T> * ?reportDiagnostic: DiagnosticReporter * ?reportWatchStatus: WatchStatusReporter * ?watchOptionsToExtend: WatchOptions * ?extraFileExtensions: ResizeArray<FileExtensionInfo> -> WatchCompilerHostOfConfigFile<'T>
        abstract createWatchCompilerHost: rootFiles: ResizeArray<string> * options: CompilerOptions * system: System * ?createProgram: CreateProgram<'T> * ?reportDiagnostic: DiagnosticReporter * ?reportWatchStatus: WatchStatusReporter * ?projectReferences: ResizeArray<ProjectReference> * ?watchOptions: WatchOptions -> WatchCompilerHostOfFilesAndCompilerOptions<'T>
        /// Creates the watch from the host for root files and compiler options
        abstract createWatchProgram: host: WatchCompilerHostOfFilesAndCompilerOptions<'T> -> WatchOfFilesAndCompilerOptions<'T>
        /// Creates the watch from the host for config file
        abstract createWatchProgram: host: WatchCompilerHostOfConfigFile<'T> -> WatchOfConfigFile<'T>
        /// Create a function that reports watch status by writing to the system and handles the formating of the diagnostic
        abstract createBuilderStatusReporter: system: System * ?pretty: bool -> DiagnosticReporter
        abstract createSolutionBuilderHost: ?system: System * ?createProgram: CreateProgram<'T> * ?reportDiagnostic: DiagnosticReporter * ?reportSolutionBuilderStatus: DiagnosticReporter * ?reportErrorSummary: ReportEmitErrorSummary -> SolutionBuilderHost<'T>
        abstract createSolutionBuilderWithWatchHost: ?system: System * ?createProgram: CreateProgram<'T> * ?reportDiagnostic: DiagnosticReporter * ?reportSolutionBuilderStatus: DiagnosticReporter * ?reportWatchStatus: WatchStatusReporter -> SolutionBuilderWithWatchHost<'T>
        abstract createSolutionBuilder: host: SolutionBuilderHost<'T> * rootNames: ResizeArray<string> * defaultOptions: BuildOptions -> SolutionBuilder<'T>
        abstract createSolutionBuilderWithWatch: host: SolutionBuilderWithWatchHost<'T> * rootNames: ResizeArray<string> * defaultOptions: BuildOptions * ?baseWatchOptions: WatchOptions -> SolutionBuilder<'T>
        abstract getDefaultFormatCodeSettings: ?newLineCharacter: string -> FormatCodeSettings
        /// The classifier is used for syntactic highlighting in editors via the TSServer
        abstract createClassifier: unit -> Classifier
        abstract createDocumentRegistry: ?useCaseSensitiveFileNames: bool * ?currentDirectory: string -> DocumentRegistry
        abstract preProcessFile: sourceText: string * ?readImportFiles: bool * ?detectJavaScriptImports: bool -> PreProcessedFileInfo
        abstract transpileModule: input: string * transpileOptions: TranspileOptions -> TranspileOutput
        abstract transpile: input: string * ?compilerOptions: CompilerOptions * ?fileName: string * ?diagnostics: ResizeArray<Diagnostic> * ?moduleName: string -> string
        abstract servicesVersion: obj
        abstract toEditorSettings: options: U2<EditorOptions, EditorSettings> -> EditorSettings
        abstract displayPartsToString: displayParts: ResizeArray<SymbolDisplayPart> option -> string
        abstract getDefaultCompilerOptions: unit -> CompilerOptions
        abstract getSupportedCodeFixes: unit -> ResizeArray<string>
        abstract createLanguageServiceSourceFile: fileName: string * scriptSnapshot: IScriptSnapshot * scriptTarget: ScriptTarget * version: string * setNodeParents: bool * ?scriptKind: ScriptKind -> SourceFile
        abstract updateLanguageServiceSourceFile: sourceFile: SourceFile * scriptSnapshot: IScriptSnapshot * version: string * textChangeRange: TextChangeRange option * ?aggressiveChecks: bool -> SourceFile
        abstract createLanguageService: host: LanguageServiceHost * ?documentRegistry: DocumentRegistry * ?syntaxOnlyOrLanguageServiceMode: U2<bool, LanguageServiceMode> -> LanguageService
        /// Get the path of the default library files (lib.d.ts) as distributed with the typescript
        /// node package.
        /// The functionality is not supported if the ts module is consumed outside of a node module.
        abstract getDefaultLibFilePath: options: CompilerOptions -> string
        /// <summary>Transform one or more nodes using the supplied transformers.</summary>
        /// <param name="source">A single `Node` or an array of `Node` objects.</param>
        /// <param name="transformers">An array of `TransformerFactory` callbacks used to process the transformation.</param>
        /// <param name="compilerOptions">Optional compiler options.</param>
        abstract transform: source: U2<'T, ResizeArray<'T>> * transformers: ResizeArray<TransformerFactory<'T>> * ?compilerOptions: CompilerOptions -> TransformationResult<'T>
        abstract createNodeArray: ResizeArray<'T> -> bool -> ResizeArray<'T>
        abstract createNumericLiteral: (U2<string, float> -> TokenFlags -> NumericLiteral)
        abstract createBigIntLiteral: (U2<string, PseudoBigInt> -> BigIntLiteral)
        abstract createStringLiteral: IExportsCreateStringLiteral
        abstract createStringLiteralFromNode: (PropertyNameLiteral -> bool -> StringLiteral)
        abstract createRegularExpressionLiteral: (string -> RegularExpressionLiteral)
        abstract createLoopVariable: (unit -> Identifier)
        abstract createUniqueName: (string -> GeneratedIdentifierFlags -> Identifier)
        abstract createPrivateIdentifier: (string -> PrivateIdentifier)
        abstract createSuper: (unit -> SuperExpression)
        abstract createThis: (unit -> ThisExpression)
        abstract createNull: (unit -> NullLiteral)
        abstract createTrue: (unit -> TrueLiteral)
        abstract createFalse: (unit -> FalseLiteral)
        abstract createModifier: 'T -> ModifierToken<'T>
        abstract createModifiersFromModifierFlags: (ModifierFlags -> ResizeArray<Modifier>)
        abstract createQualifiedName: (EntityName -> U2<string, Identifier> -> QualifiedName)
        abstract updateQualifiedName: (QualifiedName -> EntityName -> Identifier -> QualifiedName)
        abstract createComputedPropertyName: (Expression -> ComputedPropertyName)
        abstract updateComputedPropertyName: (ComputedPropertyName -> Expression -> ComputedPropertyName)
        abstract createTypeParameterDeclaration: (U2<string, Identifier> -> TypeNode -> TypeNode -> TypeParameterDeclaration)
        abstract updateTypeParameterDeclaration: (TypeParameterDeclaration -> Identifier -> TypeNode option -> TypeNode option -> TypeParameterDeclaration)
        abstract createParameter: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> DotDotDotToken option -> U2<string, BindingName> -> QuestionToken -> TypeNode -> Expression -> ParameterDeclaration)
        abstract updateParameter: (ParameterDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> DotDotDotToken option -> U2<string, BindingName> -> QuestionToken option -> TypeNode option -> Expression option -> ParameterDeclaration)
        abstract createDecorator: (Expression -> Decorator)
        abstract updateDecorator: (Decorator -> Expression -> Decorator)
        abstract createProperty: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, PropertyName> -> U2<QuestionToken, ExclamationToken> option -> TypeNode option -> Expression option -> PropertyDeclaration)
        abstract updateProperty: (PropertyDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, PropertyName> -> U2<QuestionToken, ExclamationToken> option -> TypeNode option -> Expression option -> PropertyDeclaration)
        abstract createMethod: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> AsteriskToken option -> U2<string, PropertyName> -> QuestionToken option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> Block option -> MethodDeclaration)
        abstract updateMethod: (MethodDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> AsteriskToken option -> PropertyName -> QuestionToken option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> Block option -> MethodDeclaration)
        abstract createConstructor: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ResizeArray<ParameterDeclaration> -> Block option -> ConstructorDeclaration)
        abstract updateConstructor: (ConstructorDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ResizeArray<ParameterDeclaration> -> Block option -> ConstructorDeclaration)
        abstract createGetAccessor: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, PropertyName> -> ResizeArray<ParameterDeclaration> -> TypeNode option -> Block option -> GetAccessorDeclaration)
        abstract updateGetAccessor: (GetAccessorDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> PropertyName -> ResizeArray<ParameterDeclaration> -> TypeNode option -> Block option -> GetAccessorDeclaration)
        abstract createSetAccessor: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, PropertyName> -> ResizeArray<ParameterDeclaration> -> Block option -> SetAccessorDeclaration)
        abstract updateSetAccessor: (SetAccessorDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> PropertyName -> ResizeArray<ParameterDeclaration> -> Block option -> SetAccessorDeclaration)
        abstract createCallSignature: (ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> CallSignatureDeclaration)
        abstract updateCallSignature: (CallSignatureDeclaration -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> CallSignatureDeclaration)
        abstract createConstructSignature: (ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> ConstructSignatureDeclaration)
        abstract updateConstructSignature: (ConstructSignatureDeclaration -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> ConstructSignatureDeclaration)
        abstract updateIndexSignature: (IndexSignatureDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ResizeArray<ParameterDeclaration> -> TypeNode -> IndexSignatureDeclaration)
        abstract createKeywordTypeNode: 'TKind -> KeywordTypeNode<'TKind>
        abstract createTypePredicateNodeWithModifier: (AssertsKeyword option -> U3<string, Identifier, ThisTypeNode> -> TypeNode option -> TypePredicateNode)
        abstract updateTypePredicateNodeWithModifier: (TypePredicateNode -> AssertsKeyword option -> U2<Identifier, ThisTypeNode> -> TypeNode option -> TypePredicateNode)
        abstract createTypeReferenceNode: (U2<string, EntityName> -> ResizeArray<TypeNode> -> TypeReferenceNode)
        abstract updateTypeReferenceNode: (TypeReferenceNode -> EntityName -> ResizeArray<TypeNode> option -> TypeReferenceNode)
        abstract createFunctionTypeNode: (ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode -> FunctionTypeNode)
        abstract updateFunctionTypeNode: (FunctionTypeNode -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode -> FunctionTypeNode)
        abstract createConstructorTypeNode: (ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode -> ConstructorTypeNode)
        abstract updateConstructorTypeNode: (ConstructorTypeNode -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode -> ConstructorTypeNode)
        abstract createTypeQueryNode: (EntityName -> TypeQueryNode)
        abstract updateTypeQueryNode: (TypeQueryNode -> EntityName -> TypeQueryNode)
        abstract createTypeLiteralNode: (ResizeArray<TypeElement> option -> TypeLiteralNode)
        abstract updateTypeLiteralNode: (TypeLiteralNode -> ResizeArray<TypeElement> -> TypeLiteralNode)
        abstract createArrayTypeNode: (TypeNode -> ArrayTypeNode)
        abstract updateArrayTypeNode: (ArrayTypeNode -> TypeNode -> ArrayTypeNode)
        abstract createTupleTypeNode: (ResizeArray<U2<TypeNode, NamedTupleMember>> -> TupleTypeNode)
        abstract updateTupleTypeNode: (TupleTypeNode -> ResizeArray<U2<TypeNode, NamedTupleMember>> -> TupleTypeNode)
        abstract createOptionalTypeNode: (TypeNode -> OptionalTypeNode)
        abstract updateOptionalTypeNode: (OptionalTypeNode -> TypeNode -> OptionalTypeNode)
        abstract createRestTypeNode: (TypeNode -> RestTypeNode)
        abstract updateRestTypeNode: (RestTypeNode -> TypeNode -> RestTypeNode)
        abstract createUnionTypeNode: (ResizeArray<TypeNode> -> UnionTypeNode)
        abstract updateUnionTypeNode: (UnionTypeNode -> ResizeArray<TypeNode> -> UnionTypeNode)
        abstract createIntersectionTypeNode: (ResizeArray<TypeNode> -> IntersectionTypeNode)
        abstract updateIntersectionTypeNode: (IntersectionTypeNode -> ResizeArray<TypeNode> -> IntersectionTypeNode)
        abstract createConditionalTypeNode: (TypeNode -> TypeNode -> TypeNode -> TypeNode -> ConditionalTypeNode)
        abstract updateConditionalTypeNode: (ConditionalTypeNode -> TypeNode -> TypeNode -> TypeNode -> TypeNode -> ConditionalTypeNode)
        abstract createInferTypeNode: (TypeParameterDeclaration -> InferTypeNode)
        abstract updateInferTypeNode: (InferTypeNode -> TypeParameterDeclaration -> InferTypeNode)
        abstract createImportTypeNode: (TypeNode -> EntityName -> ResizeArray<TypeNode> -> bool -> ImportTypeNode)
        abstract updateImportTypeNode: (ImportTypeNode -> TypeNode -> EntityName option -> ResizeArray<TypeNode> option -> bool -> ImportTypeNode)
        abstract createParenthesizedType: (TypeNode -> ParenthesizedTypeNode)
        abstract updateParenthesizedType: (ParenthesizedTypeNode -> TypeNode -> ParenthesizedTypeNode)
        abstract createThisTypeNode: (unit -> ThisTypeNode)
        abstract updateTypeOperatorNode: (TypeOperatorNode -> TypeNode -> TypeOperatorNode)
        abstract createIndexedAccessTypeNode: (TypeNode -> TypeNode -> IndexedAccessTypeNode)
        abstract updateIndexedAccessTypeNode: (IndexedAccessTypeNode -> TypeNode -> TypeNode -> IndexedAccessTypeNode)
        abstract createMappedTypeNode: (U3<ReadonlyKeyword, PlusToken, MinusToken> option -> TypeParameterDeclaration -> TypeNode option -> U3<QuestionToken, PlusToken, MinusToken> option -> TypeNode option -> MappedTypeNode)
        abstract updateMappedTypeNode: (MappedTypeNode -> U3<ReadonlyKeyword, PlusToken, MinusToken> option -> TypeParameterDeclaration -> TypeNode option -> U3<QuestionToken, PlusToken, MinusToken> option -> TypeNode option -> MappedTypeNode)
        abstract createLiteralTypeNode: (U4<LiteralExpression, BooleanLiteral, PrefixUnaryExpression, NullLiteral> -> LiteralTypeNode)
        abstract updateLiteralTypeNode: (LiteralTypeNode -> U4<LiteralExpression, BooleanLiteral, PrefixUnaryExpression, NullLiteral> -> LiteralTypeNode)
        abstract createObjectBindingPattern: (ResizeArray<BindingElement> -> ObjectBindingPattern)
        abstract updateObjectBindingPattern: (ObjectBindingPattern -> ResizeArray<BindingElement> -> ObjectBindingPattern)
        abstract createArrayBindingPattern: (ResizeArray<ArrayBindingElement> -> ArrayBindingPattern)
        abstract updateArrayBindingPattern: (ArrayBindingPattern -> ResizeArray<ArrayBindingElement> -> ArrayBindingPattern)
        abstract createBindingElement: (DotDotDotToken option -> U2<string, PropertyName> option -> U2<string, BindingName> -> Expression -> BindingElement)
        abstract updateBindingElement: (BindingElement -> DotDotDotToken option -> PropertyName option -> BindingName -> Expression option -> BindingElement)
        abstract createArrayLiteral: (ResizeArray<Expression> -> bool -> ArrayLiteralExpression)
        abstract updateArrayLiteral: (ArrayLiteralExpression -> ResizeArray<Expression> -> ArrayLiteralExpression)
        abstract createObjectLiteral: (ResizeArray<ObjectLiteralElementLike> -> bool -> ObjectLiteralExpression)
        abstract updateObjectLiteral: (ObjectLiteralExpression -> ResizeArray<ObjectLiteralElementLike> -> ObjectLiteralExpression)
        abstract createPropertyAccess: (Expression -> U3<string, Identifier, PrivateIdentifier> -> PropertyAccessExpression)
        abstract updatePropertyAccess: (PropertyAccessExpression -> Expression -> U2<Identifier, PrivateIdentifier> -> PropertyAccessExpression)
        abstract createPropertyAccessChain: (Expression -> QuestionDotToken option -> U3<string, Identifier, PrivateIdentifier> -> PropertyAccessChain)
        abstract updatePropertyAccessChain: (PropertyAccessChain -> Expression -> QuestionDotToken option -> U2<Identifier, PrivateIdentifier> -> PropertyAccessChain)
        abstract createElementAccess: (Expression -> U2<float, Expression> -> ElementAccessExpression)
        abstract updateElementAccess: (ElementAccessExpression -> Expression -> Expression -> ElementAccessExpression)
        abstract createElementAccessChain: (Expression -> QuestionDotToken option -> U2<float, Expression> -> ElementAccessChain)
        abstract updateElementAccessChain: (ElementAccessChain -> Expression -> QuestionDotToken option -> Expression -> ElementAccessChain)
        abstract createCall: (Expression -> ResizeArray<TypeNode> option -> ResizeArray<Expression> option -> CallExpression)
        abstract updateCall: (CallExpression -> Expression -> ResizeArray<TypeNode> option -> ResizeArray<Expression> -> CallExpression)
        abstract createCallChain: (Expression -> QuestionDotToken option -> ResizeArray<TypeNode> option -> ResizeArray<Expression> option -> CallChain)
        abstract updateCallChain: (CallChain -> Expression -> QuestionDotToken option -> ResizeArray<TypeNode> option -> ResizeArray<Expression> -> CallChain)
        abstract createNew: (Expression -> ResizeArray<TypeNode> option -> ResizeArray<Expression> option -> NewExpression)
        abstract updateNew: (NewExpression -> Expression -> ResizeArray<TypeNode> option -> ResizeArray<Expression> option -> NewExpression)
        abstract createTypeAssertion: (TypeNode -> Expression -> TypeAssertion)
        abstract updateTypeAssertion: (TypeAssertion -> TypeNode -> Expression -> TypeAssertion)
        abstract createParen: (Expression -> ParenthesizedExpression)
        abstract updateParen: (ParenthesizedExpression -> Expression -> ParenthesizedExpression)
        abstract createFunctionExpression: (ResizeArray<Modifier> option -> AsteriskToken option -> U2<string, Identifier> option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> option -> TypeNode option -> Block -> FunctionExpression)
        abstract updateFunctionExpression: (FunctionExpression -> ResizeArray<Modifier> option -> AsteriskToken option -> Identifier option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> Block -> FunctionExpression)
        abstract createDelete: (Expression -> DeleteExpression)
        abstract updateDelete: (DeleteExpression -> Expression -> DeleteExpression)
        abstract createTypeOf: (Expression -> TypeOfExpression)
        abstract updateTypeOf: (TypeOfExpression -> Expression -> TypeOfExpression)
        abstract createVoid: (Expression -> VoidExpression)
        abstract updateVoid: (VoidExpression -> Expression -> VoidExpression)
        abstract createAwait: (Expression -> AwaitExpression)
        abstract updateAwait: (AwaitExpression -> Expression -> AwaitExpression)
        abstract createPrefix: (PrefixUnaryOperator -> Expression -> PrefixUnaryExpression)
        abstract updatePrefix: (PrefixUnaryExpression -> Expression -> PrefixUnaryExpression)
        abstract createPostfix: (Expression -> PostfixUnaryOperator -> PostfixUnaryExpression)
        abstract updatePostfix: (PostfixUnaryExpression -> Expression -> PostfixUnaryExpression)
        abstract createBinary: (Expression -> U2<BinaryOperator, BinaryOperatorToken> -> Expression -> BinaryExpression)
        abstract updateConditional: (ConditionalExpression -> Expression -> QuestionToken -> Expression -> ColonToken -> Expression -> ConditionalExpression)
        abstract createTemplateExpression: (TemplateHead -> ResizeArray<TemplateSpan> -> TemplateExpression)
        abstract updateTemplateExpression: (TemplateExpression -> TemplateHead -> ResizeArray<TemplateSpan> -> TemplateExpression)
        abstract createTemplateHead: IExportsCreateTemplateHead
        abstract createTemplateMiddle: IExportsCreateTemplateMiddle
        abstract createTemplateTail: IExportsCreateTemplateTail
        abstract createNoSubstitutionTemplateLiteral: IExportsCreateNoSubstitutionTemplateLiteral
        abstract updateYield: (YieldExpression -> AsteriskToken option -> Expression option -> YieldExpression)
        abstract createSpread: (Expression -> SpreadElement)
        abstract updateSpread: (SpreadElement -> Expression -> SpreadElement)
        abstract createOmittedExpression: (unit -> OmittedExpression)
        abstract createAsExpression: (Expression -> TypeNode -> AsExpression)
        abstract updateAsExpression: (AsExpression -> Expression -> TypeNode -> AsExpression)
        abstract createNonNullExpression: (Expression -> NonNullExpression)
        abstract updateNonNullExpression: (NonNullExpression -> Expression -> NonNullExpression)
        abstract createNonNullChain: (Expression -> NonNullChain)
        abstract updateNonNullChain: (NonNullChain -> Expression -> NonNullChain)
        abstract createMetaProperty: (SyntaxKind -> Identifier -> MetaProperty)
        abstract updateMetaProperty: (MetaProperty -> Identifier -> MetaProperty)
        abstract createTemplateSpan: (Expression -> U2<TemplateMiddle, TemplateTail> -> TemplateSpan)
        abstract updateTemplateSpan: (TemplateSpan -> Expression -> U2<TemplateMiddle, TemplateTail> -> TemplateSpan)
        abstract createSemicolonClassElement: (unit -> SemicolonClassElement)
        abstract createBlock: (ResizeArray<Statement> -> bool -> Block)
        abstract updateBlock: (Block -> ResizeArray<Statement> -> Block)
        abstract createVariableStatement: (ResizeArray<Modifier> option -> U2<VariableDeclarationList, ResizeArray<VariableDeclaration>> -> VariableStatement)
        abstract updateVariableStatement: (VariableStatement -> ResizeArray<Modifier> option -> VariableDeclarationList -> VariableStatement)
        abstract createEmptyStatement: (unit -> EmptyStatement)
        abstract createExpressionStatement: (Expression -> ExpressionStatement)
        abstract updateExpressionStatement: (ExpressionStatement -> Expression -> ExpressionStatement)
        abstract createStatement: (Expression -> ExpressionStatement)
        abstract updateStatement: (ExpressionStatement -> Expression -> ExpressionStatement)
        abstract createIf: (Expression -> Statement -> Statement -> IfStatement)
        abstract updateIf: (IfStatement -> Expression -> Statement -> Statement option -> IfStatement)
        abstract createDo: (Statement -> Expression -> DoStatement)
        abstract updateDo: (DoStatement -> Statement -> Expression -> DoStatement)
        abstract createWhile: (Expression -> Statement -> WhileStatement)
        abstract updateWhile: (WhileStatement -> Expression -> Statement -> WhileStatement)
        abstract createFor: (ForInitializer option -> Expression option -> Expression option -> Statement -> ForStatement)
        abstract updateFor: (ForStatement -> ForInitializer option -> Expression option -> Expression option -> Statement -> ForStatement)
        abstract createForIn: (ForInitializer -> Expression -> Statement -> ForInStatement)
        abstract updateForIn: (ForInStatement -> ForInitializer -> Expression -> Statement -> ForInStatement)
        abstract createForOf: (AwaitKeyword option -> ForInitializer -> Expression -> Statement -> ForOfStatement)
        abstract updateForOf: (ForOfStatement -> AwaitKeyword option -> ForInitializer -> Expression -> Statement -> ForOfStatement)
        abstract createContinue: (U2<string, Identifier> -> ContinueStatement)
        abstract updateContinue: (ContinueStatement -> Identifier option -> ContinueStatement)
        abstract createBreak: (U2<string, Identifier> -> BreakStatement)
        abstract updateBreak: (BreakStatement -> Identifier option -> BreakStatement)
        abstract createReturn: (Expression -> ReturnStatement)
        abstract updateReturn: (ReturnStatement -> Expression option -> ReturnStatement)
        abstract createWith: (Expression -> Statement -> WithStatement)
        abstract updateWith: (WithStatement -> Expression -> Statement -> WithStatement)
        abstract createSwitch: (Expression -> CaseBlock -> SwitchStatement)
        abstract updateSwitch: (SwitchStatement -> Expression -> CaseBlock -> SwitchStatement)
        abstract createLabel: (U2<string, Identifier> -> Statement -> LabeledStatement)
        abstract updateLabel: (LabeledStatement -> Identifier -> Statement -> LabeledStatement)
        abstract createThrow: (Expression -> ThrowStatement)
        abstract updateThrow: (ThrowStatement -> Expression -> ThrowStatement)
        abstract createTry: (Block -> CatchClause option -> Block option -> TryStatement)
        abstract updateTry: (TryStatement -> Block -> CatchClause option -> Block option -> TryStatement)
        abstract createDebuggerStatement: (unit -> DebuggerStatement)
        abstract createVariableDeclarationList: (ResizeArray<VariableDeclaration> -> NodeFlags -> VariableDeclarationList)
        abstract updateVariableDeclarationList: (VariableDeclarationList -> ResizeArray<VariableDeclaration> -> VariableDeclarationList)
        abstract createFunctionDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> AsteriskToken option -> U2<string, Identifier> option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> Block option -> FunctionDeclaration)
        abstract updateFunctionDeclaration: (FunctionDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> AsteriskToken option -> Identifier option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> Block option -> FunctionDeclaration)
        abstract createClassDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, Identifier> option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<HeritageClause> option -> ResizeArray<ClassElement> -> ClassDeclaration)
        abstract updateClassDeclaration: (ClassDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> Identifier option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<HeritageClause> option -> ResizeArray<ClassElement> -> ClassDeclaration)
        abstract createInterfaceDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, Identifier> -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<HeritageClause> option -> ResizeArray<TypeElement> -> InterfaceDeclaration)
        abstract updateInterfaceDeclaration: (InterfaceDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> Identifier -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<HeritageClause> option -> ResizeArray<TypeElement> -> InterfaceDeclaration)
        abstract createTypeAliasDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, Identifier> -> ResizeArray<TypeParameterDeclaration> option -> TypeNode -> TypeAliasDeclaration)
        abstract updateTypeAliasDeclaration: (TypeAliasDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> Identifier -> ResizeArray<TypeParameterDeclaration> option -> TypeNode -> TypeAliasDeclaration)
        abstract createEnumDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> U2<string, Identifier> -> ResizeArray<EnumMember> -> EnumDeclaration)
        abstract updateEnumDeclaration: (EnumDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> Identifier -> ResizeArray<EnumMember> -> EnumDeclaration)
        abstract createModuleDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ModuleName -> ModuleBody option -> NodeFlags -> ModuleDeclaration)
        abstract updateModuleDeclaration: (ModuleDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ModuleName -> ModuleBody option -> ModuleDeclaration)
        abstract createModuleBlock: (ResizeArray<Statement> -> ModuleBlock)
        abstract updateModuleBlock: (ModuleBlock -> ResizeArray<Statement> -> ModuleBlock)
        abstract createCaseBlock: (ResizeArray<CaseOrDefaultClause> -> CaseBlock)
        abstract updateCaseBlock: (CaseBlock -> ResizeArray<CaseOrDefaultClause> -> CaseBlock)
        abstract createNamespaceExportDeclaration: (U2<string, Identifier> -> NamespaceExportDeclaration)
        abstract updateNamespaceExportDeclaration: (NamespaceExportDeclaration -> Identifier -> NamespaceExportDeclaration)
        abstract createImportEqualsDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> bool -> U2<string, Identifier> -> ModuleReference -> ImportEqualsDeclaration)
        abstract updateImportEqualsDeclaration: (ImportEqualsDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> bool -> Identifier -> ModuleReference -> ImportEqualsDeclaration)
        abstract createImportDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ImportClause option -> Expression -> ImportDeclaration)
        abstract updateImportDeclaration: (ImportDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ImportClause option -> Expression -> ImportDeclaration)
        abstract createNamespaceImport: (Identifier -> NamespaceImport)
        abstract updateNamespaceImport: (NamespaceImport -> Identifier -> NamespaceImport)
        abstract createNamedImports: (ResizeArray<ImportSpecifier> -> NamedImports)
        abstract updateNamedImports: (NamedImports -> ResizeArray<ImportSpecifier> -> NamedImports)
        abstract createImportSpecifier: (Identifier option -> Identifier -> ImportSpecifier)
        abstract updateImportSpecifier: (ImportSpecifier -> Identifier option -> Identifier -> ImportSpecifier)
        abstract createExportAssignment: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> bool option -> Expression -> ExportAssignment)
        abstract updateExportAssignment: (ExportAssignment -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> Expression -> ExportAssignment)
        abstract createNamedExports: (ResizeArray<ExportSpecifier> -> NamedExports)
        abstract updateNamedExports: (NamedExports -> ResizeArray<ExportSpecifier> -> NamedExports)
        abstract createExportSpecifier: (U2<string, Identifier> option -> U2<string, Identifier> -> ExportSpecifier)
        abstract updateExportSpecifier: (ExportSpecifier -> Identifier option -> Identifier -> ExportSpecifier)
        abstract createExternalModuleReference: (Expression -> ExternalModuleReference)
        abstract updateExternalModuleReference: (ExternalModuleReference -> Expression -> ExternalModuleReference)
        abstract createJSDocTypeExpression: (TypeNode -> JSDocTypeExpression)
        abstract createJSDocTypeTag: (Identifier option -> JSDocTypeExpression -> string -> JSDocTypeTag)
        abstract createJSDocReturnTag: (Identifier option -> JSDocTypeExpression -> string -> JSDocReturnTag)
        abstract createJSDocThisTag: (Identifier option -> JSDocTypeExpression -> string -> JSDocThisTag)
        abstract createJSDocComment: (string -> ResizeArray<JSDocTag> -> JSDoc)
        abstract createJSDocParameterTag: (Identifier option -> EntityName -> bool -> JSDocTypeExpression -> bool -> string -> JSDocParameterTag)
        abstract createJSDocClassTag: (Identifier option -> string -> JSDocClassTag)
        abstract createJSDocAugmentsTag: (Identifier option -> obj -> string -> JSDocAugmentsTag)
        abstract createJSDocEnumTag: (Identifier option -> JSDocTypeExpression -> string -> JSDocEnumTag)
        abstract createJSDocTemplateTag: (Identifier option -> JSDocTypeExpression option -> ResizeArray<TypeParameterDeclaration> -> string -> JSDocTemplateTag)
        abstract createJSDocTypedefTag: (Identifier option -> U2<JSDocTypeLiteral, JSDocTypeExpression> -> U2<Identifier, JSDocNamespaceDeclaration> -> string -> JSDocTypedefTag)
        abstract createJSDocCallbackTag: (Identifier option -> JSDocSignature -> U2<Identifier, JSDocNamespaceDeclaration> -> string -> JSDocCallbackTag)
        abstract createJSDocSignature: (ResizeArray<JSDocTemplateTag> option -> ResizeArray<JSDocParameterTag> -> JSDocReturnTag -> JSDocSignature)
        abstract createJSDocPropertyTag: (Identifier option -> EntityName -> bool -> JSDocTypeExpression -> bool -> string -> JSDocPropertyTag)
        abstract createJSDocTypeLiteral: (ResizeArray<JSDocPropertyLikeTag> -> bool -> JSDocTypeLiteral)
        abstract createJSDocImplementsTag: (Identifier option -> obj -> string -> JSDocImplementsTag)
        abstract createJSDocAuthorTag: (Identifier option -> string -> JSDocAuthorTag)
        abstract createJSDocPublicTag: (Identifier option -> string -> JSDocPublicTag)
        abstract createJSDocPrivateTag: (Identifier option -> string -> JSDocPrivateTag)
        abstract createJSDocProtectedTag: (Identifier option -> string -> JSDocProtectedTag)
        abstract createJSDocReadonlyTag: (Identifier option -> string -> JSDocReadonlyTag)
        abstract createJSDocTag: (Identifier -> string -> JSDocUnknownTag)
        abstract createJsxElement: (JsxOpeningElement -> ResizeArray<JsxChild> -> JsxClosingElement -> JsxElement)
        abstract updateJsxElement: (JsxElement -> JsxOpeningElement -> ResizeArray<JsxChild> -> JsxClosingElement -> JsxElement)
        abstract createJsxSelfClosingElement: (JsxTagNameExpression -> ResizeArray<TypeNode> option -> JsxAttributes -> JsxSelfClosingElement)
        abstract updateJsxSelfClosingElement: (JsxSelfClosingElement -> JsxTagNameExpression -> ResizeArray<TypeNode> option -> JsxAttributes -> JsxSelfClosingElement)
        abstract createJsxOpeningElement: (JsxTagNameExpression -> ResizeArray<TypeNode> option -> JsxAttributes -> JsxOpeningElement)
        abstract updateJsxOpeningElement: (JsxOpeningElement -> JsxTagNameExpression -> ResizeArray<TypeNode> option -> JsxAttributes -> JsxOpeningElement)
        abstract createJsxClosingElement: (JsxTagNameExpression -> JsxClosingElement)
        abstract updateJsxClosingElement: (JsxClosingElement -> JsxTagNameExpression -> JsxClosingElement)
        abstract createJsxFragment: (JsxOpeningFragment -> ResizeArray<JsxChild> -> JsxClosingFragment -> JsxFragment)
        abstract createJsxText: (string -> bool -> JsxText)
        abstract updateJsxText: (JsxText -> string -> bool -> JsxText)
        abstract createJsxOpeningFragment: (unit -> JsxOpeningFragment)
        abstract createJsxJsxClosingFragment: (unit -> JsxClosingFragment)
        abstract updateJsxFragment: (JsxFragment -> JsxOpeningFragment -> ResizeArray<JsxChild> -> JsxClosingFragment -> JsxFragment)
        abstract createJsxAttribute: (Identifier -> U2<StringLiteral, JsxExpression> option -> JsxAttribute)
        abstract updateJsxAttribute: (JsxAttribute -> Identifier -> U2<StringLiteral, JsxExpression> option -> JsxAttribute)
        abstract createJsxAttributes: (ResizeArray<JsxAttributeLike> -> JsxAttributes)
        abstract updateJsxAttributes: (JsxAttributes -> ResizeArray<JsxAttributeLike> -> JsxAttributes)
        abstract createJsxSpreadAttribute: (Expression -> JsxSpreadAttribute)
        abstract updateJsxSpreadAttribute: (JsxSpreadAttribute -> Expression -> JsxSpreadAttribute)
        abstract createJsxExpression: (DotDotDotToken option -> Expression option -> JsxExpression)
        abstract updateJsxExpression: (JsxExpression -> Expression option -> JsxExpression)
        abstract createCaseClause: (Expression -> ResizeArray<Statement> -> CaseClause)
        abstract updateCaseClause: (CaseClause -> Expression -> ResizeArray<Statement> -> CaseClause)
        abstract createDefaultClause: (ResizeArray<Statement> -> DefaultClause)
        abstract updateDefaultClause: (DefaultClause -> ResizeArray<Statement> -> DefaultClause)
        abstract createHeritageClause: (SyntaxKind -> ResizeArray<ExpressionWithTypeArguments> -> HeritageClause)
        abstract updateHeritageClause: (HeritageClause -> ResizeArray<ExpressionWithTypeArguments> -> HeritageClause)
        abstract createCatchClause: (U2<string, VariableDeclaration> option -> Block -> CatchClause)
        abstract updateCatchClause: (CatchClause -> VariableDeclaration option -> Block -> CatchClause)
        abstract createPropertyAssignment: (U2<string, PropertyName> -> Expression -> PropertyAssignment)
        abstract updatePropertyAssignment: (PropertyAssignment -> PropertyName -> Expression -> PropertyAssignment)
        abstract createShorthandPropertyAssignment: (U2<string, Identifier> -> Expression -> ShorthandPropertyAssignment)
        abstract updateShorthandPropertyAssignment: (ShorthandPropertyAssignment -> Identifier -> Expression option -> ShorthandPropertyAssignment)
        abstract createSpreadAssignment: (Expression -> SpreadAssignment)
        abstract updateSpreadAssignment: (SpreadAssignment -> Expression -> SpreadAssignment)
        abstract createEnumMember: (U2<string, PropertyName> -> Expression -> EnumMember)
        abstract updateEnumMember: (EnumMember -> PropertyName -> Expression option -> EnumMember)
        abstract updateSourceFileNode: (SourceFile -> ResizeArray<Statement> -> bool -> ResizeArray<FileReference> -> ResizeArray<FileReference> -> bool -> ResizeArray<FileReference> -> SourceFile)
        abstract createNotEmittedStatement: (Node -> NotEmittedStatement)
        abstract createPartiallyEmittedExpression: (Expression -> Node -> PartiallyEmittedExpression)
        abstract updatePartiallyEmittedExpression: (PartiallyEmittedExpression -> Expression -> PartiallyEmittedExpression)
        abstract createCommaList: (ResizeArray<Expression> -> CommaListExpression)
        abstract updateCommaList: (CommaListExpression -> ResizeArray<Expression> -> CommaListExpression)
        abstract createBundle: (ResizeArray<SourceFile> -> ResizeArray<U2<UnparsedSource, InputFiles>> -> Bundle)
        abstract updateBundle: (Bundle -> ResizeArray<SourceFile> -> ResizeArray<U2<UnparsedSource, InputFiles>> -> Bundle)
        abstract createImmediatelyInvokedFunctionExpression: IExportsCreateImmediatelyInvokedFunctionExpression
        abstract createImmediatelyInvokedArrowFunction: IExportsCreateImmediatelyInvokedFunctionExpression
        abstract createVoidZero: (unit -> VoidExpression)
        abstract createExportDefault: (Expression -> ExportAssignment)
        abstract createExternalModuleExport: (Identifier -> ExportDeclaration)
        abstract createNamespaceExport: (Identifier -> NamespaceExport)
        abstract updateNamespaceExport: (NamespaceExport -> Identifier -> NamespaceExport)
        abstract createToken: 'TKind -> Token<'TKind>
        abstract createIdentifier: (string -> Identifier)
        abstract createTempVariable: ((Identifier -> unit) option -> Identifier)
        abstract getGeneratedNameForNode: (Node option -> Identifier)
        abstract createOptimisticUniqueName: (string -> Identifier)
        abstract createFileLevelUniqueName: (string -> Identifier)
        abstract createIndexSignature: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> ResizeArray<ParameterDeclaration> -> TypeNode -> IndexSignatureDeclaration)
        abstract createTypePredicateNode: (U3<Identifier, ThisTypeNode, string> -> TypeNode -> TypePredicateNode)
        abstract updateTypePredicateNode: (TypePredicateNode -> U2<Identifier, ThisTypeNode> -> TypeNode -> TypePredicateNode)
        abstract createLiteral: IExportsCreateLiteral
        abstract createMethodSignature: (ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> U2<string, PropertyName> -> QuestionToken option -> MethodSignature)
        abstract updateMethodSignature: (MethodSignature -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<ParameterDeclaration> -> TypeNode option -> PropertyName -> QuestionToken option -> MethodSignature)
        abstract createTypeOperatorNode: IExportsCreateTypeOperatorNode
        abstract createTaggedTemplate: IExportsCreateTaggedTemplate
        abstract updateTaggedTemplate: IExportsUpdateTaggedTemplate
        abstract updateBinary: (BinaryExpression -> Expression -> Expression -> U2<BinaryOperator, BinaryOperatorToken> -> BinaryExpression)
        abstract createConditional: IExportsCreateConditional
        abstract createYield: IExportsCreateYield
        abstract createClassExpression: (ResizeArray<Modifier> option -> U2<string, Identifier> option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<HeritageClause> option -> ResizeArray<ClassElement> -> ClassExpression)
        abstract updateClassExpression: (ClassExpression -> ResizeArray<Modifier> option -> Identifier option -> ResizeArray<TypeParameterDeclaration> option -> ResizeArray<HeritageClause> option -> ResizeArray<ClassElement> -> ClassExpression)
        abstract createPropertySignature: (ResizeArray<Modifier> option -> U2<PropertyName, string> -> QuestionToken option -> TypeNode option -> Expression -> PropertySignature)
        abstract updatePropertySignature: (PropertySignature -> ResizeArray<Modifier> option -> PropertyName -> QuestionToken option -> TypeNode option -> Expression option -> PropertySignature)
        abstract createExpressionWithTypeArguments: (ResizeArray<TypeNode> option -> Expression -> ExpressionWithTypeArguments)
        abstract updateExpressionWithTypeArguments: (ExpressionWithTypeArguments -> ResizeArray<TypeNode> option -> Expression -> ExpressionWithTypeArguments)
        abstract createArrowFunction: IExportsCreateArrowFunction
        abstract updateArrowFunction: IExportsUpdateArrowFunction
        abstract createVariableDeclaration: IExportsCreateVariableDeclaration
        abstract updateVariableDeclaration: IExportsUpdateVariableDeclaration
        abstract createImportClause: (Identifier option -> NamedImportBindings option -> obj -> ImportClause)
        abstract updateImportClause: (ImportClause -> Identifier option -> NamedImportBindings option -> bool -> ImportClause)
        abstract createExportDeclaration: (ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> NamedExportBindings option -> Expression -> obj -> ExportDeclaration)
        abstract updateExportDeclaration: (ExportDeclaration -> ResizeArray<Decorator> option -> ResizeArray<Modifier> option -> NamedExportBindings option -> Expression option -> bool -> ExportDeclaration)
        abstract createJSDocParamTag: (EntityName -> bool -> JSDocTypeExpression -> string -> JSDocParameterTag)
        abstract createComma: (Expression -> Expression -> Expression)
        abstract createLessThan: (Expression -> Expression -> Expression)
        abstract createAssignment: (Expression -> Expression -> BinaryExpression)
        abstract createStrictEquality: (Expression -> Expression -> BinaryExpression)
        abstract createStrictInequality: (Expression -> Expression -> BinaryExpression)
        abstract createAdd: (Expression -> Expression -> BinaryExpression)
        abstract createSubtract: (Expression -> Expression -> BinaryExpression)
        abstract createLogicalAnd: (Expression -> Expression -> BinaryExpression)
        abstract createLogicalOr: (Expression -> Expression -> BinaryExpression)
        abstract createPostfixIncrement: (Expression -> PostfixUnaryExpression)
        abstract createLogicalNot: (Expression -> PrefixUnaryExpression)
        abstract createNode: (SyntaxKind -> obj -> obj -> Node)
        abstract getMutableClone: 'T -> 'T
        abstract isTypeAssertion: (Node -> bool)

    type [<AllowNullLiteral>] ValidateLocaleAndSetLanguageSys =
        abstract getExecutingFilePath: unit -> string
        abstract resolvePath: path: string -> string
        abstract fileExists: fileName: string -> bool
        abstract readFile: fileName: string -> string option

    type [<StringEnum>] [<RequireQualifiedAccess>] CreateUnparsedSourceFileType =
        | Js
        | Dts

    type [<AllowNullLiteral>] ReadConfigFileReturn =
        abstract config: obj option with get, set
        abstract error: Diagnostic option with get, set

    type [<AllowNullLiteral>] ParseConfigFileTextToJsonReturn =
        abstract config: obj option with get, set
        abstract error: Diagnostic option with get, set

    type [<AllowNullLiteral>] ConvertCompilerOptionsFromJsonReturn =
        abstract options: CompilerOptions with get, set
        abstract errors: ResizeArray<Diagnostic> with get, set

    type [<AllowNullLiteral>] ConvertTypeAcquisitionFromJsonReturn =
        abstract options: TypeAcquisition with get, set
        abstract errors: ResizeArray<Diagnostic> with get, set

    /// Type of objects whose values are all of the same type.
    /// The `in` and `for-in` operators can *not* be safely used,
    /// since `Object.prototype` may be modified by outside code.
    type [<AllowNullLiteral>] MapLike<'T> =
        [<Emit "$0[$1]{{=$2}}">] abstract Item: index: string -> 'T with get, set

    type [<AllowNullLiteral>] SortedReadonlyArray<'T> =
        inherit ReadonlyArray<'T>
        abstract `` __sortedArrayBrand``: obj option with get, set

    type [<AllowNullLiteral>] SortedArray<'T> =
        inherit Array<'T>
        abstract `` __sortedArrayBrand``: obj option with get, set

    /// Common read methods for ES6 Map/Set.
    type [<AllowNullLiteral>] ReadonlyCollection<'K> =
        abstract size: float
        abstract has: key: 'K -> bool
        abstract keys: unit -> Iterator<'K>

    /// Common write methods for ES6 Map/Set.
    type [<AllowNullLiteral>] Collection<'K> =
        inherit ReadonlyCollection<'K>
        abstract delete: key: 'K -> bool
        abstract clear: unit -> unit

    /// ES6 Map interface, only read methods included.
    type [<AllowNullLiteral>] ReadonlyESMap<'K, 'V> =
        inherit ReadonlyCollection<'K>
        abstract get: key: 'K -> 'V option
        abstract values: unit -> Iterator<'V>
        abstract entries: unit -> Iterator<'K * 'V>
        abstract forEach: action: ('V -> 'K -> unit) -> unit

    /// ES6 Map interface, only read methods included.
    type [<AllowNullLiteral>] ReadonlyMap<'T> =
        inherit ReadonlyESMap<string, 'T>

    /// ES6 Map interface.
    type [<AllowNullLiteral>] ESMap<'K, 'V> =
        inherit ReadonlyESMap<'K, 'V>
        inherit Collection<'K>
        abstract set: key: 'K * value: 'V -> ESMap<'K, 'V>

    /// ES6 Map interface.
    type [<AllowNullLiteral>] Map<'T> =
        inherit ESMap<string, 'T>

    /// ES6 Set interface, only read methods included.
    type [<AllowNullLiteral>] ReadonlySet<'T> =
        inherit ReadonlyCollection<'T>
        abstract has: value: 'T -> bool
        abstract values: unit -> Iterator<'T>
        abstract entries: unit -> Iterator<'T * 'T>
        abstract forEach: action: ('T -> 'T -> unit) -> unit

    /// ES6 Set interface.
    type [<AllowNullLiteral>] Set<'T> =
        inherit ReadonlySet<'T>
        inherit Collection<'T>
        abstract add: value: 'T -> Set<'T>
        abstract delete: value: 'T -> bool

    /// ES6 Iterator type.
    type [<AllowNullLiteral>] Iterator<'T> =
        abstract next: unit -> U2<IteratorNext<'T>, IteratorNext2>

    /// Array that is only intended to be pushed to, never read.
    type [<AllowNullLiteral>] Push<'T> =
        abstract push: [<ParamArray>] values: ResizeArray<'T> -> unit

    type [<AllowNullLiteral>] Path =
        interface end

    type [<AllowNullLiteral>] TextRange =
        abstract pos: float with get, set
        abstract ``end``: float with get, set

    type [<AllowNullLiteral>] ReadonlyTextRange =
        abstract pos: float
        abstract ``end``: float

    type [<RequireQualifiedAccess>] SyntaxKind =
        | Unknown = 0
        | EndOfFileToken = 1
        | SingleLineCommentTrivia = 2
        | MultiLineCommentTrivia = 3
        | NewLineTrivia = 4
        | WhitespaceTrivia = 5
        | ShebangTrivia = 6
        | ConflictMarkerTrivia = 7
        | NumericLiteral = 8
        | BigIntLiteral = 9
        | StringLiteral = 10
        | JsxText = 11
        | JsxTextAllWhiteSpaces = 12
        | RegularExpressionLiteral = 13
        | NoSubstitutionTemplateLiteral = 14
        | TemplateHead = 15
        | TemplateMiddle = 16
        | TemplateTail = 17
        | OpenBraceToken = 18
        | CloseBraceToken = 19
        | OpenParenToken = 20
        | CloseParenToken = 21
        | OpenBracketToken = 22
        | CloseBracketToken = 23
        | DotToken = 24
        | DotDotDotToken = 25
        | SemicolonToken = 26
        | CommaToken = 27
        | QuestionDotToken = 28
        | LessThanToken = 29
        | LessThanSlashToken = 30
        | GreaterThanToken = 31
        | LessThanEqualsToken = 32
        | GreaterThanEqualsToken = 33
        | EqualsEqualsToken = 34
        | ExclamationEqualsToken = 35
        | EqualsEqualsEqualsToken = 36
        | ExclamationEqualsEqualsToken = 37
        | EqualsGreaterThanToken = 38
        | PlusToken = 39
        | MinusToken = 40
        | AsteriskToken = 41
        | AsteriskAsteriskToken = 42
        | SlashToken = 43
        | PercentToken = 44
        | PlusPlusToken = 45
        | MinusMinusToken = 46
        | LessThanLessThanToken = 47
        | GreaterThanGreaterThanToken = 48
        | GreaterThanGreaterThanGreaterThanToken = 49
        | AmpersandToken = 50
        | BarToken = 51
        | CaretToken = 52
        | ExclamationToken = 53
        | TildeToken = 54
        | AmpersandAmpersandToken = 55
        | BarBarToken = 56
        | QuestionToken = 57
        | ColonToken = 58
        | AtToken = 59
        | QuestionQuestionToken = 60
        | BacktickToken = 61
        | EqualsToken = 62
        | PlusEqualsToken = 63
        | MinusEqualsToken = 64
        | AsteriskEqualsToken = 65
        | AsteriskAsteriskEqualsToken = 66
        | SlashEqualsToken = 67
        | PercentEqualsToken = 68
        | LessThanLessThanEqualsToken = 69
        | GreaterThanGreaterThanEqualsToken = 70
        | GreaterThanGreaterThanGreaterThanEqualsToken = 71
        | AmpersandEqualsToken = 72
        | BarEqualsToken = 73
        | BarBarEqualsToken = 74
        | AmpersandAmpersandEqualsToken = 75
        | QuestionQuestionEqualsToken = 76
        | CaretEqualsToken = 77
        | Identifier = 78
        | PrivateIdentifier = 79
        | BreakKeyword = 80
        | CaseKeyword = 81
        | CatchKeyword = 82
        | ClassKeyword = 83
        | ConstKeyword = 84
        | ContinueKeyword = 85
        | DebuggerKeyword = 86
        | DefaultKeyword = 87
        | DeleteKeyword = 88
        | DoKeyword = 89
        | ElseKeyword = 90
        | EnumKeyword = 91
        | ExportKeyword = 92
        | ExtendsKeyword = 93
        | FalseKeyword = 94
        | FinallyKeyword = 95
        | ForKeyword = 96
        | FunctionKeyword = 97
        | IfKeyword = 98
        | ImportKeyword = 99
        | InKeyword = 100
        | InstanceOfKeyword = 101
        | NewKeyword = 102
        | NullKeyword = 103
        | ReturnKeyword = 104
        | SuperKeyword = 105
        | SwitchKeyword = 106
        | ThisKeyword = 107
        | ThrowKeyword = 108
        | TrueKeyword = 109
        | TryKeyword = 110
        | TypeOfKeyword = 111
        | VarKeyword = 112
        | VoidKeyword = 113
        | WhileKeyword = 114
        | WithKeyword = 115
        | ImplementsKeyword = 116
        | InterfaceKeyword = 117
        | LetKeyword = 118
        | PackageKeyword = 119
        | PrivateKeyword = 120
        | ProtectedKeyword = 121
        | PublicKeyword = 122
        | StaticKeyword = 123
        | YieldKeyword = 124
        | AbstractKeyword = 125
        | AsKeyword = 126
        | AssertsKeyword = 127
        | AnyKeyword = 128
        | AsyncKeyword = 129
        | AwaitKeyword = 130
        | BooleanKeyword = 131
        | ConstructorKeyword = 132
        | DeclareKeyword = 133
        | GetKeyword = 134
        | InferKeyword = 135
        | IntrinsicKeyword = 136
        | IsKeyword = 137
        | KeyOfKeyword = 138
        | ModuleKeyword = 139
        | NamespaceKeyword = 140
        | NeverKeyword = 141
        | ReadonlyKeyword = 142
        | RequireKeyword = 143
        | NumberKeyword = 144
        | ObjectKeyword = 145
        | SetKeyword = 146
        | StringKeyword = 147
        | SymbolKeyword = 148
        | TypeKeyword = 149
        | UndefinedKeyword = 150
        | UniqueKeyword = 151
        | UnknownKeyword = 152
        | FromKeyword = 153
        | GlobalKeyword = 154
        | BigIntKeyword = 155
        | OfKeyword = 156
        | QualifiedName = 157
        | ComputedPropertyName = 158
        | TypeParameter = 159
        | Parameter = 160
        | Decorator = 161
        | PropertySignature = 162
        | PropertyDeclaration = 163
        | MethodSignature = 164
        | MethodDeclaration = 165
        | Constructor = 166
        | GetAccessor = 167
        | SetAccessor = 168
        | CallSignature = 169
        | ConstructSignature = 170
        | IndexSignature = 171
        | TypePredicate = 172
        | TypeReference = 173
        | FunctionType = 174
        | ConstructorType = 175
        | TypeQuery = 176
        | TypeLiteral = 177
        | ArrayType = 178
        | TupleType = 179
        | OptionalType = 180
        | RestType = 181
        | UnionType = 182
        | IntersectionType = 183
        | ConditionalType = 184
        | InferType = 185
        | ParenthesizedType = 186
        | ThisType = 187
        | TypeOperator = 188
        | IndexedAccessType = 189
        | MappedType = 190
        | LiteralType = 191
        | NamedTupleMember = 192
        | TemplateLiteralType = 193
        | TemplateLiteralTypeSpan = 194
        | ImportType = 195
        | ObjectBindingPattern = 196
        | ArrayBindingPattern = 197
        | BindingElement = 198
        | ArrayLiteralExpression = 199
        | ObjectLiteralExpression = 200
        | PropertyAccessExpression = 201
        | ElementAccessExpression = 202
        | CallExpression = 203
        | NewExpression = 204
        | TaggedTemplateExpression = 205
        | TypeAssertionExpression = 206
        | ParenthesizedExpression = 207
        | FunctionExpression = 208
        | ArrowFunction = 209
        | DeleteExpression = 210
        | TypeOfExpression = 211
        | VoidExpression = 212
        | AwaitExpression = 213
        | PrefixUnaryExpression = 214
        | PostfixUnaryExpression = 215
        | BinaryExpression = 216
        | ConditionalExpression = 217
        | TemplateExpression = 218
        | YieldExpression = 219
        | SpreadElement = 220
        | ClassExpression = 221
        | OmittedExpression = 222
        | ExpressionWithTypeArguments = 223
        | AsExpression = 224
        | NonNullExpression = 225
        | MetaProperty = 226
        | SyntheticExpression = 227
        | TemplateSpan = 228
        | SemicolonClassElement = 229
        | Block = 230
        | EmptyStatement = 231
        | VariableStatement = 232
        | ExpressionStatement = 233
        | IfStatement = 234
        | DoStatement = 235
        | WhileStatement = 236
        | ForStatement = 237
        | ForInStatement = 238
        | ForOfStatement = 239
        | ContinueStatement = 240
        | BreakStatement = 241
        | ReturnStatement = 242
        | WithStatement = 243
        | SwitchStatement = 244
        | LabeledStatement = 245
        | ThrowStatement = 246
        | TryStatement = 247
        | DebuggerStatement = 248
        | VariableDeclaration = 249
        | VariableDeclarationList = 250
        | FunctionDeclaration = 251
        | ClassDeclaration = 252
        | InterfaceDeclaration = 253
        | TypeAliasDeclaration = 254
        | EnumDeclaration = 255
        | ModuleDeclaration = 256
        | ModuleBlock = 257
        | CaseBlock = 258
        | NamespaceExportDeclaration = 259
        | ImportEqualsDeclaration = 260
        | ImportDeclaration = 261
        | ImportClause = 262
        | NamespaceImport = 263
        | NamedImports = 264
        | ImportSpecifier = 265
        | ExportAssignment = 266
        | ExportDeclaration = 267
        | NamedExports = 268
        | NamespaceExport = 269
        | ExportSpecifier = 270
        | MissingDeclaration = 271
        | ExternalModuleReference = 272
        | JsxElement = 273
        | JsxSelfClosingElement = 274
        | JsxOpeningElement = 275
        | JsxClosingElement = 276
        | JsxFragment = 277
        | JsxOpeningFragment = 278
        | JsxClosingFragment = 279
        | JsxAttribute = 280
        | JsxAttributes = 281
        | JsxSpreadAttribute = 282
        | JsxExpression = 283
        | CaseClause = 284
        | DefaultClause = 285
        | HeritageClause = 286
        | CatchClause = 287
        | PropertyAssignment = 288
        | ShorthandPropertyAssignment = 289
        | SpreadAssignment = 290
        | EnumMember = 291
        | UnparsedPrologue = 292
        | UnparsedPrepend = 293
        | UnparsedText = 294
        | UnparsedInternalText = 295
        | UnparsedSyntheticReference = 296
        | SourceFile = 297
        | Bundle = 298
        | UnparsedSource = 299
        | InputFiles = 300
        | JSDocTypeExpression = 301
        | JSDocNameReference = 302
        | JSDocAllType = 303
        | JSDocUnknownType = 304
        | JSDocNullableType = 305
        | JSDocNonNullableType = 306
        | JSDocOptionalType = 307
        | JSDocFunctionType = 308
        | JSDocVariadicType = 309
        | JSDocNamepathType = 310
        | JSDocComment = 311
        | JSDocTypeLiteral = 312
        | JSDocSignature = 313
        | JSDocTag = 314
        | JSDocAugmentsTag = 315
        | JSDocImplementsTag = 316
        | JSDocAuthorTag = 317
        | JSDocDeprecatedTag = 318
        | JSDocClassTag = 319
        | JSDocPublicTag = 320
        | JSDocPrivateTag = 321
        | JSDocProtectedTag = 322
        | JSDocReadonlyTag = 323
        | JSDocCallbackTag = 324
        | JSDocEnumTag = 325
        | JSDocParameterTag = 326
        | JSDocReturnTag = 327
        | JSDocThisTag = 328
        | JSDocTypeTag = 329
        | JSDocTemplateTag = 330
        | JSDocTypedefTag = 331
        | JSDocSeeTag = 332
        | JSDocPropertyTag = 333
        | SyntaxList = 334
        | NotEmittedStatement = 335
        | PartiallyEmittedExpression = 336
        | CommaListExpression = 337
        | MergeDeclarationMarker = 338
        | EndOfDeclarationMarker = 339
        | SyntheticReferenceExpression = 340
        | Count = 341
        | FirstAssignment = 62
        | LastAssignment = 77
        | FirstCompoundAssignment = 63
        | LastCompoundAssignment = 77
        | FirstReservedWord = 80
        | LastReservedWord = 115
        | FirstKeyword = 80
        | LastKeyword = 156
        | FirstFutureReservedWord = 116
        | LastFutureReservedWord = 124
        | FirstTypeNode = 172
        | LastTypeNode = 195
        | FirstPunctuation = 18
        | LastPunctuation = 77
        | FirstToken = 0
        | LastToken = 156
        | FirstTriviaToken = 2
        | LastTriviaToken = 7
        | FirstLiteralToken = 8
        | LastLiteralToken = 14
        | FirstTemplateToken = 14
        | LastTemplateToken = 17
        | FirstBinaryOperator = 29
        | LastBinaryOperator = 77
        | FirstStatement = 232
        | LastStatement = 248
        | FirstNode = 157
        | FirstJSDocNode = 301
        | LastJSDocNode = 333
        | FirstJSDocTagNode = 314
        | LastJSDocTagNode = 333

    type TriviaSyntaxKind =
        SyntaxKind

    type LiteralSyntaxKind =
        SyntaxKind

    type PseudoLiteralSyntaxKind =
        SyntaxKind

    type PunctuationSyntaxKind =
        SyntaxKind

    type KeywordSyntaxKind =
        SyntaxKind

    type ModifierSyntaxKind =
        SyntaxKind

    type KeywordTypeSyntaxKind =
        SyntaxKind

    type TokenSyntaxKind =
        U6<SyntaxKind, TriviaSyntaxKind, LiteralSyntaxKind, PseudoLiteralSyntaxKind, PunctuationSyntaxKind, KeywordSyntaxKind>

    type JsxTokenSyntaxKind =
        SyntaxKind

    type JSDocSyntaxKind =
        U2<SyntaxKind, KeywordSyntaxKind>

    type [<RequireQualifiedAccess>] NodeFlags =
        | None = 0
        | Let = 1
        | Const = 2
        | NestedNamespace = 4
        | Synthesized = 8
        | Namespace = 16
        | OptionalChain = 32
        | ExportContext = 64
        | ContainsThis = 128
        | HasImplicitReturn = 256
        | HasExplicitReturn = 512
        | GlobalAugmentation = 1024
        | HasAsyncFunctions = 2048
        | DisallowInContext = 4096
        | YieldContext = 8192
        | DecoratorContext = 16384
        | AwaitContext = 32768
        | ThisNodeHasError = 65536
        | JavaScriptFile = 131072
        | ThisNodeOrAnySubNodesHasError = 262144
        | HasAggregatedChildData = 524288
        | JSDoc = 4194304
        | JsonFile = 33554432
        | BlockScoped = 3
        | ReachabilityCheckFlags = 768
        | ReachabilityAndEmitFlags = 2816
        | ContextFlags = 25358336
        | TypeExcludesFlags = 40960

    type [<RequireQualifiedAccess>] ModifierFlags =
        | None = 0
        | Export = 1
        | Ambient = 2
        | Public = 4
        | Private = 8
        | Protected = 16
        | Static = 32
        | Readonly = 64
        | Abstract = 128
        | Async = 256
        | Default = 512
        | Const = 2048
        | HasComputedJSDocModifiers = 4096
        | Deprecated = 8192
        | HasComputedFlags = 536870912
        | AccessibilityModifier = 28
        | ParameterPropertyModifier = 92
        | NonPublicAccessibilityModifier = 24
        | TypeScriptModifier = 2270
        | ExportDefault = 513
        | All = 11263

    type [<RequireQualifiedAccess>] JsxFlags =
        | None = 0
        | IntrinsicNamedElement = 1
        | IntrinsicIndexedElement = 2
        | IntrinsicElement = 3

    type [<AllowNullLiteral>] Node =
        inherit ReadonlyTextRange
        abstract kind: SyntaxKind
        abstract flags: NodeFlags
        abstract decorators: ResizeArray<Decorator> option
        abstract modifiers: ModifiersArray option
        abstract parent: Node
        abstract getSourceFile: unit -> SourceFile
        abstract getChildCount: ?sourceFile: SourceFile -> float
        abstract getChildAt: index: float * ?sourceFile: SourceFile -> Node
        abstract getChildren: ?sourceFile: SourceFile -> ResizeArray<Node>
        abstract getStart: ?sourceFile: SourceFile * ?includeJsDocComment: bool -> float
        abstract getFullStart: unit -> float
        abstract getEnd: unit -> float
        abstract getWidth: ?sourceFile: SourceFileLike -> float
        abstract getFullWidth: unit -> float
        abstract getLeadingTriviaWidth: ?sourceFile: SourceFile -> float
        abstract getFullText: ?sourceFile: SourceFile -> string
        abstract getText: ?sourceFile: SourceFile -> string
        abstract getFirstToken: ?sourceFile: SourceFile -> Node option
        abstract getLastToken: ?sourceFile: SourceFile -> Node option
        abstract forEachChild: cbNode: (Node -> 'T option) * ?cbNodeArray: (ResizeArray<Node> -> 'T option) -> 'T option

    type [<AllowNullLiteral>] JSDocContainer =
        interface end

    type HasJSDoc =
        obj

    type HasType =
        obj

    type HasTypeArguments =
        U5<CallExpression, NewExpression, TaggedTemplateExpression, JsxOpeningElement, JsxSelfClosingElement>

    type HasInitializer =
        U5<HasExpressionInitializer, ForStatement, ForInStatement, ForOfStatement, JsxAttribute>

    type HasExpressionInitializer =
        U7<VariableDeclaration, ParameterDeclaration, BindingElement, PropertySignature, PropertyDeclaration, PropertyAssignment, EnumMember>

    type [<AllowNullLiteral>] NodeArray<'T> =
        inherit ReadonlyArray<'T>
        inherit ReadonlyTextRange
        abstract hasTrailingComma: bool option with get, set

    type [<AllowNullLiteral>] Token<'TKind> =
        inherit Node
        abstract kind: 'TKind

    type [<AllowNullLiteral>] EndOfFileToken =
        interface end

    type [<AllowNullLiteral>] PunctuationToken<'TKind> =
        inherit Token<'TKind>

    type DotToken =
        PunctuationToken<SyntaxKind>

    type DotDotDotToken =
        PunctuationToken<SyntaxKind>

    type QuestionToken =
        PunctuationToken<SyntaxKind>

    type ExclamationToken =
        PunctuationToken<SyntaxKind>

    type ColonToken =
        PunctuationToken<SyntaxKind>

    type EqualsToken =
        PunctuationToken<SyntaxKind>

    type AsteriskToken =
        PunctuationToken<SyntaxKind>

    type EqualsGreaterThanToken =
        PunctuationToken<SyntaxKind>

    type PlusToken =
        PunctuationToken<SyntaxKind>

    type MinusToken =
        PunctuationToken<SyntaxKind>

    type QuestionDotToken =
        PunctuationToken<SyntaxKind>

    type [<AllowNullLiteral>] KeywordToken<'TKind> =
        inherit Token<'TKind>

    type AssertsKeyword =
        KeywordToken<SyntaxKind>

    type AwaitKeyword =
        KeywordToken<SyntaxKind>

    type AwaitKeywordToken =
        AwaitKeyword

    type AssertsToken =
        AssertsKeyword

    type [<AllowNullLiteral>] ModifierToken<'TKind> =
        inherit KeywordToken<'TKind>

    type AbstractKeyword =
        ModifierToken<SyntaxKind>

    type AsyncKeyword =
        ModifierToken<SyntaxKind>

    type ConstKeyword =
        ModifierToken<SyntaxKind>

    type DeclareKeyword =
        ModifierToken<SyntaxKind>

    type DefaultKeyword =
        ModifierToken<SyntaxKind>

    type ExportKeyword =
        ModifierToken<SyntaxKind>

    type PrivateKeyword =
        ModifierToken<SyntaxKind>

    type ProtectedKeyword =
        ModifierToken<SyntaxKind>

    type PublicKeyword =
        ModifierToken<SyntaxKind>

    type ReadonlyKeyword =
        ModifierToken<SyntaxKind>

    type StaticKeyword =
        ModifierToken<SyntaxKind>

    type ReadonlyToken =
        ReadonlyKeyword

    type Modifier =
        Token<SyntaxKind>

    type AccessibilityModifier =
        U3<PublicKeyword, PrivateKeyword, ProtectedKeyword>

    type ParameterPropertyModifier =
        U2<AccessibilityModifier, ReadonlyKeyword>

    type ClassMemberModifier =
        U3<AccessibilityModifier, ReadonlyKeyword, StaticKeyword>

    type ModifiersArray =
        ResizeArray<Modifier>

    type [<RequireQualifiedAccess>] GeneratedIdentifierFlags =
        | None = 0
        | ReservedInNestedScopes = 8
        | Optimistic = 16
        | FileLevel = 32
        | AllowNameSubstitution = 64

    type [<AllowNullLiteral>] Identifier =
        inherit PrimaryExpression
        inherit Declaration
        abstract kind: SyntaxKind
        /// Prefer to use `id.unescapedText`. (Note: This is available only in services, not internally to the TypeScript compiler.)
        /// Text of identifier, but if the identifier begins with two underscores, this will begin with three.
        abstract escapedText: __String
        abstract originalKeywordKind: SyntaxKind option
        abstract isInJSDocNamespace: bool option with get, set
        abstract text: string

    type [<AllowNullLiteral>] TransientIdentifier =
        inherit Identifier
        abstract resolvedSymbol: Symbol with get, set

    type [<AllowNullLiteral>] QualifiedName =
        inherit Node
        abstract kind: SyntaxKind
        abstract left: EntityName
        abstract right: Identifier

    type EntityName =
        U2<Identifier, QualifiedName>

    type PropertyName =
        U5<Identifier, StringLiteral, NumericLiteral, ComputedPropertyName, PrivateIdentifier>

    type DeclarationName =
        U8<Identifier, PrivateIdentifier, StringLiteralLike, NumericLiteral, ComputedPropertyName, ElementAccessExpression, BindingPattern, EntityNameExpression>

    type [<AllowNullLiteral>] Declaration =
        inherit Node
        abstract _declarationBrand: obj option with get, set

    type [<AllowNullLiteral>] NamedDeclaration =
        inherit Declaration
        abstract name: DeclarationName option

    type [<AllowNullLiteral>] DeclarationStatement =
        inherit NamedDeclaration
        inherit Statement
        abstract name: U3<Identifier, StringLiteral, NumericLiteral> option

    type [<AllowNullLiteral>] ComputedPropertyName =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: Declaration
        abstract expression: Expression

    type [<AllowNullLiteral>] PrivateIdentifier =
        inherit Node
        abstract kind: SyntaxKind
        abstract escapedText: __String
        abstract text: string

    type [<AllowNullLiteral>] Decorator =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: NamedDeclaration
        abstract expression: LeftHandSideExpression

    type [<AllowNullLiteral>] TypeParameterDeclaration =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: U2<DeclarationWithTypeParameterChildren, InferTypeNode>
        abstract name: Identifier
        /// Note: Consider calling `getEffectiveConstraintOfTypeParameter`
        abstract ``constraint``: TypeNode option
        abstract ``default``: TypeNode option
        abstract expression: Expression option with get, set

    type [<AllowNullLiteral>] SignatureDeclarationBase =
        inherit NamedDeclaration
        inherit JSDocContainer
        abstract kind: SignatureDeclaration
        abstract name: PropertyName option
        abstract typeParameters: ResizeArray<TypeParameterDeclaration> option
        abstract parameters: ResizeArray<ParameterDeclaration>
        abstract ``type``: TypeNode option

    type SignatureDeclaration =
        obj

    type [<AllowNullLiteral>] CallSignatureDeclaration =
        inherit SignatureDeclarationBase
        inherit TypeElement
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] ConstructSignatureDeclaration =
        inherit SignatureDeclarationBase
        inherit TypeElement
        abstract kind: SyntaxKind

    type BindingName =
        U2<Identifier, BindingPattern>

    type [<AllowNullLiteral>] VariableDeclaration =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: U2<VariableDeclarationList, CatchClause>
        abstract name: BindingName
        abstract exclamationToken: ExclamationToken option
        abstract ``type``: TypeNode option
        abstract initializer: Expression option

    type [<AllowNullLiteral>] VariableDeclarationList =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: U4<VariableStatement, ForStatement, ForOfStatement, ForInStatement>
        abstract declarations: ResizeArray<VariableDeclaration>

    type [<AllowNullLiteral>] ParameterDeclaration =
        inherit NamedDeclaration
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: SignatureDeclaration
        abstract dotDotDotToken: DotDotDotToken option
        abstract name: BindingName
        abstract questionToken: QuestionToken option
        abstract ``type``: TypeNode option
        abstract initializer: Expression option

    type [<AllowNullLiteral>] BindingElement =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: BindingPattern
        abstract propertyName: PropertyName option
        abstract dotDotDotToken: DotDotDotToken option
        abstract name: BindingName
        abstract initializer: Expression option

    type [<AllowNullLiteral>] PropertySignature =
        inherit TypeElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract name: PropertyName
        abstract questionToken: QuestionToken option
        abstract ``type``: TypeNode option
        abstract initializer: Expression option with get, set

    type [<AllowNullLiteral>] PropertyDeclaration =
        inherit ClassElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: ClassLikeDeclaration
        abstract name: PropertyName
        abstract questionToken: QuestionToken option
        abstract exclamationToken: ExclamationToken option
        abstract ``type``: TypeNode option
        abstract initializer: Expression option

    type [<AllowNullLiteral>] ObjectLiteralElement =
        inherit NamedDeclaration
        abstract _objectLiteralBrand: obj option with get, set
        abstract name: PropertyName option

    type ObjectLiteralElementLike =
        U5<PropertyAssignment, ShorthandPropertyAssignment, SpreadAssignment, MethodDeclaration, AccessorDeclaration>

    type [<AllowNullLiteral>] PropertyAssignment =
        inherit ObjectLiteralElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: ObjectLiteralExpression
        abstract name: PropertyName
        abstract questionToken: QuestionToken option
        abstract exclamationToken: ExclamationToken option
        abstract initializer: Expression

    type [<AllowNullLiteral>] ShorthandPropertyAssignment =
        inherit ObjectLiteralElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: ObjectLiteralExpression
        abstract name: Identifier
        abstract questionToken: QuestionToken option
        abstract exclamationToken: ExclamationToken option
        abstract equalsToken: EqualsToken option
        abstract objectAssignmentInitializer: Expression option

    type [<AllowNullLiteral>] SpreadAssignment =
        inherit ObjectLiteralElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: ObjectLiteralExpression
        abstract expression: Expression

    type VariableLikeDeclaration =
        obj

    type [<AllowNullLiteral>] PropertyLikeDeclaration =
        inherit NamedDeclaration
        abstract name: PropertyName

    type [<AllowNullLiteral>] ObjectBindingPattern =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: U3<VariableDeclaration, ParameterDeclaration, BindingElement>
        abstract elements: ResizeArray<BindingElement>

    type [<AllowNullLiteral>] ArrayBindingPattern =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: U3<VariableDeclaration, ParameterDeclaration, BindingElement>
        abstract elements: ResizeArray<ArrayBindingElement>

    type BindingPattern =
        U2<ObjectBindingPattern, ArrayBindingPattern>

    type ArrayBindingElement =
        U2<BindingElement, OmittedExpression>

    /// Several node kinds share function-like features such as a signature,
    /// a name, and a body. These nodes should extend FunctionLikeDeclarationBase.
    /// Examples:
    /// - FunctionDeclaration
    /// - MethodDeclaration
    /// - AccessorDeclaration
    type [<AllowNullLiteral>] FunctionLikeDeclarationBase =
        inherit SignatureDeclarationBase
        abstract _functionLikeDeclarationBrand: obj option with get, set
        abstract asteriskToken: AsteriskToken option
        abstract questionToken: QuestionToken option
        abstract exclamationToken: ExclamationToken option
        abstract body: U2<Block, Expression> option

    type FunctionLikeDeclaration =
        U7<FunctionDeclaration, MethodDeclaration, GetAccessorDeclaration, SetAccessorDeclaration, ConstructorDeclaration, FunctionExpression, ArrowFunction>

    type FunctionLike =
        SignatureDeclaration

    type [<AllowNullLiteral>] FunctionDeclaration =
        inherit FunctionLikeDeclarationBase
        inherit DeclarationStatement
        abstract kind: SyntaxKind
        abstract name: Identifier option
        abstract body: FunctionBody option

    type [<AllowNullLiteral>] MethodSignature =
        inherit SignatureDeclarationBase
        inherit TypeElement
        abstract kind: SyntaxKind
        abstract parent: ObjectTypeDeclaration
        abstract name: PropertyName

    type [<AllowNullLiteral>] MethodDeclaration =
        inherit FunctionLikeDeclarationBase
        inherit ClassElement
        inherit ObjectLiteralElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: U2<ClassLikeDeclaration, ObjectLiteralExpression>
        abstract name: PropertyName
        abstract body: FunctionBody option

    type [<AllowNullLiteral>] ConstructorDeclaration =
        inherit FunctionLikeDeclarationBase
        inherit ClassElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: ClassLikeDeclaration
        abstract body: FunctionBody option

    /// For when we encounter a semicolon in a class declaration. ES6 allows these as class elements.
    type [<AllowNullLiteral>] SemicolonClassElement =
        inherit ClassElement
        abstract kind: SyntaxKind
        abstract parent: ClassLikeDeclaration

    type [<AllowNullLiteral>] GetAccessorDeclaration =
        inherit FunctionLikeDeclarationBase
        inherit ClassElement
        inherit ObjectLiteralElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: U2<ClassLikeDeclaration, ObjectLiteralExpression>
        abstract name: PropertyName
        abstract body: FunctionBody option

    type [<AllowNullLiteral>] SetAccessorDeclaration =
        inherit FunctionLikeDeclarationBase
        inherit ClassElement
        inherit ObjectLiteralElement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: U2<ClassLikeDeclaration, ObjectLiteralExpression>
        abstract name: PropertyName
        abstract body: FunctionBody option

    type AccessorDeclaration =
        U2<GetAccessorDeclaration, SetAccessorDeclaration>

    type [<AllowNullLiteral>] IndexSignatureDeclaration =
        inherit SignatureDeclarationBase
        inherit ClassElement
        inherit TypeElement
        abstract kind: SyntaxKind
        abstract parent: ObjectTypeDeclaration
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] TypeNode =
        inherit Node
        abstract _typeNodeBrand: obj option with get, set

    type KeywordTypeNode =
        KeywordTypeNode<obj>

    type [<AllowNullLiteral>] KeywordTypeNode<'TKind> =
        inherit KeywordToken<'TKind>
        inherit TypeNode
        abstract kind: 'TKind

    type [<AllowNullLiteral>] ImportTypeNode =
        inherit NodeWithTypeArguments
        abstract kind: SyntaxKind
        abstract isTypeOf: bool
        abstract argument: TypeNode
        abstract qualifier: EntityName option

    type [<AllowNullLiteral>] ThisTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind

    type FunctionOrConstructorTypeNode =
        U2<FunctionTypeNode, ConstructorTypeNode>

    type [<AllowNullLiteral>] FunctionOrConstructorTypeNodeBase =
        inherit TypeNode
        inherit SignatureDeclarationBase
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] FunctionTypeNode =
        inherit FunctionOrConstructorTypeNodeBase
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] ConstructorTypeNode =
        inherit FunctionOrConstructorTypeNodeBase
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] NodeWithTypeArguments =
        inherit TypeNode
        abstract typeArguments: ResizeArray<TypeNode> option

    type TypeReferenceType =
        U2<TypeReferenceNode, ExpressionWithTypeArguments>

    type [<AllowNullLiteral>] TypeReferenceNode =
        inherit NodeWithTypeArguments
        abstract kind: SyntaxKind
        abstract typeName: EntityName

    type [<AllowNullLiteral>] TypePredicateNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract parent: U2<SignatureDeclaration, JSDocTypeExpression>
        abstract assertsModifier: AssertsToken option
        abstract parameterName: U2<Identifier, ThisTypeNode>
        abstract ``type``: TypeNode option

    type [<AllowNullLiteral>] TypeQueryNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract exprName: EntityName

    type [<AllowNullLiteral>] TypeLiteralNode =
        inherit TypeNode
        inherit Declaration
        abstract kind: SyntaxKind
        abstract members: ResizeArray<TypeElement>

    type [<AllowNullLiteral>] ArrayTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract elementType: TypeNode

    type [<AllowNullLiteral>] TupleTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract elements: ResizeArray<U2<TypeNode, NamedTupleMember>>

    type [<AllowNullLiteral>] NamedTupleMember =
        inherit TypeNode
        inherit JSDocContainer
        inherit Declaration
        abstract kind: SyntaxKind
        abstract dotDotDotToken: Token<SyntaxKind> option
        abstract name: Identifier
        abstract questionToken: Token<SyntaxKind> option
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] OptionalTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] RestTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type UnionOrIntersectionTypeNode =
        U2<UnionTypeNode, IntersectionTypeNode>

    type [<AllowNullLiteral>] UnionTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract types: ResizeArray<TypeNode>

    type [<AllowNullLiteral>] IntersectionTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract types: ResizeArray<TypeNode>

    type [<AllowNullLiteral>] ConditionalTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract checkType: TypeNode
        abstract extendsType: TypeNode
        abstract trueType: TypeNode
        abstract falseType: TypeNode

    type [<AllowNullLiteral>] InferTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract typeParameter: TypeParameterDeclaration

    type [<AllowNullLiteral>] ParenthesizedTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] TypeOperatorNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract operator: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] IndexedAccessTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract objectType: TypeNode
        abstract indexType: TypeNode

    type [<AllowNullLiteral>] MappedTypeNode =
        inherit TypeNode
        inherit Declaration
        abstract kind: SyntaxKind
        abstract readonlyToken: U3<ReadonlyToken, PlusToken, MinusToken> option
        abstract typeParameter: TypeParameterDeclaration
        abstract nameType: TypeNode option
        abstract questionToken: U3<QuestionToken, PlusToken, MinusToken> option
        abstract ``type``: TypeNode option

    type [<AllowNullLiteral>] LiteralTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract literal: U4<NullLiteral, BooleanLiteral, LiteralExpression, PrefixUnaryExpression>

    type [<AllowNullLiteral>] StringLiteral =
        inherit LiteralExpression
        inherit Declaration
        abstract kind: SyntaxKind

    type StringLiteralLike =
        U2<StringLiteral, NoSubstitutionTemplateLiteral>

    type PropertyNameLiteral =
        U3<Identifier, StringLiteralLike, NumericLiteral>

    type [<AllowNullLiteral>] TemplateLiteralTypeNode =
        inherit TypeNode
        abstract kind: SyntaxKind with get, set
        abstract head: TemplateHead
        abstract templateSpans: ResizeArray<TemplateLiteralTypeSpan>

    type [<AllowNullLiteral>] TemplateLiteralTypeSpan =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract parent: TemplateLiteralTypeNode
        abstract ``type``: TypeNode
        abstract literal: U2<TemplateMiddle, TemplateTail>

    type [<AllowNullLiteral>] Expression =
        inherit Node
        abstract _expressionBrand: obj option with get, set

    type [<AllowNullLiteral>] OmittedExpression =
        inherit Expression
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] PartiallyEmittedExpression =
        inherit LeftHandSideExpression
        abstract kind: SyntaxKind
        abstract expression: Expression

    type [<AllowNullLiteral>] UnaryExpression =
        inherit Expression
        abstract _unaryExpressionBrand: obj option with get, set

    type IncrementExpression =
        UpdateExpression

    type [<AllowNullLiteral>] UpdateExpression =
        inherit UnaryExpression
        abstract _updateExpressionBrand: obj option with get, set

    type PrefixUnaryOperator =
        SyntaxKind

    type [<AllowNullLiteral>] PrefixUnaryExpression =
        inherit UpdateExpression
        abstract kind: SyntaxKind
        abstract operator: PrefixUnaryOperator
        abstract operand: UnaryExpression

    type PostfixUnaryOperator =
        SyntaxKind

    type [<AllowNullLiteral>] PostfixUnaryExpression =
        inherit UpdateExpression
        abstract kind: SyntaxKind
        abstract operand: LeftHandSideExpression
        abstract operator: PostfixUnaryOperator

    type [<AllowNullLiteral>] LeftHandSideExpression =
        inherit UpdateExpression
        abstract _leftHandSideExpressionBrand: obj option with get, set

    type [<AllowNullLiteral>] MemberExpression =
        inherit LeftHandSideExpression
        abstract _memberExpressionBrand: obj option with get, set

    type [<AllowNullLiteral>] PrimaryExpression =
        inherit MemberExpression
        abstract _primaryExpressionBrand: obj option with get, set

    type [<AllowNullLiteral>] NullLiteral =
        inherit PrimaryExpression
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] TrueLiteral =
        inherit PrimaryExpression
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] FalseLiteral =
        inherit PrimaryExpression
        abstract kind: SyntaxKind

    type BooleanLiteral =
        U2<TrueLiteral, FalseLiteral>

    type [<AllowNullLiteral>] ThisExpression =
        inherit PrimaryExpression
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] SuperExpression =
        inherit PrimaryExpression
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] ImportExpression =
        inherit PrimaryExpression
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] DeleteExpression =
        inherit UnaryExpression
        abstract kind: SyntaxKind
        abstract expression: UnaryExpression

    type [<AllowNullLiteral>] TypeOfExpression =
        inherit UnaryExpression
        abstract kind: SyntaxKind
        abstract expression: UnaryExpression

    type [<AllowNullLiteral>] VoidExpression =
        inherit UnaryExpression
        abstract kind: SyntaxKind
        abstract expression: UnaryExpression

    type [<AllowNullLiteral>] AwaitExpression =
        inherit UnaryExpression
        abstract kind: SyntaxKind
        abstract expression: UnaryExpression

    type [<AllowNullLiteral>] YieldExpression =
        inherit Expression
        abstract kind: SyntaxKind
        abstract asteriskToken: AsteriskToken option
        abstract expression: Expression option

    type [<AllowNullLiteral>] SyntheticExpression =
        inherit Expression
        abstract kind: SyntaxKind
        abstract isSpread: bool
        abstract ``type``: Type
        abstract tupleNameSource: U2<ParameterDeclaration, NamedTupleMember> option

    type ExponentiationOperator =
        SyntaxKind

    type MultiplicativeOperator =
        SyntaxKind

    type MultiplicativeOperatorOrHigher =
        U2<ExponentiationOperator, MultiplicativeOperator>

    type AdditiveOperator =
        SyntaxKind

    type AdditiveOperatorOrHigher =
        U2<MultiplicativeOperatorOrHigher, AdditiveOperator>

    type ShiftOperator =
        SyntaxKind

    type ShiftOperatorOrHigher =
        U2<AdditiveOperatorOrHigher, ShiftOperator>

    type RelationalOperator =
        SyntaxKind

    type RelationalOperatorOrHigher =
        U2<ShiftOperatorOrHigher, RelationalOperator>

    type EqualityOperator =
        SyntaxKind

    type EqualityOperatorOrHigher =
        U2<RelationalOperatorOrHigher, EqualityOperator>

    type BitwiseOperator =
        SyntaxKind

    type BitwiseOperatorOrHigher =
        U2<EqualityOperatorOrHigher, BitwiseOperator>

    type LogicalOperator =
        SyntaxKind

    type LogicalOperatorOrHigher =
        U2<BitwiseOperatorOrHigher, LogicalOperator>

    type CompoundAssignmentOperator =
        SyntaxKind

    type AssignmentOperator =
        U2<SyntaxKind, CompoundAssignmentOperator>

    type AssignmentOperatorOrHigher =
        U3<SyntaxKind, LogicalOperatorOrHigher, AssignmentOperator>

    type BinaryOperator =
        U2<AssignmentOperatorOrHigher, SyntaxKind>

    type LogicalOrCoalescingAssignmentOperator =
        SyntaxKind

    type BinaryOperatorToken =
        Token<BinaryOperator>

    type [<AllowNullLiteral>] BinaryExpression =
        inherit Expression
        inherit Declaration
        abstract kind: SyntaxKind
        abstract left: Expression
        abstract operatorToken: BinaryOperatorToken
        abstract right: Expression

    type AssignmentOperatorToken =
        Token<AssignmentOperator>

    type [<AllowNullLiteral>] AssignmentExpression<'TOperator> =
        inherit BinaryExpression
        abstract left: LeftHandSideExpression
        abstract operatorToken: 'TOperator

    type [<AllowNullLiteral>] ObjectDestructuringAssignment =
        inherit AssignmentExpression<EqualsToken>
        abstract left: ObjectLiteralExpression

    type [<AllowNullLiteral>] ArrayDestructuringAssignment =
        inherit AssignmentExpression<EqualsToken>
        abstract left: ArrayLiteralExpression

    type DestructuringAssignment =
        U2<ObjectDestructuringAssignment, ArrayDestructuringAssignment>

    type BindingOrAssignmentElement =
        U4<VariableDeclaration, ParameterDeclaration, ObjectBindingOrAssignmentElement, ArrayBindingOrAssignmentElement>

    type ObjectBindingOrAssignmentElement =
        U4<BindingElement, PropertyAssignment, ShorthandPropertyAssignment, SpreadAssignment>

    type ArrayBindingOrAssignmentElement =
        obj

    type BindingOrAssignmentElementRestIndicator =
        U3<DotDotDotToken, SpreadElement, SpreadAssignment>

    type BindingOrAssignmentElementTarget =
        U5<BindingOrAssignmentPattern, Identifier, PropertyAccessExpression, ElementAccessExpression, OmittedExpression>

    type ObjectBindingOrAssignmentPattern =
        U2<ObjectBindingPattern, ObjectLiteralExpression>

    type ArrayBindingOrAssignmentPattern =
        U2<ArrayBindingPattern, ArrayLiteralExpression>

    type AssignmentPattern =
        U2<ObjectLiteralExpression, ArrayLiteralExpression>

    type BindingOrAssignmentPattern =
        U2<ObjectBindingOrAssignmentPattern, ArrayBindingOrAssignmentPattern>

    type [<AllowNullLiteral>] ConditionalExpression =
        inherit Expression
        abstract kind: SyntaxKind
        abstract condition: Expression
        abstract questionToken: QuestionToken
        abstract whenTrue: Expression
        abstract colonToken: ColonToken
        abstract whenFalse: Expression

    type FunctionBody =
        Block

    type ConciseBody =
        U2<FunctionBody, Expression>

    type [<AllowNullLiteral>] FunctionExpression =
        inherit PrimaryExpression
        inherit FunctionLikeDeclarationBase
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract name: Identifier option
        abstract body: FunctionBody

    type [<AllowNullLiteral>] ArrowFunction =
        inherit Expression
        inherit FunctionLikeDeclarationBase
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract equalsGreaterThanToken: EqualsGreaterThanToken
        abstract body: ConciseBody
        abstract name: obj

    type [<AllowNullLiteral>] LiteralLikeNode =
        inherit Node
        abstract text: string with get, set
        abstract isUnterminated: bool option with get, set
        abstract hasExtendedUnicodeEscape: bool option with get, set

    type [<AllowNullLiteral>] TemplateLiteralLikeNode =
        inherit LiteralLikeNode
        abstract rawText: string option with get, set

    type [<AllowNullLiteral>] LiteralExpression =
        inherit LiteralLikeNode
        inherit PrimaryExpression
        abstract _literalExpressionBrand: obj option with get, set

    type [<AllowNullLiteral>] RegularExpressionLiteral =
        inherit LiteralExpression
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] NoSubstitutionTemplateLiteral =
        inherit LiteralExpression
        inherit TemplateLiteralLikeNode
        inherit Declaration
        abstract kind: SyntaxKind

    type [<RequireQualifiedAccess>] TokenFlags =
        | None = 0
        | Scientific = 16
        | Octal = 32
        | HexSpecifier = 64
        | BinarySpecifier = 128
        | OctalSpecifier = 256

    type [<AllowNullLiteral>] NumericLiteral =
        inherit LiteralExpression
        inherit Declaration
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] BigIntLiteral =
        inherit LiteralExpression
        abstract kind: SyntaxKind

    type LiteralToken =
        U6<NumericLiteral, BigIntLiteral, StringLiteral, JsxText, RegularExpressionLiteral, NoSubstitutionTemplateLiteral>

    type [<AllowNullLiteral>] TemplateHead =
        inherit TemplateLiteralLikeNode
        abstract kind: SyntaxKind
        abstract parent: U2<TemplateExpression, TemplateLiteralTypeNode>

    type [<AllowNullLiteral>] TemplateMiddle =
        inherit TemplateLiteralLikeNode
        abstract kind: SyntaxKind
        abstract parent: U2<TemplateSpan, TemplateLiteralTypeSpan>

    type [<AllowNullLiteral>] TemplateTail =
        inherit TemplateLiteralLikeNode
        abstract kind: SyntaxKind
        abstract parent: U2<TemplateSpan, TemplateLiteralTypeSpan>

    type PseudoLiteralToken =
        U3<TemplateHead, TemplateMiddle, TemplateTail>

    type TemplateLiteralToken =
        U2<NoSubstitutionTemplateLiteral, PseudoLiteralToken>

    type [<AllowNullLiteral>] TemplateExpression =
        inherit PrimaryExpression
        abstract kind: SyntaxKind
        abstract head: TemplateHead
        abstract templateSpans: ResizeArray<TemplateSpan>

    type TemplateLiteral =
        U2<TemplateExpression, NoSubstitutionTemplateLiteral>

    type [<AllowNullLiteral>] TemplateSpan =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: TemplateExpression
        abstract expression: Expression
        abstract literal: U2<TemplateMiddle, TemplateTail>

    type [<AllowNullLiteral>] ParenthesizedExpression =
        inherit PrimaryExpression
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract expression: Expression

    type [<AllowNullLiteral>] ArrayLiteralExpression =
        inherit PrimaryExpression
        abstract kind: SyntaxKind
        abstract elements: ResizeArray<Expression>

    type [<AllowNullLiteral>] SpreadElement =
        inherit Expression
        abstract kind: SyntaxKind
        abstract parent: U3<ArrayLiteralExpression, CallExpression, NewExpression>
        abstract expression: Expression

    /// This interface is a base interface for ObjectLiteralExpression and JSXAttributes to extend from. JSXAttributes is similar to
    /// ObjectLiteralExpression in that it contains array of properties; however, JSXAttributes' properties can only be
    /// JSXAttribute or JSXSpreadAttribute. ObjectLiteralExpression, on the other hand, can only have properties of type
    /// ObjectLiteralElement (e.g. PropertyAssignment, ShorthandPropertyAssignment etc.)
    type [<AllowNullLiteral>] ObjectLiteralExpressionBase<'T> =
        inherit PrimaryExpression
        inherit Declaration
        abstract properties: ResizeArray<'T>

    type [<AllowNullLiteral>] ObjectLiteralExpression =
        inherit ObjectLiteralExpressionBase<ObjectLiteralElementLike>
        abstract kind: SyntaxKind

    type EntityNameExpression =
        U2<Identifier, PropertyAccessEntityNameExpression>

    type EntityNameOrEntityNameExpression =
        U2<EntityName, EntityNameExpression>

    type AccessExpression =
        U2<PropertyAccessExpression, ElementAccessExpression>

    type [<AllowNullLiteral>] PropertyAccessExpression =
        inherit MemberExpression
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract expression: LeftHandSideExpression
        abstract questionDotToken: QuestionDotToken option
        abstract name: U2<Identifier, PrivateIdentifier>

    type [<AllowNullLiteral>] PropertyAccessChain =
        inherit PropertyAccessExpression
        abstract _optionalChainBrand: obj option with get, set
        abstract name: U2<Identifier, PrivateIdentifier>

    type [<AllowNullLiteral>] SuperPropertyAccessExpression =
        inherit PropertyAccessExpression
        abstract expression: SuperExpression

    /// Brand for a PropertyAccessExpression which, like a QualifiedName, consists of a sequence of identifiers separated by dots.
    type [<AllowNullLiteral>] PropertyAccessEntityNameExpression =
        inherit PropertyAccessExpression
        abstract _propertyAccessExpressionLikeQualifiedNameBrand: obj option with get, set
        abstract expression: EntityNameExpression
        abstract name: Identifier

    type [<AllowNullLiteral>] ElementAccessExpression =
        inherit MemberExpression
        abstract kind: SyntaxKind
        abstract expression: LeftHandSideExpression
        abstract questionDotToken: QuestionDotToken option
        abstract argumentExpression: Expression

    type [<AllowNullLiteral>] ElementAccessChain =
        inherit ElementAccessExpression
        abstract _optionalChainBrand: obj option with get, set

    type [<AllowNullLiteral>] SuperElementAccessExpression =
        inherit ElementAccessExpression
        abstract expression: SuperExpression

    type SuperProperty =
        U2<SuperPropertyAccessExpression, SuperElementAccessExpression>

    type [<AllowNullLiteral>] CallExpression =
        inherit LeftHandSideExpression
        inherit Declaration
        abstract kind: SyntaxKind
        abstract expression: LeftHandSideExpression
        abstract questionDotToken: QuestionDotToken option
        abstract typeArguments: ResizeArray<TypeNode> option
        abstract arguments: ResizeArray<Expression>

    type [<AllowNullLiteral>] CallChain =
        inherit CallExpression
        abstract _optionalChainBrand: obj option with get, set

    type OptionalChain =
        U4<PropertyAccessChain, ElementAccessChain, CallChain, NonNullChain>

    type [<AllowNullLiteral>] SuperCall =
        inherit CallExpression
        abstract expression: SuperExpression

    type [<AllowNullLiteral>] ImportCall =
        inherit CallExpression
        abstract expression: ImportExpression

    type [<AllowNullLiteral>] ExpressionWithTypeArguments =
        inherit NodeWithTypeArguments
        abstract kind: SyntaxKind
        abstract parent: U3<HeritageClause, JSDocAugmentsTag, JSDocImplementsTag>
        abstract expression: LeftHandSideExpression

    type [<AllowNullLiteral>] NewExpression =
        inherit PrimaryExpression
        inherit Declaration
        abstract kind: SyntaxKind
        abstract expression: LeftHandSideExpression
        abstract typeArguments: ResizeArray<TypeNode> option
        abstract arguments: ResizeArray<Expression> option

    type [<AllowNullLiteral>] TaggedTemplateExpression =
        inherit MemberExpression
        abstract kind: SyntaxKind
        abstract tag: LeftHandSideExpression
        abstract typeArguments: ResizeArray<TypeNode> option
        abstract template: TemplateLiteral

    type CallLikeExpression =
        U5<CallExpression, NewExpression, TaggedTemplateExpression, Decorator, JsxOpeningLikeElement>

    type [<AllowNullLiteral>] AsExpression =
        inherit Expression
        abstract kind: SyntaxKind
        abstract expression: Expression
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] TypeAssertion =
        inherit UnaryExpression
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode
        abstract expression: UnaryExpression

    type AssertionExpression =
        U2<TypeAssertion, AsExpression>

    type [<AllowNullLiteral>] NonNullExpression =
        inherit LeftHandSideExpression
        abstract kind: SyntaxKind
        abstract expression: Expression

    type [<AllowNullLiteral>] NonNullChain =
        inherit NonNullExpression
        abstract _optionalChainBrand: obj option with get, set

    type [<AllowNullLiteral>] MetaProperty =
        inherit PrimaryExpression
        abstract kind: SyntaxKind
        abstract keywordToken: SyntaxKind
        abstract name: Identifier

    type [<AllowNullLiteral>] JsxElement =
        inherit PrimaryExpression
        abstract kind: SyntaxKind
        abstract openingElement: JsxOpeningElement
        abstract children: ResizeArray<JsxChild>
        abstract closingElement: JsxClosingElement

    type JsxOpeningLikeElement =
        U2<JsxSelfClosingElement, JsxOpeningElement>

    type JsxAttributeLike =
        U2<JsxAttribute, JsxSpreadAttribute>

    type JsxTagNameExpression =
        U3<Identifier, ThisExpression, JsxTagNamePropertyAccess>

    type [<AllowNullLiteral>] JsxTagNamePropertyAccess =
        inherit PropertyAccessExpression
        abstract expression: JsxTagNameExpression

    type [<AllowNullLiteral>] JsxAttributes =
        inherit ObjectLiteralExpressionBase<JsxAttributeLike>
        abstract kind: SyntaxKind
        abstract parent: JsxOpeningLikeElement

    type [<AllowNullLiteral>] JsxOpeningElement =
        inherit Expression
        abstract kind: SyntaxKind
        abstract parent: JsxElement
        abstract tagName: JsxTagNameExpression
        abstract typeArguments: ResizeArray<TypeNode> option
        abstract attributes: JsxAttributes

    type [<AllowNullLiteral>] JsxSelfClosingElement =
        inherit PrimaryExpression
        abstract kind: SyntaxKind
        abstract tagName: JsxTagNameExpression
        abstract typeArguments: ResizeArray<TypeNode> option
        abstract attributes: JsxAttributes

    type [<AllowNullLiteral>] JsxFragment =
        inherit PrimaryExpression
        abstract kind: SyntaxKind
        abstract openingFragment: JsxOpeningFragment
        abstract children: ResizeArray<JsxChild>
        abstract closingFragment: JsxClosingFragment

    type [<AllowNullLiteral>] JsxOpeningFragment =
        inherit Expression
        abstract kind: SyntaxKind
        abstract parent: JsxFragment

    type [<AllowNullLiteral>] JsxClosingFragment =
        inherit Expression
        abstract kind: SyntaxKind
        abstract parent: JsxFragment

    type [<AllowNullLiteral>] JsxAttribute =
        inherit ObjectLiteralElement
        abstract kind: SyntaxKind
        abstract parent: JsxAttributes
        abstract name: Identifier
        abstract initializer: U2<StringLiteral, JsxExpression> option

    type [<AllowNullLiteral>] JsxSpreadAttribute =
        inherit ObjectLiteralElement
        abstract kind: SyntaxKind
        abstract parent: JsxAttributes
        abstract expression: Expression

    type [<AllowNullLiteral>] JsxClosingElement =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: JsxElement
        abstract tagName: JsxTagNameExpression

    type [<AllowNullLiteral>] JsxExpression =
        inherit Expression
        abstract kind: SyntaxKind
        abstract parent: U2<JsxElement, JsxAttributeLike>
        abstract dotDotDotToken: Token<SyntaxKind> option
        abstract expression: Expression option

    type [<AllowNullLiteral>] JsxText =
        inherit LiteralLikeNode
        abstract kind: SyntaxKind
        abstract parent: JsxElement
        abstract containsOnlyTriviaWhiteSpaces: bool

    type JsxChild =
        U5<JsxText, JsxExpression, JsxElement, JsxSelfClosingElement, JsxFragment>

    type [<AllowNullLiteral>] Statement =
        inherit Node
        abstract _statementBrand: obj option with get, set

    type [<AllowNullLiteral>] NotEmittedStatement =
        inherit Statement
        abstract kind: SyntaxKind

    /// A list of comma-separated expressions. This node is only created by transformations.
    type [<AllowNullLiteral>] CommaListExpression =
        inherit Expression
        abstract kind: SyntaxKind
        abstract elements: ResizeArray<Expression>

    type [<AllowNullLiteral>] EmptyStatement =
        inherit Statement
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] DebuggerStatement =
        inherit Statement
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] MissingDeclaration =
        inherit DeclarationStatement
        abstract kind: SyntaxKind
        abstract name: Identifier option

    type BlockLike =
        U4<SourceFile, Block, ModuleBlock, CaseOrDefaultClause>

    type [<AllowNullLiteral>] Block =
        inherit Statement
        abstract kind: SyntaxKind
        abstract statements: ResizeArray<Statement>

    type [<AllowNullLiteral>] VariableStatement =
        inherit Statement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract declarationList: VariableDeclarationList

    type [<AllowNullLiteral>] ExpressionStatement =
        inherit Statement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract expression: Expression

    type [<AllowNullLiteral>] IfStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract expression: Expression
        abstract thenStatement: Statement
        abstract elseStatement: Statement option

    type [<AllowNullLiteral>] IterationStatement =
        inherit Statement
        abstract statement: Statement

    type [<AllowNullLiteral>] DoStatement =
        inherit IterationStatement
        abstract kind: SyntaxKind
        abstract expression: Expression

    type [<AllowNullLiteral>] WhileStatement =
        inherit IterationStatement
        abstract kind: SyntaxKind
        abstract expression: Expression

    type ForInitializer =
        U2<VariableDeclarationList, Expression>

    type [<AllowNullLiteral>] ForStatement =
        inherit IterationStatement
        abstract kind: SyntaxKind
        abstract initializer: ForInitializer option
        abstract condition: Expression option
        abstract incrementor: Expression option

    type ForInOrOfStatement =
        U2<ForInStatement, ForOfStatement>

    type [<AllowNullLiteral>] ForInStatement =
        inherit IterationStatement
        abstract kind: SyntaxKind
        abstract initializer: ForInitializer
        abstract expression: Expression

    type [<AllowNullLiteral>] ForOfStatement =
        inherit IterationStatement
        abstract kind: SyntaxKind
        abstract awaitModifier: AwaitKeywordToken option
        abstract initializer: ForInitializer
        abstract expression: Expression

    type [<AllowNullLiteral>] BreakStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract label: Identifier option

    type [<AllowNullLiteral>] ContinueStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract label: Identifier option

    type BreakOrContinueStatement =
        U2<BreakStatement, ContinueStatement>

    type [<AllowNullLiteral>] ReturnStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract expression: Expression option

    type [<AllowNullLiteral>] WithStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract expression: Expression
        abstract statement: Statement

    type [<AllowNullLiteral>] SwitchStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract expression: Expression
        abstract caseBlock: CaseBlock
        abstract possiblyExhaustive: bool option with get, set

    type [<AllowNullLiteral>] CaseBlock =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: SwitchStatement
        abstract clauses: ResizeArray<CaseOrDefaultClause>

    type [<AllowNullLiteral>] CaseClause =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: CaseBlock
        abstract expression: Expression
        abstract statements: ResizeArray<Statement>

    type [<AllowNullLiteral>] DefaultClause =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: CaseBlock
        abstract statements: ResizeArray<Statement>

    type CaseOrDefaultClause =
        U2<CaseClause, DefaultClause>

    type [<AllowNullLiteral>] LabeledStatement =
        inherit Statement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract label: Identifier
        abstract statement: Statement

    type [<AllowNullLiteral>] ThrowStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract expression: Expression

    type [<AllowNullLiteral>] TryStatement =
        inherit Statement
        abstract kind: SyntaxKind
        abstract tryBlock: Block
        abstract catchClause: CatchClause option
        abstract finallyBlock: Block option

    type [<AllowNullLiteral>] CatchClause =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: TryStatement
        abstract variableDeclaration: VariableDeclaration option
        abstract block: Block

    type ObjectTypeDeclaration =
        U3<ClassLikeDeclaration, InterfaceDeclaration, TypeLiteralNode>

    type DeclarationWithTypeParameters =
        U4<DeclarationWithTypeParameterChildren, JSDocTypedefTag, JSDocCallbackTag, JSDocSignature>

    type DeclarationWithTypeParameterChildren =
        U5<SignatureDeclaration, ClassLikeDeclaration, InterfaceDeclaration, TypeAliasDeclaration, JSDocTemplateTag>

    type [<AllowNullLiteral>] ClassLikeDeclarationBase =
        inherit NamedDeclaration
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract name: Identifier option
        abstract typeParameters: ResizeArray<TypeParameterDeclaration> option
        abstract heritageClauses: ResizeArray<HeritageClause> option
        abstract members: ResizeArray<ClassElement>

    type [<AllowNullLiteral>] ClassDeclaration =
        inherit ClassLikeDeclarationBase
        inherit DeclarationStatement
        abstract kind: SyntaxKind
        /// May be undefined in `export default class { ... }`.
        abstract name: Identifier option

    type [<AllowNullLiteral>] ClassExpression =
        inherit ClassLikeDeclarationBase
        inherit PrimaryExpression
        abstract kind: SyntaxKind

    type ClassLikeDeclaration =
        U2<ClassDeclaration, ClassExpression>

    type [<AllowNullLiteral>] ClassElement =
        inherit NamedDeclaration
        abstract _classElementBrand: obj option with get, set
        abstract name: PropertyName option

    type [<AllowNullLiteral>] TypeElement =
        inherit NamedDeclaration
        abstract _typeElementBrand: obj option with get, set
        abstract name: PropertyName option
        abstract questionToken: QuestionToken option

    type [<AllowNullLiteral>] InterfaceDeclaration =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract name: Identifier
        abstract typeParameters: ResizeArray<TypeParameterDeclaration> option
        abstract heritageClauses: ResizeArray<HeritageClause> option
        abstract members: ResizeArray<TypeElement>

    type [<AllowNullLiteral>] HeritageClause =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: U2<InterfaceDeclaration, ClassLikeDeclaration>
        abstract token: SyntaxKind
        abstract types: ResizeArray<ExpressionWithTypeArguments>

    type [<AllowNullLiteral>] TypeAliasDeclaration =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract name: Identifier
        abstract typeParameters: ResizeArray<TypeParameterDeclaration> option
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] EnumMember =
        inherit NamedDeclaration
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: EnumDeclaration
        abstract name: PropertyName
        abstract initializer: Expression option

    type [<AllowNullLiteral>] EnumDeclaration =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract name: Identifier
        abstract members: ResizeArray<EnumMember>

    type ModuleName =
        U2<Identifier, StringLiteral>

    type ModuleBody =
        U2<NamespaceBody, JSDocNamespaceBody>

    type [<AllowNullLiteral>] ModuleDeclaration =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: U2<ModuleBody, SourceFile>
        abstract name: ModuleName
        abstract body: U2<ModuleBody, JSDocNamespaceDeclaration> option

    type NamespaceBody =
        U2<ModuleBlock, NamespaceDeclaration>

    type [<AllowNullLiteral>] NamespaceDeclaration =
        inherit ModuleDeclaration
        abstract name: Identifier
        abstract body: NamespaceBody

    type JSDocNamespaceBody =
        U2<Identifier, JSDocNamespaceDeclaration>

    type [<AllowNullLiteral>] JSDocNamespaceDeclaration =
        inherit ModuleDeclaration
        abstract name: Identifier
        abstract body: JSDocNamespaceBody option

    type [<AllowNullLiteral>] ModuleBlock =
        inherit Node
        inherit Statement
        abstract kind: SyntaxKind
        abstract parent: ModuleDeclaration
        abstract statements: ResizeArray<Statement>

    type ModuleReference =
        U2<EntityName, ExternalModuleReference>

    /// One of:
    /// - import x = require("mod");
    /// - import x = M.x;
    type [<AllowNullLiteral>] ImportEqualsDeclaration =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: U2<SourceFile, ModuleBlock>
        abstract name: Identifier
        abstract isTypeOnly: bool
        abstract moduleReference: ModuleReference

    type [<AllowNullLiteral>] ExternalModuleReference =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: ImportEqualsDeclaration
        abstract expression: Expression

    type [<AllowNullLiteral>] ImportDeclaration =
        inherit Statement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: U2<SourceFile, ModuleBlock>
        abstract importClause: ImportClause option
        /// If this is not a StringLiteral it will be a grammar error.
        abstract moduleSpecifier: Expression

    type NamedImportBindings =
        U2<NamespaceImport, NamedImports>

    type NamedExportBindings =
        U2<NamespaceExport, NamedExports>

    type [<AllowNullLiteral>] ImportClause =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: ImportDeclaration
        abstract isTypeOnly: bool
        abstract name: Identifier option
        abstract namedBindings: NamedImportBindings option

    type [<AllowNullLiteral>] NamespaceImport =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: ImportClause
        abstract name: Identifier

    type [<AllowNullLiteral>] NamespaceExport =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: ExportDeclaration
        abstract name: Identifier

    type [<AllowNullLiteral>] NamespaceExportDeclaration =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract name: Identifier

    type [<AllowNullLiteral>] ExportDeclaration =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: U2<SourceFile, ModuleBlock>
        abstract isTypeOnly: bool
        /// Will not be assigned in the case of `export * from "foo";`
        abstract exportClause: NamedExportBindings option
        /// If this is not a StringLiteral it will be a grammar error.
        abstract moduleSpecifier: Expression option

    type [<AllowNullLiteral>] NamedImports =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: ImportClause
        abstract elements: ResizeArray<ImportSpecifier>

    type [<AllowNullLiteral>] NamedExports =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: ExportDeclaration
        abstract elements: ResizeArray<ExportSpecifier>

    type NamedImportsOrExports =
        U2<NamedImports, NamedExports>

    type [<AllowNullLiteral>] ImportSpecifier =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: NamedImports
        abstract propertyName: Identifier option
        abstract name: Identifier

    type [<AllowNullLiteral>] ExportSpecifier =
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: NamedExports
        abstract propertyName: Identifier option
        abstract name: Identifier

    type ImportOrExportSpecifier =
        U2<ImportSpecifier, ExportSpecifier>

    type TypeOnlyCompatibleAliasDeclaration =
        U4<ImportClause, ImportEqualsDeclaration, NamespaceImport, ImportOrExportSpecifier>

    /// This is either an `export =` or an `export default` declaration.
    /// Unless `isExportEquals` is set, this node was parsed as an `export default`.
    type [<AllowNullLiteral>] ExportAssignment =
        inherit DeclarationStatement
        inherit JSDocContainer
        abstract kind: SyntaxKind
        abstract parent: SourceFile
        abstract isExportEquals: bool option
        abstract expression: Expression

    type [<AllowNullLiteral>] FileReference =
        inherit TextRange
        abstract fileName: string with get, set

    type [<AllowNullLiteral>] CheckJsDirective =
        inherit TextRange
        abstract enabled: bool with get, set

    type CommentKind =
        SyntaxKind

    type [<AllowNullLiteral>] CommentRange =
        inherit TextRange
        abstract hasTrailingNewLine: bool option with get, set
        abstract kind: CommentKind with get, set

    type [<AllowNullLiteral>] SynthesizedComment =
        inherit CommentRange
        abstract text: string with get, set
        abstract pos: obj with get, set
        abstract ``end``: obj with get, set
        abstract hasLeadingNewline: bool option with get, set

    type [<AllowNullLiteral>] JSDocTypeExpression =
        inherit TypeNode
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] JSDocNameReference =
        inherit Node
        abstract kind: SyntaxKind
        abstract name: EntityName

    type [<AllowNullLiteral>] JSDocType =
        inherit TypeNode
        abstract _jsDocTypeBrand: obj option with get, set

    type [<AllowNullLiteral>] JSDocAllType =
        inherit JSDocType
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocUnknownType =
        inherit JSDocType
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocNonNullableType =
        inherit JSDocType
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] JSDocNullableType =
        inherit JSDocType
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] JSDocOptionalType =
        inherit JSDocType
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] JSDocFunctionType =
        inherit JSDocType
        inherit SignatureDeclarationBase
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocVariadicType =
        inherit JSDocType
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type [<AllowNullLiteral>] JSDocNamepathType =
        inherit JSDocType
        abstract kind: SyntaxKind
        abstract ``type``: TypeNode

    type JSDocTypeReferencingNode =
        U4<JSDocVariadicType, JSDocOptionalType, JSDocNullableType, JSDocNonNullableType>

    type [<AllowNullLiteral>] JSDoc =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: HasJSDoc
        abstract tags: ResizeArray<JSDocTag> option
        abstract comment: string option

    type [<AllowNullLiteral>] JSDocTag =
        inherit Node
        abstract parent: U2<JSDoc, JSDocTypeLiteral>
        abstract tagName: Identifier
        abstract comment: string option

    type [<AllowNullLiteral>] JSDocUnknownTag =
        inherit JSDocTag
        abstract kind: SyntaxKind

    /// Note that `@extends` is a synonym of `@augments`.
    /// Both tags are represented by this interface.
    type [<AllowNullLiteral>] JSDocAugmentsTag =
        inherit JSDocTag
        abstract kind: SyntaxKind
        abstract ``class``: obj

    type [<AllowNullLiteral>] JSDocImplementsTag =
        inherit JSDocTag
        abstract kind: SyntaxKind
        abstract ``class``: obj

    type [<AllowNullLiteral>] JSDocAuthorTag =
        inherit JSDocTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocDeprecatedTag =
        inherit JSDocTag
        abstract kind: SyntaxKind with get, set

    type [<AllowNullLiteral>] JSDocClassTag =
        inherit JSDocTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocPublicTag =
        inherit JSDocTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocPrivateTag =
        inherit JSDocTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocProtectedTag =
        inherit JSDocTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocReadonlyTag =
        inherit JSDocTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocEnumTag =
        inherit JSDocTag
        inherit Declaration
        abstract kind: SyntaxKind
        abstract parent: JSDoc
        abstract typeExpression: JSDocTypeExpression

    type [<AllowNullLiteral>] JSDocThisTag =
        inherit JSDocTag
        abstract kind: SyntaxKind
        abstract typeExpression: JSDocTypeExpression

    type [<AllowNullLiteral>] JSDocTemplateTag =
        inherit JSDocTag
        abstract kind: SyntaxKind
        abstract ``constraint``: JSDocTypeExpression option
        abstract typeParameters: ResizeArray<TypeParameterDeclaration>

    type [<AllowNullLiteral>] JSDocSeeTag =
        inherit JSDocTag
        abstract kind: SyntaxKind
        abstract name: JSDocNameReference option

    type [<AllowNullLiteral>] JSDocReturnTag =
        inherit JSDocTag
        abstract kind: SyntaxKind
        abstract typeExpression: JSDocTypeExpression option

    type [<AllowNullLiteral>] JSDocTypeTag =
        inherit JSDocTag
        abstract kind: SyntaxKind
        abstract typeExpression: JSDocTypeExpression

    type [<AllowNullLiteral>] JSDocTypedefTag =
        inherit JSDocTag
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: JSDoc
        abstract fullName: U2<JSDocNamespaceDeclaration, Identifier> option
        abstract name: Identifier option
        abstract typeExpression: U2<JSDocTypeExpression, JSDocTypeLiteral> option

    type [<AllowNullLiteral>] JSDocCallbackTag =
        inherit JSDocTag
        inherit NamedDeclaration
        abstract kind: SyntaxKind
        abstract parent: JSDoc
        abstract fullName: U2<JSDocNamespaceDeclaration, Identifier> option
        abstract name: Identifier option
        abstract typeExpression: JSDocSignature

    type [<AllowNullLiteral>] JSDocSignature =
        inherit JSDocType
        inherit Declaration
        abstract kind: SyntaxKind
        abstract typeParameters: ResizeArray<JSDocTemplateTag> option
        abstract parameters: ResizeArray<JSDocParameterTag>
        abstract ``type``: JSDocReturnTag option

    type [<AllowNullLiteral>] JSDocPropertyLikeTag =
        inherit JSDocTag
        inherit Declaration
        abstract parent: JSDoc
        abstract name: EntityName
        abstract typeExpression: JSDocTypeExpression option
        /// Whether the property name came before the type -- non-standard for JSDoc, but Typescript-like
        abstract isNameFirst: bool
        abstract isBracketed: bool

    type [<AllowNullLiteral>] JSDocPropertyTag =
        inherit JSDocPropertyLikeTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocParameterTag =
        inherit JSDocPropertyLikeTag
        abstract kind: SyntaxKind

    type [<AllowNullLiteral>] JSDocTypeLiteral =
        inherit JSDocType
        abstract kind: SyntaxKind
        abstract jsDocPropertyTags: ResizeArray<JSDocPropertyLikeTag> option
        /// If true, then this type literal represents an *array* of its type.
        abstract isArrayType: bool

    type [<RequireQualifiedAccess>] FlowFlags =
        | Unreachable = 1
        | Start = 2
        | BranchLabel = 4
        | LoopLabel = 8
        | Assignment = 16
        | TrueCondition = 32
        | FalseCondition = 64
        | SwitchClause = 128
        | ArrayMutation = 256
        | Call = 512
        | ReduceLabel = 1024
        | Referenced = 2048
        | Shared = 4096
        | Label = 12
        | Condition = 96

    type FlowNode =
        U8<FlowStart, FlowLabel, FlowAssignment, FlowCall, FlowCondition, FlowSwitchClause, FlowArrayMutation, FlowReduceLabel>

    type [<AllowNullLiteral>] FlowNodeBase =
        abstract flags: FlowFlags with get, set
        abstract id: float option with get, set

    type [<AllowNullLiteral>] FlowStart =
        inherit FlowNodeBase
        abstract node: U3<FunctionExpression, ArrowFunction, MethodDeclaration> option with get, set

    type [<AllowNullLiteral>] FlowLabel =
        inherit FlowNodeBase
        abstract antecedents: ResizeArray<FlowNode> option with get, set

    type [<AllowNullLiteral>] FlowAssignment =
        inherit FlowNodeBase
        abstract node: U3<Expression, VariableDeclaration, BindingElement> with get, set
        abstract antecedent: FlowNode with get, set

    type [<AllowNullLiteral>] FlowCall =
        inherit FlowNodeBase
        abstract node: CallExpression with get, set
        abstract antecedent: FlowNode with get, set

    type [<AllowNullLiteral>] FlowCondition =
        inherit FlowNodeBase
        abstract node: Expression with get, set
        abstract antecedent: FlowNode with get, set

    type [<AllowNullLiteral>] FlowSwitchClause =
        inherit FlowNodeBase
        abstract switchStatement: SwitchStatement with get, set
        abstract clauseStart: float with get, set
        abstract clauseEnd: float with get, set
        abstract antecedent: FlowNode with get, set

    type [<AllowNullLiteral>] FlowArrayMutation =
        inherit FlowNodeBase
        abstract node: U2<CallExpression, BinaryExpression> with get, set
        abstract antecedent: FlowNode with get, set

    type [<AllowNullLiteral>] FlowReduceLabel =
        inherit FlowNodeBase
        abstract target: FlowLabel with get, set
        abstract antecedents: ResizeArray<FlowNode> with get, set
        abstract antecedent: FlowNode with get, set

    type FlowType =
        U2<Type, IncompleteType>

    type [<AllowNullLiteral>] IncompleteType =
        abstract flags: TypeFlags with get, set
        abstract ``type``: Type with get, set

    type [<AllowNullLiteral>] AmdDependency =
        abstract path: string with get, set
        abstract name: string option with get, set

    type [<AllowNullLiteral>] SourceFile =
        inherit Declaration
        abstract kind: SyntaxKind
        abstract statements: ResizeArray<Statement>
        abstract endOfFileToken: Token<SyntaxKind>
        abstract fileName: string with get, set
        abstract text: string with get, set
        abstract amdDependencies: ResizeArray<AmdDependency> with get, set
        abstract moduleName: string option with get, set
        abstract referencedFiles: ResizeArray<FileReference> with get, set
        abstract typeReferenceDirectives: ResizeArray<FileReference> with get, set
        abstract libReferenceDirectives: ResizeArray<FileReference> with get, set
        abstract languageVariant: LanguageVariant with get, set
        abstract isDeclarationFile: bool with get, set
        /// lib.d.ts should have a reference comment like
        /// 
        ///   /// <reference no-default-lib="true"/>
        /// 
        /// If any other file has this comment, it signals not to include lib.d.ts
        /// because this containing file is intended to act as a default library.
        abstract hasNoDefaultLib: bool with get, set
        abstract languageVersion: ScriptTarget with get, set
        abstract getLineAndCharacterOfPosition: pos: float -> LineAndCharacter
        abstract getLineEndOfPosition: pos: float -> float
        abstract getLineStarts: unit -> ResizeArray<float>
        abstract getPositionOfLineAndCharacter: line: float * character: float -> float
        abstract update: newText: string * textChangeRange: TextChangeRange -> SourceFile

    type [<AllowNullLiteral>] Bundle =
        inherit Node
        abstract kind: SyntaxKind
        abstract prepends: ResizeArray<U2<InputFiles, UnparsedSource>>
        abstract sourceFiles: ResizeArray<SourceFile>

    type [<AllowNullLiteral>] InputFiles =
        inherit Node
        abstract kind: SyntaxKind
        abstract javascriptPath: string option with get, set
        abstract javascriptText: string with get, set
        abstract javascriptMapPath: string option with get, set
        abstract javascriptMapText: string option with get, set
        abstract declarationPath: string option with get, set
        abstract declarationText: string with get, set
        abstract declarationMapPath: string option with get, set
        abstract declarationMapText: string option with get, set

    type [<AllowNullLiteral>] UnparsedSource =
        inherit Node
        abstract kind: SyntaxKind
        abstract fileName: string with get, set
        abstract text: string with get, set
        abstract prologues: ResizeArray<UnparsedPrologue>
        abstract helpers: ResizeArray<UnscopedEmitHelper> option with get, set
        abstract referencedFiles: ResizeArray<FileReference> with get, set
        abstract typeReferenceDirectives: ResizeArray<string> option with get, set
        abstract libReferenceDirectives: ResizeArray<FileReference> with get, set
        abstract hasNoDefaultLib: bool option with get, set
        abstract sourceMapPath: string option with get, set
        abstract sourceMapText: string option with get, set
        abstract syntheticReferences: ResizeArray<UnparsedSyntheticReference> option
        abstract texts: ResizeArray<UnparsedSourceText>

    type UnparsedSourceText =
        U2<UnparsedPrepend, UnparsedTextLike>

    type UnparsedNode =
        U3<UnparsedPrologue, UnparsedSourceText, UnparsedSyntheticReference>

    type [<AllowNullLiteral>] UnparsedSection =
        inherit Node
        abstract kind: SyntaxKind
        abstract parent: UnparsedSource
        abstract data: string option

    type [<AllowNullLiteral>] UnparsedPrologue =
        inherit UnparsedSection
        abstract kind: SyntaxKind
        abstract parent: UnparsedSource
        abstract data: string

    type [<AllowNullLiteral>] UnparsedPrepend =
        inherit UnparsedSection
        abstract kind: SyntaxKind
        abstract parent: UnparsedSource
        abstract data: string
        abstract texts: ResizeArray<UnparsedTextLike>

    type [<AllowNullLiteral>] UnparsedTextLike =
        inherit UnparsedSection
        abstract kind: SyntaxKind
        abstract parent: UnparsedSource

    type [<AllowNullLiteral>] UnparsedSyntheticReference =
        inherit UnparsedSection
        abstract kind: SyntaxKind
        abstract parent: UnparsedSource

    type [<AllowNullLiteral>] JsonSourceFile =
        inherit SourceFile
        abstract statements: ResizeArray<JsonObjectExpressionStatement>

    type [<AllowNullLiteral>] TsConfigSourceFile =
        inherit JsonSourceFile
        abstract extendedSourceFiles: ResizeArray<string> option with get, set

    type [<AllowNullLiteral>] JsonMinusNumericLiteral =
        inherit PrefixUnaryExpression
        abstract kind: SyntaxKind
        abstract operator: SyntaxKind
        abstract operand: NumericLiteral

    type JsonObjectExpression =
        U7<ObjectLiteralExpression, ArrayLiteralExpression, JsonMinusNumericLiteral, NumericLiteral, StringLiteral, BooleanLiteral, NullLiteral>

    type [<AllowNullLiteral>] JsonObjectExpressionStatement =
        inherit ExpressionStatement
        abstract expression: JsonObjectExpression

    type [<AllowNullLiteral>] ScriptReferenceHost =
        abstract getCompilerOptions: unit -> CompilerOptions
        abstract getSourceFile: fileName: string -> SourceFile option
        abstract getSourceFileByPath: path: Path -> SourceFile option
        abstract getCurrentDirectory: unit -> string

    type [<AllowNullLiteral>] ParseConfigHost =
        abstract useCaseSensitiveFileNames: bool with get, set
        abstract readDirectory: rootDir: string * extensions: ResizeArray<string> * excludes: ResizeArray<string> option * includes: ResizeArray<string> * ?depth: float -> ResizeArray<string>
        /// <summary>Gets a value indicating whether the specified path exists and is a file.</summary>
        /// <param name="path">The path to test.</param>
        abstract fileExists: path: string -> bool
        abstract readFile: path: string -> string option
        abstract trace: s: string -> unit

    type [<AllowNullLiteral>] ResolvedConfigFileName =
        interface end

    type [<AllowNullLiteral>] WriteFileCallback =
        [<Emit "$0($1...)">] abstract Invoke: fileName: string * data: string * writeByteOrderMark: bool * ?onError: (string -> unit) * ?sourceFiles: ResizeArray<SourceFile> -> unit

    type [<AllowNullLiteral>] OperationCanceledException =
        interface end

    type [<AllowNullLiteral>] OperationCanceledExceptionStatic =
        [<Emit "new $0($1...)">] abstract Create: unit -> OperationCanceledException

    type [<AllowNullLiteral>] CancellationToken =
        abstract isCancellationRequested: unit -> bool
        abstract throwIfCancellationRequested: unit -> unit

    type [<AllowNullLiteral>] Program =
        inherit ScriptReferenceHost
        abstract getCurrentDirectory: unit -> string
        /// Get a list of root file names that were passed to a 'createProgram'
        abstract getRootFileNames: unit -> ResizeArray<string>
        /// Get a list of files in the program
        abstract getSourceFiles: unit -> ResizeArray<SourceFile>
        /// Emits the JavaScript and declaration files.  If targetSourceFile is not specified, then
        /// the JavaScript and declaration files will be produced for all the files in this program.
        /// If targetSourceFile is specified, then only the JavaScript and declaration for that
        /// specific file will be generated.
        /// 
        /// If writeFile is not specified then the writeFile callback from the compiler host will be
        /// used for writing the JavaScript and declaration files.  Otherwise, the writeFile parameter
        /// will be invoked when writing the JavaScript and declaration files.
        abstract emit: ?targetSourceFile: SourceFile * ?writeFile: WriteFileCallback * ?cancellationToken: CancellationToken * ?emitOnlyDtsFiles: bool * ?customTransformers: CustomTransformers -> EmitResult
        abstract getOptionsDiagnostics: ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract getGlobalDiagnostics: ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract getSyntacticDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<DiagnosticWithLocation>
        /// The first time this is called, it will return global diagnostics (no location).
        abstract getSemanticDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract getDeclarationDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<DiagnosticWithLocation>
        abstract getConfigFileParsingDiagnostics: unit -> ResizeArray<Diagnostic>
        /// Gets a type checker that can be used to semantically analyze source files in the program.
        abstract getTypeChecker: unit -> TypeChecker
        abstract getTypeCatalog: unit -> ResizeArray<Type>
        abstract getNodeCount: unit -> float
        abstract getIdentifierCount: unit -> float
        abstract getSymbolCount: unit -> float
        abstract getTypeCount: unit -> float
        abstract getInstantiationCount: unit -> float
        abstract getRelationCacheSizes: unit -> ProgramGetRelationCacheSizesReturn
        abstract isSourceFileFromExternalLibrary: file: SourceFile -> bool
        abstract isSourceFileDefaultLibrary: file: SourceFile -> bool
        abstract getProjectReferences: unit -> ResizeArray<ProjectReference> option
        abstract getResolvedProjectReferences: unit -> ResizeArray<ResolvedProjectReference option> option

    type [<AllowNullLiteral>] ProgramGetRelationCacheSizesReturn =
        abstract assignable: float with get, set
        abstract identity: float with get, set
        abstract subtype: float with get, set
        abstract strictSubtype: float with get, set

    type [<AllowNullLiteral>] ResolvedProjectReference =
        abstract commandLine: ParsedCommandLine with get, set
        abstract sourceFile: SourceFile with get, set
        abstract references: ResizeArray<ResolvedProjectReference option> option with get, set

    type [<AllowNullLiteral>] CustomTransformerFactory =
        [<Emit "$0($1...)">] abstract Invoke: context: TransformationContext -> CustomTransformer

    type [<AllowNullLiteral>] CustomTransformer =
        abstract transformSourceFile: node: SourceFile -> SourceFile
        abstract transformBundle: node: Bundle -> Bundle

    type [<AllowNullLiteral>] CustomTransformers =
        /// Custom transformers to evaluate before built-in .js transformations.
        abstract before: ResizeArray<U2<TransformerFactory<SourceFile>, CustomTransformerFactory>> option with get, set
        /// Custom transformers to evaluate after built-in .js transformations.
        abstract after: ResizeArray<U2<TransformerFactory<SourceFile>, CustomTransformerFactory>> option with get, set
        /// Custom transformers to evaluate after built-in .d.ts transformations.
        abstract afterDeclarations: ResizeArray<U2<TransformerFactory<U2<Bundle, SourceFile>>, CustomTransformerFactory>> option with get, set

    type [<AllowNullLiteral>] SourceMapSpan =
        /// Line number in the .js file.
        abstract emittedLine: float with get, set
        /// Column number in the .js file.
        abstract emittedColumn: float with get, set
        /// Line number in the .ts file.
        abstract sourceLine: float with get, set
        /// Column number in the .ts file.
        abstract sourceColumn: float with get, set
        /// Optional name (index into names array) associated with this span.
        abstract nameIndex: float option with get, set
        /// .ts file (index into sources array) associated with this span
        abstract sourceIndex: float with get, set

    type [<RequireQualifiedAccess>] ExitStatus =
        | Success = 0
        | DiagnosticsPresent_OutputsSkipped = 1
        | DiagnosticsPresent_OutputsGenerated = 2
        | InvalidProject_OutputsSkipped = 3
        | ProjectReferenceCycle_OutputsSkipped = 4
        | ProjectReferenceCycle_OutputsSkupped = 4

    type [<AllowNullLiteral>] EmitResult =
        abstract emitSkipped: bool with get, set
        /// Contains declaration emit diagnostics
        abstract diagnostics: ResizeArray<Diagnostic> with get, set
        abstract emittedFiles: ResizeArray<string> option with get, set

    type [<AllowNullLiteral>] TypeChecker =
        abstract getTypeOfSymbolAtLocation: symbol: Symbol * node: Node -> Type
        abstract getDeclaredTypeOfSymbol: symbol: Symbol -> Type
        abstract getPropertiesOfType: ``type``: Type -> ResizeArray<Symbol>
        abstract getPropertyOfType: ``type``: Type * propertyName: string -> Symbol option
        abstract getPrivateIdentifierPropertyOfType: leftType: Type * name: string * location: Node -> Symbol option
        abstract getIndexInfoOfType: ``type``: Type * kind: IndexKind -> IndexInfo option
        abstract getSignaturesOfType: ``type``: Type * kind: SignatureKind -> ResizeArray<Signature>
        abstract getIndexTypeOfType: ``type``: Type * kind: IndexKind -> Type option
        abstract getBaseTypes: ``type``: InterfaceType -> ResizeArray<BaseType>
        abstract getBaseTypeOfLiteralType: ``type``: Type -> Type
        abstract getWidenedType: ``type``: Type -> Type
        abstract getReturnTypeOfSignature: signature: Signature -> Type
        abstract getNullableType: ``type``: Type * flags: TypeFlags -> Type
        abstract getNonNullableType: ``type``: Type -> Type
        abstract getTypeArguments: ``type``: TypeReference -> ResizeArray<Type>
        /// Note that the resulting nodes cannot be checked.
        abstract typeToTypeNode: ``type``: Type * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> TypeNode option
        /// Note that the resulting nodes cannot be checked.
        abstract signatureToSignatureDeclaration: signature: Signature * kind: SyntaxKind * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> obj option
        /// Note that the resulting nodes cannot be checked.
        abstract indexInfoToIndexSignatureDeclaration: indexInfo: IndexInfo * kind: IndexKind * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> IndexSignatureDeclaration option
        /// Note that the resulting nodes cannot be checked.
        abstract symbolToEntityName: symbol: Symbol * meaning: SymbolFlags * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> EntityName option
        /// Note that the resulting nodes cannot be checked.
        abstract symbolToExpression: symbol: Symbol * meaning: SymbolFlags * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> Expression option
        /// Note that the resulting nodes cannot be checked.
        abstract symbolToTypeParameterDeclarations: symbol: Symbol * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> ResizeArray<TypeParameterDeclaration> option
        /// Note that the resulting nodes cannot be checked.
        abstract symbolToParameterDeclaration: symbol: Symbol * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> ParameterDeclaration option
        /// Note that the resulting nodes cannot be checked.
        abstract typeParameterToDeclaration: parameter: TypeParameter * enclosingDeclaration: Node option * flags: NodeBuilderFlags option -> TypeParameterDeclaration option
        abstract getSymbolsInScope: location: Node * meaning: SymbolFlags -> ResizeArray<Symbol>
        abstract getSymbolAtLocation: node: Node -> Symbol option
        abstract getSymbolsOfParameterPropertyDeclaration: parameter: ParameterDeclaration * parameterName: string -> ResizeArray<Symbol>
        /// The function returns the value (local variable) symbol of an identifier in the short-hand property assignment.
        /// This is necessary as an identifier in short-hand property assignment can contains two meaning: property name and property value.
        abstract getShorthandAssignmentValueSymbol: location: Node -> Symbol option
        abstract getExportSpecifierLocalTargetSymbol: location: U2<ExportSpecifier, Identifier> -> Symbol option
        /// If a symbol is a local symbol with an associated exported symbol, returns the exported symbol.
        /// Otherwise returns its input.
        /// For example, at `export type T = number;`:
        ///      - `getSymbolAtLocation` at the location `T` will return the exported symbol for `T`.
        ///      - But the result of `getSymbolsInScope` will contain the *local* symbol for `T`, not the exported symbol.
        ///      - Calling `getExportSymbolOfSymbol` on that local symbol will return the exported symbol.
        abstract getExportSymbolOfSymbol: symbol: Symbol -> Symbol
        abstract getPropertySymbolOfDestructuringAssignment: location: Identifier -> Symbol option
        abstract getTypeOfAssignmentPattern: pattern: AssignmentPattern -> Type
        abstract getTypeAtLocation: node: Node -> Type
        abstract getTypeFromTypeNode: node: TypeNode -> Type
        abstract signatureToString: signature: Signature * ?enclosingDeclaration: Node * ?flags: TypeFormatFlags * ?kind: SignatureKind -> string
        abstract typeToString: ``type``: Type * ?enclosingDeclaration: Node * ?flags: TypeFormatFlags -> string
        abstract symbolToString: symbol: Symbol * ?enclosingDeclaration: Node * ?meaning: SymbolFlags * ?flags: SymbolFormatFlags -> string
        abstract typePredicateToString: predicate: TypePredicate * ?enclosingDeclaration: Node * ?flags: TypeFormatFlags -> string
        abstract getFullyQualifiedName: symbol: Symbol -> string
        abstract getAugmentedPropertiesOfType: ``type``: Type -> ResizeArray<Symbol>
        abstract getRootSymbols: symbol: Symbol -> ResizeArray<Symbol>
        abstract getSymbolOfExpando: node: Node * allowDeclaration: bool -> Symbol option
        abstract getContextualType: node: Expression -> Type option
        /// <summary>returns unknownSignature in the case of an error.
        /// returns undefined if the node is not valid.</summary>
        /// <param name="argumentCount">Apparent number of arguments, passed in case of a possibly incomplete call. This should come from an ArgumentListInfo. See `signatureHelp.ts`.</param>
        abstract getResolvedSignature: node: CallLikeExpression * ?candidatesOutArray: ResizeArray<Signature> * ?argumentCount: float -> Signature option
        abstract getSignatureFromDeclaration: declaration: SignatureDeclaration -> Signature option
        abstract isImplementationOfOverload: node: SignatureDeclaration -> bool option
        abstract isUndefinedSymbol: symbol: Symbol -> bool
        abstract isArgumentsSymbol: symbol: Symbol -> bool
        abstract isUnknownSymbol: symbol: Symbol -> bool
        abstract getConstantValue: node: U3<EnumMember, PropertyAccessExpression, ElementAccessExpression> -> U2<string, float> option
        abstract isValidPropertyAccess: node: U3<PropertyAccessExpression, QualifiedName, ImportTypeNode> * propertyName: string -> bool
        /// Follow all aliases to get the original symbol.
        abstract getAliasedSymbol: symbol: Symbol -> Symbol
        abstract getExportsOfModule: moduleSymbol: Symbol -> ResizeArray<Symbol>
        abstract getJsxIntrinsicTagNamesAt: location: Node -> ResizeArray<Symbol>
        abstract isOptionalParameter: node: ParameterDeclaration -> bool
        abstract getAmbientModules: unit -> ResizeArray<Symbol>
        abstract tryGetMemberInModuleExports: memberName: string * moduleSymbol: Symbol -> Symbol option
        abstract getApparentType: ``type``: Type -> Type
        abstract getBaseConstraintOfType: ``type``: Type -> Type option
        abstract getDefaultFromTypeParameter: ``type``: Type -> Type option
        /// Depending on the operation performed, it may be appropriate to throw away the checker
        /// if the cancellation token is triggered. Typically, if it is used for error checking
        /// and the operation is cancelled, then it should be discarded, otherwise it is safe to keep.
        abstract runWithCancellationToken: token: CancellationToken * cb: (TypeChecker -> 'T) -> 'T

    type [<RequireQualifiedAccess>] NodeBuilderFlags =
        | None = 0
        | NoTruncation = 1
        | WriteArrayAsGenericType = 2
        | GenerateNamesForShadowedTypeParams = 4
        | UseStructuralFallback = 8
        | ForbidIndexedAccessSymbolReferences = 16
        | WriteTypeArgumentsOfSignature = 32
        | UseFullyQualifiedType = 64
        | UseOnlyExternalAliasing = 128
        | SuppressAnyReturnType = 256
        | WriteTypeParametersInQualifiedName = 512
        | MultilineObjectLiterals = 1024
        | WriteClassExpressionAsTypeLiteral = 2048
        | UseTypeOfFunction = 4096
        | OmitParameterModifiers = 8192
        | UseAliasDefinedOutsideCurrentScope = 16384
        | UseSingleQuotesForStringLiteralType = 268435456
        | NoTypeReduction = 536870912
        | NoUndefinedOptionalParameterType = 1073741824
        | AllowThisInObjectLiteral = 32768
        | AllowQualifedNameInPlaceOfIdentifier = 65536
        | AllowAnonymousIdentifier = 131072
        | AllowEmptyUnionOrIntersection = 262144
        | AllowEmptyTuple = 524288
        | AllowUniqueESSymbolType = 1048576
        | AllowEmptyIndexInfoType = 2097152
        | AllowNodeModulesRelativePaths = 67108864
        | IgnoreErrors = 70221824
        | InObjectTypeLiteral = 4194304
        | InTypeAlias = 8388608
        | InInitialEntityName = 16777216
        | InReverseMappedType = 33554432

    type [<RequireQualifiedAccess>] TypeFormatFlags =
        | None = 0
        | NoTruncation = 1
        | WriteArrayAsGenericType = 2
        | UseStructuralFallback = 8
        | WriteTypeArgumentsOfSignature = 32
        | UseFullyQualifiedType = 64
        | SuppressAnyReturnType = 256
        | MultilineObjectLiterals = 1024
        | WriteClassExpressionAsTypeLiteral = 2048
        | UseTypeOfFunction = 4096
        | OmitParameterModifiers = 8192
        | UseAliasDefinedOutsideCurrentScope = 16384
        | UseSingleQuotesForStringLiteralType = 268435456
        | NoTypeReduction = 536870912
        | AllowUniqueESSymbolType = 1048576
        | AddUndefined = 131072
        | WriteArrowStyleSignature = 262144
        | InArrayType = 524288
        | InElementType = 2097152
        | InFirstTypeArgument = 4194304
        | InTypeAlias = 8388608
        | WriteOwnNameForAnyLike = 0
        | NodeBuilderFlagsMask = 814775659

    type [<RequireQualifiedAccess>] SymbolFormatFlags =
        | None = 0
        | WriteTypeParametersOrArguments = 1
        | UseOnlyExternalAliasing = 2
        | AllowAnyNodeKind = 4
        | UseAliasDefinedOutsideCurrentScope = 8

    type [<RequireQualifiedAccess>] TypePredicateKind =
        | This = 0
        | Identifier = 1
        | AssertsThis = 2
        | AssertsIdentifier = 3

    type [<AllowNullLiteral>] TypePredicateBase =
        abstract kind: TypePredicateKind with get, set
        abstract ``type``: Type option with get, set

    type [<AllowNullLiteral>] ThisTypePredicate =
        inherit TypePredicateBase
        abstract kind: TypePredicateKind with get, set
        abstract parameterName: obj with get, set
        abstract parameterIndex: obj with get, set
        abstract ``type``: Type with get, set

    type [<AllowNullLiteral>] IdentifierTypePredicate =
        inherit TypePredicateBase
        abstract kind: TypePredicateKind with get, set
        abstract parameterName: string with get, set
        abstract parameterIndex: float with get, set
        abstract ``type``: Type with get, set

    type [<AllowNullLiteral>] AssertsThisTypePredicate =
        inherit TypePredicateBase
        abstract kind: TypePredicateKind with get, set
        abstract parameterName: obj with get, set
        abstract parameterIndex: obj with get, set
        abstract ``type``: Type option with get, set

    type [<AllowNullLiteral>] AssertsIdentifierTypePredicate =
        inherit TypePredicateBase
        abstract kind: TypePredicateKind with get, set
        abstract parameterName: string with get, set
        abstract parameterIndex: float with get, set
        abstract ``type``: Type option with get, set

    type TypePredicate =
        U4<ThisTypePredicate, IdentifierTypePredicate, AssertsThisTypePredicate, AssertsIdentifierTypePredicate>

    type [<RequireQualifiedAccess>] SymbolFlags =
        | None = 0
        | FunctionScopedVariable = 1
        | BlockScopedVariable = 2
        | Property = 4
        | EnumMember = 8
        | Function = 16
        | Class = 32
        | Interface = 64
        | ConstEnum = 128
        | RegularEnum = 256
        | ValueModule = 512
        | NamespaceModule = 1024
        | TypeLiteral = 2048
        | ObjectLiteral = 4096
        | Method = 8192
        | Constructor = 16384
        | GetAccessor = 32768
        | SetAccessor = 65536
        | Signature = 131072
        | TypeParameter = 262144
        | TypeAlias = 524288
        | ExportValue = 1048576
        | Alias = 2097152
        | Prototype = 4194304
        | ExportStar = 8388608
        | Optional = 16777216
        | Transient = 33554432
        | Assignment = 67108864
        | ModuleExports = 134217728
        | Enum = 384
        | Variable = 3
        | Value = 111551
        | Type = 788968
        | Namespace = 1920
        | Module = 1536
        | Accessor = 98304
        | FunctionScopedVariableExcludes = 111550
        | BlockScopedVariableExcludes = 111551
        | ParameterExcludes = 111551
        | PropertyExcludes = 0
        | EnumMemberExcludes = 900095
        | FunctionExcludes = 110991
        | ClassExcludes = 899503
        | InterfaceExcludes = 788872
        | RegularEnumExcludes = 899327
        | ConstEnumExcludes = 899967
        | ValueModuleExcludes = 110735
        | NamespaceModuleExcludes = 0
        | MethodExcludes = 103359
        | GetAccessorExcludes = 46015
        | SetAccessorExcludes = 78783
        | TypeParameterExcludes = 526824
        | TypeAliasExcludes = 788968
        | AliasExcludes = 2097152
        | ModuleMember = 2623475
        | ExportHasLocal = 944
        | BlockScoped = 418
        | PropertyOrAccessor = 98308
        | ClassMember = 106500

    type [<AllowNullLiteral>] Symbol =
        abstract flags: SymbolFlags with get, set
        abstract escapedName: __String with get, set
        abstract declarations: ResizeArray<Declaration> with get, set
        abstract valueDeclaration: Declaration with get, set
        abstract members: SymbolTable option with get, set
        abstract exports: SymbolTable option with get, set
        abstract globalExports: SymbolTable option with get, set
        abstract name: string
        abstract getFlags: unit -> SymbolFlags
        abstract getEscapedName: unit -> __String
        abstract getName: unit -> string
        abstract getDeclarations: unit -> ResizeArray<Declaration> option
        abstract getDocumentationComment: typeChecker: TypeChecker option -> ResizeArray<SymbolDisplayPart>
        abstract getJsDocTags: unit -> ResizeArray<JSDocTagInfo>

    type [<StringEnum>] [<RequireQualifiedAccess>] InternalSymbolName =
        | [<CompiledName "__call">] Call
        | [<CompiledName "__constructor">] Constructor
        | [<CompiledName "__new">] New
        | [<CompiledName "__index">] Index
        | [<CompiledName "__export">] ExportStar
        | [<CompiledName "__global">] Global
        | [<CompiledName "__missing">] Missing
        | [<CompiledName "__type">] Type
        | [<CompiledName "__object">] Object
        | [<CompiledName "__jsxAttributes">] JSXAttributes
        | [<CompiledName "__class">] Class
        | [<CompiledName "__function">] Function
        | [<CompiledName "__computed">] Computed
        | [<CompiledName "__resolving__">] Resolving
        | [<CompiledName "export=">] ExportEquals
        | Default
        | This

    type __String =
        U2<string, InternalSymbolName>

    /// ReadonlyMap where keys are `__String`s.
    type [<AllowNullLiteral>] ReadonlyUnderscoreEscapedMap<'T> =
        inherit ReadonlyESMap<__String, 'T>

    /// Map where keys are `__String`s.
    type [<AllowNullLiteral>] UnderscoreEscapedMap<'T> =
        inherit ESMap<__String, 'T>
        inherit ReadonlyUnderscoreEscapedMap<'T>

    type SymbolTable =
        UnderscoreEscapedMap<Symbol>

    type [<RequireQualifiedAccess>] TypeFlags =
        | Any = 1
        | Unknown = 2
        | String = 4
        | Number = 8
        | Boolean = 16
        | Enum = 32
        | BigInt = 64
        | StringLiteral = 128
        | NumberLiteral = 256
        | BooleanLiteral = 512
        | EnumLiteral = 1024
        | BigIntLiteral = 2048
        | ESSymbol = 4096
        | UniqueESSymbol = 8192
        | Void = 16384
        | Undefined = 32768
        | Null = 65536
        | Never = 131072
        | TypeParameter = 262144
        | Object = 524288
        | Union = 1048576
        | Intersection = 2097152
        | Index = 4194304
        | IndexedAccess = 8388608
        | Conditional = 16777216
        | Substitution = 33554432
        | NonPrimitive = 67108864
        | TemplateLiteral = 134217728
        | StringMapping = 268435456
        | Literal = 2944
        | Unit = 109440
        | StringOrNumberLiteral = 384
        | PossiblyFalsy = 117724
        | StringLike = 402653316
        | NumberLike = 296
        | BigIntLike = 2112
        | BooleanLike = 528
        | EnumLike = 1056
        | ESSymbolLike = 12288
        | VoidLike = 49152
        | UnionOrIntersection = 3145728
        | StructuredType = 3670016
        | TypeVariable = 8650752
        | InstantiableNonPrimitive = 58982400
        | InstantiablePrimitive = 406847488
        | Instantiable = 465829888
        | StructuredOrInstantiable = 469499904
        | Narrowable = 536624127

    type DestructuringPattern =
        U3<BindingPattern, ObjectLiteralExpression, ArrayLiteralExpression>

    type [<AllowNullLiteral>] Type =
        abstract flags: TypeFlags with get, set
        abstract symbol: Symbol with get, set
        abstract pattern: DestructuringPattern option with get, set
        abstract aliasSymbol: Symbol option with get, set
        abstract aliasTypeArguments: ResizeArray<Type> option with get, set
        abstract getFlags: unit -> TypeFlags
        abstract getSymbol: unit -> Symbol option
        abstract getProperties: unit -> ResizeArray<Symbol>
        abstract getProperty: propertyName: string -> Symbol option
        abstract getApparentProperties: unit -> ResizeArray<Symbol>
        abstract getCallSignatures: unit -> ResizeArray<Signature>
        abstract getConstructSignatures: unit -> ResizeArray<Signature>
        abstract getStringIndexType: unit -> Type option
        abstract getNumberIndexType: unit -> Type option
        abstract getBaseTypes: unit -> ResizeArray<BaseType> option
        abstract getNonNullableType: unit -> Type
        abstract getConstraint: unit -> Type option
        abstract getDefault: unit -> Type option
        abstract isUnion: unit -> bool
        abstract isIntersection: unit -> bool
        abstract isUnionOrIntersection: unit -> bool
        abstract isLiteral: unit -> bool
        abstract isStringLiteral: unit -> bool
        abstract isNumberLiteral: unit -> bool
        abstract isTypeParameter: unit -> bool
        abstract isClassOrInterface: unit -> bool
        abstract isClass: unit -> bool

    type [<AllowNullLiteral>] LiteralType =
        inherit Type
        abstract value: U3<string, float, PseudoBigInt> with get, set
        abstract freshType: LiteralType with get, set
        abstract regularType: LiteralType with get, set

    type [<AllowNullLiteral>] UniqueESSymbolType =
        inherit Type
        abstract symbol: Symbol with get, set
        abstract escapedName: __String with get, set

    type [<AllowNullLiteral>] StringLiteralType =
        inherit LiteralType
        abstract value: string with get, set

    type [<AllowNullLiteral>] NumberLiteralType =
        inherit LiteralType
        abstract value: float with get, set

    type [<AllowNullLiteral>] BigIntLiteralType =
        inherit LiteralType
        abstract value: PseudoBigInt with get, set

    type [<AllowNullLiteral>] EnumType =
        inherit Type

    type [<RequireQualifiedAccess>] ObjectFlags =
        | Class = 1
        | Interface = 2
        | Reference = 4
        | Tuple = 8
        | Anonymous = 16
        | Mapped = 32
        | Instantiated = 64
        | ObjectLiteral = 128
        | EvolvingArray = 256
        | ObjectLiteralPatternWithComputedProperties = 512
        | ContainsSpread = 1024
        | ReverseMapped = 2048
        | JsxAttributes = 4096
        | MarkerType = 8192
        | JSLiteral = 16384
        | FreshLiteral = 32768
        | ArrayLiteral = 65536
        | ObjectRestType = 131072
        | ClassOrInterface = 3

    type [<AllowNullLiteral>] ObjectType =
        inherit Type
        abstract objectFlags: ObjectFlags with get, set

    /// Class and interface types (ObjectFlags.Class and ObjectFlags.Interface).
    type [<AllowNullLiteral>] InterfaceType =
        inherit ObjectType
        abstract typeParameters: ResizeArray<TypeParameter> option with get, set
        abstract outerTypeParameters: ResizeArray<TypeParameter> option with get, set
        abstract localTypeParameters: ResizeArray<TypeParameter> option with get, set
        abstract thisType: TypeParameter option with get, set

    type BaseType =
        U3<ObjectType, IntersectionType, TypeVariable>

    type [<AllowNullLiteral>] InterfaceTypeWithDeclaredMembers =
        inherit InterfaceType
        abstract declaredProperties: ResizeArray<Symbol> with get, set
        abstract declaredCallSignatures: ResizeArray<Signature> with get, set
        abstract declaredConstructSignatures: ResizeArray<Signature> with get, set
        abstract declaredStringIndexInfo: IndexInfo option with get, set
        abstract declaredNumberIndexInfo: IndexInfo option with get, set

    /// Type references (ObjectFlags.Reference). When a class or interface has type parameters or
    /// a "this" type, references to the class or interface are made using type references. The
    /// typeArguments property specifies the types to substitute for the type parameters of the
    /// class or interface and optionally includes an extra element that specifies the type to
    /// substitute for "this" in the resulting instantiation. When no extra argument is present,
    /// the type reference itself is substituted for "this". The typeArguments property is undefined
    /// if the class or interface has no type parameters and the reference isn't specifying an
    /// explicit "this" argument.
    type [<AllowNullLiteral>] TypeReference =
        inherit ObjectType
        abstract target: GenericType with get, set
        abstract node: U3<TypeReferenceNode, ArrayTypeNode, TupleTypeNode> option with get, set
        abstract typeArguments: ResizeArray<Type> option with get, set

    type [<AllowNullLiteral>] DeferredTypeReference =
        inherit TypeReference

    type [<AllowNullLiteral>] GenericType =
        inherit InterfaceType
        inherit TypeReference

    type [<RequireQualifiedAccess>] ElementFlags =
        | Required = 1
        | Optional = 2
        | Rest = 4
        | Variadic = 8
        | Fixed = 3
        | Variable = 12
        | NonRequired = 14
        | NonRest = 11

    type [<AllowNullLiteral>] TupleType =
        inherit GenericType
        abstract elementFlags: ResizeArray<ElementFlags> with get, set
        abstract minLength: float with get, set
        abstract fixedLength: float with get, set
        abstract hasRestElement: bool with get, set
        abstract combinedFlags: ElementFlags with get, set
        abstract readonly: bool with get, set
        abstract labeledElementDeclarations: ResizeArray<U2<NamedTupleMember, ParameterDeclaration>> option with get, set

    type [<AllowNullLiteral>] TupleTypeReference =
        inherit TypeReference
        abstract target: TupleType with get, set

    type [<AllowNullLiteral>] UnionOrIntersectionType =
        inherit Type
        abstract types: ResizeArray<Type> with get, set

    type [<AllowNullLiteral>] UnionType =
        inherit UnionOrIntersectionType

    type [<AllowNullLiteral>] IntersectionType =
        inherit UnionOrIntersectionType

    type StructuredType =
        U3<ObjectType, UnionType, IntersectionType>

    type [<AllowNullLiteral>] EvolvingArrayType =
        inherit ObjectType
        abstract elementType: Type with get, set
        abstract finalArrayType: Type option with get, set

    type [<AllowNullLiteral>] InstantiableType =
        inherit Type

    type [<AllowNullLiteral>] TypeParameter =
        inherit InstantiableType

    type [<AllowNullLiteral>] IndexedAccessType =
        inherit InstantiableType
        abstract objectType: Type with get, set
        abstract indexType: Type with get, set
        abstract ``constraint``: Type option with get, set
        abstract simplifiedForReading: Type option with get, set
        abstract simplifiedForWriting: Type option with get, set

    type TypeVariable =
        U2<TypeParameter, IndexedAccessType>

    type [<AllowNullLiteral>] IndexType =
        inherit InstantiableType
        abstract ``type``: U2<InstantiableType, UnionOrIntersectionType> with get, set

    type [<AllowNullLiteral>] ConditionalRoot =
        abstract node: ConditionalTypeNode with get, set
        abstract checkType: Type with get, set
        abstract extendsType: Type with get, set
        abstract isDistributive: bool with get, set
        abstract inferTypeParameters: ResizeArray<TypeParameter> option with get, set
        abstract outerTypeParameters: ResizeArray<TypeParameter> option with get, set
        abstract instantiations: Map<Type> option with get, set
        abstract aliasSymbol: Symbol option with get, set
        abstract aliasTypeArguments: ResizeArray<Type> option with get, set

    type [<AllowNullLiteral>] ConditionalType =
        inherit InstantiableType
        abstract root: ConditionalRoot with get, set
        abstract checkType: Type with get, set
        abstract extendsType: Type with get, set
        abstract resolvedTrueType: Type with get, set
        abstract resolvedFalseType: Type with get, set

    type [<AllowNullLiteral>] TemplateLiteralType =
        inherit InstantiableType
        abstract texts: ResizeArray<string> with get, set
        abstract types: ResizeArray<Type> with get, set

    type [<AllowNullLiteral>] StringMappingType =
        inherit InstantiableType
        abstract symbol: Symbol with get, set
        abstract ``type``: Type with get, set

    type [<AllowNullLiteral>] SubstitutionType =
        inherit InstantiableType
        abstract baseType: Type with get, set
        abstract substitute: Type with get, set

    type [<RequireQualifiedAccess>] SignatureKind =
        | Call = 0
        | Construct = 1

    type [<AllowNullLiteral>] Signature =
        abstract declaration: U2<SignatureDeclaration, JSDocSignature> option with get, set
        abstract typeParameters: ResizeArray<TypeParameter> option with get, set
        abstract parameters: ResizeArray<Symbol> with get, set
        abstract getDeclaration: unit -> SignatureDeclaration
        abstract getTypeParameters: unit -> ResizeArray<TypeParameter> option
        abstract getParameters: unit -> ResizeArray<Symbol>
        abstract getReturnType: unit -> Type
        abstract getDocumentationComment: typeChecker: TypeChecker option -> ResizeArray<SymbolDisplayPart>
        abstract getJsDocTags: unit -> ResizeArray<JSDocTagInfo>

    type [<RequireQualifiedAccess>] IndexKind =
        | String = 0
        | Number = 1

    type [<AllowNullLiteral>] IndexInfo =
        abstract ``type``: Type with get, set
        abstract isReadonly: bool with get, set
        abstract declaration: IndexSignatureDeclaration option with get, set

    type [<RequireQualifiedAccess>] InferencePriority =
        | NakedTypeVariable = 1
        | SpeculativeTuple = 2
        | HomomorphicMappedType = 4
        | PartialHomomorphicMappedType = 8
        | MappedTypeConstraint = 16
        | ContravariantConditional = 32
        | ReturnType = 64
        | LiteralKeyof = 128
        | NoConstraints = 256
        | AlwaysStrict = 512
        | MaxValue = 1024
        | PriorityImpliesCombination = 208
        | Circularity = -1

    type JsFileExtensionInfo =
        FileExtensionInfo

    type [<AllowNullLiteral>] FileExtensionInfo =
        abstract extension: string with get, set
        abstract isMixedContent: bool with get, set
        abstract scriptKind: ScriptKind option with get, set

    type [<AllowNullLiteral>] DiagnosticMessage =
        abstract key: string with get, set
        abstract category: DiagnosticCategory with get, set
        abstract code: float with get, set
        abstract message: string with get, set
        abstract reportsUnnecessary: DiagnosticMessageReportsUnnecessary option with get, set
        abstract reportsDeprecated: DiagnosticMessageReportsUnnecessary option with get, set

    /// A linked list of formatted diagnostic messages to be used as part of a multiline message.
    /// It is built from the bottom up, leaving the head to be the "main" diagnostic.
    /// While it seems that DiagnosticMessageChain is structurally similar to DiagnosticMessage,
    /// the difference is that messages are all preformatted in DMC.
    type [<AllowNullLiteral>] DiagnosticMessageChain =
        abstract messageText: string with get, set
        abstract category: DiagnosticCategory with get, set
        abstract code: float with get, set
        abstract next: ResizeArray<DiagnosticMessageChain> option with get, set

    type [<AllowNullLiteral>] Diagnostic =
        inherit DiagnosticRelatedInformation
        /// May store more in future. For now, this will simply be `true` to indicate when a diagnostic is an unused-identifier diagnostic.
        abstract reportsUnnecessary: DiagnosticMessageReportsUnnecessary option with get, set
        abstract reportsDeprecated: DiagnosticMessageReportsUnnecessary option with get, set
        abstract source: string option with get, set
        abstract relatedInformation: ResizeArray<DiagnosticRelatedInformation> option with get, set

    type [<AllowNullLiteral>] DiagnosticRelatedInformation =
        abstract category: DiagnosticCategory with get, set
        abstract code: float with get, set
        abstract file: SourceFile option with get, set
        abstract start: float option with get, set
        abstract length: float option with get, set
        abstract messageText: U2<string, DiagnosticMessageChain> with get, set

    type [<AllowNullLiteral>] DiagnosticWithLocation =
        inherit Diagnostic
        abstract file: SourceFile with get, set
        abstract start: float with get, set
        abstract length: float with get, set

    type [<RequireQualifiedAccess>] DiagnosticCategory =
        | Warning = 0
        | Error = 1
        | Suggestion = 2
        | Message = 3

    type [<RequireQualifiedAccess>] ModuleResolutionKind =
        | Classic = 1
        | NodeJs = 2

    type [<AllowNullLiteral>] PluginImport =
        abstract name: string with get, set

    type [<AllowNullLiteral>] ProjectReference =
        /// A normalized path on disk
        abstract path: string with get, set
        /// The path as the user originally wrote it
        abstract originalPath: string option with get, set
        /// True if the output of this reference should be prepended to the output of this project. Only valid for --outFile compilations
        abstract prepend: bool option with get, set
        /// True if it is intended that this reference form a circularity
        abstract circular: bool option with get, set

    type [<RequireQualifiedAccess>] WatchFileKind =
        | FixedPollingInterval = 0
        | PriorityPollingInterval = 1
        | DynamicPriorityPolling = 2
        | UseFsEvents = 3
        | UseFsEventsOnParentDirectory = 4

    type [<RequireQualifiedAccess>] WatchDirectoryKind =
        | UseFsEvents = 0
        | FixedPollingInterval = 1
        | DynamicPriorityPolling = 2

    type [<RequireQualifiedAccess>] PollingWatchKind =
        | FixedInterval = 0
        | PriorityInterval = 1
        | DynamicPriority = 2

    type CompilerOptionsValue =
        U8<string, float, bool, ResizeArray<U2<string, float>>, ResizeArray<string>, MapLike<ResizeArray<string>>, ResizeArray<PluginImport>, ResizeArray<ProjectReference>> option

    type [<AllowNullLiteral>] CompilerOptions =
        abstract allowJs: bool option with get, set
        abstract allowSyntheticDefaultImports: bool option with get, set
        abstract allowUmdGlobalAccess: bool option with get, set
        abstract allowUnreachableCode: bool option with get, set
        abstract allowUnusedLabels: bool option with get, set
        abstract alwaysStrict: bool option with get, set
        abstract baseUrl: string option with get, set
        abstract charset: string option with get, set
        abstract checkJs: bool option with get, set
        abstract declaration: bool option with get, set
        abstract declarationMap: bool option with get, set
        abstract emitDeclarationOnly: bool option with get, set
        abstract declarationDir: string option with get, set
        abstract disableSizeLimit: bool option with get, set
        abstract disableSourceOfProjectReferenceRedirect: bool option with get, set
        abstract disableSolutionSearching: bool option with get, set
        abstract disableReferencedProjectLoad: bool option with get, set
        abstract downlevelIteration: bool option with get, set
        abstract emitBOM: bool option with get, set
        abstract emitDecoratorMetadata: bool option with get, set
        abstract experimentalDecorators: bool option with get, set
        abstract forceConsistentCasingInFileNames: bool option with get, set
        abstract importHelpers: bool option with get, set
        abstract importsNotUsedAsValues: ImportsNotUsedAsValues option with get, set
        abstract inlineSourceMap: bool option with get, set
        abstract inlineSources: bool option with get, set
        abstract isolatedModules: bool option with get, set
        abstract jsx: JsxEmit option with get, set
        abstract keyofStringsOnly: bool option with get, set
        abstract lib: ResizeArray<string> option with get, set
        abstract locale: string option with get, set
        abstract mapRoot: string option with get, set
        abstract maxNodeModuleJsDepth: float option with get, set
        abstract ``module``: ModuleKind option with get, set
        abstract moduleResolution: ModuleResolutionKind option with get, set
        abstract newLine: NewLineKind option with get, set
        abstract noEmit: bool option with get, set
        abstract noEmitHelpers: bool option with get, set
        abstract noEmitOnError: bool option with get, set
        abstract noErrorTruncation: bool option with get, set
        abstract noFallthroughCasesInSwitch: bool option with get, set
        abstract noImplicitAny: bool option with get, set
        abstract noImplicitReturns: bool option with get, set
        abstract noImplicitThis: bool option with get, set
        abstract noStrictGenericChecks: bool option with get, set
        abstract noUnusedLocals: bool option with get, set
        abstract noUnusedParameters: bool option with get, set
        abstract noImplicitUseStrict: bool option with get, set
        abstract noPropertyAccessFromIndexSignature: bool option with get, set
        abstract assumeChangesOnlyAffectDirectDependencies: bool option with get, set
        abstract noLib: bool option with get, set
        abstract noResolve: bool option with get, set
        abstract noUncheckedIndexedAccess: bool option with get, set
        abstract out: string option with get, set
        abstract outDir: string option with get, set
        abstract outFile: string option with get, set
        abstract paths: MapLike<ResizeArray<string>> option with get, set
        abstract preserveConstEnums: bool option with get, set
        abstract preserveSymlinks: bool option with get, set
        abstract project: string option with get, set
        abstract reactNamespace: string option with get, set
        abstract jsxFactory: string option with get, set
        abstract jsxFragmentFactory: string option with get, set
        abstract jsxImportSource: string option with get, set
        abstract composite: bool option with get, set
        abstract incremental: bool option with get, set
        abstract tsBuildInfoFile: string option with get, set
        abstract removeComments: bool option with get, set
        abstract rootDir: string option with get, set
        abstract rootDirs: ResizeArray<string> option with get, set
        abstract skipLibCheck: bool option with get, set
        abstract skipDefaultLibCheck: bool option with get, set
        abstract sourceMap: bool option with get, set
        abstract sourceRoot: string option with get, set
        abstract strict: bool option with get, set
        abstract strictFunctionTypes: bool option with get, set
        abstract strictBindCallApply: bool option with get, set
        abstract strictNullChecks: bool option with get, set
        abstract strictPropertyInitialization: bool option with get, set
        abstract stripInternal: bool option with get, set
        abstract suppressExcessPropertyErrors: bool option with get, set
        abstract suppressImplicitAnyIndexErrors: bool option with get, set
        abstract target: ScriptTarget option with get, set
        abstract traceResolution: bool option with get, set
        abstract resolveJsonModule: bool option with get, set
        abstract types: ResizeArray<string> option with get, set
        /// Paths used to compute primary types search locations
        abstract typeRoots: ResizeArray<string> option with get, set
        abstract esModuleInterop: bool option with get, set
        abstract useDefineForClassFields: bool option with get, set
        [<Emit "$0[$1]{{=$2}}">] abstract Item: option: string -> U2<CompilerOptionsValue, TsConfigSourceFile> option with get, set

    type [<AllowNullLiteral>] WatchOptions =
        abstract watchFile: WatchFileKind option with get, set
        abstract watchDirectory: WatchDirectoryKind option with get, set
        abstract fallbackPolling: PollingWatchKind option with get, set
        abstract synchronousWatchDirectory: bool option with get, set
        abstract excludeDirectories: ResizeArray<string> option with get, set
        abstract excludeFiles: ResizeArray<string> option with get, set
        [<Emit "$0[$1]{{=$2}}">] abstract Item: option: string -> CompilerOptionsValue option with get, set

    type [<AllowNullLiteral>] TypeAcquisition =
        abstract enableAutoDiscovery: bool option with get, set
        abstract enable: bool option with get, set
        abstract ``include``: ResizeArray<string> option with get, set
        abstract exclude: ResizeArray<string> option with get, set
        abstract disableFilenameBasedTypeAcquisition: bool option with get, set
        [<Emit "$0[$1]{{=$2}}">] abstract Item: option: string -> CompilerOptionsValue option with get, set

    type [<RequireQualifiedAccess>] ModuleKind =
        | None = 0
        | CommonJS = 1
        | AMD = 2
        | UMD = 3
        | System = 4
        | ES2015 = 5
        | ES2020 = 6
        | ESNext = 99

    type [<RequireQualifiedAccess>] JsxEmit =
        | None = 0
        | Preserve = 1
        | React = 2
        | ReactNative = 3
        | ReactJSX = 4
        | ReactJSXDev = 5

    type [<RequireQualifiedAccess>] ImportsNotUsedAsValues =
        | Remove = 0
        | Preserve = 1
        | Error = 2

    type [<RequireQualifiedAccess>] NewLineKind =
        | CarriageReturnLineFeed = 0
        | LineFeed = 1

    type [<AllowNullLiteral>] LineAndCharacter =
        /// 0-based.
        abstract line: float with get, set
        abstract character: float with get, set

    type [<RequireQualifiedAccess>] ScriptKind =
        | Unknown = 0
        | JS = 1
        | JSX = 2
        | TS = 3
        | TSX = 4
        | External = 5
        | JSON = 6
        | Deferred = 7

    type [<RequireQualifiedAccess>] ScriptTarget =
        | ES3 = 0
        | ES5 = 1
        | ES2015 = 2
        | ES2016 = 3
        | ES2017 = 4
        | ES2018 = 5
        | ES2019 = 6
        | ES2020 = 7
        | ESNext = 99
        | JSON = 100
        | Latest = 99

    type [<RequireQualifiedAccess>] LanguageVariant =
        | Standard = 0
        | JSX = 1

    /// Either a parsed command line or a parsed tsconfig.json
    type [<AllowNullLiteral>] ParsedCommandLine =
        abstract options: CompilerOptions with get, set
        abstract typeAcquisition: TypeAcquisition option with get, set
        abstract fileNames: ResizeArray<string> with get, set
        abstract projectReferences: ResizeArray<ProjectReference> option with get, set
        abstract watchOptions: WatchOptions option with get, set
        abstract raw: obj option with get, set
        abstract errors: ResizeArray<Diagnostic> with get, set
        abstract wildcardDirectories: MapLike<WatchDirectoryFlags> option with get, set
        abstract compileOnSave: bool option with get, set

    type [<RequireQualifiedAccess>] WatchDirectoryFlags =
        | None = 0
        | Recursive = 1

    type [<AllowNullLiteral>] CreateProgramOptions =
        abstract rootNames: ResizeArray<string> with get, set
        abstract options: CompilerOptions with get, set
        abstract projectReferences: ResizeArray<ProjectReference> option with get, set
        abstract host: CompilerHost option with get, set
        abstract oldProgram: Program option with get, set
        abstract configFileParsingDiagnostics: ResizeArray<Diagnostic> option with get, set

    type [<AllowNullLiteral>] ModuleResolutionHost =
        abstract fileExists: fileName: string -> bool
        abstract readFile: fileName: string -> string option
        abstract trace: s: string -> unit
        abstract directoryExists: directoryName: string -> bool
        /// Resolve a symbolic link.
        abstract realpath: path: string -> string
        abstract getCurrentDirectory: unit -> string
        abstract getDirectories: path: string -> ResizeArray<string>

    /// Represents the result of module resolution.
    /// Module resolution will pick up tsx/jsx/js files even if '--jsx' and '--allowJs' are turned off.
    /// The Program will then filter results based on these flags.
    /// 
    /// Prefer to return a `ResolvedModuleFull` so that the file type does not have to be inferred.
    type [<AllowNullLiteral>] ResolvedModule =
        /// Path of the file the module was resolved to.
        abstract resolvedFileName: string with get, set
        /// True if `resolvedFileName` comes from `node_modules`.
        abstract isExternalLibraryImport: bool option with get, set

    /// ResolvedModule with an explicitly provided `extension` property.
    /// Prefer this over `ResolvedModule`.
    /// If changing this, remember to change `moduleResolutionIsEqualTo`.
    type [<AllowNullLiteral>] ResolvedModuleFull =
        inherit ResolvedModule
        /// Extension of resolvedFileName. This must match what's at the end of resolvedFileName.
        /// This is optional for backwards-compatibility, but will be added if not provided.
        abstract extension: Extension with get, set
        abstract packageId: PackageId option with get, set

    /// Unique identifier with a package name and version.
    /// If changing this, remember to change `packageIdIsEqual`.
    type [<AllowNullLiteral>] PackageId =
        /// Name of the package.
        /// Should not include `@types`.
        /// If accessing a non-index file, this should include its name e.g. "foo/bar".
        abstract name: string with get, set
        /// Name of a submodule within this package.
        /// May be "".
        abstract subModuleName: string with get, set
        /// Version of the package, e.g. "1.2.3"
        abstract version: string with get, set

    type [<StringEnum>] [<RequireQualifiedAccess>] Extension =
        | [<CompiledName ".ts">] Ts
        | [<CompiledName ".tsx">] Tsx
        | [<CompiledName ".d.ts">] Dts
        | [<CompiledName ".js">] Js
        | [<CompiledName ".jsx">] Jsx
        | [<CompiledName ".json">] Json
        | [<CompiledName ".tsbuildinfo">] TsBuildInfo

    type [<AllowNullLiteral>] ResolvedModuleWithFailedLookupLocations =
        abstract resolvedModule: ResolvedModuleFull option

    type [<AllowNullLiteral>] ResolvedTypeReferenceDirective =
        abstract primary: bool with get, set
        abstract resolvedFileName: string option with get, set
        abstract packageId: PackageId option with get, set
        /// True if `resolvedFileName` comes from `node_modules`.
        abstract isExternalLibraryImport: bool option with get, set

    type [<AllowNullLiteral>] ResolvedTypeReferenceDirectiveWithFailedLookupLocations =
        abstract resolvedTypeReferenceDirective: ResolvedTypeReferenceDirective option
        abstract failedLookupLocations: ResizeArray<string>

    type [<AllowNullLiteral>] CompilerHost =
        inherit ModuleResolutionHost
        abstract getSourceFile: fileName: string * languageVersion: ScriptTarget * ?onError: (string -> unit) * ?shouldCreateNewSourceFile: bool -> SourceFile option
        abstract getSourceFileByPath: fileName: string * path: Path * languageVersion: ScriptTarget * ?onError: (string -> unit) * ?shouldCreateNewSourceFile: bool -> SourceFile option
        abstract getCancellationToken: unit -> CancellationToken
        abstract getDefaultLibFileName: options: CompilerOptions -> string
        abstract getDefaultLibLocation: unit -> string
        abstract writeFile: WriteFileCallback with get, set
        abstract getCurrentDirectory: unit -> string
        abstract getCanonicalFileName: fileName: string -> string
        abstract useCaseSensitiveFileNames: unit -> bool
        abstract getNewLine: unit -> string
        abstract readDirectory: rootDir: string * extensions: ResizeArray<string> * excludes: ResizeArray<string> option * includes: ResizeArray<string> * ?depth: float -> ResizeArray<string>
        abstract resolveModuleNames: moduleNames: ResizeArray<string> * containingFile: string * reusedNames: ResizeArray<string> option * redirectedReference: ResolvedProjectReference option * options: CompilerOptions -> ResizeArray<ResolvedModule option>
        /// This method is a companion for 'resolveModuleNames' and is used to resolve 'types' references to actual type declaration files
        abstract resolveTypeReferenceDirectives: typeReferenceDirectiveNames: ResizeArray<string> * containingFile: string * redirectedReference: ResolvedProjectReference option * options: CompilerOptions -> ResizeArray<ResolvedTypeReferenceDirective option>
        abstract getEnvironmentVariable: name: string -> string option
        abstract createHash: data: string -> string
        abstract getParsedCommandLine: fileName: string -> ParsedCommandLine option

    type [<AllowNullLiteral>] SourceMapRange =
        inherit TextRange
        abstract source: SourceMapSource option with get, set

    type [<AllowNullLiteral>] SourceMapSource =
        abstract fileName: string with get, set
        abstract text: string with get, set
        abstract skipTrivia: (float -> float) option with get, set
        abstract getLineAndCharacterOfPosition: pos: float -> LineAndCharacter

    type [<RequireQualifiedAccess>] EmitFlags =
        | None = 0
        | SingleLine = 1
        | AdviseOnEmitNode = 2
        | NoSubstitution = 4
        | CapturesThis = 8
        | NoLeadingSourceMap = 16
        | NoTrailingSourceMap = 32
        | NoSourceMap = 48
        | NoNestedSourceMaps = 64
        | NoTokenLeadingSourceMaps = 128
        | NoTokenTrailingSourceMaps = 256
        | NoTokenSourceMaps = 384
        | NoLeadingComments = 512
        | NoTrailingComments = 1024
        | NoComments = 1536
        | NoNestedComments = 2048
        | HelperName = 4096
        | ExportName = 8192
        | LocalName = 16384
        | InternalName = 32768
        | Indented = 65536
        | NoIndentation = 131072
        | AsyncFunctionBody = 262144
        | ReuseTempVariableScope = 524288
        | CustomPrologue = 1048576
        | NoHoisting = 2097152
        | HasEndOfDeclarationMarker = 4194304
        | Iterator = 8388608
        | NoAsciiEscaping = 16777216

    type [<AllowNullLiteral>] EmitHelper =
        abstract name: string
        abstract scoped: bool
        abstract text: U2<string, (EmitHelperUniqueNameCallback -> string)>
        abstract priority: float option
        abstract dependencies: ResizeArray<EmitHelper> option

    type [<AllowNullLiteral>] UnscopedEmitHelper =
        inherit EmitHelper
        abstract scoped: obj
        abstract text: string

    type [<AllowNullLiteral>] EmitHelperUniqueNameCallback =
        [<Emit "$0($1...)">] abstract Invoke: name: string -> string

    type [<RequireQualifiedAccess>] EmitHint =
        | SourceFile = 0
        | Expression = 1
        | IdentifierName = 2
        | MappedTypeParameter = 3
        | Unspecified = 4
        | EmbeddedStatement = 5
        | JsxAttributeValue = 6

    type [<RequireQualifiedAccess>] OuterExpressionKinds =
        | Parentheses = 1
        | TypeAssertions = 2
        | NonNullAssertions = 4
        | PartiallyEmittedExpressions = 8
        | Assertions = 6
        | All = 15

    type [<StringEnum>] [<RequireQualifiedAccess>] TypeOfTag =
        | Undefined
        | Number
        | Bigint
        | Boolean
        | String
        | Symbol
        | Object
        | Function

    type [<AllowNullLiteral>] NodeFactory =
        abstract createNodeArray: ?elements: ResizeArray<'T> * ?hasTrailingComma: bool -> ResizeArray<'T>
        abstract createNumericLiteral: value: U2<string, float> * ?numericLiteralFlags: TokenFlags -> NumericLiteral
        abstract createBigIntLiteral: value: U2<string, PseudoBigInt> -> BigIntLiteral
        abstract createStringLiteral: text: string * ?isSingleQuote: bool -> StringLiteral
        abstract createStringLiteralFromNode: sourceNode: PropertyNameLiteral * ?isSingleQuote: bool -> StringLiteral
        abstract createRegularExpressionLiteral: text: string -> RegularExpressionLiteral
        abstract createIdentifier: text: string -> Identifier
        /// Create a unique temporary variable.
        abstract createTempVariable: recordTempVariable: (Identifier -> unit) option -> Identifier
        /// Create a unique temporary variable for use in a loop.
        abstract createLoopVariable: unit -> Identifier
        /// Create a unique name based on the supplied text.
        abstract createUniqueName: text: string * ?flags: GeneratedIdentifierFlags -> Identifier
        /// Create a unique name generated for a node.
        abstract getGeneratedNameForNode: node: Node option -> Identifier
        abstract createPrivateIdentifier: text: string -> PrivateIdentifier
        abstract createToken: token: SyntaxKind -> SuperExpression
        abstract createToken: token: 'TKind -> PunctuationToken<'TKind>
        abstract createSuper: unit -> SuperExpression
        abstract createThis: unit -> ThisExpression
        abstract createNull: unit -> NullLiteral
        abstract createTrue: unit -> TrueLiteral
        abstract createFalse: unit -> FalseLiteral
        abstract createModifier: kind: 'T -> ModifierToken<'T>
        abstract createModifiersFromModifierFlags: flags: ModifierFlags -> ResizeArray<Modifier>
        abstract createQualifiedName: left: EntityName * right: U2<string, Identifier> -> QualifiedName
        abstract updateQualifiedName: node: QualifiedName * left: EntityName * right: Identifier -> QualifiedName
        abstract createComputedPropertyName: expression: Expression -> ComputedPropertyName
        abstract updateComputedPropertyName: node: ComputedPropertyName * expression: Expression -> ComputedPropertyName
        abstract createTypeParameterDeclaration: name: U2<string, Identifier> * ?``constraint``: TypeNode * ?defaultType: TypeNode -> TypeParameterDeclaration
        abstract updateTypeParameterDeclaration: node: TypeParameterDeclaration * name: Identifier * ``constraint``: TypeNode option * defaultType: TypeNode option -> TypeParameterDeclaration
        abstract createParameterDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * dotDotDotToken: DotDotDotToken option * name: U2<string, BindingName> * ?questionToken: QuestionToken * ?``type``: TypeNode * ?initializer: Expression -> ParameterDeclaration
        abstract updateParameterDeclaration: node: ParameterDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * dotDotDotToken: DotDotDotToken option * name: U2<string, BindingName> * questionToken: QuestionToken option * ``type``: TypeNode option * initializer: Expression option -> ParameterDeclaration
        abstract createDecorator: expression: Expression -> Decorator
        abstract updateDecorator: node: Decorator * expression: Expression -> Decorator
        abstract createPropertySignature: modifiers: ResizeArray<Modifier> option * name: U2<PropertyName, string> * questionToken: QuestionToken option * ``type``: TypeNode option -> PropertySignature
        abstract updatePropertySignature: node: PropertySignature * modifiers: ResizeArray<Modifier> option * name: PropertyName * questionToken: QuestionToken option * ``type``: TypeNode option -> PropertySignature
        abstract createPropertyDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, PropertyName> * questionOrExclamationToken: U2<QuestionToken, ExclamationToken> option * ``type``: TypeNode option * initializer: Expression option -> PropertyDeclaration
        abstract updatePropertyDeclaration: node: PropertyDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, PropertyName> * questionOrExclamationToken: U2<QuestionToken, ExclamationToken> option * ``type``: TypeNode option * initializer: Expression option -> PropertyDeclaration
        abstract createMethodSignature: modifiers: ResizeArray<Modifier> option * name: U2<string, PropertyName> * questionToken: QuestionToken option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> MethodSignature
        abstract updateMethodSignature: node: MethodSignature * modifiers: ResizeArray<Modifier> option * name: PropertyName * questionToken: QuestionToken option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> MethodSignature
        abstract createMethodDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * asteriskToken: AsteriskToken option * name: U2<string, PropertyName> * questionToken: QuestionToken option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: Block option -> MethodDeclaration
        abstract updateMethodDeclaration: node: MethodDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * asteriskToken: AsteriskToken option * name: PropertyName * questionToken: QuestionToken option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: Block option -> MethodDeclaration
        abstract createConstructorDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * parameters: ResizeArray<ParameterDeclaration> * body: Block option -> ConstructorDeclaration
        abstract updateConstructorDeclaration: node: ConstructorDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * parameters: ResizeArray<ParameterDeclaration> * body: Block option -> ConstructorDeclaration
        abstract createGetAccessorDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, PropertyName> * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: Block option -> GetAccessorDeclaration
        abstract updateGetAccessorDeclaration: node: GetAccessorDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: PropertyName * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: Block option -> GetAccessorDeclaration
        abstract createSetAccessorDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, PropertyName> * parameters: ResizeArray<ParameterDeclaration> * body: Block option -> SetAccessorDeclaration
        abstract updateSetAccessorDeclaration: node: SetAccessorDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: PropertyName * parameters: ResizeArray<ParameterDeclaration> * body: Block option -> SetAccessorDeclaration
        abstract createCallSignature: typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> CallSignatureDeclaration
        abstract updateCallSignature: node: CallSignatureDeclaration * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> CallSignatureDeclaration
        abstract createConstructSignature: typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> ConstructSignatureDeclaration
        abstract updateConstructSignature: node: ConstructSignatureDeclaration * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> ConstructSignatureDeclaration
        abstract createIndexSignature: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> IndexSignatureDeclaration
        abstract updateIndexSignature: node: IndexSignatureDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> IndexSignatureDeclaration
        abstract createTemplateLiteralTypeSpan: ``type``: TypeNode * literal: U2<TemplateMiddle, TemplateTail> -> TemplateLiteralTypeSpan
        abstract updateTemplateLiteralTypeSpan: node: TemplateLiteralTypeSpan * ``type``: TypeNode * literal: U2<TemplateMiddle, TemplateTail> -> TemplateLiteralTypeSpan
        abstract createKeywordTypeNode: kind: 'TKind -> KeywordTypeNode<'TKind>
        abstract createTypePredicateNode: assertsModifier: AssertsKeyword option * parameterName: U3<Identifier, ThisTypeNode, string> * ``type``: TypeNode option -> TypePredicateNode
        abstract updateTypePredicateNode: node: TypePredicateNode * assertsModifier: AssertsKeyword option * parameterName: U2<Identifier, ThisTypeNode> * ``type``: TypeNode option -> TypePredicateNode
        abstract createTypeReferenceNode: typeName: U2<string, EntityName> * ?typeArguments: ResizeArray<TypeNode> -> TypeReferenceNode
        abstract updateTypeReferenceNode: node: TypeReferenceNode * typeName: EntityName * typeArguments: ResizeArray<TypeNode> option -> TypeReferenceNode
        abstract createFunctionTypeNode: typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> FunctionTypeNode
        abstract updateFunctionTypeNode: node: FunctionTypeNode * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> FunctionTypeNode
        abstract createConstructorTypeNode: modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> ConstructorTypeNode
        abstract createConstructorTypeNode: typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> ConstructorTypeNode
        abstract updateConstructorTypeNode: node: ConstructorTypeNode * modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> ConstructorTypeNode
        abstract updateConstructorTypeNode: node: ConstructorTypeNode * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode -> ConstructorTypeNode
        abstract createTypeQueryNode: exprName: EntityName -> TypeQueryNode
        abstract updateTypeQueryNode: node: TypeQueryNode * exprName: EntityName -> TypeQueryNode
        abstract createTypeLiteralNode: members: ResizeArray<TypeElement> option -> TypeLiteralNode
        abstract updateTypeLiteralNode: node: TypeLiteralNode * members: ResizeArray<TypeElement> -> TypeLiteralNode
        abstract createArrayTypeNode: elementType: TypeNode -> ArrayTypeNode
        abstract updateArrayTypeNode: node: ArrayTypeNode * elementType: TypeNode -> ArrayTypeNode
        abstract createTupleTypeNode: elements: ResizeArray<U2<TypeNode, NamedTupleMember>> -> TupleTypeNode
        abstract updateTupleTypeNode: node: TupleTypeNode * elements: ResizeArray<U2<TypeNode, NamedTupleMember>> -> TupleTypeNode
        abstract createNamedTupleMember: dotDotDotToken: DotDotDotToken option * name: Identifier * questionToken: QuestionToken option * ``type``: TypeNode -> NamedTupleMember
        abstract updateNamedTupleMember: node: NamedTupleMember * dotDotDotToken: DotDotDotToken option * name: Identifier * questionToken: QuestionToken option * ``type``: TypeNode -> NamedTupleMember
        abstract createOptionalTypeNode: ``type``: TypeNode -> OptionalTypeNode
        abstract updateOptionalTypeNode: node: OptionalTypeNode * ``type``: TypeNode -> OptionalTypeNode
        abstract createRestTypeNode: ``type``: TypeNode -> RestTypeNode
        abstract updateRestTypeNode: node: RestTypeNode * ``type``: TypeNode -> RestTypeNode
        abstract createUnionTypeNode: types: ResizeArray<TypeNode> -> UnionTypeNode
        abstract updateUnionTypeNode: node: UnionTypeNode * types: ResizeArray<TypeNode> -> UnionTypeNode
        abstract createIntersectionTypeNode: types: ResizeArray<TypeNode> -> IntersectionTypeNode
        abstract updateIntersectionTypeNode: node: IntersectionTypeNode * types: ResizeArray<TypeNode> -> IntersectionTypeNode
        abstract createConditionalTypeNode: checkType: TypeNode * extendsType: TypeNode * trueType: TypeNode * falseType: TypeNode -> ConditionalTypeNode
        abstract updateConditionalTypeNode: node: ConditionalTypeNode * checkType: TypeNode * extendsType: TypeNode * trueType: TypeNode * falseType: TypeNode -> ConditionalTypeNode
        abstract createInferTypeNode: typeParameter: TypeParameterDeclaration -> InferTypeNode
        abstract updateInferTypeNode: node: InferTypeNode * typeParameter: TypeParameterDeclaration -> InferTypeNode
        abstract createImportTypeNode: argument: TypeNode * ?qualifier: EntityName * ?typeArguments: ResizeArray<TypeNode> * ?isTypeOf: bool -> ImportTypeNode
        abstract updateImportTypeNode: node: ImportTypeNode * argument: TypeNode * qualifier: EntityName option * typeArguments: ResizeArray<TypeNode> option * ?isTypeOf: bool -> ImportTypeNode
        abstract createParenthesizedType: ``type``: TypeNode -> ParenthesizedTypeNode
        abstract updateParenthesizedType: node: ParenthesizedTypeNode * ``type``: TypeNode -> ParenthesizedTypeNode
        abstract createThisTypeNode: unit -> ThisTypeNode
        abstract createTypeOperatorNode: operator: SyntaxKind * ``type``: TypeNode -> TypeOperatorNode
        abstract updateTypeOperatorNode: node: TypeOperatorNode * ``type``: TypeNode -> TypeOperatorNode
        abstract createIndexedAccessTypeNode: objectType: TypeNode * indexType: TypeNode -> IndexedAccessTypeNode
        abstract updateIndexedAccessTypeNode: node: IndexedAccessTypeNode * objectType: TypeNode * indexType: TypeNode -> IndexedAccessTypeNode
        abstract createMappedTypeNode: readonlyToken: U3<ReadonlyKeyword, PlusToken, MinusToken> option * typeParameter: TypeParameterDeclaration * nameType: TypeNode option * questionToken: U3<QuestionToken, PlusToken, MinusToken> option * ``type``: TypeNode option -> MappedTypeNode
        abstract updateMappedTypeNode: node: MappedTypeNode * readonlyToken: U3<ReadonlyKeyword, PlusToken, MinusToken> option * typeParameter: TypeParameterDeclaration * nameType: TypeNode option * questionToken: U3<QuestionToken, PlusToken, MinusToken> option * ``type``: TypeNode option -> MappedTypeNode
        abstract createLiteralTypeNode: literal: LiteralTypeNode -> LiteralTypeNode
        abstract updateLiteralTypeNode: node: LiteralTypeNode * literal: LiteralTypeNode -> LiteralTypeNode
        abstract createTemplateLiteralType: head: TemplateHead * templateSpans: ResizeArray<TemplateLiteralTypeSpan> -> TemplateLiteralTypeNode
        abstract updateTemplateLiteralType: node: TemplateLiteralTypeNode * head: TemplateHead * templateSpans: ResizeArray<TemplateLiteralTypeSpan> -> TemplateLiteralTypeNode
        abstract createObjectBindingPattern: elements: ResizeArray<BindingElement> -> ObjectBindingPattern
        abstract updateObjectBindingPattern: node: ObjectBindingPattern * elements: ResizeArray<BindingElement> -> ObjectBindingPattern
        abstract createArrayBindingPattern: elements: ResizeArray<ArrayBindingElement> -> ArrayBindingPattern
        abstract updateArrayBindingPattern: node: ArrayBindingPattern * elements: ResizeArray<ArrayBindingElement> -> ArrayBindingPattern
        abstract createBindingElement: dotDotDotToken: DotDotDotToken option * propertyName: U2<string, PropertyName> option * name: U2<string, BindingName> * ?initializer: Expression -> BindingElement
        abstract updateBindingElement: node: BindingElement * dotDotDotToken: DotDotDotToken option * propertyName: PropertyName option * name: BindingName * initializer: Expression option -> BindingElement
        abstract createArrayLiteralExpression: ?elements: ResizeArray<Expression> * ?multiLine: bool -> ArrayLiteralExpression
        abstract updateArrayLiteralExpression: node: ArrayLiteralExpression * elements: ResizeArray<Expression> -> ArrayLiteralExpression
        abstract createObjectLiteralExpression: ?properties: ResizeArray<ObjectLiteralElementLike> * ?multiLine: bool -> ObjectLiteralExpression
        abstract updateObjectLiteralExpression: node: ObjectLiteralExpression * properties: ResizeArray<ObjectLiteralElementLike> -> ObjectLiteralExpression
        abstract createPropertyAccessExpression: expression: Expression * name: U3<string, Identifier, PrivateIdentifier> -> PropertyAccessExpression
        abstract updatePropertyAccessExpression: node: PropertyAccessExpression * expression: Expression * name: U2<Identifier, PrivateIdentifier> -> PropertyAccessExpression
        abstract createPropertyAccessChain: expression: Expression * questionDotToken: QuestionDotToken option * name: U3<string, Identifier, PrivateIdentifier> -> PropertyAccessChain
        abstract updatePropertyAccessChain: node: PropertyAccessChain * expression: Expression * questionDotToken: QuestionDotToken option * name: U2<Identifier, PrivateIdentifier> -> PropertyAccessChain
        abstract createElementAccessExpression: expression: Expression * index: U2<float, Expression> -> ElementAccessExpression
        abstract updateElementAccessExpression: node: ElementAccessExpression * expression: Expression * argumentExpression: Expression -> ElementAccessExpression
        abstract createElementAccessChain: expression: Expression * questionDotToken: QuestionDotToken option * index: U2<float, Expression> -> ElementAccessChain
        abstract updateElementAccessChain: node: ElementAccessChain * expression: Expression * questionDotToken: QuestionDotToken option * argumentExpression: Expression -> ElementAccessChain
        abstract createCallExpression: expression: Expression * typeArguments: ResizeArray<TypeNode> option * argumentsArray: ResizeArray<Expression> option -> CallExpression
        abstract updateCallExpression: node: CallExpression * expression: Expression * typeArguments: ResizeArray<TypeNode> option * argumentsArray: ResizeArray<Expression> -> CallExpression
        abstract createCallChain: expression: Expression * questionDotToken: QuestionDotToken option * typeArguments: ResizeArray<TypeNode> option * argumentsArray: ResizeArray<Expression> option -> CallChain
        abstract updateCallChain: node: CallChain * expression: Expression * questionDotToken: QuestionDotToken option * typeArguments: ResizeArray<TypeNode> option * argumentsArray: ResizeArray<Expression> -> CallChain
        abstract createNewExpression: expression: Expression * typeArguments: ResizeArray<TypeNode> option * argumentsArray: ResizeArray<Expression> option -> NewExpression
        abstract updateNewExpression: node: NewExpression * expression: Expression * typeArguments: ResizeArray<TypeNode> option * argumentsArray: ResizeArray<Expression> option -> NewExpression
        abstract createTaggedTemplateExpression: tag: Expression * typeArguments: ResizeArray<TypeNode> option * template: TemplateLiteral -> TaggedTemplateExpression
        abstract updateTaggedTemplateExpression: node: TaggedTemplateExpression * tag: Expression * typeArguments: ResizeArray<TypeNode> option * template: TemplateLiteral -> TaggedTemplateExpression
        abstract createTypeAssertion: ``type``: TypeNode * expression: Expression -> TypeAssertion
        abstract updateTypeAssertion: node: TypeAssertion * ``type``: TypeNode * expression: Expression -> TypeAssertion
        abstract createParenthesizedExpression: expression: Expression -> ParenthesizedExpression
        abstract updateParenthesizedExpression: node: ParenthesizedExpression * expression: Expression -> ParenthesizedExpression
        abstract createFunctionExpression: modifiers: ResizeArray<Modifier> option * asteriskToken: AsteriskToken option * name: U2<string, Identifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> option * ``type``: TypeNode option * body: Block -> FunctionExpression
        abstract updateFunctionExpression: node: FunctionExpression * modifiers: ResizeArray<Modifier> option * asteriskToken: AsteriskToken option * name: Identifier option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: Block -> FunctionExpression
        abstract createArrowFunction: modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * equalsGreaterThanToken: EqualsGreaterThanToken option * body: ConciseBody -> ArrowFunction
        abstract updateArrowFunction: node: ArrowFunction * modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * equalsGreaterThanToken: EqualsGreaterThanToken * body: ConciseBody -> ArrowFunction
        abstract createDeleteExpression: expression: Expression -> DeleteExpression
        abstract updateDeleteExpression: node: DeleteExpression * expression: Expression -> DeleteExpression
        abstract createTypeOfExpression: expression: Expression -> TypeOfExpression
        abstract updateTypeOfExpression: node: TypeOfExpression * expression: Expression -> TypeOfExpression
        abstract createVoidExpression: expression: Expression -> VoidExpression
        abstract updateVoidExpression: node: VoidExpression * expression: Expression -> VoidExpression
        abstract createAwaitExpression: expression: Expression -> AwaitExpression
        abstract updateAwaitExpression: node: AwaitExpression * expression: Expression -> AwaitExpression
        abstract createPrefixUnaryExpression: operator: PrefixUnaryOperator * operand: Expression -> PrefixUnaryExpression
        abstract updatePrefixUnaryExpression: node: PrefixUnaryExpression * operand: Expression -> PrefixUnaryExpression
        abstract createPostfixUnaryExpression: operand: Expression * operator: PostfixUnaryOperator -> PostfixUnaryExpression
        abstract updatePostfixUnaryExpression: node: PostfixUnaryExpression * operand: Expression -> PostfixUnaryExpression
        abstract createBinaryExpression: left: Expression * operator: U2<BinaryOperator, BinaryOperatorToken> * right: Expression -> BinaryExpression
        abstract updateBinaryExpression: node: BinaryExpression * left: Expression * operator: U2<BinaryOperator, BinaryOperatorToken> * right: Expression -> BinaryExpression
        abstract createConditionalExpression: condition: Expression * questionToken: QuestionToken option * whenTrue: Expression * colonToken: ColonToken option * whenFalse: Expression -> ConditionalExpression
        abstract updateConditionalExpression: node: ConditionalExpression * condition: Expression * questionToken: QuestionToken * whenTrue: Expression * colonToken: ColonToken * whenFalse: Expression -> ConditionalExpression
        abstract createTemplateExpression: head: TemplateHead * templateSpans: ResizeArray<TemplateSpan> -> TemplateExpression
        abstract updateTemplateExpression: node: TemplateExpression * head: TemplateHead * templateSpans: ResizeArray<TemplateSpan> -> TemplateExpression
        abstract createTemplateHead: text: string * ?rawText: string * ?templateFlags: TokenFlags -> TemplateHead
        abstract createTemplateHead: text: string option * rawText: string * ?templateFlags: TokenFlags -> TemplateHead
        abstract createTemplateMiddle: text: string * ?rawText: string * ?templateFlags: TokenFlags -> TemplateMiddle
        abstract createTemplateMiddle: text: string option * rawText: string * ?templateFlags: TokenFlags -> TemplateMiddle
        abstract createTemplateTail: text: string * ?rawText: string * ?templateFlags: TokenFlags -> TemplateTail
        abstract createTemplateTail: text: string option * rawText: string * ?templateFlags: TokenFlags -> TemplateTail
        abstract createNoSubstitutionTemplateLiteral: text: string * ?rawText: string -> NoSubstitutionTemplateLiteral
        abstract createNoSubstitutionTemplateLiteral: text: string option * rawText: string -> NoSubstitutionTemplateLiteral
        abstract createYieldExpression: asteriskToken: AsteriskToken * expression: Expression -> YieldExpression
        abstract createYieldExpression: asteriskToken: obj * expression: Expression option -> YieldExpression
        abstract updateYieldExpression: node: YieldExpression * asteriskToken: AsteriskToken option * expression: Expression option -> YieldExpression
        abstract createSpreadElement: expression: Expression -> SpreadElement
        abstract updateSpreadElement: node: SpreadElement * expression: Expression -> SpreadElement
        abstract createClassExpression: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, Identifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * heritageClauses: ResizeArray<HeritageClause> option * members: ResizeArray<ClassElement> -> ClassExpression
        abstract updateClassExpression: node: ClassExpression * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: Identifier option * typeParameters: ResizeArray<TypeParameterDeclaration> option * heritageClauses: ResizeArray<HeritageClause> option * members: ResizeArray<ClassElement> -> ClassExpression
        abstract createOmittedExpression: unit -> OmittedExpression
        abstract createExpressionWithTypeArguments: expression: Expression * typeArguments: ResizeArray<TypeNode> option -> ExpressionWithTypeArguments
        abstract updateExpressionWithTypeArguments: node: ExpressionWithTypeArguments * expression: Expression * typeArguments: ResizeArray<TypeNode> option -> ExpressionWithTypeArguments
        abstract createAsExpression: expression: Expression * ``type``: TypeNode -> AsExpression
        abstract updateAsExpression: node: AsExpression * expression: Expression * ``type``: TypeNode -> AsExpression
        abstract createNonNullExpression: expression: Expression -> NonNullExpression
        abstract updateNonNullExpression: node: NonNullExpression * expression: Expression -> NonNullExpression
        abstract createNonNullChain: expression: Expression -> NonNullChain
        abstract updateNonNullChain: node: NonNullChain * expression: Expression -> NonNullChain
        abstract createMetaProperty: keywordToken: MetaProperty * name: Identifier -> MetaProperty
        abstract updateMetaProperty: node: MetaProperty * name: Identifier -> MetaProperty
        abstract createTemplateSpan: expression: Expression * literal: U2<TemplateMiddle, TemplateTail> -> TemplateSpan
        abstract updateTemplateSpan: node: TemplateSpan * expression: Expression * literal: U2<TemplateMiddle, TemplateTail> -> TemplateSpan
        abstract createSemicolonClassElement: unit -> SemicolonClassElement
        abstract createBlock: statements: ResizeArray<Statement> * ?multiLine: bool -> Block
        abstract updateBlock: node: Block * statements: ResizeArray<Statement> -> Block
        abstract createVariableStatement: modifiers: ResizeArray<Modifier> option * declarationList: U2<VariableDeclarationList, ResizeArray<VariableDeclaration>> -> VariableStatement
        abstract updateVariableStatement: node: VariableStatement * modifiers: ResizeArray<Modifier> option * declarationList: VariableDeclarationList -> VariableStatement
        abstract createEmptyStatement: unit -> EmptyStatement
        abstract createExpressionStatement: expression: Expression -> ExpressionStatement
        abstract updateExpressionStatement: node: ExpressionStatement * expression: Expression -> ExpressionStatement
        abstract createIfStatement: expression: Expression * thenStatement: Statement * ?elseStatement: Statement -> IfStatement
        abstract updateIfStatement: node: IfStatement * expression: Expression * thenStatement: Statement * elseStatement: Statement option -> IfStatement
        abstract createDoStatement: statement: Statement * expression: Expression -> DoStatement
        abstract updateDoStatement: node: DoStatement * statement: Statement * expression: Expression -> DoStatement
        abstract createWhileStatement: expression: Expression * statement: Statement -> WhileStatement
        abstract updateWhileStatement: node: WhileStatement * expression: Expression * statement: Statement -> WhileStatement
        abstract createForStatement: initializer: ForInitializer option * condition: Expression option * incrementor: Expression option * statement: Statement -> ForStatement
        abstract updateForStatement: node: ForStatement * initializer: ForInitializer option * condition: Expression option * incrementor: Expression option * statement: Statement -> ForStatement
        abstract createForInStatement: initializer: ForInitializer * expression: Expression * statement: Statement -> ForInStatement
        abstract updateForInStatement: node: ForInStatement * initializer: ForInitializer * expression: Expression * statement: Statement -> ForInStatement
        abstract createForOfStatement: awaitModifier: AwaitKeyword option * initializer: ForInitializer * expression: Expression * statement: Statement -> ForOfStatement
        abstract updateForOfStatement: node: ForOfStatement * awaitModifier: AwaitKeyword option * initializer: ForInitializer * expression: Expression * statement: Statement -> ForOfStatement
        abstract createContinueStatement: ?label: U2<string, Identifier> -> ContinueStatement
        abstract updateContinueStatement: node: ContinueStatement * label: Identifier option -> ContinueStatement
        abstract createBreakStatement: ?label: U2<string, Identifier> -> BreakStatement
        abstract updateBreakStatement: node: BreakStatement * label: Identifier option -> BreakStatement
        abstract createReturnStatement: ?expression: Expression -> ReturnStatement
        abstract updateReturnStatement: node: ReturnStatement * expression: Expression option -> ReturnStatement
        abstract createWithStatement: expression: Expression * statement: Statement -> WithStatement
        abstract updateWithStatement: node: WithStatement * expression: Expression * statement: Statement -> WithStatement
        abstract createSwitchStatement: expression: Expression * caseBlock: CaseBlock -> SwitchStatement
        abstract updateSwitchStatement: node: SwitchStatement * expression: Expression * caseBlock: CaseBlock -> SwitchStatement
        abstract createLabeledStatement: label: U2<string, Identifier> * statement: Statement -> LabeledStatement
        abstract updateLabeledStatement: node: LabeledStatement * label: Identifier * statement: Statement -> LabeledStatement
        abstract createThrowStatement: expression: Expression -> ThrowStatement
        abstract updateThrowStatement: node: ThrowStatement * expression: Expression -> ThrowStatement
        abstract createTryStatement: tryBlock: Block * catchClause: CatchClause option * finallyBlock: Block option -> TryStatement
        abstract updateTryStatement: node: TryStatement * tryBlock: Block * catchClause: CatchClause option * finallyBlock: Block option -> TryStatement
        abstract createDebuggerStatement: unit -> DebuggerStatement
        abstract createVariableDeclaration: name: U2<string, BindingName> * ?exclamationToken: ExclamationToken * ?``type``: TypeNode * ?initializer: Expression -> VariableDeclaration
        abstract updateVariableDeclaration: node: VariableDeclaration * name: BindingName * exclamationToken: ExclamationToken option * ``type``: TypeNode option * initializer: Expression option -> VariableDeclaration
        abstract createVariableDeclarationList: declarations: ResizeArray<VariableDeclaration> * ?flags: NodeFlags -> VariableDeclarationList
        abstract updateVariableDeclarationList: node: VariableDeclarationList * declarations: ResizeArray<VariableDeclaration> -> VariableDeclarationList
        abstract createFunctionDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * asteriskToken: AsteriskToken option * name: U2<string, Identifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: Block option -> FunctionDeclaration
        abstract updateFunctionDeclaration: node: FunctionDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * asteriskToken: AsteriskToken option * name: Identifier option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: Block option -> FunctionDeclaration
        abstract createClassDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, Identifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * heritageClauses: ResizeArray<HeritageClause> option * members: ResizeArray<ClassElement> -> ClassDeclaration
        abstract updateClassDeclaration: node: ClassDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: Identifier option * typeParameters: ResizeArray<TypeParameterDeclaration> option * heritageClauses: ResizeArray<HeritageClause> option * members: ResizeArray<ClassElement> -> ClassDeclaration
        abstract createInterfaceDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, Identifier> * typeParameters: ResizeArray<TypeParameterDeclaration> option * heritageClauses: ResizeArray<HeritageClause> option * members: ResizeArray<TypeElement> -> InterfaceDeclaration
        abstract updateInterfaceDeclaration: node: InterfaceDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: Identifier * typeParameters: ResizeArray<TypeParameterDeclaration> option * heritageClauses: ResizeArray<HeritageClause> option * members: ResizeArray<TypeElement> -> InterfaceDeclaration
        abstract createTypeAliasDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, Identifier> * typeParameters: ResizeArray<TypeParameterDeclaration> option * ``type``: TypeNode -> TypeAliasDeclaration
        abstract updateTypeAliasDeclaration: node: TypeAliasDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: Identifier * typeParameters: ResizeArray<TypeParameterDeclaration> option * ``type``: TypeNode -> TypeAliasDeclaration
        abstract createEnumDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: U2<string, Identifier> * members: ResizeArray<EnumMember> -> EnumDeclaration
        abstract updateEnumDeclaration: node: EnumDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: Identifier * members: ResizeArray<EnumMember> -> EnumDeclaration
        abstract createModuleDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: ModuleName * body: ModuleBody option * ?flags: NodeFlags -> ModuleDeclaration
        abstract updateModuleDeclaration: node: ModuleDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * name: ModuleName * body: ModuleBody option -> ModuleDeclaration
        abstract createModuleBlock: statements: ResizeArray<Statement> -> ModuleBlock
        abstract updateModuleBlock: node: ModuleBlock * statements: ResizeArray<Statement> -> ModuleBlock
        abstract createCaseBlock: clauses: ResizeArray<CaseOrDefaultClause> -> CaseBlock
        abstract updateCaseBlock: node: CaseBlock * clauses: ResizeArray<CaseOrDefaultClause> -> CaseBlock
        abstract createNamespaceExportDeclaration: name: U2<string, Identifier> -> NamespaceExportDeclaration
        abstract updateNamespaceExportDeclaration: node: NamespaceExportDeclaration * name: Identifier -> NamespaceExportDeclaration
        abstract createImportEqualsDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * isTypeOnly: bool * name: U2<string, Identifier> * moduleReference: ModuleReference -> ImportEqualsDeclaration
        abstract updateImportEqualsDeclaration: node: ImportEqualsDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * isTypeOnly: bool * name: Identifier * moduleReference: ModuleReference -> ImportEqualsDeclaration
        abstract createImportDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * importClause: ImportClause option * moduleSpecifier: Expression -> ImportDeclaration
        abstract updateImportDeclaration: node: ImportDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * importClause: ImportClause option * moduleSpecifier: Expression -> ImportDeclaration
        abstract createImportClause: isTypeOnly: bool * name: Identifier option * namedBindings: NamedImportBindings option -> ImportClause
        abstract updateImportClause: node: ImportClause * isTypeOnly: bool * name: Identifier option * namedBindings: NamedImportBindings option -> ImportClause
        abstract createNamespaceImport: name: Identifier -> NamespaceImport
        abstract updateNamespaceImport: node: NamespaceImport * name: Identifier -> NamespaceImport
        abstract createNamespaceExport: name: Identifier -> NamespaceExport
        abstract updateNamespaceExport: node: NamespaceExport * name: Identifier -> NamespaceExport
        abstract createNamedImports: elements: ResizeArray<ImportSpecifier> -> NamedImports
        abstract updateNamedImports: node: NamedImports * elements: ResizeArray<ImportSpecifier> -> NamedImports
        abstract createImportSpecifier: propertyName: Identifier option * name: Identifier -> ImportSpecifier
        abstract updateImportSpecifier: node: ImportSpecifier * propertyName: Identifier option * name: Identifier -> ImportSpecifier
        abstract createExportAssignment: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * isExportEquals: bool option * expression: Expression -> ExportAssignment
        abstract updateExportAssignment: node: ExportAssignment * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * expression: Expression -> ExportAssignment
        abstract createExportDeclaration: decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * isTypeOnly: bool * exportClause: NamedExportBindings option * ?moduleSpecifier: Expression -> ExportDeclaration
        abstract updateExportDeclaration: node: ExportDeclaration * decorators: ResizeArray<Decorator> option * modifiers: ResizeArray<Modifier> option * isTypeOnly: bool * exportClause: NamedExportBindings option * moduleSpecifier: Expression option -> ExportDeclaration
        abstract createNamedExports: elements: ResizeArray<ExportSpecifier> -> NamedExports
        abstract updateNamedExports: node: NamedExports * elements: ResizeArray<ExportSpecifier> -> NamedExports
        abstract createExportSpecifier: propertyName: U2<string, Identifier> option * name: U2<string, Identifier> -> ExportSpecifier
        abstract updateExportSpecifier: node: ExportSpecifier * propertyName: Identifier option * name: Identifier -> ExportSpecifier
        abstract createExternalModuleReference: expression: Expression -> ExternalModuleReference
        abstract updateExternalModuleReference: node: ExternalModuleReference * expression: Expression -> ExternalModuleReference
        abstract createJSDocAllType: unit -> JSDocAllType
        abstract createJSDocUnknownType: unit -> JSDocUnknownType
        abstract createJSDocNonNullableType: ``type``: TypeNode -> JSDocNonNullableType
        abstract updateJSDocNonNullableType: node: JSDocNonNullableType * ``type``: TypeNode -> JSDocNonNullableType
        abstract createJSDocNullableType: ``type``: TypeNode -> JSDocNullableType
        abstract updateJSDocNullableType: node: JSDocNullableType * ``type``: TypeNode -> JSDocNullableType
        abstract createJSDocOptionalType: ``type``: TypeNode -> JSDocOptionalType
        abstract updateJSDocOptionalType: node: JSDocOptionalType * ``type``: TypeNode -> JSDocOptionalType
        abstract createJSDocFunctionType: parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> JSDocFunctionType
        abstract updateJSDocFunctionType: node: JSDocFunctionType * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option -> JSDocFunctionType
        abstract createJSDocVariadicType: ``type``: TypeNode -> JSDocVariadicType
        abstract updateJSDocVariadicType: node: JSDocVariadicType * ``type``: TypeNode -> JSDocVariadicType
        abstract createJSDocNamepathType: ``type``: TypeNode -> JSDocNamepathType
        abstract updateJSDocNamepathType: node: JSDocNamepathType * ``type``: TypeNode -> JSDocNamepathType
        abstract createJSDocTypeExpression: ``type``: TypeNode -> JSDocTypeExpression
        abstract updateJSDocTypeExpression: node: JSDocTypeExpression * ``type``: TypeNode -> JSDocTypeExpression
        abstract createJSDocNameReference: name: EntityName -> JSDocNameReference
        abstract updateJSDocNameReference: node: JSDocNameReference * name: EntityName -> JSDocNameReference
        abstract createJSDocTypeLiteral: ?jsDocPropertyTags: ResizeArray<JSDocPropertyLikeTag> * ?isArrayType: bool -> JSDocTypeLiteral
        abstract updateJSDocTypeLiteral: node: JSDocTypeLiteral * jsDocPropertyTags: ResizeArray<JSDocPropertyLikeTag> option * isArrayType: bool option -> JSDocTypeLiteral
        abstract createJSDocSignature: typeParameters: ResizeArray<JSDocTemplateTag> option * parameters: ResizeArray<JSDocParameterTag> * ?``type``: JSDocReturnTag -> JSDocSignature
        abstract updateJSDocSignature: node: JSDocSignature * typeParameters: ResizeArray<JSDocTemplateTag> option * parameters: ResizeArray<JSDocParameterTag> * ``type``: JSDocReturnTag option -> JSDocSignature
        abstract createJSDocTemplateTag: tagName: Identifier option * ``constraint``: JSDocTypeExpression option * typeParameters: ResizeArray<TypeParameterDeclaration> * ?comment: string -> JSDocTemplateTag
        abstract updateJSDocTemplateTag: node: JSDocTemplateTag * tagName: Identifier option * ``constraint``: JSDocTypeExpression option * typeParameters: ResizeArray<TypeParameterDeclaration> * comment: string option -> JSDocTemplateTag
        abstract createJSDocTypedefTag: tagName: Identifier option * ?typeExpression: U2<JSDocTypeExpression, JSDocTypeLiteral> * ?fullName: U2<Identifier, JSDocNamespaceDeclaration> * ?comment: string -> JSDocTypedefTag
        abstract updateJSDocTypedefTag: node: JSDocTypedefTag * tagName: Identifier option * typeExpression: U2<JSDocTypeExpression, JSDocTypeLiteral> option * fullName: U2<Identifier, JSDocNamespaceDeclaration> option * comment: string option -> JSDocTypedefTag
        abstract createJSDocParameterTag: tagName: Identifier option * name: EntityName * isBracketed: bool * ?typeExpression: JSDocTypeExpression * ?isNameFirst: bool * ?comment: string -> JSDocParameterTag
        abstract updateJSDocParameterTag: node: JSDocParameterTag * tagName: Identifier option * name: EntityName * isBracketed: bool * typeExpression: JSDocTypeExpression option * isNameFirst: bool * comment: string option -> JSDocParameterTag
        abstract createJSDocPropertyTag: tagName: Identifier option * name: EntityName * isBracketed: bool * ?typeExpression: JSDocTypeExpression * ?isNameFirst: bool * ?comment: string -> JSDocPropertyTag
        abstract updateJSDocPropertyTag: node: JSDocPropertyTag * tagName: Identifier option * name: EntityName * isBracketed: bool * typeExpression: JSDocTypeExpression option * isNameFirst: bool * comment: string option -> JSDocPropertyTag
        abstract createJSDocTypeTag: tagName: Identifier option * typeExpression: JSDocTypeExpression * ?comment: string -> JSDocTypeTag
        abstract updateJSDocTypeTag: node: JSDocTypeTag * tagName: Identifier option * typeExpression: JSDocTypeExpression * comment: string option -> JSDocTypeTag
        abstract createJSDocSeeTag: tagName: Identifier option * nameExpression: JSDocNameReference option * ?comment: string -> JSDocSeeTag
        abstract updateJSDocSeeTag: node: JSDocSeeTag * tagName: Identifier option * nameExpression: JSDocNameReference option * ?comment: string -> JSDocSeeTag
        abstract createJSDocReturnTag: tagName: Identifier option * ?typeExpression: JSDocTypeExpression * ?comment: string -> JSDocReturnTag
        abstract updateJSDocReturnTag: node: JSDocReturnTag * tagName: Identifier option * typeExpression: JSDocTypeExpression option * comment: string option -> JSDocReturnTag
        abstract createJSDocThisTag: tagName: Identifier option * typeExpression: JSDocTypeExpression * ?comment: string -> JSDocThisTag
        abstract updateJSDocThisTag: node: JSDocThisTag * tagName: Identifier option * typeExpression: JSDocTypeExpression option * comment: string option -> JSDocThisTag
        abstract createJSDocEnumTag: tagName: Identifier option * typeExpression: JSDocTypeExpression * ?comment: string -> JSDocEnumTag
        abstract updateJSDocEnumTag: node: JSDocEnumTag * tagName: Identifier option * typeExpression: JSDocTypeExpression * comment: string option -> JSDocEnumTag
        abstract createJSDocCallbackTag: tagName: Identifier option * typeExpression: JSDocSignature * ?fullName: U2<Identifier, JSDocNamespaceDeclaration> * ?comment: string -> JSDocCallbackTag
        abstract updateJSDocCallbackTag: node: JSDocCallbackTag * tagName: Identifier option * typeExpression: JSDocSignature * fullName: U2<Identifier, JSDocNamespaceDeclaration> option * comment: string option -> JSDocCallbackTag
        abstract createJSDocAugmentsTag: tagName: Identifier option * className: JSDocAugmentsTag * ?comment: string -> JSDocAugmentsTag
        abstract updateJSDocAugmentsTag: node: JSDocAugmentsTag * tagName: Identifier option * className: JSDocAugmentsTag * comment: string option -> JSDocAugmentsTag
        abstract createJSDocImplementsTag: tagName: Identifier option * className: JSDocImplementsTag * ?comment: string -> JSDocImplementsTag
        abstract updateJSDocImplementsTag: node: JSDocImplementsTag * tagName: Identifier option * className: JSDocImplementsTag * comment: string option -> JSDocImplementsTag
        abstract createJSDocAuthorTag: tagName: Identifier option * ?comment: string -> JSDocAuthorTag
        abstract updateJSDocAuthorTag: node: JSDocAuthorTag * tagName: Identifier option * comment: string option -> JSDocAuthorTag
        abstract createJSDocClassTag: tagName: Identifier option * ?comment: string -> JSDocClassTag
        abstract updateJSDocClassTag: node: JSDocClassTag * tagName: Identifier option * comment: string option -> JSDocClassTag
        abstract createJSDocPublicTag: tagName: Identifier option * ?comment: string -> JSDocPublicTag
        abstract updateJSDocPublicTag: node: JSDocPublicTag * tagName: Identifier option * comment: string option -> JSDocPublicTag
        abstract createJSDocPrivateTag: tagName: Identifier option * ?comment: string -> JSDocPrivateTag
        abstract updateJSDocPrivateTag: node: JSDocPrivateTag * tagName: Identifier option * comment: string option -> JSDocPrivateTag
        abstract createJSDocProtectedTag: tagName: Identifier option * ?comment: string -> JSDocProtectedTag
        abstract updateJSDocProtectedTag: node: JSDocProtectedTag * tagName: Identifier option * comment: string option -> JSDocProtectedTag
        abstract createJSDocReadonlyTag: tagName: Identifier option * ?comment: string -> JSDocReadonlyTag
        abstract updateJSDocReadonlyTag: node: JSDocReadonlyTag * tagName: Identifier option * comment: string option -> JSDocReadonlyTag
        abstract createJSDocUnknownTag: tagName: Identifier * ?comment: string -> JSDocUnknownTag
        abstract updateJSDocUnknownTag: node: JSDocUnknownTag * tagName: Identifier * comment: string option -> JSDocUnknownTag
        abstract createJSDocDeprecatedTag: tagName: Identifier * ?comment: string -> JSDocDeprecatedTag
        abstract updateJSDocDeprecatedTag: node: JSDocDeprecatedTag * tagName: Identifier * ?comment: string -> JSDocDeprecatedTag
        abstract createJSDocComment: ?comment: string * ?tags: ResizeArray<JSDocTag> -> JSDoc
        abstract updateJSDocComment: node: JSDoc * comment: string option * tags: ResizeArray<JSDocTag> option -> JSDoc
        abstract createJsxElement: openingElement: JsxOpeningElement * children: ResizeArray<JsxChild> * closingElement: JsxClosingElement -> JsxElement
        abstract updateJsxElement: node: JsxElement * openingElement: JsxOpeningElement * children: ResizeArray<JsxChild> * closingElement: JsxClosingElement -> JsxElement
        abstract createJsxSelfClosingElement: tagName: JsxTagNameExpression * typeArguments: ResizeArray<TypeNode> option * attributes: JsxAttributes -> JsxSelfClosingElement
        abstract updateJsxSelfClosingElement: node: JsxSelfClosingElement * tagName: JsxTagNameExpression * typeArguments: ResizeArray<TypeNode> option * attributes: JsxAttributes -> JsxSelfClosingElement
        abstract createJsxOpeningElement: tagName: JsxTagNameExpression * typeArguments: ResizeArray<TypeNode> option * attributes: JsxAttributes -> JsxOpeningElement
        abstract updateJsxOpeningElement: node: JsxOpeningElement * tagName: JsxTagNameExpression * typeArguments: ResizeArray<TypeNode> option * attributes: JsxAttributes -> JsxOpeningElement
        abstract createJsxClosingElement: tagName: JsxTagNameExpression -> JsxClosingElement
        abstract updateJsxClosingElement: node: JsxClosingElement * tagName: JsxTagNameExpression -> JsxClosingElement
        abstract createJsxFragment: openingFragment: JsxOpeningFragment * children: ResizeArray<JsxChild> * closingFragment: JsxClosingFragment -> JsxFragment
        abstract createJsxText: text: string * ?containsOnlyTriviaWhiteSpaces: bool -> JsxText
        abstract updateJsxText: node: JsxText * text: string * ?containsOnlyTriviaWhiteSpaces: bool -> JsxText
        abstract createJsxOpeningFragment: unit -> JsxOpeningFragment
        abstract createJsxJsxClosingFragment: unit -> JsxClosingFragment
        abstract updateJsxFragment: node: JsxFragment * openingFragment: JsxOpeningFragment * children: ResizeArray<JsxChild> * closingFragment: JsxClosingFragment -> JsxFragment
        abstract createJsxAttribute: name: Identifier * initializer: U2<StringLiteral, JsxExpression> option -> JsxAttribute
        abstract updateJsxAttribute: node: JsxAttribute * name: Identifier * initializer: U2<StringLiteral, JsxExpression> option -> JsxAttribute
        abstract createJsxAttributes: properties: ResizeArray<JsxAttributeLike> -> JsxAttributes
        abstract updateJsxAttributes: node: JsxAttributes * properties: ResizeArray<JsxAttributeLike> -> JsxAttributes
        abstract createJsxSpreadAttribute: expression: Expression -> JsxSpreadAttribute
        abstract updateJsxSpreadAttribute: node: JsxSpreadAttribute * expression: Expression -> JsxSpreadAttribute
        abstract createJsxExpression: dotDotDotToken: DotDotDotToken option * expression: Expression option -> JsxExpression
        abstract updateJsxExpression: node: JsxExpression * expression: Expression option -> JsxExpression
        abstract createCaseClause: expression: Expression * statements: ResizeArray<Statement> -> CaseClause
        abstract updateCaseClause: node: CaseClause * expression: Expression * statements: ResizeArray<Statement> -> CaseClause
        abstract createDefaultClause: statements: ResizeArray<Statement> -> DefaultClause
        abstract updateDefaultClause: node: DefaultClause * statements: ResizeArray<Statement> -> DefaultClause
        abstract createHeritageClause: token: HeritageClause * types: ResizeArray<ExpressionWithTypeArguments> -> HeritageClause
        abstract updateHeritageClause: node: HeritageClause * types: ResizeArray<ExpressionWithTypeArguments> -> HeritageClause
        abstract createCatchClause: variableDeclaration: U2<string, VariableDeclaration> option * block: Block -> CatchClause
        abstract updateCatchClause: node: CatchClause * variableDeclaration: VariableDeclaration option * block: Block -> CatchClause
        abstract createPropertyAssignment: name: U2<string, PropertyName> * initializer: Expression -> PropertyAssignment
        abstract updatePropertyAssignment: node: PropertyAssignment * name: PropertyName * initializer: Expression -> PropertyAssignment
        abstract createShorthandPropertyAssignment: name: U2<string, Identifier> * ?objectAssignmentInitializer: Expression -> ShorthandPropertyAssignment
        abstract updateShorthandPropertyAssignment: node: ShorthandPropertyAssignment * name: Identifier * objectAssignmentInitializer: Expression option -> ShorthandPropertyAssignment
        abstract createSpreadAssignment: expression: Expression -> SpreadAssignment
        abstract updateSpreadAssignment: node: SpreadAssignment * expression: Expression -> SpreadAssignment
        abstract createEnumMember: name: U2<string, PropertyName> * ?initializer: Expression -> EnumMember
        abstract updateEnumMember: node: EnumMember * name: PropertyName * initializer: Expression option -> EnumMember
        abstract createSourceFile: statements: ResizeArray<Statement> * endOfFileToken: EndOfFileToken * flags: NodeFlags -> SourceFile
        abstract updateSourceFile: node: SourceFile * statements: ResizeArray<Statement> * ?isDeclarationFile: bool * ?referencedFiles: ResizeArray<FileReference> * ?typeReferences: ResizeArray<FileReference> * ?hasNoDefaultLib: bool * ?libReferences: ResizeArray<FileReference> -> SourceFile
        abstract createNotEmittedStatement: original: Node -> NotEmittedStatement
        abstract createPartiallyEmittedExpression: expression: Expression * ?original: Node -> PartiallyEmittedExpression
        abstract updatePartiallyEmittedExpression: node: PartiallyEmittedExpression * expression: Expression -> PartiallyEmittedExpression
        abstract createCommaListExpression: elements: ResizeArray<Expression> -> CommaListExpression
        abstract updateCommaListExpression: node: CommaListExpression * elements: ResizeArray<Expression> -> CommaListExpression
        abstract createBundle: sourceFiles: ResizeArray<SourceFile> * ?prepends: ResizeArray<U2<UnparsedSource, InputFiles>> -> Bundle
        abstract updateBundle: node: Bundle * sourceFiles: ResizeArray<SourceFile> * ?prepends: ResizeArray<U2<UnparsedSource, InputFiles>> -> Bundle
        abstract createComma: left: Expression * right: Expression -> BinaryExpression
        abstract createAssignment: left: U2<ObjectLiteralExpression, ArrayLiteralExpression> * right: Expression -> DestructuringAssignment
        abstract createAssignment: left: Expression * right: Expression -> AssignmentExpression<EqualsToken>
        abstract createLogicalOr: left: Expression * right: Expression -> BinaryExpression
        abstract createLogicalAnd: left: Expression * right: Expression -> BinaryExpression
        abstract createBitwiseOr: left: Expression * right: Expression -> BinaryExpression
        abstract createBitwiseXor: left: Expression * right: Expression -> BinaryExpression
        abstract createBitwiseAnd: left: Expression * right: Expression -> BinaryExpression
        abstract createStrictEquality: left: Expression * right: Expression -> BinaryExpression
        abstract createStrictInequality: left: Expression * right: Expression -> BinaryExpression
        abstract createEquality: left: Expression * right: Expression -> BinaryExpression
        abstract createInequality: left: Expression * right: Expression -> BinaryExpression
        abstract createLessThan: left: Expression * right: Expression -> BinaryExpression
        abstract createLessThanEquals: left: Expression * right: Expression -> BinaryExpression
        abstract createGreaterThan: left: Expression * right: Expression -> BinaryExpression
        abstract createGreaterThanEquals: left: Expression * right: Expression -> BinaryExpression
        abstract createLeftShift: left: Expression * right: Expression -> BinaryExpression
        abstract createRightShift: left: Expression * right: Expression -> BinaryExpression
        abstract createUnsignedRightShift: left: Expression * right: Expression -> BinaryExpression
        abstract createAdd: left: Expression * right: Expression -> BinaryExpression
        abstract createSubtract: left: Expression * right: Expression -> BinaryExpression
        abstract createMultiply: left: Expression * right: Expression -> BinaryExpression
        abstract createDivide: left: Expression * right: Expression -> BinaryExpression
        abstract createModulo: left: Expression * right: Expression -> BinaryExpression
        abstract createExponent: left: Expression * right: Expression -> BinaryExpression
        abstract createPrefixPlus: operand: Expression -> PrefixUnaryExpression
        abstract createPrefixMinus: operand: Expression -> PrefixUnaryExpression
        abstract createPrefixIncrement: operand: Expression -> PrefixUnaryExpression
        abstract createPrefixDecrement: operand: Expression -> PrefixUnaryExpression
        abstract createBitwiseNot: operand: Expression -> PrefixUnaryExpression
        abstract createLogicalNot: operand: Expression -> PrefixUnaryExpression
        abstract createPostfixIncrement: operand: Expression -> PostfixUnaryExpression
        abstract createPostfixDecrement: operand: Expression -> PostfixUnaryExpression
        abstract createImmediatelyInvokedFunctionExpression: statements: ResizeArray<Statement> -> CallExpression
        abstract createImmediatelyInvokedFunctionExpression: statements: ResizeArray<Statement> * param: ParameterDeclaration * paramValue: Expression -> CallExpression
        abstract createImmediatelyInvokedArrowFunction: statements: ResizeArray<Statement> -> CallExpression
        abstract createImmediatelyInvokedArrowFunction: statements: ResizeArray<Statement> * param: ParameterDeclaration * paramValue: Expression -> CallExpression
        abstract createVoidZero: unit -> VoidExpression
        abstract createExportDefault: expression: Expression -> ExportAssignment
        abstract createExternalModuleExport: exportName: Identifier -> ExportDeclaration
        abstract restoreOuterExpressions: outerExpression: Expression option * innerExpression: Expression * ?kinds: OuterExpressionKinds -> Expression

    type [<AllowNullLiteral>] CoreTransformationContext =
        abstract factory: NodeFactory
        /// Gets the compiler options supplied to the transformer.
        abstract getCompilerOptions: unit -> CompilerOptions
        /// Starts a new lexical environment.
        abstract startLexicalEnvironment: unit -> unit
        /// Suspends the current lexical environment, usually after visiting a parameter list.
        abstract suspendLexicalEnvironment: unit -> unit
        /// Resumes a suspended lexical environment, usually before visiting a function body.
        abstract resumeLexicalEnvironment: unit -> unit
        /// Ends a lexical environment, returning any declarations.
        abstract endLexicalEnvironment: unit -> ResizeArray<Statement> option
        /// Hoists a function declaration to the containing scope.
        abstract hoistFunctionDeclaration: node: FunctionDeclaration -> unit
        /// Hoists a variable declaration to the containing scope.
        abstract hoistVariableDeclaration: node: Identifier -> unit

    type [<AllowNullLiteral>] TransformationContext =
        inherit CoreTransformationContext
        /// Records a request for a non-scoped emit helper in the current context.
        abstract requestEmitHelper: helper: EmitHelper -> unit
        /// Gets and resets the requested non-scoped emit helpers.
        abstract readEmitHelpers: unit -> ResizeArray<EmitHelper> option
        /// Enables expression substitutions in the pretty printer for the provided SyntaxKind.
        abstract enableSubstitution: kind: SyntaxKind -> unit
        /// Determines whether expression substitutions are enabled for the provided node.
        abstract isSubstitutionEnabled: node: Node -> bool
        /// Hook used by transformers to substitute expressions just before they
        /// are emitted by the pretty printer.
        /// 
        /// NOTE: Transformation hooks should only be modified during `Transformer` initialization,
        /// before returning the `NodeTransformer` callback.
        abstract onSubstituteNode: (EmitHint -> Node -> Node) with get, set
        /// Enables before/after emit notifications in the pretty printer for the provided
        /// SyntaxKind.
        abstract enableEmitNotification: kind: SyntaxKind -> unit
        /// Determines whether before/after emit notifications should be raised in the pretty
        /// printer when it emits a node.
        abstract isEmitNotificationEnabled: node: Node -> bool
        /// Hook used to allow transformers to capture state before or after
        /// the printer emits a node.
        /// 
        /// NOTE: Transformation hooks should only be modified during `Transformer` initialization,
        /// before returning the `NodeTransformer` callback.
        abstract onEmitNode: (EmitHint -> Node -> (EmitHint -> Node -> unit) -> unit) with get, set

    type [<AllowNullLiteral>] TransformationResult<'T> =
        /// Gets the transformed source files.
        abstract transformed: ResizeArray<'T> with get, set
        /// Gets diagnostics for the transformation.
        abstract diagnostics: ResizeArray<DiagnosticWithLocation> option with get, set
        /// <summary>Gets a substitute for a node, if one is available; otherwise, returns the original node.</summary>
        /// <param name="hint">A hint as to the intended usage of the node.</param>
        /// <param name="node">The node to substitute.</param>
        abstract substituteNode: hint: EmitHint * node: Node -> Node
        /// <summary>Emits a node with possible notification.</summary>
        /// <param name="hint">A hint as to the intended usage of the node.</param>
        /// <param name="node">The node to emit.</param>
        /// <param name="emitCallback">A callback used to emit the node.</param>
        abstract emitNodeWithNotification: hint: EmitHint * node: Node * emitCallback: (EmitHint -> Node -> unit) -> unit
        /// <summary>Indicates if a given node needs an emit notification</summary>
        /// <param name="node">The node to emit.</param>
        abstract isEmitNotificationEnabled: node: Node -> bool
        /// Clean up EmitNode entries on any parse-tree nodes.
        abstract dispose: unit -> unit

    type [<AllowNullLiteral>] TransformerFactory<'T> =
        [<Emit "$0($1...)">] abstract Invoke: context: TransformationContext -> Transformer<'T>

    type [<AllowNullLiteral>] Transformer<'T> =
        [<Emit "$0($1...)">] abstract Invoke: node: 'T -> 'T

    type [<AllowNullLiteral>] Visitor =
        [<Emit "$0($1...)">] abstract Invoke: node: Node -> VisitResult<Node>

    type [<AllowNullLiteral>] NodeVisitor =
        [<Emit "$0($1...)">] abstract Invoke: nodes: 'T * visitor: Visitor option * ?test: (Node -> bool) * ?lift: (ResizeArray<Node> -> 'T) -> 'T
        [<Emit "$0($1...)">] abstract Invoke: nodes: 'T option * visitor: Visitor option * ?test: (Node -> bool) * ?lift: (ResizeArray<Node> -> 'T) -> 'T option

    type [<AllowNullLiteral>] NodesVisitor =
        [<Emit "$0($1...)">] abstract Invoke: nodes: ResizeArray<'T> * visitor: Visitor option * ?test: (Node -> bool) * ?start: float * ?count: float -> ResizeArray<'T>
        [<Emit "$0($1...)">] abstract Invoke: nodes: ResizeArray<'T> option * visitor: Visitor option * ?test: (Node -> bool) * ?start: float * ?count: float -> ResizeArray<'T> option

    type VisitResult<'T> =
        U2<'T, ResizeArray<'T>> option

    type [<AllowNullLiteral>] Printer =
        /// <summary>Print a node and its subtree as-is, without any emit transformations.</summary>
        /// <param name="hint">A value indicating the purpose of a node. This is primarily used to
        /// distinguish between an `Identifier` used in an expression position, versus an
        /// `Identifier` used as an `IdentifierName` as part of a declaration. For most nodes you
        /// should just pass `Unspecified`.</param>
        /// <param name="node">The node to print. The node and its subtree are printed as-is, without any
        /// emit transformations.</param>
        /// <param name="sourceFile">A source file that provides context for the node. The source text of
        /// the file is used to emit the original source content for literals and identifiers, while
        /// the identifiers of the source file are used when generating unique names to avoid
        /// collisions.</param>
        abstract printNode: hint: EmitHint * node: Node * sourceFile: SourceFile -> string
        /// Prints a list of nodes using the given format flags
        abstract printList: format: ListFormat * list: ResizeArray<'T> * sourceFile: SourceFile -> string
        /// Prints a source file as-is, without any emit transformations.
        abstract printFile: sourceFile: SourceFile -> string
        /// Prints a bundle of source files as-is, without any emit transformations.
        abstract printBundle: bundle: Bundle -> string

    type [<AllowNullLiteral>] PrintHandlers =
        /// A hook used by the Printer when generating unique names to avoid collisions with
        /// globally defined names that exist outside of the current source file.
        abstract hasGlobalName: name: string -> bool
        /// <summary>A hook used by the Printer to provide notifications prior to emitting a node. A
        /// compatible implementation **must** invoke `emitCallback` with the provided `hint` and
        /// `node` values.</summary>
        /// <param name="hint">A hint indicating the intended purpose of the node.</param>
        /// <param name="node">The node to emit.</param>
        /// <param name="emitCallback">A callback that, when invoked, will emit the node.</param>
        abstract onEmitNode: hint: EmitHint * node: Node option * emitCallback: (EmitHint -> Node option -> unit) -> unit
        /// <summary>A hook used to check if an emit notification is required for a node.</summary>
        /// <param name="node">The node to emit.</param>
        abstract isEmitNotificationEnabled: node: Node option -> bool
        /// <summary>A hook used by the Printer to perform just-in-time substitution of a node. This is
        /// primarily used by node transformations that need to substitute one node for another,
        /// such as replacing `myExportedVar` with `exports.myExportedVar`.</summary>
        /// <param name="hint">A hint indicating the intended purpose of the node.</param>
        /// <param name="node">The node to emit.</param>
        abstract substituteNode: hint: EmitHint * node: Node -> Node

    type [<AllowNullLiteral>] PrinterOptions =
        abstract removeComments: bool option with get, set
        abstract newLine: NewLineKind option with get, set
        abstract omitTrailingSemicolon: bool option with get, set
        abstract noEmitHelpers: bool option with get, set

    type [<AllowNullLiteral>] GetEffectiveTypeRootsHost =
        abstract directoryExists: directoryName: string -> bool
        abstract getCurrentDirectory: unit -> string

    type [<AllowNullLiteral>] TextSpan =
        abstract start: float with get, set
        abstract length: float with get, set

    type [<AllowNullLiteral>] TextChangeRange =
        abstract span: TextSpan with get, set
        abstract newLength: float with get, set

    type [<AllowNullLiteral>] SyntaxList =
        inherit Node
        abstract kind: SyntaxKind with get, set
        abstract _children: ResizeArray<Node> with get, set

    type [<RequireQualifiedAccess>] ListFormat =
        | None = 0
        | SingleLine = 0
        | MultiLine = 1
        | PreserveLines = 2
        | LinesMask = 3
        | NotDelimited = 0
        | BarDelimited = 4
        | AmpersandDelimited = 8
        | CommaDelimited = 16
        | AsteriskDelimited = 32
        | DelimitersMask = 60
        | AllowTrailingComma = 64
        | Indented = 128
        | SpaceBetweenBraces = 256
        | SpaceBetweenSiblings = 512
        | Braces = 1024
        | Parenthesis = 2048
        | AngleBrackets = 4096
        | SquareBrackets = 8192
        | BracketsMask = 15360
        | OptionalIfUndefined = 16384
        | OptionalIfEmpty = 32768
        | Optional = 49152
        | PreferNewLine = 65536
        | NoTrailingNewLine = 131072
        | NoInterveningComments = 262144
        | NoSpaceIfEmpty = 524288
        | SingleElement = 1048576
        | SpaceAfterList = 2097152
        | Modifiers = 262656
        | HeritageClauses = 512
        | SingleLineTypeLiteralMembers = 768
        | MultiLineTypeLiteralMembers = 32897
        | SingleLineTupleTypeElements = 528
        | MultiLineTupleTypeElements = 657
        | UnionTypeConstituents = 516
        | IntersectionTypeConstituents = 520
        | ObjectBindingPatternElements = 525136
        | ArrayBindingPatternElements = 524880
        | ObjectLiteralExpressionProperties = 526226
        | ArrayLiteralExpressionElements = 8914
        | CommaListElements = 528
        | CallExpressionArguments = 2576
        | NewExpressionArguments = 18960
        | TemplateExpressionSpans = 262144
        | SingleLineBlockStatements = 768
        | MultiLineBlockStatements = 129
        | VariableDeclarationList = 528
        | SingleLineFunctionBodyStatements = 768
        | MultiLineFunctionBodyStatements = 1
        | ClassHeritageClauses = 0
        | ClassMembers = 129
        | InterfaceMembers = 129
        | EnumMembers = 145
        | CaseBlockClauses = 129
        | NamedImportsOrExportsElements = 525136
        | JsxElementOrFragmentChildren = 262144
        | JsxElementAttributes = 262656
        | CaseOrDefaultClauseStatements = 163969
        | HeritageClauseTypes = 528
        | SourceFileStatements = 131073
        | Decorators = 2146305
        | TypeArguments = 53776
        | TypeParameters = 53776
        | Parameters = 2576
        | IndexSignatureParameters = 8848
        | JSDocComment = 33

    type [<AllowNullLiteral>] UserPreferences =
        abstract disableSuggestions: bool option
        abstract quotePreference: UserPreferencesQuotePreference option
        abstract includeCompletionsForModuleExports: bool option
        abstract includeAutomaticOptionalChainCompletions: bool option
        abstract includeCompletionsWithInsertText: bool option
        abstract importModuleSpecifierPreference: UserPreferencesImportModuleSpecifierPreference option
        /// Determines whether we import `foo/index.ts` as "foo", "foo/index", or "foo/index.js"
        abstract importModuleSpecifierEnding: UserPreferencesImportModuleSpecifierEnding option
        abstract allowTextChangesInNewFiles: bool option
        abstract providePrefixAndSuffixTextForRename: bool option
        abstract includePackageJsonAutoImports: UserPreferencesIncludePackageJsonAutoImports option
        abstract provideRefactorNotApplicableReason: bool option

    /// Represents a bigint literal value without requiring bigint support
    type [<AllowNullLiteral>] PseudoBigInt =
        abstract negative: bool with get, set
        abstract base10Value: string with get, set

    type [<RequireQualifiedAccess>] FileWatcherEventKind =
        | Created = 0
        | Changed = 1
        | Deleted = 2

    type [<AllowNullLiteral>] FileWatcherCallback =
        [<Emit "$0($1...)">] abstract Invoke: fileName: string * eventKind: FileWatcherEventKind -> unit

    type [<AllowNullLiteral>] DirectoryWatcherCallback =
        [<Emit "$0($1...)">] abstract Invoke: fileName: string -> unit

    type [<AllowNullLiteral>] System =
        abstract args: ResizeArray<string> with get, set
        abstract newLine: string with get, set
        abstract useCaseSensitiveFileNames: bool with get, set
        abstract write: s: string -> unit
        abstract writeOutputIsTTY: unit -> bool
        abstract readFile: path: string * ?encoding: string -> string option
        abstract getFileSize: path: string -> float
        abstract writeFile: path: string * data: string * ?writeByteOrderMark: bool -> unit
        abstract watchFile: path: string * callback: FileWatcherCallback * ?pollingInterval: float * ?options: WatchOptions -> FileWatcher
        abstract watchDirectory: path: string * callback: DirectoryWatcherCallback * ?recursive: bool * ?options: WatchOptions -> FileWatcher
        abstract resolvePath: path: string -> string
        abstract fileExists: path: string -> bool
        abstract directoryExists: path: string -> bool
        abstract createDirectory: path: string -> unit
        abstract getExecutingFilePath: unit -> string
        abstract getCurrentDirectory: unit -> string
        abstract getDirectories: path: string -> ResizeArray<string>
        abstract readDirectory: path: string * ?extensions: ResizeArray<string> * ?exclude: ResizeArray<string> * ?``include``: ResizeArray<string> * ?depth: float -> ResizeArray<string>
        abstract getModifiedTime: path: string -> DateTime option
        abstract setModifiedTime: path: string * time: DateTime -> unit
        abstract deleteFile: path: string -> unit
        /// A good implementation is node.js' `crypto.createHash`. (https://nodejs.org/api/crypto.html#crypto_crypto_createhash_algorithm)
        abstract createHash: data: string -> string
        /// This must be cryptographically secure. Only implement this method using `crypto.createHash("sha256")`.
        abstract createSHA256Hash: data: string -> string
        abstract getMemoryUsage: unit -> float
        abstract exit: ?exitCode: float -> unit
        abstract realpath: path: string -> string
        abstract setTimeout: callback: (ResizeArray<obj option> -> unit) * ms: float * [<ParamArray>] args: ResizeArray<obj option> -> obj option
        abstract clearTimeout: timeoutId: obj option -> unit
        abstract clearScreen: unit -> unit
        abstract base64decode: input: string -> string
        abstract base64encode: input: string -> string

    type [<AllowNullLiteral>] FileWatcher =
        abstract close: unit -> unit

    type [<AllowNullLiteral>] ErrorCallback =
        [<Emit "$0($1...)">] abstract Invoke: message: DiagnosticMessage * length: float -> unit

    type [<AllowNullLiteral>] Scanner =
        abstract getStartPos: unit -> float
        abstract getToken: unit -> SyntaxKind
        abstract getTextPos: unit -> float
        abstract getTokenPos: unit -> float
        abstract getTokenText: unit -> string
        abstract getTokenValue: unit -> string
        abstract hasUnicodeEscape: unit -> bool
        abstract hasExtendedUnicodeEscape: unit -> bool
        abstract hasPrecedingLineBreak: unit -> bool
        abstract isIdentifier: unit -> bool
        abstract isReservedWord: unit -> bool
        abstract isUnterminated: unit -> bool
        abstract reScanGreaterToken: unit -> SyntaxKind
        abstract reScanSlashToken: unit -> SyntaxKind
        abstract reScanAsteriskEqualsToken: unit -> SyntaxKind
        abstract reScanTemplateToken: isTaggedTemplate: bool -> SyntaxKind
        abstract reScanTemplateHeadOrNoSubstitutionTemplate: unit -> SyntaxKind
        abstract scanJsxIdentifier: unit -> SyntaxKind
        abstract scanJsxAttributeValue: unit -> SyntaxKind
        abstract reScanJsxAttributeValue: unit -> SyntaxKind
        abstract reScanJsxToken: unit -> JsxTokenSyntaxKind
        abstract reScanLessThanToken: unit -> SyntaxKind
        abstract reScanQuestionToken: unit -> SyntaxKind
        abstract reScanInvalidIdentifier: unit -> SyntaxKind
        abstract scanJsxToken: unit -> JsxTokenSyntaxKind
        abstract scanJsDocToken: unit -> JSDocSyntaxKind
        abstract scan: unit -> SyntaxKind
        abstract getText: unit -> string
        abstract setText: text: string option * ?start: float * ?length: float -> unit
        abstract setOnError: onError: ErrorCallback option -> unit
        abstract setScriptTarget: scriptTarget: ScriptTarget -> unit
        abstract setLanguageVariant: variant: LanguageVariant -> unit
        abstract setTextPos: textPos: float -> unit
        abstract lookAhead: callback: (unit -> 'T) -> 'T
        abstract scanRange: start: float * length: float * callback: (unit -> 'T) -> 'T
        abstract tryScan: callback: (unit -> 'T) -> 'T

    type [<AllowNullLiteral>] ParameterPropertyDeclaration =
        interface end

    type [<AllowNullLiteral>] DiagnosticReporter =
        [<Emit "$0($1...)">] abstract Invoke: diagnostic: Diagnostic -> unit

    /// Reports config file diagnostics
    type [<AllowNullLiteral>] ConfigFileDiagnosticsReporter =
        /// Reports unrecoverable error when parsing config file
        abstract onUnRecoverableConfigFileDiagnostic: DiagnosticReporter with get, set

    /// Interface extending ParseConfigHost to support ParseConfigFile that reads config file and reports errors
    type [<AllowNullLiteral>] ParseConfigFileHost =
        inherit ParseConfigHost
        inherit ConfigFileDiagnosticsReporter
        abstract getCurrentDirectory: unit -> string

    type [<AllowNullLiteral>] ParsedTsconfig =
        abstract raw: obj option with get, set
        abstract options: CompilerOptions option with get, set
        abstract watchOptions: WatchOptions option with get, set
        abstract typeAcquisition: TypeAcquisition option with get, set
        /// Note that the case of the config path has not yet been normalized, as no files have been imported into the project yet
        abstract extendedConfigPath: string option with get, set

    type [<AllowNullLiteral>] ExtendedConfigCacheEntry =
        abstract extendedResult: TsConfigSourceFile with get, set
        abstract extendedConfig: ParsedTsconfig option with get, set

    /// Cached module resolutions per containing directory.
    /// This assumes that any module id will have the same resolution for sibling files located in the same folder.
    type [<AllowNullLiteral>] ModuleResolutionCache =
        inherit NonRelativeModuleNameResolutionCache
        abstract getOrCreateCacheForDirectory: directoryName: string * ?redirectedReference: ResolvedProjectReference -> Map<ResolvedModuleWithFailedLookupLocations>

    /// Stored map from non-relative module name to a table: directory -> result of module lookup in this directory
    /// We support only non-relative module names because resolution of relative module names is usually more deterministic and thus less expensive.
    type [<AllowNullLiteral>] NonRelativeModuleNameResolutionCache =
        abstract getOrCreateCacheForModuleName: nonRelativeModuleName: string * ?redirectedReference: ResolvedProjectReference -> PerModuleNameCache

    type [<AllowNullLiteral>] PerModuleNameCache =
        abstract get: directory: string -> ResolvedModuleWithFailedLookupLocations option
        abstract set: directory: string * result: ResolvedModuleWithFailedLookupLocations -> unit

    type [<AllowNullLiteral>] FormatDiagnosticsHost =
        abstract getCurrentDirectory: unit -> string
        abstract getCanonicalFileName: fileName: string -> string
        abstract getNewLine: unit -> string

    type [<AllowNullLiteral>] ResolveProjectReferencePathHost =
        abstract fileExists: fileName: string -> bool

    type [<AllowNullLiteral>] EmitOutput =
        abstract outputFiles: ResizeArray<OutputFile> with get, set
        abstract emitSkipped: bool with get, set

    type [<AllowNullLiteral>] OutputFile =
        abstract name: string with get, set
        abstract writeByteOrderMark: bool with get, set
        abstract text: string with get, set

    type AffectedFileResult<'T> =
        U2<'T, U2<SourceFile, Program>> option

    type [<AllowNullLiteral>] BuilderProgramHost =
        /// return true if file names are treated with case sensitivity
        abstract useCaseSensitiveFileNames: unit -> bool
        /// If provided this would be used this hash instead of actual file shape text for detecting changes
        abstract createHash: (string -> string) option with get, set
        /// When emit or emitNextAffectedFile are called without writeFile,
        /// this callback if present would be used to write files
        abstract writeFile: WriteFileCallback option with get, set

    /// Builder to manage the program state changes
    type [<AllowNullLiteral>] BuilderProgram =
        /// Returns current program
        abstract getProgram: unit -> Program
        /// Get compiler options of the program
        abstract getCompilerOptions: unit -> CompilerOptions
        /// Get the source file in the program with file name
        abstract getSourceFile: fileName: string -> SourceFile option
        /// Get a list of files in the program
        abstract getSourceFiles: unit -> ResizeArray<SourceFile>
        /// Get the diagnostics for compiler options
        abstract getOptionsDiagnostics: ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        /// Get the diagnostics that dont belong to any file
        abstract getGlobalDiagnostics: ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        /// Get the diagnostics from config file parsing
        abstract getConfigFileParsingDiagnostics: unit -> ResizeArray<Diagnostic>
        /// Get the syntax diagnostics, for all source files if source file is not supplied
        abstract getSyntacticDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        /// Get the declaration diagnostics, for all source files if source file is not supplied
        abstract getDeclarationDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<DiagnosticWithLocation>
        /// Get all the dependencies of the file
        abstract getAllDependencies: sourceFile: SourceFile -> ResizeArray<string>
        /// Gets the semantic diagnostics from the program corresponding to this state of file (if provided) or whole program
        /// The semantic diagnostics are cached and managed here
        /// Note that it is assumed that when asked about semantic diagnostics through this API,
        /// the file has been taken out of affected files so it is safe to use cache or get from program and cache the diagnostics
        /// In case of SemanticDiagnosticsBuilderProgram if the source file is not provided,
        /// it will iterate through all the affected files, to ensure that cache stays valid and yet provide a way to get all semantic diagnostics
        abstract getSemanticDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        /// Emits the JavaScript and declaration files.
        /// When targetSource file is specified, emits the files corresponding to that source file,
        /// otherwise for the whole program.
        /// In case of EmitAndSemanticDiagnosticsBuilderProgram, when targetSourceFile is specified,
        /// it is assumed that that file is handled from affected file list. If targetSourceFile is not specified,
        /// it will only emit all the affected files instead of whole program
        /// 
        /// The first of writeFile if provided, writeFile of BuilderProgramHost if provided, writeFile of compiler host
        /// in that order would be used to write the files
        abstract emit: ?targetSourceFile: SourceFile * ?writeFile: WriteFileCallback * ?cancellationToken: CancellationToken * ?emitOnlyDtsFiles: bool * ?customTransformers: CustomTransformers -> EmitResult
        /// Get the current directory of the program
        abstract getCurrentDirectory: unit -> string

    /// The builder that caches the semantic diagnostics for the program and handles the changed files and affected files
    type [<AllowNullLiteral>] SemanticDiagnosticsBuilderProgram =
        inherit BuilderProgram
        /// Gets the semantic diagnostics from the program for the next affected file and caches it
        /// Returns undefined if the iteration is complete
        abstract getSemanticDiagnosticsOfNextAffectedFile: ?cancellationToken: CancellationToken * ?ignoreSourceFile: (SourceFile -> bool) -> AffectedFileResult<ResizeArray<Diagnostic>>

    /// The builder that can handle the changes in program and iterate through changed file to emit the files
    /// The semantic diagnostics are cached per file and managed by clearing for the changed/affected files
    type [<AllowNullLiteral>] EmitAndSemanticDiagnosticsBuilderProgram =
        inherit SemanticDiagnosticsBuilderProgram
        /// Emits the next affected file's emit result (EmitResult and sourceFiles emitted) or returns undefined if iteration is complete
        /// The first of writeFile if provided, writeFile of BuilderProgramHost if provided, writeFile of compiler host
        /// in that order would be used to write the files
        abstract emitNextAffectedFile: ?writeFile: WriteFileCallback * ?cancellationToken: CancellationToken * ?emitOnlyDtsFiles: bool * ?customTransformers: CustomTransformers -> AffectedFileResult<EmitResult>

    type [<AllowNullLiteral>] ReadBuildProgramHost =
        abstract useCaseSensitiveFileNames: unit -> bool
        abstract getCurrentDirectory: unit -> string
        abstract readFile: fileName: string -> string option

    type [<AllowNullLiteral>] IncrementalProgramOptions<'T> =
        abstract rootNames: ResizeArray<string> with get, set
        abstract options: CompilerOptions with get, set
        abstract configFileParsingDiagnostics: ResizeArray<Diagnostic> option with get, set
        abstract projectReferences: ResizeArray<ProjectReference> option with get, set
        abstract host: CompilerHost option with get, set
        abstract createProgram: CreateProgram<'T> option with get, set

    type [<AllowNullLiteral>] WatchStatusReporter =
        [<Emit "$0($1...)">] abstract Invoke: diagnostic: Diagnostic * newLine: string * options: CompilerOptions * ?errorCount: float -> unit

    type [<AllowNullLiteral>] CreateProgram<'T> =
        [<Emit "$0($1...)">] abstract Invoke: rootNames: ResizeArray<string> option * options: CompilerOptions option * ?host: CompilerHost * ?oldProgram: 'T * ?configFileParsingDiagnostics: ResizeArray<Diagnostic> * ?projectReferences: ResizeArray<ProjectReference> -> 'T

    /// Host that has watch functionality used in --watch mode
    type [<AllowNullLiteral>] WatchHost =
        /// If provided, called with Diagnostic message that informs about change in watch status
        abstract onWatchStatusChange: diagnostic: Diagnostic * newLine: string * options: CompilerOptions * ?errorCount: float -> unit
        /// Used to watch changes in source files, missing files needed to update the program or config file
        abstract watchFile: path: string * callback: FileWatcherCallback * ?pollingInterval: float * ?options: CompilerOptions -> FileWatcher
        /// Used to watch resolved module's failed lookup locations, config file specs, type roots where auto type reference directives are added
        abstract watchDirectory: path: string * callback: DirectoryWatcherCallback * ?recursive: bool * ?options: CompilerOptions -> FileWatcher
        /// If provided, will be used to set delayed compilation, so that multiple changes in short span are compiled together
        abstract setTimeout: callback: (ResizeArray<obj option> -> unit) * ms: float * [<ParamArray>] args: ResizeArray<obj option> -> obj option
        /// If provided, will be used to reset existing delayed compilation
        abstract clearTimeout: timeoutId: obj option -> unit

    type [<AllowNullLiteral>] ProgramHost<'T> =
        /// Used to create the program when need for program creation or recreation detected
        abstract createProgram: CreateProgram<'T> with get, set
        abstract useCaseSensitiveFileNames: unit -> bool
        abstract getNewLine: unit -> string
        abstract getCurrentDirectory: unit -> string
        abstract getDefaultLibFileName: options: CompilerOptions -> string
        abstract getDefaultLibLocation: unit -> string
        abstract createHash: data: string -> string
        /// Use to check file presence for source files and
        /// if resolveModuleNames is not provided (complier is in charge of module resolution) then module files as well
        abstract fileExists: path: string -> bool
        /// Use to read file text for source files and
        /// if resolveModuleNames is not provided (complier is in charge of module resolution) then module files as well
        abstract readFile: path: string * ?encoding: string -> string option
        /// If provided, used for module resolution as well as to handle directory structure
        abstract directoryExists: path: string -> bool
        /// If provided, used in resolutions as well as handling directory structure
        abstract getDirectories: path: string -> ResizeArray<string>
        /// If provided, used to cache and handle directory structure modifications
        abstract readDirectory: path: string * ?extensions: ResizeArray<string> * ?exclude: ResizeArray<string> * ?``include``: ResizeArray<string> * ?depth: float -> ResizeArray<string>
        /// Symbol links resolution
        abstract realpath: path: string -> string
        /// If provided would be used to write log about compilation
        abstract trace: s: string -> unit
        /// If provided is used to get the environment variable
        abstract getEnvironmentVariable: name: string -> string option
        /// If provided, used to resolve the module names, otherwise typescript's default module resolution
        abstract resolveModuleNames: moduleNames: ResizeArray<string> * containingFile: string * reusedNames: ResizeArray<string> option * redirectedReference: ResolvedProjectReference option * options: CompilerOptions -> ResizeArray<ResolvedModule option>
        /// If provided, used to resolve type reference directives, otherwise typescript's default resolution
        abstract resolveTypeReferenceDirectives: typeReferenceDirectiveNames: ResizeArray<string> * containingFile: string * redirectedReference: ResolvedProjectReference option * options: CompilerOptions -> ResizeArray<ResolvedTypeReferenceDirective option>

    type [<AllowNullLiteral>] WatchCompilerHost<'T> =
        inherit ProgramHost<'T>
        inherit WatchHost
        /// Instead of using output d.ts file from project reference, use its source file
        abstract useSourceOfProjectReferenceRedirect: unit -> bool
        /// If provided, callback to invoke after every new program creation
        abstract afterProgramCreate: program: 'T -> unit

    /// Host to create watch with root files and options
    type [<AllowNullLiteral>] WatchCompilerHostOfFilesAndCompilerOptions<'T> =
        inherit WatchCompilerHost<'T>
        /// root files to use to generate program
        abstract rootFiles: ResizeArray<string> with get, set
        /// Compiler options
        abstract options: CompilerOptions with get, set
        abstract watchOptions: WatchOptions option with get, set
        /// Project References
        abstract projectReferences: ResizeArray<ProjectReference> option with get, set

    /// Host to create watch with config file
    type [<AllowNullLiteral>] WatchCompilerHostOfConfigFile<'T> =
        inherit WatchCompilerHost<'T>
        inherit ConfigFileDiagnosticsReporter
        /// Name of the config file to compile
        abstract configFileName: string with get, set
        /// Options to extend
        abstract optionsToExtend: CompilerOptions option with get, set
        abstract watchOptionsToExtend: WatchOptions option with get, set
        abstract extraFileExtensions: ResizeArray<FileExtensionInfo> option with get, set
        /// Used to generate source file names from the config file and its include, exclude, files rules
        /// and also to cache the directory stucture
        abstract readDirectory: path: string * ?extensions: ResizeArray<string> * ?exclude: ResizeArray<string> * ?``include``: ResizeArray<string> * ?depth: float -> ResizeArray<string>

    type [<AllowNullLiteral>] Watch<'T> =
        /// Synchronize with host and get updated program
        abstract getProgram: unit -> 'T
        /// Closes the watch
        abstract close: unit -> unit

    /// Creates the watch what generates program using the config file
    type [<AllowNullLiteral>] WatchOfConfigFile<'T> =
        inherit Watch<'T>

    /// Creates the watch that generates program using the root files and compiler options
    type [<AllowNullLiteral>] WatchOfFilesAndCompilerOptions<'T> =
        inherit Watch<'T>
        /// Updates the root files in the program, only if this is not config file compilation
        abstract updateRootFileNames: fileNames: ResizeArray<string> -> unit

    type [<AllowNullLiteral>] BuildOptions =
        abstract dry: bool option with get, set
        abstract force: bool option with get, set
        abstract verbose: bool option with get, set
        abstract incremental: bool option with get, set
        abstract assumeChangesOnlyAffectDirectDependencies: bool option with get, set
        abstract traceResolution: bool option with get, set
        [<Emit "$0[$1]{{=$2}}">] abstract Item: option: string -> CompilerOptionsValue option with get, set

    type [<AllowNullLiteral>] ReportEmitErrorSummary =
        [<Emit "$0($1...)">] abstract Invoke: errorCount: float -> unit

    type [<AllowNullLiteral>] SolutionBuilderHostBase<'T> =
        inherit ProgramHost<'T>
        abstract createDirectory: path: string -> unit
        /// Should provide create directory and writeFile if done of invalidatedProjects is not invoked with
        /// writeFileCallback
        abstract writeFile: path: string * data: string * ?writeByteOrderMark: bool -> unit
        abstract getModifiedTime: fileName: string -> DateTime option
        abstract setModifiedTime: fileName: string * date: DateTime -> unit
        abstract deleteFile: fileName: string -> unit
        abstract getParsedCommandLine: fileName: string -> ParsedCommandLine option
        abstract reportDiagnostic: DiagnosticReporter with get, set
        abstract reportSolutionBuilderStatus: DiagnosticReporter with get, set
        abstract afterProgramEmitAndDiagnostics: program: 'T -> unit

    type [<AllowNullLiteral>] SolutionBuilderHost<'T> =
        inherit SolutionBuilderHostBase<'T>
        abstract reportErrorSummary: ReportEmitErrorSummary option with get, set

    type [<AllowNullLiteral>] SolutionBuilderWithWatchHost<'T> =
        inherit SolutionBuilderHostBase<'T>
        inherit WatchHost

    type [<AllowNullLiteral>] SolutionBuilder<'T> =
        abstract build: ?project: string * ?cancellationToken: CancellationToken -> ExitStatus
        abstract clean: ?project: string -> ExitStatus
        abstract buildReferences: project: string * ?cancellationToken: CancellationToken -> ExitStatus
        abstract cleanReferences: ?project: string -> ExitStatus
        abstract getNextInvalidatedProject: ?cancellationToken: CancellationToken -> InvalidatedProject<'T> option

    type [<RequireQualifiedAccess>] InvalidatedProjectKind =
        | Build = 0
        | UpdateBundle = 1
        | UpdateOutputFileStamps = 2

    type [<AllowNullLiteral>] InvalidatedProjectBase =
        abstract kind: InvalidatedProjectKind
        abstract project: ResolvedConfigFileName
        /// To dispose this project and ensure that all the necessary actions are taken and state is updated accordingly
        abstract ``done``: ?cancellationToken: CancellationToken * ?writeFile: WriteFileCallback * ?customTransformers: CustomTransformers -> ExitStatus
        abstract getCompilerOptions: unit -> CompilerOptions
        abstract getCurrentDirectory: unit -> string

    type [<AllowNullLiteral>] UpdateOutputFileStampsProject =
        inherit InvalidatedProjectBase
        abstract kind: InvalidatedProjectKind
        abstract updateOutputFileStatmps: unit -> unit

    type [<AllowNullLiteral>] BuildInvalidedProject<'T> =
        inherit InvalidatedProjectBase
        abstract kind: InvalidatedProjectKind
        abstract getBuilderProgram: unit -> 'T option
        abstract getProgram: unit -> Program option
        abstract getSourceFile: fileName: string -> SourceFile option
        abstract getSourceFiles: unit -> ResizeArray<SourceFile>
        abstract getOptionsDiagnostics: ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract getGlobalDiagnostics: ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract getConfigFileParsingDiagnostics: unit -> ResizeArray<Diagnostic>
        abstract getSyntacticDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract getAllDependencies: sourceFile: SourceFile -> ResizeArray<string>
        abstract getSemanticDiagnostics: ?sourceFile: SourceFile * ?cancellationToken: CancellationToken -> ResizeArray<Diagnostic>
        abstract getSemanticDiagnosticsOfNextAffectedFile: ?cancellationToken: CancellationToken * ?ignoreSourceFile: (SourceFile -> bool) -> AffectedFileResult<ResizeArray<Diagnostic>>
        abstract emit: ?targetSourceFile: SourceFile * ?writeFile: WriteFileCallback * ?cancellationToken: CancellationToken * ?emitOnlyDtsFiles: bool * ?customTransformers: CustomTransformers -> EmitResult option

    type [<AllowNullLiteral>] UpdateBundleProject<'T> =
        inherit InvalidatedProjectBase
        abstract kind: InvalidatedProjectKind
        abstract emit: ?writeFile: WriteFileCallback * ?customTransformers: CustomTransformers -> U2<EmitResult, BuildInvalidedProject<'T>> option

    type InvalidatedProject<'T> =
        U3<UpdateOutputFileStampsProject, BuildInvalidedProject<'T>, UpdateBundleProject<'T>>

    module Server =

        type ActionSet =
            string

        type ActionInvalidate =
            string

        type ActionPackageInstalled =
            string

        type EventTypesRegistry =
            string

        type EventBeginInstallTypes =
            string

        type EventEndInstallTypes =
            string

        type EventInitializationFailed =
            string

        type [<AllowNullLiteral>] TypingInstallerResponse =
            abstract kind: U7<ActionSet, ActionInvalidate, EventTypesRegistry, ActionPackageInstalled, EventBeginInstallTypes, EventEndInstallTypes, EventInitializationFailed>

        type [<AllowNullLiteral>] TypingInstallerRequestWithProjectName =
            abstract projectName: string

        type [<AllowNullLiteral>] DiscoverTypings =
            inherit TypingInstallerRequestWithProjectName
            abstract fileNames: ResizeArray<string>
            abstract projectRootPath: Path
            abstract compilerOptions: CompilerOptions
            abstract watchOptions: WatchOptions option
            abstract typeAcquisition: TypeAcquisition
            abstract unresolvedImports: SortedReadonlyArray<string>
            abstract cachePath: string option
            abstract kind: string

        type [<AllowNullLiteral>] CloseProject =
            inherit TypingInstallerRequestWithProjectName
            abstract kind: string

        type [<AllowNullLiteral>] TypesRegistryRequest =
            abstract kind: string

        type [<AllowNullLiteral>] InstallPackageRequest =
            inherit TypingInstallerRequestWithProjectName
            abstract kind: string
            abstract fileName: Path
            abstract packageName: string
            abstract projectRootPath: Path

        type [<AllowNullLiteral>] PackageInstalledResponse =
            inherit ProjectResponse
            abstract kind: ActionPackageInstalled
            abstract success: bool
            abstract message: string

        type [<AllowNullLiteral>] InitializationFailedResponse =
            inherit TypingInstallerResponse
            abstract kind: EventInitializationFailed
            abstract message: string
            abstract stack: string option

        type [<AllowNullLiteral>] ProjectResponse =
            inherit TypingInstallerResponse
            abstract projectName: string

        type [<AllowNullLiteral>] InvalidateCachedTypings =
            inherit ProjectResponse
            abstract kind: ActionInvalidate

        type [<AllowNullLiteral>] InstallTypes =
            inherit ProjectResponse
            abstract kind: U2<EventBeginInstallTypes, EventEndInstallTypes>
            abstract eventId: float
            abstract typingsInstallerVersion: string
            abstract packagesToInstall: ResizeArray<string>

        type [<AllowNullLiteral>] BeginInstallTypes =
            inherit InstallTypes
            abstract kind: EventBeginInstallTypes

        type [<AllowNullLiteral>] EndInstallTypes =
            inherit InstallTypes
            abstract kind: EventEndInstallTypes
            abstract installSuccess: bool

        type [<AllowNullLiteral>] SetTypings =
            inherit ProjectResponse
            abstract typeAcquisition: TypeAcquisition
            abstract compilerOptions: CompilerOptions
            abstract typings: ResizeArray<string>
            abstract unresolvedImports: SortedReadonlyArray<string>
            abstract kind: ActionSet

    type [<AllowNullLiteral>] SourceFileLike =
        abstract getLineAndCharacterOfPosition: pos: float -> LineAndCharacter

    /// Represents an immutable snapshot of a script at a specified time.Once acquired, the
    /// snapshot is observably immutable. i.e. the same calls with the same parameters will return
    /// the same values.
    type [<AllowNullLiteral>] IScriptSnapshot =
        /// Gets a portion of the script snapshot specified by [start, end).
        abstract getText: start: float * ``end``: float -> string
        /// Gets the length of this script snapshot.
        abstract getLength: unit -> float
        /// Gets the TextChangeRange that describe how the text changed between this text and
        /// an older version.  This information is used by the incremental parser to determine
        /// what sections of the script need to be re-parsed.  'undefined' can be returned if the
        /// change range cannot be determined.  However, in that case, incremental parsing will
        /// not happen and the entire document will be re - parsed.
        abstract getChangeRange: oldSnapshot: IScriptSnapshot -> TextChangeRange option
        /// Releases all resources held by this script snapshot
        abstract dispose: unit -> unit

    module ScriptSnapshot =

        type [<AllowNullLiteral>] IExports =
            abstract fromString: text: string -> IScriptSnapshot

    type [<AllowNullLiteral>] PreProcessedFileInfo =
        abstract referencedFiles: ResizeArray<FileReference> with get, set
        abstract typeReferenceDirectives: ResizeArray<FileReference> with get, set
        abstract libReferenceDirectives: ResizeArray<FileReference> with get, set
        abstract importedFiles: ResizeArray<FileReference> with get, set
        abstract ambientExternalModules: ResizeArray<string> option with get, set
        abstract isLibFile: bool with get, set

    type [<AllowNullLiteral>] HostCancellationToken =
        abstract isCancellationRequested: unit -> bool

    type [<AllowNullLiteral>] InstallPackageOptions =
        abstract fileName: Path with get, set
        abstract packageName: string with get, set

    type [<AllowNullLiteral>] PerformanceEvent =
        abstract kind: PerformanceEventKind with get, set
        abstract durationMs: float with get, set

    type [<RequireQualifiedAccess>] LanguageServiceMode =
        | Semantic = 0
        | PartialSemantic = 1
        | Syntactic = 2

    type [<AllowNullLiteral>] LanguageServiceHost =
        inherit GetEffectiveTypeRootsHost
        abstract getCompilationSettings: unit -> CompilerOptions
        abstract getNewLine: unit -> string
        abstract getProjectVersion: unit -> string
        abstract getScriptFileNames: unit -> ResizeArray<string>
        abstract getScriptKind: fileName: string -> ScriptKind
        abstract getScriptVersion: fileName: string -> string
        abstract getScriptSnapshot: fileName: string -> IScriptSnapshot option
        abstract getProjectReferences: unit -> ResizeArray<ProjectReference> option
        abstract getLocalizedDiagnosticMessages: unit -> obj option
        abstract getCancellationToken: unit -> HostCancellationToken
        abstract getCurrentDirectory: unit -> string
        abstract getDefaultLibFileName: options: CompilerOptions -> string
        abstract log: s: string -> unit
        abstract trace: s: string -> unit
        abstract error: s: string -> unit
        abstract useCaseSensitiveFileNames: unit -> bool
        abstract readDirectory: path: string * ?extensions: ResizeArray<string> * ?exclude: ResizeArray<string> * ?``include``: ResizeArray<string> * ?depth: float -> ResizeArray<string>
        abstract readFile: path: string * ?encoding: string -> string option
        abstract realpath: path: string -> string
        abstract fileExists: path: string -> bool
        abstract getTypeRootsVersion: unit -> float
        abstract resolveModuleNames: moduleNames: ResizeArray<string> * containingFile: string * reusedNames: ResizeArray<string> option * redirectedReference: ResolvedProjectReference option * options: CompilerOptions -> ResizeArray<ResolvedModule option>
        abstract getResolvedModuleWithFailedLookupLocationsFromCache: modulename: string * containingFile: string -> ResolvedModuleWithFailedLookupLocations option
        abstract resolveTypeReferenceDirectives: typeDirectiveNames: ResizeArray<string> * containingFile: string * redirectedReference: ResolvedProjectReference option * options: CompilerOptions -> ResizeArray<ResolvedTypeReferenceDirective option>
        abstract getDirectories: directoryName: string -> ResizeArray<string>
        /// Gets a set of custom transformers to use during emit.
        abstract getCustomTransformers: unit -> CustomTransformers option
        abstract isKnownTypesPackageName: name: string -> bool
        abstract installPackage: options: InstallPackageOptions -> Promise<ApplyCodeActionCommandResult>
        abstract writeFile: fileName: string * content: string -> unit

    type [<AllowNullLiteral>] WithMetadata<'T> =
        interface end

    type [<StringEnum>] [<RequireQualifiedAccess>] SemanticClassificationFormat =
        | Original
        | [<CompiledName "2020">] TwentyTwenty

    type [<AllowNullLiteral>] LanguageService =
        /// This is used as a part of restarting the language service.
        abstract cleanupSemanticCache: unit -> unit
        /// <summary>Gets errors indicating invalid syntax in a file.
        /// 
        /// In English, "this cdeo have, erorrs" is syntactically invalid because it has typos,
        /// grammatical errors, and misplaced punctuation. Likewise, examples of syntax
        /// errors in TypeScript are missing parentheses in an `if` statement, mismatched
        /// curly braces, and using a reserved keyword as a variable name.
        /// 
        /// These diagnostics are inexpensive to compute and don't require knowledge of
        /// other files. Note that a non-empty result increases the likelihood of false positives
        /// from `getSemanticDiagnostics`.
        /// 
        /// While these represent the majority of syntax-related diagnostics, there are some
        /// that require the type system, which will be present in `getSemanticDiagnostics`.</summary>
        /// <param name="fileName">A path to the file you want syntactic diagnostics for</param>
        abstract getSyntacticDiagnostics: fileName: string -> ResizeArray<DiagnosticWithLocation>
        /// <summary>Gets warnings or errors indicating type system issues in a given file.
        /// Requesting semantic diagnostics may start up the type system and
        /// run deferred work, so the first call may take longer than subsequent calls.
        /// 
        /// Unlike the other get*Diagnostics functions, these diagnostics can potentially not
        /// include a reference to a source file. Specifically, the first time this is called,
        /// it will return global diagnostics with no associated location.
        /// 
        /// To contrast the differences between semantic and syntactic diagnostics, consider the
        /// sentence: "The sun is green." is syntactically correct; those are real English words with
        /// correct sentence structure. However, it is semantically invalid, because it is not true.</summary>
        /// <param name="fileName">A path to the file you want semantic diagnostics for</param>
        abstract getSemanticDiagnostics: fileName: string -> ResizeArray<Diagnostic>
        /// <summary>Gets suggestion diagnostics for a specific file. These diagnostics tend to
        /// proactively suggest refactors, as opposed to diagnostics that indicate
        /// potentially incorrect runtime behavior.</summary>
        /// <param name="fileName">A path to the file you want semantic diagnostics for</param>
        abstract getSuggestionDiagnostics: fileName: string -> ResizeArray<DiagnosticWithLocation>
        /// Gets global diagnostics related to the program configuration and compiler options.
        abstract getCompilerOptionsDiagnostics: unit -> ResizeArray<Diagnostic>
        abstract getSyntacticClassifications: fileName: string * span: TextSpan -> ResizeArray<ClassifiedSpan>
        abstract getSyntacticClassifications: fileName: string * span: TextSpan * format: SemanticClassificationFormat -> U2<ResizeArray<ClassifiedSpan>, ResizeArray<ClassifiedSpan2020>>
        abstract getSemanticClassifications: fileName: string * span: TextSpan -> ResizeArray<ClassifiedSpan>
        abstract getSemanticClassifications: fileName: string * span: TextSpan * format: SemanticClassificationFormat -> U2<ResizeArray<ClassifiedSpan>, ResizeArray<ClassifiedSpan2020>>
        /// Encoded as triples of [start, length, ClassificationType].
        abstract getEncodedSyntacticClassifications: fileName: string * span: TextSpan -> Classifications
        /// <summary>Gets semantic highlights information for a particular file. Has two formats, an older
        /// version used by VS and a format used by VS Code.</summary>
        /// <param name="fileName">The path to the file</param>
        /// <param name="format">Which format to use, defaults to "original"</param>
        abstract getEncodedSemanticClassifications: fileName: string * span: TextSpan * ?format: SemanticClassificationFormat -> Classifications
        /// <summary>Gets completion entries at a particular position in a file.</summary>
        /// <param name="fileName">The path to the file</param>
        /// <param name="position">A zero-based index of the character where you want the entries</param>
        /// <param name="options">An object describing how the request was triggered and what kinds
        /// of code actions can be returned with the completions.</param>
        abstract getCompletionsAtPosition: fileName: string * position: float * options: GetCompletionsAtPositionOptions option -> WithMetadata<CompletionInfo> option
        /// <summary>Gets the extended details for a completion entry retrieved from `getCompletionsAtPosition`.</summary>
        /// <param name="fileName">The path to the file</param>
        /// <param name="position">A zero based index of the character where you want the entries</param>
        /// <param name="entryName">The name from an existing completion which came from `getCompletionsAtPosition`</param>
        /// <param name="formatOptions">How should code samples in the completions be formatted, can be undefined for backwards compatibility</param>
        /// <param name="source">Source code for the current file, can be undefined for backwards compatibility</param>
        /// <param name="preferences">User settings, can be undefined for backwards compatibility</param>
        abstract getCompletionEntryDetails: fileName: string * position: float * entryName: string * formatOptions: U2<FormatCodeOptions, FormatCodeSettings> option * source: string option * preferences: UserPreferences option -> CompletionEntryDetails option
        abstract getCompletionEntrySymbol: fileName: string * position: float * name: string * source: string option -> Symbol option
        /// <summary>Gets semantic information about the identifier at a particular position in a
        /// file. Quick info is what you typically see when you hover in an editor.</summary>
        /// <param name="fileName">The path to the file</param>
        /// <param name="position">A zero-based index of the character where you want the quick info</param>
        abstract getQuickInfoAtPosition: fileName: string * position: float -> QuickInfo option
        abstract getNameOrDottedNameSpan: fileName: string * startPos: float * endPos: float -> TextSpan option
        abstract getBreakpointStatementAtPosition: fileName: string * position: float -> TextSpan option
        abstract getSignatureHelpItems: fileName: string * position: float * options: SignatureHelpItemsOptions option -> SignatureHelpItems option
        abstract getRenameInfo: fileName: string * position: float * ?options: RenameInfoOptions -> RenameInfo
        abstract findRenameLocations: fileName: string * position: float * findInStrings: bool * findInComments: bool * ?providePrefixAndSuffixTextForRename: bool -> ResizeArray<RenameLocation> option
        abstract getSmartSelectionRange: fileName: string * position: float -> SelectionRange
        abstract getDefinitionAtPosition: fileName: string * position: float -> ResizeArray<DefinitionInfo> option
        abstract getDefinitionAndBoundSpan: fileName: string * position: float -> DefinitionInfoAndBoundSpan option
        abstract getTypeDefinitionAtPosition: fileName: string * position: float -> ResizeArray<DefinitionInfo> option
        abstract getImplementationAtPosition: fileName: string * position: float -> ResizeArray<ImplementationLocation> option
        abstract getReferencesAtPosition: fileName: string * position: float -> ResizeArray<ReferenceEntry> option
        abstract findReferences: fileName: string * position: float -> ResizeArray<ReferencedSymbol> option
        abstract getDocumentHighlights: fileName: string * position: float * filesToSearch: ResizeArray<string> -> ResizeArray<DocumentHighlights> option
        abstract getFileReferences: fileName: string -> ResizeArray<ReferenceEntry>
        abstract getOccurrencesAtPosition: fileName: string * position: float -> ResizeArray<ReferenceEntry> option
        abstract getNavigateToItems: searchValue: string * ?maxResultCount: float * ?fileName: string * ?excludeDtsFiles: bool -> ResizeArray<NavigateToItem>
        abstract getNavigationBarItems: fileName: string -> ResizeArray<NavigationBarItem>
        abstract getNavigationTree: fileName: string -> NavigationTree
        abstract prepareCallHierarchy: fileName: string * position: float -> U2<CallHierarchyItem, ResizeArray<CallHierarchyItem>> option
        abstract provideCallHierarchyIncomingCalls: fileName: string * position: float -> ResizeArray<CallHierarchyIncomingCall>
        abstract provideCallHierarchyOutgoingCalls: fileName: string * position: float -> ResizeArray<CallHierarchyOutgoingCall>
        abstract getOutliningSpans: fileName: string -> ResizeArray<OutliningSpan>
        abstract getTodoComments: fileName: string * descriptors: ResizeArray<TodoCommentDescriptor> -> ResizeArray<TodoComment>
        abstract getBraceMatchingAtPosition: fileName: string * position: float -> ResizeArray<TextSpan>
        abstract getIndentationAtPosition: fileName: string * position: float * options: U2<EditorOptions, EditorSettings> -> float
        abstract getFormattingEditsForRange: fileName: string * start: float * ``end``: float * options: U2<FormatCodeOptions, FormatCodeSettings> -> ResizeArray<TextChange>
        abstract getFormattingEditsForDocument: fileName: string * options: U2<FormatCodeOptions, FormatCodeSettings> -> ResizeArray<TextChange>
        abstract getFormattingEditsAfterKeystroke: fileName: string * position: float * key: string * options: U2<FormatCodeOptions, FormatCodeSettings> -> ResizeArray<TextChange>
        abstract getDocCommentTemplateAtPosition: fileName: string * position: float * ?options: DocCommentTemplateOptions -> TextInsertion option
        abstract isValidBraceCompletionAtPosition: fileName: string * position: float * openingBrace: float -> bool
        /// This will return a defined result if the position is after the `>` of the opening tag, or somewhere in the text, of a JSXElement with no closing tag.
        /// Editors should call this after `>` is typed.
        abstract getJsxClosingTagAtPosition: fileName: string * position: float -> JsxClosingTagInfo option
        abstract getSpanOfEnclosingComment: fileName: string * position: float * onlyMultiLine: bool -> TextSpan option
        abstract toLineColumnOffset: fileName: string * position: float -> LineAndCharacter
        abstract getCodeFixesAtPosition: fileName: string * start: float * ``end``: float * errorCodes: ResizeArray<float> * formatOptions: FormatCodeSettings * preferences: UserPreferences -> ResizeArray<CodeFixAction>
        abstract getCombinedCodeFix: scope: CombinedCodeFixScope * fixId: LanguageServiceGetCombinedCodeFixFixId * formatOptions: FormatCodeSettings * preferences: UserPreferences -> CombinedCodeActions
        abstract applyCodeActionCommand: action: CodeActionCommand * ?formatSettings: FormatCodeSettings -> Promise<ApplyCodeActionCommandResult>
        abstract applyCodeActionCommand: action: ResizeArray<CodeActionCommand> * ?formatSettings: FormatCodeSettings -> Promise<ResizeArray<ApplyCodeActionCommandResult>>
        abstract applyCodeActionCommand: action: U2<CodeActionCommand, ResizeArray<CodeActionCommand>> * ?formatSettings: FormatCodeSettings -> Promise<U2<ApplyCodeActionCommandResult, ResizeArray<ApplyCodeActionCommandResult>>>
        abstract applyCodeActionCommand: fileName: string * action: CodeActionCommand -> Promise<ApplyCodeActionCommandResult>
        abstract applyCodeActionCommand: fileName: string * action: ResizeArray<CodeActionCommand> -> Promise<ResizeArray<ApplyCodeActionCommandResult>>
        abstract applyCodeActionCommand: fileName: string * action: U2<CodeActionCommand, ResizeArray<CodeActionCommand>> -> Promise<U2<ApplyCodeActionCommandResult, ResizeArray<ApplyCodeActionCommandResult>>>
        abstract getApplicableRefactors: fileName: string * positionOrRange: U2<float, TextRange> * preferences: UserPreferences option * ?triggerReason: RefactorTriggerReason * ?kind: string -> ResizeArray<ApplicableRefactorInfo>
        abstract getEditsForRefactor: fileName: string * formatOptions: FormatCodeSettings * positionOrRange: U2<float, TextRange> * refactorName: string * actionName: string * preferences: UserPreferences option -> RefactorEditInfo option
        abstract organizeImports: scope: OrganizeImportsScope * formatOptions: FormatCodeSettings * preferences: UserPreferences option -> ResizeArray<FileTextChanges>
        abstract getEditsForFileRename: oldFilePath: string * newFilePath: string * formatOptions: FormatCodeSettings * preferences: UserPreferences option -> ResizeArray<FileTextChanges>
        abstract getEmitOutput: fileName: string * ?emitOnlyDtsFiles: bool * ?forceDtsEmit: bool -> EmitOutput
        abstract getProgram: unit -> Program option
        abstract toggleLineComment: fileName: string * textRange: TextRange -> ResizeArray<TextChange>
        abstract toggleMultilineComment: fileName: string * textRange: TextRange -> ResizeArray<TextChange>
        abstract commentSelection: fileName: string * textRange: TextRange -> ResizeArray<TextChange>
        abstract uncommentSelection: fileName: string * textRange: TextRange -> ResizeArray<TextChange>
        abstract dispose: unit -> unit

    type [<AllowNullLiteral>] LanguageServiceGetCombinedCodeFixFixId =
        interface end

    type [<AllowNullLiteral>] JsxClosingTagInfo =
        abstract newText: string

    type [<AllowNullLiteral>] CombinedCodeFixScope =
        abstract ``type``: string with get, set
        abstract fileName: string with get, set

    type OrganizeImportsScope =
        CombinedCodeFixScope

    type [<StringEnum>] [<RequireQualifiedAccess>] CompletionsTriggerCharacter =
        | [<CompiledName ".">] Dot
        | [<CompiledName "\"">] BackSlash
        | [<CompiledName "'">] SingleQuote
        | [<CompiledName "`">] BackQuote
        | [<CompiledName "/">] Slash
        | [<CompiledName "@">] AtMark
        | [<CompiledName "<">] LessThan
        | [<CompiledName "#">] Sharp

    type [<AllowNullLiteral>] GetCompletionsAtPositionOptions =
        inherit UserPreferences
        /// If the editor is asking for completions because a certain character was typed
        /// (as opposed to when the user explicitly requested them) this should be set.
        abstract triggerCharacter: CompletionsTriggerCharacter option with get, set
        abstract includeExternalModuleExports: bool option with get, set
        abstract includeInsertTextCompletions: bool option with get, set

    type [<StringEnum>] [<RequireQualifiedAccess>] SignatureHelpTriggerCharacter =
        | [<CompiledName ",">] Comma
        | [<CompiledName "(">] LeftBrace
        | [<CompiledName "<">] LessThan

    type SignatureHelpRetriggerCharacter =
        U2<SignatureHelpTriggerCharacter, string>

    type [<AllowNullLiteral>] SignatureHelpItemsOptions =
        abstract triggerReason: SignatureHelpTriggerReason option with get, set

    type SignatureHelpTriggerReason =
        U3<SignatureHelpInvokedReason, SignatureHelpCharacterTypedReason, SignatureHelpRetriggeredReason>

    /// Signals that the user manually requested signature help.
    /// The language service will unconditionally attempt to provide a result.
    type [<AllowNullLiteral>] SignatureHelpInvokedReason =
        abstract kind: string with get, set
        abstract triggerCharacter: obj option with get, set

    /// Signals that the signature help request came from a user typing a character.
    /// Depending on the character and the syntactic context, the request may or may not be served a result.
    type [<AllowNullLiteral>] SignatureHelpCharacterTypedReason =
        abstract kind: string with get, set
        /// Character that was responsible for triggering signature help.
        abstract triggerCharacter: SignatureHelpTriggerCharacter with get, set

    /// Signals that this signature help request came from typing a character or moving the cursor.
    /// This should only occur if a signature help session was already active and the editor needs to see if it should adjust.
    /// The language service will unconditionally attempt to provide a result.
    /// `triggerCharacter` can be `undefined` for a retrigger caused by a cursor move.
    type [<AllowNullLiteral>] SignatureHelpRetriggeredReason =
        abstract kind: string with get, set
        /// Character that was responsible for triggering signature help.
        abstract triggerCharacter: SignatureHelpRetriggerCharacter option with get, set

    type [<AllowNullLiteral>] ApplyCodeActionCommandResult =
        abstract successMessage: string with get, set

    type [<AllowNullLiteral>] Classifications =
        abstract spans: ResizeArray<float> with get, set
        abstract endOfLineState: EndOfLineState with get, set

    type [<AllowNullLiteral>] ClassifiedSpan =
        abstract textSpan: TextSpan with get, set
        abstract classificationType: ClassificationTypeNames with get, set

    type [<AllowNullLiteral>] ClassifiedSpan2020 =
        abstract textSpan: TextSpan with get, set
        abstract classificationType: float with get, set

    /// Navigation bar interface designed for visual studio's dual-column layout.
    /// This does not form a proper tree.
    /// The navbar is returned as a list of top-level items, each of which has a list of child items.
    /// Child items always have an empty array for their `childItems`.
    type [<AllowNullLiteral>] NavigationBarItem =
        abstract text: string with get, set
        abstract kind: ScriptElementKind with get, set
        abstract kindModifiers: string with get, set
        abstract spans: ResizeArray<TextSpan> with get, set
        abstract childItems: ResizeArray<NavigationBarItem> with get, set
        abstract indent: float with get, set
        abstract bolded: bool with get, set
        abstract grayed: bool with get, set

    /// Node in a tree of nested declarations in a file.
    /// The top node is always a script or module node.
    type [<AllowNullLiteral>] NavigationTree =
        /// Name of the declaration, or a short description, e.g. "<class>".
        abstract text: string with get, set
        abstract kind: ScriptElementKind with get, set
        /// ScriptElementKindModifier separated by commas, e.g. "public,abstract"
        abstract kindModifiers: string with get, set
        /// Spans of the nodes that generated this declaration.
        /// There will be more than one if this is the result of merging.
        abstract spans: ResizeArray<TextSpan> with get, set
        abstract nameSpan: TextSpan option with get, set
        /// Present if non-empty
        abstract childItems: ResizeArray<NavigationTree> option with get, set

    type [<AllowNullLiteral>] CallHierarchyItem =
        abstract name: string with get, set
        abstract kind: ScriptElementKind with get, set
        abstract kindModifiers: string option with get, set
        abstract file: string with get, set
        abstract span: TextSpan with get, set
        abstract selectionSpan: TextSpan with get, set
        abstract containerName: string option with get, set

    type [<AllowNullLiteral>] CallHierarchyIncomingCall =
        abstract from: CallHierarchyItem with get, set
        abstract fromSpans: ResizeArray<TextSpan> with get, set

    type [<AllowNullLiteral>] CallHierarchyOutgoingCall =
        abstract ``to``: CallHierarchyItem with get, set
        abstract fromSpans: ResizeArray<TextSpan> with get, set

    type [<AllowNullLiteral>] TodoCommentDescriptor =
        abstract text: string with get, set
        abstract priority: float with get, set

    type [<AllowNullLiteral>] TodoComment =
        abstract descriptor: TodoCommentDescriptor with get, set
        abstract message: string with get, set
        abstract position: float with get, set

    type [<AllowNullLiteral>] TextChange =
        abstract span: TextSpan with get, set
        abstract newText: string with get, set

    type [<AllowNullLiteral>] FileTextChanges =
        abstract fileName: string with get, set
        abstract textChanges: ResizeArray<TextChange> with get, set
        abstract isNewFile: bool option with get, set

    type [<AllowNullLiteral>] CodeAction =
        /// Description of the code action to display in the UI of the editor
        abstract description: string with get, set
        /// Text changes to apply to each file as part of the code action
        abstract changes: ResizeArray<FileTextChanges> with get, set
        /// If the user accepts the code fix, the editor should send the action back in a `applyAction` request.
        /// This allows the language service to have side effects (e.g. installing dependencies) upon a code fix.
        abstract commands: ResizeArray<CodeActionCommand> option with get, set

    type [<AllowNullLiteral>] CodeFixAction =
        inherit CodeAction
        /// Short name to identify the fix, for use by telemetry.
        abstract fixName: string with get, set
        /// If present, one may call 'getCombinedCodeFix' with this fixId.
        /// This may be omitted to indicate that the code fix can't be applied in a group.
        abstract fixId: DiagnosticMessageReportsUnnecessary option with get, set
        abstract fixAllDescription: string option with get, set

    type [<AllowNullLiteral>] CombinedCodeActions =
        abstract changes: ResizeArray<FileTextChanges> with get, set
        abstract commands: ResizeArray<CodeActionCommand> option with get, set

    type CodeActionCommand =
        InstallPackageAction

    type [<AllowNullLiteral>] InstallPackageAction =
        interface end

    /// A set of one or more available refactoring actions, grouped under a parent refactoring.
    type [<AllowNullLiteral>] ApplicableRefactorInfo =
        /// The programmatic name of the refactoring
        abstract name: string with get, set
        /// A description of this refactoring category to show to the user.
        /// If the refactoring gets inlined (see below), this text will not be visible.
        abstract description: string with get, set
        /// Inlineable refactorings can have their actions hoisted out to the top level
        /// of a context menu. Non-inlineanable refactorings should always be shown inside
        /// their parent grouping.
        /// 
        /// If not specified, this value is assumed to be 'true'
        abstract inlineable: bool option with get, set
        abstract actions: ResizeArray<RefactorActionInfo> with get, set

    /// Represents a single refactoring action - for example, the "Extract Method..." refactor might
    /// offer several actions, each corresponding to a surround class or closure to extract into.
    type [<AllowNullLiteral>] RefactorActionInfo =
        /// The programmatic name of the refactoring action
        abstract name: string with get, set
        /// A description of this refactoring action to show to the user.
        /// If the parent refactoring is inlined away, this will be the only text shown,
        /// so this description should make sense by itself if the parent is inlineable=true
        abstract description: string with get, set
        /// A message to show to the user if the refactoring cannot be applied in
        /// the current context.
        abstract notApplicableReason: string option with get, set
        /// The hierarchical dotted name of the refactor action.
        abstract kind: string option with get, set

    /// A set of edits to make in response to a refactor action, plus an optional
    /// location where renaming should be invoked from
    type [<AllowNullLiteral>] RefactorEditInfo =
        abstract edits: ResizeArray<FileTextChanges> with get, set
        abstract renameFilename: string option with get, set
        abstract renameLocation: float option with get, set
        abstract commands: ResizeArray<CodeActionCommand> option with get, set

    type [<StringEnum>] [<RequireQualifiedAccess>] RefactorTriggerReason =
        | Implicit
        | Invoked

    type [<AllowNullLiteral>] TextInsertion =
        abstract newText: string with get, set
        /// The position in newText the caret should point to after the insertion.
        abstract caretOffset: float with get, set

    type [<AllowNullLiteral>] DocumentSpan =
        abstract textSpan: TextSpan with get, set
        abstract fileName: string with get, set
        /// If the span represents a location that was remapped (e.g. via a .d.ts.map file),
        /// then the original filename and span will be specified here
        abstract originalTextSpan: TextSpan option with get, set
        abstract originalFileName: string option with get, set
        /// If DocumentSpan.textSpan is the span for name of the declaration,
        /// then this is the span for relevant declaration
        abstract contextSpan: TextSpan option with get, set
        abstract originalContextSpan: TextSpan option with get, set

    type [<AllowNullLiteral>] RenameLocation =
        inherit DocumentSpan
        abstract prefixText: string option
        abstract suffixText: string option

    type [<AllowNullLiteral>] ReferenceEntry =
        inherit DocumentSpan
        abstract isWriteAccess: bool with get, set
        abstract isDefinition: bool with get, set
        abstract isInString: obj option with get, set

    type [<AllowNullLiteral>] ImplementationLocation =
        inherit DocumentSpan
        abstract kind: ScriptElementKind with get, set
        abstract displayParts: ResizeArray<SymbolDisplayPart> with get, set

    type [<StringEnum>] [<RequireQualifiedAccess>] HighlightSpanKind =
        | None
        | Definition
        | Reference
        | WrittenReference

    type [<AllowNullLiteral>] HighlightSpan =
        abstract fileName: string option with get, set
        abstract isInString: obj option with get, set
        abstract textSpan: TextSpan with get, set
        abstract contextSpan: TextSpan option with get, set
        abstract kind: HighlightSpanKind with get, set

    type [<AllowNullLiteral>] NavigateToItem =
        abstract name: string with get, set
        abstract kind: ScriptElementKind with get, set
        abstract kindModifiers: string with get, set
        abstract matchKind: NavigateToItemMatchKind with get, set
        abstract isCaseSensitive: bool with get, set
        abstract fileName: string with get, set
        abstract textSpan: TextSpan with get, set
        abstract containerName: string with get, set
        abstract containerKind: ScriptElementKind with get, set

    type [<RequireQualifiedAccess>] IndentStyle =
        | None = 0
        | Block = 1
        | Smart = 2

    type [<StringEnum>] [<RequireQualifiedAccess>] SemicolonPreference =
        | Ignore
        | Insert
        | Remove

    type [<AllowNullLiteral>] EditorOptions =
        abstract BaseIndentSize: float option with get, set
        abstract IndentSize: float with get, set
        abstract TabSize: float with get, set
        abstract NewLineCharacter: string with get, set
        abstract ConvertTabsToSpaces: bool with get, set
        abstract IndentStyle: IndentStyle with get, set

    type [<AllowNullLiteral>] EditorSettings =
        abstract baseIndentSize: float option with get, set
        abstract indentSize: float option with get, set
        abstract tabSize: float option with get, set
        abstract newLineCharacter: string option with get, set
        abstract convertTabsToSpaces: bool option with get, set
        abstract indentStyle: IndentStyle option with get, set
        abstract trimTrailingWhitespace: bool option with get, set

    type [<AllowNullLiteral>] FormatCodeOptions =
        inherit EditorOptions
        abstract InsertSpaceAfterCommaDelimiter: bool with get, set
        abstract InsertSpaceAfterSemicolonInForStatements: bool with get, set
        abstract InsertSpaceBeforeAndAfterBinaryOperators: bool with get, set
        abstract InsertSpaceAfterConstructor: bool option with get, set
        abstract InsertSpaceAfterKeywordsInControlFlowStatements: bool with get, set
        abstract InsertSpaceAfterFunctionKeywordForAnonymousFunctions: bool with get, set
        abstract InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis: bool with get, set
        abstract InsertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets: bool with get, set
        abstract InsertSpaceAfterOpeningAndBeforeClosingNonemptyBraces: bool option with get, set
        abstract InsertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces: bool with get, set
        abstract InsertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces: bool option with get, set
        abstract InsertSpaceAfterTypeAssertion: bool option with get, set
        abstract InsertSpaceBeforeFunctionParenthesis: bool option with get, set
        abstract PlaceOpenBraceOnNewLineForFunctions: bool with get, set
        abstract PlaceOpenBraceOnNewLineForControlBlocks: bool with get, set
        abstract insertSpaceBeforeTypeAnnotation: bool option with get, set

    type [<AllowNullLiteral>] FormatCodeSettings =
        inherit EditorSettings
        abstract insertSpaceAfterCommaDelimiter: bool option
        abstract insertSpaceAfterSemicolonInForStatements: bool option
        abstract insertSpaceBeforeAndAfterBinaryOperators: bool option
        abstract insertSpaceAfterConstructor: bool option
        abstract insertSpaceAfterKeywordsInControlFlowStatements: bool option
        abstract insertSpaceAfterFunctionKeywordForAnonymousFunctions: bool option
        abstract insertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis: bool option
        abstract insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets: bool option
        abstract insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces: bool option
        abstract insertSpaceAfterOpeningAndBeforeClosingEmptyBraces: bool option
        abstract insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces: bool option
        abstract insertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces: bool option
        abstract insertSpaceAfterTypeAssertion: bool option
        abstract insertSpaceBeforeFunctionParenthesis: bool option
        abstract placeOpenBraceOnNewLineForFunctions: bool option
        abstract placeOpenBraceOnNewLineForControlBlocks: bool option
        abstract insertSpaceBeforeTypeAnnotation: bool option
        abstract indentMultiLineObjectLiteralBeginningOnBlankLine: bool option
        abstract semicolons: SemicolonPreference option

    type [<AllowNullLiteral>] DefinitionInfo =
        inherit DocumentSpan
        abstract kind: ScriptElementKind with get, set
        abstract name: string with get, set
        abstract containerKind: ScriptElementKind with get, set
        abstract containerName: string with get, set

    type [<AllowNullLiteral>] DefinitionInfoAndBoundSpan =
        abstract definitions: ResizeArray<DefinitionInfo> option with get, set
        abstract textSpan: TextSpan with get, set

    type [<AllowNullLiteral>] ReferencedSymbolDefinitionInfo =
        inherit DefinitionInfo
        abstract displayParts: ResizeArray<SymbolDisplayPart> with get, set

    type [<AllowNullLiteral>] ReferencedSymbol =
        abstract definition: ReferencedSymbolDefinitionInfo with get, set
        abstract references: ResizeArray<ReferenceEntry> with get, set

    type [<RequireQualifiedAccess>] SymbolDisplayPartKind =
        | AliasName = 0
        | ClassName = 1
        | EnumName = 2
        | FieldName = 3
        | InterfaceName = 4
        | Keyword = 5
        | LineBreak = 6
        | NumericLiteral = 7
        | StringLiteral = 8
        | LocalName = 9
        | MethodName = 10
        | ModuleName = 11
        | Operator = 12
        | ParameterName = 13
        | PropertyName = 14
        | Punctuation = 15
        | Space = 16
        | Text = 17
        | TypeParameterName = 18
        | EnumMemberName = 19
        | FunctionName = 20
        | RegularExpressionLiteral = 21

    type [<AllowNullLiteral>] SymbolDisplayPart =
        abstract text: string with get, set
        abstract kind: string with get, set

    type [<AllowNullLiteral>] JSDocTagInfo =
        abstract name: string with get, set
        abstract text: string option with get, set

    type [<AllowNullLiteral>] QuickInfo =
        abstract kind: ScriptElementKind with get, set
        abstract kindModifiers: string with get, set
        abstract textSpan: TextSpan with get, set
        abstract displayParts: ResizeArray<SymbolDisplayPart> option with get, set
        abstract documentation: ResizeArray<SymbolDisplayPart> option with get, set
        abstract tags: ResizeArray<JSDocTagInfo> option with get, set

    type RenameInfo =
        U2<RenameInfoSuccess, RenameInfoFailure>

    type [<AllowNullLiteral>] RenameInfoSuccess =
        abstract canRename: obj with get, set
        /// File or directory to rename.
        /// If set, `getEditsForFileRename` should be called instead of `findRenameLocations`.
        abstract fileToRename: string option with get, set
        abstract displayName: string with get, set
        abstract fullDisplayName: string with get, set
        abstract kind: ScriptElementKind with get, set
        abstract kindModifiers: string with get, set
        abstract triggerSpan: TextSpan with get, set

    type [<AllowNullLiteral>] RenameInfoFailure =
        abstract canRename: obj with get, set
        abstract localizedErrorMessage: string with get, set

    type [<AllowNullLiteral>] RenameInfoOptions =
        abstract allowRenameOfImportPath: bool option

    type [<AllowNullLiteral>] DocCommentTemplateOptions =
        abstract generateReturnInDocTemplate: bool option

    type [<AllowNullLiteral>] SignatureHelpParameter =
        abstract name: string with get, set
        abstract documentation: ResizeArray<SymbolDisplayPart> with get, set
        abstract displayParts: ResizeArray<SymbolDisplayPart> with get, set
        abstract isOptional: bool with get, set
        abstract isRest: bool option with get, set

    type [<AllowNullLiteral>] SelectionRange =
        abstract textSpan: TextSpan with get, set
        abstract parent: SelectionRange option with get, set

    /// Represents a single signature to show in signature help.
    /// The id is used for subsequent calls into the language service to ask questions about the
    /// signature help item in the context of any documents that have been updated.  i.e. after
    /// an edit has happened, while signature help is still active, the host can ask important
    /// questions like 'what parameter is the user currently contained within?'.
    type [<AllowNullLiteral>] SignatureHelpItem =
        abstract isVariadic: bool with get, set
        abstract prefixDisplayParts: ResizeArray<SymbolDisplayPart> with get, set
        abstract suffixDisplayParts: ResizeArray<SymbolDisplayPart> with get, set
        abstract separatorDisplayParts: ResizeArray<SymbolDisplayPart> with get, set
        abstract parameters: ResizeArray<SignatureHelpParameter> with get, set
        abstract documentation: ResizeArray<SymbolDisplayPart> with get, set
        abstract tags: ResizeArray<JSDocTagInfo> with get, set

    /// Represents a set of signature help items, and the preferred item that should be selected.
    type [<AllowNullLiteral>] SignatureHelpItems =
        abstract items: ResizeArray<SignatureHelpItem> with get, set
        abstract applicableSpan: TextSpan with get, set
        abstract selectedItemIndex: float with get, set
        abstract argumentIndex: float with get, set
        abstract argumentCount: float with get, set

    type [<AllowNullLiteral>] CompletionInfo =
        /// Not true for all global completions. This will be true if the enclosing scope matches a few syntax kinds. See `isSnippetScope`.
        abstract isGlobalCompletion: bool with get, set
        abstract isMemberCompletion: bool with get, set
        /// In the absence of `CompletionEntry["replacementSpan"], the editor may choose whether to use
        /// this span or its default one. If `CompletionEntry["replacementSpan"]` is defined, that span
        /// must be used to commit that completion entry.
        abstract optionalReplacementSpan: TextSpan option with get, set
        /// true when the current location also allows for a new identifier
        abstract isNewIdentifierLocation: bool with get, set
        abstract entries: ResizeArray<CompletionEntry> with get, set

    type [<AllowNullLiteral>] CompletionEntry =
        abstract name: string with get, set
        abstract kind: ScriptElementKind with get, set
        abstract kindModifiers: string option with get, set
        abstract sortText: string with get, set
        abstract insertText: string option with get, set
        /// An optional span that indicates the text to be replaced by this completion item.
        /// If present, this span should be used instead of the default one.
        /// It will be set if the required span differs from the one generated by the default replacement behavior.
        abstract replacementSpan: TextSpan option with get, set
        abstract hasAction: obj option with get, set
        abstract source: string option with get, set
        abstract isRecommended: obj option with get, set
        abstract isFromUncheckedFile: obj option with get, set
        abstract isPackageJsonImport: obj option with get, set

    type [<AllowNullLiteral>] CompletionEntryDetails =
        abstract name: string with get, set
        abstract kind: ScriptElementKind with get, set
        abstract kindModifiers: string with get, set
        abstract displayParts: ResizeArray<SymbolDisplayPart> with get, set
        abstract documentation: ResizeArray<SymbolDisplayPart> option with get, set
        abstract tags: ResizeArray<JSDocTagInfo> option with get, set
        abstract codeActions: ResizeArray<CodeAction> option with get, set
        abstract source: ResizeArray<SymbolDisplayPart> option with get, set

    type [<AllowNullLiteral>] OutliningSpan =
        /// The span of the document to actually collapse.
        abstract textSpan: TextSpan with get, set
        /// The span of the document to display when the user hovers over the collapsed span.
        abstract hintSpan: TextSpan with get, set
        /// The text to display in the editor for the collapsed region.
        abstract bannerText: string with get, set
        /// Whether or not this region should be automatically collapsed when
        /// the 'Collapse to Definitions' command is invoked.
        abstract autoCollapse: bool with get, set
        /// Classification of the contents of the span
        abstract kind: OutliningSpanKind with get, set

    type [<StringEnum>] [<RequireQualifiedAccess>] OutliningSpanKind =
        | Comment
        | Region
        | Code
        | Imports

    type [<RequireQualifiedAccess>] OutputFileType =
        | JavaScript = 0
        | SourceMap = 1
        | Declaration = 2

    type [<RequireQualifiedAccess>] EndOfLineState =
        | None = 0
        | InMultiLineCommentTrivia = 1
        | InSingleQuoteStringLiteral = 2
        | InDoubleQuoteStringLiteral = 3
        | InTemplateHeadOrNoSubstitutionTemplate = 4
        | InTemplateMiddleOrTail = 5
        | InTemplateSubstitutionPosition = 6

    type [<RequireQualifiedAccess>] TokenClass =
        | Punctuation = 0
        | Keyword = 1
        | Operator = 2
        | Comment = 3
        | Whitespace = 4
        | Identifier = 5
        | NumberLiteral = 6
        | BigIntLiteral = 7
        | StringLiteral = 8
        | RegExpLiteral = 9

    type [<AllowNullLiteral>] ClassificationResult =
        abstract finalLexState: EndOfLineState with get, set
        abstract entries: ResizeArray<ClassificationInfo> with get, set

    type [<AllowNullLiteral>] ClassificationInfo =
        abstract length: float with get, set
        abstract classification: TokenClass with get, set

    type [<AllowNullLiteral>] Classifier =
        /// <summary>Gives lexical classifications of tokens on a line without any syntactic context.
        /// For instance, a token consisting of the text 'string' can be either an identifier
        /// named 'string' or the keyword 'string', however, because this classifier is not aware,
        /// it relies on certain heuristics to give acceptable results. For classifications where
        /// speed trumps accuracy, this function is preferable; however, for true accuracy, the
        /// syntactic classifier is ideal. In fact, in certain editing scenarios, combining the
        /// lexical, syntactic, and semantic classifiers may issue the best user experience.</summary>
        /// <param name="text">The text of a line to classify.</param>
        /// <param name="lexState">The state of the lexical classifier at the end of the previous line.</param>
        /// <param name="syntacticClassifierAbsent">Whether the client is *not* using a syntactic classifier.
        /// If there is no syntactic classifier (syntacticClassifierAbsent=true),
        /// certain heuristics may be used in its place; however, if there is a
        /// syntactic classifier (syntacticClassifierAbsent=false), certain
        /// classifications which may be incorrectly categorized will be given
        /// back as Identifiers in order to allow the syntactic classifier to
        /// subsume the classification.</param>
        abstract getClassificationsForLine: text: string * lexState: EndOfLineState * syntacticClassifierAbsent: bool -> ClassificationResult
        abstract getEncodedLexicalClassifications: text: string * endOfLineState: EndOfLineState * syntacticClassifierAbsent: bool -> Classifications

    type [<StringEnum>] [<RequireQualifiedAccess>] ScriptElementKind =
        | [<CompiledName "">] Unknown
        | Warning
        | Keyword
        | [<CompiledName "script">] ScriptElement
        | [<CompiledName "module">] ModuleElement
        | [<CompiledName "class">] ClassElement
        | [<CompiledName "local class">] LocalClassElement
        | [<CompiledName "interface">] InterfaceElement
        | [<CompiledName "type">] TypeElement
        | [<CompiledName "enum">] EnumElement
        | [<CompiledName "enum member">] EnumMemberElement
        | [<CompiledName "var">] VariableElement
        | [<CompiledName "local var">] LocalVariableElement
        | [<CompiledName "function">] FunctionElement
        | [<CompiledName "local function">] LocalFunctionElement
        | [<CompiledName "method">] MemberFunctionElement
        | [<CompiledName "getter">] MemberGetAccessorElement
        | [<CompiledName "setter">] MemberSetAccessorElement
        | [<CompiledName "property">] MemberVariableElement
        | [<CompiledName "constructor">] ConstructorImplementationElement
        | [<CompiledName "call">] CallSignatureElement
        | [<CompiledName "index">] IndexSignatureElement
        | [<CompiledName "construct">] ConstructSignatureElement
        | [<CompiledName "parameter">] ParameterElement
        | [<CompiledName "type parameter">] TypeParameterElement
        | [<CompiledName "primitive type">] PrimitiveType
        | Label
        | Alias
        | [<CompiledName "const">] ConstElement
        | [<CompiledName "let">] LetElement
        | Directory
        | [<CompiledName "external module name">] ExternalModuleName
        | [<CompiledName "JSX attribute">] JsxAttribute
        | String

    type [<StringEnum>] [<RequireQualifiedAccess>] ScriptElementKindModifier =
        | [<CompiledName "">] None
        | [<CompiledName "public">] PublicMemberModifier
        | [<CompiledName "private">] PrivateMemberModifier
        | [<CompiledName "protected">] ProtectedMemberModifier
        | [<CompiledName "export">] ExportedModifier
        | [<CompiledName "declare">] AmbientModifier
        | [<CompiledName "static">] StaticModifier
        | [<CompiledName "abstract">] AbstractModifier
        | [<CompiledName "optional">] OptionalModifier
        | [<CompiledName "deprecated">] DeprecatedModifier
        | [<CompiledName ".d.ts">] DtsModifier
        | [<CompiledName ".ts">] TsModifier
        | [<CompiledName ".tsx">] TsxModifier
        | [<CompiledName ".js">] JsModifier
        | [<CompiledName ".jsx">] JsxModifier
        | [<CompiledName ".json">] JsonModifier

    type [<StringEnum>] [<RequireQualifiedAccess>] ClassificationTypeNames =
        | Comment
        | Identifier
        | Keyword
        | [<CompiledName "number">] NumericLiteral
        | [<CompiledName "bigint">] BigintLiteral
        | Operator
        | [<CompiledName "string">] StringLiteral
        | [<CompiledName "whitespace">] WhiteSpace
        | Text
        | Punctuation
        | [<CompiledName "class name">] ClassName
        | [<CompiledName "enum name">] EnumName
        | [<CompiledName "interface name">] InterfaceName
        | [<CompiledName "module name">] ModuleName
        | [<CompiledName "type parameter name">] TypeParameterName
        | [<CompiledName "type alias name">] TypeAliasName
        | [<CompiledName "parameter name">] ParameterName
        | [<CompiledName "doc comment tag name">] DocCommentTagName
        | [<CompiledName "jsx open tag name">] JsxOpenTagName
        | [<CompiledName "jsx close tag name">] JsxCloseTagName
        | [<CompiledName "jsx self closing tag name">] JsxSelfClosingTagName
        | [<CompiledName "jsx attribute">] JsxAttribute
        | [<CompiledName "jsx text">] JsxText
        | [<CompiledName "jsx attribute string literal value">] JsxAttributeStringLiteralValue

    type [<RequireQualifiedAccess>] ClassificationType =
        | Comment = 1
        | Identifier = 2
        | Keyword = 3
        | NumericLiteral = 4
        | Operator = 5
        | StringLiteral = 6
        | RegularExpressionLiteral = 7
        | WhiteSpace = 8
        | Text = 9
        | Punctuation = 10
        | ClassName = 11
        | EnumName = 12
        | InterfaceName = 13
        | ModuleName = 14
        | TypeParameterName = 15
        | TypeAliasName = 16
        | ParameterName = 17
        | DocCommentTagName = 18
        | JsxOpenTagName = 19
        | JsxCloseTagName = 20
        | JsxSelfClosingTagName = 21
        | JsxAttribute = 22
        | JsxText = 23
        | JsxAttributeStringLiteralValue = 24
        | BigintLiteral = 25

    type [<AllowNullLiteral>] DocumentHighlights =
        abstract fileName: string with get, set
        abstract highlightSpans: ResizeArray<HighlightSpan> with get, set

    /// The document registry represents a store of SourceFile objects that can be shared between
    /// multiple LanguageService instances. A LanguageService instance holds on the SourceFile (AST)
    /// of files in the context.
    /// SourceFile objects account for most of the memory usage by the language service. Sharing
    /// the same DocumentRegistry instance between different instances of LanguageService allow
    /// for more efficient memory utilization since all projects will share at least the library
    /// file (lib.d.ts).
    /// 
    /// A more advanced use of the document registry is to serialize sourceFile objects to disk
    /// and re-hydrate them when needed.
    /// 
    /// To create a default DocumentRegistry, use createDocumentRegistry to create one, and pass it
    /// to all subsequent createLanguageService calls.
    type [<AllowNullLiteral>] DocumentRegistry =
        /// <summary>Request a stored SourceFile with a given fileName and compilationSettings.
        /// The first call to acquire will call createLanguageServiceSourceFile to generate
        /// the SourceFile if was not found in the registry.</summary>
        /// <param name="fileName">The name of the file requested</param>
        /// <param name="compilationSettings">Some compilation settings like target affects the
        /// shape of a the resulting SourceFile. This allows the DocumentRegistry to store
        /// multiple copies of the same file for different compilation settings.</param>
        /// <param name="scriptSnapshot">Text of the file. Only used if the file was not found
        /// in the registry and a new one was created.</param>
        /// <param name="version">Current version of the file. Only used if the file was not found
        /// in the registry and a new one was created.</param>
        abstract acquireDocument: fileName: string * compilationSettings: CompilerOptions * scriptSnapshot: IScriptSnapshot * version: string * ?scriptKind: ScriptKind -> SourceFile
        abstract acquireDocumentWithKey: fileName: string * path: Path * compilationSettings: CompilerOptions * key: DocumentRegistryBucketKey * scriptSnapshot: IScriptSnapshot * version: string * ?scriptKind: ScriptKind -> SourceFile
        /// <summary>Request an updated version of an already existing SourceFile with a given fileName
        /// and compilationSettings. The update will in-turn call updateLanguageServiceSourceFile
        /// to get an updated SourceFile.</summary>
        /// <param name="fileName">The name of the file requested</param>
        /// <param name="compilationSettings">Some compilation settings like target affects the
        /// shape of a the resulting SourceFile. This allows the DocumentRegistry to store
        /// multiple copies of the same file for different compilation settings.</param>
        /// <param name="scriptSnapshot">Text of the file.</param>
        /// <param name="version">Current version of the file.</param>
        abstract updateDocument: fileName: string * compilationSettings: CompilerOptions * scriptSnapshot: IScriptSnapshot * version: string * ?scriptKind: ScriptKind -> SourceFile
        abstract updateDocumentWithKey: fileName: string * path: Path * compilationSettings: CompilerOptions * key: DocumentRegistryBucketKey * scriptSnapshot: IScriptSnapshot * version: string * ?scriptKind: ScriptKind -> SourceFile
        abstract getKeyForCompilationSettings: settings: CompilerOptions -> DocumentRegistryBucketKey
        /// <summary>Informs the DocumentRegistry that a file is not needed any longer.
        /// 
        /// Note: It is not allowed to call release on a SourceFile that was not acquired from
        /// this registry originally.</summary>
        /// <param name="fileName">The name of the file to be released</param>
        /// <param name="compilationSettings">The compilation settings used to acquire the file</param>
        abstract releaseDocument: fileName: string * compilationSettings: CompilerOptions -> unit
        abstract releaseDocumentWithKey: path: Path * key: DocumentRegistryBucketKey -> unit
        abstract reportStats: unit -> string

    type [<AllowNullLiteral>] DocumentRegistryBucketKey =
        interface end

    type [<AllowNullLiteral>] TranspileOptions =
        abstract compilerOptions: CompilerOptions option with get, set
        abstract fileName: string option with get, set
        abstract reportDiagnostics: bool option with get, set
        abstract moduleName: string option with get, set
        abstract renamedDependencies: MapLike<string> option with get, set
        abstract transformers: CustomTransformers option with get, set

    type [<AllowNullLiteral>] TranspileOutput =
        abstract outputText: string with get, set
        abstract diagnostics: ResizeArray<Diagnostic> option with get, set
        abstract sourceMapText: string option with get, set

    type [<AllowNullLiteral>] IExportsCreateStringLiteral =
        [<Emit "$0($1...)">] abstract Invoke: text: string * ?isSingleQuote: bool -> StringLiteral
        [<Emit "$0($1...)">] abstract Invoke: text: string * ?isSingleQuote: bool * ?hasExtendedUnicodeEscape: bool -> StringLiteral

    type [<AllowNullLiteral>] IExportsCreateTemplateHead =
        [<Emit "$0($1...)">] abstract Invoke: text: string * ?rawText: string * ?templateFlags: TokenFlags -> TemplateHead
        [<Emit "$0($1...)">] abstract Invoke: text: string option * rawText: string * ?templateFlags: TokenFlags -> TemplateHead

    type [<AllowNullLiteral>] IExportsCreateTemplateMiddle =
        [<Emit "$0($1...)">] abstract Invoke: text: string * ?rawText: string * ?templateFlags: TokenFlags -> TemplateMiddle
        [<Emit "$0($1...)">] abstract Invoke: text: string option * rawText: string * ?templateFlags: TokenFlags -> TemplateMiddle

    type [<AllowNullLiteral>] IExportsCreateTemplateTail =
        [<Emit "$0($1...)">] abstract Invoke: text: string * ?rawText: string * ?templateFlags: TokenFlags -> TemplateTail
        [<Emit "$0($1...)">] abstract Invoke: text: string option * rawText: string * ?templateFlags: TokenFlags -> TemplateTail

    type [<AllowNullLiteral>] IExportsCreateNoSubstitutionTemplateLiteral =
        [<Emit "$0($1...)">] abstract Invoke: text: string * ?rawText: string -> NoSubstitutionTemplateLiteral
        [<Emit "$0($1...)">] abstract Invoke: text: string option * rawText: string -> NoSubstitutionTemplateLiteral

    type [<AllowNullLiteral>] IExportsCreateImmediatelyInvokedFunctionExpression =
        [<Emit "$0($1...)">] abstract Invoke: statements: ResizeArray<Statement> -> CallExpression
        [<Emit "$0($1...)">] abstract Invoke: statements: ResizeArray<Statement> * param: ParameterDeclaration * paramValue: Expression -> CallExpression

    type [<AllowNullLiteral>] IExportsCreateLiteral =
        [<Emit "$0($1...)">] abstract Invoke: value: U5<string, StringLiteral, NoSubstitutionTemplateLiteral, NumericLiteral, Identifier> -> StringLiteral
        [<Emit "$0($1...)">] abstract Invoke: value: U2<float, PseudoBigInt> -> NumericLiteral
        [<Emit "$0($1...)">] abstract Invoke: value: bool -> BooleanLiteral
        [<Emit "$0($1...)">] abstract Invoke: value: U4<string, float, PseudoBigInt, bool> -> PrimaryExpression

    type [<AllowNullLiteral>] IExportsCreateTypeOperatorNode =
        [<Emit "$0($1...)">] abstract Invoke: ``type``: TypeNode -> TypeOperatorNode
        [<Emit "$0($1...)">] abstract Invoke: operator: SyntaxKind * ``type``: TypeNode -> TypeOperatorNode

    type [<AllowNullLiteral>] IExportsCreateTaggedTemplate =
        [<Emit "$0($1...)">] abstract Invoke: tag: Expression * template: TemplateLiteral -> TaggedTemplateExpression
        [<Emit "$0($1...)">] abstract Invoke: tag: Expression * typeArguments: ResizeArray<TypeNode> option * template: TemplateLiteral -> TaggedTemplateExpression

    type [<AllowNullLiteral>] IExportsUpdateTaggedTemplate =
        [<Emit "$0($1...)">] abstract Invoke: node: TaggedTemplateExpression * tag: Expression * template: TemplateLiteral -> TaggedTemplateExpression
        [<Emit "$0($1...)">] abstract Invoke: node: TaggedTemplateExpression * tag: Expression * typeArguments: ResizeArray<TypeNode> option * template: TemplateLiteral -> TaggedTemplateExpression

    type [<AllowNullLiteral>] IExportsCreateConditional =
        [<Emit "$0($1...)">] abstract Invoke: condition: Expression * whenTrue: Expression * whenFalse: Expression -> ConditionalExpression
        [<Emit "$0($1...)">] abstract Invoke: condition: Expression * questionToken: QuestionToken * whenTrue: Expression * colonToken: ColonToken * whenFalse: Expression -> ConditionalExpression

    type [<AllowNullLiteral>] IExportsCreateYield =
        [<Emit "$0($1...)">] abstract Invoke: ?expression: Expression -> YieldExpression
        [<Emit "$0($1...)">] abstract Invoke: asteriskToken: AsteriskToken option * expression: Expression -> YieldExpression

    type [<AllowNullLiteral>] IExportsCreateArrowFunction =
        [<Emit "$0($1...)">] abstract Invoke: modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * equalsGreaterThanToken: EqualsGreaterThanToken option * body: ConciseBody -> ArrowFunction
        [<Emit "$0($1...)">] abstract Invoke: modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: ConciseBody -> ArrowFunction

    type [<AllowNullLiteral>] IExportsUpdateArrowFunction =
        [<Emit "$0($1...)">] abstract Invoke: node: ArrowFunction * modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * equalsGreaterThanToken: EqualsGreaterThanToken * body: ConciseBody -> ArrowFunction
        [<Emit "$0($1...)">] abstract Invoke: node: ArrowFunction * modifiers: ResizeArray<Modifier> option * typeParameters: ResizeArray<TypeParameterDeclaration> option * parameters: ResizeArray<ParameterDeclaration> * ``type``: TypeNode option * body: ConciseBody -> ArrowFunction

    type [<AllowNullLiteral>] IExportsCreateVariableDeclaration =
        [<Emit "$0($1...)">] abstract Invoke: name: U2<string, BindingName> * ?``type``: TypeNode * ?initializer: Expression -> VariableDeclaration
        [<Emit "$0($1...)">] abstract Invoke: name: U2<string, BindingName> * exclamationToken: ExclamationToken option * ``type``: TypeNode option * initializer: Expression option -> VariableDeclaration

    type [<AllowNullLiteral>] IExportsUpdateVariableDeclaration =
        [<Emit "$0($1...)">] abstract Invoke: node: VariableDeclaration * name: BindingName * ``type``: TypeNode option * initializer: Expression option -> VariableDeclaration
        [<Emit "$0($1...)">] abstract Invoke: node: VariableDeclaration * name: BindingName * exclamationToken: ExclamationToken option * ``type``: TypeNode option * initializer: Expression option -> VariableDeclaration

    type [<AllowNullLiteral>] IteratorNext<'T> =
        abstract value: 'T with get, set
        abstract ``done``: obj option with get, set

    type [<AllowNullLiteral>] IteratorNext2 =
        abstract value: unit
        abstract ``done``: obj with get, set

    type [<AllowNullLiteral>] DiagnosticMessageReportsUnnecessary =
        interface end

    type [<StringEnum>] [<RequireQualifiedAccess>] UserPreferencesQuotePreference =
        | Auto
        | Double
        | Single

    type [<StringEnum>] [<RequireQualifiedAccess>] UserPreferencesImportModuleSpecifierPreference =
        | Shortest
        | [<CompiledName "project-relative">] ProjectRelative
        | Relative
        | [<CompiledName "non-relative">] NonRelative

    type [<StringEnum>] [<RequireQualifiedAccess>] UserPreferencesImportModuleSpecifierEnding =
        | Auto
        | Minimal
        | Index
        | Js

    type [<StringEnum>] [<RequireQualifiedAccess>] UserPreferencesIncludePackageJsonAutoImports =
        | Auto
        | On
        | Off

    type [<StringEnum>] [<RequireQualifiedAccess>] PerformanceEventKind =
        | [<CompiledName "UpdateGraph">] UpdateGraph
        | [<CompiledName "CreatePackageJsonAutoImportProvider">] CreatePackageJsonAutoImportProvider

    type [<StringEnum>] [<RequireQualifiedAccess>] NavigateToItemMatchKind =
        | Exact
        | Prefix
        | Substring
        | CamelCase
