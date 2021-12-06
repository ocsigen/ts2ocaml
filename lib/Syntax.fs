module Ts2Ml.Syntax

open TypeScript

[<CustomEquality; CustomComparison; StructuredFormatDisplay("{AsString}")>]
type Location =
  | LocationTs of Ts.SourceFile * Ts.LineAndCharacter
  | Location of {| src: SourceFile; line: int; character: int |}
  | MultipleLocation of Location list
  | UnknownLocation
with
  static member (++) (x: Location, y: Location) =
    match x, y with
    | UnknownLocation, x | x, UnknownLocation -> x
    | MultipleLocation xs, MultipleLocation ys -> MultipleLocation (List.distinct (xs @ ys))
    | MultipleLocation ls, l | l, MultipleLocation ls -> MultipleLocation (l :: ls)
    | _, _ -> MultipleLocation [x; y]
  member x.AsString =
    match x with
    | LocationTs (src, pos) ->
      sprintf "line %i, col %i of %s"
        (int pos.line + 1)
        (int pos.character + 1)
        src.fileName
    | Location l ->
      sprintf "line %i, col %i of %s"
        (int l.line + 1)
        (int l.character + 1)
        l.src.fileName
    | MultipleLocation l ->
      l |> List.map (fun x -> x.AsString) |> String.concat " and "
    | UnknownLocation -> "<unknown>"
  member x.AsComparable =
    match x with
    | UnknownLocation -> Set.empty
    | Location l ->
      Set.singleton (l.src.fileName, l.line, l.character)
    | LocationTs (src, pos) ->
      Set.singleton (src.fileName, int pos.line, int pos.character)
    | MultipleLocation xs ->
      xs |> List.map (fun x -> x.AsComparable) |> Set.unionMany
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

and Literal =
  | LString of string
  | LInt of int
  | LFloat of float
  | LBool of bool

and [<CustomEquality; CustomComparison>] Comment =
  | Description of string list
  | Summary of string list
  | Param of name:string * string list
  | Return of string list
  | Deprecated of string list
  | Example of string list
  | See of name:string option * text:string list
  | ESVersion of Ts.ScriptTarget
  | Other of tag:string * text:string list * orig:Ts.JSDocTag
  override x.Equals(yo) =
    match yo with
    | :? Comment as y -> true
    | _ -> false
  override x.GetHashCode() = 0
  interface System.IComparable with
    member x.CompareTo(yo) =
      match yo with
      | :? Comment as y -> 0
      | _ -> invalidArg "yo" "cannot compare values"

and ICommented<'a> =
  abstract getComments: unit -> Comment list
  abstract mapComments: (Comment list -> Comment list) -> 'a

and [<RequireQualifiedAccess>] Kind =
  | Value
  | Type
  | ClassLike
  | Module
  | Enum

and PrimType =
  | String | Bool | Number
  | Any | Void | Unknown
  | Null | Never | Undefined
  | Object | UntypedFunction
  | Symbol of isUnique:bool
  | RegExp
  | Array | ReadonlyArray
  | BigInt
with
  member this.AsJSClassName =
    match this with
    | Object -> Some "Object"
    | UntypedFunction -> Some "Function"
    | Symbol _ -> Some "Symbol"
    | RegExp -> Some "RegExp"
    | BigInt -> Some "BigInt"
    | Array -> Some "Array"
    | ReadonlyArray -> Some "ReadonlyArray"
    // has a distinct primitive type
    | String | Bool | Number -> None
    // TS-specific
    | Any | Void | Unknown | Never -> None
    // invalid types
    | Null | Undefined -> None
  static member FromJSClassName(name: string) =
    match name with
    | "Object" -> Some Object
    | "Function" -> Some UntypedFunction
    | "Symbol" -> Some (Symbol false)
    | "RegExp" -> Some RegExp
    | "BigInt" -> Some BigInt
    | "Array" -> Some Array
    | "ReadonlyArray" -> Some ReadonlyArray
    | _ -> None

and Enum = {
  name: string
  isExported: Exported
  cases: EnumCase list
  comments: Comment list
  loc: Location
} with
  interface ICommented<Enum> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and EnumCase = {
  name: string
  value: Literal option
  comments: Comment list
  loc: Location
} with
  interface ICommented<EnumCase> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and Type =
  | Intrinsic
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
  | Erased of ErasedType * Location * origText:string
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

and UnionType = { types: Type list }

and IntersectionType = { types: Type list }

and TupleType = {
  types: {| value: Type; name: string option |} list
  isReadOnly: bool
}

and IdentType = {
  name: string list
  fullName: FullName list
  loc: Location
}

and FullName = {
  source: Path.Relative
  name: string list
}

and FieldLike = { name:string; isOptional:bool; value:Type }

