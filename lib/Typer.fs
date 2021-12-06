module Ts2Ml.Typer

open Ts2Ml.Common
open Ts2Ml.Syntax
open Ts2Ml.DataTypes

type TyperOptions =
  inherit GlobalOptions
  abstract inheritIterable: bool with get,set
  abstract inheritArraylike: bool with get,set
  abstract inheritPromiselike: bool with get,set

type SourceFileInfo = {
  definitionsMap: Trie<string, Statement list>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<Class, int>
  unknownIdentTypes: Trie<string, Set<int>>
}

type TyperContext<'Options, 'State when 'Options :> GlobalOptions> = {
  logger: ILogger
  currentSourceFile: Path.Relative
  currentNamespace: string list
  info: Map<Path.Relative, SourceFileInfo>
  options: 'Options
  state: 'State
} with
  interface IContext<'Options> with
    member this.options = this.options
    member this.logger = this.logger

let inline private warn (ctx: TyperContext<#TyperOptions, _>) (loc: Location) fmt =
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

  let ofParentNamespace (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> option =
    match ctx.currentNamespace with
    | [] -> None
    | _ :: ns -> Some { ctx with currentNamespace = ns }

  let ofChildNamespace childName (ctx: TyperContext<'a, 's>) : TyperContext<'a, 's> =
    { ctx with currentNamespace = childName :: ctx.currentNamespace }

  let getFullName (name: string list) (ctx: TyperContext<'a, 's>) =
    match name with
    | [] -> List.rev ctx.currentNamespace
    | n :: [] -> List.rev (n :: ctx.currentNamespace)
    | _ -> List.rev ctx.currentNamespace @ name

  let getFullNameString (name: string list) (ctx: TyperContext<'a, 's>) =
    getFullName name ctx |> String.concat "."

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
      | SymbolIndexer (sn, ft, m) -> SymbolIndexer (sn, mapInFuncType mapping ctx ft, m)
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

  let rec assignTypeParams (fn: FullName) (loc: Location) (typrms: TypeParam list) (xs: 'a list) (f: TypeParam -> 'a -> 'b) (g: TypeParam -> 'b) : 'b list =
    match typrms, xs with
    | typrm :: typrms, x :: xs ->
      f typrm x :: assignTypeParams fn loc typrms xs f g
    | typrm :: typrms, [] ->
      g typrm :: assignTypeParams fn loc typrms [] f g
    | [], [] -> []
    | [], _ :: _ ->
      failwithf "assignTypeParams: too many type arguments for type '%s' at %s" (String.concat "." fn.name) (loc.AsString)

  let createBindings fn (loc: Location) typrms ts =
    assignTypeParams fn loc typrms ts
      (fun tv ty -> tv.name, ty)
      (fun tv ->
        match tv.defaultType with
        | Some ty -> tv.name, ty
        | None ->
          failwithf "createBindings: insufficient type arguments for type '%s' at %s" (String.concat "." fn.name) (loc.AsString))
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
