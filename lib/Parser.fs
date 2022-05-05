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
  abstract checker: TypeChecker
  abstract currentSource: Ts.SourceFile with get, set
  abstract program: Ts.Program
  abstract fileNames: Path.Absolute[]

module private ParserImpl =
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
    | Some mds -> mds |> Array.exists (fun md -> md.kind = kind)

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

  let getPropertyName (pn: Ts.PropertyName) : Result<string, Ts.Expression> =
    match pn with
    | Ts.PropertyName.Identifier i -> Ok i.text
    | Ts.PropertyName.PrivateIdentifier i -> Ok i.text
    | Ts.PropertyName.StringLiteral s -> Ok s.text
    | Ts.PropertyName.NumericLiteral n -> Ok n.text
    | Ts.PropertyName.ComputedPropertyName c -> Error c.expression

  let getBindingName (bn: Ts.BindingName): string option =
    match bn with
    | Ts.BindingName.Identifier i -> Some i.text
    | Ts.BindingName.ObjectBindingPattern _
    | Ts.BindingName.ArrayBindingPattern _ -> None

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

  let getKindFromName (ctx: ParserContext) (i: Ts.Node) : Set<Syntax.Kind> option =
    match ctx.checker.getSymbolAtLocation i with
    | None -> None
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
        else
          Set.ofList [
            if flags |> check Ts.SymbolFlags.Value then Kind.Value
            if flags |> check Ts.SymbolFlags.Type then Kind.Type
            if flags |> check Ts.SymbolFlags.TypeAlias then Kind.TypeAlias
            if flags |> check (Ts.SymbolFlags.Class ||| Ts.SymbolFlags.Interface) then Kind.ClassLike
            if flags |> check Ts.SymbolFlags.ClassMember then Kind.Member
            if flags |> check Ts.SymbolFlags.Module then Kind.Module
            if flags |> check Ts.SymbolFlags.ModuleMember then Kind.Statement
            if flags |> check Ts.SymbolFlags.Enum then Kind.Enum
            if flags |> check Ts.SymbolFlags.EnumMember then Kind.EnumCase
          ] |> Some
      go s

  let normalizeQualifiedName (fileNames: string list) (s: string) =
    s
    |> String.split "."
    |> List.ofArray
    |> function
      | x :: xs when x.StartsWith("\"") ->
        let basenames = fileNames |> List.map JsHelper.stripExtension
        if basenames |> List.exists (fun basename -> x.EndsWith(basename + "\"")) then xs
        else x.Trim('"') :: xs
      | xs -> xs

  let getFullName (ctx: ParserContext) (nd: Node) =
    match ctx.checker.getSymbolAtLocation nd with
    | None -> None
    | Some s ->
      let source = ctx.currentSource.fileName
      let fullName =
        ctx.checker.getFullyQualifiedName s |> normalizeQualifiedName [source]
      Some { source = source; name = fullName }

  let getFullNames (ctx: ParserContext) (nd: Node) =
    let getSources (s: Ts.Symbol) =
      s.declarations
      |> Option.toList
      |> List.collect (fun decs ->
        decs |> Array.map (fun dec -> dec.getSourceFile()) |> List.ofArray)
      |> List.map (fun x -> x.fileName)
      |> List.distinct

    let getRootAndAliasedSymbols (s: Ts.Symbol) =
      let roots = ctx.checker.getRootSymbols(s) |> ResizeArray
      try
        let s = ctx.checker.getAliasedSymbol(s)
        if not (ctx.checker.isUnknownSymbol s || ctx.checker.isUndefinedSymbol s) then
          roots.Add(s)
      with
        _ -> ()
      roots.ToArray()

    match ctx.checker.getSymbolAtLocation nd with
    | None -> []
    | Some s ->
      let rec go (acc: Set<_>) (s: Ts.Symbol) =
        let sources = getSources s
        let fullName =
          ctx.checker.getFullyQualifiedName s
          |> normalizeQualifiedName sources
        let newItems =
          sources
          |> List.map (fun source -> { source = source; name = fullName })
          |> Set.ofList
        if Set.isSubset newItems acc then acc
        else
          getRootAndAliasedSymbols(s)
          |> Array.fold go (Set.union acc newItems)
      go Set.empty s
      |> Set.toList
      |> List.sortBy (fun fn ->
        if ctx.currentSource.fileName = fn.source then 0
        else if ctx.fileNames |> Array.contains fn.source then 1
        else 2)

  let rec readIdent (ctx: ParserContext) (nd: Ts.Node) : Ident =
    let createIdent name parent (nd: Ts.Node) =
      let kind = getKindFromName ctx nd
      let loc = Node.location nd
      let fullName = getFullNames ctx nd
      { name = name; kind = kind; fullName = fullName; loc = loc; parent = parent }
    match nd.kind with
    | Kind.Identifier | Kind.PrivateIdentifier ->
      let i = nd :?> Ts.Identifier
      createIdent [i.text] None i
    | Kind.QualifiedName ->
      let q = nd :?> Ts.QualifiedName
      let parent = readIdent ctx !!q.left
      createIdent (parent.name @ [q.right.text]) (Some parent) q
    | Kind.PropertyAccessExpression ->
      let p = nd :?> Ts.PropertyAccessExpression
      let parent = readIdent ctx p.expression
      createIdent (parent.name @ [p.name?text]) (Some parent) p
    | _ ->
      nodeError ctx nd "cannot parse '%s' as an identifier (kind: %s)" (nd.getText()) (Enum.pp nd.kind)

  let readIdentOrTypeVar (ctx: ParserContext) (typrms: Set<string>) (nd: Node) : Choice<Ident, string> =
    if nd.kind = Kind.Identifier && typrms |> Set.contains (nd :?> Ts.Identifier).text then
      (nd :?> Ts.Identifier).text |> Choice2Of2
    else
      readIdent ctx nd |> Choice1Of2

  let sanitizeCommentText str : string list =
    str |> String.toLines |> List.ofArray

  let readCommentText (comment: U2<string, Ts.JSDocComment[]>) : string list =
    let str =
      if JS.typeof comment = "string" then
        box comment :?> string
      else
        let texts = box comment :?> Ts.JSDocText[] // TODO: do not ignore links
        texts |> Array.map (fun x -> x.text) |> String.concat ""
    sanitizeCommentText str

  let readNonJSDocComments (ctx: ParserContext) (node: Node) : Comment list =
    let fullText = ctx.currentSource.getFullText()
    let ranges = ts.getLeadingCommentRanges(fullText, node.getFullStart())
    match ranges with
    | None -> []
    | Some ranges ->
      ranges
      |> Array.map (fun range ->
        fullText.[int range.pos .. int range.``end``]
        |> sanitizeCommentText |> Summary)
      |> Array.toList

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

  let readJSDocComments (docComment: Ts.SymbolDisplayPart[]) (tags: Ts.JSDocTag[]) : Comment list =
    let desc =
      let text =
        docComment
        |> List.ofArray
        |> List.collect (fun sdp -> sdp.text |> sanitizeCommentText)
      if List.isEmpty text then []
      else [Description text]
    let tags =
      tags
      |> Array.map readJSDocTag
      |> List.ofArray
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
        match ctx.checker.getSignatureFromDeclaration !!nd with
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
      Union { types = t.types |> Array.map (readTypeNode typrm ctx) |> List.ofArray }
    | Kind.IntersectionType ->
      let t = t :?> Ts.IntersectionTypeNode
      Intersection { types = t.types |> Array.map (readTypeNode typrm ctx) |> List.ofArray }
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
      match readIdentOrTypeVar ctx typrm lhs with
      | Choice1Of2 lt ->
        match t.typeArguments with
        | None -> Ident lt
        | Some args -> App (AIdent lt, args |> Array.map (readTypeNode typrm ctx) |> List.ofArray, Node.location t)
      | Choice2Of2 x -> TypeVar x
    | Kind.FunctionType ->
      let t = t :?> Ts.FunctionTypeNode
      let typrms = readTypeParameters typrm ctx t.typeParameters
      let typrm' = Set.union typrm (typrms |> List.map (fun x -> x.name) |> Set.ofList)
      let retTy = readTypeNode typrm' ctx t.``type``
      Func (readParameters typrm' ctx t.parameters t retTy, typrms, Node.location t)
    | Kind.ConstructorType ->
      let t = t :?> Ts.ConstructorTypeNode
      let typrms = readTypeParameters typrm ctx t.typeParameters
      let typrm' = Set.union typrm (typrms |> List.map (fun x -> x.name) |> Set.ofList)
      let retTy = readTypeNode typrm' ctx t.``type``
      NewableFunc (readParameters typrm' ctx t.parameters t retTy, typrms, Node.location t)
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
      if t.members.Length = 0 then Prim Object // treat {} as just object
      else
        let members = t.members |> List.ofArray |> List.map (readNamedDeclaration typrm ctx)
        let temp =
          { name = Anonymous; isInterface = true; isExported = Exported.No
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
      Erased (TypeQuery (readIdent ctx !!t.exprName), Node.location t, t.getText())
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
    Tuple { types = Array.map f tuple.elements |> List.ofArray; isReadOnly = isReadOnly }

  and readParameters<'retType> (typrm: Set<string>) (ctx: ParserContext) (ps: Ts.ParameterDeclaration[]) (parent: Ts.Node) (retType: 'retType) : FuncType<'retType> =
    let isVariadic =
      ps |> Array.exists (fun p -> p.dotDotDotToken |> Option.isSome)
    let args =
      ps
      |> Array.mapi (fun i p ->
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
      |> Array.toList
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
      | Ok name ->
        match ty with
        | UnknownType None ->
          nodeWarn ctx nd "type not specified for field '%s'" (getText nd.name)
        | _ -> ()
        let fl = { name = name; isOptional = false; value = ty }
        attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable))
      | Error expr -> readSymbolIndexer expr (Choice1Of2 ty) fail
    | Kind.PropertyDeclaration ->
      let nd = nd :?> Ts.PropertyDeclaration
      match getPropertyName nd.name with
      | Ok name ->
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
        attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable))
      | Error _ -> nodeWarn ctx nd "unsupported property name '%s' in PropertyDeclaration" (getText nd.name); (attr, UnknownMember (Some (getText nd)))
    | Kind.CallSignature ->
      let nd = nd :?> Ts.CallSignatureDeclaration
      let localTyprm, ty = extractType nd
      let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
      (attr, Callable (readParameters typrm ctx nd.parameters nd ty, localTyprm))
    | Kind.MethodSignature | Kind.MethodDeclaration ->
      let sdb = nd :?> Ts.SignatureDeclarationBase
      let fail () =
        nodeWarn ctx sdb "unsupported method name '%s' in %s" (getText sdb.name) (Enum.pp nd.kind); (attr, UnknownMember (Some (getText sdb)))
      let localTyprm, retTy = extractType sdb
      let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
      let func = readParameters typrm ctx sdb.parameters sdb retTy
      match sdb.name |> Result.ofOption |> Result.bind getPropertyName with
      | Ok name ->
        attr, Method (name, func, localTyprm)
      | Error expr -> readSymbolIndexer expr (Choice2Of2 func) fail
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
      { attr with isStatic = false }, Newable (ty, localTyprm)
    | Kind.Constructor ->
      let nd = nd :?> Ts.ConstructorDeclaration
      let localTyprm, retTy = extractType nd
      assert (match retTy with UnknownType _ -> true | _ -> false)
      if not (List.isEmpty localTyprm) then
        nodeWarn ctx nd "constructor should not have type parameters"
      // let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
      let ty = readParameters typrm ctx nd.parameters nd ()
      { attr with isStatic = true }, Constructor ty
    | Kind.GetAccessor ->
      let nd = nd :?> Ts.GetAccessorDeclaration
      match getPropertyName nd.name with
      | Ok name ->
        let localTyprm, ty = extractType nd
        if not (List.isEmpty localTyprm) then nodeWarn ctx nd "getter with type argument is not supported"
        let fl = { name = name; isOptional = false; value = ty }
        attr, Getter fl
      | Error _ -> nodeWarn ctx nd "unsupported property name '%s' in GetAccessor" (getText nd.name); (attr, UnknownMember (Some (getText nd)))
    | Kind.SetAccessor ->
      let nd = nd :?> Ts.SetAccessorDeclaration
      match getPropertyName nd.name with
      | Ok name ->
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
      | Error _ -> nodeWarn ctx nd "unsupported property name '%s' in SetAccessor" (getText nd.name); (attr, UnknownMember (Some (getText nd)))
    | _ ->
      nodeWarn ctx nd "unsupported NamedDeclaration kind: '%s'" (Enum.pp nd.kind)
      attr, UnknownMember (Some (getText nd))

  and readTypeParameters (typrm: Set<string>) (ctx: ParserContext) (tps: Ts.TypeParameterDeclaration[] option) : TypeParam list =
    match tps with
    | None -> []
    | Some tps ->
      let names = tps |> Array.map (fun tp -> tp.name.text) |> Set.ofArray |> Set.union typrm
      tps
      |> Array.map (fun tp ->
        let dt = tp.``default``    |> Option.map (readTypeNode names ctx)
        let et = tp.``constraint`` |> Option.map (readTypeNode names ctx)
        { name = tp.name.text; extends = et; defaultType = dt }
      )
      |> Array.toList

  let readInherits (typrm: Set<string>) (ctx: ParserContext) (hcs: Ts.HeritageClause[] option) : Type list =
    match hcs with
    | None -> []
    | Some hcs ->
      hcs |> Array.collect (fun hc -> hc.types |> Array.map (readTypeNode typrm ctx))
          |> Array.toList

  let readInterface (ctx: ParserContext) (i: Ts.InterfaceDeclaration) : Class<ClassName> =
    let name = i.name.getText()
    let typrms = readTypeParameters Set.empty ctx i.typeParameters
    let typrmsSet = typrms |> List.map (fun tp -> tp.name) |> Set.ofList
    {
      comments = readCommentsForNamedDeclaration ctx i
      name = Name name
      accessibility = getAccessibility i.modifiers |> Option.defaultValue Public
      typeParams = typrms
      implements = readInherits typrmsSet ctx i.heritageClauses
      isInterface = true
      isExported = getExported i.modifiers
      members = i.members |> Array.map (readNamedDeclaration typrmsSet ctx) |> List.ofArray
      loc = Node.location i
    }

  let readClass (ctx: ParserContext) (i: Ts.ClassDeclaration) : Class<ClassName> =
    let typrms = readTypeParameters Set.empty ctx i.typeParameters
    let typrmsSet = typrms |> List.map (fun tp -> tp.name) |> Set.ofList
    {
      comments = readCommentsForNamedDeclaration ctx i
      name = i.name |> Option.map (fun id -> Name id.text) |> Option.defaultValue ExportDefaultUnnamedClass
      accessibility = getAccessibility i.modifiers |> Option.defaultValue Public
      typeParams = typrms
      implements = readInherits typrmsSet ctx i.heritageClauses
      isInterface = false
      isExported = getExported i.modifiers
      members = i.members |> Array.map (readNamedDeclaration typrmsSet ctx) |> List.ofArray
      loc = Node.location i
    }

  let readEnumCase (ctx: ParserContext) (em: Ts.EnumMember) : EnumCase option =
    match getPropertyName em.name with
    | Ok name ->
      let value =
        let inline fallback () =
          match ctx.checker.getConstantValue(!^em) with
          | None -> None
          | Some (U2.Case1 str) -> Some (LString str)
          | Some (U2.Case2 num) ->
            if Fable.Core.JS.Constructors.Number.isSafeInteger(num) then Some (LInt (int num))
            else Some (LFloat num)
        match em.initializer with
        | None -> fallback ()
        | Some ep ->
          match readLiteral ep with
          | Some ((LInt _ | LFloat _ | LString _) as l) -> Some l
          | _ ->
            fallback () |> Option.iterNone (fun () ->
              nodeWarn ctx ep "enum value '%s' for case '%s' not supported" (ep.getText()) name)
      let comments = readCommentsForNamedDeclaration ctx em
      Some { comments = comments; loc = Node.location em; name = name; value = value }
    | Error _ -> nodeWarn ctx em "unsupported enum case name '%s'" (getText em.name); None

  let readEnum (ctx: ParserContext) (ed: Ts.EnumDeclaration) : Enum =
    {
      name = ed.name.text
      comments = readCommentsForNamedDeclaration ctx ed
      cases = ed.members |> Array.choose (readEnumCase ctx) |> List.ofArray
      isExported = getExported ed.modifiers
      loc = Node.location ed
    }

  let readTypeAlias (ctx: ParserContext) (a: Ts.TypeAliasDeclaration) : TypeAlias =
    let typrm = readTypeParameters Set.empty ctx a.typeParameters
    let ty = readTypeNode (typrm |> List.map (fun x -> x.name) |> Set.ofList) ctx a.``type``
    let comments = readCommentsForNamedDeclaration ctx a
    { name = a.name.text; typeParams = typrm; target = ty; comments = comments; isExported = getExported a.modifiers; loc = Node.location a }

  let readVariable (ctx: ParserContext) (v: Ts.VariableStatement) : Statement list =
    v.declarationList.declarations |> Array.map (fun vd ->
      let comments = readCommentsForNamedDeclaration ctx vd
      match getBindingName vd.name with
      | None ->
        nodeWarn ctx vd "name is not defined for variable"
        UnknownStatement {| origText = Some (vd.getText()); loc = Node.location vd; comments = comments |}
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
        Variable { comments = comments; loc = Node.location vd; name = name; typ = ty; isConst = isConst; isExported = isExported; accessibility = accessibility }
    ) |> List.ofArray

  let readFunction (ctx: ParserContext) (f: Ts.FunctionDeclaration) : Function option =
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
        readParameters typrm ctx f.parameters f retTy
      Some { comments = comments; loc = Node.location f; name = name; typ = ty; typeParams = typrm; isExported = isExported; accessibility = accessibility }

  let readExportAssignment (ctx: ParserContext) (e: Ts.ExportAssignment) : Statement option =
    let comments = readCommentsForNamedDeclaration ctx e
    match e.expression.kind with
    | Kind.Identifier | Kind.QualifiedName ->
      let ident = readIdent ctx e.expression
      match e.isExportEquals with
      | Some true -> Export { clauses = [CommonJsExport ident]; loc = Node.location e; comments = comments; origText = e.getText() } |> Some
      | _ -> Export { clauses = [ES6DefaultExport ident]; loc = Node.location e; comments = comments; origText = e.getText() } |> Some
    | _ ->
      nodeWarn ctx e.expression "default export of a value '%s' is not supported" (e.expression.getText())
      None

  let readExportDeclaration (ctx: ParserContext) (e: Ts.ExportDeclaration) : Statement list option =
    let comments = readCommentsForNamedDeclaration ctx e
    match e.exportClause, e.moduleSpecifier with
    | None, Some specifier when specifier.kind = Kind.StringLiteral ->
      let specifier = specifier :?> Ts.StringLiteral
      ReExport { specifier = specifier.text; clauses = [ES6WildcardReExport]; loc = Node.location e; comments = comments; origText = e.getText() } |> List.singleton |> Some
    | Some bindings, Some specifier when specifier.kind = Kind.StringLiteral ->
      let specifier = specifier :?> Ts.StringLiteral
      let clauses =
        let kind = (bindings |> box :?> Ts.Node).kind
        match kind with
        | Kind.NamespaceExport ->
          let ne = bindings |> box :?> Ts.NamespaceExport
          Some [ES6NamespaceReExport ne.name.text]
        | Kind.NamedExports ->
          let nes = bindings |> box :?> Ts.NamedExports
          let clauses =
            nes.elements
            |> Array.map (fun x ->
              let inline ident (name: Ts.Identifier) = readIdent ctx name
              match x.propertyName with
              | None -> ES6ReExport {| target = ident x.name; renameAs = None |}
              | Some propertyName -> ES6ReExport {| target = ident propertyName; renameAs = Some x.name.text  |})
            |> List.ofArray
          Some clauses
        | _ -> nodeWarn ctx e "invalid syntax kind '%s' for an export declaration" (Enum.pp kind); None
      clauses |> Option.map (fun clauses ->
        ReExport {
          specifier = specifier.text; clauses = clauses;
          loc = Node.location e; comments = comments; origText = e.getText()
        } |> List.singleton
      )
    | Some bindings, None ->
      let kind = (bindings |> box :?> Ts.Node).kind
      match kind with
      | Kind.NamespaceExport ->
        let ne = bindings |> box :?> Ts.NamespaceExport
        Some [Export { clauses = [NamespaceExport ne.name.text]; loc = Node.location ne; comments = comments; origText = e.getText() }]
      | Kind.NamedExports ->
        let nes = bindings |> box :?> Ts.NamedExports
        let clauses =
          nes.elements
          |> Array.map (fun x ->
            let inline ident (name: Ts.Identifier) = readIdent ctx name
            match x.propertyName with
            | None -> ES6Export {| target = ident x.name; renameAs = None |}
            | Some propertyName -> ES6Export {| target = ident propertyName; renameAs = Some x.name.text  |})
          |> List.ofArray
        Some [Export { clauses = clauses; loc = Node.location nes; comments = comments; origText = e.getText() }]
      | _ -> nodeWarn ctx e "invalid syntax kind '%s' for an export declaration" (Enum.pp kind); None
    | _, _ -> nodeWarn ctx e "this kind of export statement is not supported."; None

  let readNamespaceExportDeclaration (ctx: ParserContext) (e: Ts.NamespaceExportDeclaration) : Statement =
    Export { clauses = [NamespaceExport e.name.text]; loc = Node.location e; comments = readCommentsForNamedDeclaration ctx e; origText = e.getText() }

  let readImportEqualsDeclaration (ctx: ParserContext) (i: Ts.ImportEqualsDeclaration) : Statement option =
    let comments = readCommentsForNamedDeclaration ctx i
    match i.moduleReference with
    | Ts.ModuleReference.Identifier _ | Ts.ModuleReference.QualifiedName _ ->
      let kind = getKindFromName ctx !!i.moduleReference
      Import {
        comments = comments;
        loc = Node.location i;
        isTypeOnly = i.isTypeOnly;
        isExported = getExported i.modifiers;
        clauses = [LocalImport {| name = i.name.text; kind = kind; target = readIdent ctx !!i.moduleReference |}]
        origText = i.getText()
      } |> Some
    | Ts.ModuleReference.ExternalModuleReference m ->
      match (!!m.expression : Ts.Node).kind with
      | Kind.StringLiteral ->
        let moduleSpecifier = (!!m.expression : Ts.StringLiteral).text
        let kind = getKindFromName ctx i.name
        Import {
          comments = comments;
          loc = Node.location i;
          isTypeOnly = i.isTypeOnly;
          isExported = getExported i.modifiers;
          clauses = [NamespaceImport {| name = i.name.text; isES6Import = false; kind = kind; specifier = moduleSpecifier |}]
          origText = i.getText()
        } |> Some
      | kind ->
        nodeWarn ctx i "invalid kind '%s' for module specifier" (Enum.pp kind); None

  let readImportDeclaration (ctx: ParserContext) (i: Ts.ImportDeclaration) : Statement option =
    match i.importClause with
    | None -> nodeWarn ctx i "side-effect only import will be ignored"; None
    | Some c ->
      match i.moduleSpecifier.kind with
      | Kind.StringLiteral ->
        let comments = readCommentsForNamedDeclaration ctx c
        let moduleSpecifier = (!!i.moduleSpecifier : Ts.StringLiteral).text
        let inline create clauses =
          Some (Import { comments = comments; loc = Node.location i; isTypeOnly = c.isTypeOnly; isExported = getExported i.modifiers; clauses = clauses; origText = i.getText() })
        match c.name, c.namedBindings with
        | None, None -> create [ES6WildcardImport moduleSpecifier]
        | None, Some (Ts.NamedImportBindings.NamespaceImport n) ->
          let kind = getKindFromName ctx n.name
          create [NamespaceImport {| name = n.name.text; kind = kind; isES6Import = true; specifier = moduleSpecifier |}]
        | _, Some (Ts.NamedImportBindings.NamedImports n) ->
          let spec = {| specifier = moduleSpecifier |}
          let defaultImport = c.name |> Option.map (fun i -> ES6DefaultImport {| spec with name = i.text; kind = getKindFromName ctx i |})
          let bindings =
            n.elements
            |> Array.map (fun e ->
              let kind = getKindFromName ctx e.name
              let name, renameAs =
                match e.propertyName with
                | Some i -> i.text, Some e.name.text
                | None -> e.name.text, None
              ES6Import {| spec with name = name; kind = kind; renameAs = renameAs |})
            |> List.ofArray
          create (Option.toList defaultImport @ bindings)
        | Some i, None ->
          create [ES6DefaultImport {| name = i.text; kind = getKindFromName ctx i; specifier = moduleSpecifier |}]
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
      |> Option.map (Array.map readJSDocTag >> List.ofArray)
      |> Option.defaultValue []
    desc @ tags

  let readJSDoc (ctx: ParserContext) (doc: Ts.JSDoc) : Statement option =
    match readJSDocImpl ctx doc with
    | [] -> None
    | xs -> FloatingComment {| comments = xs; loc = Node.location doc |} |> Some

  type ModuleName = Ts.ModuleName
  let rec readModule (ctx: ParserContext) (md: Ts.ModuleDeclaration) : Statement =
    let name =
      match md.name with
      | ModuleName.Identifier i ->
        match i.text with
        | "global" -> None
        | name -> Some name
      | ModuleName.StringLiteral s -> s.text |> Some
    let check kind =
      md.getChildren() |> Array.exists (fun nd -> nd.kind = kind)
    let isNamespace = check Kind.NamespaceKeyword
    let isExported = getExported md.modifiers
    let statements =
      md.getChildren()
      |> Array.toList
      |> List.collect (fun nd ->
        match nd.kind with
        | Kind.ModuleBlock ->
          let mb = nd :?> Ts.ModuleBlock
          mb.statements |> List.ofArray |> List.collect (readStatement ctx)
        | Kind.NamespaceKeyword | Kind.ExportKeyword | Kind.Identifier
        | Kind.DeclareKeyword | Kind.StringLiteral | Kind.DotToken | Kind.SyntaxList | Kind.ModuleKeyword -> []
        | Kind.JSDocComment -> []
        | Kind.ModuleDeclaration ->
          [ readModule ctx (nd :?> Ts.ModuleDeclaration) ]
        | _ ->
          nodeWarn ctx nd "unknown kind in ModuleDeclaration: %s" (Enum.pp nd.kind)
          [])
    let comments =
      md.getChildren()
      |> Array.filter (fun nd -> nd.kind = Kind.JSDocComment)
      |> List.ofArray
      |> List.collect (fun nd -> nd :?> Ts.JSDoc |> readJSDocImpl ctx)
    match name with
    | Some name ->
      Module { isExported = isExported; isNamespace = isNamespace; name = name; statements = statements; comments = comments; loc = Node.location md }
    | None ->
      Global { isExported = isExported; isNamespace = isNamespace; name = (); statements = statements; comments = comments; loc = Node.location md }

  and readStatement (ctx: ParserContext) (stmt: Ts.Statement) : Statement list =
    let onError () =
      let comments = readCommentsForNamedDeclaration ctx (stmt :?> Ts.DeclarationStatement)
      UnknownStatement {| origText = Some (stmt.getText()); loc = Node.location stmt; comments = comments |}
    try
      match stmt.kind with
      | Kind.TypeAliasDeclaration -> [readTypeAlias ctx (stmt :?> _) |> TypeAlias]
      | Kind.InterfaceDeclaration -> [readInterface ctx (stmt :?> _) |> Class]
      | Kind.ClassDeclaration -> [readClass ctx (stmt :?> _) |> Class]
      | Kind.EnumDeclaration -> [readEnum ctx (stmt :?> _) |> Enum]
      | Kind.ModuleDeclaration -> [readModule ctx (stmt :?> _)]
      | Kind.VariableStatement -> readVariable ctx (stmt :?> _)
      | Kind.FunctionDeclaration -> [readFunction ctx (stmt :?> _) |> Option.map Function |> Option.defaultWith onError]
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

