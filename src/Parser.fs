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
  let ppLocation (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    sprintf "line %i, col %i of %s" (int pos.line + 1) (int pos.character + 1) src.fileName
  
  let ppLine (n: Node) =
    let src = n.getSourceFile()
    let pos = src.getLineAndCharacterOfPosition (n.getStart())
    let startPos = int <| src.getPositionOfLineAndCharacter(pos.line, 0.)
    let endPos = int <| src.getLineEndOfPosition(n.getEnd())
    src.text.Substring(startPos, endPos - startPos)

let nodeWarn (node: Node) format =
  Printf.kprintf (fun s ->
    eprintfn "warn: %s at %s" s (Node.ppLocation node)
    eprintfn "> %s" (Node.ppLine node)
  ) format

let nodeError node format =
  Printf.kprintf (fun s ->
    failwithf "error: %s at %s\n> %s" s (Node.ppLocation node) (Node.ppLine node)
  ) format

let hasModifier (kind: Ts.SyntaxKind) (modifiers: Ts.ModifiersArray option) =
  match modifiers with
  | None -> false
  | Some mds -> mds |> Seq.exists (fun md -> md.kind = kind)

let getAccessibility (modifiersOpt: Ts.ModifiersArray option) : Accessibility option =
  match modifiersOpt with
  | Some modifiers ->
    if modifiers |> Seq.exists (fun m -> m.kind = Kind.PublicKeyword) then
      Some Public
    else if modifiers |> Seq.exists (fun m -> m.kind = Kind.ProtectedKeyword) then
      Some Protected
    else if modifiers |> Seq.exists (fun m -> m.kind = Kind.PrivateKeyword) then
      Some Private
    else
      None
  | None -> None

let isReadOnly (m: Ts.ModifiersArray option) : bool =
  m |> hasModifier Kind.ReadonlyKeyword

let nameToString (pn: 'a): string =
  !!pn?getText() |> removeQuotes

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
  | Kind.NumberKeyword -> Prim Number
  | Kind.BooleanKeyword -> Prim Bool
  | Kind.AnyKeyword -> Prim Any
  | Kind.VoidKeyword -> Prim Void
  | Kind.UnknownKeyword -> Prim Unknown
  | Kind.NeverKeyword -> Prim Never
  | Kind.NullKeyword -> Prim Null
  | Kind.UndefinedKeyword -> Prim Undefined
  | Kind.ObjectKeyword -> Prim Object
  | Kind.SymbolKeyword -> Prim PrimTypes.Symbol
  // | Kind.BigIntKeyword -> Prim BigInt
  | Kind.ArrayType ->
    let t = t :?> Ts.ArrayTypeNode
    let elem = readTypeNode typrm checker t.elementType
    if isReadOnly t.modifiers then App (Prim ReadonlyArray, [elem]) else App (Prim Array, [elem])
  | Kind.TupleType ->
    let t = t :?> Ts.TupleTypeNode
    let elems = t.elementTypes |> Seq.map (readTypeNode typrm checker) |> List.ofSeq
    if isReadOnly t.modifiers then ReadonlyTuple elems else Tuple elems
  // complex types
  | Kind.ThisType -> PolymorphicThis
  | Kind.UnionType ->
    let t = t :?> Ts.UnionTypeNode
    Union { types = t.types |> Seq.map (readTypeNode typrm checker) |> List.ofSeq; classIntersection = None }
  | Kind.IntersectionType ->
    let t = t :?> Ts.IntersectionTypeNode
    Intersection { types = t.types |> Seq.map (readTypeNode typrm checker) |> List.ofSeq; classUnion = None }
  | Kind.ParenthesizedType ->
    readTypeNode typrm checker ((t :?> Ts.ParenthesizedTypeNode).``type``)
  // ident, possibly tyapp
  | Kind.TypeReference
  // ident, possibly tyapp, appearing in extends / implements
  | Kind.ExpressionWithTypeArguments ->
    let t = t :?> Ts.NodeWithTypeArguments
    let lt =
      let lhs : Node =
        match t.kind with
        | Kind.TypeReference -> !!(t :?> Ts.TypeReferenceNode).typeName
        | Kind.ExpressionWithTypeArguments -> !!(t :?> Ts.ExpressionWithTypeArguments).expression
        | _ -> failwith "impossible"
      match extractNestedName lhs |> List.ofSeq with
      | [x] when typrm |> Set.contains x -> TypeVar x
      | [] -> nodeError lhs "cannot parse node '%s' as identifier" (lhs.getText())
      | ts ->
        if ts |> List.contains "T" then
          nodeWarn t "T"
          failwith ""
        Ident { name = ts; fullName = None (* getFullNameAtNodeLocation checker t *) }
    match t.typeArguments with
    | None -> lt
    | Some args -> App (lt, args |> Seq.map (readTypeNode typrm checker) |> List.ofSeq)
  | Kind.FunctionType ->
    let t = t :?> Ts.FunctionTypeNode
    let typrms = readTypeParameters typrm checker t.typeParameters
    let typrm = Set.union typrm (typrms |> List.map (fun x -> x.name) |> Set.ofList)
    let retTy = readTypeNode typrm checker t.``type``
    Function (readParameters typrm checker t.parameters retTy)
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
      name = None; isInterface = true; isExported = false
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
        App (Prim ReadonlyArray, [elem])
      | Kind.TupleType ->
        let t' = t' :?> Ts.TupleTypeNode
        let elems = t'.elementTypes |> Seq.map (readTypeNode typrm checker) |> List.ofSeq
        ReadonlyTuple elems
      | _ ->
        nodeWarn t "unsupported 'readonly' modifier for type '%s'" (t.getText())
        UnknownType (Some (t.getText()))
    | _ ->
      nodeWarn t "unsupported type operator '%s'" (Enum.pp t.operator)
      UnknownType (Some (t.getText()))
  // fallbacks
  | Kind.TypePredicate -> Prim Bool
  | _ ->
    nodeWarn t "unsupported TypeNode kind: %s" (Enum.pp t.kind);
    UnknownType (Some (t.getText()))

and readParameters<'retType> (typrm: Set<string>) (checker: TypeChecker) (ps: Ts.ParameterDeclaration seq) (retType: 'retType) : FuncType<'retType> =
  let isVariadic =
    ps |> Seq.exists (fun p -> p.dotDotDotToken |> Option.isSome)
  let args =
    ps
    |> Seq.mapi (fun i p ->
      let name =
        p.name |> getBindingName |> Option.defaultValue (sprintf "p%i" i)
      let isOptional = p.questionToken |> Option.isSome
      let ty =
        match p.``type`` with
        | Some t -> readTypeNode typrm checker t
        | None ->
          nodeWarn p "type not specified for param '%s'" name;
          UnknownType None
      { name = name; isOptional = isOptional; value = ty }
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
    let ty = Function (readParameters typrm checker nd.parameters retTy)
    let fl = { name = nameToString nd.name; isOptional = false; value = ty }
    Some (attr, Field (fl, (if isReadOnly nd.modifiers then ReadOnly else Mutable), localTyprm))
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
      Some (attr, Setter { ty with name = nameToString nd.name })
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
    isExported = i.modifiers |> Option.map (Seq.exists (fun m -> m.kind = Kind.ExportKeyword)) |> Option.defaultValue false
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
    isExported = hasModifier Kind.ExportKeyword i.modifiers
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
  (comments, name, value)

let readEnum (ed: Ts.EnumDeclaration) : Enum =
  {
    name = ed.name |> nameToString
    comments = [] // TODO
    cases = ed.members |> List.ofSeq |> List.map readEnumCase
  }

let readTypeAlias (checker: TypeChecker) (a: Ts.TypeAliasDeclaration) : TypeAlias =
  let typrm = readTypeParameters Set.empty checker a.typeParameters
  let ty = readTypeNode (typrm |> List.map (fun x -> x.name) |> Set.ofList) checker a.``type``
  { name = nameToString a.name; typeParams = typrm; target = ty; erased = false; }

let readVariable (checker: TypeChecker) (v: Ts.VariableStatement) : Value list =
  v.declarationList.declarations |> List.ofSeq |> List.choose (fun vd ->
    match getBindingName vd.name with
    | None ->
      nodeWarn vd "name is not defined for variable"; None
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
      let isStatic = hasModifier Kind.StaticKeyword vd.modifiers
      let isExported = hasModifier Kind.ExportKeyword vd.modifiers
      let accessibility = getAccessibility vd.modifiers
      let comments = [] // TODO
      Some { comments = comments; name = name; typ = ty; typeParams = []; isConst = isConst; isStatic = isStatic; isExported = isExported; accessibility = accessibility }
  )

let readFunction (checker: TypeChecker) (f: Ts.FunctionDeclaration) : Value option =
  match f.name with
  | None ->
    nodeWarn f "name is not defined for function"; None
  | Some name ->
    let name = nameToString name
    let comments = [] // TODO
    let isStatic = hasModifier Kind.StaticKeyword f.modifiers
    let isExported = hasModifier Kind.ExportKeyword f.modifiers
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
    Some { comments = comments; name = name; typ = ty; typeParams = typrm; isConst = false; isStatic = isStatic; isExported = isExported; accessibility = accessibility }

let readExportAssignment (checker: TypeChecker) (e: Ts.ExportAssignment) : IdentType * ExportModifier =
  match extractNestedName e.expression |> Seq.toList with
  | [] -> nodeError e.expression "cannot parse node '%s' as identifier" (e.expression.getText())
  | ts ->
    { name = ts; fullName = None (* getFullNameAtNodeLocation checker e *) }, AsDefault

let rec readModule (checker: TypeChecker) (md: Ts.ModuleDeclaration) : Module =
  let name = nameToString md.name
  let check kind = 
    md.getChildren() |> Seq.exists (fun nd -> nd.kind = kind)
  let isNamespace = check Kind.NamespaceKeyword
  let isExported = check Kind.ExportKeyword
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
  { isExported = isExported; isNamespace = isNamespace; name = name; statements = statements    }

and readStatement (checker: TypeChecker) (stmt: Ts.Statement) : Statement list =
  match stmt.kind with
  | Kind.TypeAliasDeclaration -> [readTypeAlias checker (stmt :?> _) |> TypeAlias]
  | Kind.InterfaceDeclaration -> [readInterface checker (stmt :?> _) |> ClassDef]
  | Kind.ClassDeclaration -> [readClass checker (stmt :?> _) |> ClassDef]
  | Kind.EnumDeclaration -> [readEnum (stmt :?> _) |> EnumDef]
  | Kind.ModuleDeclaration -> [readModule checker (stmt :?> _) |> Module]
  | Kind.VariableStatement -> readVariable checker (stmt :?> _) |> List.map Value
  | Kind.FunctionDeclaration -> readFunction checker (stmt :?> _) |> Option.map Value |> Option.toList
  | Kind.ExportAssignment -> [readExportAssignment checker (stmt :?> _) |> Export]
  | _ ->
    nodeWarn stmt "skipping unsupported Statement kind: %s" (Enum.pp stmt.kind)
    [ UnknownStatement (Some (stmt.getText())) ]

