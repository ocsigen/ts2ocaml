module Syntax

type Literal =
  | LString of string
  | LInt of int
  | LFloat of float
  | LBool of bool

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
  | BigInt
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
  /// an intersection of possible class types in the union.
  classIntersection: Class option
}

and Intersection = {
  types: Type list
  /// an union of possible class types in the intersection.
  classUnion: Class option
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
  fullName: string list option
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
  typeArguments: TypeParam list
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
  typesModuleName: string
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
  let toStrings (fnr: FullName option) : string list option =
    match fnr with
    | None -> None
    | Some x ->
      match x with
      | AliasName (n, _) | ClassName (n, _) | EnumName (n, _) | ModuleName (n, _) | ValueName (n, _) -> Some n
      | EnumCaseName (n, c, _) -> Some (n @ [c])

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
        classIntersection = u.classIntersection |> Option.map (mapTypeInClass (substTypeVar subst) _ctx)
      }
    | Intersection i ->
      Intersection {
        types = i.types |> List.map (substTypeVar subst _ctx);
        classUnion = i.classUnion |> Option.map (mapTypeInClass (substTypeVar subst) _ctx)
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
      | TypeAlias { name = name }
      | ClassDef  { name = Some name }
      | EnumDef   { name = name }
      | Value     { name = name } -> map |> Map.add (ns @ [name]) s
      | ClassDef  { name = None } -> failwith "impossible_extractNamedDefinitions"
      | Module m ->
        let ns' = ns @ [m.name]
        m.statements |> List.fold (go ns') map |> Map.add ns' (Module m)
      | Export _ | UnknownStatement _ -> map
    stmts |> List.fold (go []) Map.empty

  let createRootContext (typesModuleName: string) (stmts: Statement list) : Context =
    let add name ty m =
     m |> Map.add [name] (TypeAlias { name = name; typeArguments = []; target = ty; erased = true })
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
    {
      typesModuleName = typesModuleName;
      currentNamespace = [];
      definitionsMap = m
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
        classIntersection = u.classIntersection |> Option.map (mapTypeInClass (mapIdent mapping) ctx)
      }
    | Intersection i ->
      Intersection {
        types = i.types |> List.map (mapIdent mapping ctx);
        classUnion = i.classUnion |> Option.map (mapTypeInClass (mapIdent mapping) ctx)
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
        TypeAlias { a with target = mapIdent mapType ctx a.target; typeArguments = a.typeArguments |> List.map (mapTypeInTypeParam (mapIdent mapType) ctx) }
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
   