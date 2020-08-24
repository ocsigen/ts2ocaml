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
  | Proxy
  | Map | WeakMap
  | Set | WeakSet
  | Promise
  // ES2020
  | BigInt
  // TS
  | Never | Any | Void | Unknown
  | Readonly
  | ReadonlyArray
  | ReadonlyMap
  | ReadonlySet

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
  fullName: string list option
}

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

module Enum =
  let isStringEnum (e: Enum) =
    e.cases |> List.exists (function (_, _, Some (LString _)) -> true | _ -> false)

type Value = {
  comments: Comment list
  name: string
  typ: Type
  typeParams: TypeParam list
  isConst: bool
  isStatic: bool
  isExported: bool
  accessibility : Accessibility option
}

type ExportModifier =
  | AsDefault
  // | As of string
  // | AsIs

type TypeAlias = {
  name: string
  typeArguments: TypeParam list
  target: Type
  erased: bool
}

type Statement =
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

module Context =
  let ofParentNamespace (ctx: Context) : Context option =
    match ctx.currentNamespace with
    | [] -> None
    | _ :: ns -> Some { ctx with currentNamespace = ns }

module Utils =
  let rec substTypeVar (subst: Map<string, Type>) = function
    | TypeVar v ->
      match subst |> Map.tryFind v with
      | Some t -> t
      | None -> TypeVar v
    | Union u ->
      Union {
        types = u.types |> List.map (substTypeVar subst);
        classIntersection = u.classIntersection |> Option.map (substTypeVarInClass subst)
      }
    | Intersection i ->
      Intersection {
        types = i.types |> List.map (substTypeVar subst);
        classUnion = i.classUnion |> Option.map (substTypeVarInClass subst)
      }
    | Tuple ts -> Tuple (ts |> List.map (substTypeVar subst))
    | ReadonlyTuple ts -> ReadonlyTuple (ts |> List.map (substTypeVar subst))
    | AnonymousInterface c -> AnonymousInterface (substTypeVarInClass subst c)
    | Function f ->
      Function
        { f with
            returnType = substTypeVar subst f.returnType;
            args = List.map (substTypeVarInFieldLike subst) f.args }
    | App (t, ts) -> App (substTypeVar subst t, ts |> List.map (substTypeVar subst))
    | t -> t
  
  and substTypeVarInFieldLike subst (fl: FieldLike) = 
    { fl with value = substTypeVar subst fl.value }
  
  and substTypeVarInClass subst (c: Class) : Class =
    let mapTypeParam (tp: TypeParam) =
      { tp with
          extends = Option.map (substTypeVar subst) tp.extends
          defaultType = Option.map (substTypeVar subst) tp.defaultType }
    let mapFuncType f =
      { f with
          returnType = substTypeVar subst f.returnType
          args = List.map (substTypeVarInFieldLike subst) f.args }
    let mapMember = function
      | Field (f, m, tps) -> Field (substTypeVarInFieldLike subst f, m, List.map mapTypeParam tps)
      | FunctionInterface (f, tps) -> FunctionInterface (mapFuncType f, List.map mapTypeParam tps)
      | Indexer (f, m) -> Indexer (mapFuncType f, m)
      | Constructor (c, tps) -> Constructor ({ c with args = List.map (substTypeVarInFieldLike subst) c.args }, List.map mapTypeParam tps)
      | Getter f -> Getter (substTypeVarInFieldLike subst f)
      | Setter f -> Setter (substTypeVarInFieldLike subst f)
      | New (f, tps) -> New (mapFuncType f, List.map mapTypeParam tps)
    { c with
        implements = c.implements |> List.map (substTypeVar subst)
        members = c.members |> List.map (fun (a, m) -> a, mapMember m)
        typeParams = c.typeParams |> List.map mapTypeParam }

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
            !iref' |> substTypeVarInClass (mapping |> Map.ofList)
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

  type FullNameResult =
    | AliasName of string list * TypeAlias
    | ClassName of string list * Class
    | EnumName of string list * Enum
    | EnumCaseName of string list * string * Enum
    | ModuleName of string list * Module
    | ValueName of string list * Value
    | NotFound of string list

  module FullNameResult =
    let getFullName (fnr: FullNameResult) : string list option =
      match fnr with
      | NotFound _ -> None
      | AliasName (n, _) | ClassName (n, _) | EnumName (n, _) | ModuleName (n, _) | ValueName (n, _) -> Some n
      | EnumCaseName (n, c, _) -> Some (n @ [c])

  let rec getFullNameOfIdent (ctx: Context) (ident: IdentType) : FullNameResult =
    let nsRev = List.rev ctx.currentNamespace
    let fullName = nsRev @ ident.name
    match ctx.definitionsMap |> Map.tryFind fullName with
    | Some (TypeAlias a) -> AliasName (fullName, a)
    | Some (ClassDef c) -> ClassName (fullName, c)
    | Some (EnumDef e) -> EnumName (fullName, e)
    | Some (Module m) -> ModuleName (fullName, m)
    | Some (Value v) -> ValueName (fullName, v)
    | None when List.length ident.name > 1 ->
      let possibleEnumName = nsRev @ (ident.name |> List.take (List.length ident.name - 1))
      let possibleEnumCaseName = ident.name |> List.last
      match ctx.definitionsMap |> Map.tryFind possibleEnumName with
      | Some (EnumDef e) when e.cases |> List.exists (fun (_, n, _) -> n = possibleEnumCaseName) ->
        EnumCaseName (possibleEnumName, possibleEnumCaseName, e)
      | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> NotFound ident.name
    | _ -> match Context.ofParentNamespace ctx with Some ctx -> getFullNameOfIdent ctx ident | None -> NotFound ident.name

  let rec resolveIdent (ctx: Context) = function
    | Ident i when Option.isNone i.fullName ->
      match FullNameResult.getFullName (getFullNameOfIdent ctx i) with
      | Some fn -> Ident { i with fullName = Some fn }
      | None ->
        eprintfn
          "warn: resolvIdent: unknown identifier '%s' from namespace '%s'"
          (String.concat "." i.name)
          (String.concat "." (List.rev ctx.currentNamespace))
        Ident i
    | Union u ->
      Union {
        types = u.types |> List.map (resolveIdent ctx);
        classIntersection = u.classIntersection |> Option.map (resolveIdentInClass ctx)
      }
    | Intersection i ->
      Intersection {
        types = i.types |> List.map (resolveIdent ctx);
        classUnion = i.classUnion |> Option.map (resolveIdentInClass ctx)
      }
    | Tuple ts -> Tuple (ts |> List.map (resolveIdent ctx))
    | ReadonlyTuple ts -> ReadonlyTuple (ts |> List.map (resolveIdent ctx))
    | AnonymousInterface c -> AnonymousInterface (resolveIdentInClass ctx c)
    | Function f ->
      Function
        { f with
            returnType = resolveIdent ctx f.returnType;
            args = List.map (resolveIdentInFieldLike ctx) f.args }
    | App (t, ts) -> App (resolveIdent ctx t, ts |> List.map (resolveIdent ctx))
    | x -> x

  and resolveIdentInTypeParam (ctx: Context) (tp: TypeParam) =
    { tp with
        extends = Option.map (resolveIdent ctx) tp.extends
        defaultType = Option.map (resolveIdent ctx) tp.defaultType }

  and resolveIdentInFuncType (ctx: Context) f =
    { f with
        returnType = resolveIdent ctx f.returnType
        args = List.map (resolveIdentInFieldLike ctx) f.args }

  and resolveIdentInClass (ctx: Context) (c: Class) : Class =
    let mapMember = function
      | Field (f, m, tps) -> Field (resolveIdentInFieldLike ctx f, m, List.map (resolveIdentInTypeParam ctx) tps)
      | FunctionInterface (f, tps) -> FunctionInterface (resolveIdentInFuncType ctx f, List.map (resolveIdentInTypeParam ctx) tps)
      | Indexer (f, m) -> Indexer (resolveIdentInFuncType ctx f, m)
      | Constructor (c, tps) -> Constructor ({ c with args = List.map (resolveIdentInFieldLike ctx) c.args }, List.map (resolveIdentInTypeParam ctx) tps)
      | Getter f -> Getter (resolveIdentInFieldLike ctx f)
      | Setter f -> Setter (resolveIdentInFieldLike ctx f)
      | New (f, tps) -> New (resolveIdentInFuncType ctx f, List.map (resolveIdentInTypeParam ctx) tps)
    { c with
        implements = c.implements |> List.map (resolveIdent ctx)
        members = c.members |> List.map (fun (a, m) -> a, mapMember m)
        typeParams = c.typeParams |> List.map (resolveIdentInTypeParam ctx) }
  
  and resolveIdentInFieldLike (ctx: Context) (fl: FieldLike) : FieldLike =
    { fl with value = resolveIdent ctx fl.value }

  let rec resolveIdentInStatements (ctx: Context) (stmts: Statement list) : Statement list =
    let f = function
      | TypeAlias a ->
        TypeAlias { a with target = resolveIdent ctx a.target; typeArguments = a.typeArguments |> List.map (resolveIdentInTypeParam ctx) }
      | ClassDef c -> ClassDef (resolveIdentInClass ctx c)
      | EnumDef e -> EnumDef e
      | Export (i, m) when Option.isNone i.fullName -> 
        match FullNameResult.getFullName (getFullNameOfIdent ctx i) with
        | Some fn -> Export ({ i with fullName = Some fn }, m)
        | None ->
          eprintfn
            "warn: resolveIdentInStatements: unknown identifier '%s' from namespace '%s'"
            (String.concat "." i.name)
            (String.concat "." (List.rev ctx.currentNamespace))
          Export (i, m)
      | Value v ->
        Value {
          v with
            typ = resolveIdent ctx v.typ
            typeParams = v.typeParams |> List.map (resolveIdentInTypeParam ctx)
        }
      | Module m ->
        Module {
          m with
            statements =
              resolveIdentInStatements 
                { ctx with currentNamespace = m.name :: ctx.currentNamespace }
                m.statements 
        }
      | x -> x
    stmts |> List.map f