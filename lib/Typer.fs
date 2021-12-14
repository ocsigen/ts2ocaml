module Ts2Ml.Typer

open Ts2Ml.Common
open Ts2Ml.Syntax
open DataTypes

type TyperOptions =
  inherit IOptions

  /// Make class inherit `Iterable<T>` when it has `[Symbol.iterator]: Iterator<T>`.
  abstract inheritIterable: bool with get,set

  /// Make class inherit `ArrayLike<T>` when it has `[index: number]: T`.
  abstract inheritArraylike: bool with get,set

  /// Make class inherit `PromiseLike<T>` when it has `then(onfulfilled: T => _, onrejected: _)`.
  abstract inheritPromiselike: bool with get,set

  /// Replaces alias to function type with named interface.
  /// ```ts
  /// type F = (...) => T      // before
  /// interface F { (...): T } // after
  /// ```
  abstract replaceAliasToFunction: bool with get,set

  /// **Strongly recommended unless the target language supports rank-N polymorphism.**
  ///
  /// Replaces rank-2 or higher function type with anonymous interface.
  /// ```ts
  /// declare var f: <T>(...) => T;   // before
  /// declare var f: { <T>(...): T }; // after
  /// ```
  abstract replaceRankNFunction: bool with get,set

  /// Replaces newable function type with anonymous interface.
  /// ```ts
  /// declare var F: new <T>(...) => T; // before
  /// declare var F: { new <T>(): T };  // after
  /// ```
  abstract replaceNewableFunction: bool with get,set

type [<RequireQualifiedAccess>] Definition =
  | TypeAlias of TypeAlias
  | Class of Class
  | Enum of Enum
  | EnumCase of EnumCase * Enum
  | Module of Module
  | Variable of Variable
  | Function of Function
  | Import of ImportClause * Import
  | Member of MemberAttribute * Member * Class

type [<RequireQualifiedAccess>] InheritingType =
  | KnownIdent of {| fullName: FullName; tyargs: Type list |}
  | Prim of PrimType * tyargs:Type list
  | Other of Type
  | UnknownIdent of {| name: string list; tyargs: Type list |}

type AnonymousInterfaceInfo = {
  /// A unique number assigned to the anonymous interface
  id: int
  /// The namespace in which the anonymous interface appears
  path: string list
}

type SourceFileInfo = {
  sourceFile: SourceFile
  definitionsMap: Trie<string, Definition list>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<Class<Anonymous>, AnonymousInterfaceInfo>
  unknownIdentTypes: Trie<string, Set<int>>
}

type TyperCache = {
  inheritCache: MutableMap<FullName, (InheritingType * int) list * InheritingType list>
  hasNoInherits: MutableSet<FullName>
}

type TyperContext<'Options, 'State when 'Options :> IOptions> = private {
  _currentSourceFile: Path.Absolute
  _currentNamespace: string list
  _info: Map<Path.Absolute, SourceFileInfo>
  _state: 'State
  _cache: TyperCache
  _options: 'Options
  _logger: ILogger
} with
  member this.currentSourceFile = this._currentSourceFile
  member this.currentNamespace = List.rev this._currentNamespace
  member this.info = this._info
  member this.state = this._state
  member this.options = this._options
  member this.logger = this._logger
  interface IContext<'Options> with
    member this.options = this.options
    member this.logger = this.logger

let inline private warn (ctx: IContext<_>) (loc: Location) fmt =
  Printf.kprintf (fun s -> ctx.logger.warnf "%s at %s" s loc.AsString) fmt

