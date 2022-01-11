module Ts2Ml.Syntax

open TypeScript

type [<RequireQualifiedAccess>] Kind =
  /// variable or member.
  | Value
  | Type
  | TypeAlias
  /// class or interface.
  | ClassLike
  | Member
  | Module
  | Enum
  | EnumCase
  /// child of a module.
  | Statement
with
  static member OfTypeAlias = [Type; TypeAlias; Statement]
  static member OfInterface = [Type; ClassLike; Statement]
  static member OfClass = [Value; Type; ClassLike; Statement]
  static member OfEnum = [Value; Type; Enum; Statement]
  static member OfEnumCase = [Value; Type; EnumCase]
  static member OfNamespace = [Module; Statement]
  static member OfModule = [Value; Module; Statement]
  static member OfValue = [Value; Statement]
  static member OfMember = [Value; Member]

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

and PrimType =
  | String | Bool | Number
  | Any | Void | Unknown
  | Null | Never | Undefined
  | Object | UntypedFunction
  /// `unique symbol` if `isUnique = true`.
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
  | Ident of Ident
  | TypeVar of string
  | Prim of PrimType
  | TypeLiteral of Literal
  | AnonymousInterface of AnonymousInterface
  | Union of UnionType | Intersection of IntersectionType
  | Tuple of TupleType
  | Func of FuncType<Type> * TypeParam list * Location
  | NewableFunc of FuncType<Type> * TypeParam list * Location
  | App of AppLeftHandSide * Type list * Location
  | Erased of ErasedType * Location * origText:string
  | UnknownType of string option

and AppLeftHandSide =
  | AIdent of Ident
  | APrim of PrimType
  | AAnonymousInterface of AnonymousInterface

and ErasedType =
  | IndexedAccess of Type * Type
  | TypeQuery of Ident
  | Keyof of Type

and UnionType = { types: Type list }

and IntersectionType = { types: Type list }

and TupleType = {
  types: {| value: Type; name: string option |} list
  isReadOnly: bool
}

and Ident = {
  name: string list
  kind: Set<Kind> option
  fullName: FullName list
  loc: Location
  parent: Ident option
}

and [<StructuralEquality; StructuralComparison>] FullName = {
  source: Path.Absolute
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

and Class<'name> = {
  name: 'name
  accessibility: Accessibility
  isInterface: bool
  isExported: Exported
  implements: Type list
  typeParams: TypeParam list
  members: (MemberAttribute * Member) list
  comments: Comment list
  loc: Location
} with
  member this.MapName f =
    { name = f this.name; accessibility = this.accessibility; isInterface = this.isInterface; isExported = this.isExported;
      implements = this.implements; typeParams = this.typeParams; members = this.members; comments = this.comments; loc = this.loc }
  interface ICommented<Class<'name>> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and ClassName = Name of string | ExportDefaultUnnamedClass
and Class = Class<ClassName>
and Anonymous = Anonymous
and AnonymousInterface = Class<Anonymous>
and ClassOrAnonymousInterface = Class<Choice<ClassName, Anonymous>>

and Member =
  /// ```ts
  /// class { name: Type }
  /// ```
  | Field of FieldLike * Mutability
  /// ```ts
  /// class { name(...): Type }
  /// ```
  | Method of string * FuncType<Type> * TypeParam list
  /// ```ts
  /// interface { (...): Type }
  /// ```
  /// Never static.
  | Callable of FuncType<Type> * TypeParam list
  /// ```ts
  /// interface { new (...): Type }
  /// ```
  /// Never static.
  | Newable of FuncType<Type> * TypeParam list
  /// ```ts
  /// class { [key: string]: number }
  /// ```
  | Indexer of FuncType<Type> * Mutability
  /// ```ts
  /// class { get name(): Type }
  /// ```
  | Getter of FieldLike
  /// ```ts
  /// class { set name(value: Type) }
  /// ```
  | Setter of FieldLike
  /// ```ts
  /// class { constructor (...) }
  /// ```
  /// Always static.
  | Constructor of FuncType<unit>
  /// ```ts
  /// class { [Symbol.symbolName](...): Type }
  /// ```
  | SymbolIndexer of symbolName:string * FuncType<Type> * Mutability
  | UnknownMember of origText:string option

