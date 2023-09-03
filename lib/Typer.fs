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

  /// Make class contain all the members inherited from the parent classes.
  /// Useful for targets without proper nominal subtyping.
  abstract addAllParentMembersToClass: bool with get,set

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

  /// Ignores all `T extends U` while typechecking.
  ///
  /// Good for targets which don't support constrained type parameters.
  abstract noExtendsInTyprm: bool with get,set

type [<RequireQualifiedAccess>] Definition =
  | TypeAlias of TypeAlias
  | Class of Class
  | Enum of Enum
  | EnumCase of EnumCase * Enum
  | Namespace of Namespace
  | Variable of Variable
  | Function of Function
  | Import of ImportClause * Import
  | Member of MemberAttribute * Member * Class

type [<RequireQualifiedAccess>] InheritingType =
  | KnownIdent of {| fullName: FullName; tyargs: Type list |}
  | Prim of PrimType * tyargs:Type list
  | Other of Type
  | UnknownIdent of {| name: string list; tyargs: Type list; maxArity: int option |}

type AnonymousInterfaceOrigin = {
  // the name of the type containing the anonymous interface.
  //
  // will be `Some` only when it is used "directly"; will be `None` if it is in a tuple type, one of the arguments of a type application, etc.
  typeName: string option;

  // the name of the value containing the anonymous interface.
  //
  // will be `Some` only when it is used "directly"; will be `None` if it is in a tuple type, one of the arguments of a type application, etc.
  valueName: string option;

  // the name of the argument containing the anonymous interface.
  //
  // will be `Some` only when it is used "directly"; will be `None` if it is in a tuple type, one of the arguments of a type application, etc.
  argName: string option
} with
  static member Empty = { typeName = None; valueName = None; argName = None }

type AnonymousInterfaceInfo = {
  /// a unique number assigned to the anonymous interface
  id: int
  /// the namespace in which the anonymous interface appears
  namespace_: string list
  /// where the anonymous interface is used in
  origin: AnonymousInterfaceOrigin
}

type [<RequireQualifiedAccess>] KnownType =
  | Ident of fullName:FullName
  | AnonymousInterface of AnonymousInterface * AnonymousInterfaceInfo

type [<RequireQualifiedAccess>] ExportType =
  | Child of ExportType * path:string list
  | CommonJS
  | ES6Default
  | ES6 of renameAs:string option
with
  member this.CreateChild(name) =
    match this with
    | Child (e, path) -> Child (e, path @ [name])
    | e -> Child (e, [name])

