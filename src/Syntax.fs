module Syntax

type Literal =
  | LString of string
  | LInt of int
  | LFloat of float
  | LBool of bool

module Literal =
  let toString = function
    | LString s -> sprintf "\"%s\"" (String.escape s)
    | LInt i -> string i
    | LFloat l -> string l
    | LBool true -> "true" | LBool false -> "false"

type Comment =
  | TextLine of string
  | Deprecated of string option
  | Param of string * string
  | Return of string

type PrimTypes =
  // ES5
  | Null | Undefined
  | Object
  | String | Bool | Number
  | UntypedFunction
  | Array
  | Date
  | Error
  | RegExp
  // ES6
  | Symbol
  // | Proxy
  // | Map | WeakMap
  // | Set | WeakSet
  | Promise
  // ES2020
  // | BigInt
  // TS
  | Never | Any | Void | Unknown
  | ReadonlyArray
  // | ReadonlyMap
  // | ReadonlySet

type Enum = {
  name: string
  comments: Comment list
  cases: EnumCase list
}

and EnumCase = (Comment list * string * Literal option) 

and Type =
  | PolymorphicThis
  | Ident of IdentType
  | TypeVar of string
  | Prim of PrimTypes
  | TypeLiteral of Literal
  | AnonymousInterface of Class
  | Union of Union | Intersection of Intersection
  | Tuple of Type list | ReadonlyTuple of Type list
  | Function of FuncType<Type>
  | App of Type * Type list
  | UnknownType of string option

and Union = {
  types: Type list
}

and Intersection = {
  types: Type list
}

and IdentType = {
  name: string list
  fullName: FullName option
}

and FullName =
  | AliasName of string list * TypeAlias
  | ClassName of string list * Class
  | EnumName of string list * Enum
  | EnumCaseName of string list * string * Enum
  | ModuleName of string list * Module
  | ValueName of string list * Value

and FieldLike = { name:string; isOptional:bool; value:Type }

and FuncType<'returnType> = { args:FieldLike list; isVariadic:bool; returnType:'returnType }

and Accessibility = Public | Protected | Private
and Mutability = ReadOnly | WriteOnly | Mutable

and TypeParam = {
  name: string
  extends: Type option
  defaultType: Type option
}

and Class = {
  comments: Comment list
  name: string option
  accessibility: Accessibility
  isInterface: bool
  isExported: bool
  implements: Type list
  typeParams: TypeParam list
  members: (MemberAttribute * Member) list
}

and Member =
  | Field of FieldLike * Mutability * TypeParam list
  | FunctionInterface of FuncType<Type> * TypeParam list
  | Indexer of FuncType<Type> * Mutability
  | Getter of FieldLike | Setter of FieldLike
  | Constructor of FuncType<unit> * TypeParam list
  | New of FuncType<Type> * TypeParam list

and MemberAttribute = {
  comments: Comment list
  isStatic: bool
  accessibility: Accessibility
}

and Value = {
  comments: Comment list
  name: string
  typ: Type
  typeParams: TypeParam list
  isConst: bool
  isStatic: bool
  isExported: bool
  accessibility : Accessibility option
}

and ExportModifier =
  | AsDefault
  // | As of string
  // | AsIs

and TypeAlias = {
  name: string
  typeParams: TypeParam list
  target: Type
  erased: bool
}

and Statement =
  | TypeAlias of TypeAlias
  | ClassDef of Class
  | EnumDef of Enum
  | Module of Module
  | Value of Value
  | Export of IdentType * ExportModifier
  | UnknownStatement of string option

and Module = {
  name: string
  isExported: bool
  isNamespace: bool
  statements: Statement list
}

type Context = {
  currentNamespace: string list
  definitionsMap: Map<string list, Statement>
  typeLiteralsMap: Map<Literal, int>
  anonymousInterfacesMap: Map<Class, int>
  internalModuleName: string
}

module Enum =
  let isStringEnum (e: Enum) =
    e.cases |> List.exists (function (_, _, Some (LString _)) -> true | _ -> false)

module Context =
  let ofParentNamespace (ctx: Context) : Context option =
    match ctx.currentNamespace with
    | [] -> None
    | _ :: ns -> Some { ctx with currentNamespace = ns }

module FullName =
  let toStrings (fnr: FullName) : string list =
    match fnr with
    | AliasName (n, _) | ClassName (n, _) | EnumName (n, _) | ModuleName (n, _) | ValueName (n, _) -> n
    | EnumCaseName (n, c, _) -> n @ [c]
  