module TyperContext =
  type private Anonoymous<'Options, 'State when 'Options :> IOptions> = {|
    _currentSourceFile: Path.Absolute
    _currentNamespace: string list
    _info: Map<Path.Absolute, SourceFileInfo>
    _state: 'State
    _cache: TyperCache
    _options: 'Options
    _logger: ILogger
  |}

  let inline private ofAnonymous (x: Anonoymous<'a, 's>) : TyperContext<'a, 's> =
    { _currentSourceFile = x._currentSourceFile; _currentNamespace = x._currentNamespace
      _info = x._info
      _state = x._state
      _cache = x._cache
      _options = x._options; _logger = x._logger }

  let mapOptions (f: 'a -> 'b) (ctx: TyperContext<'a, 's>) : TyperContext<'b, 's> =
    ofAnonymous {| ctx with _options = f ctx._options |}

  let mapState (f: 's -> 't) (ctx: TyperContext<'a, 's>) : TyperContext<'a, 't> =
    ofAnonymous {| ctx with _state = f ctx._state |}

  let ofSourceFileRoot source (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with _currentSourceFile = source; _currentNamespace = [] }

  let ofLocation (fullName: FullName) (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with _currentSourceFile = fullName.source; _currentNamespace = List.rev fullName.name }

  let ofParentNamespace (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> option =
    match ctx._currentNamespace with
    | [] -> None
    | _ :: ns -> Some { ctx with _currentNamespace = ns }

  let ofChildNamespace childName (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with _currentNamespace = childName :: ctx._currentNamespace }

  let getFullName (name: string list) (ctx: TyperContext<'a, 's>) : FullName =
    let name =
      match name with
      | [] -> List.rev ctx._currentNamespace
      | n :: [] -> List.rev (n :: ctx._currentNamespace)
      | _ -> List.rev ctx._currentNamespace @ name
    { name = name; source = ctx._currentSourceFile }

  let getFullNameString (name: string list) (ctx: TyperContext<'a, 's>) =
    (getFullName name ctx).name |> String.concat "."

  /// `Error subName` when `fullName` is a parent of current namespace.
  /// `Ok name` otherwise.
  let getRelativeNameTo (fullName: string list) (ctx: TyperContext<'a, 's>) =
    let rec go name selfPos =
      match name, selfPos with
      | x :: [], y :: ys  when x = y -> Error ys
      | x :: xs, y :: ys when x = y -> go xs ys
      | xs, _ -> Ok xs
    go fullName (List.rev ctx._currentNamespace)

  let tryCurrentSourceInfo (f: SourceFileInfo -> 't) (ctx: TyperContext<'a, 's>) =
    ctx._info |> Map.tryFind ctx._currentSourceFile |> Option.map f

  let bindCurrentSourceInfo (f: SourceFileInfo -> _ option) (ctx: TyperContext<'a, 's>) =
    ctx._info |> Map.tryFind ctx._currentSourceFile |> Option.bind f

module FullName =
  let getDefinitions (ctx: TyperContext<_, _>) (fullName: FullName) : Definition list =
    match ctx.info |> Map.tryFind fullName.source with
    | None -> []
    | Some info ->
      info.definitionsMap
      |> Trie.tryFind fullName.name
      |> Option.defaultValue []

  let private classify = function
    | Definition.TypeAlias _ -> Kind.OfTypeAlias
    | Definition.Class c -> if c.isInterface then Kind.OfInterface else Kind.OfClass
    | Definition.Enum _ -> Kind.OfEnum
    | Definition.EnumCase _ -> Kind.OfEnumCase
    | Definition.Module m -> if m.isNamespace then Kind.OfNamespace else Kind.OfModule
    | Definition.Variable _ | Definition.Function _ -> Kind.OfValue
    | Definition.Import (c, _) -> c.kind |> Option.map Set.toList |> Option.defaultValue []
    | Definition.Member _ -> Kind.OfMember

  let hasKind (ctx: TyperContext<_, _>) (kind: Kind) (fullName: FullName) =
    getDefinitions ctx fullName
    |> List.exists (fun d -> classify d |> List.contains kind)

  let getKind (ctx: TyperContext<_, _>) (fullName: FullName) : Set<Kind> =
    getDefinitions ctx fullName
    |> List.collect classify
    |> Set.ofList

  let isDefinedInCurrentSource (ctx: TyperContext<_, _>) (fullName: FullName) : bool =
    fullName.source = ctx.currentSourceFile

module Ident =
  let getDefinitions (ctx: TyperContext<_, _>) (ident: Ident) =
    ident.fullName |> List.collect (FullName.getDefinitions ctx)

  let getDefinitionsWithFullName (ctx: TyperContext<_, _>) (ident: Ident) =
    ident.fullName |> List.collect (fun fn ->
      FullName.getDefinitions ctx fn |> List.map (fun d -> {| definition = d; fullName = fn |}))

  let pickDefinition ctx ident picker =
    getDefinitions ctx ident |> List.tryPick picker

  let pickDefinitionWithFullName ctx ident (picker: FullName -> Definition -> _ option) =
    getDefinitionsWithFullName ctx ident |> List.tryPick (fun x -> picker x.fullName x.definition)

  let hasKind (ctx: TyperContext<_, _>) (kind: Kind) (ident: Ident) =
    match ident.kind with
    | Some kinds -> kinds |> Set.contains kind
    | None -> ident.fullName |> List.exists (FullName.hasKind ctx kind)

  let getKind (ctx: TyperContext<_, _>) (ident: Ident) =
    match ident.kind with
    | Some kind -> kind
    | None -> ident.fullName |> List.map (FullName.getKind ctx) |> Set.unionMany

  let isType ctx ident = hasKind ctx Kind.Type ident

  let isDefinedInCurrentSource (ctx: TyperContext<_, _>) (ident: Ident) =
    ident.fullName |> List.exists (FullName.isDefinedInCurrentSource ctx)

module Type =
  let rec mapInTypeParam mapping (ctx: 'Context) (tp: TypeParam) =
    { tp with
        extends = Option.map (mapping ctx) tp.extends
        defaultType = Option.map (mapping ctx) tp.defaultType }

  and private mapInArg mapping ctx (arg: Choice<FieldLike, Type>) =
    match arg with
    | Choice1Of2 a -> mapInFieldLike mapping ctx a |> Choice1Of2
    | Choice2Of2 t -> mapping ctx t |> Choice2Of2

  and mapInFuncType mapping (ctx: 'Context) f =
    { f with
        returnType = mapping ctx f.returnType
        args = List.map (mapInArg mapping ctx) f.args }

  and mapInClass mapping (ctx: 'Context) (c: Class<'a>) : Class<'a> =
    let mapMember = function
      | Field (f, m) -> Field (mapInFieldLike mapping ctx f, m)
      | Callable (f, tps) -> Callable (mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | Indexer (f, m) -> Indexer (mapInFuncType mapping ctx f, m)
      | Constructor (c, tps) -> Constructor ({ c with args = List.map (mapInArg mapping ctx) c.args }, List.map (mapInTypeParam mapping ctx) tps)
      | Getter f -> Getter (mapInFieldLike mapping ctx f)
      | Setter f -> Setter (mapInFieldLike mapping ctx f)
      | Newable (f, tps) -> Newable (mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | Method (name, f, tps) -> Method (name, mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | SymbolIndexer (sn, ft, m) -> SymbolIndexer (sn, mapInFuncType mapping ctx ft, m)
      | UnknownMember msgo -> UnknownMember msgo
    { c with
        implements = c.implements |> List.map (mapping ctx)
        members = c.members |> List.map (fun (a, m) -> a, mapMember m)
        typeParams = c.typeParams |> List.map (mapInTypeParam mapping ctx) }

  and mapInFieldLike mapping (ctx: 'Context) (fl: FieldLike) : FieldLike =
    { fl with value = mapping ctx fl.value }

  let mapInTupleType mapping (ctx: 'Context) (ts: TupleType) =
    { ts with types = ts.types |> List.map (fun t -> {| t with value = mapping ctx t.value|})}

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
    | Tuple ts -> Tuple (ts |> mapInTupleType (substTypeVar subst) _ctx)
    | AnonymousInterface c -> AnonymousInterface (mapInClass (substTypeVar subst) _ctx c)
    | Func (f, typrms, loc) ->
      Func (substTypeVarInFunction subst _ctx f, List.map (substTypeVarInTypeParam subst _ctx) typrms, loc)
    | NewableFunc (f, typrms, loc) ->
      NewableFunc (substTypeVarInFunction subst _ctx f, List.map (substTypeVarInTypeParam subst _ctx) typrms, loc)
    | App (t, ts, loc) ->
      let t =
        match t with
        | AAnonymousInterface i -> AAnonymousInterface (mapInClass (substTypeVar subst) _ctx i)
        | _ -> t
      App (t, ts |> List.map (substTypeVar subst _ctx), loc)
    | Ident i -> Ident i | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Erased (e, loc, origText) ->
      let e' =
        match e with
        | IndexedAccess (t1, t2) -> IndexedAccess (substTypeVar subst _ctx t1, substTypeVar subst _ctx t2)
        | TypeQuery i -> TypeQuery i
        | Keyof t -> Keyof (substTypeVar subst _ctx t)
      Erased (e', loc, origText)
    | UnknownType msgo -> UnknownType msgo

  and substTypeVarInTypeParam subst _ctx (tp: TypeParam) =
    { tp with
        extends = Option.map (substTypeVar subst _ctx) tp.extends
        defaultType = Option.map (substTypeVar subst _ctx) tp.defaultType }

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
    | Field (fl, _) -> findTypesInFieldLike pred fl
    | Method (_, ft, tps)
    | Callable (ft, tps)
    | Newable (ft, tps) ->
      seq { yield! findTypesInFuncType pred ft; for tp in tps do yield! findTypesInTypeParam pred tp }
    | Indexer (ft, _) | SymbolIndexer (_, ft, _) ->
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
          | Func (f, tps, _) | NewableFunc (f, tps, _) ->
            yield! findTypesInFuncType pred f
            for tp in tps do
              yield! findTypesInTypeParam pred tp
          | Erased (e, _, _) ->
            match e with
            | IndexedAccess (t1, t2) ->
              yield! go_t t1
              yield! go_t t2
            | TypeQuery i ->
              yield! findTypes pred (Ident i)
            | Keyof t ->
              yield! findTypes pred t
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
    | Func (ft, tps, _) | NewableFunc (ft, tps, _) ->
      let fvs = Set.difference (findTypesInFuncType getFreeTypeVarsPredicate ft |> Set.unionMany) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
      Choice1Of2 false, Some fvs
    | AnonymousInterface a ->
      let memberFvs =
        a.members |> List.map (fun (_, m) ->
          match m with
          | Field (fl, _) -> findTypesInFieldLike getFreeTypeVarsPredicate fl |> Set.unionMany
          | Method (_, ft, tps) | Callable (ft, tps) | Newable (ft, tps) ->
            Set.difference (findTypesInFuncType getFreeTypeVarsPredicate ft |> Set.unionMany) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
          | Constructor (ft, tps) ->
            let ft = ft |> FuncType.map (fun _ -> PolymorphicThis)
            Set.difference (findTypesInFuncType getFreeTypeVarsPredicate ft |> Set.unionMany) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
          | Indexer (ft, _) | SymbolIndexer (_, ft, _) -> findTypesInFuncType getFreeTypeVarsPredicate ft |> Set.unionMany
          | Getter fl | Setter fl -> findTypesInFieldLike getFreeTypeVarsPredicate fl |> Set.unionMany
          | UnknownMember _ -> Set.empty
          ) |> Set.unionMany
      let fvs = Set.difference memberFvs (a.typeParams |> List.map (fun tp -> tp.name) |> Set.ofList)
      Choice1Of2 false, Some fvs
    | _ -> Choice1Of2 true, None

  let getFreeTypeVars ty = findTypes getFreeTypeVarsPredicate ty |> Set.unionMany

  let rec assignTypeParams (name: string list) (loc: Location) (typrms: TypeParam list) (xs: 'a list) (f: TypeParam -> 'a -> 'b) (g: TypeParam -> 'b) : 'b list =
    match typrms, xs with
    | typrm :: typrms, x :: xs ->
      f typrm x :: assignTypeParams name loc typrms xs f g
    | typrm :: typrms, [] ->
      g typrm :: assignTypeParams name loc typrms [] f g
    | [], [] -> []
    | [], _ :: _ ->
      failwithf "assignTypeParams: too many type arguments for type '%s' at %s" (String.concat "." name) (loc.AsString)

  let createBindings name loc typrms ts =
    assignTypeParams name loc typrms ts
      (fun tv ty -> tv.name, ty)
      (fun tv ->
        match tv.defaultType with
        | Some ty -> tv.name, ty
        | None ->
          failwithf "createBindings: insufficient type arguments for type '%s' at %s" (String.concat "." name) (loc.AsString))
    |> Map.ofList

  let getPossibleArity (typrms: TypeParam list) : Set<int> =
    let maxArity = List.length typrms
    let rec go i = function
      | { defaultType = Some _ } :: rest -> (i-1) :: go (i-1) rest
      | { defaultType = None } :: rest -> go i rest
      | [] -> []
    maxArity :: go maxArity typrms |> Set.ofList

  let createFunctionInterface (funcs: {| ty: FuncType<Type>; typrms: TypeParam list; comments: Comment list; loc: Location; isNewable: bool |} list) =
    let usedTyprms =
      funcs |> Seq.collect (fun f -> getTypeVars (Func (f.ty, f.typrms, f.loc))) |> Set.ofSeq
    let boundTyprms =
      let typrms = funcs |> List.collect (fun f -> f.typrms) |> List.map (fun x -> x.name) |> Set.ofList
      Set.difference usedTyprms typrms
      |> Set.toList
      |> List.map (fun name -> { name = name; extends = None; defaultType = None })
    let ai =
      {
        comments = []
        name = Anonymous
        accessibility = Public
        isInterface = true
        isExported = Exported.No
        implements = []
        typeParams = boundTyprms
        members = [
          for f in funcs do
            { comments = f.comments; loc = f.loc; isStatic = false; accessibility = Public },
            if f.isNewable then Newable (f.ty, f.typrms)
            else Callable (f.ty, f.typrms)
        ]
        loc = MultipleLocation (funcs |> List.map (fun f -> f.loc))
      }
    if List.isEmpty boundTyprms then AnonymousInterface ai
    else
      App (
        AAnonymousInterface ai,
        boundTyprms |> List.map (fun x -> TypeVar x.name),
        MultipleLocation (funcs |> List.map (fun f -> f.loc))
      )

  // TODO: more optimization
  let createUnion (_ctx: TyperContext<_, _>) (types: Type list) =
    match types with
    | [] -> Prim Never
    | [x] -> x
    | _ -> Union { types = types }

  // TODO: more optimization
  let createIntersection (_ctx: TyperContext<_, _>) (types: Type list) =
    match types with
    | [] -> Prim Any
    | [x] -> x
    | _ -> Intersection { types = types }

  let substTypeVarInInheritingType subst ctx = function
    | InheritingType.KnownIdent x ->
      InheritingType.KnownIdent {| x with tyargs = x.tyargs |> List.map (substTypeVar subst ctx) |}
    | InheritingType.UnknownIdent x ->
      InheritingType.UnknownIdent {| x with tyargs = x.tyargs |> List.map (substTypeVar subst ctx) |}
    | InheritingType.Prim (p, ts) ->
      InheritingType.Prim (p, ts |> List.map (substTypeVar subst ctx))
    | InheritingType.Other t ->
      InheritingType.Other (substTypeVar subst ctx t)

  let inline private (|Dummy|) _ = []

  let rec private getAllInheritancesImpl (depth: int) (includeSelf: bool) (ctx: TyperContext<'a, 's>) (ty: Type) : (InheritingType * int) seq =
    let treatPrimTypeInterfaces (name: string list) (ts: Type list) =
      match name with
      | [name] ->
        match PrimType.FromJSClassName name with
        | None -> None
        | Some p ->
          Some (InheritingType.Prim (p, ts), depth)
      | _ -> None

    seq {
      match ty with
      | Ident ({ name = name; loc = loc } & i) & Dummy ts
      | App (AIdent ({ name = name } & i), ts, loc) when i.fullName <> [] ->
        yield! treatPrimTypeInterfaces name ts |> Option.toList
        yield!
          Ident.getDefinitionsWithFullName ctx i
          |> List.choose (fun x ->
            match x.definition with
            | Definition.TypeAlias { typeParams = typrms } | Definition.Class { typeParams = typrms } ->
              let subst = createBindings i.name i.loc typrms ts
              getAllInheritancesFromNameImpl (depth+1) includeSelf ctx x.fullName
              |> Seq.map (fun (t, d) -> substTypeVarInInheritingType subst ctx t, d) |> Some
            | _ -> None
          ) |> Seq.concat
      | Ident { name = name } & Dummy ts | App (AIdent { name = name }, ts, _) ->
        yield! treatPrimTypeInterfaces name ts |> Option.toList
        if includeSelf then
          yield InheritingType.UnknownIdent {| name = name; tyargs = ts |}, depth
      | Prim p & Dummy ts
      | App (APrim p, ts, _) ->
        if includeSelf then
          yield InheritingType.Prim (p, ts), depth
      | _ ->
        if includeSelf then
          yield InheritingType.Other ty, depth
    }

  and private getAllInheritancesFromNameImpl (depth: int) (includeSelf: bool) (ctx: TyperContext<'a, 's>) (fn: FullName) : (InheritingType * int) list =
    if ctx._cache.hasNoInherits.Contains fn then List.empty
    else
      match ctx._cache.inheritCache.TryGetValue fn with
      | true, (s, self) ->
        let ret =
          if includeSelf then
            (List.map (fun x -> x, 0) self) @ s
          else s
        ret |> List.map (fun (t, d) -> t, d + depth)
      | _ ->
        let result, self =
          FullName.getDefinitions ctx fn
          |> List.choose (function
            | Definition.Class c ->
              let self =
                InheritingType.KnownIdent {| fullName = fn; tyargs = c.typeParams |> List.map (fun tp -> TypeVar tp.name) |}
              let s = c.implements |> Seq.collect (getAllInheritancesImpl (depth+1) true ctx)
              Some (s, Some self)
            | Definition.TypeAlias a ->
              let tyargs =
                a.typeParams |> List.map (fun tp -> TypeVar tp.name)
              let s =
                let subst = createBindings fn.name a.loc a.typeParams tyargs
                getAllInheritancesImpl (depth+1) true ctx a.target
                |> Seq.map (fun (t, d) -> substTypeVarInInheritingType subst ctx t, d)
              Some (s, None)
            | _ -> None)
          |> List.unzip
          |> fun (result, self) ->
            Seq.concat result |> List.ofSeq, List.choose id self
        if List.isEmpty result && List.isEmpty self then
          ctx._cache.hasNoInherits.Add(fn) |> ignore
          List.empty
        else
          ctx._cache.inheritCache[fn] <- (result |> List.map (fun (t, d) -> t, d - depth), self)
          if includeSelf then
            (List.map (fun x -> x, depth) self) @ result
          else result

  and private removeDuplicatesFromInheritingTypes (xs: (InheritingType * int) seq) : Set<InheritingType> =
    xs
    |> Seq.groupBy (fun (t, _) ->
      match t with
      | InheritingType.KnownIdent i -> Choice1Of4 i.fullName
      | InheritingType.UnknownIdent i -> Choice2Of4 i.name
      | InheritingType.Prim (p, _) -> Choice3Of4 p
      | InheritingType.Other ty -> Choice4Of4 ty)
    |> Seq.map (fun (_, xs) ->
      xs |> Seq.sortBy (fun (_, depth) -> depth) |> Seq.head |> fst)
    |> Set.ofSeq

  let getAllInheritances ctx ty = getAllInheritancesImpl 0 false ctx ty |> removeDuplicatesFromInheritingTypes
  let getAllInheritancesFromName ctx fn = getAllInheritancesFromNameImpl 0 false ctx fn |> removeDuplicatesFromInheritingTypes
  let getAllInheritancesAndSelf ctx ty = getAllInheritancesImpl 0 true ctx ty |> removeDuplicatesFromInheritingTypes
  let getAllInheritancesAndSelfFromName ctx fn = getAllInheritancesFromNameImpl 0 true ctx fn |> removeDuplicatesFromInheritingTypes

  let rec resolveErasedTypeImpl typeQueries ctx = function
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Ident i -> Ident i | TypeVar v -> TypeVar v | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
    | AnonymousInterface c -> mapInClass (resolveErasedTypeImpl typeQueries) ctx c |> AnonymousInterface
    | Union { types = types } -> Union { types = List.map (resolveErasedTypeImpl typeQueries ctx) types }
    | Intersection { types = types } -> Intersection { types = List.map (resolveErasedTypeImpl typeQueries ctx) types }
    | Tuple ts -> Tuple (mapInTupleType (resolveErasedTypeImpl typeQueries) ctx ts)
    | Func (f, tyargs, loc) ->
      Func (
        mapInFuncType (resolveErasedTypeImpl typeQueries) ctx f,
        tyargs |> List.map (mapInTypeParam (resolveErasedTypeImpl typeQueries) ctx),
        loc
      )
    | NewableFunc (f, tyargs, loc) ->
      NewableFunc (
        mapInFuncType (resolveErasedTypeImpl typeQueries) ctx f,
        tyargs |> List.map (mapInTypeParam (resolveErasedTypeImpl typeQueries) ctx),
        loc
      )
    | App (t, ts, loc) ->
      let t =
        match t with
        | AAnonymousInterface i -> AAnonymousInterface (mapInClass (resolveErasedTypeImpl typeQueries) ctx i)
        | _ -> t
      App (t, List.map (resolveErasedTypeImpl typeQueries ctx) ts, loc)
    | Erased (e, loc, origText) ->
      let comments = [Description [origText]]
      match e with
      | IndexedAccess (tobj, tindex) ->
        let resolveIndexedAccessOfClass (c: Class<_>) (indexTy: Type) : Type option =
          let members = c.members |> List.map snd
          let intersection = function
            | [] -> None
            | ts -> createIntersection ctx ts |> Some
          let rec go = function
            | TypeLiteral (LString name) ->
              let funcs, others =
                members
                |> List.choose (function
                  | Field (fl, _) | Getter fl | Setter fl when fl.name = name ->
                    if fl.isOptional then Some (Choice2Of2 (Union { types = [fl.value; Prim Undefined] }))
                    else Some (Choice2Of2 fl.value)
                  | Method (name', ft, typrms) when name = name' ->
                    Some (Choice1Of2 {| ty = ft; typrms = typrms; comments = comments; loc = loc; isNewable = false |})
                  | Constructor (_, _) when name = "constructor" -> Some (Choice2Of2 (Prim UntypedFunction))
                  | _ -> None)
                |> List.splitChoice2
              let funcs =
                match funcs with
                | [] -> []
                | [f] -> [Func (f.ty, f.typrms, f.loc)]
                | _ -> [createFunctionInterface funcs]
              funcs @ others |> intersection
            | TypeLiteral (LInt _) | Prim Number ->
              members
              |> List.choose (function Indexer (ft, _) -> Some ft.returnType | _ -> None)
              |> intersection
            | Prim Never -> Some (Prim Never)
            | Union { types = ts } ->
              match List.choose go ts with
              | []  -> None
              | [t] -> Some t
              | ts  -> Some (Union { types = ts })
            | _ -> None
          go indexTy

        let rec memberChooser m t2 =
          match m, t2 with
          | (Field (fl, _) | Getter fl | Setter fl),
            TypeLiteral (LString name) when fl.name = name ->
            if fl.isOptional then Some (Union { types = [fl.value; Prim Undefined] })
            else Some fl.value
          | Constructor (_, _), TypeLiteral (LString name) when name = "constructor" ->
            Some (Prim UntypedFunction)
          | Indexer (ft, _), (Prim Number | TypeLiteral (LInt _)) -> Some ft.returnType
          | Method (name', ft, typrms), TypeLiteral (LString name) when name = name' ->
            Some (createFunctionInterface [{| ty = ft; typrms = typrms; comments = comments; loc = loc; isNewable = false |}])
          | _, Union { types = ts } ->
            match ts |> List.choose (memberChooser m) with
            | [] -> None
            | [t] -> Some t
            | ts -> Some (Union { types = ts })
          | _, _ -> None

        let rec goOrFail t1 t2 : Type =
          match go t1 t2 with
          | Some t -> t
          | None ->
            let part = sprintf "%s[%s]" (Type.pp t1) (Type.pp t2)
            warn ctx loc "cannot resolve a part '%s' of an indexed access type '%s'" part origText
            UnknownType (Some part)

        and go t1 t2 : Type option =
          match t1, t2 with
          | Union { types = ts }, _ -> Union { types = List.map (fun t1 -> goOrFail t1 t2) ts } |> Some
          | Intersection { types = ts }, _ -> Intersection { types = List.map (fun t1 -> goOrFail t1 t2) ts } |> Some
          | AnonymousInterface c, _ ->
            resolveIndexedAccessOfClass c t2
          | App ((APrim Array | APrim ReadonlyArray), [t], _), Prim (Number | Any) -> Some t
          | Tuple ts, TypeLiteral (LInt i) ->
            match ts.types |> List.tryItem i with
            | Some t -> Some t.value
            | None -> None
          | Tuple ts, Prim (Number | Any) -> Union { types = ts.types |> List.map (fun x -> x.value) } |> Some
          | (App (AIdent i, ts, loc) | (Ident ({ loc = loc } & i) & Dummy ts)), _ ->
            Ident.pickDefinition ctx i (function
              | Definition.TypeAlias ta ->
                let subst = createBindings i.name loc ta.typeParams ts
                let target =
                  ta.target |> substTypeVar subst ctx |> resolveErasedTypeImpl typeQueries ctx
                go target t2
              | Definition.Class c ->
                let subst = createBindings i.name loc c.typeParams ts
                let c = c |> mapInClass (fun ctx -> substTypeVar subst ctx >> resolveErasedTypeImpl typeQueries ctx) ctx
                resolveIndexedAccessOfClass c t2
              | _ -> None
            )
          | _, _ -> None
        match go (resolveErasedTypeImpl typeQueries ctx tobj) (resolveErasedTypeImpl typeQueries ctx tindex) with
        | Some t -> t
        | None ->
          warn ctx loc "cannot resolve an indexed access type '%s'" origText
          UnknownType (Some origText)

      | TypeQuery i ->
        let onFail () =
          warn ctx loc "cannot resolve a type query '%s'" origText
          UnknownType (Some origText)
        match i.fullName with
        | [] -> onFail ()
        | fn when Set.isSubset (Set.ofList fn) typeQueries ->
          warn ctx loc "a recursive type query '%s' is detected and is ignored" origText
          UnknownType (Some origText)
        | fn ->
          let result ty =
            let typeQueries = Set.union (Set.ofList fn) typeQueries
            resolveErasedTypeImpl typeQueries ctx ty
          let types =
            Ident.getDefinitions ctx i
            |> List.choose (function
              | Definition.Variable v -> result v.typ |> Some
              | Definition.Function f -> result (Func (f.typ, f.typeParams, f.loc)) |> Some
              | Definition.Member (ma, m, _) ->
                match m with
                | Field (fl, _) | Getter fl | Setter fl ->
                  match fl.isOptional, result fl.value with
                  | true, UnknownType msgo -> UnknownType msgo |> Some
                  | true, t -> Union { types =  [t; Prim Undefined] } |> Some
                  | false, t -> Some t
                | Method (_, ft, typrms) -> result (Func (ft, typrms, ma.loc)) |> Some
                | _ -> None
              | _ -> None)
          match types with
          | [] -> onFail ()
          | _ -> createIntersection ctx types

      | Keyof t ->
        let t = resolveErasedTypeImpl typeQueries ctx t
        let onFail () =
          let tyText = Type.pp t
          warn ctx loc "cannot resolve a type operator 'keyof %s'" tyText
          UnknownType (Some tyText)
        let memberChooser = function
          | Field (fl, _) | Getter fl | Setter fl -> Set.singleton (TypeLiteral (LString fl.name))
          | Method (name, _, _) -> Set.singleton (TypeLiteral (LString name))
          | _ -> Set.empty
        let rec go t =
          match t with
          | Union { types = ts } -> ts |> List.map go |> Set.intersectMany
          | Intersection { types = ts } -> ts |> List.map go |> Set.unionMany
          | AnonymousInterface i ->
            i.members |> List.map (snd >> memberChooser) |> Set.unionMany
          | App ((APrim Array | APrim ReadonlyArray), [_], _) | Tuple _ -> Set.singleton (Prim Number)
          | (App (AIdent i, ts, loc) | (Ident ({ loc = loc } & i) & Dummy ts)) ->
            Ident.getDefinitions ctx i
            |> List.choose (function
              | Definition.TypeAlias ta ->
                let subst = createBindings i.name loc ta.typeParams ts
                ta.target |> substTypeVar subst ctx |> resolveErasedTypeImpl typeQueries ctx |> go |> Some
              | Definition.Class c ->
                let subst = createBindings i.name loc c.typeParams ts
                let c = c |> mapInClass (fun ctx -> substTypeVar subst ctx >> resolveErasedTypeImpl typeQueries ctx) ctx
                c.members |> List.map (snd >> memberChooser) |> Set.unionMany |> Some
              | _ -> None
            ) |> Set.unionMany
          | _ -> Set.empty
        match Set.toList (go t) with
        | [] -> onFail ()
        | [t] -> t
        | types -> Union { types = types }
    | UnknownType msgo -> UnknownType msgo

  let resolveErasedType ctx ty = resolveErasedTypeImpl Set.empty ctx ty

  /// intended to be used as an identifier.
  /// * can be any case.
  /// * can be a reserved name (e.g. `this`).
  /// * can start with a digit.
  let rec getHumanReadableName (ctx: TyperContext<_, _>) = function
    | Intrinsic -> "intrinsic"
    | PolymorphicThis -> "this"
    | Ident i -> i.name |> List.last
    | TypeVar v -> v
    | Prim p ->
      match p with
      | String -> "string" | Bool -> "boolean" | Number -> "number"
      | Any -> "any" | Void -> "void" | Unknown -> "unknown"
      | Null -> "null" | Never -> "never" | Undefined -> "undefined"
      | Symbol _ -> "symbol" | RegExp -> "RegExp"
      | BigInt -> "BigInt" | Array -> "Array"
      | ReadonlyArray -> "ReadonlyArray"
      | Object -> "Object" | UntypedFunction -> "Function"
    | TypeLiteral l ->
      let formatString (s: string) =
        (s :> char seq)
        |> Seq.map (fun c ->
          if Char.isAlphabetOrDigit c then c
          else '_')
        |> Seq.toArray |> System.String
      let inline formatNumber (x: 'a) =
        string x
        |> String.replace "+" ""
        |> String.replace "-" "minus"
        |> String.replace "." "_"
      match l with
      | LString s -> formatString s
      | LInt i -> formatNumber i
      | LFloat f -> formatNumber f
      | LBool true -> "true" | LBool false -> "false"
    | AnonymousInterface c ->
      match ctx |> TyperContext.bindCurrentSourceInfo (fun info -> info.anonymousInterfacesMap |> Map.tryFind c) with
      | Some x -> sprintf "AnonymousInterface%d" x.id
      | None -> "AnonymousInterface"
    | Union _ -> "union" | Intersection _ -> "intersection" | Tuple _ -> "tuple"
    | Func _ -> "function"
    | NewableFunc _ -> "constructor"
    | App (lhs, rhs, _) ->
      match lhs with
      | AIdent i -> getHumanReadableName ctx (Ident i)
      | AAnonymousInterface c -> getHumanReadableName ctx (AnonymousInterface c)
      | APrim Array ->
        match rhs with
        | [t] ->
          let elemType = getHumanReadableName ctx t
          Naming.toCase Naming.Case.PascalCase elemType + "Array"
        | _ -> "Array"
      | APrim p -> getHumanReadableName ctx (Prim p)
    | Erased (et, _, _) ->
      match et with
      | Keyof t ->
        let targetType = getHumanReadableName ctx t
        "Keyof" + Naming.toCase Naming.Case.PascalCase targetType
      | TypeQuery i ->
        "Typeof" + Naming.toCase Naming.Case.PascalCase (List.last i.name)
      | IndexedAccess (t1, t2) ->
        let s1 = getHumanReadableName ctx t1 |> Naming.toCase Naming.Case.PascalCase
        let s2 = getHumanReadableName ctx t2 |> Naming.toCase Naming.Case.PascalCase
        s1 + s2
    | UnknownType _ -> "unknown"

type [<RequireQualifiedAccess>] KnownType =
  | Ident of fullName:FullName
  | AnonymousInterface of AnonymousInterface * AnonymousInterfaceInfo

module Statement =
  open Type

  let createDefinitionsMap (stmts: Statement list) : Trie<string, Definition list> =
    let add ns name x trie =
      trie |> Trie.addOrUpdate (List.rev (name :: ns)) [x] List.append
    let rec go (ns: string list) trie s =
      match s with
      | Export _
      | UnknownStatement _
      | FloatingComment _ -> trie
      | Import import ->
        import.clauses
        |> List.fold (fun trie c ->
          match c with
          | NamespaceImport i -> trie |> add ns i.name (Definition.Import (c, import))
          | ES6WildcardImport _ -> trie
          | ES6Import i -> trie |> add ns i.name (Definition.Import (c, import))
          | ES6DefaultImport i -> trie |> add ns i.name (Definition.Import (c, import))
          | LocalImport i -> trie |> add ns i.name (Definition.Import (c, import))
        ) trie
      | TypeAlias a -> trie |> add ns a.name (Definition.TypeAlias a)
      | Class c ->
        match c.name with
        | Name name ->
          c.members
          |> List.fold (fun trie (ma, m) ->
            let ns = name :: ns
            let d = Definition.Member (ma, m, c)
            match m with
            | Field (fl, _) | Getter fl | Setter fl -> trie |> add ns fl.name d
            | Method (n, _, _) -> trie |> add ns n d
            | _ -> trie
          ) trie
          |> add ns name (Definition.Class c)
        | ExportDefaultUnnamedClass -> trie
      | Enum e ->
        e.cases
        |> List.fold (fun trie c -> trie |> add (e.name :: ns) c.name (Definition.EnumCase (c, e))) trie
        |> add ns e.name (Definition.Enum e)
      | Variable v -> trie |> add ns v.name (Definition.Variable v)
      | Function f -> trie |> add ns f.name (Definition.Function f)
      | Pattern p -> p.underlyingStatements |> List.fold (go ns) trie
      | Module m ->
        m.statements
        |> List.fold (go (m.name :: ns)) trie
        |> add ns m.name (Definition.Module m)
    stmts |> List.fold (go []) Trie.empty

  let findTypesInStatements pred (stmts: Statement list) : 'a seq =
    let rec go ns = function
      | TypeAlias ta ->
        seq {
          yield! findTypes (pred (List.rev ns)) ta.target;
          for tp in ta.typeParams do
            yield! findTypesInTypeParam (pred (List.rev ns)) tp
        }
      | Class c ->
        seq {
          for impl in c.implements do
            yield! findTypes (pred (List.rev ns)) impl
          for tp in c.typeParams do
            yield! findTypesInTypeParam (pred (List.rev ns)) tp
          for _, m in c.members do
            yield! findTypesInClassMember (pred (List.rev ns)) m
        }
      | Module m ->
        m.statements |> Seq.collect (go (m.name :: ns))
      | Variable v -> findTypes (pred (List.rev ns)) v.typ
      | Function f ->
        seq {
          yield! findTypesInFuncType (pred (List.rev ns)) f.typ
          for tp in f.typeParams do
            yield! findTypesInTypeParam (pred (List.rev ns)) tp
        }
      | Enum e ->
        e.cases |> Seq.choose (fun c -> c.value)
                |> Seq.collect (fun l -> findTypes (pred (List.rev ns)) (TypeLiteral l))
      | Import _ | Export _ | UnknownStatement _ | FloatingComment _ -> Seq.empty
      | Pattern p ->
        seq {
          for stmt in p.underlyingStatements do
            yield! go ns stmt
        }
    stmts |> Seq.collect (go [])

  let getTypeLiterals stmts =
    findTypesInStatements (fun _ -> function TypeLiteral l -> Choice1Of2 true, Some l | _ -> Choice1Of2 true, None) stmts |> Set.ofSeq

  let getAnonymousInterfaces stmts =
    findTypesInStatements (fun ns -> function
      | AnonymousInterface c -> Choice1Of2 true, Some (c, ns)
      | _ -> Choice1Of2 true, None
    ) stmts |> Set.ofSeq

  let getUnknownIdentTypes ctx stmts =
    let (|Dummy|) _ = []
    findTypesInStatements (fun _ -> function
      | App (AIdent { name = name; fullName = [] }, ts, _)
      | (Ident { name = name; fullName = [] } & Dummy ts) ->
        Choice2Of2 ts, Some (name, Set.singleton (List.length ts))
      | App (AIdent i, ts, _)
      | (Ident i & Dummy ts) when not (Ident.isType ctx i) ->
        Choice2Of2 ts, Some (i.name, Set.singleton (List.length ts))
      | _ -> Choice1Of2 true, None
    ) stmts |> Seq.fold (fun state (k, v) -> Trie.addOrUpdate k v Set.union state) Trie.empty

  let getKnownTypes (ctx: TyperContext<_, _>) stmts =
    let (|Dummy|) _ = []
    findTypesInStatements (fun _ -> function
      | App (AIdent { fullName = fns }, ts, _) ->
        Choice2Of2 ts, Some (fns |> List.map KnownType.Ident)
      | Ident { fullName = fns } ->
        Choice1Of2 true, Some (fns |> List.map KnownType.Ident)
      | AnonymousInterface a ->
        let info =
          ctx |> TyperContext.bindCurrentSourceInfo (fun info -> info.anonymousInterfacesMap |> Map.tryFind a)
        Choice1Of2 true,
        match info with
        | None -> None
        | Some info -> Some [KnownType.AnonymousInterface (a, info)]
      | _ ->
        Choice1Of2 true, None
    ) stmts |> Seq.concat |> Set.ofSeq

  let rec mapTypeWith overrideFunc mapping ctxOfChildNamespace ctx stmts =
    let mapVariable (v: Variable) = { v with typ = mapping ctx v.typ }
    let mapFunction f =
      { f with
          typ = mapInFuncType mapping ctx f.typ
          typeParams = f.typeParams |> List.map (mapInTypeParam mapping ctx) }
    let f = function
      | TypeAlias a ->
        TypeAlias {
          a with
            target = mapping ctx a.target
            typeParams = a.typeParams |> List.map (mapInTypeParam mapping ctx)
        }
      | Class c ->
        let ctx =
          match c.name with
          | Name name -> ctx |> ctxOfChildNamespace name
          | ExportDefaultUnnamedClass -> ctx
        Class (mapInClass mapping ctx c)
      | Enum e -> Enum e
      | Import i -> Import i
      | Export e -> Export e
      | Variable v -> Variable (mapVariable v)
      | Function f -> Function (mapFunction f)
      | Module m ->
        Module {
          m with
            statements =
              mapTypeWith
                overrideFunc
                mapping
                ctxOfChildNamespace
                (ctx |> ctxOfChildNamespace m.name)
                m.statements
        }
      | UnknownStatement u -> UnknownStatement u
      | FloatingComment c -> FloatingComment c
      | Pattern (ImmediateInstance (i, v)) -> Pattern (ImmediateInstance (mapInClass mapping ctx i, mapVariable v))
      | Pattern (ImmediateConstructor (bi, ci, v)) ->
        Pattern (ImmediateConstructor (mapInClass mapping ctx bi, mapInClass mapping ctx ci, mapVariable v))

    stmts |> List.map (fun stmt ->
      match overrideFunc ctx stmt with
      | Some stmt -> stmt
      | None -> f stmt
    )

  let rec mapType mapping ctxOfChildNamespace ctx stmts =
    mapTypeWith (fun _ _ -> None) mapping ctxOfChildNamespace ctx stmts

  let resolveErasedTypes (ctx: TyperContext<#TyperOptions, _>) (stmts: Statement list) =
    mapType resolveErasedType TyperContext.ofChildNamespace ctx stmts

module Transform =
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
      | Class i (* when i.isInterface *) ->
        match intfMap |> Map.tryFind i.name with
        | None ->
          let iref = ref i
          intfMap <- (intfMap |> Map.add i.name iref)
          result <- Choice2Of3 iref :: result
        | Some iref' ->
          let i' = iref'.Value
          assert (i.accessibility = i'.accessibility)
          let i =
            { i with
                isInterface = i.isInterface && i'.isInterface
                comments = i.comments @ i'.comments |> List.distinct
                loc = i.loc ++ i'.loc
                typeParams = mergeTypeParams i.typeParams i'.typeParams
                implements = List.distinct (i.implements @ i'.implements)
                members = i.members @ i'.members }
          iref'.Value <- i
      | Module n (* when n.isNamespace *) ->
        match nsMap |> Map.tryFind n.name with
        | None ->
          let nref = ref n
          nsMap <- (nsMap |> Map.add n.name nref)
          result <- Choice3Of3 nref :: result
        | Some nref' ->
          let n' = nref'.Value
          nref'.Value <-
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
      | Choice2Of3 i -> Class i.Value
      | Choice3Of3 n ->
        Module { n.Value with statements = merge n.Value.statements }
    )

  let introduceAdditionalInheritance (ctx: IContext<#TyperOptions>) (stmts: Statement list) : Statement list =
    let opts = ctx.options
    let rec go stmts =
      stmts |> List.map (function
        | Class (c & { name = Name name }) ->
          let inherits = ResizeArray(c.implements)

          let has tyName =
            name = tyName || inherits.Exists(fun t ->
              match t with
              | Ident { name = [name'] }
              | App (AIdent { name = [name'] }, _, _) -> tyName = name'
              | _ -> false
            )

          let inline app t ts loc =
            App (AIdent { name = [t]; kind = Some (Set.ofList [Kind.Type; Kind.ClassLike; Kind.Statement]); fullName = []; loc = loc; parent = None}, ts, loc)

          for ma, m in c.members do
            match m with
            // iterator & iterable iterator
            | SymbolIndexer ("iterator", { returnType = ty }, _) when opts.inheritIterable ->
              match ty with
              | App (AIdent { name = ["Iterator"] }, [argTy], _) when not (has "Iterable") ->
                inherits.Add(app "Iterable" [argTy] ma.loc)
              | App (AIdent { name = ["IterableIterator"] }, [argTy], _) when not (has "IterableIterator") ->
                inherits.Add(app "IterableIterator" [argTy] ma.loc)
              | _ -> ()

            // async iterator & iterable iterator
            | SymbolIndexer ("asyncIterator", { returnType = ty }, _) when opts.inheritIterable ->
              match ty with
              | App (AIdent { name = ["AsyncIterator"] }, [argTy], _) when not (has "AsyncIterable") ->
                inherits.Add(app "AsyncIterable" [argTy] ma.loc)
              | App (AIdent { name = ["AsyncIterableIterator"] }, [argTy], _) when not (has "AsyncIterableIterator") ->
                inherits.Add(app "AsyncIterableIterator" [argTy] ma.loc)
              | _ -> ()

            // ArrayLike
            | Indexer ({ args = [Choice1Of2 { value = Prim Number } | Choice2Of2 (Prim Number)]; returnType = retTy }, _)
              when opts.inheritArraylike && not (has "ArrayLike") -> inherits.Add(app "ArrayLike" [retTy] ma.loc)

            // PromiseLike
            | Method ("then", { args = [Choice1Of2 { name = "onfulfilled"; value = onfulfilled }; Choice1Of2 { name = "onrejected" }] }, _)
              when opts.inheritPromiselike && not (has "PromiseLike") ->
              match onfulfilled with
              | Func ({ args = [Choice1Of2 { value = t } | Choice2Of2 t] }, _, _) ->
                inherits.Add(app "PromiseLike" [t] ma.loc)
              | Union { types = ts } ->
                for t in ts do
                  match t with
                  | Func ({ args = [Choice1Of2 { value = t } | Choice2Of2 t] }, _, _) ->
                    inherits.Add(app "PromiseLike" [t] ma.loc)
                  | _ -> ()
              | _ -> ()

            | _ -> ()

          Class { c with implements = List.ofSeq inherits |> List.distinct }
        | x -> x
      )
    go stmts

  let detectPatterns (stmts: Statement list) : Statement list =
    let rec go stmts =
      // declare var Foo: Foo
      let valDict = new MutableMap<string, Variable>()
      // interface Foo { .. }
      let intfDict = new MutableMap<string, Class>()
      // declare var Foo: FooConstructor
      let ctorValDict = new MutableMap<string, Variable>()
      // interface FooConstructor { .. }
      let ctorIntfDict = new MutableMap<string, Class>()

      for stmt in stmts do
        match stmt with
        | Variable (v & { name = name; typ = Ident { name = [intfName] } }) ->
          if name = intfName then valDict.Add(name, v)
          else if (name + "Constructor") = intfName then ctorValDict.Add(name, v)
        | Class (intf & { name = Name name; isInterface = true }) ->
          if name <> "Constructor" && name.EndsWith("Constructor") then
            let origName = name.Substring(0, name.Length - "Constructor".Length)
            ctorIntfDict.Add(origName, intf)
          else
            intfDict.Add(name, intf)
        | _ -> ()

      let intersect (other: string seq) (set: MutableSet<string>) =
        let otherSet = new MutableSet<string>(other)
        for s in set do
          if not <| otherSet.Contains(s) then
            set.Remove(s) |> ignore
        set

      let immediateInstances =
        new MutableSet<string>(valDict.Keys)
        |> intersect intfDict.Keys
      let immediateCtors =
        new MutableSet<string>(intfDict.Keys)
        |> intersect ctorValDict.Keys
        |> intersect ctorIntfDict.Keys

      stmts |> List.choose (function
        | Variable (v & { name = name; typ = Ident { name = [intfName] } }) ->
          if name = intfName && immediateInstances.Contains name && valDict.[name] = v then
            let intf = intfDict.[name]
            Some (Pattern (ImmediateInstance (intf, v)))
          else if name + "Constructor" = intfName && immediateCtors.Contains name && ctorValDict.[name] = v then
            let baseIntf = intfDict.[name]
            let ctorIntf = ctorIntfDict.[name]
            Some (Pattern (ImmediateConstructor (baseIntf, ctorIntf, v)))
          else
            Some (Variable v)
        | Class (intf & { name = Name name; isInterface = true }) ->
          if   (immediateInstances.Contains name || immediateCtors.Contains name) then None
          else if name <> "Constructor" && name.EndsWith("Constructor") then
            let origName = name.Substring(0, name.Length - "Constructor".Length)
            if immediateCtors.Contains origName then None
            else Some (Class intf)
          else Some (Class intf)
        | Module m -> Some (Module { m with statements = go m.statements })
        | x -> Some x
      )
    go stmts

  let replaceAliasToFunction (ctx: #IContext<#TyperOptions>) stmts =
    let rec go = function
      | Module m ->
        Module { m with statements = List.map go m.statements }
      | TypeAlias ta ->
        match ta.target with
        | Func (f, typrms, loc) ->
          Class {
            name = Name ta.name
            isInterface = true
            comments = ta.comments
            accessibility = Protected
            isExported = Exported.No
            implements = []
            typeParams = ta.typeParams
            members = [
              { comments = []; loc = loc; accessibility = Public; isStatic = false },
              Callable (f, typrms)
            ]
            loc = loc
          }
        | _ -> TypeAlias ta
      | x -> x
    if ctx.options.replaceAliasToFunction then
      List.map go stmts
    else
      stmts

  let replaceFunctions (ctx: #IContext<#TyperOptions>) (stmts: Statement list) =
    let rec goType (ctx: #IContext<#TyperOptions>) = function
      | Func (f, [], loc) -> Func (Type.mapInFuncType goType ctx f, [], loc)
      | Func (f, typrms, loc) ->
        let f = Type.mapInFuncType goType ctx f
        let typrms = typrms |> List.map (Type.mapInTypeParam goType ctx)
        if ctx.options.replaceRankNFunction then
          Type.createFunctionInterface [{| ty = f; typrms = typrms; loc = loc; isNewable = false; comments = [] |}]
        else
          Func (f, typrms, loc)
      | NewableFunc (f, [], loc) when not ctx.options.replaceNewableFunction ->
        NewableFunc (Type.mapInFuncType goType ctx f, [], loc)
      | NewableFunc (f, typrms, loc) ->
        let f = Type.mapInFuncType goType ctx f
        let typrms = typrms |> List.map (Type.mapInTypeParam goType ctx)
        if ctx.options.replaceRankNFunction || ctx.options.replaceNewableFunction then
          Type.createFunctionInterface [{| ty = f; typrms = typrms; loc = loc; isNewable = true; comments = [] |}]
        else
          NewableFunc (f, typrms, loc)
      | TypeVar v -> TypeVar v
      | Union u -> Union { u with types = u.types |> List.map (goType ctx) }
      | Intersection i -> Intersection { i with types = i.types |> List.map (goType ctx) }
      | Tuple t -> Tuple (Type.mapInTupleType goType ctx t)
      | AnonymousInterface c -> AnonymousInterface (Type.mapInClass goType ctx c)
      | App (t, ts, loc) ->
        let t =
          match t with
          | AAnonymousInterface i -> AAnonymousInterface (Type.mapInClass goType ctx i)
          | _ -> t
        App (t, ts |> List.map (goType ctx), loc)
      | Ident i -> Ident i | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
      | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
      | Erased (e, loc, origText) ->
        let e' =
          match e with
          | IndexedAccess (t1, t2) -> IndexedAccess (goType ctx t1, goType ctx t2)
          | TypeQuery i -> TypeQuery i
          | Keyof t -> Keyof (goType ctx t)
        Erased (e', loc, origText)
      | UnknownType msgo -> UnknownType msgo
    let rec goStatement (ctx: #IContext<#TyperOptions>) = function
      | Variable { name = name; typ = Func (f, typrms, _); isConst = true; isExported = isExported;
                   accessibility = accessibility; comments = comments; loc = loc }
        when List.length typrms > 1 && ctx.options.replaceRankNFunction ->
          let typ = Type.mapInFuncType goType ctx f
          let typrms = typrms |> List.map (Type.mapInTypeParam goType ctx)
          Function { name = name; typ = typ; typeParams = typrms;
                     isExported = isExported; accessibility = accessibility; comments = comments; loc = loc } |> Some
      | _ -> None
    Statement.mapTypeWith goStatement goType (fun _ x -> x) ctx stmts

type [<RequireQualifiedAccess>] Typeofable = Number | String | Boolean | Symbol | BigInt
module TypeofableType =
  let toType = function
    | Typeofable.Number -> Prim Number
    | Typeofable.String -> Prim String
    | Typeofable.Boolean -> Prim Bool
    | Typeofable.Symbol -> Prim (Symbol false)
    | Typeofable.BigInt -> Prim BigInt

type ResolvedUnion = {
  caseNull: bool
  caseUndefined: bool
  typeofableTypes: Set<Typeofable>
  caseArray: Set<Type> option
  caseEnum: Set<Choice<Enum * EnumCase, Literal>>
  discriminatedUnions: Map<string, Map<Literal, Type>>
  otherTypes: Set<Type>
}

module ResolvedUnion =
  let rec pp (ru: ResolvedUnion) =
    let cases = [
      if ru.caseNull then yield "null"
      if ru.caseUndefined then yield "undefined"
      for x in ru.typeofableTypes do
        yield
          match x with
          | Typeofable.Number -> "number" | Typeofable.String -> "string"
          | Typeofable.Boolean -> "boolean" | Typeofable.Symbol -> "symbol" | Typeofable.BigInt -> "bigint"
      match ru.caseArray with
      | Some t -> yield sprintf "array<%s>" (t |> Set.toSeq |> Seq.map Type.pp |> String.concat " | ")
      | None -> ()
      if not (Set.isEmpty ru.caseEnum) then
        let cases =
          ru.caseEnum
          |> Set.toSeq
          |> Seq.map (function
            | Choice1Of2 ({ name = ty }, { name = name; value = Some value }) -> sprintf "%s.%s=%s" ty name (Literal.toString value)
            | Choice1Of2 ({ name = ty }, { name = name; value = None }) -> sprintf "%s.%s=?" ty name
            | Choice2Of2 l -> Literal.toString l)
        yield sprintf "enum<%s>" (cases |> String.concat " | ")
      for k, m in ru.discriminatedUnions |> Map.toSeq do
        yield sprintf "du[%s]<%s>" k (m |> Map.toSeq |> Seq.map (snd >> Type.pp) |> String.concat ", ")
      for t in ru.otherTypes |> Set.toSeq do yield Type.pp t
    ]
    cases |> String.concat " | "

  let rec private getEnumFromUnion ctx (u: UnionType) : Set<Choice<Enum * EnumCase, Literal>> * UnionType =
    let (|Dummy|) _ = []

    let rec go t =
      seq {
        match t with
        | Union { types = types } -> yield! Seq.collect go types
        | Intersection { types = types } -> yield! types |> List.map (go >> Set.ofSeq) |> Set.intersectMany |> Set.toSeq
        | (Ident ({ loc = loc } & i) & Dummy tyargs)
        | App (AIdent i, tyargs, loc) ->
          for x in i |> Ident.getDefinitions ctx do
            match x with
            | Definition.TypeAlias a ->
              let bindings = Type.createBindings i.name loc a.typeParams tyargs
              yield! go (a.target |> Type.substTypeVar bindings ())
            | Definition.Enum e ->
              for c in e.cases do yield Choice1Of2 (Choice1Of2 (e, c))
            | Definition.EnumCase (c, e) ->
              yield Choice1Of2 (Choice1Of2 (e, c))
            | Definition.Class _ -> yield Choice2Of2 t
            | _ -> ()
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

  let private getDiscriminatedFromUnion (ctx: TyperContext<'a, 's>) (u: UnionType) : Map<string, Map<Literal, Type>> * UnionType =
    let (|Dummy|) _ = []

    let getLiteralFieldsFromClass getLiteralFieldsFromType (c: Class<_>) : Map<string, Set<Literal>> =
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
          | Field (fl, _) ->
            let rec go t =
              match t with
              | TypeLiteral l -> [fl.name, l]
              | Union u -> List.collect go u.types
              | (Ident ({ loc = loc } & i) & Dummy ts)
              | App (AIdent i, ts, loc) ->
                Ident.getDefinitions ctx i
                |> List.collect (function
                  | Definition.Enum e ->
                    e.cases |> List.choose (function { value = Some v } -> Some (fl.name, v) | _ -> None)
                  | Definition.EnumCase ({ value = Some v }, _) -> [fl.name, v]
                  | Definition.TypeAlias a ->
                    let bindings = Type.createBindings i.name loc a.typeParams ts
                    go (a.target |> Type.substTypeVar bindings ())
                  | _ -> []
                )
              | _ -> []
            go fl.value
          | _ -> []
        )
        |> List.distinct
        |> List.groupBy fst
        |> List.map (fun (k, v) -> k, v |> List.map snd |> Set.ofList)
        |> Map.ofList

      Map.foldBack Map.add fields inherited // overwrite inherited fields overloaded by the class

    let rec getLiteralFieldsFromType (ty: Type) : Map<string, Set<Literal>> =
      let inline getLiteralFieldsFromClass c = getLiteralFieldsFromClass getLiteralFieldsFromType c
      match ty with
      | Intrinsic | PolymorphicThis | TypeVar _ | Prim _ | TypeLiteral _ | Tuple _ | Func _ | NewableFunc _ -> Map.empty
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
        let bindings = Type.createBindings ["(anonymous interface)"] loc c.typeParams ts
        getLiteralFieldsFromClass (c |> Type.mapInClass (Type.substTypeVar bindings) ())
      | (Ident ({ loc = loc } & i) & Dummy ts) | App (AIdent i, ts, loc) ->
        let go = function
          | Definition.TypeAlias a ->
            let m =
              if List.isEmpty ts then getLiteralFieldsFromType a.target
              else
                let bindings = Type.createBindings i.name loc a.typeParams ts
                getLiteralFieldsFromType (a.target |> Type.substTypeVar bindings ())
            if Map.isEmpty m then None else Some m
          | Definition.Class c ->
            let m =
              if List.isEmpty ts then getLiteralFieldsFromClass c
              else
                let bindings = Type.createBindings i.name loc c.typeParams ts
                getLiteralFieldsFromClass (c |> Type.mapInClass (Type.substTypeVar bindings) ())
            if Map.isEmpty m then None else Some m
          | _ -> None
        match Ident.getDefinitions ctx i |> List.tryPick go with
        | Some t -> t
        | None -> Map.empty
      | Ident _ | App _ | UnknownType _ -> Map.empty

    let discriminatables, rest =
      List.foldBack (fun ty (discriminatables, rest) ->
        let fields = getLiteralFieldsFromType ty
        if Map.isEmpty fields then discriminatables, ty :: rest
        else (ty, fields) :: discriminatables, rest
      ) u.types ([], [])

    let tagDict = new MutableMap<string, uint32 * Set<Literal>>()
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

  let rec resolve (ctx: TyperContext<'a, 's>) (u: UnionType) : ResolvedUnion =
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
          | Prim Number -> Typeofable.Number  :: prims, ats, rest
          | Prim String -> Typeofable.String  :: prims, ats, rest
          | Prim Bool   -> Typeofable.Boolean :: prims, ats, rest
          | Prim (Symbol _) -> Typeofable.Symbol  :: prims, ats, rest
          | Prim BigInt -> Typeofable.BigInt  :: prims, ats, rest
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

let private createRootContextForTyper (srcs: SourceFile list) (baseCtx: IContext<'Options>) : TyperContext<'Options, unit> =
  let info =
    srcs
    |> List.map (fun sf ->
      sf.fileName,
      { sourceFile = sf
        definitionsMap = Statement.createDefinitionsMap sf.statements
        typeLiteralsMap = Map.empty
        anonymousInterfacesMap = Map.empty
        unknownIdentTypes = Trie.empty })
    |> Map.ofList
  { _currentSourceFile = ""; _currentNamespace = [];
    _info = info; _state = ()
    _cache = { inheritCache = new MutableMap<_, _>(); hasNoInherits = new MutableSet<_>() }
    _options = baseCtx.options; _logger = baseCtx.logger }

let createRootContext (srcs: SourceFile list) (baseCtx: IContext<'Options>) : TyperContext<'Options, unit> =
  let ctx = createRootContextForTyper srcs baseCtx
  { ctx with
      _info =
        ctx._info |> Map.map (fun _ v ->
          let stmts = v.sourceFile.statements
          let tlm = Statement.getTypeLiterals stmts |> Seq.mapi (fun i l -> l, i) |> Map.ofSeq
          let aim =
            Statement.getAnonymousInterfaces stmts
            |> Seq.mapi (fun i (c, ns) -> c, { id = i; path = ns }) |> Map.ofSeq
          let uit = Statement.getUnknownIdentTypes ctx stmts
          { v with
              typeLiteralsMap = tlm
              anonymousInterfacesMap = aim
              unknownIdentTypes = uit }
        ) }

module Ts = TypeScript.Ts

/// Merges `node_modules/typescript/lib/lib.es*.d.ts` to one source file.
///
/// Intended to be used for generating standard bindings for JS APIs.
///
/// Run this before `Typer.runAll`.
let mergeESLibDefinitions (srcs: SourceFile list) =
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
    | Enum e -> Enum { e with cases = e.cases |> List.map (fun c -> map vo c.loc c |> snd) }
    | Class c -> Class { c with members = c.members |> List.map (fun (a, m) -> map vo a.loc a |> snd, m) }
    | _ -> s

  let stmts =
    srcs
    |> List.collect (fun src -> src.statements)
    |> Transform.merge
    |> List.map mapStmt

  { fileName = "lib.es.d.ts"
    statements = stmts
    references = []
    hasNoDefaultLib = true
    moduleName = None }

let runAll (srcs: SourceFile list) (baseCtx: IContext<#TyperOptions>) =
  let inline mapStatements f (src: SourceFile) =
    { src with statements = f src.statements }

  let inline withSourceFileContext ctx f (src: SourceFile) =
    f (ctx |> TyperContext.ofSourceFileRoot src.fileName) src

  baseCtx.logger.tracef "* normalizing syntax trees..."
  let result =
    srcs
    |> List.map (
      mapStatements (fun stmts ->
        stmts
        // merge modules, interfaces, etc
        |> Transform.merge
        // add common inheritances which tends not to be defined by `extends` or `implements`
        |> Transform.introduceAdditionalInheritance baseCtx
        // group statements with pattern
        |> Transform.detectPatterns
        // replace alias to function type with a function interface
        |> Transform.replaceAliasToFunction baseCtx
        // replace N-rank and/or newable function type with an interface
        |> Transform.replaceFunctions baseCtx
      )
    )

  // build a context
  let ctx = createRootContextForTyper result baseCtx

  // resolve every erased types
  ctx.logger.tracef "* evaluating type expressions..."
  let result =
    result |> List.map (
      withSourceFileContext ctx (fun ctx src ->
        { src with statements = Statement.resolveErasedTypes ctx src.statements }))

  // rebuild the context because resolveErasedTypes may introduce additional anonymous interfaces
  let ctx = createRootContext result ctx

  ctx, result