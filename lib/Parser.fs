// partly borrowed from https://github.com/fable-compiler/ts2fable/
module Ts2Ml.Parser

open Ts2Ml.Common
open Ts2Ml.Syntax
open Ts2Ml.Naming

open Fable.Core
open Fable.Core.JsInterop
open TypeScript

type Node = Ts.Node
type TypeChecker = Ts.TypeChecker
type Kind = Ts.SyntaxKind

type ParserContext =
  inherit IContext
  abstract checker: TypeChecker with get
  abstract sourceFile: Ts.SourceFile with get

module Node =
  let location (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    LocationTs (src, pos)

  let ppLocation (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    sprintf "line %i, col %i of %s" (int pos.line + 1) (int pos.character + 1) src.fileName

  let ppLine (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    let startPos = int <| src.getPositionOfLineAndCharacter(pos.line, 0.)
    let endPos = int <| src.getLineEndOfPosition(n.getEnd())
    let lines =
      src.text.Substring(startPos, endPos - startPos) |> String.toLines
    lines |> Array.map (sprintf "> %s") |> String.concat System.Environment.NewLine

let nodeWarn (ctx: ParserContext) (node: Node) format =
  Printf.kprintf (fun s ->
    ctx.logger.warnf "%s at %s\n%s" s (Node.ppLocation node) (Node.ppLine node)
  ) format

let nodeError (ctx: ParserContext) node format =
  Printf.kprintf (fun s ->
    ctx.logger.errorf "%s at %s\n%s" s (Node.ppLocation node) (Node.ppLine node)
  ) format

let hasModifier (kind: Ts.SyntaxKind) (modifiers: Ts.ModifiersArray option) =
  match modifiers with
  | None -> false
  | Some mds -> mds |> Seq.exists (fun md -> md.kind = kind)

let getAccessibility (modifiersOpt: Ts.ModifiersArray option) : Accessibility option =
  if modifiersOpt |> hasModifier Kind.PublicKeyword then
    Some Public
  else if modifiersOpt |> hasModifier Kind.ProtectedKeyword then
    Some Protected
  else if modifiersOpt |> hasModifier Kind.PrivateKeyword then
    Some Private
  else
    None

let getExported (modifiersOpt: Ts.ModifiersArray option) : Exported =
  if modifiersOpt |> hasModifier Kind.DeclareKeyword then
    Exported.Declared
  else if modifiersOpt |> hasModifier Kind.ExportKeyword |> not then
    Exported.No
  else if modifiersOpt |> hasModifier Kind.DefaultKeyword then
    Exported.Default
  else
    Exported.Yes

let isReadOnly (m: Ts.ModifiersArray option) : bool =
  m |> hasModifier Kind.ReadonlyKeyword

let getText (x: 'a) : string =
  (!!x : Ts.Node).getText() |> removeQuotesAndTrim

let getPropertyName (pn: Ts.PropertyName) : string option =
  let node : Node = !!pn
  match node.kind with
  | Kind.Identifier -> Some (!!pn : Ts.Identifier).text
  | Kind.PrivateIdentifier -> Some (!!pn : Ts.PrivateIdentifier).text
  | Kind.StringLiteral -> Some (!!pn : Ts.StringLiteral).text
  | Kind.NumericLiteral -> Some (!!pn : Ts.NumericLiteral).text
  | _ -> None

let getPropertyExpression (pn: Ts.PropertyName) : Ts.Expression option =
  let node : Node = !!pn
  match node.kind with
  | Kind.ComputedPropertyName -> Some (!!pn : Ts.ComputedPropertyName).expression
  | _ -> None

let getBindingName ctx (bn: Ts.BindingName): string option =
  let syntaxNode : Node = !! bn
  match syntaxNode.kind with
  | Kind.Identifier ->
    let id : Ts.Identifier = !! bn
    Some id.text
  | Kind.ObjectBindingPattern
  | Kind.ArrayBindingPattern -> None
  | _ -> nodeError ctx syntaxNode "unknown Binding Name kind: %s" (Enum.pp syntaxNode.kind)

let rec extractNestedName (node: Node) =
  seq {
    if ts.isIdentifier node then
      yield (node :?> Ts.Identifier).text
    else if ts.isQualifiedName node then
      let node = node :?> Ts.QualifiedName
      yield! extractNestedName (box node.left :?> Node)
      yield node.right.text
    else
      for child in node.getChildren() do
        yield! extractNestedName child
  }

let getKindFromIdentifier (ctx: ParserContext) (i: Ts.Identifier) : Set<Syntax.Kind> option =
  match ctx.checker.getSymbolAtLocation i with
  | None ->
    nodeWarn ctx i "failed to get the kind of an imported identifier '%s'" i.text
    None
  | Some s ->
    let inline check (superset: Ts.SymbolFlags) (subset: Ts.SymbolFlags) = int (subset &&& superset) > 0
    let rec go (symbol: Ts.Symbol) =
      let flags = symbol.getFlags()
      if flags = Ts.SymbolFlags.Alias then
        try
          let symbol = ctx.checker.getAliasedSymbol symbol
          if isNullOrUndefined symbol then None
          else
            go symbol
        with _ -> None
      else if check Ts.SymbolFlags.Transient flags then None
      else
        let kinds = [
          if flags |> check Ts.SymbolFlags.Type then Kind.Type
          if flags |> check Ts.SymbolFlags.Value then Kind.Value
          if flags |> check (Ts.SymbolFlags.Class ||| Ts.SymbolFlags.Interface) then Kind.ClassLike
          if flags |> check Ts.SymbolFlags.Enum then Kind.Enum
          if flags |> check Ts.SymbolFlags.Module then Kind.Module
        ]
        Some (Set.ofList kinds)
    go s

let sanitizeCommentText str : string list =
  str |> String.toLines |> List.ofArray

let readCommentText (comment: U2<string, ResizeArray<Ts.JSDocComment>>) : string list =
  let str =
    if JS.jsTypeof comment = "string" then
      box comment :?> string
    else
      let texts = box comment :?> ResizeArray<Ts.JSDocText> // TODO: do not ignore links
      texts |> Seq.map (fun x -> x.text) |> String.concat ""
  sanitizeCommentText str

let readNonJSDocComments (ctx: ParserContext) (node: Node) : Comment list =
  let fullText = ctx.sourceFile.getFullText()
  let ranges = ts.getLeadingCommentRanges(fullText, node.getFullStart())
  match ranges with
  | None -> []
  | Some ranges ->
    ranges
    |> Seq.map (fun range ->
      fullText.[int range.pos .. int range.``end``]
      |> sanitizeCommentText |> Summary)
    |> Seq.toList

let readJSDocTag (tag: Ts.JSDocTag) : Comment =
  let text = tag.comment |> Option.map readCommentText |> Option.defaultValue []
  match tag.kind with
  | Kind.JSDocParameterTag ->
    let tag = tag :?> Ts.JSDocParameterTag
    Param ((box tag.name :?> Node) |> extractNestedName |> String.concat ".", text)
  | Kind.JSDocReturnTag -> Return text
  | Kind.JSDocDeprecatedTag -> Deprecated text
  | Kind.JSDocSeeTag ->
    let tag = tag :?> Ts.JSDocSeeTag
    See ((box tag.name :?> Node option) |> Option.map (extractNestedName >> String.concat "."), text)
  | _ ->
    match tag.tagName.text with
    | "description" | "desc" -> Description text
    | "summary" -> Summary text
    | "example" -> Example text
    | tagName ->
      Other (tagName, text, tag)

let readJSDocComments (docComment: ResizeArray<Ts.SymbolDisplayPart>) (tags: Ts.JSDocTag seq) : Comment list =
  let desc =
    let text =
      docComment
      |> List.ofSeq
      |> List.collect (fun sdp -> sdp.text |> sanitizeCommentText)
    if List.isEmpty text then []
    else [Description text]
  let tags =
    tags
    |> Seq.map readJSDocTag
    |> List.ofSeq
  desc @ tags

let readCommentsForNamedDeclaration (ctx: ParserContext) (nd: Ts.NamedDeclaration) : Comment list =
  let fallback () =
    match nd.name with
    | None ->
      readNonJSDocComments ctx nd
    | Some name ->
      match ctx.checker.getSymbolAtLocation !!name with
      | None ->
        readNonJSDocComments ctx nd
      | Some symbol ->
        readJSDocComments (symbol.getDocumentationComment (Some ctx.checker)) (ts.getJSDocTags nd)

  match nd.kind with
  // check if it is a SignatureDeclaration
  | Kind.CallSignature | Kind.ConstructSignature | Kind.MethodSignature | Kind.IndexSignature
  | Kind.FunctionType | Kind.ConstructorType | Kind.JSDocFunctionType | Kind.FunctionDeclaration
  | Kind.MethodDeclaration | Kind.Constructor | Kind.GetAccessor | Kind.SetAccessor
  | Kind.FunctionExpression | Kind.ArrowFunction ->
    try
      match ctx.checker.getSignatureFromDeclaration nd with
      | None ->
        fallback ()
      | Some signature ->
        match readJSDocComments (signature.getDocumentationComment (Some ctx.checker)) (ts.getJSDocTags nd) with
        | [] ->
          fallback ()
        | xs -> xs
    with e ->
      nodeWarn ctx nd "exception while trying to read comments from a signature declaration"
      eprintfn "%s" (e.StackTrace)
      fallback ()
  | _ ->
    fallback ()

let readLiteral (node: Node) : Literal option =
  match node.kind with
  | Kind.StringLiteral ->
    Some (LString ((node :?> Ts.StringLiteral).text))
  | Kind.TrueKeyword -> Some (LBool true)
  | Kind.FalseKeyword -> Some (LBool false)
  | _ ->
    let text = node.getText()
    let parsedAsInt, intValue = System.Int32.TryParse text
    let parsedAsFloat, floatValue = System.Double.TryParse text
    if parsedAsInt then Some (LInt intValue)
    else if parsedAsFloat then Some (LFloat floatValue)
    else None

let getFullNameAtNodeLocation (ctx: ParserContext) (nd: Node) =
    match ctx.checker.getSymbolAtLocation nd with
    | None -> None
    | Some smb -> ctx.checker.getFullyQualifiedName smb |> Option.ofObj |> Option.map (fun s -> s |> String.split "." |> Array.toList)

let rec readTypeNode (typrm: Set<string>) (ctx: ParserContext) (t: Ts.TypeNode) : Type =
  match t.kind with
  // primitives
  | Kind.StringKeyword -> Prim String
  | Kind.BooleanKeyword -> Prim Bool
  | Kind.NumberKeyword -> Prim Number
  | Kind.AnyKeyword -> Prim Any
  | Kind.VoidKeyword -> Prim Void
  | Kind.UnknownKeyword -> Prim Unknown
  | Kind.NullKeyword -> Prim Null
  | Kind.NeverKeyword -> Prim Never
  | Kind.UndefinedKeyword -> Prim Undefined
  | Kind.ObjectKeyword -> Prim Object
  | Kind.SymbolKeyword -> Prim (PrimType.Symbol false)
  | Kind.BigIntKeyword -> Prim BigInt
  | Kind.ArrayType ->
    let t = t :?> Ts.ArrayTypeNode
    let elem = readTypeNode typrm ctx t.elementType
    if isReadOnly t.modifiers then
      App (APrim ReadonlyArray, [elem], Node.location t)
    else
      App (APrim Array, [elem], Node.location t)
  | Kind.TupleType ->
    let t = t :?> Ts.TupleTypeNode
    readTupleTypeNode typrm ctx t (isReadOnly t.modifiers)
  // complex types
  | Kind.IntrinsicKeyword -> Intrinsic
  | Kind.ThisType -> PolymorphicThis
  | Kind.UnionType ->
    let t = t :?> Ts.UnionTypeNode
    Union { types = t.types |> Seq.map (readTypeNode typrm ctx) |> List.ofSeq }
  | Kind.IntersectionType ->
    let t = t :?> Ts.IntersectionTypeNode
    Intersection { types = t.types |> Seq.map (readTypeNode typrm ctx) |> List.ofSeq }
  | Kind.ParenthesizedType ->
    readTypeNode typrm ctx ((t :?> Ts.ParenthesizedTypeNode).``type``)
  // ident, possibly tyapp
  | Kind.TypeReference
  // ident, possibly tyapp, appearing in extends / implements
  | Kind.ExpressionWithTypeArguments ->
    let t = t :?> Ts.NodeWithTypeArguments
    let lhs : Node =
      match t.kind with
      | Kind.TypeReference -> !!(t :?> Ts.TypeReferenceNode).typeName
      | Kind.ExpressionWithTypeArguments -> !!(t :?> Ts.ExpressionWithTypeArguments).expression
      | _ -> failwith "impossible"
    match extractNestedName lhs |> List.ofSeq with
    | [x] when typrm |> Set.contains x -> TypeVar x
    | [] -> nodeError ctx lhs "cannot parse node '%s' as identifier" (lhs.getText())
    | ts ->
      let loc = Node.location lhs
      let lt = { name = ts; fullName = None; loc = loc  }
      match t.typeArguments with
      | None -> Ident lt
      | Some args -> App (AIdent lt, args |> Seq.map (readTypeNode typrm ctx) |> List.ofSeq, Node.location t)
  | Kind.FunctionType ->
    let t = t :?> Ts.FunctionTypeNode
    let typrms = readTypeParameters typrm ctx t.typeParameters
    let typrm = Set.union typrm (typrms |> List.map (fun x -> x.name) |> Set.ofList)
    let retTy = readTypeNode typrm ctx t.``type``
    Function (readParameters typrm ctx t.parameters t retTy)
  | Kind.ConstructorType ->
    let t = t :?> Ts.ConstructorTypeNode
    let typrms = readTypeParameters typrm ctx t.typeParameters
    let typrm' = Set.union typrm (typrms |> List.map (fun x -> x.name) |> Set.ofList)
    let retTy = readTypeNode typrm' ctx t.``type``
    Erased (NewableFunction (readParameters typrm' ctx t.parameters t retTy, typrms), Node.location t, t.getText())
  | Kind.LiteralType ->
    let t = t :?> Ts.LiteralTypeNode
    if t.getText() = "null" then Prim Null // handle NullLiteral
    else
      match readLiteral (!!t.literal) with
      | Some l -> TypeLiteral l
      | None ->
        nodeWarn ctx t "unsupported literal type '%s'" (t.getText());
        UnknownType (Some (t.getText()))
  // anonymous interface
  | Kind.TypeLiteral ->
    let t = t :?> Ts.TypeLiteralNode
    let members = t.members |> List.ofSeq |> List.map (readNamedDeclaration typrm ctx)
    let temp =
      { name = None; isInterface = true; isExported = Exported.No
        comments = []; implements = []; typeParams = []; accessibility = Public
        members = members; loc = Node.location t }
    let freeTypeVars = Typer.Type.getFreeTypeVars (AnonymousInterface temp)
    let usedTyprms = Set.intersect typrm freeTypeVars
    if Set.isEmpty usedTyprms then AnonymousInterface temp
    else
      let usedTyprms = usedTyprms |> Set.toList
      let typeParams = usedTyprms |> List.map (fun name -> { name = name; extends = None; defaultType = None })
      let typeArgs = usedTyprms |> List.map TypeVar
      let ai = { temp with typeParams = typeParams }
      App (AAnonymousInterface ai, typeArgs, Node.location t)
  // readonly types
  | Kind.TypeOperator ->
    let t = t :?> Ts.TypeOperatorNode
    match t.operator with
    | Kind.ReadonlyKeyword ->
      let t' = t.``type``
      match t'.kind with
      | Kind.ArrayType ->
        let t' = t' :?> Ts.ArrayTypeNode
        let elem = readTypeNode typrm ctx t'.elementType
        App (APrim ReadonlyArray, [elem], Node.location t')
      | Kind.TupleType ->
        let t' = t' :?> Ts.TupleTypeNode
        readTupleTypeNode typrm ctx t' true
      | _ ->
        nodeWarn ctx t "unsupported 'readonly' modifier for type '%s'" (t.getText())
        UnknownType (Some (t.getText()))
    | Kind.KeyOfKeyword ->
      Erased (Keyof (readTypeNode typrm ctx t.``type``), Node.location t, t.getText())
    | Kind.UniqueKeyword ->
      let t' = t.``type``
      match t'.kind with
      | Kind.SymbolKeyword -> Prim (PrimType.Symbol true)
      | _ ->
        nodeWarn ctx t "unsupported 'unique' modifier for type '%s'" (t.getText())
        UnknownType (Some (t.getText()))
    | _ ->
      nodeWarn ctx t "unsupported type operator '%s'" (Enum.pp t.operator)
      UnknownType (Some (t.getText()))
  | Kind.IndexedAccessType ->
    let t = t :?> Ts.IndexedAccessTypeNode
    let lhs = readTypeNode typrm ctx t.objectType
    let rhs = readTypeNode typrm ctx t.indexType
    Erased (IndexedAccess (lhs, rhs), Node.location t, t.getText())
  | Kind.TypeQuery ->
    let t = t :?> Ts.TypeQueryNode
    let nameNode = box t.exprName :?> Node
    let name = extractNestedName nameNode
    Erased (TypeQuery ({ name = List.ofSeq name; fullName = None; loc = Node.location nameNode }), Node.location t, t.getText())
  // fallbacks
  | Kind.TypePredicate ->
    nodeWarn ctx t "type predicate is not supported and treated as boolean"
    Prim Bool
  | _ ->
    nodeWarn ctx t "unsupported TypeNode kind: %s" (Enum.pp t.kind);
    UnknownType (Some (t.getText()))

and readTupleTypeNode (typrm: Set<string>) (ctx: ParserContext) (tuple: Ts.TupleTypeNode) isReadOnly : Type =
  let f (x: U2<Ts.TypeNode, Ts.NamedTupleMember>) =
    let xNode = box x :?> Ts.Node
    match xNode.kind with
    | Kind.NamedTupleMember ->
      let x = xNode :?> Ts.NamedTupleMember
      {| value = readTypeNode typrm ctx x.``type``; name = Some x.name.text |}
    | _ ->
      {| value = readTypeNode typrm ctx (xNode :?> Ts.TypeNode); name = None |}
  Tuple { types = Seq.map f tuple.elements |> List.ofSeq; isReadOnly = isReadOnly }

and readParameters<'retType> (typrm: Set<string>) (ctx: ParserContext) (ps: Ts.ParameterDeclaration seq) (parent: Ts.Node) (retType: 'retType) : FuncType<'retType> =
  let isVariadic =
    ps |> Seq.exists (fun p -> p.dotDotDotToken |> Option.isSome)
  let args =
    ps
    |> Seq.mapi (fun i p ->
      let isOptional = p.questionToken |> Option.isSome
      let nameOpt = p.name |> getBindingName ctx
      let ty =
        match p.``type`` with
        | Some t -> readTypeNode typrm ctx t
        | None ->
          match nameOpt with
          | Some name ->
            nodeWarn ctx p "type not specified for param '%s'" name
          | None ->
            nodeWarn ctx p "type not specified for param %i" i
          UnknownType None
      match nameOpt with
      | Some name ->
        Choice1Of2 { name = name; isOptional = isOptional; value = ty }
      | None ->
        assert (not isOptional);
        Choice2Of2 ty
    )
    |> Seq.toList
  { args = args; isVariadic = isVariadic; returnType = retType; loc = Node.location parent }

and readMemberAttribute (ctx: ParserContext) (nd: Ts.NamedDeclaration) : MemberAttribute =
  let accessibility = getAccessibility nd.modifiers |> Option.defaultValue Public
  let isStatic = hasModifier Kind.StaticKeyword nd.modifiers
  let comments = readCommentsForNamedDeclaration ctx nd
  { accessibility = accessibility; isStatic = isStatic; comments = comments; loc = Node.location nd }

and readNamedDeclaration (typrm: Set<string>) (ctx: ParserContext) (nd: Ts.NamedDeclaration) : MemberAttribute * Member =
  let attr = readMemberAttribute ctx nd
  let extractType (sdb: Ts.SignatureDeclarationBase) =
    let localTyprm = readTypeParameters typrm ctx sdb.typeParameters
    match sdb.``type`` with
    | Some t ->
      localTyprm,
      readTypeNode (Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)) ctx t
    | None ->
      if nd.kind <> Kind.Constructor && nd.kind <> Kind.SetAccessor then
        match sdb.name with
        | Some name ->
          nodeWarn ctx sdb "type not specified for '%s' (%s)" (getText name) (Enum.pp nd.kind)
        | None ->
          nodeWarn ctx sdb "type not specified (%s)" (Enum.pp nd.kind)
      localTyprm, UnknownType None

  let readSymbolIndexer (e: Ts.Expression) (ty: Choice<Type, FuncType<Type>>) (fail: unit -> _) =
    match e.kind with
    | Kind.PropertyAccessExpression ->
      let e = !!e : Ts.PropertyAccessExpression
      let name = e.getText() |> String.split "." |> List.ofArray
      match name with
      | ["Symbol"; symbolName] ->
        let ft =
          match ty with
          | Choice1Of2 t -> { args = []; isVariadic = false; returnType = t; loc = Node.location nd }
          | Choice2Of2 ft -> ft
        attr, SymbolIndexer (symbolName, ft, if isReadOnly nd.modifiers then ReadOnly else Mutable)
      | _ -> fail ()
    | _ -> fail ()

  match nd.kind with
  | Kind.PropertySignature ->
    let fail () =
      nodeWarn ctx nd "unsupported property name '%s' in PropertySignature" (getText nd.name); (attr, UnknownMember (Some (getText nd)))
    let nd = nd :?> Ts.PropertySignature
    let ty =
      match nd.``type`` with
      | Some t -> readTypeNode typrm ctx t
      | None -> UnknownType None
    match getPropertyName nd.name with
    | Some name ->
      match ty with
      | UnknownType None ->
        nodeWarn ctx nd "type not specified for field '%s'" (getText nd.name)
      | _ -> ()
      let fl = { name = name; isOptional = false; value = ty }
      attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable), [])
    | None ->
      match getPropertyExpression nd.name with
      | Some expr -> readSymbolIndexer expr (Choice1Of2 ty) fail
      | None -> fail ()
  | Kind.PropertyDeclaration ->
    let nd = nd :?> Ts.PropertyDeclaration
    match getPropertyName nd.name with
    | Some name ->
      let ty =
        match nd.``type`` with
        | Some t -> readTypeNode typrm ctx t
        | None ->
          UnknownType None
      match ty with
      | UnknownType None ->
        nodeWarn ctx nd "type not specified for field '%s'" (getText nd.name)
      | _ -> ()
      let fl = { name = name; isOptional = false; value = ty }
      attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable), [])
    | None -> nodeWarn ctx nd "unsupported property name '%s' in PropertyDeclaration" (getText nd.name); (attr, UnknownMember (Some (getText nd)))
  | Kind.CallSignature ->
    let nd = nd :?> Ts.CallSignatureDeclaration
    let localTyprm, ty = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    (attr, FunctionInterface (readParameters typrm ctx nd.parameters nd ty, localTyprm))
  | Kind.MethodSignature | Kind.MethodDeclaration ->
    let sdb = nd :?> Ts.SignatureDeclarationBase
    let fail () =
      nodeWarn ctx sdb "unsupported method name '%s' in %s" (getText sdb.name) (Enum.pp nd.kind); (attr, UnknownMember (Some (getText sdb)))
    let localTyprm, retTy = extractType sdb
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let func = readParameters typrm ctx sdb.parameters sdb retTy
    match sdb.name |> Option.bind getPropertyName with
    | Some name ->
      attr, Method (name, func, localTyprm)
    | None ->
      match sdb.name |> Option.bind getPropertyExpression with
      | Some expr -> readSymbolIndexer expr (Choice2Of2 func) fail
      | None -> fail ()
  | Kind.IndexSignature ->
    let nd = nd :?> Ts.IndexSignatureDeclaration
    let localTyprm, ty = extractType nd
    if not (List.isEmpty localTyprm) then nodeWarn ctx nd "indexer with type argument is not supported"
    (attr,
      Indexer (readParameters typrm ctx nd.parameters nd ty,
               if isReadOnly nd.modifiers then ReadOnly else Mutable))
  | Kind.ConstructSignature ->
    let nd = nd :?> Ts.ConstructSignatureDeclaration
    let localTyprm, retTy = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let ty = readParameters typrm ctx nd.parameters nd retTy
    { attr with isStatic = false }, New (ty, localTyprm)
  | Kind.Constructor ->
    let nd = nd :?> Ts.ConstructorDeclaration
    let localTyprm, retTy = extractType nd
    assert (match retTy with UnknownType _ -> true | _ -> false)
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let ty = readParameters typrm ctx nd.parameters nd ()
    { attr with isStatic = true }, Constructor (ty, localTyprm)
  | Kind.GetAccessor ->
    let nd = nd :?> Ts.GetAccessorDeclaration
    match getPropertyName nd.name with
    | Some name ->
      let localTyprm, ty = extractType nd
      if not (List.isEmpty localTyprm) then nodeWarn ctx nd "getter with type argument is not supported"
      let fl = { name = name; isOptional = false; value = ty }
      attr, Getter fl
    | None -> nodeWarn ctx nd "unsupported property name '%s' in GetAccessor" (getText nd.name); (attr, UnknownMember (Some (getText nd)))
  | Kind.SetAccessor ->
    let nd = nd :?> Ts.SetAccessorDeclaration
    match getPropertyName nd.name with
    | Some name ->
      let localTyprm, retTy = extractType nd
      assert (match retTy with UnknownType _ -> true | _ -> false)
      if not (List.isEmpty localTyprm) then nodeWarn ctx nd "setter with type argument is not supported"
      match readParameters typrm ctx nd.parameters nd () with
      | { args = [ty]; isVariadic = false } ->
        match ty with
        | Choice1Of2 named ->
          attr, Setter { named with name = name }
        | Choice2Of2 ty ->
          attr, Setter { name = name; isOptional = false; value = ty }
      | _ ->
        nodeWarn ctx nd "invalid setter for '%s'" (getText nd.name)
        attr, UnknownMember (Some (getText nd))
    | None -> nodeWarn ctx nd "unsupported property name '%s' in SetAccessor" (getText nd.name); (attr, UnknownMember (Some (getText nd)))
  | _ ->
    nodeWarn ctx nd "unsupported NamedDeclaration kind: '%s'" (Enum.pp nd.kind)
    attr, UnknownMember (Some (getText nd))

and readTypeParameters (typrm: Set<string>) (ctx: ParserContext) (tps: Ts.TypeParameterDeclaration ResizeArray option) : TypeParam list =
  match tps with
  | None -> []
  | Some tps ->
    let names = tps |> Seq.map (fun tp -> tp.name.text) |> Set.ofSeq |> Set.union typrm
    tps
    |> Seq.map (fun tp ->
      let dt = tp.``default``    |> Option.map (readTypeNode names ctx)
      let et = tp.``constraint`` |> Option.map (readTypeNode names ctx)
      { name = tp.name.text; extends = et; defaultType = dt }
    )
    |> Seq.toList

let readInherits (typrm: Set<string>) (ctx: ParserContext) (hcs: Ts.HeritageClause ResizeArray option) : Type list =
  match hcs with
  | None -> []
  | Some hcs ->
    hcs |> Seq.collect (fun hc -> hc.types |> Seq.map (readTypeNode typrm ctx))
        |> Seq.toList

let readInterface (ctx: ParserContext) (i: Ts.InterfaceDeclaration) : Class =
  let name = i.name.getText()
  let typrms = readTypeParameters Set.empty ctx i.typeParameters
  let typrmsSet = typrms |> List.map (fun tp -> tp.name) |> Set.ofList
  {
    comments = readCommentsForNamedDeclaration ctx i
    name = Some name
    accessibility = getAccessibility i.modifiers |> Option.defaultValue Public
    typeParams = typrms
    implements = readInherits typrmsSet ctx i.heritageClauses
    isInterface = true
    isExported = getExported i.modifiers
    members = i.members |> List.ofSeq |> List.map (readNamedDeclaration typrmsSet ctx)
    loc = Node.location i
  }

let readClass (ctx: ParserContext) (i: Ts.ClassDeclaration) : Class =
  let typrms = readTypeParameters Set.empty ctx i.typeParameters
  let typrmsSet = typrms |> List.map (fun tp -> tp.name) |> Set.ofList
  {
    comments = readCommentsForNamedDeclaration ctx i
    name = i.name |> Option.map (fun id -> id.getText())
    accessibility = getAccessibility i.modifiers |> Option.defaultValue Public
    typeParams = typrms
    implements = readInherits typrmsSet ctx i.heritageClauses
    isInterface = false
    isExported = getExported i.modifiers
    members = i.members |> List.ofSeq |> List.map (readNamedDeclaration typrmsSet ctx)
    loc = Node.location i
  }

let readEnumCase (ctx: ParserContext) (em: Ts.EnumMember) : EnumCase option =
  match getPropertyName em.name with
  | Some name ->
    let value =
      match em.initializer with
      | None -> None
      | Some ep ->
        match readLiteral ep with
        | Some ((LInt _ | LString _) as l) -> Some l
        | _ -> nodeWarn ctx ep "enum value '%s' for case '%s' not supported" (ep.getText()) name; None
    let comments = readCommentsForNamedDeclaration ctx em
    Some { comments = comments; loc = Node.location em; name = name; value = value }
  | None -> nodeWarn ctx em "unsupported enum case name '%s'" (getText em.name); None

let readEnum (ctx: ParserContext) (ed: Ts.EnumDeclaration) : Enum =
  {
    name = ed.name.text
    comments = readCommentsForNamedDeclaration ctx ed
    cases = ed.members |> List.ofSeq |> List.choose (readEnumCase ctx)
    isExported = getExported ed.modifiers
    loc = Node.location ed
  }

let readTypeAlias (ctx: ParserContext) (a: Ts.TypeAliasDeclaration) : TypeAlias =
  let typrm = readTypeParameters Set.empty ctx a.typeParameters
  let ty = readTypeNode (typrm |> List.map (fun x -> x.name) |> Set.ofList) ctx a.``type``
  let comments = readCommentsForNamedDeclaration ctx a
  { name = a.name.text; typeParams = typrm; target = ty; comments = comments; isExported = getExported a.modifiers; loc = Node.location a }

let readVariable (ctx: ParserContext) (v: Ts.VariableStatement) : Statement list =
  v.declarationList.declarations |> List.ofSeq |> List.map (fun vd ->
    let comments = readCommentsForNamedDeclaration ctx vd
    match getBindingName ctx vd.name with
    | None ->
      nodeWarn ctx vd "name is not defined for variable"
      UnknownStatement {| msg = Some (vd.getText()); loc = Node.location vd; comments = comments |}
    | Some name ->
      let ty =
        match vd.``type`` with
        | Some tn -> readTypeNode Set.empty ctx tn
        | None ->
          match vd.initializer with
          | Some e ->
            match e.kind with
            | Kind.StringLiteral -> Prim String
            | Kind.RegularExpressionLiteral -> Prim RegExp
            | Kind.NumericLiteral | Kind.BigIntLiteral -> Prim Number
            | Kind.TrueKeyword | Kind.FalseKeyword -> Prim Bool
            | _ ->
              nodeWarn ctx vd "type missing for variable '%s'" name
              UnknownType None
          | None ->
            nodeWarn ctx vd "type missing for variable '%s'" name
            UnknownType None
      let isConst = (int vd.flags) ||| (int Ts.NodeFlags.Const) <> 0
      let isExported = getExported vd.modifiers
      let accessibility = getAccessibility vd.modifiers
      Value { comments = comments; loc = Node.location vd; name = name; typ = ty; typeParams = []; isConst = isConst; isExported = isExported; accessibility = accessibility }
  )

let readFunction (ctx: ParserContext) (f: Ts.FunctionDeclaration) : Value option =
  match f.name with
  | None ->
    nodeWarn ctx f "name is not defined for function"; None
  | Some name ->
    let name = name.text
    let comments = readCommentsForNamedDeclaration ctx f
    let isExported = getExported f.modifiers
    let accessibility = getAccessibility f.modifiers
    let typrm = readTypeParameters Set.empty ctx f.typeParameters
    let ty =
      let typrm = typrm |> List.map (fun x -> x.name) |> Set.ofList
      let retTy =
        match f.``type`` with
        | Some tn -> readTypeNode typrm ctx tn
        | None ->
          nodeWarn ctx f "return type missing for function '%s'" name
          UnknownType None
      Function (readParameters typrm ctx f.parameters f retTy)
    Some { comments = comments; loc = Node.location f; name = name; typ = ty; typeParams = typrm; isConst = false; isExported = isExported; accessibility = accessibility }

let readExportAssignment (ctx: ParserContext) (e: Ts.ExportAssignment) : Statement option =
  let comments = readCommentsForNamedDeclaration ctx e
  match extractNestedName e.expression |> Seq.toList with
  | [] -> nodeWarn ctx e.expression "cannot parse node '%s' as identifier" (e.expression.getText()); None
  | ts ->
    let ident = { name = ts; fullName = None; loc = Node.location e.expression }
    match e.isExportEquals with
    | Some true -> Export { clause = CommonJsExport ident; loc = Node.location e; comments = comments; origText = e.getText() } |> Some
    | _ -> Export { clause = ES6DefaultExport ident; loc = Node.location e; comments = comments; origText = e.getText() } |> Some

let readExportDeclaration (ctx: ParserContext) (e: Ts.ExportDeclaration) : Statement list option =
  let comments = readCommentsForNamedDeclaration ctx e
  match e.exportClause, e.moduleSpecifier with
  | None, _
  | _, Some _ ->
    nodeWarn ctx e "re-exporting an external module is not supported."; None
  | Some bindings, None ->
    let kind = (bindings |> box :?> Ts.Node).kind
    match kind with
    | Kind.NamespaceExport ->
      let ne = bindings |> box :?> Ts.NamespaceExport
      Some [Export { clause = NamespaceExport ne.name.text; loc = Node.location ne; comments = comments; origText = e.getText() }]
    | Kind.NamedExports ->
      let nes = bindings |> box :?> Ts.NamedExports
      nes.elements
      |> Seq.map (fun x ->
        let ident (name: Ts.Identifier) = { name = [name.text]; fullName = None; loc = Node.location name }
        match x.propertyName with
        | None -> {| target = ident x.name; renameAs = None |}
        | Some propertyName -> {| target = ident propertyName; renameAs = Some x.name.text  |})
      |> Seq.toList
      |> List.map (fun elem -> Export { clause = ES6Export elem; loc = Node.location nes; comments = comments; origText = e.getText() })
      |> Some
    | _ ->
      nodeWarn ctx e "invalid syntax kind '%s' for an export declaration" (Enum.pp kind); None

let readNamespaceExportDeclaration (ctx: ParserContext) (e: Ts.NamespaceExportDeclaration) : Statement =
  Export { clause = NamespaceExport e.name.text; loc = Node.location e; comments = readCommentsForNamedDeclaration ctx e; origText = e.getText() }

let readImportEqualsDeclaration (ctx: ParserContext) (i: Ts.ImportEqualsDeclaration) : Statement option =
  let comments = readCommentsForNamedDeclaration ctx i
  match (!!i.moduleReference : Ts.Node).kind with
  | Kind.Identifier | Kind.QualifiedName ->
    nodeWarn ctx i "importing an identifier is not supported"; None
  | Kind.ExternalModuleReference ->
    let m : Ts.ExternalModuleReference = !!i.moduleReference
    match (!!m.expression : Ts.Node).kind with
    | Kind.StringLiteral ->
      let moduleSpecifier = (!!m.expression : Ts.StringLiteral).text
      let kind = getKindFromIdentifier ctx i.name
      Import {
        comments = comments;
        loc = Node.location i;
        isTypeOnly = i.isTypeOnly;
        isExported = getExported i.modifiers;
        moduleSpecifier = moduleSpecifier;
        clause = NamespaceImport {| name = i.name.text; isES6Import = false; kind = kind |}
        origText = i.getText()
      } |> Some
    | kind ->
      nodeWarn ctx i "invalid kind '%s' for module specifier" (Enum.pp kind); None
  | kind ->
    nodeWarn ctx i "invalid kind '%s' for import" (Enum.pp kind); None

let readImportDeclaration (ctx: ParserContext) (i: Ts.ImportDeclaration) : Statement option =
  match i.importClause with
  | None -> nodeWarn ctx i "side-effect only import will be ignored"; None
  | Some c ->
    match i.moduleSpecifier.kind with
    | Kind.StringLiteral ->
      let comments = readCommentsForNamedDeclaration ctx c
      let moduleSpecifier = (!!i.moduleSpecifier : Ts.StringLiteral).text
      let inline create clause =
        Some (Import { comments = comments; loc = Node.location i; isTypeOnly = c.isTypeOnly; isExported = getExported i.modifiers; moduleSpecifier = moduleSpecifier; clause = clause; origText = i.getText() })
      match c.name, c.namedBindings with
      | None, None -> create ES6WildcardImport
      | None, Some b when (!!b : Ts.Node).kind = Kind.NamespaceImport ->
        let n = (!!b : Ts.NamespaceImport)
        let kind = getKindFromIdentifier ctx n.name
        create (NamespaceImport {| name = n.name.text; kind = kind; isES6Import = true |})
      | _, Some b when (!!b : Ts.Node).kind = Kind.NamedImports ->
        let n = (!!b : Ts.NamedImports)
        let defaultImport = c.name |> Option.map (fun i -> {| name = i.text; kind = getKindFromIdentifier ctx i |})
        let bindings =
          n.elements
          |> Seq.toList
          |> List.map (fun e ->
            let kind = getKindFromIdentifier ctx e.name
            let name, renameAs =
              match e.propertyName with
              | Some i -> i.text, Some e.name.text
              | None -> e.name.text, None
            {| name = name; kind = kind; renameAs = renameAs |})
        create (ES6Import {| defaultImport = defaultImport; bindings = bindings |})
      | Some i, None ->
        let defaultImport = {| name = i.text; kind = getKindFromIdentifier ctx i |}
        create (ES6Import {| defaultImport = Some defaultImport; bindings = [] |})
      | _, _ ->
        nodeWarn ctx i "invalid import statement"; None
    | kind ->
      nodeWarn ctx i "invalid kind '%s' for module specifier" (Enum.pp kind); None

let readJSDocImpl (ctx: ParserContext) (doc: Ts.JSDoc) : Comment list =
  let desc =
    doc.comment
    |> Option.map (readCommentText >> Description >> List.singleton)
    |> Option.defaultValue []
  let tags =
    doc.tags
    |> Option.map (Seq.map readJSDocTag >> List.ofSeq)
    |> Option.defaultValue []
  desc @ tags

let readJSDoc (ctx: ParserContext) (doc: Ts.JSDoc) : Statement option =
  match readJSDocImpl ctx doc with
  | [] -> None
  | xs -> FloatingComment {| comments = xs; loc = Node.location doc |} |> Some

let rec readModule (ctx: ParserContext) (md: Ts.ModuleDeclaration) : Module =
  let name =
    match (!!md.name : Ts.Node).kind with
    | Kind.Identifier -> (!!md.name : Ts.Identifier).text
    | Kind.StringLiteral -> (!!md.name : Ts.StringLiteral).text
    | _ -> nodeError ctx !!md.name "unsupported module name '%s'" (getText md.name)
  let check kind =
    md.getChildren() |> Seq.exists (fun nd -> nd.kind = kind)
  let isNamespace = check Kind.NamespaceKeyword
  let isExported = getExported md.modifiers
  let statements =
    md.getChildren()
    |> Seq.toList
    |> List.collect (fun nd ->
      match nd.kind with
      | Kind.ModuleBlock ->
        let mb = nd :?> Ts.ModuleBlock
        mb.statements |> List.ofSeq |> List.collect (readStatement ctx)
      | Kind.NamespaceKeyword | Kind.ExportKeyword | Kind.Identifier
      | Kind.DeclareKeyword | Kind.StringLiteral | Kind.DotToken | Kind.SyntaxList | Kind.ModuleKeyword -> []
      | Kind.JSDocComment -> []
      | Kind.ModuleDeclaration ->
        [ Module (readModule ctx (nd :?> Ts.ModuleDeclaration)) ]
      | _ ->
        nodeWarn ctx nd "unknown kind in ModuleDeclaration: %s" (Enum.pp nd.kind)
        [])
  let comments =
    md.getChildren()
    |> Seq.filter (fun nd -> nd.kind = Kind.JSDocComment)
    |> List.ofSeq
    |> List.collect (fun nd -> nd :?> Ts.JSDoc |> readJSDocImpl ctx)
  { isExported = isExported; isNamespace = isNamespace; name = name; statements = statements; comments = comments; loc = Node.location md }

and readStatement (ctx: ParserContext) (stmt: Ts.Statement) : Statement list =
  let onError () =
    let comments = readCommentsForNamedDeclaration ctx (stmt :?> Ts.DeclarationStatement)
    UnknownStatement {| msg = Some (stmt.getText()); loc = Node.location stmt; comments = comments |}
  try
    match stmt.kind with
    | Kind.TypeAliasDeclaration -> [readTypeAlias ctx (stmt :?> _) |> TypeAlias]
    | Kind.InterfaceDeclaration -> [readInterface ctx (stmt :?> _) |> ClassDef]
    | Kind.ClassDeclaration -> [readClass ctx (stmt :?> _) |> ClassDef]
    | Kind.EnumDeclaration -> [readEnum ctx (stmt :?> _) |> EnumDef]
    | Kind.ModuleDeclaration -> [readModule ctx (stmt :?> _) |> Module]
    | Kind.VariableStatement -> readVariable ctx (stmt :?> _)
    | Kind.FunctionDeclaration -> [readFunction ctx (stmt :?> _) |> Option.map Value |> Option.defaultWith onError]
    | Kind.ExportAssignment -> [readExportAssignment ctx (stmt :?> _) |> Option.defaultWith onError]
    | Kind.ExportDeclaration -> readExportDeclaration ctx (stmt :?> _) |> Option.defaultWith (onError >> List.singleton)
    | Kind.NamespaceExportDeclaration -> [readNamespaceExportDeclaration ctx (stmt :?> _)]
    | Kind.ImportEqualsDeclaration -> [readImportEqualsDeclaration ctx (stmt :?> _) |> Option.defaultWith onError]
    | Kind.ImportDeclaration -> [readImportDeclaration ctx (stmt :?> _) |> Option.defaultWith onError]
    | _ ->
      nodeWarn ctx stmt "skipping unsupported Statement kind: %s" (Enum.pp stmt.kind)
      [onError ()]
  with
    | _ ->
      eprintfn "%s" (Node.ppLine stmt)
      reraise ()

