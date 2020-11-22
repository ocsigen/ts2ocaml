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
  // | BigInt
  // TS
  | Never | Any | Void | Unknown
  | ReadonlyArray
  // | ReadonlyMap
  // | ReadonlySet

type Enum = {
  comments: Comment list
  name: string
  cases: EnumCase list
}

and EnumCase = {
  comments: Comment list
  name: string
  value: Literal option
}

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

module Literal =
  let toString = function
    | LString s -> sprintf "\"%s\"" (String.escape s)
    | LInt i -> string i
    | LFloat l -> string l
    | LBool true -> "true" | LBool false -> "false"
  let getType l =
      match l with
      | LString _ -> String
      | LBool _ -> Bool
      | LInt _ | LFloat _ -> Number

module Enum =
  let isStringEnum (e: Enum) =
    e.cases |> List.exists (function { value = Some (LString _ ) } -> true | _ -> false)

module Type =
  let rec pp = function
    | PolymorphicThis -> "this"
    | Ident i -> (if Option.isNone i.fullName then "?" else "") + (i.name |> String.concat ".")
    | TypeVar v -> "'" + v
    | Prim p -> sprintf "%A" p
    | TypeLiteral l -> Literal.toString l
    | AnonymousInterface _ -> "{..}"
    | Union u -> "union<" + (u.types |> List.map pp |> String.concat " | ") + ">"
    | Intersection i -> "intersection<" + (i.types |> List.map pp |> String.concat ", ") + ">"
    | Tuple ts | ReadonlyTuple ts -> "(" + (ts |> List.map pp |> String.concat ", ") + ")"
    | Function f ->
      let args =
        f.args
        |> List.map (fun a -> sprintf "%s%s:%s" (if a.isOptional then "?" else "~") a.name (pp a.value))
      "(" + (args @ [pp f.returnType] |> String.concat " -> ") + ")"
    | App (t, ts) -> pp t + "<" + (ts |> List.map pp |> String.concat ", ") + ">"
    | UnknownType None -> "?"
    | UnknownType (Some msg) -> sprintf "?(%s)" msg

