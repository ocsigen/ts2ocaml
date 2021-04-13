// partly borrowed from https://github.com/fable-compiler/ts2fable/
module Parser

open Syntax
open Naming
open Fable.Core.JsInterop
open TypeScript

type Node = Ts.Node
type TypeChecker = Ts.TypeChecker
type Kind = Ts.SyntaxKind


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

let nodeWarn (node: Node) format =
  Printf.kprintf (fun s ->
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

let rec extractNestedName (node: Node) =
  seq {
    if ts.isIdentifier node then
      yield (node :?> Ts.Identifier).text
    else
      for child in node.getChildren() do
        yield! extractNestedName child
  }

let getFullNameAtNodeLocation (checker: TypeChecker) (nd: Node) =
    match checker.getSymbolAtLocation nd with
    | None -> None
    | Some smb -> checker.getFullyQualifiedName smb |> Option.ofObj |> Option.map (fun s -> s.Split '.' |> Array.toList)

let readMemberAttribute (checker: TypeChecker) (nd: Ts.NamedDeclaration) : MemberAttribute =
  let accessibility = getAccessibility nd.modifiers |> Option.defaultValue Public
  let isStatic = hasModifier Kind.StaticKeyword nd.modifiers
  let comments = [] // TODO
  { accessibility = accessibility; isStatic = isStatic; comments = comments }

let rec readTypeNode (typrm: Set<string>) (checker: TypeChecker) (t: Ts.TypeNode) : Type =
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
    let elem = readTypeNode typrm checker t.elementType
    if isReadOnly t.modifiers then
      App (APrim ReadonlyArray, [elem], Node.location t)
    else
      App (APrim Array, [elem], Node.location t)
  | Kind.TupleType ->
    let t = t :?> Ts.TupleTypeNode
    let elems = t.elementTypes |> Seq.map (readTypeNode typrm checker) |> List.ofSeq
    if isReadOnly t.modifiers then ReadonlyTuple elems else Tuple elems
  // complex types
  | Kind.ThisType -> PolymorphicThis
  | Kind.UnionType ->
    let t = t :?> Ts.UnionTypeNode
    Union { types = t.types |> Seq.map (readTypeNode typrm checker) |> List.ofSeq }
  | Kind.IntersectionType ->
    let t = t :?> Ts.IntersectionTypeNode
    Intersection { types = t.types |> Seq.map (readTypeNode typrm checker) |> List.ofSeq }
  | Kind.ParenthesizedType ->
    readTypeNode typrm checker ((t :?> Ts.ParenthesizedTypeNode).``type``)
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
      | Some args -> App (AIdent lt, args |> Seq.map (readTypeNode typrm checker) |> List.ofSeq, Node.location t)
  | Kind.FunctionType ->
    let t = t :?> Ts.FunctionTypeNode
    let typrms = readTypeParameters typrm checker t.typeParameters
    let typrm = Set.union typrm (typrms |> List.map (fun x -> x.name) |> Set.ofList)
    let retTy = readTypeNode typrm checker t.``type``
    Function (readParameters typrm checker t.parameters retTy)
  | Kind.ConstructorType ->
    let t = t :?> Ts.ConstructorTypeNode
    let typrms = readTypeParameters typrm checker t.typeParameters
    let typrm' = Set.union typrm (typrms |> List.map (fun x -> x.name) |> Set.ofList)
    let retTy = readTypeNode typrm' checker t.``type``
    Erased (NewableFunction (readParameters typrm' checker t.parameters retTy, typrms), Node.location t)
  | Kind.LiteralType ->
    let t = t :?> Ts.LiteralTypeNode
    match readLiteral (!!t.literal) with
    | Some l -> TypeLiteral l
    | None -> 
      nodeWarn t "unsupported literal type '%s'" (t.getText());
      UnknownType (Some (t.getText()))
  // anonymous interface
  | Kind.TypeLiteral ->
    let t = t :?> Ts.TypeLiteralNode
    let members = t.members |> List.ofSeq |> List.choose (readNamedDeclaration typrm checker) 
    AnonymousInterface {
      name = None; isInterface = true; isExported = Exported.No
      comments = []; implements = []; typeParams = []; accessibility = Public
      members = members
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
        let elem = readTypeNode typrm checker t'.elementType
        App (APrim ReadonlyArray, [elem], Node.location t')
      | Kind.TupleType ->
        let t' = t' :?> Ts.TupleTypeNode
        let elems = t'.elementTypes |> Seq.map (readTypeNode typrm checker) |> List.ofSeq
        ReadonlyTuple elems
      | _ ->
        nodeWarn t "unsupported 'readonly' modifier for type '%s'" (t.getText())
        UnknownType (Some (t.getText()))
    | Kind.KeyOfKeyword ->
      Erased (Keyof (readTypeNode typrm checker t.``type``), Node.location t)
    | _ ->
      nodeWarn t "unsupported type operator '%s'" (Enum.pp t.operator)
      UnknownType (Some (t.getText()))
  | Kind.IndexedAccessType ->
    let t = t :?> Ts.IndexedAccessTypeNode
    let lhs = readTypeNode typrm checker t.objectType
    let rhs = readTypeNode typrm checker t.indexType
    Erased (IndexedAccess (lhs, rhs), Node.location t)
  | Kind.TypeQuery ->
    let t = t :?> Ts.TypeQueryNode
    let nameNode = box t.exprName :?> Node
    let name = extractNestedName nameNode
    Erased (TypeQuery ({ name = List.ofSeq name; fullName = None; loc = Node.location nameNode }), Node.location t)
  // fallbacks
  | Kind.TypePredicate ->
    nodeWarn t "type predicate is not supported and treated as boolean"
    Prim Bool
  | _ ->
    nodeWarn t "unsupported TypeNode kind: %s" (Enum.pp t.kind);
    UnknownType (Some (t.getText()))

and readParameters<'retType> (typrm: Set<string>) (checker: TypeChecker) (ps: Ts.ParameterDeclaration seq) (retType: 'retType) : FuncType<'retType> =
  let isVariadic =
    ps |> Seq.exists (fun p -> p.dotDotDotToken |> Option.isSome)
  let args =
    ps
    |> Seq.mapi (fun i p ->
      let isOptional = p.questionToken |> Option.isSome
      let nameOpt = p.name |> getBindingName
      let ty =
        match p.``type`` with
        | Some t -> readTypeNode typrm checker t
        | None ->
          match nameOpt with
          | Some name ->
            nodeWarn p "type not specified for param '%s'" name
          | None ->
            nodeWarn p "type not specified for param %i" i
          UnknownType None
      match nameOpt with
      | Some name ->
        Choice1Of2 { name = name; isOptional = isOptional; value = ty }
      | None ->
        assert (not isOptional);
        Choice2Of2 ty
    )
    |> Seq.toList
  { args = args; isVariadic = isVariadic; returnType = retType }

and readNamedDeclaration (typrm: Set<string>) (checker: TypeChecker) (nd: Ts.NamedDeclaration) : (MemberAttribute * Member) option =
  let attr = readMemberAttribute checker nd
  let extractType (sdb: Ts.SignatureDeclarationBase) =
    let localTyprm = readTypeParameters typrm checker sdb.typeParameters
    match sdb.``type`` with
    | Some t ->
      localTyprm,
      readTypeNode (Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)) checker t
    | None ->
      if nd.kind <> Kind.Constructor && nd.kind <> Kind.SetAccessor then
        match sdb.name with
        | Some name ->
          nodeWarn sdb "type not specified for '%s' (%s)" (nameToString name) (Enum.pp nd.kind)
        | None ->
          nodeWarn sdb "type not specified (%s)" (Enum.pp nd.kind)
      localTyprm, UnknownType None
  match nd.kind with
  | Kind.PropertySignature ->
    let nd = nd :?> Ts.PropertySignature
    let ty =
      match nd.``type`` with
      | Some t -> readTypeNode typrm checker t
      | None ->
        UnknownType None
    match ty with
    | UnknownType None ->
      nodeWarn nd "type not specified for field '%s'" (nameToString nd.name)
    | _ -> ()
    let fl = { name = nameToString nd.name; isOptional = false; value = ty }
    Some (attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable), []))
  | Kind.PropertyDeclaration ->
    let nd = nd :?> Ts.PropertyDeclaration
    let ty =
      match nd.``type`` with
      | Some t -> readTypeNode typrm checker t
      | None ->
        UnknownType None
    match ty with
    | UnknownType None ->
      nodeWarn nd "type not specified for field '%s'" (nameToString nd.name)
    | _ -> ()
    let fl = { name = nameToString nd.name; isOptional = false; value = ty }
    Some (attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable), []))
  | Kind.CallSignature ->
    let nd = nd :?> Ts.CallSignatureDeclaration
    let localTyprm, ty = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    Some (attr, FunctionInterface (readParameters typrm checker nd.parameters ty, localTyprm))
  | Kind.MethodSignature | Kind.MethodDeclaration ->
    let nd = nd :?> Ts.SignatureDeclarationBase
    let localTyprm, retTy = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let func = readParameters typrm checker nd.parameters retTy
    Some (attr, Method (nameToString nd.name, func, localTyprm))
  | Kind.IndexSignature ->
    let nd = nd :?> Ts.IndexSignatureDeclaration
    let localTyprm, ty = extractType nd
    if not (List.isEmpty localTyprm) then nodeWarn nd "indexer with type argument is not supported"
    Some (attr,
      Indexer (readParameters typrm checker nd.parameters ty,
               if isReadOnly nd.modifiers then ReadOnly else Mutable))
  | Kind.ConstructSignature ->
    let nd = nd :?> Ts.ConstructSignatureDeclaration
    let localTyprm, retTy = extractType nd
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let ty = readParameters typrm checker nd.parameters retTy
    Some (attr, New (ty, localTyprm))
  | Kind.Constructor ->
    let nd = nd :?> Ts.ConstructorDeclaration
    let localTyprm, retTy = extractType nd
    assert (match retTy with UnknownType _ -> true | _ -> false)
    let typrm = Set.union typrm (localTyprm |> List.map (fun x -> x.name) |> Set.ofList)
    let ty = readParameters typrm checker nd.parameters () 
    Some (attr, Constructor (ty, localTyprm))
  | Kind.GetAccessor ->
    let nd = nd :?> Ts.GetAccessorDeclaration
    let localTyprm, ty = extractType nd
    if not (List.isEmpty localTyprm) then nodeWarn nd "getter with type argument is not supported"
    let fl = { name = nameToString nd.name; isOptional = false; value = ty }
    Some (attr, Getter fl)
  | Kind.SetAccessor ->
    let nd = nd :?> Ts.SetAccessorDeclaration
    let localTyprm, retTy = extractType nd
    assert (match retTy with UnknownType _ -> true | _ -> false)
    if not (List.isEmpty localTyprm) then nodeWarn nd "setter with type argument is not supported"
    match readParameters typrm checker nd.parameters () with
    | { args = [ty]; isVariadic = false } ->
      match ty with
      | Choice1Of2 named ->
        Some (attr, Setter { named with name = nameToString nd.name })
      | Choice2Of2 ty ->
        Some (attr, Setter { name = nameToString nd.name; isOptional = false; value = ty })
    | _ ->
      nodeWarn nd "invalid setter for '%s'" (nameToString nd.name)
      None
  | _ ->
    nodeWarn nd "unsupported NamedDeclaration kind: '%s'" (Enum.pp nd.kind)
    None