type SourceFileInfo = {
  sourceFile: SourceFile
  definitionsMap: Trie<string, Definition list>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<AnonymousInterface, AnonymousInterfaceInfo>
  exportMap: Trie<string, ExportType>
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
  Printf.kprintf (fun s -> ctx.logger.warnf "%s at %s" s (Path.relativeToCwd loc.AsString)) fmt

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

  let ofRoot (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with _currentNamespace = [] }

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

  let getFullNameOfCurrentNamespace (ctx: TyperContext<'a, 's>) : FullName = getFullName [] ctx

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
    if ctx._info |> Map.containsKey ctx._currentSourceFile |> not then
      ctx.logger.errorf "%s not in [%s]" ctx._currentSourceFile (ctx._info |> Map.toSeq |> Seq.map fst |> String.concat ", ")
    ctx._info |> Map.tryFind ctx._currentSourceFile |> Option.bind f

  let getExportTypeOfName (name: string list) (ctx: TyperContext<'a, 's>) =
    ctx |> bindCurrentSourceInfo (fun info ->
      info.exportMap |> Trie.tryFind (ctx.currentNamespace @ name)
    )

module FullName =
  let getDefinitions (ctx: TyperContext<_, _>) (fullName: FullName) : Definition list =
    match ctx.info |> Map.tryFind fullName.source with
    | None -> []
    | Some info ->
      info.definitionsMap
      |> Trie.tryFind fullName.name
      |? []

  let getExportType (ctx: TyperContext<_, _>) (fullName: FullName) : ExportType option =
    match ctx.info |> Map.tryFind fullName.source with
    | None -> None
    | Some info -> info.exportMap |> Trie.tryFind fullName.name

  let private classify = function
    | Definition.TypeAlias _ -> Kind.OfTypeAlias
    | Definition.Class c -> if c.isInterface then Kind.OfInterface else Kind.OfClass
    | Definition.Enum _ -> Kind.OfEnum
    | Definition.EnumCase _ -> Kind.OfEnumCase
    | Definition.Namespace _ -> Kind.OfNamespace
    | Definition.Variable _ | Definition.Function _ -> Kind.OfValue
    | Definition.Import (c, _) -> c.kind |> Option.map Set.toList |? []
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

  let mapSource f (fullName: FullName) = { fullName with source = f fullName.source }

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

  let collectDefinition ctx ident collector =
    getDefinitions ctx ident |> List.collect collector

  let collectDefinitionWithFullName ctx ident (collector: FullName -> Definition -> _ list) =
    getDefinitionsWithFullName ctx ident |> List.collect (fun x -> collector x.fullName x.definition)

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

  let mapSource f (ident: Ident) =
    { ident with fullName = ident.fullName |> List.map (FullName.mapSource f) }

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

  and mapInClass mapping (ctx: 'Context) (c: Class<'a>) : Class<'a> =
    { c with
        implements = c.implements |> List.map (mapping ctx)
        members = c.members |> List.map (mapInMember mapping ctx)
        typeParams = c.typeParams |> List.map (mapInTypeParam mapping ctx) }

  and mapInMember mapping ctx (ma, m) =
    let mapMember = function
      | Field (f, m) -> Field (mapInFieldLike mapping ctx f, m)
      | Callable (f, tps) -> Callable (mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | Indexer (f, m) -> Indexer (mapInFuncType mapping ctx f, m)
      | Constructor c -> Constructor { c with args = List.map (mapInArg mapping ctx) c.args }
      | Getter f -> Getter (mapInFieldLike mapping ctx f)
      | Setter f -> Setter (mapInFieldLike mapping ctx f)
      | Newable (f, tps) -> Newable (mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | Method (name, f, tps) -> Method (name, mapInFuncType mapping ctx f, List.map (mapInTypeParam mapping ctx) tps)
      | SymbolIndexer (sn, ft, m) -> SymbolIndexer (sn, mapInFuncType mapping ctx ft, m)
      | UnknownMember msgo -> UnknownMember msgo
    ma, mapMember m

  and mapInFieldLike mapping (ctx: 'Context) (fl: FieldLike) : FieldLike =
    { fl with value = mapping ctx fl.value }

  let mapInTupleType mapping (ctx: 'Context) (ts: TupleType) =
    { ts with types = ts.types |> List.map (fun t -> {| t with value = mapping ctx t.value|})}

  let mapInUnion mapping ctx (u: UnionType) : UnionType =
    { types = u.types |> List.map (mapping ctx) }

  let mapInIntersection mapping ctx (i: IntersectionType) : IntersectionType =
    { types = i.types |> List.map (mapping ctx) }

  let mapInErased mapping ctx (e: ErasedType) : ErasedType =
    match e with
    | IndexedAccess (t1, t2) -> IndexedAccess (mapping ctx t1, mapping ctx t2)
    | TypeQuery i -> TypeQuery i
    | Keyof t -> Keyof (mapping ctx t)

  let rec mapIdent f = function
    | Intrinsic -> Intrinsic | PolymorphicThis -> PolymorphicThis
    | Ident i -> Ident (f i)
    | TypeVar v -> TypeVar v | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
    | AnonymousInterface i -> AnonymousInterface (i |> mapInClass (fun () -> mapIdent f) ())
    | Union u -> Union (mapInUnion (fun () -> mapIdent f) () u)
    | Intersection i -> Intersection (mapInIntersection (fun () -> mapIdent f) () i)
    | Tuple t -> Tuple (mapInTupleType (fun () -> mapIdent f) () t)
    | Func (ft, ts, loc) ->
      Func (
        ft |> mapInFuncType (fun () -> mapIdent f) (),
        ts |> List.map (mapInTypeParam (fun () -> mapIdent f) ()),
        loc
      )
    | NewableFunc (ft, ts, loc) ->
      NewableFunc (
        ft |> mapInFuncType (fun () -> mapIdent f) (),
        ts |> List.map (mapInTypeParam (fun () -> mapIdent f) ()),
        loc
      )
    | App (AIdent i, ts, loc) -> App (AIdent (f i), ts |> List.map (mapIdent f), loc)
    | App (APrim p, ts, loc) -> App (APrim p, ts |> List.map (mapIdent f), loc)
    | App (AAnonymousInterface i, ts, loc) ->
      App (
        AAnonymousInterface (i |> mapInClass (fun () -> mapIdent f) ()),
        ts |> List.map (mapIdent f),
        loc
      )
    | Erased (e, loc, origText) ->
      let e =
        match e with
        | IndexedAccess (t1, t2) -> IndexedAccess (mapIdent f t1, mapIdent f t2)
        | TypeQuery i -> TypeQuery (f i)
        | Keyof t -> Keyof (mapIdent f t)
      Erased (e, loc, origText)
    | UnknownType msg -> UnknownType msg

  let rec mapTypeVar (f: 'Context -> string -> Type) ctx = function
    | TypeVar v -> f ctx v
    | Union u -> Union (mapInUnion (mapTypeVar f) ctx u)
    | Intersection i -> Intersection (mapInIntersection (mapTypeVar f) ctx i)
    | Tuple ts -> Tuple (ts |> mapInTupleType (mapTypeVar f) ctx)
    | AnonymousInterface c -> AnonymousInterface (mapInClass (mapTypeVar f) ctx c)
    | Func (fn, typrms, loc) ->
      Func (mapInFuncType (mapTypeVar f) ctx fn, List.map (mapInTypeParam (mapTypeVar f) ctx) typrms, loc)
    | NewableFunc (fn, typrms, loc) ->
      NewableFunc (mapInFuncType (mapTypeVar f) ctx fn, List.map (mapInTypeParam (mapTypeVar f) ctx) typrms, loc)
    | App (t, ts, loc) ->
      let t =
        match t with
        | AAnonymousInterface i -> AAnonymousInterface (mapInClass (mapTypeVar f) ctx i)
        | _ -> t
      App (t, ts |> List.map (mapTypeVar f ctx), loc)
    | Ident i -> Ident i | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
    | PolymorphicThis -> PolymorphicThis | Intrinsic -> Intrinsic
    | Erased (e, loc, origText) ->
      Erased (mapInErased (mapTypeVar f) ctx e, loc, origText)
    | UnknownType msgo -> UnknownType msgo

  let substTypeVar (subst: Map<string, Type>) _ctx =
    mapTypeVar (fun _ v ->
      match subst |> Map.tryFind v with
      | Some t -> t
      | None -> TypeVar v
    ) _ctx

  let private mapTypeParamInClassImpl f mtp ctx (c: Class<'a>) =
    { c with
        implements = c.implements |> List.map (mtp f ctx)
        members = c.members |> List.map (mapInMember (mtp f) ctx)
        typeParams = c.typeParams |> List.map (f ctx) }

  let rec mapTypeParam (f: 'Context -> TypeParam -> TypeParam) ctx = function
    | Intrinsic -> Intrinsic | PolymorphicThis -> PolymorphicThis
    | Ident i -> Ident i | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l | TypeVar v -> TypeVar v | UnknownType m -> UnknownType m
    | Union u -> Union (mapInUnion (mapTypeParam f) ctx u)
    | Intersection i -> Intersection (mapInIntersection (mapTypeParam f) ctx i)
    | Tuple ts -> Tuple (ts |> mapInTupleType (mapTypeParam f) ctx)
    | AnonymousInterface c -> AnonymousInterface (mapTypeParamInClassImpl f mapTypeParam ctx c)
    | Func (fn, typrms, loc) ->
      Func (mapInFuncType (mapTypeParam f) ctx fn, typrms |> List.map (f ctx), loc)
    | NewableFunc (fn, typrms, loc) ->
      NewableFunc (mapInFuncType (mapTypeParam f) ctx fn, typrms |> List.map (f ctx), loc)
    | App (lhs, ts, loc) ->
      let lhs =
        match lhs with
        | AIdent _ | APrim _ -> lhs
        | AAnonymousInterface c -> AAnonymousInterface (mapTypeParamInClassImpl f mapTypeParam ctx c)
      App (lhs, ts |> List.map (mapTypeParam f ctx), loc)
    | Erased (e, loc, orig) -> Erased (mapInErased (mapTypeParam f) ctx e, loc, orig)

  let mapTypeParamInClass f ctx c = mapTypeParamInClassImpl f mapTypeParam ctx c

  type TypeFinder<'State, 'Result> =
    'State -> Type -> Type list option  * 'State * 'Result seq

  let rec findTypesInFieldLike pred s (fl: FieldLike) = findTypes pred s fl.value
  and findTypesInTypeParam pred s (tp: TypeParam) =
    seq {
      yield! tp.extends |> Option.map (findTypes pred s) |? Seq.empty
      yield! tp.defaultType |> Option.map (findTypes pred s) |? Seq.empty
    }
  and findTypesInFuncType pred s (ft: FuncType<Type>) =
    seq {
      for arg in ft.args do
        match arg with
        | Choice1Of2 fl -> yield! findTypesInFieldLike pred s fl
        | Choice2Of2 t -> yield! findTypes pred s t
      yield! findTypes pred s ft.returnType
    }
  and findTypesInClassMember pred s (m: Member) : 'a seq =
    match m with
    | Field (fl, _) -> findTypesInFieldLike pred s fl
    | Method (_, ft, tps)
    | Callable (ft, tps)
    | Newable (ft, tps) ->
      seq { yield! findTypesInFuncType pred s ft; for tp in tps do yield! findTypesInTypeParam pred s tp }
    | Indexer (ft, _) | SymbolIndexer (_, ft, _) ->
      seq { yield! findTypesInFuncType pred s ft }
    | Getter fl | Setter fl -> seq { yield! findTypesInFieldLike pred s fl }
    | Constructor ft ->
      seq {
        for arg in ft.args do
          match arg with
          | Choice1Of2 fl -> yield! findTypesInFieldLike pred s fl
          | Choice2Of2 t -> yield! findTypes pred s t
      }
    | UnknownMember _ -> Seq.empty
  and findTypes (pred: TypeFinder<'s, 'a>) (state: 's) (t: Type) : 'a seq =
    let rec go_t s x =
      seq {
        let cont, s, y = pred s x
        yield! y
        match cont with
        | Some ts -> for t in ts do yield! go_t s t
        | None ->
          match x with
          | App (t, ts, _) ->
            yield! go_t s (Type.ofAppLeftHandSide t)
            for t in ts do yield! go_t s t
          | Union { types = ts } | Intersection { types = ts } ->
            for t in ts do yield! go_t s t
          | Tuple { types = ts } ->
            for t in ts do yield! go_t s t.value
          | Func (f, tps, _) | NewableFunc (f, tps, _) ->
            yield! findTypesInFuncType pred s f
            for tp in tps do
              yield! findTypesInTypeParam pred s tp
          | Erased (e, _, _) ->
            match e with
            | IndexedAccess (t1, t2) ->
              yield! go_t s t1
              yield! go_t s t2
            | TypeQuery i ->
              yield! findTypes pred s (Ident i)
            | Keyof t ->
              yield! findTypes pred s t
          | AnonymousInterface c ->
            for impl in c.implements do yield! findTypes pred s impl
            for tp in c.typeParams do yield! findTypesInTypeParam pred s tp
            for _, m in c.members do yield! findTypesInClassMember pred s m
          | Intrinsic | PolymorphicThis | Ident _ | TypeVar _ | Prim _ | TypeLiteral _ | UnknownType _ -> ()
      }
    go_t state t

  let getTypeVars ty =
    findTypes (fun () -> function
      | TypeVar s -> Some [], (), [s]
      | _ -> None, (), []
    ) () ty

  let rec private getFreeTypeVarsPredicate () t =
    match t with
    | TypeVar s -> None, (), Seq.singleton s
    | Func (ft, tps, _) | NewableFunc (ft, tps, _) ->
      let fvs = Set.difference (findTypesInFuncType getFreeTypeVarsPredicate () ft |> Set.ofSeq) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
      Some [], (), fvs
    | AnonymousInterface a ->
      let memberFvs =
        a.members |> List.map (fun (_, m) ->
          match m with
          | Field (fl, _) -> findTypesInFieldLike getFreeTypeVarsPredicate () fl
          | Method (_, ft, tps) | Callable (ft, tps) | Newable (ft, tps) ->
            Set.difference (findTypesInFuncType getFreeTypeVarsPredicate () ft |> Set.ofSeq) (tps |> List.map (fun tp -> tp.name) |> Set.ofList)
          | Constructor ft ->
            let ft = ft |> FuncType.map (fun _ -> PolymorphicThis)
            findTypesInFuncType getFreeTypeVarsPredicate () ft
          | Indexer (ft, _) | SymbolIndexer (_, ft, _) -> findTypesInFuncType getFreeTypeVarsPredicate () ft
          | Getter fl | Setter fl -> findTypesInFieldLike getFreeTypeVarsPredicate () fl
          | UnknownMember _ -> Set.empty
        ) |> Seq.concat |> Set.ofSeq
      let fvs = Set.difference memberFvs (a.typeParams |> List.map (fun tp -> tp.name) |> Set.ofList)
      Some [], (), fvs
    | _ -> None, (), Set.empty

  let getFreeTypeVars ty = findTypes getFreeTypeVarsPredicate () ty |> Set.ofSeq

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

  let matchArity arity (typrms: TypeParam list) : TypeParam list option =
    let rec go i acc = function
      | tp :: rest when i > 0 -> go (i-1) (tp :: acc) rest
      | { defaultType = None } :: _ -> None
      | { defaultType = Some _ } :: rest -> go 0 acc rest
      | [] -> if i = 0 then List.rev acc |> Some else None
    go arity [] typrms

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
  let normalizeUnion (u: UnionType) : UnionType =
    let rec go ts =
      ts |> List.collect (function
        | Union u -> go u.types
        | t -> [t]
      )
    { u with types = go u.types |> List.distinct }

  let normalizeIntersection (i: IntersectionType) : IntersectionType =
    let rec go ts =
      ts |> List.collect (function
        | Intersection i -> go i.types
        | t -> [t]
      )
    { i with types = go i.types |> List.distinct }

  // TODO: more optimization
  let createUnion (types: Type list) =
    match types with
    | [] -> Prim Never
    | [x] -> x
    | _ -> Union (normalizeUnion { types = types })

  // TODO: more optimization
  let createIntersection (types: Type list) =
    match types with
    | [] -> Prim Any
    | [x] -> x
    | _ -> Intersection (normalizeIntersection { types = types })

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
      | Ident { name = name; misc = misc } & Dummy ts | App (AIdent { name = name; misc = misc }, ts, _) ->
        yield! treatPrimTypeInterfaces name ts |> Option.toList
        if includeSelf then
          yield InheritingType.UnknownIdent {| name = name; tyargs = ts; maxArity = misc.maxArity |}, depth
      | Prim p & Dummy ts
      | App (APrim p, ts, _) ->
        if includeSelf then
          yield InheritingType.Prim (p, ts), depth
      | Intersection i ->
        for t in i.types do
          yield! getAllInheritancesImpl (depth+1) includeSelf ctx t
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
                InheritingType.KnownIdent {|
                  fullName = fn
                  tyargs = c.typeParams |> List.map (fun tp -> TypeVar tp.name)
                |}
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

  let isSuperClass ctx (super: Type) (sub: Type) =
    Set.isProperSubset (getAllInheritancesAndSelf ctx super) (getAllInheritancesAndSelf ctx sub)

  let isSubClass ctx (sub: Type) (super: Type) =
    Set.isProperSuperset (getAllInheritancesAndSelf ctx super) (getAllInheritancesAndSelf ctx sub)

  let knownTypeFinder ctx : TypeFinder<_, _> =
    fun state -> function
      | Ident ({ fullName = fns } & i) & Dummy ts
      | App (AIdent ({ fullName = fns } & i), ts, _) ->
        let next =
          Ident.getDefinitionsWithFullName ctx i
          |> List.collect (fun x ->
            match x.definition with
            | Definition.TypeAlias { typeParams = typrms } | Definition.Class { typeParams = typrms } ->
              assignTypeParams i.name i.loc typrms ts
                (fun _ ty -> Some ty)
                (fun tv ->
                  match tv.defaultType with
                  | Some ty -> Some ty
                  | None -> None)
            | _ -> [])
          |> List.choose id
          |> List.append ts
          |> List.distinct
        Some next, state, List.map KnownType.Ident fns
      | AnonymousInterface a ->
        let info =
          ctx |> TyperContext.bindCurrentSourceInfo (fun info -> info.anonymousInterfacesMap |> Map.tryFind a)
        None, state,
        match info with
        | None -> []
        | Some info -> [KnownType.AnonymousInterface (a, info)]
      | _ -> None, state, []

  let getKnownTypes (ctx: TyperContext<_, _>) t =
    findTypes (knownTypeFinder ctx) () t |> Set.ofSeq

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
            | ts -> createIntersection ts |> Some
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
                  | Constructor _ when name = "constructor" -> Some (Choice2Of2 (Prim UntypedFunction))
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
          | Constructor _, TypeLiteral (LString name) when name = "constructor" ->
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
          | _ -> createIntersection types

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
      | LString s ->
        match s with
        | "\r" -> "cr" | "\n" -> "lf" | "\r\n" -> "crlf" | "\t" -> "tab"
        | " " -> "whitespace"
        | "/" -> "sol" | "\\" -> "bsol" | "|" -> "vert"
        | "'" -> "apos" | "\"" -> "quot" | "`" -> "grave"
        | "!" -> "excl" | "?" -> "quest"
        | "," -> "comma" | "." -> "period" | ":" -> "colon" | ";" -> "semi"
        | "+" -> "plus" | "-" -> "minus" | "*" -> "ast" | "^" -> "hat"
        | "$" -> "dollar" | "&" -> "amp" | "%" -> "percnt" | "#" -> "num" | "@" -> "commat" | "_" -> "lowbar"
        | "[" -> "lbrack" | "]" -> "rbrack" | "(" -> "lpar" | ")" -> "rpar" | "{" -> "lbrace" | "}" -> "rbrace"
        | "<" -> "lt" | ">" -> "gt" | "=" -> "equals"
        | _ ->
          if System.String.IsNullOrEmpty s then "empty"
          else if String.forall ((=) ' ') s then $"whitespace{s.Length}"
          else formatString s
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

module Statement =
  open Type

  type StatementFinder<'State, 'Result> =
    string list -> 'State -> Statement -> Statement list option * 'State * 'Result seq

  let findStatements (pred: StatementFinder<'s, 'a>) (state: 's) (stmts: Statement list) : 'a seq =
    let rec go ns state stmts =
      seq {
        for stmt in stmts do
          let stmts, state, result = pred (List.rev ns) state stmt
          yield! result
          match stmts with
          | Some stmts ->
            match stmt with
            | Namespace { name = name } ->
              yield! go (name :: ns) state stmts
            | _ -> yield! go ns state stmts
          | None ->
            match stmt with
            | Namespace { name = name; statements = statements } ->
              yield! go (name :: ns) state statements
            | Global { statements = statements } | AmbientModule { statements = statements } ->
              yield! go [] state statements
            | Pattern p ->
              yield! go ns state p.underlyingStatements
            | _ -> ()
      }
    go [] state stmts

  let findTypesInStatements (pred: TypeFinder<{| state: 's; currentNamespace: string list |}, 'a>) (state: 's) (stmts: Statement list) : 'a seq =
    let rec go (ns: string list) (state: 's) (stmt: Statement) : 'a seq =
      let state' = {| state = state; currentNamespace = List.rev ns |}
      seq {
        match stmt with
        | TypeAlias ta ->
          yield! findTypes pred state' ta.target;
          for tp in ta.typeParams do
            yield! findTypesInTypeParam pred state' tp
        | Class c ->
          for impl in c.implements do
            yield! findTypes pred state' impl
          for tp in c.typeParams do
            yield! findTypesInTypeParam pred state' tp
          for _, m in c.members do
            yield! findTypesInClassMember pred state' m
        | Variable v -> yield! findTypes pred state' v.typ
        | Function f ->
          yield! findTypesInFuncType pred state' f.typ
          for tp in f.typeParams do
            yield! findTypesInTypeParam pred state' tp
        | Enum e ->
          yield!
            e.cases |> Seq.choose (fun c -> c.value)
                    |> Seq.collect (fun l -> findTypes pred state' (TypeLiteral l))
        | Import _ | Export _ | ReExport _ | UnknownStatement _ | FloatingComment _ -> ()
        | Pattern p ->
          for stmt in p.underlyingStatements do
            yield! go ns state stmt
        | Namespace m ->
          for stmt in m.statements do
            yield! go (m.name :: ns) state stmt
        | AmbientModule { statements = statements } | Global { statements = statements } ->
          for stmt in statements do
            yield! go [] state stmt
      }
    stmts |> Seq.collect (go [] state)

  let getTypeLiterals stmts =
    findTypesInStatements
      (fun ctx -> function TypeLiteral l -> None, ctx, [l] | _ -> None, ctx, [])
      () stmts |> Set.ofSeq

  let getAnonymousInterfaces stmts : Set<AnonymousInterface * {| origin: AnonymousInterfaceOrigin; namespace_: string list |}> =
    let rec treatFuncType (state: {| origin: AnonymousInterfaceOrigin; namespace_: string list |}) (ft: FuncType<Type>) tps =
      seq {
        for arg in ft.args do
          let ty, origin =
            match arg with
            | Choice1Of2 fl -> fl.value, { state.origin with argName = Some fl.name }
            | Choice2Of2 t -> t, state.origin
          yield! findTypes typeFinder {| state with origin = origin |} ty
        yield! findTypes typeFinder state ft.returnType
        yield! treatTypeParameters state tps
      }
    and treatTypeParameters (state: {| origin: AnonymousInterfaceOrigin; namespace_: string list |}) (tps: TypeParam list) =
      seq {
        for tp in tps do
          yield! tp.extends |> Option.map (findTypes typeFinder state) |? Seq.empty
          yield! tp.defaultType |> Option.map (findTypes typeFinder state) |? Seq.empty
      }
    and treatNamed (state: {| origin: AnonymousInterfaceOrigin; namespace_: string list |}) name value =
      findTypes typeFinder {| state with origin = { state.origin with valueName = Some name } |} value
    and typeFinder (state: {| origin: AnonymousInterfaceOrigin; namespace_: string list |}) ty =
      let inline resultMany xs = Some [], state, xs
      match ty with
      | App (AAnonymousInterface i, _, _) | AnonymousInterface i ->
        let inner =
          let state = {| state with origin = AnonymousInterfaceOrigin.Empty |}
          treatClassLike state (i.MapName(ignore))
        None, {| state with origin = AnonymousInterfaceOrigin.Empty |}, Seq.append [i, state] inner
      | Func (ft, tps, _) | NewableFunc (ft, tps, _) ->
        treatFuncType state ft tps |> resultMany
      | Union { types = types } | Intersection { types = types } ->
        Some types, state, Seq.empty
      | _ -> None, {| state with origin = AnonymousInterfaceOrigin.Empty |}, Seq.empty
    and treatClassLike (state: {| origin: AnonymousInterfaceOrigin; namespace_: string list |}) (c: Class<unit>) =
      seq {
        for _, m in c.members do
          match m with
          | Method (name, ft, tps) ->
            yield! treatFuncType {| state with origin = { state.origin with valueName = Some name } |} ft tps
          | Newable (ft, tps) | Callable (ft, tps) -> yield! treatFuncType state ft tps
          | Field (fl, _) | Getter fl | Setter fl -> yield! treatNamed state fl.name fl.value
          | Indexer (ft, _) -> yield! treatFuncType state ft []
          | SymbolIndexer (name, ft, _) ->
            yield! treatFuncType {| state with origin = { state.origin with valueName = Some name } |} ft []
          | Constructor ft ->
            for arg in ft.args do
              let ty, origin =
                match arg with
                | Choice1Of2 fl -> fl.value, { state.origin with argName = Some fl.name }
                | Choice2Of2 t -> t, state.origin
              yield! findTypes typeFinder {| state with origin = origin |} ty
          | UnknownMember _ -> ()
        for t in c.implements do
          yield! findTypes typeFinder state t
        yield! treatTypeParameters state c.typeParams
      }

    findStatements (fun currentNamespace state stmt ->
      let inline result_ x = Some [], state, x
      let state = {| origin = state; namespace_ = currentNamespace |}
      match stmt with
      | TypeAlias ta ->
        let state = {| state with origin = { state.origin with typeName = Some ta.name } |}
        seq {
          yield! findTypes typeFinder state ta.target
          yield! treatTypeParameters state ta.typeParams
        } |> result_
      | Variable v ->
        treatNamed state v.name v.typ |> result_
      | Function f ->
        treatFuncType {| state with origin = { state.origin with valueName = Some f.name } |} f.typ f.typeParams |> result_
      | Class c ->
        let typeName =
          match c.name with Name n -> Some n | _ -> None
        let state = {| state with namespace_ = currentNamespace; origin = { state.origin with typeName = typeName } |}
        treatClassLike state (c.MapName(ignore)) |> result_
      | _ -> None, state.origin, Seq.empty
    ) AnonymousInterfaceOrigin.Empty stmts |> Set.ofSeq

  let getUnknownIdentTypes ctx stmts =
    let (|Dummy|) _ = []
    findTypesInStatements (fun state -> function
      | App (AIdent { name = name; fullName = [] }, ts, _)
      | (Ident { name = name; fullName = [] } & Dummy ts) ->
        Some ts, state, [name, Set.singleton (List.length ts)]
      | App (AIdent i, ts, _)
      | (Ident i & Dummy ts) when not (Ident.isType ctx i) ->
        Some ts, state, [i.name, Set.singleton (List.length ts)]
      | _ -> None, state, []
    ) () stmts |> Seq.fold (fun state (k, v) -> Trie.addOrUpdate k v Set.union state) Trie.empty

  let getKnownTypes (ctx: TyperContext<_, _>) stmts =
    findTypesInStatements (knownTypeFinder ctx) () stmts |> Set.ofSeq

  let rec mapTypeWith overrideFunc mapping ctxOfChildNamespace ctxOfRoot ctx stmts =
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
      | ReExport e -> ReExport e
      | Variable v -> Variable (mapVariable v)
      | Function f -> Function (mapFunction f)
      | Namespace m ->
        Namespace {
          m with
            statements =
              mapTypeWith
                overrideFunc
                mapping
                ctxOfChildNamespace
                ctxOfRoot
                (ctx |> ctxOfChildNamespace m.name)
                m.statements
        }
      | Global m ->
        Global {
          m with
            statements =
              mapTypeWith
                overrideFunc
                mapping
                ctxOfChildNamespace
                ctxOfRoot
                (ctx |> ctxOfRoot)
                m.statements
        }
      | AmbientModule m ->
        AmbientModule {
          m with
            statements =
              mapTypeWith
                overrideFunc
                mapping
                ctxOfChildNamespace
                ctxOfRoot
                (ctx |> ctxOfChildNamespace m.name.orig)
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

  let rec mapType mapping ctxOfChildNamespace ctxOfRoot ctx stmts =
    mapTypeWith (fun _ _ -> None) mapping ctxOfChildNamespace ctxOfRoot ctx stmts

  let resolveErasedTypes (ctx: TyperContext<#TyperOptions, _>) (stmts: Statement list) =
    mapType resolveErasedType TyperContext.ofChildNamespace TyperContext.ofRoot ctx stmts

  let mapIdent f stmts =
    let orf _ = function
      | Export e ->
        let g = function
          | CommonJsExport i -> CommonJsExport (f i)
          | ES6DefaultExport i -> ES6DefaultExport (f i)
          | ES6Export e -> ES6Export {| e with target = f e.target |}
          | NamespaceExport ns -> NamespaceExport ns
        Export { e with clauses = e.clauses |> List.map g } |> Some
      | ReExport e ->
        let g = function
          | ES6ReExport e -> ES6ReExport {| e with target = f e.target |}
          | ES6NamespaceReExport ns -> ES6NamespaceReExport ns
          | ES6WildcardReExport -> ES6WildcardReExport
        ReExport { e with clauses = e.clauses |> List.map g } |> Some
      | Import i ->
        let g = function
          | LocalImport l -> LocalImport {| l with target = f l.target |}
          | x -> x
        Import { i with clauses = i.clauses |> List.map g } |> Some
      | _ -> None
    mapTypeWith orf (fun () -> mapIdent f) (fun _ -> id) id () stmts

type Class<'a> with
  /// check if an interface consists only of fields and properties (but not methods)
  ///
  /// setters and indexers are ignored
  member this.isPOJO : bool =
    this.isInterface &&
    this.members |> List.exists (fun (_, m) -> match m with Field _ | Getter _ -> true | _ -> false) &&
    this.members
    |> List.filter (fun (_, m) -> match m with Setter _ | UnknownMember _ | Indexer _ -> false | _ -> true)
    |> List.forall (fun (_, m) ->
      match m with
      | Field _ | Getter _ -> true
      | Method _ | Callable _ | Newable _ | Constructor _ | SymbolIndexer _ -> false
      | Setter _ | UnknownMember _ | Indexer _ -> true // impossible
    )

  /// check if an interface consists only of fields, properties, and methods (but not callable, newable, etc)
  ///
  /// setters and indexers are ignored
  member this.isPOJOWithMethods : bool =
    this.isInterface &&
    this.members |> List.exists (fun (_, m) -> match m with Field _ | Getter _ | Method _ -> true | _ -> false) &&
    this.members
    |> List.filter (fun (_, m) -> match m with Setter _ | UnknownMember _ | Indexer _ -> false | _ -> true)
    |> List.forall (fun (_, m) ->
      match m with
      | Field _ | Getter _ | Method _ -> true
      | Callable _ | Newable _ | Constructor _ | SymbolIndexer _ -> false
      | Setter _ | UnknownMember _ | Indexer _ -> true // impossible
    )

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
  caseEnum: Set<Choice<Enum * EnumCase * Type, Literal>>
  discriminatedUnions: Map<string, Map<Literal, Type>>
  otherTypes: Set<Type>
} with
  member this.satisfies(?hasNull, ?hasUndefined, ?hasTypeofable, ?hasArray, ?hasEnum, ?hasDU, ?hasOther) =
    let check opt value =
      opt |> Option.map (fun x -> x = value) |? true
    check hasNull this.caseNull
    && check hasUndefined this.caseUndefined
    && check hasTypeofable (this.typeofableTypes |> Set.isEmpty |> not)
    && check hasArray (this.caseArray |> Option.map (Set.isEmpty >> not) |? false)
    && check hasEnum (this.caseEnum |> Set.isEmpty |> not)
    && check hasDU (this.discriminatedUnions |> Map.isEmpty |> not)
    && check hasOther (this.otherTypes |> Set.isEmpty |> not)

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
            | Choice1Of2 ({ name = ty }, { name = name; value = Some value }, _) -> sprintf "%s.%s=%s" ty name (Literal.toString value)
            | Choice1Of2 ({ name = ty }, { name = name; value = None }, _) -> sprintf "%s.%s=?" ty name
            | Choice2Of2 l -> Literal.toString l)
        yield sprintf "enum<%s>" (cases |> String.concat " | ")
      for k, m in ru.discriminatedUnions |> Map.toSeq do
        yield sprintf "du[%s]<%s>" k (m |> Map.toSeq |> Seq.map (snd >> Type.pp) |> String.concat ", ")
      for t in ru.otherTypes |> Set.toSeq do yield Type.pp t
    ]
    cases |> String.concat " | "

  let checkNullOrUndefined (u: UnionType) : {| hasNull: bool; hasUndefined: bool; rest: Type list |} =
    let u = Type.normalizeUnion u
    let nullOrUndefined, rest =
      u.types |> List.partition (function Prim (Null | Undefined) -> true | _ -> false)
    let hasNull = nullOrUndefined |> List.contains (Prim Null)
    let hasUndefined = nullOrUndefined |> List.contains (Prim Undefined)
    {| hasNull = hasNull; hasUndefined = hasUndefined; rest = rest |}

  let rec private getEnumFromUnion ctx (u: UnionType) : Set<Choice<Enum * EnumCase * Type, Literal>> * UnionType =
    let (|Dummy|) _ = []

    let rec go t =
      seq {
        match t with
        | Union { types = types } -> yield! Seq.collect go types
        | Intersection { types = types } ->
          let cases = types |> List.map (go >> Set.ofSeq) |> Set.intersectMany
          if Set.isEmpty cases then yield Choice2Of2 t
          else yield! cases
        | (Ident ({ loc = loc } & i) & Dummy tyargs)
        | App (AIdent i, tyargs, loc) ->
          let finder = function
            | Definition.TypeAlias a ->
              let bindings = Type.createBindings i.name loc a.typeParams tyargs
              go (a.target |> Type.substTypeVar bindings ())
            | Definition.Enum e ->
              e.cases |> Seq.map (fun c -> Choice1Of2 (Choice1Of2 (e, c, t)))
            | Definition.EnumCase (c, e) ->
              Seq.singleton (Choice1Of2 (Choice1Of2 (e, c, t)))
            | _ -> Seq.empty
          let result =
            i |> Ident.getDefinitions ctx
              |> List.tryPick (fun d ->
                let e = finder d
                if Seq.isEmpty e then None else Some e)
          match result with
          | Some e -> yield! e
          | None -> yield Choice2Of2 t
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
      | Erased _ -> impossible "getDiscriminatedFromUnion_getLiteralFieldsFromType_Erased"
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
          | true, (i, commonValues) when values <> commonValues -> // reject the tag if it does not discriminate at all
            let intersect = Set.intersect values commonValues
            Some ((-(Set.count intersect), i), (name, values)) // prefer the tag with the least intersections
          | _, _ -> None)
      if List.isEmpty xs then None
      else Some (xs |> List.maxBy fst |> snd)

    let discriminatables, rest =
      List.foldBack (fun (ty, fields) (discriminatables, rest) ->
        match getBestTag fields with
        | Some (name, values) -> (name, values, ty) :: discriminatables, rest
        | None -> discriminatables, ty :: rest
      ) discriminatables ([], rest)

    if List.length discriminatables < 2 then
      Map.empty, u
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
      let u' = checkNullOrUndefined u
      let prims, arrayTypes, rest =
        u'.rest |> List.fold (fun (prims, ats, rest) ->
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
      let caseEnum, rest' =
        match rest with
        | _ :: _ :: _ -> getEnumFromUnion ctx { types = rest }
        | _ -> Set.empty, { types = rest }
      let discriminatedUnions, rest'' =
        match rest'.types with
        | _ :: _ :: _ -> getDiscriminatedFromUnion ctx rest'
        | _ -> Map.empty, rest'
      let otherTypes = Set.ofList rest''.types

      if not u'.hasNull && not u'.hasUndefined && Set.isEmpty typeofableTypes && caseArray = None
         && Set.isEmpty caseEnum && Map.isEmpty discriminatedUnions && Set.isEmpty otherTypes then
        eprintfn "[0] %A" rest
        eprintfn "[1] %A" rest'
        eprintfn "[2] %A" rest''
        failwith "error!!!!!!!!!!!!!"

      let result =
        { caseNull = u'.hasNull
          caseUndefined = u'.hasUndefined
          typeofableTypes = typeofableTypes
          caseArray = caseArray
          caseEnum = caseEnum
          discriminatedUnions = discriminatedUnions
          otherTypes = otherTypes }

      resolveUnionMap <- resolveUnionMap |> Map.add u result
      result

module Member =
  let getActualTypeOfFieldLike (fl: FieldLike) =
    if fl.isOptional then
      Type.createUnion [Prim Undefined; fl.value]
    else
      match fl.value with
      | Union u -> Union (Type.normalizeUnion u)
      | t -> t

let inferEnumCaseValue (stmts: Statement list) : Statement list =
  let rec go = function
    | Enum e ->
      let f (state: Literal option) (c: EnumCase) : EnumCase * Literal option =
        match c.value with
        | Some v -> c, Some v
        | None ->
          let v =
            match state with
            | None -> Some (LInt 0)
            | Some (LInt n) -> Some (LInt (n+1))
            | Some (LFloat f) -> Some (LFloat (f+1.0))
            | Some _ -> None
          { c with value = v }, v
      Enum { e with cases = e.cases |> List.mapFold f None |> fst }
    | Namespace m -> Namespace { m with statements = m.statements |> List.map go }
    | Global m -> Global { m with statements = m.statements |> List.map go }
    | s -> s
  stmts |> List.map go

let removeExtendsInTyprm =
  let remove _ (tp: TypeParam) = { tp with extends = None }
  let rec goStmt ctx = function
    | Class c -> Type.mapTypeParamInClass remove ctx c |> Class |> Some
    | TypeAlias a ->
      TypeAlias {
        a with
          target = a.target |> Type.mapTypeParam remove ctx
          typeParams = a.typeParams |> List.map (remove ctx)
      } |> Some
    | Function f ->
      Function {
        f with
          typ = f.typ |> Type.mapInFuncType (Type.mapTypeParam remove) ctx
          typeParams = f.typeParams |> List.map (remove ctx)
      } |> Some
    | _ -> None
  Statement.mapTypeWith goStmt (Type.mapTypeParam remove) (fun _ -> id) id ()

let rec mergeStatements (stmts: Statement list) =
  let mutable result : Choice<Statement, Class ref, Namespace ref, AmbientModule ref, Global ref> list = []

  let mutable intfMap = Map.empty
  let mutable nsMap = Map.empty
  let mutable amMap = Map.empty
  let mutable globalM = None
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
        result <- Choice2Of5 iref :: result
      | Some iref' ->
        let i' = iref'.Value
        assert (i.accessibility = i'.accessibility)
        let i =
          { i with
              isInterface = i.isInterface && i'.isInterface
              comments = List.distinct (i.comments @ i'.comments)
              loc = i.loc ++ i'.loc
              typeParams = mergeTypeParams i.typeParams i'.typeParams
              implements = List.distinct (i.implements @ i'.implements)
              members = List.distinct (i.members @ i'.members) }
        iref'.Value <- i
    | Namespace n ->
      match nsMap |> Map.tryFind n.name with
      | None ->
        let nref = ref n
        nsMap <- (nsMap |> Map.add n.name nref)
        result <- Choice3Of5 nref :: result
      | Some nref' ->
        let n' = nref'.Value
        nref'.Value <-
          { n with
              loc = n.loc ++ n'.loc
              comments = List.distinct (n.comments @ n'.comments)
              statements = List.distinct (n'.statements @ n.statements) }
    | AmbientModule n ->
      match amMap |> Map.tryFind n.name with
      | None ->
        let nref = ref n
        amMap <- (amMap |> Map.add n.name nref)
        result <- Choice4Of5 nref :: result
      | Some nref' ->
        let n' = nref'.Value
        nref'.Value <-
          { n with
              loc = n.loc ++ n'.loc
              comments = n.comments @ n'.comments |> List.distinct
              statements = n'.statements @ n.statements |> List.distinct }
    | Global n ->
      match globalM with
      | None ->
        let nref = ref n
        globalM <- Some nref
        result <- Choice5Of5 nref :: result
      | Some nref ->
        let n' = nref.Value
        nref.Value <-
          { n with
              loc = n.loc ++ n'.loc
              comments = n.comments @ n'.comments |> List.distinct
              statements = n'.statements @ n.statements }
    | stmt ->
      if otherStmtSet |> Set.contains stmt |> not then
        otherStmtSet <- otherStmtSet |> Set.add stmt
        result <- Choice1Of5 stmt :: result
  result
  |> List.rev
  |> List.map (function
    | Choice1Of5 s -> s
    | Choice2Of5 i -> Class i.Value
    | Choice3Of5 n -> Namespace { n.Value with statements = mergeStatements n.Value.statements }
    | Choice4Of5 n -> AmbientModule { n.Value with statements = mergeStatements n.Value.statements }
    | Choice5Of5 n -> Global { n.Value with statements = mergeStatements n.Value.statements }
  )

let mergeSources newFileName (srcs: SourceFile list) =
  let sourceMapping =
    srcs |> List.map (fun src -> src.fileName, newFileName) |> Map.ofList
  let f (i: Ident) =
    i |> Ident.mapSource (fun path ->
      sourceMapping |> Map.tryFind path |? path
    )
  let statements =
    srcs
    |> List.collect (fun src -> src.statements |> Statement.mapIdent f)
    |> mergeStatements
  { fileName = newFileName
    statements = statements
    references = srcs |> List.collect (fun src -> src.references) |> List.distinct
    hasNoDefaultLib = srcs |> List.exists (fun src -> src.hasNoDefaultLib) }

let addDefaultConstructorToClass (ctx: TyperContext<_, _>) (stmts: Statement list) : Statement list =
  let m = new MutableMap<Location, Class * _ list>()
  let getConstructors (c: Class) = c.members |> List.choose (function (ma, Constructor ft) -> Some (ma, ft) | _ -> None)
  let substInConstructors mapping cs =
    cs |> List.map (fun (ma, ft) ->
      let args =
        ft.args |> List.map (Type.mapInArg (Type.substTypeVar mapping) ())
      ma, { ft with args = args }
    )
  let rec addConstructors (c: Class) =
    let constructors = getConstructors c
    if not (List.isEmpty constructors) then
      c, constructors
    else
      match m.TryGetValue(c.loc) with
      | true, (c, cs) -> c, cs
      | _, _ ->
        let parentConstructors =
          let (|Dummy|) _ = []
          let rec picker = function
            | (Ident ({ loc = loc } & i) & Dummy ts) | App (AIdent i, ts, loc) ->
              let pick = function
                | Definition.TypeAlias a ->
                  if List.isEmpty ts then picker a.target
                  else
                    let bindings = Type.createBindings i.name loc a.typeParams ts
                    picker a.target |> Option.map (substInConstructors bindings)
                | Definition.Class c when not c.isInterface ->
                  if List.isEmpty ts then Some (addConstructors c |> snd)
                  else
                    let c, constructors = addConstructors c
                    let bindings = Type.createBindings i.name loc c.typeParams ts
                    Some (constructors |> substInConstructors bindings)
                | _ -> None
              Ident.pickDefinition ctx i pick
            | Intersection i -> i.types |> List.tryPick picker
            | _ -> None
          c.implements |> List.tryPick picker
        let c, cs =
          match parentConstructors with
          | None -> // add default constructor
            let cft = { args = []; isVariadic = false; loc = c.loc; returnType = () }
            let cma, cm =
              { comments = []; isStatic = true; accessibility = Public; loc = c.loc },
              Constructor cft
            { c with members = (cma, cm) :: c.members }, [cma, cft]
          | Some cs -> // inherit constructors from parent
            { c with members = (cs |> List.map (fun (cma, cm) -> cma, Constructor cm)) @ c.members }, cs
        m[c.loc] <- (c, cs)
        (c, cs)
  let rec go stmts =
    stmts |> List.map (function
      | Class c when not c.isInterface -> Class (addConstructors c |> fst)
      | Namespace m -> Namespace { m with statements = go m.statements }
      | AmbientModule m -> AmbientModule { m with statements = go m.statements }
      | Global m -> Global { m with statements = go m.statements }
      | x -> x)
  go stmts

[<RequireQualifiedAccess; StructuralEquality; StructuralComparison>]
type private MemberType =
  | Getter of string | Setter of string
  | Method of string * int | Callable of int | Newable of int | Indexer of int | Constructor of int

let addParentMembersToClass (ctx: TyperContext<#TyperOptions, _>) (stmts: Statement list) : Statement list =
  let m = new MutableMap<Location, Class>()
  let processing = new MutableSet<Location>()
  let rec addMembers (c: Class) =
    match m.TryGetValue(c.loc) with
    | true, c -> c
    | false, _ when processing.Contains(c.loc) -> c
    | false, _ ->
      processing.Add(c.loc) |> ignore
      // we remove any parent type which is a super type of some other parent type
      let implements =
        c.implements
        |> List.filter (fun t -> c.implements |> List.forall (fun t' -> Type.isSuperClass ctx t t' |> not))
      let getMemberType m =
        match m with
        | Field (fl, _) | Getter fl -> MemberType.Getter (fl.name |> String.normalize) |> Some
        | Setter fl -> MemberType.Setter (fl.name |> String.normalize) |> Some
        | Method (name, ft, _) -> MemberType.Method (name |> String.normalize, ft.args.Length) |> Some
        | Callable (ft, _) -> MemberType.Callable (ft.args.Length) |> Some
        | Newable (ft, _) -> MemberType.Newable (ft.args.Length) |> Some
        | Indexer (ft, _) -> MemberType.Indexer (ft.args.Length) |> Some
        | Constructor ft -> MemberType.Constructor (ft.args.Length) |> Some
        | SymbolIndexer _ | UnknownMember _ -> None
      // if a parent member has the same arity as the member in a child,
      // we should only keep the one from the child.
      let memberTypes : Set<MemberType> =
        c.members |> List.choose (snd >> getMemberType) |> Set.ofList
      let parentMembers : (MemberAttribute * Member) list =
        let (|Dummy|) _ = []
        let rec collector : _ -> _ list = function
          | (Ident ({ loc = loc } & i) & Dummy ts) | App (AIdent i, ts, loc) ->
            let collect = function
              | Definition.TypeAlias a ->
                if List.isEmpty ts then collector a.target
                else
                  let bindings = Type.createBindings i.name loc a.typeParams ts
                  collector a.target |> List.map (Type.mapInMember (Type.substTypeVar bindings) ())
              // we ignore `implements` clauses i.e. interfaces inherited by a class.
              | Definition.Class c' when c.isInterface || not c'.isInterface ->
                if List.isEmpty ts then (addMembers c').members
                else
                  let members = (addMembers c').members
                  let bindings = Type.createBindings i.name loc c'.typeParams ts
                  members |> List.map (Type.mapInMember (Type.substTypeVar bindings) ())
              | _ -> []
            Ident.collectDefinition ctx i collect |> List.distinct
          | Intersection i -> i.types |> List.collect collector |> List.distinct
          | _ -> []
        implements
        |> List.collect collector
        |> List.filter (fun (_, m) ->
          match getMemberType m with
          | None -> false
          | Some mt -> memberTypes |> Set.contains mt |> not)
        |> List.distinct
      let c = { c with members = c.members @ parentMembers }
      m[c.loc] <- c
      c
  let rec go stmts =
    stmts |> List.map (function
      | Class c when c.isInterface -> Class (addMembers c)
      | Namespace m -> Namespace { m with statements = go m.statements }
      | AmbientModule m -> AmbientModule { m with statements = go m.statements }
      | Global m -> Global { m with statements = go m.statements }
      | x -> x)
  go stmts

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

        let inline app esVersion t ts loc =
          App (
            AIdent {
              name = [t]
              kind = Some (Set.ofList [Kind.Type; Kind.ClassLike; Kind.Statement])
              fullName = [{ name = [t]; source = Path.absolute $"./node_modules/typescript/lib/lib.{esVersion}.d.ts" }]
              loc = loc
              parent = None
              misc = { IdentMiscData.Internal with maxArity = Some (List.length ts) }
            }, ts, loc)

        for ma, m in c.members do
          match m with
          // iterator & iterable iterator
          | SymbolIndexer ("iterator", { returnType = ty }, _) when opts.inheritIterable ->
            match ty with
            | App (AIdent { name = ["Iterator"] }, [argTy], _) when not (has "Iterable") ->
              inherits.Add(app "es2015.iterable" "Iterable" [argTy] ma.loc)
            | App (AIdent { name = ["IterableIterator"] }, [argTy], _) when not (has "IterableIterator") ->
              inherits.Add(app "es2015.iterable" "IterableIterator" [argTy] ma.loc)
            | _ -> ()

          // async iterator & iterable iterator
          | SymbolIndexer ("asyncIterator", { returnType = ty }, _) when opts.inheritIterable ->
            match ty with
            | App (AIdent { name = ["AsyncIterator"] }, [argTy], _) when not (has "AsyncIterable") ->
              inherits.Add(app "es2018.asynciterable" "AsyncIterable" [argTy] ma.loc)
            | App (AIdent { name = ["AsyncIterableIterator"] }, [argTy], _) when not (has "AsyncIterableIterator") ->
              inherits.Add(app "es2018.asynciterable" "AsyncIterableIterator" [argTy] ma.loc)
            | _ -> ()

          // ArrayLike
          | Indexer ({ args = [Choice1Of2 { value = Prim Number } | Choice2Of2 (Prim Number)]; returnType = retTy }, _)
            when opts.inheritArraylike && not (has "ArrayLike") -> inherits.Add(app "es5" "ArrayLike" [retTy] ma.loc)

          // PromiseLike
          | Method ("then", { args = [Choice1Of2 { name = "onfulfilled"; value = onfulfilled }; Choice1Of2 { name = "onrejected" }] }, _)
            when opts.inheritPromiselike && not (has "PromiseLike") ->
            match onfulfilled with
            | Func ({ args = [Choice1Of2 { value = t } | Choice2Of2 t] }, _, _) ->
              inherits.Add(app "es5" "PromiseLike" [t] ma.loc)
            | Union { types = ts } ->
              for t in ts do
                match t with
                | Func ({ args = [Choice1Of2 { value = t } | Choice2Of2 t] }, _, _) ->
                  inherits.Add(app "es5" "PromiseLike" [t] ma.loc)
                | _ -> ()
            | _ -> ()

          | _ -> ()

        Class { c with implements = List.ofSeq inherits |> List.distinct }
      | Namespace m -> Namespace { m with statements = go m.statements }
      | AmbientModule m -> AmbientModule { m with statements = go m.statements }
      | Global m -> Global { m with statements = go m.statements }
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
        if name = intfName then valDict[name] <- v
        else if (name + "Constructor") = intfName then ctorValDict[name] <- v
      | Class (intf & { name = Name name; isInterface = true }) ->
        if name <> "Constructor" && name.EndsWith("Constructor") then
          let origName = name.Substring(0, name.Length - "Constructor".Length)
          ctorIntfDict[origName] <- intf
        else
          intfDict[name] <- intf
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
      | Namespace m -> Some (Namespace { m with statements = go m.statements })
      | AmbientModule m -> Some (AmbientModule { m with statements = go m.statements })
      | Global m -> Global { m with statements = go m.statements } |> Some
      | x -> Some x
    )
  go stmts

let replaceAliasToFunction (ctx: #IContext<#TyperOptions>) stmts =
  let rec go = function
    | Namespace m -> Namespace { m with statements = List.map go m.statements }
    | AmbientModule m -> AmbientModule { m with statements = List.map go m.statements }
    | Global m -> Global { m with statements = List.map go m.statements }
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
  List.map go stmts

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
      Type.createFunctionInterface [{| ty = f; typrms = typrms; loc = loc; isNewable = true; comments = [] |}]
    | TypeVar v -> TypeVar v
    | Union u -> Union (u |> Type.mapInUnion goType ctx)
    | Intersection i -> Intersection (i |> Type.mapInIntersection goType ctx)
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
      when List.length typrms > 0 && ctx.options.replaceRankNFunction ->
        let typ = Type.mapInFuncType goType ctx f
        let typrms = typrms |> List.map (Type.mapInTypeParam goType ctx)
        Function { name = name; typ = typ; typeParams = typrms;
                    isExported = isExported; accessibility = accessibility; comments = comments; loc = loc } |> Some
    | _ -> None
  Statement.mapTypeWith goStatement goType (fun _ x -> x) id ctx stmts

let createExportMap (stmts: Statement list) : Trie<string, ExportType> =
  let add ns name xo trie =
    match xo with
    | Some x -> trie |> Trie.add (List.rev (name :: ns)) x
    | None -> trie
  let rec go (eo: ExportType option) (ns: string list) trie stmts =
    let exportMap =
      stmts
      |> List.collect (function
        | Export e ->
          e.clauses |> List.choose (function
            | CommonJsExport { name = [name] } ->
              Some (name, ExportType.CommonJS)
            | ES6DefaultExport { name = [name] } ->
              Some (name, ExportType.ES6Default)
            | ES6Export e when e.target.name.Length = 1 ->
              let name = e.target.name[0]
              Some (name, ExportType.ES6 e.renameAs)
            | _ -> None
          )
        | _ -> [])
      |> Map.ofList
    let getExportType name (isExported: Exported) =
      match isExported with
      | Exported.Yes -> Some (ExportType.ES6 None)
      | Exported.Default -> Some ExportType.ES6Default
      | Exported.Declared | Exported.No ->
        match exportMap |> Map.tryFind name with
        | Some e -> Some e
        | None -> eo |> Option.map (fun e -> e.CreateChild name)
    let rec f trie s =
      match s with
      | Export _ | ReExport _ | UnknownStatement _ | FloatingComment _ | Import _ | TypeAlias _ -> trie
      | Pattern p -> p.underlyingStatements |> List.fold f trie
      | Namespace m ->
        let eo = getExportType m.name m.isExported
        let trie = trie |> add ns m.name eo
        go eo (m.name :: ns) trie m.statements
      | AmbientModule m -> go None (m.name.orig :: ns) trie m.statements
      | Global m -> go None [] trie m.statements
      | Class c ->
        if c.isInterface then trie
        else
          match c.name with
          | ExportDefaultUnnamedClass -> trie
          | Name n -> trie |> add ns n (getExportType n c.isExported)
      | Enum e ->
        let eo = getExportType e.name e.isExported
        let trie = trie |> add ns e.name eo
        e.cases |> List.fold (fun trie c ->
          let ceo = eo |> Option.map (fun e -> e.CreateChild c.name)
          trie |> add (e.name :: ns) c.name ceo
        ) trie
      | Variable { name = name; isExported = isExported }
      | Function { name = name; isExported = isExported } ->
        trie |> add ns name (getExportType name isExported)
    stmts |> List.fold f trie
  go None [] Trie.empty stmts

let createDefinitionsMap (stmts: Statement list) : Trie<string, Definition list> =
  let add ns name x trie =
    let key = List.rev (name :: ns)
    trie |> Trie.addOrUpdate key [x] List.append
  let rec go (ns: string list) trie s =
    match s with
    | Export _
    | ReExport _
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
    | Namespace m ->
      m.statements
      |> List.fold (go (m.name :: ns)) trie
      |> add ns m.name (Definition.Namespace m)
    | AmbientModule m ->
      m.statements |> List.fold (go (m.name.orig :: ns)) trie
    | Global m ->
      m.statements |> List.fold (go []) trie
  stmts |> List.fold (go []) Trie.empty

let private createRootContextForTyper (srcs: SourceFile list) (baseCtx: IContext<'Options>) : TyperContext<'Options, unit> =
  let info =
    srcs
    |> List.map (fun sf ->
      sf.fileName,
      { sourceFile = sf
        definitionsMap = createDefinitionsMap sf.statements
        typeLiteralsMap = Map.empty
        anonymousInterfacesMap = Map.empty
        unknownIdentTypes = Trie.empty
        exportMap = Trie.empty })
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
            |> Seq.mapi (fun i (c, info) -> c, { id = i; namespace_ = info.namespace_; origin = info.origin }) |> Map.ofSeq
          let uit = Statement.getUnknownIdentTypes ctx stmts
          let exm = createExportMap stmts
          { v with
              typeLiteralsMap = tlm
              anonymousInterfacesMap = aim
              unknownIdentTypes = uit
              exportMap = exm }
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
    | None -> Some Ts.ScriptTarget.ESNext
    | Some "es3" -> Some Ts.ScriptTarget.ES3
    | Some "es5" -> Some Ts.ScriptTarget.ES5
    | Some "es6" | Some "es2015" -> Some Ts.ScriptTarget.ES2015
    | Some "es2016" -> Some Ts.ScriptTarget.ES2016
    | Some "es2017" -> Some Ts.ScriptTarget.ES2017
    | Some "es2018" -> Some Ts.ScriptTarget.ES2018
    | Some "es2019" -> Some Ts.ScriptTarget.ES2019
    | Some "es2020" -> Some Ts.ScriptTarget.ES2020
    | Some "es2021" -> Some Ts.ScriptTarget.ES2021
    | Some "es2022" -> Some Ts.ScriptTarget.ES2022
    | Some "esnext" -> Some Ts.ScriptTarget.ESNext
    | _ -> None

  let map (parentVersion: Ts.ScriptTarget option) (loc: Location) (x: ICommented<_>) =
    let esVersion =
      let rec go = function
      | UnknownLocation -> None
      | LocationTs (sf, _) -> getESVersionFromFileName sf.fileName
      | Location x -> getESVersionFromFileName x.src.fileName
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
    | Namespace m -> Namespace { m with statements = List.map mapStmt m.statements }
    | AmbientModule m -> AmbientModule { m with statements = List.map mapStmt m.statements }
    | Global m -> Global { m with statements = List.map mapStmt m.statements }
    | Enum e -> Enum { e with cases = e.cases |> List.map (fun c -> map vo c.loc c |> snd) }
    | Class c -> Class { c with members = c.members |> List.map (fun (a, m) -> map vo a.loc a |> snd, m) }
    | _ -> s

  let newSrc = srcs |> mergeSources "lib.es.d.ts"
  { newSrc with statements = newSrc.statements |> List.map mapStmt }

let runAll (srcs: SourceFile list) (baseCtx: IContext<#TyperOptions>) =
  let inline mapStatements f (src: SourceFile) =
    { src with statements = f src.statements }

  let inline withSourceFileContext ctx f (src: SourceFile) =
    f (ctx |> TyperContext.ofSourceFileRoot src.fileName) src

  let inline onFlag b f = if b then f else id

  let result =
    srcs |> List.map (
      mapStatements (
        inferEnumCaseValue
        >> onFlag baseCtx.options.noExtendsInTyprm removeExtendsInTyprm
        >> mergeStatements
      )
    )

  // build a context
  let ctx = createRootContextForTyper result baseCtx

  let result =
    result |> List.map (
      withSourceFileContext ctx (fun ctx src ->
        src |> mapStatements (fun stmts ->
          stmts
          // add members inherited from parent classes/interfaces to interfaces
          |> onFlag ctx.options.addAllParentMembersToClass (addParentMembersToClass ctx)
          |> Statement.resolveErasedTypes ctx
          // add common inheritances which tends not to be defined by `extends` or `implements`
          |> onFlag (ctx.options.inheritArraylike || ctx.options.inheritIterable || ctx.options.inheritPromiselike)
                    (introduceAdditionalInheritance ctx)
          // add default constructors to class if not explicitly defined
          |> addDefaultConstructorToClass ctx
          // group statements with pattern
          |> detectPatterns
          // replace alias to function type with a function interface
          |> onFlag ctx.options.replaceAliasToFunction (replaceAliasToFunction ctx)
          // replace N-rank and/or newable function type with an interface
          |> onFlag (ctx.options.replaceRankNFunction || ctx.options.replaceNewableFunction) (replaceFunctions ctx)
        )))

  // rebuild the context because resolveErasedTypes may introduce additional anonymous interfaces
  let ctx = createRootContext result ctx

  ctx, result
