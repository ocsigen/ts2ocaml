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