and readTypeParameters (typrm: Set<string>) (checker: TypeChecker) (tps: Ts.TypeParameterDeclaration ResizeArray option) : TypeParam list =
  match tps with
  | None -> []
  | Some tps ->
    let names = tps |> Seq.map (fun tp -> tp.name.text) |> Set.ofSeq |> Set.union typrm
    tps
    |> Seq.map (fun tp ->
      let dt = tp.``default``    |> Option.map (readTypeNode names checker)
      let et = tp.``constraint`` |> Option.map (readTypeNode names checker)
      { name = tp.name.text; extends = et; defaultType = dt }
    )
    |> Seq.toList

let readInherits (typrm: Set<string>) (checker: TypeChecker) (hcs: Ts.HeritageClause ResizeArray option) : Type list =
  match hcs with
  | None -> []
  | Some hcs ->
    hcs |> Seq.collect (fun hc -> hc.types |> Seq.map (readTypeNode typrm checker))
        |> Seq.toList

let readInterface (checker: TypeChecker) (i: Ts.InterfaceDeclaration) : Class =
  let name = i.name.getText()
  let typrms = readTypeParameters Set.empty checker i.typeParameters
  let typrmsSet = typrms |> List.map (fun tp -> tp.name) |> Set.ofList
  {
    comments = [] // TODO
    name = Some name
    accessibility = getAccessibility i.modifiers |> Option.defaultValue Public
    typeParams = typrms
    implements = readInherits typrmsSet checker i.heritageClauses
    isInterface = true
    isExported = getExported i.modifiers
    members = i.members |> List.ofSeq |> List.choose (readNamedDeclaration typrmsSet checker)
  }