module Node = Node.Api

/// works on NodeJS only.
let private getAllLocalReferences (ctx: #IContext<#IOptions>) (sourceFiles: Ts.SourceFile[]) =
  let sourceFilesMap = new MutableMap<_, _>()
  for sourceFile in sourceFiles do
    sourceFilesMap.Add(Path.absolute sourceFile.fileName, sourceFile)

  let createSourceFile path =
    ts.createSourceFile(path, Node.fs.readFileSync(path, "utf-8"), Ts.ScriptTarget.Latest, setParentNodes=true, scriptKind=Ts.ScriptKind.TS)

  let tryAdd (from: Ts.SourceFile) path =
    let path = Path.absolute path
    if not (sourceFilesMap.ContainsKey(path)) then
      ctx.logger.tracef "* found '%s' referenced by '%s'" path from.fileName
      let sourceFile = createSourceFile path
      sourceFilesMap.Add(path, sourceFile)
      Some sourceFile
    else None

  for sourceFile in sourceFiles do
    for file in sourceFile.referencedFiles do
      Path.join [Path.dirname sourceFile.fileName; file.fileName]
      |> tryAdd sourceFile |> ignore

  let tryFindDefinitionFile (sourceFile: Ts.SourceFile) relativePath =
    let tryGet name =
      let p = Path.join [Path.dirname sourceFile.fileName; name]
      if Node.fs.existsSync(!^p) then Some p else None
    tryGet $"{relativePath}.d.ts"
    |> Option.orElseWith (fun () -> tryGet (Path.join [relativePath; "index.d.ts"]))

  let handleModuleSpecifier (sourceFile: Ts.SourceFile) (e: Ts.Expression) =
    if e.kind = Ts.SyntaxKind.StringLiteral then
      let specifier = (!!e : Ts.StringLiteral).text
      if specifier.StartsWith(".") then
        match tryFindDefinitionFile sourceFile specifier with
        | None -> None
        | Some path -> tryAdd sourceFile path
      else None
    else None

  let rec go (sourceFile: Ts.SourceFile) (n: Ts.Node) : unit option =
    match n.kind with
    | Ts.SyntaxKind.ImportEqualsDeclaration ->
      let n = n :?> Ts.ImportEqualsDeclaration
      if (!!n.moduleReference : Ts.Node).kind = Ts.SyntaxKind.ExternalModuleReference then
        (!!n.moduleReference : Ts.ExternalModuleReference).expression
        |> handleModuleSpecifier sourceFile
        |> Option.iter goSourceFile
    | Ts.SyntaxKind.ImportDeclaration ->
      let n = n :?> Ts.ImportDeclaration
      n.moduleSpecifier
      |> handleModuleSpecifier sourceFile
      |> Option.iter goSourceFile
    | _ -> ()
    n.forEachChild(go sourceFile)

  and goSourceFile (sourceFile: Ts.SourceFile) =
    sourceFile.forEachChild(go sourceFile) |> ignore

  for sourceFile in sourceFiles do goSourceFile sourceFile

  sourceFilesMap.Values |> Seq.toArray |> Array.map (fun v -> v.fileName, v) |> Array.unzip

open DataTypes

let createDependencyGraph (sourceFiles: Ts.SourceFile[]) =
  let files = sourceFiles |> Array.map (fun sf -> sf.fileName, sf) |> Map.ofArray
  let mutable graph = Graph.empty

  let tryFindDefinitionFile (sourceFile: Ts.SourceFile) relativePath =
    let tryGet name =
      files |> Map.tryFind (Path.join [Path.dirname sourceFile.fileName; name])
    tryGet $"{relativePath}.d.ts"
    |> Option.orElseWith (fun () -> tryGet (Path.join [relativePath; "index.d.ts"]))

  let handleModuleSpecifier (sourceFile: Ts.SourceFile) (e: Ts.Expression) =
    if e.kind = Ts.SyntaxKind.StringLiteral then
      let specifier = (!!e : Ts.StringLiteral).text
      if specifier.StartsWith(".") then
        tryFindDefinitionFile sourceFile specifier
        |> Option.iter (fun target ->
          graph <- graph |> Graph.add sourceFile.fileName target.fileName)

  let go (sourceFile: Ts.SourceFile) (ns: Ts.Node[]) =
    for n in ns do
      match n.kind with
      | Ts.SyntaxKind.ImportEqualsDeclaration ->
        let n = n :?> Ts.ImportEqualsDeclaration
        if (!!n.moduleReference : Ts.Node).kind = Ts.SyntaxKind.ExternalModuleReference then
          (!!n.moduleReference : Ts.ExternalModuleReference).expression
          |> handleModuleSpecifier sourceFile
      | Ts.SyntaxKind.ImportDeclaration ->
        let n = n :?> Ts.ImportDeclaration
        n.moduleSpecifier
        |> handleModuleSpecifier sourceFile
      | _ -> ()
    ns |> Array.collect (fun n -> n.getChildren(sourceFile))

  let goSourceFile (sourceFile: Ts.SourceFile) =
    let mutable nodes : Ts.Node[] = !!sourceFile.statements
    while not (nodes |> Array.isEmpty) do
      nodes <- go sourceFile nodes

  for source in sourceFiles do goSourceFile source
  graph

let assertFileExistsAndHasCorrectExtension (fileName: string) =
  assertNode ()
  if not <| Node.fs.existsSync(!^fileName) then
    failwithf "file '%s' does not exist" fileName
  if fileName.EndsWith(".d.ts") |> not then
    failwithf "file '%s' is not a TypeScript declaration file" fileName
  fileName

let createContextFromFiles (ctx: #IContext<#IOptions>) compilerOptions (fileNames: string[]) : ParserContext =
  assertNode ()
  let fileNames, program =
    let fileNames =
      if not ctx.options.followRelativeReferences then
        fileNames
        |> Array.map Path.absolute
        |> Array.map assertFileExistsAndHasCorrectExtension
      else
        fileNames
        |> Array.map Path.absolute
        |> Array.map assertFileExistsAndHasCorrectExtension
        |> Array.map (fun a -> a, Node.fs.readFileSync(a, "utf-8"))
        |> Array.map (fun (a, i) ->
          ts.createSourceFile (a, i, Ts.ScriptTarget.Latest, setParentNodes=true, scriptKind=Ts.ScriptKind.TS))
        |> fun srcs ->
          ctx.logger.tracef "* following relative references..."
          getAllLocalReferences ctx srcs |> fst
    fileNames, TypeScriptHelper.createProgramForNode fileNames compilerOptions
  !!{|
    logger = ctx.logger
    options = ctx.options
    program = program
    checker = program.getTypeChecker()
    fileNames = fileNames
    currentSource = (null : Ts.SourceFile)
  |}

let createContextFromString (ctx: #IContext<#IOptions>) compilerOptions (files: {| fileName: string; text: string |} seq) : ParserContext =
  let sourceFiles =
    files
    |> Seq.map (fun x -> ts.createSourceFile (x.fileName, x.text, Ts.ScriptTarget.Latest, setParentNodes=true, scriptKind=Ts.ScriptKind.TS))
    |> Seq.toArray
  let program = TypeScriptHelper.createProgramForBrowser sourceFiles compilerOptions
  !!{|
    logger = ctx.logger
    options = ctx.options
    program = program
    checker = program.getTypeChecker()
    fileNames = files |> Seq.map (fun x -> x.fileName) |> Seq.toArray
    currentSource = (null : Ts.SourceFile)
  |}

let parse (ctx: ParserContext) : Input =
  let srcs =
    let targets = ctx.fileNames |> Set.ofArray
    ctx.program.getSourceFiles()
    |> Array.filter (fun sf -> targets |> Set.contains sf.fileName)
  let sources =
    srcs
    |> Array.map (fun src ->
      ctx.logger.tracef "* parsing %s..." src.fileName
      let references =
        Array.concat [
          src.referencedFiles |> Array.map (fun x -> FileReference x.fileName)
          src.typeReferenceDirectives |> Array.map (fun x -> TypeReference x.fileName)
          src.libReferenceDirectives |> Array.map (fun x -> LibReference x.fileName)
        ] |> Array.toList
      let statements =
        src.statements
        |> Array.toList
        |> List.collect (
          ParserImpl.readStatement
            (ctx |> JS.cloneWith (fun ctx -> ctx.currentSource <- src)))
      { statements = statements
        fileName = src.fileName
        hasNoDefaultLib = src.hasNoDefaultLib
        references = references })
    |> List.ofArray

  let info =
    match sources with
    | example :: _ -> JsHelper.getPackageInfo example.fileName
    | [] -> None

  let dependencyGraph =
    let g = createDependencyGraph srcs
    Graph.stronglyConnectedComponents g (List.ofArray ctx.fileNames)

  for group in dependencyGraph do
    match group with
    | [] | [_] -> ()
    | _ -> ctx.logger.warnf "there are mutually-referencing source files: %s" (group |> String.concat ", ")

  { sources = sources; info = info; dependencyGraph = dependencyGraph }