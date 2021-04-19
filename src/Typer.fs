module Typer

open Syntax

type Context = {
  currentNamespace: string list
  definitionsMap: Trie<string, Statement list>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<Class, int>
  internalModuleName: string
  unknownIdentifiers: Trie<string, Set<int>>
}

module Context =
  let ofParentNamespace (ctx: Context) : Context option =
    match ctx.currentNamespace with
    | [] -> None
    | _ :: ns -> Some { ctx with currentNamespace = ns }

type FullNameLookupResult =
  | AliasName of TypeAlias
  | ClassName of Class
  | EnumName of Enum
  | EnumCaseName of string * Enum
  | ModuleName of Module
  | ValueName of Value
  | MemberName of MemberAttribute * Member
  | NotFound of string option

module FullName =
  let rec ofIdent (ctx: Context) (ident: IdentType) : string list option =
    let nsRev = List.rev ctx.currentNamespace
    let fullName = nsRev @ ident.name
    let onFail () =
      match Context.ofParentNamespace ctx with Some ctx -> ofIdent ctx ident | None -> None
    match ctx.definitionsMap |> Trie.tryFind fullName with
    | Some ((TypeAlias _ | ClassDef _ | EnumDef _ | Module _ | Value _) :: _) -> Some fullName
    | None when List.length ident.name > 1 ->
      let possibleEnumName = nsRev @ (ident.name |> List.take (List.length ident.name - 1))
      let possibleEnumCaseName = ident.name |> List.last
      let rec find = function
        | EnumDef e :: _ when e.cases |> List.exists (fun c -> c.name = possibleEnumCaseName) ->
          Some (possibleEnumName @ [possibleEnumCaseName])
        | _ :: xs -> find xs
        | [] -> onFail ()
      match ctx.definitionsMap |> Trie.tryFind possibleEnumName with
      | Some xs -> find xs
      | _ -> onFail ()
    | _ -> onFail ()

  let lookup (ctx: Context) (fullName: string list) : FullNameLookupResult list =
    let conv = function
      | TypeAlias a -> AliasName a |> Some
      | ClassDef c -> ClassName c |> Some
      | EnumDef e -> EnumName e |> Some
      | Module m -> ModuleName m |> Some
      | Value v -> ValueName v |> Some
      | _ -> None
    let result = ctx.definitionsMap |> Trie.tryFind fullName
    [
      match result with
      | Some xs -> yield! List.choose conv xs
      | None -> ()
      let containerName = fullName |> List.take (List.length fullName - 1)
      let itemName = List.last fullName
      let containerResult = ctx.definitionsMap |> Trie.tryFind containerName
      let notFound fmt =
        Printf.ksprintf (fun s -> NotFound (Some s)) fmt
      let rec find = function
        | EnumDef e :: rest ->
          match e.cases |> List.tryFind (fun c -> c.name = itemName) with
          | Some _ -> EnumCaseName (itemName, e) :: find rest
          | None ->
            notFound "The enum '%s' does not have a case '%s" (containerName |> String.concat ".") itemName :: find rest
        | ClassDef c :: rest ->
          let result =
            c.members |> List.tryPick (fun (ma, m) ->
              match m with
              | Field (fl, _, _) | Getter fl | Setter fl when fl.name = itemName -> MemberName (ma, m) |> Some
              | Method (name, _, _) when name = itemName -> MemberName (ma, m) |> Some
              | _ -> None
            )
          match result with
          | None ->
            match c.name with
            | Some name ->
              notFound "The class '%s' does not have a member '%s'" name itemName :: find rest
            | None ->
              notFound "The anonymous interface '%s' does not have a member '%s'" (Type.pp (AnonymousInterface c)) itemName :: find rest
          | Some x -> x :: find rest
        | _ :: rest -> find rest
        | [] -> [notFound "Current context doesn't contain '%s'" (fullName |> String.concat ".")]
      match containerResult with
      | Some xs -> yield! find xs
      | None -> ()
    ]

  let lookupWith ctx fullName picker =
    let result = lookup ctx fullName
    match List.tryPick picker result with
    | Some x -> x
    | None ->
      match List.choose (function NotFound msg -> msg | _ -> None) result with
      | [] ->
        failwithf "error: failed to find '%s' from the context. current context doesn't contain it."
          (String.concat "." fullName)
      | errors ->
        failwithf "error: failed to find '%s' from the context. %s"
          (errors |> List.map (fun s -> "       " + s) |> String.concat System.Environment.NewLine) 

  let tryLookupWith ctx fullName picker =
    lookup ctx fullName |> List.tryPick picker

  let isType ctx fullName =
    lookup ctx fullName
    |> List.exists (function
      | AliasName _ | ClassName _ | EnumName _ | EnumCaseName _ -> true
      | ModuleName _ | ValueName _ | MemberName _ | NotFound _ -> false)

