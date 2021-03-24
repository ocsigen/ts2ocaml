module Syntax
open TypeScript

[<CustomEquality; CustomComparison; StructuredFormatDisplay("{AsString}")>]
type Location = 
  | Location of Ts.SourceFile * Ts.LineAndCharacter
  | UnknownLocation
with
  member x.AsString =
    match x with
    | Location (src, pos) ->
      sprintf "line %i, col %i of %s"
        (int pos.line + 1)
        (int pos.character + 1)
        src.fileName
    | UnknownLocation -> "<unknown>"
  member x.AsComparable =
    match x with
    | UnknownLocation -> None
    | Location (src, pos) ->
      Some (src.fileName, pos.line, pos.character)
  override x.ToString() = x.AsString
  override x.Equals(yo) =
    match yo with
    | :? Location as y -> x.AsComparable = y.AsComparable
    | _ -> false
  override x.GetHashCode() = x.AsComparable.GetHashCode()
  interface System.IComparable with
    member x.CompareTo(yo) =
      match yo with
      | :? Location as y -> compare x.AsComparable y.AsComparable
      | _ -> invalidArg "yo" "cannot compare values"

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

type PrimType =
  | String | Bool | Number
  | Any | Void | Unknown
  | Null | Never | Undefined
  | Object | UntypedFunction
  | Symbol | RegExp
  | Array | ReadonlyArray
  | BigInt

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
  | Prim of PrimType
  | TypeLiteral of Literal
  | AnonymousInterface of Class
  | Union of Union | Intersection of Intersection
  | Tuple of Type list | ReadonlyTuple of Type list
  | Function of FuncType<Type>
  | App of AppLeftHandSide * Type list * Location
  | Erased of ErasedType * Location
  | UnknownType of string option

and AppLeftHandSide =
  | AIdent of IdentType
  | APrim of PrimType
  | AAnonymousInterface of Class

and ErasedType =
  | IndexedAccess of Type * Type
  | TypeQuery of IdentType
  | Keyof of Type
  | NewableFunction of FuncType<Type> * TypeParam list

and Union = {
  types: Type list
}

and Intersection = {
  types: Type list
}

and IdentType = {
  name: string list
  fullName: string list option
  loc: Location
}

and FieldLike = { name:string; isOptional:bool; value:Type }

and FuncType<'returnType> = { args:Choice<FieldLike, Type> list; isVariadic:bool; returnType:'returnType }

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
  | Method of string * FuncType<Type> * TypeParam list
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
  let ofAppLeftHandSide = function
    | AIdent i -> Ident i
    | APrim p -> Prim p
    | AAnonymousInterface i -> AnonymousInterface i

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
        |> List.map (function 
          | Choice1Of2 a -> sprintf "%s%s:%s" (if a.isOptional then "?" else "~") a.name (pp a.value)
          | Choice2Of2 t -> pp t)
      "(" + (args @ [pp f.returnType] |> String.concat " -> ") + ")"
    | App (t, ts, _) -> pp (ofAppLeftHandSide t) + "<" + (ts |> List.map pp |> String.concat ", ") + ">"
    | Erased (e, _) ->
      match e with
      | IndexedAccess (t, u) -> sprintf "%s[%s]" (pp t) (pp u)
      | TypeQuery i -> sprintf "typeof %s" (String.concat "." i.name)
      | Keyof t -> sprintf "keyof %s" (pp t)
      | NewableFunction (f, typrms) ->
        let typrms =
          if List.isEmpty typrms then ""
          else
            let args =
              typrms |> List.map (fun x -> sprintf "'%s" x.name)
            sprintf "<%s>" (args |> String.concat ", ")
        sprintf "new %s%s" typrms (pp (Function f))
    | UnknownType None -> "?"
    | UnknownType (Some msg) -> sprintf "?(%s)" msg
