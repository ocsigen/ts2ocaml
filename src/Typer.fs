module Typer

open Syntax

type Context = {
  currentNamespace: string list
  definitionsMap: Map<string list, Statement>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<Class, int>
  internalModuleName: string
}

module Context =
  let ofParentNamespace (ctx: Context) : Context option =
    match ctx.currentNamespace with
    | [] -> None
    | _ :: ns -> Some { ctx with currentNamespace = ns }

let rec mapTypeInTypeParam mapping (ctx: 'Context) (tp: TypeParam) =
  { tp with
      extends = Option.map (mapping ctx) tp.extends
      defaultType = Option.map (mapping ctx) tp.defaultType }

and mapTypeInFuncType mapping (ctx: 'Context) f =
  { f with
      returnType = mapping ctx f.returnType
      args = List.map (mapTypeInFieldLike mapping ctx) f.args }

and mapTypeInClass mapping (ctx: 'Context) (c: Class) : Class =
  let mapMember = function
    | Field (f, m, tps) -> Field (mapTypeInFieldLike mapping ctx f, m, List.map (mapTypeInTypeParam mapping ctx) tps)
    | FunctionInterface (f, tps) -> FunctionInterface (mapTypeInFuncType mapping ctx f, List.map (mapTypeInTypeParam mapping ctx) tps)
    | Indexer (f, m) -> Indexer (mapTypeInFuncType mapping ctx f, m)
    | Constructor (c, tps) -> Constructor ({ c with args = List.map (mapTypeInFieldLike mapping ctx) c.args }, List.map (mapTypeInTypeParam mapping ctx) tps)
    | Getter f -> Getter (mapTypeInFieldLike mapping ctx f)
    | Setter f -> Setter (mapTypeInFieldLike mapping ctx f)
    | New (f, tps) -> New (mapTypeInFuncType mapping ctx f, List.map (mapTypeInTypeParam mapping ctx) tps)
  { c with
      implements = c.implements |> List.map (mapping ctx)
      members = c.members |> List.map (fun (a, m) -> a, mapMember m)
      typeParams = c.typeParams |> List.map (mapTypeInTypeParam mapping ctx) }

and mapTypeInFieldLike mapping (ctx: 'Context) (fl: FieldLike) : FieldLike =
  { fl with value = mapping ctx fl.value }

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
  | Tuple ts -> Tuple (ts |> List.map (substTypeVar subst _ctx))
  | ReadonlyTuple ts -> ReadonlyTuple (ts |> List.map (substTypeVar subst _ctx))
  | AnonymousInterface c -> AnonymousInterface (mapTypeInClass (substTypeVar subst) _ctx c)
  | Function f ->
    Function
      { f with
          returnType = substTypeVar subst _ctx f.returnType;
          args = List.map (mapTypeInFieldLike (substTypeVar subst) _ctx) f.args }
  | App (t, ts) -> App (substTypeVar subst _ctx t, ts |> List.map (substTypeVar subst _ctx))
  | Ident i -> Ident i | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l
  | PolymorphicThis -> PolymorphicThis | UnknownType msgo -> UnknownType msgo

let rec mergeStatements (stmts: Statement list) =
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
          !iref' |> mapTypeInClass (substTypeVar (mapping |> Map.ofList)) ()
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
      Module { !n with statements = mergeStatements (!n).statements }
  )

let extractNamedDefinitions (stmts: Statement list) : Map<string list, Statement> =
  let rec go (ns: string list) map s =
    match s with
    | TypeAlias { name = name; erased = false }
    | ClassDef  { name = Some name }
    | EnumDef   { name = name }
    | Value     { name = name } -> map |> Map.add (ns @ [name]) s
    | ClassDef  { name = None } -> failwith "impossible_extractNamedDefinitions"
    | Module m ->
      let ns' = ns @ [m.name]
      m.statements |> List.fold (go ns') map |> Map.add ns' (Module m)
    | _ -> map
  stmts |> List.fold (go []) Map.empty

let findTypesInType (pred: Type -> bool * 'a option) (t: Type) : 'a seq =
  let rec go_t x =
    match x with
    | App (t, ts) ->
      seq {
        let cont, y = pred x
        match y with Some v -> yield v | None -> ()
        if cont then
          yield! go_t t
          for t in ts do yield! go_t t
      }
    | Union { types = ts } | Intersection { types = ts } | Tuple ts | ReadonlyTuple ts ->
      seq {
        let cont, y = pred x
        match y with Some v -> yield v | None -> ()
        if cont then
          for t in ts do yield! go_t t
      }
    | Function f ->
      seq {
        let cont, y = pred x
        match y with Some v -> yield v | None -> ()
        if cont then
          yield! go_t f.returnType
          for a in f.args do yield! go_t a.value
      }
    | AnonymousInterface c ->
      let cont, y = pred x
      let xs =
        if cont then
          let ra = ResizeArray()
          mapTypeInClass (fun () t -> ra.Add(t); t) () c |> ignore;
          ra |> Seq.collect go_t
        else Seq.empty
      Seq.append (Option.toList y) xs
    | x -> pred x |> snd |> Option.map Seq.singleton |> Option.defaultValue Seq.empty
  go_t t

let findTypesInStatements (pred: Type -> bool * 'a option) (stmts: Statement list) : 'a seq =
  let rec go = function
    | TypeAlias ta ->
      seq {
        yield! findTypesInType pred ta.target;
        for tp in ta.typeParams do
          yield! [tp.defaultType; tp.extends] |> List.choose id |> Seq.collect (findTypesInType pred)
      }
    | ClassDef c -> findTypesInType pred (AnonymousInterface c)
    | Module m ->
      m.statements |> Seq.collect go
    | Value v ->
      seq {
        yield! findTypesInType pred v.typ
        for tp in v.typeParams do
          yield! [tp.defaultType; tp.extends] |> List.choose id |> Seq.collect (findTypesInType pred)
      }
    | EnumDef e ->
      e.cases |> Seq.choose (fun c -> c.value)
              |> Seq.collect (fun l -> findTypesInType pred (TypeLiteral l))
    | Export _ | UnknownStatement _ -> Seq.empty
  stmts |> Seq.collect go

let getTypeLiterals stmts =
  findTypesInStatements (function TypeLiteral l -> true, Some l | _ -> true, None) stmts |> Set.ofSeq

let getAnonymousInterfaces stmts =
  findTypesInStatements (function
    | AnonymousInterface c when Option.isNone c.name -> true, Some c
    | _ -> true, None
  ) stmts |> Set.ofSeq

let createRootContext (internalModuleName: string) (stmts: Statement list) : Context =
  let add name ty m =
   m |> Map.add [name] (TypeAlias { name = name; typeParams = []; target = ty; erased = true })
  let m =
    extractNamedDefinitions stmts
    // TODO
    |> add "Object" (Prim Object)
    |> add "String" (Prim String)
    |> add "Number" (Prim Number)
    |> add "Boolean" (Prim Bool)
    |> add "Function" (Prim UntypedFunction)
    |> add "Array" (Prim Array)
    |> add "Date" (Prim Date)
    |> add "Error" (Prim Error)
    |> add "RegExp" (Prim RegExp)
    |> add "ReadonlyArray" (Prim ReadonlyArray)
    |> add "Promise" (Prim Promise)
  let tlm = getTypeLiterals stmts |> Seq.mapi (fun i l -> l, i) |> Map.ofSeq
  let aim = getAnonymousInterfaces stmts |> Seq.mapi (fun i c -> c, i) |> Map.ofSeq
  {
    internalModuleName = internalModuleName
    currentNamespace = []
    definitionsMap = m
    typeLiteralsMap = tlm
    anonymousInterfacesMap = aim
  }

type FullNameLookupResult =
  | AliasName of TypeAlias
  | ClassName of Class
  | EnumName of Enum
  | EnumCaseName of string * Enum
  | ModuleName of Module
  | ValueName of Value

(*
let rec getFullNameOfIdent (ctx: Context) (ident: IdentType) : FullName option =
  let nsRev = List.rev ctx.currentNamespace
  let fullName = nsRev @ ident.name
  match ctx.definitionsMap |> Map.tryFind fullName with
  | Some (TypeAlias a) -> AliasName (fullName, a) |> Some
  | Some (ClassDef c) -> ClassName (fullName, c) |> Some
  | Some (EnumDef e) -> EnumName (fullName, e) |> Some
  | Some (Module m) -> ModuleName (fullName, m) |> Some
  | Some (Value v) -> ValueName (fullName, v) |> Some
  | None when List.length ident.name > 1 ->
    let possibleEnumName = nsRev @ (ident.name |> List.take (List.length ident.name - 1))
    let possibleEnumCaseName = ident.name |> List.last
    match ctx.definitionsMap |> Map.tryFind possibleEnumName with
    | Some (EnumDef e) when (!e).cases |> List.exists (fun c -> c.name = possibleEnumCaseName) ->
      EnumCaseName (possibleEnumName, possibleEnumCaseName, e) |> Some
    | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> None
  | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> None
*)

let rec getFullNameOfIdent (ctx: Context) (ident: IdentType) : string list option =
  let nsRev = List.rev ctx.currentNamespace
  let fullName = nsRev @ ident.name
  match ctx.definitionsMap |> Map.tryFind fullName with
  | Some (TypeAlias _ | ClassDef _ | EnumDef _ | Module _ | Value _) -> Some fullName
  | None when List.length ident.name > 1 ->
    let possibleEnumName = nsRev @ (ident.name |> List.take (List.length ident.name - 1))
    let possibleEnumCaseName = ident.name |> List.last
    match ctx.definitionsMap |> Map.tryFind possibleEnumName with
    | Some (EnumDef e) when e.cases |> List.exists (fun c -> c.name = possibleEnumCaseName) ->
      Some (possibleEnumName @ [possibleEnumCaseName])
    | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> None
  | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> None

let lookupFullName (ctx: Context) (fullName: string list) : FullNameLookupResult =
  match ctx.definitionsMap |> Map.tryFind fullName with
  | Some (TypeAlias a) -> AliasName a
  | Some (ClassDef c) -> ClassName c
  | Some (EnumDef e) -> EnumName e
  | Some (Module m) -> ModuleName m
  | Some (Value v) -> ValueName v
  | None ->
    let enumName = fullName |> List.take (List.length fullName - 1)
    let enumCaseName = List.last fullName
    match ctx.definitionsMap |> Map.tryFind enumName with
    | Some (EnumDef e) ->
      match e.cases |> List.tryFind (fun c -> c.name = enumCaseName) with
      | Some _ -> EnumCaseName (enumCaseName, e)
      | None -> failwithf "The enum '%s' does not have a case '%s" (enumName |> String.concat ".") enumCaseName
    | _ -> failwithf "Current context doesn't contain '%s'" (fullName |> String.concat ".")
  | _ -> failwithf "Current context doesn't contain '%s'" (fullName |> String.concat ".")


let rec mapIdent (mapping: Context -> IdentType -> Type) (ctx: Context) = function
  | Ident i -> mapping ctx i
  | Union u -> Union { types = u.types |> List.map (mapIdent mapping ctx) }
  | Intersection i -> Intersection { types = i.types |> List.map (mapIdent mapping ctx) }
  | Tuple ts -> Tuple (ts |> List.map (mapIdent mapping ctx))
  | ReadonlyTuple ts -> ReadonlyTuple (ts |> List.map (mapIdent mapping ctx))
  | AnonymousInterface c -> AnonymousInterface (mapTypeInClass (mapIdent mapping) ctx c)
  | Function f ->
    Function
      { f with
          returnType = mapIdent mapping ctx f.returnType;
          args = List.map (mapTypeInFieldLike (mapIdent mapping) ctx) f.args }
  | App (t, ts) -> App (mapIdent mapping ctx t, ts |> List.map (mapIdent mapping ctx))
  | Prim p -> Prim p | TypeLiteral l -> TypeLiteral l | TypeVar v -> TypeVar v
  | PolymorphicThis -> PolymorphicThis | UnknownType msg -> UnknownType msg

let rec mapIdentInStatements mapType mapExport (ctx: Context) (stmts: Statement list) : Statement list =
  let f = function
    | TypeAlias a ->
      TypeAlias {
        a with
          target = mapIdent mapType ctx a.target
          typeParams = a.typeParams |> List.map (mapTypeInTypeParam (mapIdent mapType) ctx)
      }
    | ClassDef c ->
      ClassDef (mapTypeInClass (mapIdent mapType) ctx c)
    | EnumDef e -> EnumDef e
    | Export (i, m) -> mapExport ctx i m
    | Value v ->
      Value {
        v with
          typ = mapIdent mapType ctx v.typ
          typeParams = v.typeParams |> List.map (mapTypeInTypeParam (mapIdent mapType) ctx)
      }
    | Module m ->
      Module {
        m with
          statements =
            mapIdentInStatements 
              mapType mapExport
              { ctx with currentNamespace = m.name :: ctx.currentNamespace }
              m.statements 
      }
    | UnknownStatement msgo -> UnknownStatement msgo
  stmts |> List.map f

let resolveIdentType (ctx: Context) (i: IdentType) : IdentType =
  match i.fullName with
  | Some _ -> i
  | None ->
    match getFullNameOfIdent ctx i with
    | Some fn -> { i with fullName = Some fn }
    | None ->
      eprintfn
        "warn: resolvIdent: unknown identifier '%s' from namespace '%s'"
        (String.concat "." i.name)
        (String.concat "." (List.rev ctx.currentNamespace))
      i

let resolveIdentInStatements (ctx: Context) (stmts: Statement list) : Statement list =
  mapIdentInStatements
    (fun ctx i -> resolveIdentType ctx i |> Ident)
    (fun ctx i m ->
      match i.fullName with
      | Some _ -> Export (i, m)
      | None ->
        match getFullNameOfIdent ctx i with
        | Some fn -> Export ({ i with fullName = Some fn }, m)
        | None ->
          eprintfn
            "warn: resolveIdentInStatements: unknown identifier '%s' from namespace '%s'"
            (String.concat "." i.name)
            (String.concat "." (List.rev ctx.currentNamespace))
          Export (i, m)
    ) ctx stmts

let mutable private inheritMap: Map<string list, Set<Type>> = Map.empty

let rec getAllInheritancesOfType (ctx: Context) (ty: Type) : Set<Type> =
  let rec go t =
    seq {
      match t with
      | Ident { fullName = Some fn } ->
        yield! getAllInheritancesFromName ctx fn
      | App (Ident { fullName = Some fn }, ts) ->
        let typrms =
          match ctx.definitionsMap |> Map.tryFind fn with
          | Some (ClassDef c) -> c.typeParams
          | Some (TypeAlias a) -> a.typeParams
          | _ -> []
        let subst = List.map2 (fun (tv: TypeParam) ty -> tv.name, ty) typrms ts |> Map.ofList
        yield! getAllInheritancesFromName ctx fn |> Seq.map (substTypeVar subst ctx)
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
      match ctx.definitionsMap |> Map.tryFind className with
      | Some (ClassDef c) ->
        seq {
          for t in c.implements do
            yield t
            yield! getAllInheritancesOfType ctx t
        } |> Set.ofSeq
      | Some (TypeAlias t) -> getAllInheritancesOfType ctx t.target
      | _ -> Set.empty
    inheritMap <- inheritMap |> Map.add className result
    result

let getEnumFromUnion ctx (u: Union) : Set<Choice<EnumCase, Literal>> * Union =
  let (|Dummy|) _ = []
  let rec go t =
    seq {
      match t with
      | Union { types = types } | Intersection { types = types } -> yield! Seq.collect go types
      | (Ident { fullName = Some fn } & Dummy tyargs) | App (Ident { fullName = Some fn }, tyargs) ->
        match fn |> lookupFullName ctx with
        | AliasName a ->
          if List.isEmpty tyargs then yield! go a.target
          else yield! go (App (a.target, tyargs))
        | EnumName e ->
          for c in e.cases do yield Choice1Of2 (Choice1Of2 c)
        | EnumCaseName (name, e) ->
          match e.cases |> List.tryFind (fun c -> c.name = name) with
          | Some c -> yield Choice1Of2 (Choice1Of2 c)
          | None -> yield Choice2Of2 t
        | ClassName c ->
          let bindings = List.map2 (fun (a: TypeParam) v -> a.name, v) c.typeParams tyargs |> Map.ofList
          let c = c |> mapTypeInClass (substTypeVar bindings) ()
          for t in c.implements do yield! go t
        | _ -> yield Choice2Of2 t
      | TypeLiteral l -> yield Choice1Of2 (Choice2Of2 l)
      | _ -> yield Choice2Of2 t
    }
  let result = go (Union u)
  let e, rest = Seq.fold (fun (e, rest) -> function Choice1Of2 x -> x::e,rest | Choice2Of2 x -> e,x::rest) ([],[]) result
  Set.ofList e, { types = rest }

let getDiscriminatedFromUnion ctx (u: Union) : Map<string, Map<Literal, Type>> * Union =
  let rec getLiteralFieldsFromClass (c: Class) =
    c.members |> List.choose (fun (_, m) ->
      match m with
      | Field (fl, _, []) ->
        match fl.value with
        | TypeLiteral l -> Some (fl.name, l)
        | Ident { fullName = Some fn } ->
          match fn |> lookupFullName ctx with
          | EnumCaseName (cn, e) ->
            match e.cases |> List.tryFind (fun c -> c.name = cn) with
            | Some { value = Some v } -> Some (fl.name, v)
            | _ -> None
          | _ -> None
        | _ -> None
      | _ -> None) |> Set.ofList
  
  let (|Dummy|) _ = []

  let rec goBase onUnion onIntersection onClass onOther t =
    seq {
      match t with
      | Union u -> yield! onUnion u
      | Intersection i -> yield! onIntersection i
      | AnonymousInterface i ->
        yield onClass t i
      | (Ident { fullName = Some fn } & Dummy ts) | App (Ident {fullName = Some fn}, ts) ->
        match lookupFullName ctx fn with
        | AliasName a ->
          if List.isEmpty ts then
            yield! goBase onUnion onIntersection onClass onOther a.target
          else
            yield! goBase onUnion onIntersection onClass onOther (App (a.target, ts))
        | ClassName c ->
          if List.isEmpty ts then
            yield onClass t c
          else
            let bindings = List.map2 (fun (a: TypeParam) v -> a.name, v) c.typeParams ts |> Map.ofList
            yield onClass t (c |> mapTypeInClass (substTypeVar bindings) ())
        | _ -> yield onOther t
      | _ -> yield onOther t
   }

  let rec goIntersection t : Set<string * Literal> =
    goBase
      (fun u -> u.types |> List.map goIntersection |> Set.intersectMany |> Seq.singleton)
      (fun i -> i.types |> List.map goIntersection |> Set.unionMany |> Seq.singleton)
      (fun _ i -> getLiteralFieldsFromClass i)
      (fun _ -> Set.empty)
      t
    |> Set.unionMany

  let rec go t : Choice<Type * Set<string * Literal>, Type> seq =
    goBase
      (fun u -> Seq.collect go u.types)
      (fun i ->
        let fields = goIntersection (Intersection i)
        if Set.isEmpty fields then Seq.singleton (Choice2Of2 (Intersection i))
        else Seq.singleton (Choice1Of2 (Intersection i, fields)))
      (fun t c ->
        let fields = getLiteralFieldsFromClass c
        if Set.isEmpty fields then Choice2Of2 t
        else Choice1Of2 (t, getLiteralFieldsFromClass c))
      (fun t -> Choice2Of2 t)
      t

  let classes, rest = Seq.fold (fun (e, rest) -> function Choice1Of2 x -> x::e,rest | Choice2Of2 x -> e,x::rest) ([],[]) (go (Union u))

  let tagDict = new System.Collections.Generic.Dictionary<string, uint32>()
  for (_, fields) in classes do
    for (name, _) in fields |> Set.toSeq do
      match tagDict.TryGetValue(name) with
      | true, i -> tagDict.[name] <- i + 1u
      | false, _ -> tagDict.[name] <- 1u

  let getBestTag (fields: Set<string * Literal>) =
    fields |> Set.toSeq |> Seq.maxBy (fun (name, _) ->
      match tagDict.TryGetValue(name) with
      | true, i -> i
      | false, _ -> 0u
    )

  let dus =
    classes
    |> List.map (fun (t, fields) ->
      let name, value = getBestTag fields
      name, (value, t))
    |> List.groupBy fst
    |> List.map (fun (name, xs) ->
      name,
      xs |> List.map snd
         |> List.groupBy fst
         |> List.map (fun (k, xs) ->
              match xs with
              | [x] -> k, snd x
              | xs -> k, Union { types = List.map snd xs })
         |> Map.ofList)
    |> Map.ofList

  dus, { types = rest }

type TypeofableType = TNumber | TString | TBoolean | TSymbol

type ResolvedUnion = {
  caseNull: bool
  caseUndefined: bool
  typeofableTypes: Set<TypeofableType>
  caseArray: ResolvedUnion option
  caseEnum: Set<Choice<EnumCase, Literal>>
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
          match x with TNumber -> "number" | TString -> "string" | TBoolean -> "boolean" | TSymbol -> "symbol"
      match ru.caseArray with
      | Some t -> yield sprintf "array<%s>" (pp t)
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

let mutable private resolveUnionMap: Map<Union, ResolvedUnion> = Map.empty

let rec resolveUnion (ctx: Context) (u: Union) : ResolvedUnion =
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
        | App (Prim Array, [t]) -> prims, t :: ats, rest
        | t -> prims, ats, t :: rest
      ) ([], [], [])
    let typeofableTypes = Set.ofList prims
    let caseArray =
      if List.isEmpty arrayTypes then None
      else Some (resolveUnion ctx { types = arrayTypes })
    let caseEnum, rest =
      getEnumFromUnion ctx { types = rest }
    let discriminatedUnions, rest =
      getDiscriminatedFromUnion ctx rest
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
