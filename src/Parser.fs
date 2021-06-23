// partly borrowed from https://github.com/fable-compiler/ts2fable/
module Parser

open Syntax
open Naming
open Fable.Core
open Fable.Core.JsInterop
open TypeScript

type Node = Ts.Node
type TypeChecker = Ts.TypeChecker
type Kind = Ts.SyntaxKind

type ParserContext = {| checker: TypeChecker; sourceFile: Ts.SourceFile; verbose: bool |}

module Enum =
  let inline pp (e: 'enum when 'enum: enum<_>) =
    System.Enum.GetName(typeof<'enum>, e)

module Node =
  let location (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    Location (src, pos)

  let ppLocation (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    sprintf "line %i, col %i of %s" (int pos.line + 1) (int pos.character + 1) src.fileName

  let ppLine (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    let startPos = int <| src.getPositionOfLineAndCharacter(pos.line, 0.)
    let endPos = int <| src.getLineEndOfPosition(n.getEnd())
    let text = src.text.Substring(startPos, endPos - startPos).Replace("\r\n", "\n").Replace("\r", "\n")
    let lines = text.Split('\n')
    lines |> Array.map (sprintf "> %s") |> String.concat System.Environment.NewLine

let nodeWarn (ctx: ParserContext) (node: Node) format =
  Printf.kprintf (fun s ->
    if ctx.verbose then
      eprintfn "warn: %s at %s" s (Node.ppLocation node)
      eprintfn "%s" (Node.ppLine node)
  ) format

let nodeError node format =
  Printf.kprintf (fun s ->
    failwithf "error: %s at %s\n%s" s (Node.ppLocation node) (Node.ppLine node)
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

let nameToString (pn: 'a): string =
  !!pn?getText() |> removeQuotesAndTrim

let getBindingName (bn: Ts.BindingName): string option =
  let syntaxNode : Node = !! bn
  match syntaxNode.kind with
  | Kind.Identifier ->
    let id : Ts.Identifier = !! bn
    Some (id.getText())
  | Kind.ObjectBindingPattern
  | Kind.ArrayBindingPattern -> None
  | _ -> nodeError syntaxNode "unknown Binding Name kind: %s" (Enum.pp syntaxNode.kind)

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
    eprintfn "warn: failed to get the kind of an imported identifier '%s'" i.text
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

let readCommentText (str: string) : string list =
  str.Replace("\r\n","\n").Replace("\r","\n").Split [|'\n'|] |> List.ofArray

let readNonJSDocComments (ctx: ParserContext) (node: Node) : Comment list =
  let fullText = ctx.sourceFile.getFullText()
  let ranges = ts.getLeadingCommentRanges(fullText, node.getFullStart())
  match ranges with
  | None -> []
  | Some ranges ->
    ranges
    |> Seq.map (fun range ->
      fullText.[int range.pos .. int range.``end``]
      |> readCommentText |> Summary)
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
    See ((box tag.name :?> Node) |> extractNestedName |> String.concat ".", text)
  | _ ->
    match tag.tagName.text with
    | "description" | "desc" -> Description text
    | "summary" -> Summary text
    | "example" -> Example text
    | tagName ->
      // eprintfn "unsupported tag name: '%s'" tagName
      Other (tagName, text, tag)

let readJSDocComments (docComment: ResizeArray<Ts.SymbolDisplayPart>) (tags: Ts.JSDocTag seq) : Comment list =
  let desc =
    let text =
      docComment
      |> List.ofSeq
      |> List.collect (fun sdp -> sdp.text |> readCommentText)
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
      eprintfn "exception while trying to read comments from a signature declaration at %s: %s" (Node.ppLocation nd) (e.ToString())
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
    | Some smb -> ctx.checker.getFullyQualifiedName smb |> Option.ofObj |> Option.map (fun s -> s.Split '.' |> Array.toList)

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
  | Kind.SymbolKeyword -> Prim PrimType.Symbol
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
    | [] -> nodeError lhs "cannot parse node '%s' as identifier" (lhs.getText())
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
    Erased (NewableFunction (readParameters typrm' ctx t.parameters t retTy, typrms), Node.location t)
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
    let members = t.members |> List.ofSeq |> List.choose (readNamedDeclaration typrm ctx)
    AnonymousInterface {
      name = None; isInterface = true; isExported = Exported.No
      comments = []; implements = []; typeParams = []; accessibility = Public
      members = members; loc = Node.location t
    }
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
      Erased (Keyof (readTypeNode typrm ctx t.``type``), Node.location t)
    | _ ->
      nodeWarn ctx t "unsupported type operator '%s'" (Enum.pp t.operator)
      UnknownType (Some (t.getText()))
  | Kind.IndexedAccessType ->
    let t = t :?> Ts.IndexedAccessTypeNode
    let lhs = readTypeNode typrm ctx t.objectType
    let rhs = readTypeNode typrm ctx t.indexType
    Erased (IndexedAccess (lhs, rhs), Node.location t)
  | Kind.TypeQuery ->
    let t = t :?> Ts.TypeQueryNode
    let nameNode = box t.exprName :?> Node
    let name = extractNestedName nameNode
    Erased (TypeQuery ({ name = List.ofSeq name; fullName = None; loc = Node.location nameNode }), Node.location t)
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
      let nameOpt = p.name |> getBindingName
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
  { accessibility = accessibility; isStatic = isStatic; comments = comments }

and readNamedDeclaration (typrm: Set<string>) (ctx: ParserContext) (nd: Ts.NamedDeclaration) : (MemberAttribute * Member) option =
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
          nodeWarn ctx sdb "type not specified for '%s' (%s)" (nameToString name) (Enum.pp nd.kind)
        | None ->
          nodeWarn ctx sdb "type not specified (%s)" (Enum.pp nd.kind)
      localTyprm, UnknownType None
  match nd.kind with
  | Kind.PropertySignature ->
    let nd = nd :?> Ts.PropertySignature
    let ty =
      match nd.``type`` with
      | Some t -> readTypeNode typrm ctx t
      | None ->
        UnknownType None
    match ty with
    | UnknownType None ->
      nodeWarn ctx nd "type not specified for field '%s'" (nameToString nd.name)
    | _ -> ()
    let fl = { name = nameToString nd.name; isOptional = false; value = ty }
    Some (attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable), []))
  | Kind.PropertyDeclaration ->
    let nd = nd :?> Ts.PropertyDeclaration
    let ty =
      match nd.``type`` with
      | Some t -> readTypeNode typrm ctx t
      | None ->
        UnknownType None
    match ty with
    | UnknownType None ->
      nodeWarn ctx nd "type not specified for field '%s'" (nameToString nd.name)
    | _ -> ()
    let fl = { name = nameToString nd.name; isOptional = false; value = ty }
    Some (attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable), []))
  | Kind.CallSignature ->
    let nd = nd :?> Ts.CallSignatureDeclaration
    let localTyprm, ty = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    Some (attr, FunctionInterface (readParameters typrm ctx nd.parameters nd ty, localTyprm))
  | Kind.MethodSignature | Kind.MethodDeclaration ->
    let nd = nd :?> Ts.SignatureDeclarationBase
    let localTyprm, retTy = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let func = readParameters typrm ctx nd.parameters nd retTy
    Some (attr, Method (nameToString nd.name, func, localTyprm))
  | Kind.IndexSignature ->
    let nd = nd :?> Ts.IndexSignatureDeclaration
    let localTyprm, ty = extractType nd
    if not (List.isEmpty localTyprm) then nodeWarn ctx nd "indexer with type argument is not supported"
    Some (attr,
      Indexer (readParameters typrm ctx nd.parameters nd ty,
               if isReadOnly nd.modifiers then ReadOnly else Mutable))
  | Kind.ConstructSignature ->
    let nd = nd :?> Ts.ConstructSignatureDeclaration
    let localTyprm, retTy = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let ty = readParameters typrm ctx nd.parameters nd retTy
    Some (attr, New (ty, localTyprm))
  | Kind.Constructor ->
    let nd = nd :?> Ts.ConstructorDeclaration
    let localTyprm, retTy = extractType nd
    assert (match retTy with UnknownType _ -> true | _ -> false)
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let ty = readParameters typrm ctx nd.parameters nd ()
    Some (attr, Constructor (ty, localTyprm))
  | Kind.GetAccessor ->
    let nd = nd :?> Ts.GetAccessorDeclaration
    let localTyprm, ty = extractType nd
    if not (List.isEmpty localTyprm) then nodeWarn ctx nd "getter with type argument is not supported"
    let fl = { name = nameToString nd.name; isOptional = false; value = ty }
    Some (attr, Getter fl)
  | Kind.SetAccessor ->
    let nd = nd :?> Ts.SetAccessorDeclaration
    let localTyprm, retTy = extractType nd
    assert (match retTy with UnknownType _ -> true | _ -> false)
    if not (List.isEmpty localTyprm) then nodeWarn ctx nd "setter with type argument is not supported"
    match readParameters typrm ctx nd.parameters nd () with
    | { args = [ty]; isVariadic = false } ->
      match ty with
      | Choice1Of2 named ->
        Some (attr, Setter { named with name = nameToString nd.name })
      | Choice2Of2 ty ->
        Some (attr, Setter { name = nameToString nd.name; isOptional = false; value = ty })
    | _ ->
      nodeWarn ctx nd "invalid setter for '%s'" (nameToString nd.name)
      None
  | _ ->
    nodeWarn ctx nd "unsupported NamedDeclaration kind: '%s'" (Enum.pp nd.kind)
    None

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
    members = i.members |> List.ofSeq |> List.choose (readNamedDeclaration typrmsSet ctx)
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
    members = i.members |> List.ofSeq |> List.choose (readNamedDeclaration typrmsSet ctx)
    loc = Node.location i
  }

let readEnumCase (ctx: ParserContext) (em: Ts.EnumMember) : EnumCase =
  let name = em.name |> nameToString
  let value =
    match em.initializer with
    | None -> None
    | Some ep ->
      match readLiteral ep with
      | Some ((LInt _ | LString _) as l) -> Some l
      | _ -> nodeError ep "enum value '%s' for case '%s' not supported" (ep.getText()) name
  let comments = readCommentsForNamedDeclaration ctx em
  { comments = comments; name = name; value = value }

let readEnum (ctx: ParserContext) (ed: Ts.EnumDeclaration) : Enum =
  {
    name = ed.name |> nameToString
    comments = readCommentsForNamedDeclaration ctx ed
    cases = ed.members |> List.ofSeq |> List.map (readEnumCase ctx)
    isExported = getExported ed.modifiers
    loc = Node.location ed
  }

let readTypeAlias (ctx: ParserContext) (a: Ts.TypeAliasDeclaration) : TypeAlias =
  let typrm = readTypeParameters Set.empty ctx a.typeParameters
  let ty = readTypeNode (typrm |> List.map (fun x -> x.name) |> Set.ofList) ctx a.``type``
  let comments = readCommentsForNamedDeclaration ctx a
  { name = nameToString a.name; typeParams = typrm; target = ty; erased = false; comments = comments; loc = Node.location a }

let readVariable (ctx: ParserContext) (v: Ts.VariableStatement) : Statement list =
  v.declarationList.declarations |> List.ofSeq |> List.map (fun vd ->
    let comments = readCommentsForNamedDeclaration ctx vd
    match getBindingName vd.name with
    | None ->
      nodeWarn ctx vd "name is not defined for variable"
      UnknownStatement (Some (vd.getText()), comments)
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
      Value { comments = comments; name = name; typ = ty; typeParams = []; isConst = isConst; isExported = isExported; accessibility = accessibility }
  )

let readFunction (ctx: ParserContext) (f: Ts.FunctionDeclaration) : Value option =
  match f.name with
  | None ->
    nodeWarn ctx f "name is not defined for function"; None
  | Some name ->
    let name = nameToString name
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
    Some { comments = comments; name = name; typ = ty; typeParams = typrm; isConst = false; isExported = isExported; accessibility = accessibility }

let readExportAssignment (ctx: ParserContext) (e: Ts.ExportAssignment) : Statement option =
  let comments = readCommentsForNamedDeclaration ctx e
  match extractNestedName e.expression |> Seq.toList with
  | [] -> nodeWarn ctx e.expression "cannot parse node '%s' as identifier" (e.expression.getText()); None
  | ts ->
    let ident = { name = ts; fullName = None; loc = Node.location e.expression }
    match e.isExportEquals with
    | Some true -> Export (CommonJsExport ident, comments) |> Some
    | _ -> Export (ES6DefaultExport ident, comments) |> Some

let readExportDeclaration (ctx: ParserContext) (e: Ts.ExportDeclaration) : Statement option =
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
      Some (Export (NamespaceExport ne.name.text, comments))
    | Kind.NamedExports ->
      let nes = bindings |> box :?> Ts.NamedExports
      let elems =
        nes.elements
        |> Seq.map (fun x ->
          let ident = { name = [x.name.text]; fullName = None; loc = Node.location x.name }
          match x.propertyName with
          | None -> {| target = ident; renameAs = None |}
          | Some propertyName -> {| target = ident; renameAs = Some propertyName.text  |})
        |> Seq.toList
      Some (Export (ES6Export elems, comments))
    | _ ->
      nodeWarn ctx e "invalid syntax kind '%s' for an export declaration" (Enum.pp kind); None

let readNamespaceExportDeclaration (ctx: ParserContext) (e: Ts.NamespaceExportDeclaration) : Statement =
  Export (NamespaceExport e.name.text, readCommentsForNamedDeclaration ctx e)

let readImportEqualsDeclaration (ctx: ParserContext) (i: Ts.ImportEqualsDeclaration) : Statement option =
  let comments = readCommentsForNamedDeclaration ctx i
  match (!!i.moduleReference : Ts.Node).kind with
  | Kind.Identifier | Kind.QualifiedName ->
    nodeWarn ctx i "import assignment to an identifier is not supported"; None
  | Kind.ExternalModuleReference ->
    let m : Ts.ExternalModuleReference = !!i.moduleReference
    match (!!m.expression : Ts.Node).kind with
    | Kind.StringLiteral ->
      let moduleSpecifier = (!!m.expression : Ts.StringLiteral).text
      let kind = getKindFromIdentifier ctx i.name
      Import {
        comments = comments;
        isTypeOnly = i.isTypeOnly;
        isExported = getExported i.modifiers;
        moduleSpecifier = moduleSpecifier;
        clause = NamespaceImport {| name = i.name.text; isES6Import = false; kind = kind |}
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
        Some (Import { comments = comments; isTypeOnly = c.isTypeOnly; isExported = getExported i.modifiers; moduleSpecifier = moduleSpecifier; clause = clause })
      match c.name, c.namedBindings with
      | None, None -> create ES6WildcardImport
      | None, Some b when (!!b : Ts.Node).kind = Kind.NamespaceImport ->
        let n = (!!c.namedBindings : Ts.NamespaceImport)
        let kind = getKindFromIdentifier ctx n.name
        create (NamespaceImport {| name = n.name.text; kind = kind; isES6Import = true |})
      | _, Some b when (!!b : Ts.Node).kind = Kind.NamedImports ->
        let n = (!!c.namedBindings : Ts.NamedImports)
        let defaultImport = c.name |> Option.map (fun i -> {| name = i.text; kind = getKindFromIdentifier ctx i |})
        let bindings =
          n.elements
          |> Seq.toList
          |> List.map (fun e ->
            let kind = getKindFromIdentifier ctx e.name
            {| name = e.name.text; kind = kind; renameAs = e.propertyName |> Option.map (fun i -> i.text) |})
        create (ES6Import {| defaultImport = defaultImport; bindings = bindings |})
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
  | xs -> FloatingComment xs |> Some

let rec readModule (ctx: ParserContext) (md: Ts.ModuleDeclaration) : Module =
  let name = nameToString md.name
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
  { isExported = isExported; isNamespace = isNamespace; name = name; statements = statements; comments = comments }

and readStatement (ctx: ParserContext) (stmt: Ts.Statement) : Statement list =
  let onError () =
    let comments = readCommentsForNamedDeclaration ctx (stmt :?> Ts.DeclarationStatement)
    UnknownStatement (Some (stmt.getText()), comments)
  match stmt.kind with
  | Kind.TypeAliasDeclaration -> [readTypeAlias ctx (stmt :?> _) |> TypeAlias]
  | Kind.InterfaceDeclaration -> [readInterface ctx (stmt :?> _) |> ClassDef]
  | Kind.ClassDeclaration -> [readClass ctx (stmt :?> _) |> ClassDef]
  | Kind.EnumDeclaration -> [readEnum ctx (stmt :?> _) |> EnumDef]
  | Kind.ModuleDeclaration -> [readModule ctx (stmt :?> _) |> Module]
  | Kind.VariableStatement -> readVariable ctx (stmt :?> _)
  | Kind.FunctionDeclaration -> [readFunction ctx (stmt :?> _) |> Option.map Value |> Option.defaultWith onError]
  | Kind.ExportAssignment -> [readExportAssignment ctx (stmt :?> _) |> Option.defaultWith onError]
  | Kind.ExportDeclaration -> [readExportDeclaration ctx (stmt :?> _) |> Option.defaultWith onError]
  | Kind.NamespaceExportDeclaration -> [readNamespaceExportDeclaration ctx (stmt :?> _)]
  | Kind.ImportEqualsDeclaration -> [readImportEqualsDeclaration ctx (stmt :?> _) |> Option.defaultWith onError]
  | Kind.ImportDeclaration -> [readImportDeclaration ctx (stmt :?> _) |> Option.defaultWith onError]
  | _ ->
    nodeWarn ctx stmt "skipping unsupported Statement kind: %s" (Enum.pp stmt.kind)
    [onError ()]

