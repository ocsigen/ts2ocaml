module Ts2Ml.Typer

open Ts2Ml.Common
open Ts2Ml.Syntax
open Ts2Ml.DataTypes

type TyperOptions =
  inherit GlobalOptions
  abstract inheritIterable: bool with get,set
  abstract inheritArraylike: bool with get,set
  abstract inheritPromiselike: bool with get,set

type [<RequireQualifiedAccess>] Definition =
  | TypeAlias of TypeAlias
  | Class of Class
  | Enum of Enum
  | EnumCase of EnumCase * Enum
  | Module of Module
  | Value of Value
  | Member of MemberAttribute * Member * Class

type [<RequireQualifiedAccess>] InheritingType =
  | KnownIdent of {| fullName: FullName; tyargs: Type list |}
  | Prim of PrimType * tyargs:Type list
  | Other of Type
  | UnknownIdent of {| name: string list; tyargs: Type list |}

type SourceFileInfo = {
  definitionsMap: Trie<string, Definition list>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<Class, int>
  unknownIdentTypes: Trie<string, Set<int>>
}

type TyperContext<'Options, 'State when 'Options :> GlobalOptions> = {
  currentSourceFile: Path.Relative
  currentNamespace: string list
  info: Map<Path.Relative, SourceFileInfo>
  state: 'State
  options: 'Options
  logger: ILogger
} with
  interface IContext<'Options> with
    member this.options = this.options
    member this.logger = this.logger

let inline private warn (ctx: TyperContext<_, _>) (loc: Location) fmt =
  Printf.kprintf (fun s -> ctx.logger.warnf "%s at %s" s loc.AsString) fmt

