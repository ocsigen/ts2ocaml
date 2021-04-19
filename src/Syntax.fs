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
    | :? Location as y -> true
    | _ -> false
  override x.GetHashCode() = 0
  interface System.IComparable with
    member x.CompareTo(yo) =
      match yo with
      | :? Location as y -> 0
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

type ICommented =
  abstract getComments: unit -> Comment list

type Commented<'t> = { value: 't; comments: Comment list }
  with
  interface ICommented with
    member this.getComments() = this.comments

type PrimType =
  | String | Bool | Number
  | Any | Void | Unknown
  | Null | Never | Undefined
  | Object | UntypedFunction
  | Symbol | RegExp
  | Array | ReadonlyArray
  | BigInt

type Enum = {
  name: string
  isExported: Exported
  cases: EnumCase list
  comments: Comment list
} with
  interface ICommented with
    member this.getComments() = this.comments

and EnumCase = {
  name: string
  value: Literal option
  comments: Comment list
} with
  interface ICommented with
    member this.getComments() = this.comments

and Type =
  | PolymorphicThis
  | Ident of IdentType
  | TypeVar of string
  | Prim of PrimType
  | TypeLiteral of Literal
  | AnonymousInterface of Class
  | Union of UnionType | Intersection of IntersectionType
  | Tuple of TupleType
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

and UnionType = {
  types: Type list
}

and IntersectionType = {
  types: Type list
}

and TupleType = {
  types: {| value: Type; name: string option |} list
  isReadOnly: bool
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
  name: string option
  accessibility: Accessibility
  isInterface: bool
  isExported: Exported
  implements: Type list
  typeParams: TypeParam list
  members: (MemberAttribute * Member) list
  comments: Comment list
} with
  interface ICommented with
    member this.getComments() = this.comments

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
} with
  interface ICommented with
    member this.getComments() = this.comments

and Value = {
  name: string
  typ: Type
  typeParams: TypeParam list
  isConst: bool
  isExported: Exported
  accessibility : Accessibility option
  comments: Comment list
} with
  interface ICommented with
    member this.getComments() = this.comments

and TypeAlias = {
  name: string
  typeParams: TypeParam list
  target: Type
  erased: bool
  comments: Comment list
} with
  interface ICommented with
    member this.getComments() = this.comments

and Statement =
  | TypeAlias of TypeAlias
  | ClassDef of Class
  | EnumDef of Enum
  | Module of Module
  | Value of Value
  | Export of Export * Comment list
  | UnknownStatement of string option * Comment list
  | FloatingComment of Comment list
  with
  interface ICommented with
    member this.getComments() =
      match this with
      | TypeAlias ta -> ta.comments | ClassDef c -> c.comments
      | EnumDef e -> e.comments | Module m -> m.comments
      | Value v -> v.comments
      | Export (_, c) | UnknownStatement (_, c) | FloatingComment c -> c

and Module = {
  name: string
  isExported: Exported 
  isNamespace: bool
  statements: Statement list
  comments: Comment list
} with
  interface ICommented with
    member this.getComments() = this.comments

and Export =
  /// ```ts
  /// export = ident;
  /// ```
  /// use the followings to import:
  ///
  /// ES6 (through Babel):
  /// ```js
  ///   import whatever from "path";
  /// ```
  ///
  /// CJS:
  /// ```js
  ///   const whatever = require("path");
  /// ```
  | CommonJsExport of IdentType
  /// ```ts
  /// export default ident;
  /// ```
  /// use the followings to import:
  ///
  /// ES6:
  /// ```js
  /// import whatever from "path";
  /// ```
  ///
  /// CJS (through Babel):
  /// ```js
  /// const whatever = require("path").default;
  /// ```
  | ES6DefaultExport of IdentType
  /// ```ts
  /// export { target }; // name = target, when renameAs = None
  /// export { target as name }; // when renameAs = Some name
  /// ```
  /// use the followings to import:
  ///
  /// ES6:
  /// ```js
  ///   import { name } from "path";
  /// ```
  ///
  /// CJS (through Babel):
  /// ```js
  ///   const whatever = require("path").name;
  /// ```
  | ES6Export of {| target: IdentType; renameAs: string option |} list
  /// ```ts
  /// export as namespace ns;
  /// ```
  /// use the followings to import:
  ///
  /// ES6:
  /// ```js
  ///   import * as whatever from "path";
  /// ```
  ///
  /// CJS (through Babel):
  /// ```js
  ///   const whatever = require("path");
  /// ``` 
  | ExportAsNamespace of ns:string

and [<RequireQualifiedAccess>] Exported =
  | No
  /// ```ts
  /// export class Foo { .. }
  /// ```
  | Yes
  /// ```ts
  /// export default class Foo { .. }
  /// ```
  | Default
  /// ```ts
  /// declare class Foo { .. }
  /// ```
  | Declared

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
    | Tuple ts ->
      "(" + (
        ts.types
        |> List.map (fun t -> (match t.name with Some n -> n + ":" | None -> "") + pp t.value)
        |> String.concat ", "
      ) + ")"
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