and MemberAttribute = {
  comments: Comment list
  isStatic: bool
  accessibility: Accessibility
  loc: Location
} with
  interface ICommented<MemberAttribute> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and Variable = {
  name: string
  typ: Type
  isConst: bool
  isExported: Exported
  accessibility : Accessibility option
  comments: Comment list
  loc: Location
} with
  interface ICommented<Variable> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and Function = {
  name: string
  typ: FuncType<Type>
  typeParams: TypeParam list
  isExported: Exported
  accessibility : Accessibility option
  comments: Comment list
  loc: Location
} with
  interface ICommented<Function> with
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
  /// ```ts
  /// type Name = ...
  /// ```
  | TypeAlias of TypeAlias
  /// ```ts
  /// class Name { ... }
  /// ```
  /// or
  /// ```ts
  /// interface Name { ... }
  /// ```
  | Class of Class
  /// ```ts
  /// enum Name { ... }
  /// ```
  | Enum of Enum
  /// ```ts
  /// module Name { ... }
  /// ```
  /// or
  /// ```ts
  /// namespace Name { ... }
  /// ```
  | Module of Module
  /// ```ts
  /// namespace global { ... }
  /// ```
  | Global of Global
  /// ```ts
  /// var name: Type
  /// ```
  /// or
  /// ```ts
  /// const name: Type
  /// ```
  | Variable of Variable
  /// ```ts
  /// function name(..): Type
  /// ```
  | Function of Function
  /// ```ts
  /// import ...
  /// ```
  | Import of Import
  /// ```ts
  /// export ...
  /// ```
  | Export of Export
  | ReExport of ReExport
  | Pattern of Pattern
  | UnknownStatement of {| origText: string option; comments: Comment list; loc: Location |}
  /// ```ts
  /// /// some floating comment
  /// ```
  | FloatingComment of {| comments: Comment list; loc: Location |}
  with
  member this.loc =
    match this with
    | TypeAlias ta -> ta.loc | Class c -> c.loc | Enum e -> e.loc
    | Module m -> m.loc | Global m -> m.loc | Variable v -> v.loc | Function f -> f.loc
    | Import i -> i.loc | Export e -> e.loc | ReExport e -> e.loc
    | Pattern p -> p.loc
    | UnknownStatement u -> u.loc | FloatingComment c -> c.loc
  member this.isExported =
    match this with
    | TypeAlias { isExported = i } | Class { isExported = i }
    | Enum { isExported = i } | Module { isExported = i }
    | Variable { isExported = i } | Function { isExported = i }
    | Import { isExported = i } -> i
    | Pattern p -> p.isExported
    | Export _ | ReExport _ | UnknownStatement _ | FloatingComment _ | Global _ -> Exported.No
  interface ICommented<Statement> with
    member this.getComments() =
      match this with
      | TypeAlias ta -> ta.comments | Class c -> c.comments
      | Enum e -> e.comments | Module m -> m.comments | Global m -> m.comments
      | Variable v -> v.comments | Function f -> f.comments
      | Import i -> i.comments
      | Export e -> e.comments | ReExport e -> e.comments
      | UnknownStatement s -> s.comments
      | Pattern p -> (p :> ICommented<_>).getComments()
      | FloatingComment c -> c.comments
    member this.mapComments f =
      let inline map f (x: #ICommented<'a>) = x.mapComments f
      match this with
      | TypeAlias ta -> TypeAlias (map f ta)
      | Class c -> Class (map f c)
      | Enum e -> Enum (map f e)
      | Module m -> Module (map f m)
      | Global m -> Global (map f m)
      | Variable v -> Variable (map f v)
      | Function g -> Function (map f g)
      | Import i -> Import (map f i)
      | Export e -> Export (map f e)
      | ReExport e -> ReExport (map f e)
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
  | ImmediateInstance of intf:Class<ClassName> * var:Variable
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
  | ImmediateConstructor of baseIntf:Class<ClassName> * ctorIntf:Class<ClassName> * ctorVar:Variable
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
    | ImmediateInstance (intf, value) -> [Class intf; Variable value]
    | ImmediateConstructor (bi, ci, v) -> [Class bi; Class ci; Variable v]
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

and Module<'name> = {
  name: 'name
  isExported: Exported
  isNamespace: bool
  statements: Statement list
  comments: Comment list
  loc: Location
} with
  interface ICommented<Module<'name>> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and Module = Module<string>
and Global = Module<unit>

and Export = {
  comments: Comment list
  clauses: ExportClause list
  loc: Location
  origText: string
} with
  interface ICommented<Export> with
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
  | CommonJsExport of Ident
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
  | ES6DefaultExport of Ident
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
  | ES6Export of {| target: Ident; renameAs: string option |}
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

and [<RequireQualifiedAccess>] Exported =
  | No
  /// ```ts
  /// export class Foo { .. }
  /// ```
  | Yes
  /// ```ts
  /// export default class Foo { .. }
  /// ```
  /// This class might not have a name.
  | Default
  /// ```ts
  /// declare class Foo { .. }
  /// ```
  | Declared