and FuncType<'returnType> = { args:Choice<FieldLike, Type> list; isVariadic:bool; returnType:'returnType; loc: Location }

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
  loc: Location
} with
  interface ICommented<Class> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and Member =
  | Field of FieldLike * Mutability * TypeParam list
  | Method of string * FuncType<Type> * TypeParam list
  | FunctionInterface of FuncType<Type> * TypeParam list
  | Indexer of FuncType<Type> * Mutability
  | Getter of FieldLike | Setter of FieldLike
  | Constructor of FuncType<unit> * TypeParam list
  | New of FuncType<Type> * TypeParam list
  | SymbolIndexer of symbolName:string * FuncType<Type> * Mutability
  | UnknownMember of string option

and MemberAttribute = {
  comments: Comment list
  isStatic: bool
  accessibility: Accessibility
  loc: Location
} with
  interface ICommented<MemberAttribute> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and Value = {
  name: string
  typ: Type
  typeParams: TypeParam list
  isConst: bool
  isExported: Exported
  accessibility : Accessibility option
  comments: Comment list
  loc: Location
} with
  interface ICommented<Value> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and TypeAlias = {
  name: string
  typeParams: TypeParam list
  target: Type
  comments: Comment list
  isExported: Exported
  loc: Location
} with
  interface ICommented<TypeAlias> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and Statement =
  | TypeAlias of TypeAlias
  | ClassDef of Class
  | EnumDef of Enum
  | Module of Module
  | Value of Value
  | Import of Import
  | Export of Export
  | Pattern of Pattern
  | UnknownStatement of {| msg: string option; comments: Comment list; loc: Location |}
  | FloatingComment of {| comments: Comment list; loc: Location |}
  with
  member this.loc =
    match this with
    | TypeAlias ta -> ta.loc | ClassDef c -> c.loc | EnumDef e -> e.loc
    | Module m -> m.loc | Value v -> v.loc
    | Import i -> i.loc | Export e -> e.loc
    | Pattern p -> p.loc
    | UnknownStatement u -> u.loc | FloatingComment c -> c.loc
  member this.isExported =
    match this with
    | TypeAlias { isExported = i } | ClassDef { isExported = i }
    | EnumDef { isExported = i } | Module { isExported = i }
    | Value { isExported = i } | Import { isExported = i } -> i
    | Pattern p -> p.isExported
    | Export _ | UnknownStatement _ | FloatingComment _ -> Exported.No
  interface ICommented<Statement> with
    member this.getComments() =
      match this with
      | TypeAlias ta -> ta.comments | ClassDef c -> c.comments
      | EnumDef e -> e.comments | Module m -> m.comments
      | Value v -> v.comments
      | Import i -> i.comments
      | Export e -> e.comments
      | UnknownStatement s -> s.comments
      | Pattern p -> (p :> ICommented<_>).getComments()
      | FloatingComment c -> c.comments
    member this.mapComments f =
      let inline map f (x: #ICommented<'a>) = x.mapComments f
      match this with
      | TypeAlias ta -> TypeAlias (map f ta)
      | ClassDef c -> ClassDef (map f c)
      | EnumDef e -> EnumDef (map f e)
      | Module m -> Module (map f m)
      | Value v -> Value (map f v)
      | Import i -> Import (map f i)
      | Export e -> Export (map f e)
      | Pattern p -> Pattern ((p :> ICommented<_>).mapComments f)
      | UnknownStatement s -> UnknownStatement {| s with comments = f s.comments |}
      | FloatingComment c -> FloatingComment {| c with comments = f c.comments |}

and Pattern =
  /// ```typescript
  ///   interface Foo {
  ///     ...
  ///   }
  ///   declare var Foo: Foo;
  /// ```
  | ImmediateInstance of intf:Class * value:Value
  /// ```typescript
  /// interface Foo {
  ///   ...
  /// }
  /// interface FooConstructor {
  ///   new(...): Foo;
  ///   ...
  /// }
  /// declare var Foo: FooConstructor;
  /// ```
  | ImmediateConstructor of baseIntf:Class * ctorIntf:Class * ctorValue:Value
  with
  member this.loc =
    match this with
    | ImmediateInstance (intf, value) -> MultipleLocation [intf.loc; value.loc]
    | ImmediateConstructor (bi, ci, v) -> MultipleLocation [bi.loc; ci.loc; v.loc]
  member this.isExported =
    match this with
    | ImmediateInstance (_, value)
    | ImmediateConstructor (_, _, value) -> value.isExported
  member this.underlyingStatements =
    match this with
    | ImmediateInstance (intf, value) -> [ClassDef intf; Value value]
    | ImmediateConstructor (bi, ci, v) -> [ClassDef bi; ClassDef ci; Value v]
  interface ICommented<Pattern> with
    member this.getComments() =
      match this with
      | ImmediateInstance (intf, value) -> (intf :> ICommented<_>).getComments() @ (value :> ICommented<_>).getComments()
      | ImmediateConstructor (bi, ci, v) ->
        (bi :> ICommented<_>).getComments() @ (ci :> ICommented<_>).getComments() @ (v :> ICommented<_>).getComments()
    member this.mapComments f =
      match this with
      | ImmediateInstance (i, v) -> ImmediateInstance ((i :> ICommented<_>).mapComments f, (v :> ICommented<_>).mapComments f)
      | ImmediateConstructor (bi, ci, v) ->
        ImmediateConstructor ((bi :> ICommented<_>).mapComments f, (ci :> ICommented<_>).mapComments f, (v :> ICommented<_>).mapComments f)

and Module = {
  name: string
  isExported: Exported
  isNamespace: bool
  statements: Statement list
  comments: Comment list
  loc: Location
} with
  interface ICommented<Module> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and ExportClause =
  /// ```ts
  /// export = ident;
  /// ```
  /// use the followings to import:
  ///
  /// ES6 (through Babel):
  /// ```js
  ///   import * as whatever from "path";
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
  | ES6Export of {| target: IdentType; renameAs: string option |}
  /// ```ts
  /// export as namespace ns;
  /// ```
  /// this form of export is only meant to be used from script files, in which you can access to it as a global variable `ns`.
  ///
  /// use the followings to import if you absolutely need:
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
  | NamespaceExport of ns:string

and Export = {
  comments: Comment list
  clause: ExportClause
  loc: Location
  origText: string
} with
  interface ICommented<Export> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

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
with
  member this.AsExport(ident: IdentType) =
    match this with
    | No | Declared -> None
    | Yes -> ES6Export {| target = ident; renameAs = None |} |> Some
    | Default -> ES6DefaultExport ident |> Some

and Import = {
  comments: Comment list
  isTypeOnly: bool
  isExported: Exported
  clause: ImportClause
  loc: Location
  origText: string
} with
  interface ICommented<Import> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }
  member this.Identifiers =
    match this.clause with
    | NamespaceImport i -> [{| name = i.name; kind = i.kind |}]
    | ES6WildcardImport _ -> []
    | ES6Import i ->
      let xs = i.bindings |> List.map (fun x -> {| name = (match x.renameAs with Some name -> name | None -> x.name); kind = x.kind |})
      match i.defaultImport with
      | None -> xs
      | Some x -> x :: xs
    | LocalImport i -> [{| name = i.name; kind = i.kind |}]