let readClass (checker: TypeChecker) (i: Ts.ClassDeclaration) : Class =
  let typrms = readTypeParameters Set.empty checker i.typeParameters
  let typrmsSet = typrms |> List.map (fun tp -> tp.name) |> Set.ofList
  {
    comments = [] // TODO
    name = i.name |> Option.map (fun id -> id.getText())
    accessibility = getAccessibility i.modifiers |> Option.defaultValue Public
    typeParams = typrms
    implements = readInherits typrmsSet checker i.heritageClauses
    isInterface = false
    isExported = getExported i.modifiers
    members = i.members |> List.ofSeq |> List.choose (readNamedDeclaration typrmsSet checker)
  }

let readEnumCase (em: Ts.EnumMember) : EnumCase =
  let name = em.name |> nameToString
  let value =
    match em.initializer with
    | None -> None
    | Some ep ->
      match readLiteral ep with
      | Some ((LInt _ | LString _) as l) -> Some l
      | _ -> nodeError ep "enum value '%s' for case '%s' not supported" (ep.getText()) name
  let comments = [] // TODO
  { comments = comments; name = name; value = value }

let readEnum (ed: Ts.EnumDeclaration) : Enum =
  {
    name = ed.name |> nameToString
    comments = [] // TODO
    cases = ed.members |> List.ofSeq |> List.map readEnumCase
    isExported = getExported ed.modifiers
  }