with
  member this.AsExport(ident: Ident) =
    match this with
    | No | Declared -> None
    | Yes -> ES6Export {| target = ident; renameAs = None |} |> Some
    | Default -> ES6DefaultExport ident |> Some

and ReExport = {
  comments: Comment list
  clauses: ReExportClause list
  loc: Location
  specifier: string
  origText: string
} with
  interface ICommented<ReExport> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }

and ReExportClause =
  /// ```ts
  /// export { target } from 'specifier'; // when renameAs = None
  /// export { target as name } from 'specifier'; // when renameAs = Some name
  /// ```
  | ES6ReExport of {| target: Ident; renameAs: string option |}
  /// ```ts
  /// export * as name from 'specifier'
  /// ```
  | ES6NamespaceReExport of name:string
  /// ```ts
  /// export * from 'specifier';
  /// ```
  | ES6WildcardReExport

and Import = {
  comments: Comment list
  isTypeOnly: bool
  isExported: Exported
  clauses: ImportClause list
  loc: Location
  origText: string
} with
  interface ICommented<Import> with
    member this.getComments() = this.comments
    member this.mapComments f = { this with comments = f this.comments }
  member this.Identifiers =
    this.clauses
    |> List.collect (function
      | NamespaceImport i -> [{| name = i.name; kind = i.kind |}]
      | ES6WildcardImport _ -> []
      | ES6Import i -> [{| name = i.name; kind = i.kind |}]
      | ES6DefaultImport i -> [{| name = i.name; kind = i.kind |}]
      | LocalImport i -> [{| name = i.name; kind = i.kind |}]
    )

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
  /// import { name as renameAs } from 'moduleSpecifier'
  /// ```
  | ES6Import of {| name: string; kind: Set<Kind> option; renameAs: string option; specifier: string |}
  /// ```ts
  /// import defaultImport from 'moduleSpecifier'
  /// ```
  | ES6DefaultImport of {| name: string; kind: Set<Kind> option; specifier: string |}
  /// ```ts
  /// import name = identifier
  /// ```
  | LocalImport of {| name: string; kind: Set<Kind> option; target: Ident |}
  member this.kind =
    match this with
    | NamespaceImport i -> i.kind
    | ES6WildcardImport _ -> None
    | ES6Import i -> i.kind
    | ES6DefaultImport i -> i.kind
    | LocalImport i -> i.kind
  member this.moduleSpecifier =
    match this with
    | NamespaceImport i -> Some i.specifier
    | ES6WildcardImport s -> Some s
    | ES6Import i -> Some i.specifier
    | ES6DefaultImport i -> Some i.specifier
    | LocalImport _ -> None

and Reference =
  /// ```ts
  /// /// <reference path="..." />
  /// ```
  | FileReference of string
  /// ```ts
  /// /// <reference types="..." />
  /// ```
  | TypeReference of string
  /// ```ts
  /// /// <reference lib="..." />
  /// ```
  | LibReference of string

and SourceFile = {
  fileName: Path.Absolute
  statements: Statement list
  references: Reference list
  /// ```ts
  /// /// <reference no-default-lib="..."/>
  /// ```
  hasNoDefaultLib: bool
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
  indexFile: Path.Absolute option
  exports: {| submodule: string; file: Path.Absolute |} list
}

type Input = {
  sources: SourceFile list
  info: PackageInfo option
  /// a list of groups of filenames.
  ///
  /// if a group has more than one filenames, the files are mutually-referencing.
  ///
  /// the files in later groups reference the files in former groups.
  dependencyGraph: Path.Absolute list list
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
    | Func (f, typrms, _) ->
      let typrms =
        if List.isEmpty typrms then ""
        else
          let args =
            typrms |> List.map (fun x -> sprintf "'%s" x.name)
          sprintf "<%s>" (args |> String.concat ", ")
      let args =
        f.args
        |> List.map (function
          | Choice1Of2 a -> sprintf "%s%s:%s" (if a.isOptional then "?" else "~") a.name (pp a.value)
          | Choice2Of2 t -> pp t)
      typrms + "(" + (args @ [pp f.returnType] |> String.concat " -> ") + ")"
    | NewableFunc (f, typrms, loc) ->
      "new " + (pp (Func (f, typrms, loc)))
    | App (t, ts, _) -> pp (ofAppLeftHandSide t) + "<" + (ts |> List.map pp |> String.concat ", ") + ">"
    | Erased (e, _, _) ->
      match e with
      | IndexedAccess (t, u) -> sprintf "%s[%s]" (pp t) (pp u)
      | TypeQuery i -> sprintf "typeof %s" (String.concat "." i.name)
      | Keyof t -> sprintf "keyof %s" (pp t)
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