and ImportClause =
  /// one of:
  /// ```ts
  /// import name = require("moduleSpecifier");
  ///
  /// import * as name from 'moduleSpecifier'
  /// ```
  | NamespaceImport of {| name: string; kind: Set<Kind> option; isES6Import: bool; specifier: string |}
  /// ES6 namespace import but without a name.
  /// ```ts
  /// import * from 'moduleSpecifier'
  /// ```
  | ES6WildcardImport of specifier:string
  /// ```ts
  /// import defaultImport, { name1, name2 as renameAs, .. } from 'moduleSpecifier'
  /// ```
  | ES6Import of
    {|
      defaultImport: {| name: string; kind: Set<Kind> option |} option
      bindings:      {| name: string; kind: Set<Kind> option; renameAs: string option |} list
      specifier: string
    |}
  /// ```ts
  /// import name = identifier
  /// ```
  | LocalImport of {| name: string; kind: Set<Kind> option; target: IdentType |}

and Reference =
  | FileReference of string
  | TypeReference of string
  | LibReference of string

and SourceFile = {
  fileName: Path.Relative
  statements: Statement list
  references: Reference list
  hasNoDefaultLib: bool
  moduleName: string option
}

type PackageInfo = {
  /// * will be `foo` if `fullName` is `@types/foo`
  /// * will be `@user/foo` if `fullName` is `@user/foo`
  name: string
  /// * will be `foo` if `fullName` is `@user/foo`
  shortName: string
  isDefinitelyTyped: bool
  version: string
  /// absolute path
  rootPath: Path.Absolute
  /// `index.d.ts` or the one specified in `package.json`.
  indexFile: Path.Relative option
  exports: {| submodule: string; file: Path.Relative |} list
}

type Input = {
  sources: SourceFile list
  info: PackageInfo option
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

module FuncType =
  let map (f: 'a -> 'b) (ft: FuncType<'a>) =
    { args = ft.args; isVariadic = ft.isVariadic; loc = ft.loc; returnType = f ft.returnType }

module Type =
  let ofAppLeftHandSide = function
    | AIdent i -> Ident i
    | APrim p -> Prim p
    | AAnonymousInterface i -> AnonymousInterface i

  let rec pp = function
    | Intrinsic -> "intrinsic"
    | PolymorphicThis -> "this"
    | Ident i -> i.name |> String.concat "."
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
    | Erased (e, _, _) ->
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

module ExportClause =
  /// Generate ``require(..)`` JS expression from `Export`.
  let require path = function
    | CommonJsExport ident ->
      [{| target = ident; expr = sprintf "require('%s')" path; needBabel = false |}]
    | ES6DefaultExport ident ->
      [{| target = ident; expr = sprintf "require('%s').default /* need Babel */" path; needBabel = true |}]
    | ES6Export x ->
      let name =
        match x.renameAs with
        | Some name -> name
        | None -> x.target.name |> List.last
      [{| target = x.target; expr = sprintf "require('%s').%s /* need Babel */" path name; needBabel = true |}]
    | NamespaceExport _ -> []