module TyperContext =
  type Anonoymous<'Options, 'State when 'Options :> GlobalOptions> = {|
    logger: ILogger
    currentSourceFile: Path.Relative
    currentNamespace: string list
    info: Map<Path.Relative, SourceFileInfo>
    options: 'Options
    state: 'State
  |}

  let inline ofAnonymous (x: Anonoymous<'a, 's>) : TyperContext<'a, 's> =
    { logger = x.logger;
      currentSourceFile = x.currentSourceFile; currentNamespace = x.currentNamespace;
      info = x.info;
      options = x.options; state = x.state }

  let mapOptions (f: 'a -> 'b) (ctx: TyperContext<'a, 's>) : TyperContext<'b, 's> =
    ofAnonymous {| ctx with options = f ctx.options |}

  let mapState (f: 's -> 't) (ctx: TyperContext<'a, 's>) : TyperContext<'a, 't> =
    ofAnonymous {| ctx with state = f ctx.state |}

  let ofSourceFileRoot source (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with currentSourceFile = source; currentNamespace = [] }

  let ofLocation (fullName: FullName) (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with currentSourceFile = fullName.source; currentNamespace = fullName.name }

  let ofParentNamespace (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> option =
    match ctx.currentNamespace with
    | [] -> None
    | _ :: ns -> Some { ctx with currentNamespace = ns }

  let ofChildNamespace childName (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with currentNamespace = childName :: ctx.currentNamespace }

  let getFullName (name: string list) (ctx: TyperContext<'a, 's>) : FullName =
    let name =
      match name with
      | [] -> List.rev ctx.currentNamespace
      | n :: [] -> List.rev (n :: ctx.currentNamespace)
      | _ -> List.rev ctx.currentNamespace @ name
    { name = name; source = ctx.currentSourceFile }

  let getFullNameString (name: string list) (ctx: TyperContext<'a, 's>) =
    (getFullName name ctx).name |> String.concat "."

  /// `Error relativeNameOfCurrentNamespace` when `fullName` is a parent of current namespace.
  /// `Ok name` otherwise.
  let getRelativeNameTo (fullName: string list) (ctx: TyperContext<'a, 's>) =
    let rec go name selfPos =
      match name, selfPos with
      | x :: [], y :: ys  when x = y -> Error ys
      | x :: xs, y :: ys when x = y -> go xs ys
      | xs, _ -> Ok xs
    go fullName (List.rev ctx.currentNamespace)

  let tryCurrentSourceInfo (f: SourceFileInfo -> 't) (ctx: TyperContext<'a, 's>) =
    ctx.info |> Map.tryFind ctx.currentSourceFile |> Option.map f

  let bindCurrentSourceInfo (f: SourceFileInfo -> _ option) (ctx: TyperContext<'a, 's>) =
    ctx.info |> Map.tryFind ctx.currentSourceFile |> Option.bind f

open TyperContext

module FullName =
  let getDefinitions (ctx: TyperContext<_, _>) (fullName: FullName) : Definition list =
    match ctx.info |> Map.tryFind fullName.source with
    | None -> []
    | Some info ->
      info.definitionsMap
      |> Trie.tryFind fullName.name
      |> Option.defaultValue []

  let private classify = function
    | Definition.TypeAlias _ -> [Kind.Type; Kind.TypeAlias; Kind.Statement]
    | Definition.Class c ->
      if c.isInterface then [Kind.Type; Kind.ClassLike; Kind.Statement]
      else [Kind.Value; Kind.Type; Kind.ClassLike; Kind.Statement]
    | Definition.Enum _ -> [Kind.Value; Kind.Type; Kind.Enum; Kind.Statement]
    | Definition.EnumCase _ -> [Kind.Value; Kind.Type; Kind.EnumCase]
    | Definition.Module m ->
      if m.isNamespace then [Kind.Module; Kind.Statement]
      else [Kind.Value; Kind.Module; Kind.Statement]
    | Definition.Value _ -> [Kind.Value; Kind.Statement]
    | Definition.Member _ -> [Kind.Value; Kind.Member]

  let hasKind (ctx: TyperContext<_, _>) (kind: Kind) (fullName: FullName) =
    getDefinitions ctx fullName
    |> List.exists (fun d -> classify d |> List.contains kind)

  let getKind (ctx: TyperContext<_, _>) (fullName: FullName) : Set<Kind> =
    getDefinitions ctx fullName
    |> List.collect classify
    |> Set.ofList

module Ident =
  let getDefinitions (ctx: TyperContext<_, _>) (ident: IdentType) =
    ident.fullName |> List.collect (FullName.getDefinitions ctx)

  let getDefinitionsWithFullName (ctx: TyperContext<_, _>) (ident: IdentType) =
    ident.fullName |> List.collect (fun fn ->
      FullName.getDefinitions ctx fn |> List.map (fun d -> {| definition = d; fullName = fn |}))

  let pickDefinition ctx ident picker =
    getDefinitions ctx ident |> List.tryPick picker

  let hasKind (ctx: TyperContext<_, _>) (kind: Kind) (ident: IdentType) =
    match ident.kind with
    | Some kinds -> kinds |> Set.contains kind
    | None -> ident.fullName |> List.exists (FullName.hasKind ctx kind)

  let getKind (ctx: TyperContext<_, _>) (ident: IdentType) =
    match ident.kind with
    | Some kind -> kind
    | None -> ident.fullName |> List.map (FullName.getKind ctx) |> Set.unionMany

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
      funcs |> Seq.collect (fun f -> getTypeVars (Function f.ty)) |> Set.ofSeq
    let boundTyprms =
      let typrms = funcs |> List.collect (fun f -> f.typrms) |> List.map (fun x -> x.name) |> Set.ofList
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
          for f in funcs do
            { comments = f.comments; loc = f.loc; isStatic = false; accessibility = Public },
            if f.isNewable then New (f.ty, f.typrms)
            else FunctionInterface (f.ty, f.typrms)
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
  let mutable private inheritCache: Map<FullName, (InheritingType * int) list * InheritingType list> = Map.empty
  let mutable private hasNoInherits: Set<FullName> = Set.empty

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
    if hasNoInherits |> Set.contains fn then List.empty
    else
      match inheritCache |> Map.tryFind fn with
      | Some (s, self) ->
        let ret =
          if includeSelf then
            (List.map (fun x -> x, 0) self) @ s
          else s
        ret |> List.map (fun (t, d) -> t, d + depth)
      | None ->
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
          hasNoInherits <- hasNoInherits |> Set.add fn
          List.empty
        else
          inheritCache <- inheritCache |> Map.add fn (result |> List.map (fun (t, d) -> t, d - depth), self)
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
    | Function ft -> mapInFuncType (resolveErasedTypeImpl typeQueries) ctx ft |> Function
    | App (t, ts, loc) -> App (t, List.map (resolveErasedTypeImpl typeQueries ctx) ts, loc)
    | Erased (e, loc, origText) ->
      let comments = [Description [origText]]
      match e with
      | IndexedAccess (tobj, tindex) ->
        let resolveIndexedAccessOfClass (c: Class) (indexTy: Type) : Type option =
          let members = c.members |> List.map snd
          let intersection = function
            | []  -> None
            | [t] -> Some t
            | ts  -> Some (Intersection { types = ts })
          let rec go = function
            | TypeLiteral (LString name) ->
              let funcs, others =
                members
                |> List.choose (function
                  | Field (fl, _, []) | Getter fl | Setter fl when fl.name = name ->
                    if fl.isOptional then Some (Choice2Of2 (Union { types = [fl.value; Prim Undefined]}))
                    else Some (Choice2Of2 fl.value)
                  | Method (name', ft, typrms) when name = name' ->
                    Some (Choice1Of2 {| ty = ft; typrms = typrms; comments = comments; loc = loc; isNewable = false |})
                  | Constructor (_, _) when name = "constructor" -> Some (Choice2Of2 (Prim UntypedFunction))
                  | _ -> None)
                |> List.splitChoice2
              match funcs, others with
              | [], [] -> None
              | _,  [] -> createFunctionInterface funcs |> Some
              | [], _  -> Union { types = others } |> Some
              | _, _   -> Union { types = createFunctionInterface funcs :: others } |> Some
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
          | (Field (fl, _, []) | Getter fl | Setter fl),
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
          let result typrms ty =
            let typeQueries = Set.union (Set.ofList fn) typeQueries
            let typrms = List.map (mapInTypeParam (resolveErasedTypeImpl typeQueries) ctx) typrms
            let ty = resolveErasedTypeImpl typeQueries ctx ty
            match typrms, ty with
            | _ :: _, Function ft ->
              createFunctionInterface [{| ty = ft; typrms = typrms; comments = comments; loc = loc; isNewable = false |}]
            | _ :: _, _ -> onFail ()
            | [], _ -> ty
          let types =
            Ident.getDefinitions ctx i
            |> List.choose (function
              | Definition.Value v -> result v.typeParams v.typ |> Some
              | Definition.Member (_, m, _) ->
                match m with
                | Field (ft, _, typrms) | (Getter ft & Dummy typrms) | (Setter ft & Dummy typrms) ->
                  match ft.isOptional, result typrms ft.value with
                  | true, UnknownType msgo -> UnknownType msgo |> Some
                  | true, t -> Union { types =  [t; Prim Undefined] } |> Some
                  | false, t -> Some t
                | Method (_, ft, typrms) -> result typrms (Function ft) |> Some
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

      | NewableFunction (f, tyargs) ->
        let f = mapInFuncType (resolveErasedTypeImpl typeQueries) ctx f
        let tyargs = List.map (mapInTypeParam (resolveErasedTypeImpl typeQueries) ctx) tyargs
        createFunctionInterface [{| ty = f; typrms = tyargs; comments = comments; loc = loc; isNewable = true |}]
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
      match ctx |> bindCurrentSourceInfo (fun info -> info.anonymousInterfacesMap |> Map.tryFind c), c.name with
      | Some i, None -> sprintf "AnonymousInterface%d" i
      | None, Some s -> s
      | _ -> "AnonymousInterface"
    | Union _ -> "union" | Intersection _ -> "intersection" | Tuple _ -> "tuple"
    | Function _ -> "function"
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
      | NewableFunction _ -> "constructor"
    | UnknownType _ -> "unknown"