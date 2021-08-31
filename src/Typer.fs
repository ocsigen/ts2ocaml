module Typer

open Syntax

type TyperOptions =
  inherit GlobalOptions

module TyperOptions =
  let add (yargs: Yargs.Argv<_>) =
    yargs

type Context<'Options, 'State> = {|
  currentNamespace: string list
  definitionsMap: Trie<string, Statement list>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<Class, int>
  unknownIdentTypes: Trie<string, Set<int>>
  options: 'Options
  state: 'State
|}

let inline private warn (ctx: Context<TyperOptions, _>) (loc: Location) fmt =
  Printf.kprintf (fun s ->
    if ctx.options.verbose then eprintfn "warn: %s at %s" s loc.AsString
  ) fmt

module Context =
  let mapOptions (f: 'a -> 'b) (ctx: Context<'a, 's>) : Context<'b, 's> =
    {| ctx with options = f ctx.options |}

  let mapState (f: 's -> 't) (ctx: Context<'a, 's>) : Context<'a, 't> =
    {| ctx with state = f ctx.state |}

  let ofParentNamespace (ctx: Context<'a, 's>) : Context<'a, 's> option =
    match ctx.currentNamespace with
    | [] -> None
    | _ :: ns -> Some {| ctx with currentNamespace = ns |}

  let ofChildNamespace childName (ctx: Context<'a, 's>) : Context<'a, 's> =
    {| ctx with currentNamespace = childName :: ctx.currentNamespace |}

  let getFullName (name: string list) (ctx: Context<'a, 's>) =
    (List.rev ctx.currentNamespace @ name) |> String.concat "."

  /// `Error relativeNameOfCurrentNamespace` when `fullName` is a parent of current namespace.
  /// `Ok name` otherwise.
  let getRelativeNameTo (fullName: string list) (ctx: Context<'a, 's>) =
    let rec go name selfPos =
      match name, selfPos with
      | x :: [], y :: ys  when x = y -> Error ys
      | x :: xs, y :: ys when x = y -> go xs ys
      | xs, _ -> Ok xs
    go fullName (List.rev ctx.currentNamespace)

type FullNameLookupResult =
  | AliasName of TypeAlias
  | ClassName of Class
  | EnumName of Enum
  | EnumCaseName of string * Enum
  | ModuleName of Module
  | ValueName of Value
  | MemberName of MemberAttribute * Member
  | ImportedName of string * Set<Kind> option * Import
  | NotFound of string option

