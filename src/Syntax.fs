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
  | Null | Undefined
  | Never
  | String | Bool | Number
  | Any | Void | Unknown
  | RegExp
  | Object

type BuiltInType =
  | Promise of Type
  | Date

and Type =
  | PolymorphicThis
  | Ident of IdentType
  | TypeVar of string
  | Prim of PrimTypes
  | BuiltIn of BuiltInType
  | TypeLiteral of Literal
  | AnonymousInterface of Class
  | Union of Type list | Intersection of Type list
  | Tuple of Type list | ReadonlyTuple of Type list
  | Array of Type | ReadonlyArray of Type
  | Function of FuncType<Type>
  | App of Type * Type list
  | UnknownType of string option

and IdentType = {
  name: string list
  fullName: string option
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
  fullName: string option
  accessibility: Accessibility
  isInterface: bool
  isExported: bool
  implements: Type list
  typeParams: TypeParam list
  members: (MemberAttribute * Member) list
}

and Member =
  | Field of FieldLike * Mutability * TypeParam list
  | FunctionInterface of FuncType<Type>
  | Indexer of FuncType<Type> * Mutability
  | Constructor of FuncType<unit>
  | Getter of FieldLike | Setter of FieldLike
  | New of FuncType<Type>

and MemberAttribute = {
  comments: Comment list
  isStatic: bool
  accessibility: Accessibility
}

type Enum = {
  comments: Comment list
  cases: EnumCase list
}

and EnumCase = (Comment list * string * Literal option) 

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
}

type Statement =
  | TypeAlias of TypeAlias
  | Class of Class
  | Enum of Enum
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

module Utils =
  let rec substTypeVar (subst: Map<string, Type>) = function
    | TypeVar v ->
      match subst |> Map.tryFind v with
      | Some t -> t
      | None -> TypeVar v
    | BuiltIn (Promise t) -> BuiltIn (Promise (substTypeVar subst t))
    | Union ts -> Union (ts |> List.map (substTypeVar subst))
    | Intersection ts -> Intersection (ts |> List.map (substTypeVar subst))
    | Tuple ts -> Tuple (ts |> List.map (substTypeVar subst))
    | ReadonlyTuple ts -> ReadonlyTuple (ts |> List.map (substTypeVar subst))
    | Array t -> Array (substTypeVar subst t)
    | ReadonlyArray t -> ReadonlyArray (substTypeVar subst t)
    | AnonymousInterface i -> AnonymousInterface (substTypeVarInClass subst i)
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
      | FunctionInterface f -> FunctionInterface (mapFuncType f)
      | Indexer (f, m) -> Indexer (mapFuncType f, m)
      | Constructor c -> Constructor { c with args = List.map (substTypeVarInFieldLike subst) c.args }
      | Getter f -> Getter (substTypeVarInFieldLike subst f)
      | Setter f -> Setter (substTypeVarInFieldLike subst f)
      | New f -> New (mapFuncType f)
    { c with
        implements = c.implements |> List.map (substTypeVar subst)
        members = c.members |> List.map (fun (a, m) -> a, mapMember m)
        typeParams = c.typeParams |> List.map mapTypeParam }

  let rec mergeStatements (stmts: Statement list) =
    let mutable result : Choice<Statement, Class ref, Module ref> list = []
    let mutable intfMap = Map.empty
    let mutable nsMap = Map.empty
    let rec go = function
      | Class i when i.isInterface ->
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
      | Module n when n.isNamespace ->
        match nsMap |> Map.tryFind n.name with
        | None ->
          let nref = ref n
          nsMap <- (nsMap |> Map.add n.name nref)
          result <- Choice3Of3 nref :: result
        | Some nref' ->
          nref' := { n with statements = n.statements @ (!nref').statements }
      | stmt ->
        result <- Choice1Of3 stmt :: result
    for stmt in stmts do go stmt
    result
    |> List.rev
    |> List.map (function Choice1Of3 s -> s | Choice2Of3 i -> Class !i | Choice3Of3 n -> Module !n)