let readTypeAlias (checker: TypeChecker) (a: Ts.TypeAliasDeclaration) : TypeAlias =
  let typrm = readTypeParameters Set.empty checker a.typeParameters
  let ty = readTypeNode (typrm |> List.map (fun x -> x.name) |> Set.ofList) checker a.``type``
  { name = nameToString a.name; typeParams = typrm; target = ty; erased = false; comments = [] (* TODO*) }

let readVariable (checker: TypeChecker) (v: Ts.VariableStatement) : Statement list =
  v.declarationList.declarations |> List.ofSeq |> List.map (fun vd ->
    let comments = [] // TODO
    match getBindingName vd.name with
    | None ->
      nodeWarn vd "name is not defined for variable"
      UnknownStatement (Some (vd.getText()), comments) 
    | Some name ->
      let ty =
        match vd.``type`` with
        | Some tn -> readTypeNode Set.empty checker tn
        | None ->
          match vd.initializer with
          | Some e ->
            match e.kind with
            | Kind.StringLiteral -> Prim String
            | Kind.RegularExpressionLiteral -> Prim RegExp
            | Kind.NumericLiteral | Kind.BigIntLiteral -> Prim Number
            | Kind.TrueKeyword | Kind.FalseKeyword -> Prim Bool
            | _ ->
              nodeWarn vd "type missing for variable '%s'" name
              UnknownType None
          | None ->
            nodeWarn vd "type missing for variable '%s'" name
            UnknownType None
      let isConst = (int vd.flags) ||| (int Ts.NodeFlags.Const) <> 0
      let isExported = getExported vd.modifiers
      let accessibility = getAccessibility vd.modifiers
      Value { comments = comments; name = name; typ = ty; typeParams = []; isConst = isConst; isExported = isExported; accessibility = accessibility }
  )