module Type =
  let rec mapInTypeParam mapping (ctx: 'Context) (tp: TypeParam) =
    { tp with
        extends = Option.map (mapping ctx) tp.extends
        defaultType = Option.map (mapping ctx) tp.defaultType }

  and mapInArg mapping ctx (arg: Choice<FieldLike, Type>) =
    match arg with
    | Choice1Of2 a -> mapInFieldLike mapping ctx a |> Choice1Of2
    | Choice2Of2 t -> mapping ctx t |> Choice2Of2

  and mapInFuncType mapping (ctx: 'Context) f =
    { f with
        returnType = mapping ctx f.returnType
        args = List.map (mapInArg mapping ctx) f.args }

  and mapInClass mapping (ctx: 'Context) (c: Class) : Class =
    let mapMember = function
      | Field (f, m, tps) -> Field (mapInFieldLike mapping ctx f, m, List.map (mapInTypeParam mapping ctx) tps)
      | FunctionInterface (f, tps) -> FunctionInterface (mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | Indexer (f, m) -> Indexer (mapInFuncType mapping ctx f, m)
      | Constructor (c, tps) -> Constructor ({ c with args = List.map (mapInArg mapping ctx) c.args }, List.map (mapInTypeParam mapping ctx) tps)
      | Getter f -> Getter (mapInFieldLike mapping ctx f)
      | Setter f -> Setter (mapInFieldLike mapping ctx f)
      | New (f, tps) -> New (mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | Method (name, f, tps) -> Method (name, mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
    { c with
        implements = c.implements |> List.map (mapping ctx)
        members = c.members |> List.map (fun (a, m) -> a, mapMember m)
        typeParams = c.typeParams |> List.map (mapInTypeParam mapping ctx) }

  and mapInFieldLike mapping (ctx: 'Context) (fl: FieldLike) : FieldLike =
    { fl with value = mapping ctx fl.value }

  let mapInTupleType (f: Type -> Type) (ts: TupleType) =
    { ts with types = ts.types |> List.map (fun t -> {| t with value = f t.value|})}

  let rec substTypeVar (subst: Map<string, Type>) _ctx = function
    | TypeVar v ->
      match subst |> Map.tryFind v with
      | Some t -> t
      | None -> TypeVar v
    | Union u ->
      Union {
        types = u.types |> List.map (substTypeVar subst _ctx);
      }
    | Intersection i ->
      Intersection {
        types = i.types |> List.map (substTypeVar subst _ctx);
      }
    | Tuple ts -> Tuple (ts |> mapInTupleType (substTypeVar subst _ctx))
    | AnonymousInterface c -> AnonymousInterface (mapInClass (substTypeVar subst) _ctx c)
    | Function f -> Function (substTypeVarInFunction subst _ctx f)
    | App (t, ts, loc) -> App (t, ts |> List.map (substTypeVar subst _ctx), loc)
    | Ident i -> Ident i | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Erased (e, loc) ->
      let e' =
        match e with
        | IndexedAccess (t1, t2) -> IndexedAccess (substTypeVar subst _ctx t1, substTypeVar subst _ctx t2)
        | TypeQuery i -> TypeQuery i
        | Keyof t -> Keyof (substTypeVar subst _ctx t)
        | NewableFunction (f, typrms) ->
          let mapTyprm (tp: TypeParam) =
            { tp with
                extends = Option.map (substTypeVar subst _ctx) tp.extends
                defaultType = Option.map (substTypeVar subst _ctx) tp.defaultType }
          NewableFunction (substTypeVarInFunction subst _ctx f, List.map mapTyprm typrms)
      Erased (e', loc)
    | UnknownType msgo -> UnknownType msgo

  and substTypeVarInFunction subst _ctx f =
    { f with
        returnType = substTypeVar subst _ctx f.returnType;
        args = List.map (mapInArg (substTypeVar subst) _ctx) f.args }

  let findTypes (pred: Type -> Choice<bool, Type list> * 'a option) (t: Type) : 'a seq =
    let rec go_t x =
      match x with
      | App (t, ts, _) ->
        seq {
          let cont, y = pred x
          match y with Some v -> yield v | None -> ()
          match cont with
          | Choice1Of2 false -> ()
          | Choice1Of2 true ->
            yield! go_t (Type.ofAppLeftHandSide t)
            for t in ts do yield! go_t t
          | Choice2Of2 ts -> for t in ts do yield! go_t t
        }
      | Union { types = ts } | Intersection { types = ts } ->
        seq {
          let cont, y = pred x
          match y with Some v -> yield v | None -> ()
          match cont with
          | Choice1Of2 false -> ()
          | Choice1Of2 true ->
            for t in ts do yield! go_t t
          | Choice2Of2 ts -> for t in ts do yield! go_t t
        }
      | Tuple { types = ts } ->
        seq {
          let cont, y = pred x
          match y with Some v -> yield v | None -> ()
          match cont with
          | Choice1Of2 false -> ()
          | Choice1Of2 true -> for t in ts do yield! go_t t.value
          | Choice2Of2 ts -> for t in ts do yield! go_t t
        }
      | Function f ->
        seq {
          let cont, y = pred x
          match y with Some v -> yield v | None -> ()
          match cont with
          | Choice1Of2 false -> ()
          | Choice1Of2 true ->
            yield! go_t f.returnType
            for a in f.args do
              match a with
              | Choice1Of2 { value = t }
              | Choice2Of2 t ->
                yield! go_t t
          | Choice2Of2 ts -> for t in ts do yield! go_t t
        }
      | Erased (IndexedAccess (t1, t2), _) ->
        seq {
          let cont, y = pred x
          match y with Some v -> yield v | None -> ()
          match cont with
          | Choice1Of2 false -> ()
          | Choice1Of2 true ->
            yield! go_t t1
            yield! go_t t2
          | Choice2Of2 ts -> for t in ts do yield! go_t t
        }
      | AnonymousInterface c ->
        let cont, y = pred x
        let xs =
          match cont with
          | Choice1Of2 false -> Seq.empty
          | Choice1Of2 true ->
            let ra = ResizeArray()
            mapInClass (fun () t -> ra.Add(t); t) () c |> ignore;
            ra |> Seq.collect go_t
          | Choice2Of2 ts -> ts |> Seq.collect go_t
        Seq.append (Option.toList y) xs
      | x ->
        seq {
          let cont, y = pred x
          match y with Some v -> yield v | None -> ()
          match cont with
          | Choice1Of2 _ -> ()
          | Choice2Of2 ts -> for t in ts do yield! go_t t
        }
    go_t t

  let getTypeVars ty =
    findTypes (function
      | TypeVar s -> Choice1Of2 false, Some s
      | _ -> Choice1Of2 true, None
    ) ty

  let rec assignTypeParams fn (loc: Location) (typrms: TypeParam list) (xs: 'a list) (f: TypeParam -> 'a -> 'b) (g: TypeParam -> 'b) : 'b list =
    match typrms, xs with
    | typrm :: typrms, x :: xs ->
      f typrm x :: assignTypeParams fn loc typrms xs f g
    | typrm :: typrms, [] ->
      g typrm :: assignTypeParams fn loc typrms [] f g
    | [], [] -> []
    | [], _ :: _ ->
      failwithf "assignTypeParams: too many type arguments for type '%s' at %s" (String.concat "." fn) (loc.AsString)

  let createBindings fn (loc: Location) typrms ts =
    assignTypeParams fn loc typrms ts
      (fun tv ty -> tv.name, ty)
      (fun tv ->
        match tv.defaultType with
        | Some ty -> tv.name, ty
        | None ->
          failwithf "createBindings: insufficient type arguments for type '%s' at %s" (String.concat "." fn) (loc.AsString))
    |> Map.ofList

  let getPossibleArity (typrms: TypeParam list) : Set<int> =
    let maxArity = List.length typrms
    let rec go i = function
      | { defaultType = Some _ } :: rest -> (i-1) :: go (i-1) rest
      | _ -> []
    maxArity :: go maxArity typrms |> Set.ofList

  let mutable private inheritMap: Map<string list, Set<Type>> = Map.empty

  let rec getAllInheritances (ctx: Context) (ty: Type) : Set<Type> =
    let rec go t =
      seq {
        match t with
        | Ident { fullName = Some fn } ->
          yield! getAllInheritancesFromName ctx fn
        | App (AIdent { fullName = Some fn }, ts, loc) ->
          yield!
            FullName.lookup ctx fn
            |> List.tryPick (function
              | AliasName { typeParams = typrms; erased = false } | ClassName { typeParams = typrms } ->
                let subst = createBindings fn loc typrms ts
                getAllInheritancesFromName ctx fn |> Seq.map (substTypeVar subst ctx) |> Some
              | _ -> None
            ) |> Option.defaultValue Seq.empty
        | Union u -> yield! Set.intersectMany (List.map go u.types)
        | Intersection i -> yield! Set.unionMany (List.map go i.types)
        | _ -> ()
      } |> Set.ofSeq
    in go ty

  and getAllInheritancesFromName (ctx: Context) (className: string list) : Set<Type> =
    match inheritMap |> Map.tryFind className with
    | Some s -> s
    | None ->
      let result =
        FullName.lookup ctx className |> Seq.collect (function
          | ClassName c ->
            seq {
              for t in c.implements do
                yield t
                yield! getAllInheritances ctx t
            }
          | AliasName t when not t.erased -> getAllInheritances ctx t.target |> Set.toSeq
          | _ -> Seq.empty
        ) |> Set.ofSeq
      inheritMap <- inheritMap |> Map.add className result
      result

  let private createFunctionInterfaceBase isNewable (typrms: TypeParam list) ft loc =
    let usedTyprms =
      getTypeVars (Function ft)
      |> Set.ofSeq
    let boundTyprms =
      let typrms = typrms |> List.map (fun x -> x.name) |> Set.ofList
      Set.difference usedTyprms typrms
      |> Set.toList
      |> List.map (fun name -> { name = name; extends = None; defaultType = None })
    let ai =
      {
        comments = []
        name = None
        accessibility = Public
        isInterface = true
        isExported = Exported.No
        implements = []
        typeParams = boundTyprms
        members = [
          { comments = []; isStatic = false; accessibility = Public },
          if isNewable then New (ft, typrms)
          else FunctionInterface (ft, typrms)
        ]
      }
    if List.isEmpty boundTyprms then AnonymousInterface ai
    else
      App (AAnonymousInterface ai, boundTyprms |> List.map (fun x -> TypeVar x.name), loc)

  let createFunctionInterface = createFunctionInterfaceBase false
  let createNewableFunctionInterface = createFunctionInterfaceBase true

  let inline private (|Dummy|) _ = []
  let rec resolveErasedType ctx = function
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Ident i -> Ident i | TypeVar v -> TypeVar v | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
    | AnonymousInterface c -> mapInClass resolveErasedType ctx c |> AnonymousInterface
    | Union { types = types } -> Union { types = List.map (resolveErasedType ctx) types }
    | Intersection { types = types } -> Intersection { types = List.map (resolveErasedType ctx) types }
    | Tuple ts -> Tuple (mapInTupleType (resolveErasedType ctx) ts)
    | Function ft -> mapInFuncType resolveErasedType ctx ft |> Function
    | App (t, ts, loc) -> App (t, List.map (resolveErasedType ctx) ts, loc)
    | Erased (e, loc) ->
      match e with
      | IndexedAccess (tobj, tindex) ->
        let rec memberChooser m t2 =
          match m, t2 with
          | (Field (fl, _, []) | Getter fl | Setter fl),
            TypeLiteral (LString name) when fl.name = name ->
            if fl.isOptional then Some (Union { types = [fl.value; Prim Undefined] })
            else Some fl.value
          | Constructor (_, _), TypeLiteral (LString name) when name = "constructor" ->
            Some (Prim UntypedFunction)
          | Indexer (ft, _), (Prim Number | TypeLiteral (LInt _)) -> Some ft.returnType
          | Method (name', ft, typrms), TypeLiteral (LString name) when name = name' ->
            Some (createFunctionInterface typrms ft loc)
          | _, _ -> None
        let rec go t1 t2 =
          let onFail () =
            let tyText = Type.pp (Erased (IndexedAccess (t1, t2), loc))
            eprintfn "warn: cannot resolve an indexed access type '%s' at %s" tyText loc.AsString
            UnknownType (Some tyText)
          match t1, t2 with
          | Union { types = ts }, _ -> Union { types = List.map (fun t1 -> go t1 t2) ts }
          | Intersection { types = ts }, _ -> Intersection { types = List.map (fun t1 -> go t1 t2) ts }
          | AnonymousInterface c, _ ->
            let result = c.members |> List.choose (fun (ma, m) -> memberChooser m t2)
            match result with
            | [] -> onFail ()
            | [t] -> t
            | ts -> Intersection { types = ts }
          | App ((APrim Array | APrim ReadonlyArray), [t], _), Prim (Number | Any) -> resolveErasedType ctx t
          | Tuple ts, TypeLiteral (LInt i) ->
            match ts.types |> List.tryItem i with
            | Some t -> t.value
            | None -> onFail ()
          | Tuple ts, Prim (Number | Any) -> Union { types = ts.types |> List.map (fun x -> x.value) }
          | (App (AIdent { fullName = Some fn }, ts, loc) | (Ident { fullName = Some fn; loc = loc } & Dummy ts)), _ ->
            FullName.tryLookupWith ctx fn (function 
              | AliasName ta when not ta.erased ->
                let subst = createBindings fn loc ta.typeParams ts
                go ta.target t2 |> substTypeVar subst ctx |> Some
              | ClassName c ->
                let subst = createBindings fn loc c.typeParams ts
                go (AnonymousInterface c) t2 |> substTypeVar subst ctx |> Some
              | _ -> None
            ) |> Option.defaultWith onFail
          | _, _ -> onFail ()
        go (resolveErasedType ctx tobj) (resolveErasedType ctx tindex)
      | TypeQuery i ->
        let onFail () =
          let tyText = Type.pp (Erased (TypeQuery i, loc))
          eprintfn "warn: cannot resolve a type query '%s' at %s" tyText loc.AsString
          UnknownType (Some tyText)
        match i.fullName with
        | None -> onFail ()
        | Some fn ->
          let result typrms ty =
            match typrms, ty with
            | _ :: _, Function ft -> createFunctionInterface typrms ft loc
            | _ :: _, _ -> onFail ()
            | [], _ -> ty
          FullName.tryLookupWith ctx fn (function
            | ValueName v -> result v.typeParams v.typ |> Some
            | MemberName (_, m) ->
              match m with
              | Field (ft, _, typrms) | (Getter ft & Dummy typrms) | (Setter ft & Dummy typrms) ->
                match ft.isOptional, result typrms ft.value with
                | true, UnknownType msgo -> UnknownType msgo |> Some
                | true, t -> Union { types =  [t; Prim Undefined] } |> Some
                | false, t -> Some t
              | Method (_, ft, typrms) -> result typrms (Function ft) |> Some
              | _ -> None
            | _ -> None
          ) |> Option.defaultWith onFail
      | Keyof t ->
        let t = resolveErasedType ctx t
        let onFail () =
          let tyText = Type.pp t
          eprintfn "warn: cannot resolve a type operator 'keyof %s' at %s" tyText loc.AsString
          UnknownType (Some tyText) 
        let memberChooser = function
          | Field (fl, _, _) | Getter fl | Setter fl -> Set.singleton (TypeLiteral (LString fl.name))
          | Method (name, _, _) -> Set.singleton (TypeLiteral (LString name))
          | _ -> Set.empty
        let rec go = function
          | Union { types = ts } -> ts |> List.map go |> Set.intersectMany
          | Intersection { types = ts } -> ts |> List.map go |> Set.unionMany
          | AnonymousInterface i ->
            i.members |> List.map (snd >> memberChooser) |> Set.unionMany
          | App ((APrim Array | APrim ReadonlyArray), [_], _) | Tuple _ -> Set.singleton (Prim Number)
          | (App (AIdent { fullName = Some fn }, ts, loc) | (Ident { fullName = Some fn; loc = loc } & Dummy ts)) ->
            FullName.tryLookupWith ctx fn (function
              | AliasName ta when not ta.erased ->
                let subst = createBindings fn loc ta.typeParams ts
                go ta.target |> Set.map (substTypeVar subst ctx) |> Some
              | ClassName c ->
                let subst = createBindings fn loc c.typeParams ts
                c.members |> List.map (snd >> memberChooser >> Set.map (substTypeVar subst ctx)) |> Set.unionMany |> Some
              | _ -> None
            ) |> Option.defaultValue Set.empty
          | _ -> Set.empty
        match Set.toList (go t) with
        | [] -> onFail ()
        | [t] -> t
        | types -> Union { types = types }
      | NewableFunction (f, tyargs) -> createNewableFunctionInterface tyargs f loc
    | UnknownType msgo -> UnknownType msgo

module Statement =
  let rec replaceAliasToFunctionWithInterface = function
    | Module m ->
      Module { m with statements = List.map replaceAliasToFunctionWithInterface m.statements }
    | TypeAlias ta ->
      match ta.target with
      | Function f ->
        ClassDef {
          name = Some ta.name
          isInterface = true
          comments = []
          accessibility = Protected
          isExported = Exported.No
          implements = []
          typeParams = ta.typeParams
          members = [ 
            { comments = []; accessibility = Public; isStatic = false },
            FunctionInterface (f, [])
          ]
        }
      | _ -> TypeAlias ta
    | x -> x

  let rec merge (stmts: Statement list) =
    let mutable result : Choice<Statement, Class ref, Module ref> list = []
    let mutable intfMap = Map.empty
    let mutable nsMap = Map.empty
    for stmt in stmts do
      match stmt with
      | ClassDef i when i.isInterface ->
        match intfMap |> Map.tryFind i.name with
        | None ->
          let iref = ref i
          intfMap <- (intfMap |> Map.add i.name iref)
          result <- Choice2Of3 iref :: result
        | Some iref' ->
          let i' =
            let mapping =
              List.map2
                (fun (tp: TypeParam) (tp': TypeParam) -> tp'.name, TypeVar tp.name)
                i.typeParams (!iref').typeParams
            !iref' |> Type.mapInClass (Type.substTypeVar (mapping |> Map.ofList)) ()
          assert (i.accessibility = i'.accessibility)
          let implements = List.distinct (i.implements @ i'.implements)
          let members = i.members @ i'.members
          let i = { i with implements = implements; members = members }
          iref' := i
      | Module n (* when n.isNamespace *) ->
        match nsMap |> Map.tryFind n.name with
        | None ->
          let nref = ref n
          nsMap <- (nsMap |> Map.add n.name nref)
          result <- Choice3Of3 nref :: result
        | Some nref' ->
          nref' := { n with statements = (!nref').statements @ n.statements }
      | stmt ->
        result <- Choice1Of3 stmt :: result
    result
    |> List.rev
    |> List.map (function
      | Choice1Of3 s -> s
      | Choice2Of3 i -> ClassDef !i
      | Choice3Of3 n ->
        Module { !n with statements = merge (!n).statements }
    )

  let extractNamedDefinitions (stmts: Statement list) : Trie<string, Statement list> =
    let rec go (ns: string list) trie s =
      match s with
      | TypeAlias { erased = true }
      | Export _
      | UnknownStatement _
      | FloatingComment _ -> trie
      | TypeAlias { name = name; erased = false }
      | ClassDef  { name = Some name }
      | EnumDef   { name = name }
      | Value     { name = name } ->
        trie |> Trie.addOrUpdate (ns @ [name]) [s] List.append
      | ClassDef  { name = None } -> failwith "impossible_extractNamedDefinitions"
      | Module m ->
        let ns' = ns @ [m.name]
        m.statements |> List.fold (go ns') trie |> Trie.addOrUpdate ns' [Module m] List.append
    stmts |> List.fold (go []) Trie.empty

  let findTypesInStatements pred (stmts: Statement list) : 'a seq =
    let rec go = function
      | TypeAlias ta ->
        seq {
          yield! Type.findTypes pred ta.target;
          for tp in ta.typeParams do
            yield! [tp.defaultType; tp.extends] |> List.choose id |> Seq.collect (Type.findTypes pred)
        }
      | ClassDef c -> Type.findTypes pred (AnonymousInterface c)
      | Module m ->
        m.statements |> Seq.collect go
      | Value v ->
        seq {
          yield! Type.findTypes pred v.typ
          for tp in v.typeParams do
            yield! [tp.defaultType; tp.extends] |> List.choose id |> Seq.collect (Type.findTypes pred)
        }
      | EnumDef e ->
        e.cases |> Seq.choose (fun c -> c.value)
                |> Seq.collect (fun l -> Type.findTypes pred (TypeLiteral l))
      | Export _ | UnknownStatement _ | FloatingComment _ -> Seq.empty
    stmts |> Seq.collect go

  let getTypeLiterals stmts =
    findTypesInStatements (function TypeLiteral l -> Choice1Of2 true, Some l | _ -> Choice1Of2 true, None) stmts |> Set.ofSeq

  let getAnonymousInterfaces stmts =
    findTypesInStatements (function
      | AnonymousInterface c when Option.isNone c.name -> Choice1Of2 true, Some c
      | _ -> Choice1Of2 true, None
    ) stmts |> Set.ofSeq

  let getUnknownIdentifiers stmts =
    findTypesInStatements (function
      | App (AIdent {name = name; fullName = None}, ts, _) ->
        Choice2Of2 ts, Some (name, Set.singleton (List.length ts))
      | Ident { name = name; fullName = None } ->
        Choice1Of2 true, Some (name, Set.singleton (0))
      //| App (AIdent {name = name; fullName = Some fn}, ts, _) when 
      | _ -> Choice1Of2 true, None
    ) stmts |> Seq.fold (fun state (k, v) -> Trie.addOrUpdate k v Set.union state) Trie.empty

  let rec mapType mapping ctx stmts =
    let f = function
      | TypeAlias a ->
        TypeAlias {
          a with
            target = mapping ctx a.target
            typeParams = a.typeParams |> List.map (Type.mapInTypeParam mapping ctx)
        }
      | ClassDef c ->
        ClassDef (Type.mapInClass mapping ctx c)
      | EnumDef e -> EnumDef e
      | Export (e, c) -> Export (e, c)
      | Value v ->
        Value {
          v with
            typ = mapping ctx v.typ
            typeParams = v.typeParams |> List.map (Type.mapInTypeParam mapping ctx)
        }
      | Module m ->
        Module {
          m with
            statements =
              mapType
                mapping
                { ctx with currentNamespace = m.name :: ctx.currentNamespace }
                m.statements 
        }
      | UnknownStatement (msgo, c) -> UnknownStatement (msgo, c)
      | FloatingComment c -> FloatingComment c
    stmts |> List.map f

  let resolveErasedTypes (ctx: Context) (stmts: Statement list) =
    mapType Type.resolveErasedType ctx stmts

module Ident =
  let rec mapInType (mapping: Context -> IdentType -> IdentType) (ctx: Context) = function
    | Ident i -> Ident (mapping ctx i)
    | Union u -> Union { types = u.types |> List.map (mapInType mapping ctx) }
    | Intersection i -> Intersection { types = i.types |> List.map (mapInType mapping ctx) }
    | Tuple ts -> Tuple (Type.mapInTupleType (mapInType mapping ctx) ts)
    | AnonymousInterface c -> AnonymousInterface (Type.mapInClass (mapInType mapping) ctx c)
    | Function f -> Function (mapInFunction mapping ctx f)
    | App (t, ts, loc) -> App (mapInAppLHS mapping ctx t, ts |> List.map (mapInType mapping ctx), loc)
    | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l | TypeVar v -> TypeVar v
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Erased (e, loc) ->
      let e' =
        match e with
        | IndexedAccess (t1, t2) -> IndexedAccess (mapInType mapping ctx t1, mapInType mapping ctx t2)
        | TypeQuery i -> TypeQuery (mapping ctx i)
        | Keyof t -> Keyof (mapInType mapping ctx t)
        | NewableFunction (f, typrms) ->
          let mapTyprm (tp: TypeParam) =
            { tp with
                extends = Option.map (mapInType mapping ctx) tp.extends
                defaultType = Option.map (mapInType mapping ctx) tp.defaultType }
          NewableFunction (mapInFunction mapping ctx f, List.map mapTyprm typrms)
      Erased (e', loc)
    | UnknownType msg -> UnknownType msg

  and mapInFunction mapping ctx f =
    { f with
        returnType = mapInType mapping ctx f.returnType;
        args = List.map (Type.mapInArg (mapInType mapping) ctx) f.args }

  and mapInAppLHS mapping ctx = function
    | APrim p -> APrim p
    | AIdent i -> AIdent (mapping ctx i)
    | AAnonymousInterface i -> AAnonymousInterface (Type.mapInClass (mapInType mapping) ctx i)

  let rec mapInStatements mapType mapExport (ctx: Context) (stmts: Statement list) : Statement list =
    let f = function
      | TypeAlias a ->
        TypeAlias {
          a with
            target = mapInType mapType ctx a.target
            typeParams = a.typeParams |> List.map (Type.mapInTypeParam (mapInType mapType) ctx)
        }
      | ClassDef c ->
        ClassDef (Type.mapInClass (mapInType mapType) ctx c)
      | EnumDef e -> EnumDef e
      | Export (e, c) -> Export (mapExport ctx e, c)
      | Value v ->
        Value {
          v with
            typ = mapInType mapType ctx v.typ
            typeParams = v.typeParams |> List.map (Type.mapInTypeParam (mapInType mapType) ctx)
        }
      | Module m ->
        Module {
          m with
            statements =
              mapInStatements 
                mapType mapExport
                { ctx with currentNamespace = m.name :: ctx.currentNamespace }
                m.statements 
        }
      | UnknownStatement (msgo, c) -> UnknownStatement (msgo, c) | FloatingComment c -> FloatingComment c
    stmts |> List.map f

  let resolve (ctx: Context) (i: IdentType) : IdentType =
    match i.fullName with
    | Some _ -> i
    | None ->
      match FullName.ofIdent ctx i with
      | Some fn -> { i with fullName = Some fn }
      | None -> i

  let resolveInStatements (ctx: Context) (stmts: Statement list) : Statement list =
    mapInStatements
      (fun ctx i -> resolve ctx i)
      (fun ctx -> function
        | CommonJsExport i -> CommonJsExport (resolve ctx i)
        | ES6DefaultExport i -> ES6DefaultExport (resolve ctx i)
        | ES6Export xs -> ES6Export (xs |> List.map (fun x -> {| x with target = resolve ctx x.target |}))
        | ExportAsNamespace ns -> ExportAsNamespace ns
      ) ctx stmts

type TypeofableType = TNumber | TString | TBoolean | TSymbol | TBigInt

type ResolvedUnion = {
  caseNull: bool
  caseUndefined: bool
  typeofableTypes: Set<TypeofableType>
  caseArray: Set<Type> option
  caseEnum: Set<Choice<EnumCase, Literal>>
  discriminatedUnions: Map<string, Map<Literal, Type>>
  otherTypes: Set<Type>
}

module TypeofableType =
  let toType = function
    | TNumber -> Prim Number
    | TString -> Prim String
    | TBoolean -> Prim Bool
    | TSymbol -> Prim Symbol
    | TBigInt -> Prim BigInt

module ResolvedUnion =
  let rec pp (ru: ResolvedUnion) =
    let cases = [
      if ru.caseNull then yield "null"
      if ru.caseUndefined then yield "undefined"
      for x in ru.typeofableTypes do
        yield
          match x with TNumber -> "number" | TString -> "string" | TBoolean -> "boolean" | TSymbol -> "symbol" | TBigInt -> "bigint"
      match ru.caseArray with
      | Some t -> yield sprintf "array<%s>" (t |> Set.toSeq |> Seq.map Type.pp |> String.concat " | ")
      | None -> ()
      if not (Set.isEmpty ru.caseEnum) then
        let cases =
          ru.caseEnum
          |> Set.toSeq
          |> Seq.map (function
            | Choice1Of2 { name = name; value = Some value } -> sprintf "%s=%s" name (Literal.toString value)
            | Choice1Of2 { name = name; value = None } -> sprintf "%s=?" name
            | Choice2Of2 l -> Literal.toString l)
        yield sprintf "enum<%s>" (cases |> String.concat " | ")
      for k, m in ru.discriminatedUnions |> Map.toSeq do
        yield sprintf "du[%s]<%s>" k (m |> Map.toSeq |> Seq.map (snd >> Type.pp) |> String.concat ", ")
      for t in ru.otherTypes |> Set.toSeq do yield Type.pp t
    ]
    cases |> String.concat " | "

  let rec private getEnumFromUnion ctx (u: UnionType) : Set<Choice<EnumCase, Literal>> * UnionType =
    let (|Dummy|) _ = []

    let rec go t =
      seq {
        match t with
        | Union { types = types } -> yield! Seq.collect go types
        | Intersection { types = types } -> yield! types |> List.map (go >> Set.ofSeq) |> Set.intersectMany |> Set.toSeq
        | (Ident { fullName = Some fn; loc = loc } & Dummy tyargs) | App (AIdent { fullName = Some fn }, tyargs, loc) ->
          for x in fn |> FullName.lookup ctx do
            match x with
            | AliasName a when not a.erased ->
              let bindings = Type.createBindings fn loc a.typeParams tyargs
              yield! go (a.target |> Type.substTypeVar bindings ())
            | EnumName e ->
              for c in e.cases do yield Choice1Of2 (Choice1Of2 c)
            | EnumCaseName (name, e) ->
              match e.cases |> List.tryFind (fun c -> c.name = name) with
              | Some c -> yield Choice1Of2 (Choice1Of2 c)
              | None -> yield Choice2Of2 t
            | _ -> yield Choice2Of2 t
        | TypeLiteral l -> yield Choice1Of2 (Choice2Of2 l)
        | _ -> yield Choice2Of2 t
      }

    let f (cases, types) ty =
      let c, rest = go ty |> Seq.fold (fun (e, rest) -> function Choice1Of2 x -> Set.add x e, rest | Choice2Of2 x -> e, x::rest) (Set.empty, [])
      match Set.isEmpty c, rest with
      | true,  [] -> cases, types
      | true,  _  -> cases, ty :: types // preserve the original type as much as possible
      | false, [] -> Set.union c cases, types
      | false, ts -> Set.union c cases, ts @ types

    let cases, types = u.types |> List.fold f (Set.empty, [])
    cases, { types = types }

  let private getDiscriminatedFromUnion ctx (u: UnionType) : Map<string, Map<Literal, Type>> * UnionType =
    let (|Dummy|) _ = []

    let rec getLiteralFieldsFromType (ty: Type) : Map<string, Set<Literal>> =
      match ty with
      | Intrinsic | PolymorphicThis | TypeVar _ | Prim _ | TypeLiteral _ | Tuple _ | Function _ -> Map.empty
      | Erased _ -> failwith "impossible_getDiscriminatedFromUnion_getLiteralFieldsFromType_Erased"
      | Union u ->
        let result = u.types |> List.map getLiteralFieldsFromType
        result |> List.fold (fun state fields ->
          fields |> Map.fold (fun state k v ->
            match state |> Map.tryFind k with
            | None -> state |> Map.add k v
            | Some v' -> state |> Map.add k (Set.union v v')
          ) state
        ) Map.empty
      | Intersection i ->
        let result = i.types |> List.map getLiteralFieldsFromType
        result |> List.fold (fun state fields ->
          fields |> Map.fold (fun state k v ->
            match state |> Map.tryFind k with
            | None -> state |> Map.add k v
            | Some v' -> state |> Map.add k (Set.intersect v v')
          ) state
        ) Map.empty |> Map.filter (fun _ v -> Set.isEmpty v |> not)
      | AnonymousInterface c -> getLiteralFieldsFromClass c
      | App (AAnonymousInterface c, ts, loc) ->
        let name = sprintf "anonymous interface %d" (ctx.anonymousInterfacesMap |> Map.find c)
        let bindings = Type.createBindings [name] loc c.typeParams ts
        getLiteralFieldsFromClass (c |> Type.mapInClass (Type.substTypeVar bindings) ())
      | (Ident { fullName = Some fn; loc = loc } & Dummy ts) | App (AIdent { fullName = Some fn }, ts, loc) ->
        let go = function
          | AliasName a when not a.erased ->
            if List.isEmpty ts then Some (getLiteralFieldsFromType a.target)
            else
              let lhs =
                match a.target with
                | Ident i -> AIdent i
                | Prim p -> APrim p
                | AnonymousInterface c -> AAnonymousInterface c
                | _ -> failwithf "error: invalid type alias to '%s' on %s" (Type.pp a.target) (loc.AsString)
              Some (getLiteralFieldsFromType (App (lhs, ts, UnknownLocation)))
          | ClassName c ->
            if List.isEmpty ts then Some (getLiteralFieldsFromClass c)
            else
              let bindings = Type.createBindings fn loc c.typeParams ts
              Some (getLiteralFieldsFromClass (c |> Type.mapInClass (Type.substTypeVar bindings) ()))
          | _ -> None
        match FullName.lookup ctx fn |> List.tryPick go with
        | Some t -> t
        | None -> Map.empty
      | Prim _ | App (APrim _, _, _) -> Map.empty
      | Ident { fullName = None } | App (AIdent { fullName = None }, _, _) -> Map.empty
      | Ident { fullName = Some _ } -> failwith "impossible_getDiscriminatedFromUnion_getLiteralFieldsFromType_Ident"
      | UnknownType _ -> Map.empty

    and getLiteralFieldsFromClass (c: Class) : Map<string, Set<Literal>> =
      let inherited =
        c.implements
        |> List.map getLiteralFieldsFromType
        |> List.fold (fun state fields ->
          fields |> Map.fold (fun state k v ->
            match state |> Map.tryFind k with
            | None -> state |> Map.add k v
            | Some v' -> state |> Map.add k (Set.intersect v v')
          ) state
        ) Map.empty |> Map.filter (fun _ v -> Set.isEmpty v |> not)

      let fields =
        c.members
        |> List.collect (fun (_, m) ->
          match m with
          | Field (fl, _, []) ->
            let rec go t =
              match t with
              | TypeLiteral l -> [fl.name, l]
              | Union u -> List.collect go u.types
              | (Ident { fullName = Some fn; loc = loc } & Dummy ts) | App (AIdent { fullName = Some fn }, ts, loc) ->
                FullName.tryLookupWith ctx fn (function
                  | EnumName e ->
                    e.cases |> List.choose (function { value = Some v } -> Some (fl.name, v) | _ -> None) |> Some
                  | EnumCaseName (cn, e) ->
                    match e.cases |> List.tryFind (fun c -> c.name = cn) with
                    | Some { value = Some v } -> Some [fl.name, v]
                    | _ -> None
                  | AliasName a when not a.erased ->
                    let bindings = Type.createBindings fn loc a.typeParams ts
                    go (a.target |> Type.substTypeVar bindings ()) |> Some
                  | _ -> None
                ) |> Option.defaultValue []
              | _ -> []
            go fl.value
          | _ -> []
        )
        |> List.distinct
        |> List.groupBy fst
        |> List.map (fun (k, v) -> k, v |> List.map snd |> Set.ofList)
        |> Map.ofList

      Map.foldBack Map.add fields inherited // overwrite inherited fields overloaded by the class

    let discriminatables, rest =
      List.foldBack (fun ty (discriminatables, rest) ->
        let fields = getLiteralFieldsFromType ty
        if Map.isEmpty fields then discriminatables, ty :: rest
        else (ty, fields) :: discriminatables, rest
      ) u.types ([], [])

    let tagDict = new System.Collections.Generic.Dictionary<string, uint32 * Set<Literal>>()
    for (_, fields) in discriminatables do
      for (name, values) in fields |> Map.toSeq do
        match tagDict.TryGetValue(name) with
        | true, (i, values') -> tagDict.[name] <- (i + 1u, Set.intersect values values')
        | false, _ -> tagDict.[name] <- (1u, values)

    let getBestTag (fields: Map<string, Set<Literal>>) =
      let xs =
        fields
        |> Map.toList
        |> List.choose (fun (name, values) ->
          match tagDict.TryGetValue(name) with
          | true, (i, commonValues) ->
            let intersect = Set.intersect values commonValues
            Some ((-(Set.count intersect), i), (name, values)) // prefer the tag with the least intersections
          | false, _ -> None)
      if List.isEmpty xs then None
      else Some (xs |> List.maxBy fst |> snd)

    let discriminatables, rest =
      List.foldBack (fun (ty, fields) (discriminatables, rest) ->
        match getBestTag fields with
        | Some (name, values) -> (name, values, ty) :: discriminatables, rest
        | None -> discriminatables, ty :: rest
      ) discriminatables ([], rest)

    if List.length discriminatables < 2 then
      Map.empty, { u with types = List.distinct u.types }
    else
      let dus =
        discriminatables
        |> List.collect (fun (name, values, ty) ->
          values |> Set.toList |> List.map (fun value -> name, (value, ty)))
        |> List.groupBy fst
        |> List.map (fun (name, xs) ->
          name,
          xs |> List.map snd
             |> List.groupBy fst
             |> List.map (fun (k, xs) ->
                  match List.map snd xs |> List.distinct with
                  | [x] -> k, x
                  | xs -> k, Union { types = xs })
             |> Map.ofList)
        |> Map.ofList
      dus, { types = List.distinct rest }

  let mutable private resolveUnionMap: Map<UnionType, ResolvedUnion> = Map.empty

  let rec resolve (ctx: Context) (u: UnionType) : ResolvedUnion =
    match resolveUnionMap |> Map.tryFind u with
    | Some t -> t
    | None ->
      let nullOrUndefined, rest =
        u.types |> List.partition (function Prim (Null | Undefined) -> true | _ -> false)
      let caseNull = nullOrUndefined |> List.contains (Prim Null)
      let caseUndefined = nullOrUndefined |> List.contains (Prim Undefined)
      let prims, arrayTypes, rest =
        rest |> List.fold (fun (prims, ats, rest) ->
          function
          | Prim Number -> TNumber  :: prims, ats, rest
          | Prim String -> TString  :: prims, ats, rest
          | Prim Bool   -> TBoolean :: prims, ats, rest
          | Prim Symbol -> TSymbol  :: prims, ats, rest
          | Prim BigInt -> TBigInt  :: prims, ats, rest
          | App (APrim Array, [t], _) -> prims, t :: ats, rest
          | t -> prims, ats, t :: rest
        ) ([], [], [])
      let typeofableTypes = Set.ofList prims
      let caseArray =
        if List.isEmpty arrayTypes then None
        else Some (Set.ofList arrayTypes) 
      let caseEnum, rest =
        match rest with
        | _ :: _ :: _ -> getEnumFromUnion ctx { types = rest }
        | _ -> Set.empty, { types = rest }
      let discriminatedUnions, rest =
        match rest.types with
        | _ :: _ :: _ -> getDiscriminatedFromUnion ctx rest
        | _ -> Map.empty, rest
      let otherTypes = Set.ofList rest.types

      let result = 
        { caseNull = caseNull
          caseUndefined = caseUndefined
          typeofableTypes = typeofableTypes
          caseArray = caseArray
          caseEnum = caseEnum
          discriminatedUnions = discriminatedUnions
          otherTypes = otherTypes }
      
      resolveUnionMap <- resolveUnionMap |> Map.add u result
      result

let private createRootContextForTyper internalModuleName stmts =
  let add name ty m =
    if m |> Trie.containsKey [name] then m
    else
      m |> Trie.add [name] [TypeAlias { name = name; typeParams = []; target = ty; erased = true; comments = [] }]
  let m =
    Statement.extractNamedDefinitions stmts
    |> add "String" (Prim String)
    |> add "Boolean" (Prim Bool)
    |> add "Number" (Prim Number)
    |> add "Object" (Prim Object)
    |> add "Function" (Prim UntypedFunction)
    |> add "Symbol" (Prim Symbol)
    |> add "RegExp" (Prim RegExp)
    |> add "Array" (Prim Array)
    |> add "ReadonlyArray" (Prim ReadonlyArray)
    |> add "BigInt" (Prim BigInt)
  {
    internalModuleName = internalModuleName
    currentNamespace = []
    definitionsMap = m
    typeLiteralsMap = Map.empty
    anonymousInterfacesMap = Map.empty
    unknownIdentifiers = Trie.empty
  }

let createRootContext (internalModuleName: string) (stmts: Statement list) : Context =
  let tlm = Statement.getTypeLiterals stmts |> Seq.mapi (fun i l -> l, i) |> Map.ofSeq
  let aim = Statement.getAnonymousInterfaces stmts |> Seq.mapi (fun i c -> c, i) |> Map.ofSeq
  let uid = Statement.getUnknownIdentifiers stmts
  { createRootContextForTyper internalModuleName stmts with
      typeLiteralsMap = tlm
      anonymousInterfacesMap = aim
      unknownIdentifiers = uid }

let runAll stmts =
  let result =
    stmts |> List.map Statement.replaceAliasToFunctionWithInterface // replace alias to function type with a function interface
          |> Statement.merge // merge modules, interfaces, etc
  // build a context
  let ctx = createRootContextForTyper "Internal" result
  
  // resolve every identifier into its full name
  let result = result |> Ident.resolveInStatements ctx
  // rebuild the context with the identifiers resolved to full name
  let ctx = createRootContextForTyper "Internal" result

  // resolve every indexed access type and type query
  let result = result |> Statement.resolveErasedTypes ctx
  // rebuild the context because resolbeIndexedAccessAndTypeQuery may introduce additional anonymous function interfaces
  let ctx = createRootContext "Internal" result

  ctx, result