module FullName =
  let rec ofIdent (ctx: Context<'a, 's>) (ident: IdentType) : string list option =
    let nsRev = List.rev ctx.currentNamespace
    let fullName = nsRev @ ident.name
    let onFail () =
      match Context.ofParentNamespace ctx with Some ctx -> ofIdent ctx ident | None -> None
    match ctx.definitionsMap |> Trie.tryFind fullName with
    | Some ((TypeAlias _ | ClassDef _ | EnumDef _ | Module _ | Value _ | Import _) :: _) -> Some fullName
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

  let lookup (ctx: Context<'a, 's>) (fullName: string list) : FullNameLookupResult list =
    let conv name = function
      | TypeAlias a -> AliasName a |> Some
      | ClassDef c -> ClassName c |> Some
      | EnumDef e -> EnumName e |> Some
      | Module m -> ModuleName m |> Some
      | Value v -> ValueName v |> Some
      | Import i ->
        match i.clause with
        | NamespaceImport ni when ni.name = name -> ImportedName (ni.name, ni.kind, i) |> Some
        | ES6Import x ->
          match x.defaultImport with
          | Some di when di.name = name -> ImportedName (name, di.kind, i) |> Some
          | _ ->
            x.bindings
            |> List.tryFind (fun b ->
              match b.renameAs with
              | Some renamed -> renamed = name
              | None -> b.name = name)
            |> Option.map (fun b -> ImportedName (name, b.kind, i))
        | _ -> None
      | _ -> None
    let result = ctx.definitionsMap |> Trie.tryFind fullName
    [
      let itemName = List.last fullName
      match result with
      | Some xs -> yield! List.choose (conv itemName) xs
      | None -> ()
      let containerName = fullName |> List.take (List.length fullName - 1)
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
      | ModuleName _ | ValueName _ | MemberName _ | NotFound _ -> false
      | ImportedName (n, kind, i) ->
        if i.isTypeOnly then true
        else
          match kind with
          | Some k -> k |> Set.contains Kind.Type
          | None ->
            match i.clause with
            | NamespaceImport _ -> false
            | _ -> n |> Naming.isCase Naming.PascalCase
      )

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
      | UnknownMember msgo -> UnknownMember msgo
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
    | Erased (e, loc, origText) ->
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
      Erased (e', loc, origText)
    | UnknownType msgo -> UnknownType msgo

  and substTypeVarInFunction subst _ctx f =
    { f with
        returnType = substTypeVar subst _ctx f.returnType;
        args = List.map (mapInArg (substTypeVar subst) _ctx) f.args }

  let rec findTypesInFieldLike pred (fl: FieldLike) = findTypes pred fl.value
  and findTypesInTypeParam pred (tp: TypeParam) =
    seq {
      yield! tp.extends |> Option.map (findTypes pred) |> Option.defaultValue Seq.empty
      yield! tp.defaultType |> Option.map (findTypes pred) |> Option.defaultValue Seq.empty
    }
  and findTypesInFuncType pred (ft: FuncType<Type>) =
    seq {
      for arg in ft.args do
        match arg with
        | Choice1Of2 fl -> yield! findTypesInFieldLike pred fl
        | Choice2Of2 t -> yield! findTypes pred t
      yield! findTypes pred ft.returnType
    }
  and findTypesInClassMember pred (m: Member) : 'a seq =
    match m with
    | Field (fl, _, tps) ->
      seq { yield! findTypesInFieldLike pred fl; for tp in tps do yield! findTypesInTypeParam pred tp }
    | Method (_, ft, tps)
    | FunctionInterface (ft, tps)
    | New (ft, tps) ->
      seq { yield! findTypesInFuncType pred ft; for tp in tps do yield! findTypesInTypeParam pred tp }
    | Indexer (ft, _) ->
      seq { yield! findTypesInFuncType pred ft }
    | Getter fl | Setter fl -> seq { yield! findTypesInFieldLike pred fl }
    | Constructor (ft, tps) ->
      seq {
        for arg in ft.args do
          match arg with
          | Choice1Of2 fl -> yield! findTypesInFieldLike pred fl
          | Choice2Of2 t -> yield! findTypes pred t
        for tp in tps do yield! findTypesInTypeParam pred tp
      }
    | UnknownMember _ -> Seq.empty
  and findTypes (pred: Type -> Choice<bool, Type list> * 'a option) (t: Type) : 'a seq =
    let rec go_t x =
      seq {
        let cont, y = pred x
        match y with Some v -> yield v | None -> ()
        match cont with
        | Choice1Of2 false -> ()
        | Choice2Of2 ts -> for t in ts do yield! go_t t
        | Choice1Of2 true ->
          match x with
          | App (t, ts, _) ->
            yield! go_t (Type.ofAppLeftHandSide t)
            for t in ts do yield! go_t t
          | Union { types = ts } | Intersection { types = ts } ->
            for t in ts do yield! go_t t
          | Tuple { types = ts } ->
            for t in ts do yield! go_t t.value
          | Function f -> yield! findTypesInFuncType pred f
          | Erased (e, _, _) ->
            match e with
            | IndexedAccess (t1, t2) ->
              yield! go_t t1
              yield! go_t t2
            | TypeQuery i ->
              yield! findTypes pred (Ident i)
            | Keyof t ->
              yield! findTypes pred t
            | NewableFunction (ft, tps) ->
              yield! findTypesInFuncType pred ft
              for tp in tps do
                yield! findTypesInTypeParam pred tp
          | AnonymousInterface c ->
            for impl in c.implements do yield! findTypes pred impl
            for tp in c.typeParams do yield! findTypesInTypeParam pred tp
            for _, m in c.members do yield! findTypesInClassMember pred m
          | Intrinsic | PolymorphicThis | Ident _ | TypeVar _ | Prim _ | TypeLiteral _ | UnknownType _ -> ()
      }
    go_t t

  let getTypeVars ty =
    findTypes (function
      | TypeVar s -> Choice1Of2 false, Some s
      | _ -> Choice1Of2 true, None
    ) ty

  let rec getFreeTypeVarsPredicate t =
    match t with
    | TypeVar s -> Choice1Of2 true, Some (Set.singleton s)
    | AnonymousInterface a ->
      let memberFvs =
        a.members |> List.map (fun (_, m) ->
          match m with
          | Field (fl, _, tps) ->
            Set.difference (findTypesInFieldLike getFreeTypeVarsPredicate fl |> Set.unionMany) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
          | Method (_, ft, tps) | FunctionInterface (ft, tps) | New (ft, tps) ->
            Set.difference (findTypesInFuncType getFreeTypeVarsPredicate ft |> Set.unionMany) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
          | Constructor (ft, tps) ->
            let ft = ft |> FuncType.map (fun _ -> PolymorphicThis)
            Set.difference (findTypesInFuncType getFreeTypeVarsPredicate ft |> Set.unionMany) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
          | Indexer (ft, _) -> findTypesInFuncType getFreeTypeVarsPredicate ft |> Set.unionMany
          | Getter fl | Setter fl -> findTypesInFieldLike getFreeTypeVarsPredicate fl |> Set.unionMany
          | UnknownMember _ -> Set.empty
          ) |> Set.unionMany
      let fvs = Set.difference memberFvs (a.typeParams |> List.map (fun tp -> tp.name) |> Set.ofList)
      Choice1Of2 false, Some fvs
    | _ -> Choice1Of2 true, None

  let getFreeTypeVars ty = findTypes getFreeTypeVarsPredicate ty |> Set.unionMany

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
      | { defaultType = None } :: rest -> go i rest
      | [] -> []
    maxArity :: go maxArity typrms |> Set.ofList

  type [<RequireQualifiedAccess>] InheritingType =
    | KnownIdent of {| fullName: string list; tyargs: Type list |}
    | Prim of PrimType * tyargs:Type list
    | Other of Type
    | ImportedIdent of {| name: string list; fullName: string list; tyargs: Type list |}
    | UnknownIdent of {| name: string list; tyargs: Type list |}

  let substTypeVarInInheritingType subst ctx = function
    | InheritingType.KnownIdent x ->
      InheritingType.KnownIdent {| x with tyargs = x.tyargs |> List.map (substTypeVar subst ctx) |}
    | InheritingType.ImportedIdent x ->
      InheritingType.ImportedIdent {| x with tyargs = x.tyargs |> List.map (substTypeVar subst ctx) |}
    | InheritingType.UnknownIdent x ->
      InheritingType.UnknownIdent {| x with tyargs = x.tyargs |> List.map (substTypeVar subst ctx) |}
    | InheritingType.Prim (p, ts) ->
      InheritingType.Prim (p, ts |> List.map (substTypeVar subst ctx))
    | InheritingType.Other t ->
      InheritingType.Other (substTypeVar subst ctx t)

  let inline private (|Dummy|) _ = []
  let mutable private inheritCache: Map<string list, Set<InheritingType> * InheritingType option> = Map.empty
  let mutable private hasNoInherits: Set<string list> = Set.empty

  let rec private getAllInheritancesImpl (includeSelf: bool) (ctx: Context<'a, 's>) (ty: Type) : Set<InheritingType> =
    seq {
      match ty with
      | Ident { name = name; fullName = Some fn; loc = loc } & Dummy ts
      | App (AIdent { name = name; fullName = Some fn }, ts, loc) ->
          yield!
            FullName.lookup ctx fn
            |> List.tryPick (function
              | AliasName { typeParams = typrms; erased = false } | ClassName { typeParams = typrms } ->
                let subst = createBindings fn loc typrms ts
                getAllInheritancesFromNameImpl includeSelf ctx fn |> Seq.map (substTypeVarInInheritingType subst ctx) |> Some
              | AliasName { target = Prim p; erased = true } ->
                getAllInheritancesImpl includeSelf ctx (App (APrim p, ts, loc)) |> Set.toSeq |> Some
              | ImportedName _ ->
                if includeSelf then
                  Some (Seq.singleton (InheritingType.ImportedIdent {| name = name; fullName = fn; tyargs = ts |}))
                else None
              | _ -> None
            ) |> Option.defaultValue Seq.empty
      | Ident { name = name; fullName = None } & Dummy ts
      | App (AIdent { name = name; fullName = None }, ts, _) ->
        if includeSelf then
          yield InheritingType.UnknownIdent {| name = name; tyargs = ts |}
      | Prim p & Dummy ts
      | App (APrim p, ts, _) ->
        if includeSelf then
          yield InheritingType.Prim (p, ts)
      | _ ->
        if includeSelf then
          yield InheritingType.Other ty
    } |> Set.ofSeq

  and private getAllInheritancesFromNameImpl (includeSelf: bool) (ctx: Context<'a, 's>) (fn: string list) : Set<InheritingType> =
    if hasNoInherits |> Set.contains fn then Set.empty
    else
      match inheritCache |> Map.tryFind fn with
      | Some (s, selfo) ->
        if includeSelf then
          match selfo with
          | None -> s
          | Some self -> Set.add self s
        else s
      | None ->
        let result =
          FullName.lookup ctx fn |> Seq.tryPick (function
            | ClassName c ->
              let self =
                InheritingType.KnownIdent {| fullName = fn; tyargs = c.typeParams |> List.map (fun tp -> TypeVar tp.name) |}
              let s = c.implements |> List.map (getAllInheritancesImpl true ctx) |> Set.unionMany
              Some (s, Some self)
            | AliasName a ->
              let self =
                InheritingType.KnownIdent {| fullName = fn; tyargs = a.typeParams |> List.map (fun tp -> TypeVar tp.name) |}
              let tyargs =
                a.typeParams |> List.map (fun tp -> TypeVar tp.name)
              let s =
                let subst = createBindings fn a.loc a.typeParams tyargs
                getAllInheritancesImpl true ctx a.target |> Set.map (substTypeVarInInheritingType subst ctx)
              Some (s, Some self)
            | _ -> None
          )
        match result with
        | None ->
          hasNoInherits <- hasNoInherits |> Set.add fn
          Set.empty
        | Some (s, selfo) ->
          inheritCache <- inheritCache |> Map.add fn (s, selfo)
          if includeSelf then
            match selfo with
            | None -> s
            | Some self -> Set.add self s
          else s

  let getAllInheritances ctx ty = getAllInheritancesImpl false ctx ty
  let getAllInheritancesFromName ctx fn = getAllInheritancesFromNameImpl false ctx fn
  let getAllInheritancesAndSelf ctx ty = getAllInheritancesImpl true ctx ty
  let getAllInheritancesAndSelfFromName ctx fn = getAllInheritancesFromNameImpl true ctx fn

  let private createFunctionInterfaceBase isNewable (typrms: TypeParam list) ft comments loc =
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
        comments = comments
        name = None
        accessibility = Public
        isInterface = true
        isExported = Exported.No
        implements = []
        typeParams = boundTyprms
        members = [
          { comments = []; loc = ft.loc; isStatic = false; accessibility = Public },
          if isNewable then New (ft, typrms)
          else FunctionInterface (ft, typrms)
        ]
        loc = loc
      }
    if List.isEmpty boundTyprms then AnonymousInterface ai
    else
      App (AAnonymousInterface ai, boundTyprms |> List.map (fun x -> TypeVar x.name), loc)

  let createFunctionInterface = createFunctionInterfaceBase false
  let createNewableFunctionInterface = createFunctionInterfaceBase true

  let rec resolveErasedTypeImpl typeQueries ctx = function
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Ident i -> Ident i | TypeVar v -> TypeVar v | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
    | AnonymousInterface c -> mapInClass (resolveErasedTypeImpl typeQueries) ctx c |> AnonymousInterface
    | Union { types = types } -> Union { types = List.map (resolveErasedTypeImpl typeQueries ctx) types }
    | Intersection { types = types } -> Intersection { types = List.map (resolveErasedTypeImpl typeQueries ctx) types }
    | Tuple ts -> Tuple (mapInTupleType (resolveErasedTypeImpl typeQueries ctx) ts)
    | Function ft -> mapInFuncType (resolveErasedTypeImpl typeQueries) ctx ft |> Function
    | App (t, ts, loc) -> App (t, List.map (resolveErasedTypeImpl typeQueries ctx) ts, loc)
    | Erased (e, loc, origText) ->
      let comments = [Description [origText]]
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
            Some (createFunctionInterface typrms ft comments loc)
          | _, _ -> None
        let rec go t1 t2 =
          let onFail () =
            warn ctx loc "cannot resolve an indexed access type '%s'" origText
            UnknownType (Some origText)
          match t1, t2 with
          | Union { types = ts }, _ -> Union { types = List.map (fun t1 -> go t1 t2) ts }
          | Intersection { types = ts }, _ -> Intersection { types = List.map (fun t1 -> go t1 t2) ts }
          | AnonymousInterface c, _ ->
            let result = c.members |> List.choose (fun (ma, m) -> memberChooser m t2)
            match result with
            | [] -> onFail ()
            | [t] -> t
            | ts -> Intersection { types = ts }
          | App ((APrim Array | APrim ReadonlyArray), [t], _), Prim (Number | Any) -> t
          | Tuple ts, TypeLiteral (LInt i) ->
            match ts.types |> List.tryItem i with
            | Some t -> t.value
            | None -> onFail ()
          | Tuple ts, Prim (Number | Any) -> Union { types = ts.types |> List.map (fun x -> x.value) }
          | (App (AIdent { fullName = Some fn }, ts, loc) | (Ident { fullName = Some fn; loc = loc } & Dummy ts)), _ ->
            FullName.tryLookupWith ctx fn (function
              | AliasName ta when not ta.erased ->
                let subst = createBindings fn loc ta.typeParams ts
                let target =
                  ta.target |> substTypeVar subst ctx |> resolveErasedTypeImpl typeQueries ctx
                go target t2 |> Some
              | ClassName c ->
                let subst = createBindings fn loc c.typeParams ts
                let c = c |> mapInClass (fun ctx -> substTypeVar subst ctx >> resolveErasedTypeImpl typeQueries ctx) ctx
                go (AnonymousInterface c) t2 |> Some
              | _ -> None
            ) |> Option.defaultWith onFail
          | _, _ -> onFail ()
        go (resolveErasedTypeImpl typeQueries ctx tobj) (resolveErasedTypeImpl typeQueries ctx tindex)
      | TypeQuery i ->
        let onFail () =
          warn ctx loc "cannot resolve a type query '%s'" origText
          UnknownType (Some origText)
        match i.fullName with
        | None -> onFail ()
        | Some fn when typeQueries |> Set.contains fn ->
          warn ctx loc "a recursive type query '%s' is detected and is ignored" origText
          UnknownType (Some origText)
        | Some fn ->
          let result typrms ty =
            let typeQueries = Set.add fn typeQueries
            let typrms = List.map (mapInTypeParam (resolveErasedTypeImpl typeQueries) ctx) typrms
            let ty = resolveErasedTypeImpl typeQueries ctx ty
            match typrms, ty with
            | _ :: _, Function ft -> createFunctionInterface typrms ft comments loc
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
        let t = resolveErasedTypeImpl typeQueries ctx t
        let onFail () =
          let tyText = Type.pp t
          warn ctx loc "cannot resolve a type operator 'keyof %s'" tyText
          UnknownType (Some tyText)
        let memberChooser = function
          | Field (fl, _, _) | Getter fl | Setter fl -> Set.singleton (TypeLiteral (LString fl.name))
          | Method (name, _, _) -> Set.singleton (TypeLiteral (LString name))
          | _ -> Set.empty
        let rec go t =
          match t with
          | Union { types = ts } -> ts |> List.map go |> Set.intersectMany
          | Intersection { types = ts } -> ts |> List.map go |> Set.unionMany
          | AnonymousInterface i ->
            i.members |> List.map (snd >> memberChooser) |> Set.unionMany
          | App ((APrim Array | APrim ReadonlyArray), [_], _) | Tuple _ -> Set.singleton (Prim Number)
          | (App (AIdent { fullName = Some fn }, ts, loc) | (Ident { fullName = Some fn; loc = loc } & Dummy ts)) ->
            FullName.tryLookupWith ctx fn (function
              | AliasName ta when not ta.erased ->
                let subst = createBindings fn loc ta.typeParams ts
                ta.target |> substTypeVar subst ctx |> resolveErasedTypeImpl typeQueries ctx |> go |> Some
              | ClassName c ->
                let subst = createBindings fn loc c.typeParams ts
                let c = c |> mapInClass (fun ctx -> substTypeVar subst ctx >> resolveErasedTypeImpl typeQueries ctx) ctx
                c.members |> List.map (snd >> memberChooser) |> Set.unionMany |> Some
              | _ -> None
            ) |> Option.defaultValue Set.empty
          | _ -> Set.empty
        match Set.toList (go t) with
        | [] -> onFail ()
        | [t] -> t
        | types -> Union { types = types }
      | NewableFunction (f, tyargs) ->
        let f = mapInFuncType (resolveErasedTypeImpl typeQueries) ctx f
        let tyargs = List.map (mapInTypeParam (resolveErasedTypeImpl typeQueries) ctx) tyargs
        createNewableFunctionInterface tyargs f comments loc
    | UnknownType msgo -> UnknownType msgo

  let resolveErasedType ctx ty = resolveErasedTypeImpl Set.empty ctx ty

type [<RequireQualifiedAccess>] KnownType =
  | Ident of fullName:string list
  | AnonymousInterface of int

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
          comments = ta.comments
          accessibility = Protected
          isExported = Exported.No
          implements = []
          typeParams = ta.typeParams
          members = [
            { comments = []; loc = f.loc; accessibility = Public; isStatic = false },
            FunctionInterface (f, [])
          ]
          loc = f.loc
        }
      | _ -> TypeAlias ta
    | x -> x

  let rec merge (stmts: Statement list) =
    let mutable result : Choice<Statement, Class ref, Module ref> list = []

    let mutable intfMap = Map.empty
    let mutable nsMap = Map.empty
    let mutable otherStmtSet = Set.empty
    let mergeTypeParams tps1 tps2 =
      let rec go acc = function
        | [], [] -> List.rev acc
        | tp1 :: rest1, tp2 :: rest2 ->
          let inline check t1 t2 =
            match t1, t2 with
            | Some t, None | None, Some t -> Some t
            | None, None -> None
            | Some t1, Some t2 ->
              assert (t1 = t2)
              Some t1
          let extends = check tp1.extends tp2.extends
          let defaultType = check tp1.defaultType tp2.defaultType
          assert (tp1.name = tp2.name)
          let tp = { name = tp1.name; extends = extends; defaultType = defaultType }
          go (tp :: acc) (rest1, rest2)
        | tp :: rest1, rest2
        | rest1, tp :: rest2 ->
          let tp =
            match tp.defaultType with
            | Some _ -> tp
            | None -> { tp with defaultType = Some (Prim Any) }
          go (tp :: acc) (rest1, rest2)
      go [] (tps1, tps2)

    for stmt in stmts do
      match stmt with
      | ClassDef i (* when i.isInterface *) ->
        match intfMap |> Map.tryFind i.name with
        | None ->
          let iref = ref i
          intfMap <- (intfMap |> Map.add i.name iref)
          result <- Choice2Of3 iref :: result
        | Some iref' ->
          let i' = !iref'
          assert (i.accessibility = i'.accessibility)
          let i =
            { i with
                isInterface = i.isInterface && i'.isInterface
                comments = i.comments @ i'.comments |> List.distinct
                loc = i.loc ++ i'.loc
                typeParams = mergeTypeParams i.typeParams i'.typeParams
                implements = List.distinct (i.implements @ i'.implements)
                members = i.members @ i'.members }
          iref' := i
      | Module n (* when n.isNamespace *) ->
        match nsMap |> Map.tryFind n.name with
        | None ->
          let nref = ref n
          nsMap <- (nsMap |> Map.add n.name nref)
          result <- Choice3Of3 nref :: result
        | Some nref' ->
          let n' = !nref'
          nref' :=
            { n with
                loc = n.loc ++ n'.loc
                comments = n.comments @ n'.comments |> List.distinct
                statements = n'.statements @ n.statements }
      | stmt ->
        if otherStmtSet |> Set.contains stmt |> not then
          otherStmtSet <- otherStmtSet |> Set.add stmt
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
      | Export _
      | UnknownStatement _
      | FloatingComment _ -> trie
      | TypeAlias { name = name }
      | ClassDef  { name = Some name }
      | EnumDef   { name = name }
      | Value     { name = name } ->
        trie |> Trie.addOrUpdate (ns @ [name]) [s] List.append
      | ClassDef  { name = None } -> failwith "impossible_extractNamedDefinitions"
      | Import i ->
        (*
        match i.clause with
        | NamespaceImport i -> trie |> Trie.addOrUpdate (ns @ [i.name]) [s] List.append
        | ES6WildcardImport -> trie
        | ES6Import i ->
          let trie =
            match i.defaultImport with
            | Some x -> trie |> Trie.addOrUpdate (ns @ [x.name]) [s] List.append
            | None -> trie
          i.bindings |> List.fold (fun state b ->
            match b.renameAs with
            | Some name -> state |> Trie.addOrUpdate (ns @ [name]) [s] List.append
            | None -> state |> Trie.addOrUpdate (ns @ [b.name]) [s] List.append
          ) trie
        *)
        trie
      | Pattern p -> p.underlyingStatements |> List.fold (go ns) trie
      | Module m ->
        let ns' = ns @ [m.name]
        m.statements |> List.fold (go ns') trie |> Trie.addOrUpdate ns' [Module m] List.append
    stmts |> List.fold (go []) Trie.empty

  open Type

  let findTypesInStatements pred (stmts: Statement list) : 'a seq =
    let rec go = function
      | TypeAlias ta ->
        seq {
          yield! findTypes pred ta.target;
          for tp in ta.typeParams do
            yield! findTypesInTypeParam pred tp
        }
      | ClassDef c ->
        seq {
          for impl in c.implements do
            yield! findTypes pred impl
          for tp in c.typeParams do
            yield! findTypesInTypeParam pred tp
          for _, m in c.members do
            yield! findTypesInClassMember pred m
        }
      | Module m ->
        m.statements |> Seq.collect go
      | Value v ->
        seq {
          yield! findTypes pred v.typ
          for tp in v.typeParams do
            yield! findTypesInTypeParam pred tp
        }
      | EnumDef e ->
        e.cases |> Seq.choose (fun c -> c.value)
                |> Seq.collect (fun l -> findTypes pred (TypeLiteral l))
      | Import _ | Export _ | UnknownStatement _ | FloatingComment _ -> Seq.empty
      | Pattern p ->
        seq {
          for stmt in p.underlyingStatements do
            yield! go stmt
        }
    stmts |> Seq.collect go

  let getTypeLiterals stmts =
    findTypesInStatements (function TypeLiteral l -> Choice1Of2 true, Some l | _ -> Choice1Of2 true, None) stmts |> Set.ofSeq

  let getAnonymousInterfaces stmts =
    findTypesInStatements (function
      | AnonymousInterface c when Option.isNone c.name -> Choice1Of2 true, Some c
      | _ -> Choice1Of2 true, None
    ) stmts |> Set.ofSeq

  let getUnknownIdentTypes ctx stmts =
    let (|Dummy|) _ = []
    findTypesInStatements (function
      | App (AIdent {name = name; fullName = None}, ts, _)
      | (Ident { name = name; fullName = None } & Dummy ts) ->
        Choice2Of2 ts, Some (name, Set.singleton (List.length ts))
      | App (AIdent {name = name; fullName = Some fn}, ts, _)
      | (Ident { name = name; fullName = Some fn} & Dummy ts) when not (FullName.isType ctx fn) ->
        Choice2Of2 ts, Some (name, Set.singleton (List.length ts))
      | _ -> Choice1Of2 true, None
    ) stmts |> Seq.fold (fun state (k, v) -> Trie.addOrUpdate k v Set.union state) Trie.empty

  let getKnownTypes (ctx: Context<_, _>) stmts =
    let (|Dummy|) _ = []
    findTypesInStatements (function
      | App (AIdent { fullName = Some fn }, ts, _) ->
        Choice2Of2 ts, Some (KnownType.Ident fn)
      | Ident { fullName = Some fn } ->
        Choice1Of2 true, Some (KnownType.Ident fn)
      | AnonymousInterface a ->
        let index = ctx.anonymousInterfacesMap |> Map.tryFind a
        Choice1Of2 true, Option.map KnownType.AnonymousInterface index
      | _ ->
        Choice1Of2 true, None
    ) stmts |> Set.ofSeq

  let rec mapType mapping (ctx: Context<_, _>) stmts =
    let mapValue v =
      { v with
          typ = mapping ctx v.typ
          typeParams = v.typeParams |> List.map (Type.mapInTypeParam mapping ctx) }
    let f = function
      | TypeAlias a ->
        TypeAlias {
          a with
            target = mapping ctx a.target
            typeParams = a.typeParams |> List.map (Type.mapInTypeParam mapping ctx)
        }
      | ClassDef c -> ClassDef (Type.mapInClass mapping ctx c)
      | EnumDef e -> EnumDef e
      | Import i -> Import i
      | Export (e, l, c) -> Export (e, l, c)
      | Value v -> Value (mapValue v)
      | Module m ->
        Module {
          m with
            statements =
              mapType
                mapping
                {| ctx with currentNamespace = m.name :: ctx.currentNamespace |}
                m.statements
        }
      | UnknownStatement u -> UnknownStatement u
      | FloatingComment c -> FloatingComment c
      | Pattern (ImmediateInstance (i, v)) -> Pattern (ImmediateInstance (Type.mapInClass mapping ctx i, mapValue v))
      | Pattern (ImmediateConstructor (bi, ci, v)) ->
        Pattern (ImmediateConstructor (Type.mapInClass mapping ctx bi, Type.mapInClass mapping ctx ci, mapValue v))
    stmts |> List.map f

  let resolveErasedTypes (ctx: Context<TyperOptions, _>) (stmts: Statement list) =
    mapType Type.resolveErasedType ctx stmts

  type Dict<'k, 'v> = System.Collections.Generic.Dictionary<'k, 'v>
  let detectPatterns (stmts: Statement list) : Statement list =
    let rec go stmts =
      // declare var Foo: Foo
      let valDict = new Dict<string, Value>()
      // interface Foo { .. }
      let intfDict = new Dict<string, Class>()
      // declare var Foo: FooConstructor
      let ctorValDict = new Dict<string, Value>()
      // interface FooConstructor { .. }
      let ctorIntfDict = new Dict<string, Class>()

      for stmt in stmts do
        match stmt with
        | Value (v & { name = name; typ = Ident { name = [intfName] } }) ->
          if name = intfName then valDict.Add(name, v)
          else if name + "Constructor" = intfName then ctorValDict.Add(name, v)
        | ClassDef (intf & { name = Some name; isInterface = true }) ->
          if name <> "Constructor" && name.EndsWith("Constructor") then
            let origName = name.Substring(0, name.Length - "Constructor".Length)
            ctorIntfDict.Add(origName, intf)
          else
            intfDict.Add(name, intf)
        | _ -> ()

      let immediateInstances = Set.intersectMany [Set.ofSeq valDict.Keys; Set.ofSeq intfDict.Keys]
      let immediateCtors = Set.intersectMany [Set.ofSeq intfDict.Keys; Set.ofSeq ctorValDict.Keys; Set.ofSeq ctorIntfDict.Keys]

      stmts |> List.choose (function
        | Value (v & { name = name; typ = Ident { name = [intfName] } }) ->
          if name = intfName && immediateInstances |> Set.contains name && valDict.[name] = v then
            let intf = intfDict.[name]
            Some (Pattern (ImmediateInstance (intf, v)))
          else if name + "Constructor" = intfName && immediateCtors |> Set.contains name && ctorValDict.[name] = v then
            let baseIntf = intfDict.[name]
            let ctorIntf = ctorIntfDict.[name]
            Some (Pattern (ImmediateConstructor (baseIntf, ctorIntf, v)))
          else
            Some (Value v)
        | ClassDef (intf & { name = Some name; isInterface = true }) ->
          if   (immediateInstances |> Set.contains name || immediateCtors |> Set.contains name)
            && intfDict.[name] = intf then None
          else if name <> "Constructor" && name.EndsWith("Constructor") then
            let origName = name.Substring(0, name.Length - "Constructor".Length)
            if immediateCtors |> Set.contains origName && ctorIntfDict.[origName] = intf then None
            else Some (ClassDef intf)
          else Some (ClassDef intf)
        | Module m -> Some (Module { m with statements = go m.statements })
        | x -> Some x
      )
    go stmts

module Ident =
  let rec mapInType (mapping: Context<'a, 's> -> IdentType -> IdentType) (ctx: Context<'a, 's>) = function
    | Ident i -> Ident (mapping ctx i)
    | Union u -> Union { types = u.types |> List.map (mapInType mapping ctx) }
    | Intersection i -> Intersection { types = i.types |> List.map (mapInType mapping ctx) }
    | Tuple ts -> Tuple (Type.mapInTupleType (mapInType mapping ctx) ts)
    | AnonymousInterface c -> AnonymousInterface (Type.mapInClass (mapInType mapping) ctx c)
    | Function f -> Function (mapInFunction mapping ctx f)
    | App (t, ts, loc) -> App (mapInAppLHS mapping ctx t, ts |> List.map (mapInType mapping ctx), loc)
    | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l | TypeVar v -> TypeVar v
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Erased (e, loc, origText) ->
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
      Erased (e', loc, origText)
    | UnknownType msg -> UnknownType msg

  and mapInFunction mapping ctx f =
    { f with
        returnType = mapInType mapping ctx f.returnType;
        args = List.map (Type.mapInArg (mapInType mapping) ctx) f.args }

  and mapInAppLHS mapping ctx = function
    | APrim p -> APrim p
    | AIdent i -> AIdent (mapping ctx i)
    | AAnonymousInterface i -> AAnonymousInterface (Type.mapInClass (mapInType mapping) ctx i)

  let rec mapInStatements mapType mapExport (ctx: Context<'a, 's>) (stmts: Statement list) : Statement list =
    let mapValue v =
      { v with
          typ = mapInType mapType ctx v.typ
          typeParams = v.typeParams |> List.map (Type.mapInTypeParam (mapInType mapType) ctx) }
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
      | Import i -> Import i
      | Export (e, l, c) -> Export (mapExport ctx e, l, c)
      | Value v -> Value (mapValue v)
      | Module m ->
        Module {
          m with
            statements =
              mapInStatements
                mapType mapExport
                (ctx |> Context.ofChildNamespace m.name)
                m.statements
        }
      | UnknownStatement u -> UnknownStatement u | FloatingComment c -> FloatingComment c
      | Pattern (ImmediateInstance (i, v)) -> Pattern (ImmediateInstance (Type.mapInClass (mapInType mapType) ctx i, mapValue v))
      | Pattern (ImmediateConstructor (bi, ci, v)) ->
        Pattern (ImmediateConstructor (Type.mapInClass (mapInType mapType) ctx bi, Type.mapInClass (mapInType mapType) ctx ci, mapValue v))
    stmts |> List.map f

  let resolve (ctx: Context<'a, 's>) (i: IdentType) : IdentType =
    match i.fullName with
    | Some _ -> i
    | None ->
      match FullName.ofIdent ctx i with
      | Some fn -> { i with fullName = Some fn }
      | None -> i

  let resolveInStatements (ctx: Context<'a, 's>) (stmts: Statement list) : Statement list =
    mapInStatements
      (fun ctx i -> resolve ctx i)
      (fun ctx -> function
        | CommonJsExport i -> CommonJsExport (resolve ctx i)
        | ES6DefaultExport i -> ES6DefaultExport (resolve ctx i)
        | ES6Export xs -> ES6Export (xs |> List.map (fun x -> {| x with target = resolve ctx x.target |}))
        | NamespaceExport ns -> NamespaceExport ns
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

  let private getDiscriminatedFromUnion (ctx: Context<'a, 's>) (u: UnionType) : Map<string, Map<Literal, Type>> * UnionType =
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
              let bindings = Type.createBindings fn loc a.typeParams ts
              Some (getLiteralFieldsFromType (a.target |> Type.substTypeVar bindings ()))
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

  let rec resolve (ctx: Context<'a, 's>) (u: UnionType) : ResolvedUnion =
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

let createRootContextForTyper (srcs: SourceFile list) (opts: TyperOptions) : Context<TyperOptions, unit> =
  // TODO: handle SourceFile-specific things
  let add name ty m =
    if m |> Trie.containsKey [name] then m
    else
      m |> Trie.add [name] [TypeAlias { name = name; typeParams = []; target = ty; erased = true; comments = []; loc = UnknownLocation }]
  let addPoly name ty typeParams m =
    if m |> Trie.containsKey [name] then m
    else
      m |> Trie.add [name] [TypeAlias { name = name; typeParams = typeParams; target = ty; erased = true; comments = []; loc = UnknownLocation }]
  let m =
    srcs
    |> List.collect (fun src -> src.statements)
    |> Statement.extractNamedDefinitions
    |> add "String" (Prim String)
    |> add "Boolean" (Prim Bool)
    |> add "Number" (Prim Number)
    |> add "Object" (Prim Object)
    |> add "Function" (Prim UntypedFunction)
    |> add "Symbol" (Prim Symbol)
    |> add "RegExp" (Prim RegExp)
    |> addPoly "Array" (Prim Array) [{ name = "T"; extends = None; defaultType = None }]
    |> addPoly "ReadonlyArray" (Prim Array) [{ name = "T"; extends = None; defaultType = None }]
    |> add "BigInt" (Prim BigInt)
  {|
    currentNamespace = []
    definitionsMap = m
    typeLiteralsMap = Map.empty
    anonymousInterfacesMap = Map.empty
    unknownIdentTypes = Trie.empty
    options = opts
    state = ()
  |}

let createRootContext (srcs: SourceFile list) (opts: TyperOptions) : Context<TyperOptions, unit> =
  // TODO: handle SourceFile-specific things
  let ctx = createRootContextForTyper srcs opts
  let stmts = srcs |> List.collect (fun src -> src.statements)
  let tlm = Statement.getTypeLiterals stmts |> Seq.mapi (fun i l -> l, i) |> Map.ofSeq
  let aim = Statement.getAnonymousInterfaces stmts |> Seq.mapi (fun i c -> c, i) |> Map.ofSeq
  let uit = Statement.getUnknownIdentTypes ctx stmts
  {| ctx with
      typeLiteralsMap = tlm
      anonymousInterfacesMap = aim
      unknownIdentTypes = uit |}

open TypeScript
let mergeLibESDefinitions (srcs: SourceFile list) =
  let getESVersionFromFileName (s: string) =
    let es = s.Split '.' |> Array.tryFind (fun s -> s.StartsWith "es")
    match es with
    | None -> Ts.ScriptTarget.ESNext
    | Some "es3" -> Ts.ScriptTarget.ES3
    | Some "es5" -> Ts.ScriptTarget.ES5
    | Some "es6" | Some "es2015" -> Ts.ScriptTarget.ES2015
    | Some "es2016" -> Ts.ScriptTarget.ES2016
    | Some "es2017" -> Ts.ScriptTarget.ES2017
    | Some "es2018" -> Ts.ScriptTarget.ES2018
    | Some "es2019" -> Ts.ScriptTarget.ES2019
    | Some "es2020" -> Ts.ScriptTarget.ES2020
    | Some _ -> Ts.ScriptTarget.ESNext

  let map (parentVersion: Ts.ScriptTarget option) (loc: Location) (x: ICommented<_>) =
    let esVersion =
      let rec go = function
      | UnknownLocation -> None
      | LocationTs (sf, _) -> getESVersionFromFileName sf.fileName |> Some
      | Location x -> getESVersionFromFileName x.src.fileName |> Some
      | MultipleLocation ls ->
        match ls |> List.choose go with
        | [] -> None
        | xs -> List.min xs |> Some
      go loc
    match esVersion with
    | None ->
      None, x.mapComments id
    | Some v ->
      match parentVersion with
      | Some v' when v = v' -> Some v, x.mapComments id
      | _ -> Some v, x.mapComments (fun cs -> ESVersion v :: cs)

  let rec mapStmt (s: Statement) =
    let vo, s = map None s.loc s
    match s with
    | Module m -> Module { m with statements = List.map mapStmt m.statements }
    | EnumDef e -> EnumDef { e with cases = e.cases |> List.map (fun c -> map vo c.loc c |> snd) }
    | ClassDef c -> ClassDef { c with members = c.members |> List.map (fun (a, m) -> map vo a.loc a |> snd, m) }
    | _ -> s

  let stmts =
    srcs
    |> List.collect (fun src -> src.statements)
    |> Statement.merge
    |> List.map mapStmt

  { fileName = "lib.es.d.ts"
    statements = stmts
    references = []
    hasNoDefaultLib = true
    moduleName = None }

let runAll (srcs: SourceFile list) (opts: TyperOptions) =
  // TODO: handle SourceFile-specific things

  let inline mapStatements f (src: SourceFile) =
    { src with statements = f src.statements }

  let result =
    srcs
    |> List.map (
      mapStatements (fun stmts ->
        stmts
              |> Statement.merge // merge modules, interfaces, etc
              |> Statement.detectPatterns // group statements with pattern
              |> List.map Statement.replaceAliasToFunctionWithInterface // replace alias to function type with a function interface
      )
    )
  // build a context

  let ctx = createRootContextForTyper result opts

  // resolve every identifier into its full name
  let result =
    result |> List.map (mapStatements (Ident.resolveInStatements ctx))
  // rebuild the context with the identifiers resolved to full name
  let ctx = createRootContextForTyper result opts

  // resolve every indexed access type and type query
  let result = result |> List.map (mapStatements (Statement.resolveErasedTypes ctx))
  // rebuild the context because resolveErasedTypes may introduce additional anonymous function interfaces
  let ctx = createRootContext result opts

  ctx, result