let readFunction (checker: TypeChecker) (f: Ts.FunctionDeclaration) : Value option =
  match f.name with
  | None ->
    nodeWarn f "name is not defined for function"; None
  | Some name ->
    let name = nameToString name
    let comments = [] // TODO
    let isExported = getExported f.modifiers
    let accessibility = getAccessibility f.modifiers
    let typrm = readTypeParameters Set.empty checker f.typeParameters
    let ty =
      let typrm = typrm |> List.map (fun x -> x.name) |> Set.ofList
      let retTy =
        match f.``type`` with
        | Some tn -> readTypeNode typrm checker tn
        | None ->
          nodeWarn f "return type missing for function '%s'" name
          UnknownType None
      Function (readParameters typrm checker f.parameters retTy)
    Some { comments = comments; name = name; typ = ty; typeParams = typrm; isConst = false; isExported = isExported; accessibility = accessibility }

let readExportAssignment (checker: TypeChecker) (e: Ts.ExportAssignment) : Statement option =
  let comments = [] // TODO
  match extractNestedName e.expression |> Seq.toList with
  | [] -> nodeWarn e.expression "cannot parse node '%s' as identifier" (e.expression.getText()); None
  | ts ->
    let ident = { name = ts; fullName = None; loc = Node.location e.expression }
    match e.isExportEquals with
    | Some true -> Export (CommonJsExport ident, comments) |> Some
    | _ -> Export (ES6DefaultExport ident, comments) |> Some

let readExportDeclaration (checker: TypeChecker) (e: Ts.ExportDeclaration) : Statement option =
  let comments = [] // TODO
  match e.exportClause, e.moduleSpecifier with
  | None, _
  | _, Some _ ->
    nodeWarn e "re-exporting an external module is not supported."; None
  | Some bindings, None ->
    let kind = (bindings |> box :?> Ts.Node).kind
    match kind with
    | Kind.NamespaceExport ->
      let ne = bindings |> box :?> Ts.NamespaceExport
      Some (Export (ExportAsNamespace ne.name.text, comments))
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
      nodeWarn e "invalid syntax kind '%s' for an export declaration" (Enum.pp kind); None

let rec readModule (checker: TypeChecker) (md: Ts.ModuleDeclaration) : Module =
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
        mb.statements |> List.ofSeq |> List.collect (readStatement checker)
      | Kind.NamespaceKeyword | Kind.ExportKeyword | Kind.Identifier
      | Kind.DeclareKeyword | Kind.StringLiteral | Kind.DotToken | Kind.SyntaxList | Kind.ModuleKeyword -> []
      | Kind.ModuleDeclaration ->
        [ Module (readModule checker (nd :?> Ts.ModuleDeclaration)) ]
      | _ ->
        nodeWarn nd "unknown kind in ModuleDeclaration: %s" (Enum.pp nd.kind)
        []
    )
  { isExported = isExported; isNamespace = isNamespace; name = name; statements = statements; comments = [] (* TODO *) }

and readStatement (checker: TypeChecker) (stmt: Ts.Statement) : Statement list =
  let onError () =
    UnknownStatement (Some (stmt.getText()), [] (* TODO: comment *))
  match stmt.kind with
  | Kind.TypeAliasDeclaration -> [readTypeAlias checker (stmt :?> _) |> TypeAlias]
  | Kind.InterfaceDeclaration -> [readInterface checker (stmt :?> _) |> ClassDef]
  | Kind.ClassDeclaration -> [readClass checker (stmt :?> _) |> ClassDef]
  | Kind.EnumDeclaration -> [readEnum (stmt :?> _) |> EnumDef]
  | Kind.ModuleDeclaration -> [readModule checker (stmt :?> _) |> Module]
  | Kind.VariableStatement -> readVariable checker (stmt :?> _)
  | Kind.FunctionDeclaration -> [readFunction checker (stmt :?> _) |> Option.map Value |> Option.defaultWith onError]
  | Kind.ExportAssignment -> [readExportAssignment checker (stmt :?> _) |> Option.defaultWith onError]
  | Kind.ExportDeclaration -> [readExportDeclaration checker (stmt :?> _) |> Option.defaultWith onError]
  | _ ->
    nodeWarn stmt "skipping unsupported Statement kind: %s" (Enum.pp stmt.kind)
    [ UnknownStatement (Some (stmt.getText()), [] (* TODO: comment *)) ]