module Utils =
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
    | t -> t

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
        e.cases |> Seq.choose (fun (_, _, lo) -> lo)
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
      | Some (EnumDef e) when e.cases |> List.exists (fun (_, n, _) -> n = possibleEnumCaseName) ->
        EnumCaseName (possibleEnumName, possibleEnumCaseName, e) |> Some
      | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> None
    | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> None

  let rec mapIdent (mapping: Context -> IdentType -> Type) (ctx: Context) = function
    | Ident i -> mapping ctx i
    | Union u ->
      Union {
        types = u.types |> List.map (mapIdent mapping ctx);
      }
    | Intersection i ->
      Intersection {
        types = i.types |> List.map (mapIdent mapping ctx);
      }
    | Tuple ts -> Tuple (ts |> List.map (mapIdent mapping ctx))
    | ReadonlyTuple ts -> ReadonlyTuple (ts |> List.map (mapIdent mapping ctx))
    | AnonymousInterface c -> AnonymousInterface (mapTypeInClass (mapIdent mapping) ctx c)
    | Function f ->
      Function
        { f with
            returnType = mapIdent mapping ctx f.returnType;
            args = List.map (mapTypeInFieldLike (mapIdent mapping) ctx) f.args }
    | App (t, ts) -> App (mapIdent mapping ctx t, ts |> List.map (mapIdent mapping ctx))
    | x -> x

  let rec mapIdentInStatements mapType mapExport (ctx: Context) (stmts: Statement list) : Statement list =
    let f = function
      | TypeAlias a ->
        TypeAlias { a with target = mapIdent mapType ctx a.target; typeParams = a.typeParams |> List.map (mapTypeInTypeParam (mapIdent mapType) ctx) }
      | ClassDef c -> ClassDef (mapTypeInClass (mapIdent mapType) ctx c)
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
      | x -> x
    stmts |> List.map f

  let resolveIdentType (ctx: Context) (i: IdentType) : Type =
    match i.fullName with
    | Some _ -> Ident i
    | None ->
      match getFullNameOfIdent ctx i with
      | Some fn -> Ident { i with fullName = Some fn }
      | None ->
        eprintfn
          "warn: resolvIdent: unknown identifier '%s' from namespace '%s'"
          (String.concat "." i.name)
          (String.concat "." (List.rev ctx.currentNamespace))
        Ident i

  let resolveIdentInStatements (ctx: Context) (stmts: Statement list) : Statement list =
    mapIdentInStatements
      resolveIdentType
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
          yield! getAllInheritancesFromName ctx (FullName.toStrings fn)
        | App (Ident { fullName = Some fn }, ts) ->
          let typrms =
            match ctx.definitionsMap |> Map.tryFind (FullName.toStrings fn) with
            | Some (ClassDef c) -> c.typeParams
            | Some (TypeAlias a) -> a.typeParams
            | _ -> []
          let subst = List.map2 (fun (tv: TypeParam) ty -> tv.name, ty) typrms ts |> Map.ofList
          yield! getAllInheritancesFromName ctx (FullName.toStrings fn) |> Seq.map (substTypeVar subst ctx)
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

  let isEnum (_ctx: Context) (u: Union) : (PrimTypes option * Set<Literal>) option =
    let getTypeOfLiteral l =
        match l with
        | LString _ -> String
        | LBool _ -> Bool
        | LInt _ | LFloat _ -> Number

    let rec go t =
      seq {
        match t with
        | Union u -> yield! Seq.collect go u.types
        | Ident { fullName = Some fn } | App (Ident { fullName = Some fn }, _) ->
          match fn with
          | AliasName (_, a) -> yield! go a.target
          | EnumName (_, e) ->
            for _, _, c in e.cases do
              match c with
              | Some l -> yield Some l
              | None -> ()
          | EnumCaseName (_, name, e) ->
            let _, _, v = e.cases |> List.find (fun (_, n, _) -> n = name)
            match v with
            | Some l -> yield Some l
            | None -> ()
          | _ -> yield None
        | TypeLiteral l -> yield Some l
        | _ -> yield None
      }

    let result = go (Union u)
    if result |> Seq.contains None then None
    else
      let lits = result |> Seq.choose id |> Set.ofSeq
      let ty = lits |> Seq.map getTypeOfLiteral |> Seq.distinct |> Seq.toList
      match ty with
      | [t] -> Some (Some t, lits)
      | _ -> Some (None, lits)
    

  let coerceUnion (u: Union) : Union =
    // TODO
    u