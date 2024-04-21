module Targets.ReScript.ReScriptHelper

open System
open Ts2Ml
open Syntax
open Targets.ReScript.Common
open DataTypes
open DataTypes.Text

module Source =
  open Fable.Core
  let [<ImportDefault("rescript/lib/ocaml/dom.res?raw")>] dom: string = jsNative

let comment text =
  if text = empty then empty
  else
    let inner =
      if isMultiLine text then newline + indent text + newline
      else between " " " " text
    between "/*" "*/" inner
let commentStr text = tprintf "/* %s */" text

let docComment text =
  if text = empty then empty
  else
    let inner =
      if isMultiLine text then newline + indent text + newline
      else between " " " " text
    between "/**" "*/" inner

module Attr =
  let as_ value = between "@as(" ")" value

  module External =
    /// https://rescript-lang.org/docs/manual/latest/import-from-export-to-js#import-from-javascript
    let module_ nameOpt =
      match nameOpt with
      | Some name -> tprintf "@module(\"%s\")" name
      | None -> str "@module"

    /// https://rescript-lang.org/docs/manual/latest/bind-to-global-js-values#global-modules
    let val_ = str "@val"

    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#object-method
    let send = str "@send"

    let scope = function
      | [] -> failwith "empty scope"
      | [s] -> tprintf "@scope(\"%s\")" s
      | ss ->
        ss |> List.map (tprintf "\"%s\"")
          |> concat (str ", ") |> between "@scope((" "))"

    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-object#bind-to-a-js-object-thats-a-class
    let new_ = str "@new"

    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-object#bind-using-special-getter-and-setter-attributes
    let get_ = str "@get"
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-object#bind-using-special-getter-and-setter-attributes
    let set_ = str "@set"
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-object#bind-using-special-getter-and-setter-attributes
    let get_index = str "@get_index"
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-object#bind-using-special-getter-and-setter-attributes
    let set_index = str "@set_index"

    /// https://rescript-lang.org/docs/manual/latest/generate-converters-accessors#convert-external-into-js-object-creation-function
    let obj = str "@obj"

  module ExternalModifier =
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#variadic-function-arguments
    let variadic = str "@variadic"

    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#constrain-arguments-better
    let return_nullable = str "@return(nullable)"

  module Doc =
    /// https://rescript-lang.org/docs/manual/latest/attribute#usage
    let deprecated = function
      | None -> str "@deprecated"
      | Some msg -> tprintf "@deprecated(\"%s\")" (String.escape msg)

    let floating msg =
      tprintf "@@ocaml.text(\"%s\")" (String.escape msg)

    let doc msg =
      tprintf "@ocaml.doc(\"%s\")" (String.escape msg)

  module Arrow =
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#extra-solution
    let uncurry = str "@uncurry"
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#modeling-this-based-callbacks
    let this = str "@this"

  module Variant =
    /// https://rescript-lang.org/blog/improving-interop#tagged-variants
    let tag name =
      tprintf "@tag(\"%s\")" (String.escape name)

    /// https://rescript-lang.org/blog/improving-interop#untagged-variants
    let unboxed = str "@unboxed"

  module PolyVariant =
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#constrain-arguments-better
    let int = str "@int"
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#constrain-arguments-better
    let string = str "@string"
    /// https://rescript-lang.org/docs/manual/latest/bind-to-js-function#trick-2-polymorphic-variant--unwrap
    let unwrap = str "@unwrap"

  module TypeDef =
    /// https://rescript-lang.org/docs/manual/latest/unboxed
    let unboxed = str "@unboxed"

module Naming =
  let removeInvalidChars (s: string) =
    s.Trim('"').ToCharArray()
    |> Array.map (fun c -> if Char.isAlphabetOrDigit c || c = '_' || c = '\'' then c else '_')
    |> System.String

  let isValid (s: string) =
    Char.isAlphabet(s[0])
    && s.ToCharArray() |> Array.forall(fun c -> Char.isAlphabetOrDigit c || c = '_' || c = '\'')

  let keywords =
    set [
      "and"; "as"; "assert"; "constraint"; "else"; "exception"; "external"; "export"
      "false"; "for"; "if"; "in"; "include"; "lazy"; "let"; "module"; "mutable"
      "of"; "open"; "private"; "rec"; "switch"; "true"; "try"; "type"; "when"; "while"; "with"
    ]

  let upperFirst (s: string) =
    if Char.IsLower s[0] then
      sprintf "%c%s" (Char.ToUpper s[0]) s[1..]
    else s

  let lowerFirst (s: string) =
    if Char.IsUpper s[0] then
      sprintf "%c%s" (Char.ToLower s[0]) s[1..]
    else s

  let valueName (name: string) =
    let check name =
      if keywords |> Set.contains name then
        String.escape name |> sprintf "\\\"%s\""
      else name
    if name = "NaN" then "nan"
    else if not (isValid name) then
      String.escape name |> sprintf "\\\"%s\""
    else if String.forall (fun c -> Char.IsUpper c || c = '_' || c = '\'') name then
      name.ToLower() |> check
    else lowerFirst name |> check

  let reservedModuleNames =
    Set.ofList [
      "Export"; "Default"; "Types"; "NodeJs"
    ] |> Set.union keywords

  let moduleNameReserved (name: string) =
    let name = removeInvalidChars name
    if name.[0] = '_' then
      "M" + name
    else upperFirst name

  let moduleName (name: string) =
    let result = moduleNameReserved name
    if reservedModuleNames |> Set.contains result then result + "_" else result

  let constructorName (name: string list) =
    let s = String.concat "_" name |> removeInvalidChars |> upperFirst
    if Char.isAlphabet(s[0]) |> not then "Case" + s
    else if keywords |> Set.contains s then s + "_"
    else s

  let structured (baseName: string -> string) (name: string list) =
    let rec prettify = function
      | [] -> ""
      | [x] -> baseName x
      | x :: xs -> moduleName x + "." + prettify xs
    prettify name

  let createTypeNameOfArity arity maxArityOpt name =
    match maxArityOpt with
    | Some maxArity ->
      if arity = maxArity then name
      else sprintf "%s%d" name arity
    | None -> sprintf "%s%d" name arity

  let jsModuleNameToReScriptName (jsModuleName: string) =
    match jsModuleName.TrimStart('@') |> String.splitThenRemoveEmptyEntries "/" |> Array.toList with
    | xs ->
      xs
      |> List.map (fun n ->
        n |> Naming.toCase Naming.Case.LowerSnakeCase)
      |> String.concat "__"

  let jsModuleNameToFileName (jsModuleName: string) =
    let basename = jsModuleName |> jsModuleNameToReScriptName
    {| resi = $"{basename}.resi"; res = $"{basename}.res" |}

  let jsModuleNameToReScriptModuleName (jsModuleName: string) =
    jsModuleName
    |> jsModuleNameToReScriptName
    |> moduleName

module Kind =
  let generatesReScriptModule kind =
    Set.intersect kind (Set.ofList [Kind.Type; Kind.ClassLike; Kind.Module]) |> Set.isEmpty |> not

[<RequireQualifiedAccess>]
module Type =
  let tsUtilityTypes = [
    "Partial", 1; "Required", 1; "Readonly", 1;
    "Record", 2; "Pick", 2; "Omit", 2; "Exclude", 2; "Extract", 2;
    "NonNullable", 1;
    "Parameters", 1; "ConstructorParameters", 1; "ReturnType", 1; "InstanceType", 1;
    "ThisParameterType", 1; "OmitThisParameter", 1; "ThisType", 1;
    "Uppercase", 1; "Lowercase", 1; "Capitalize", 1; "Uncapitalize", 1;
  ]

  /// non-primitive types defined in the standard library
  let predefinedTypes =
    let builtins = [
      "RegExp", ("RegExp.t", 0)
      "PromiseLike", ("Promise.t", 1)
      "Array", ("array", 1)
      "ArrayLike", ("Js.Array2.array_like", 1)
      "Iterable", ("Js.Array2.array_like", 1)
      "ReadonlyArray", ("array", 1)
      "ArrayBuffer", ("ArrayBuffer.t", 0)
      "Error", ("Error.t", 0)
      "ReadonlyMap", ("Map.t", 2)
    ]
    let typedArrays =
      let typedArray name = name, (sprintf "%s.t" name, 0)
      [
        typedArray "DataView"
        typedArray "Int8Array"
        typedArray "Uint8Array"
        typedArray "Uint8ClampedArray"
        typedArray "Int16Array"
        typedArray "Uint16Array"
        typedArray "Int32Array"
        typedArray "Uint32Array"
        typedArray "Float32Array"
        typedArray "Float64Array"
      ]
    (*
    let utilities =
      tsUtilityTypes |> List.map (fun (name, arity) ->
        name, (Naming.lowerFirst name, arity)
      )
    *)
    Map.ofList (builtins @ typedArrays)

  /// non-primitive DOM types defined in the standard library
  ///
  /// `MutableMap` with ignore-case keys, because `dom.ml` has lowered all acronyms (e.g. HTML -> html)
  let predefinedDOMTypes =
    let types =
      Source.dom
      |> String.splitManyThenRemoveEmptyEntries ["\n"; "\r"]
      |> Array.filter (fun s -> s.StartsWith("type "))
      |> Array.choose (fun s -> s |> String.replace "type " "" |> String.splitMany [" = "; " /*"] |> Array.tryHead)
      |> Array.filter (fun s -> s.Length > 0 && s.ToCharArray() |> Array.forall Char.isAlphabet)
      |> Array.map (fun s -> Naming.upperFirst s, "Dom." + s)
    let ignoreCase =
      { new Collections.Generic.IEqualityComparer<string> with
          member __.Equals(s1: string, s2: string) =
              s1.Equals(s2, StringComparison.InvariantCultureIgnoreCase)
          member __.GetHashCode(s: string) = s.ToLowerInvariant().GetHashCode() }
    let m = new MutableMap<string, string>(ignoreCase)
    for k, v in types do m.Add(k, v)
    m.Add("Storage", "Dom.Storage.t")
    m

  // basic type expressions
  let var s = tprintf "'%s" s

  let tuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  /// `(t1, t2) => tr`
  let arrow args ret =
    let lhs =
      match args with
      | [] -> str "()"
      | xs -> concat (str ", ") xs |> between "(" ")"
    lhs +@ " => " + ret

  let app t args =
    if List.isEmpty args then failwith "type application with empty arguments"
    else t + between "<" ">" (concat (str ", ") args)

  let appOpt t args =
    if List.isEmpty args then t
    else app t args

  let polyVariantBody (cases: {| name:Choice<string, int>; value:text option; attr: text option |} list) =
    let createCase (case: {| name:Choice<string, int>; value:text option; attr: text option |}) =
      let name =
        match case.name with
        | Choice1Of2 str ->
          if Naming.isValid str && Naming.keywords |> Set.contains str |> not then
            str
          else sprintf "\"%s\"" (String.escape str)
        | Choice2Of2 i -> sprintf "%d" i
      let attr =
        match case.attr with
        | None -> empty
        | Some a -> a +@ " "
      match case.value with
      | None -> attr + tprintf "#%s" name
      | Some v -> attr + tprintf "#%s(" name + v +@ ")"
    cases |> List.map createCase |> concat (str " | ")

  let polyVariant cases = polyVariantBody cases |> between "[" "]"

  // primitive types
  let void_ = str "unit"
  let string  = str "string"
  let boolean = str "bool"
  let int = str "int"
  let float = str "float"
  let number (opt: Options) =
    if opt.numberAsInt then int
    else float
  let array = str "array"
  let readonlyArray = str "array"
  let option t = app (str "option") [t]

  // JS types
  // ES5
  let object = str "object"
  let function_ = str "function"
  let symbol = str "Symbol.t"
  let regexp = str "RegExp.t"
  // ES2020
  let bigint = str "BigInt.t"

  // TS types
  let never = str "never"
  let any = str "any"
  let unknown = str "unknown"
  let null_or t = app (str "Null.t") [t]
  let undefined_or t = app (str "option") [t]
  let null_or_undefined_or t = app (str "Nullable.t") [t]
  let null_ = str "Null.t<never>"
  let undefined = str "unit"
  let intrinsic = str "intrinsic"
  let true_ = str "true_"
  let false_ = str "false_"

  let record isInline (fields: {| name: string; isOptional: bool; attrs: text list; ty: text |} list) =
    let body =
      fields
      |> List.map (fun f ->
        let attrs = f.attrs |> List.map (fun x -> x +@ " ") |> join
        let name = tprintf "%s%s: " f.name (if f.isOptional then "?" else "")
        attrs + name + f.ty)
      |> List.map (fun f -> if isInline then f else indent f)
      |> concat (if isInline then str ", " else str ",")
    if isInline then "{ " @+ body +@ " }"
    else "{" @+ newline + body + newline +@ "}"

  // our types
  let intf tags = app (str "intf") [tags]
  let prim cases = app (str "prim") [cases]

  let rec union = function
    | [] -> failwith "union type with zero elements"
    | x :: [] -> x
    | x1 :: x2 :: x3 :: x4 :: x5 :: x6 :: x7 :: x8 :: rest ->
      app (str "Union.t8") [x1; x2; x3; x4; x5; x6; x7; union (x8 :: rest)]
    | xs -> app (tprintf "Union.t%i" (List.length xs)) xs

  let rec intersection = function
    | [] -> failwith "intersection type with zero elements"
    | x :: [] -> x
    | x1 :: x2 :: x3 :: x4 :: x5 :: x6 :: x7 :: x8 :: rest ->
      app (str "Intersection.t8") [x1; x2; x3; x4; x5; x6; x7; intersection (x8 :: rest)]
    | xs -> app (tprintf "Intersection.t%i" (List.length xs)) xs

  let newable args retTy =
    match args with
    | [] -> app (str "Newable.t0") [retTy]
    | [x1] -> app (str "Newable.t1") [x1; retTy]
    | xs -> app (str "Newable.tn") [tuple xs; retTy]

  let variadic args variadic retTy =
    match args with
    | [] -> app (str "Variadic.t0") [variadic; retTy]
    | [x1] -> app (str "Variadic.t1") [x1; variadic; retTy]
    | xs -> app (str "Variadic.tn") [tuple xs; variadic; retTy]

  let newableVariadic args variadic retTy =
    match args with
    | [] -> app (str "NewableVariadic.t0") [variadic; retTy]
    | [x1] -> app (str "NewableVariadic.t1") [x1; variadic; retTy]
    | xs -> app (str "NewableVariadic.tn") [tuple xs; variadic; retTy]

[<RequireQualifiedAccess>]
module Term =
  let tuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let app t us = t + (us |> concat (str ", ") |> between "(" ")")

  /// `(arg1, arg2) => ret`
  let arrow args ret =
    let lhs =
      match args with
      | [] -> str "()"
      | xs -> concat (str ", ") xs |> between "(" ")"
    lhs +@ " => " + ret

  let literal (l: Literal) =
    match l with
    | LBool true -> str "true" | LBool false -> str "false"
    | LInt i -> string i |> str
    | LFloat f -> tprintf "%f" f
    | LString s -> tprintf "\"%s\"" (String.escape s)

  let raw js = js |> String.escapeWith ["`"] |> str |> between "%raw(`" "`)"

type TextModule = {| name: string; origName: string; content: text list; comments: text list |}

let private moduleSigImplBody head oneliner (m: TextModule) =
  if List.isEmpty m.content then [ head +@ "{ }" ]
  else if oneliner then
    [ head +@ "{ " + (concat (str "; ") m.content) +@ " }"]
  else [
    yield head + str "{"
    yield indent (concat newline m.content)
    yield str "}"
  ]

let private moduleSigImplLines (prefix: string) (isRec: bool) (m: TextModule) =
  let oneliner =
    m.content |> List.forall (isMultiLine >> not) && (m.content |> List.sumBy Text.length) < 60
  let head =
    tprintf "%s %s%s : "
      prefix
      (if isRec then "rec " else "")
      m.name
  [
    // FIXME: https://github.com/rescript-lang/rescript-compiler/issues/6598
    if prefix <> "and" then
      yield! m.comments

    yield! moduleSigImplBody head oneliner m ]

let private moduleSigImpl (prefix: string) (isRec: bool) (m: TextModule) =
  moduleSigImplLines prefix isRec m |> concat newline

[<RequireQualifiedAccess>]
module Statement =
  let attr attrs =
    if List.isEmpty attrs then empty
    else concat (str " ") attrs +@ " "

  let let_ (attrs: text list) name typ value =
    attr attrs + tprintf "let %s: " name + typ +@ " = " + value

  let val_ (attrs: text list) name typ =
    attr attrs + tprintf "let %s: " name + typ

  let external (attrs: text list) name (typ: text) target =
    let result =
      attr attrs + tprintf "external %s: " name + typ + tprintf " = \"%s\"" target
    if not (Naming.isValidJSIdentifier target) &&
      [Attr.External.new_; Attr.External.val_] |> List.exists (fun attr -> attrs |> List.contains attr) then
      comment result // ReScript doesn't allow exotic names except for get, set, and send.
    else result

  let typeAlias isRec name tyargs tyOpt =
    let lhs =
      str "type "
      + (if isRec then str "rec " else empty)
      + (if List.isEmpty tyargs then str name else Type.app (str name) tyargs)
    match tyOpt with
    | None -> lhs
    | Some ty -> lhs +@ " = " + ty

  let include_ name = tprintf "include %s" name
  let open_ name = tprintf "open %s" name

  let moduleAlias name target = tprintf "module %s = %s" name target

  let moduleSig (m: TextModule) = moduleSigImpl "module" false m

  let moduleSigRec (ms: TextModule list) =
    match ms with
    | [] -> []
    | [m] -> [moduleSig m]
    | m :: ms ->
      let content = moduleSigImpl "module" true m :: (ms |> List.map (moduleSigImpl "and" false))
      // make it one liner if possible
      if content |> List.forall (isMultiLine >> not) && (content |> List.sumBy Text.length) < 60 then
        [content |> concat (str " ")]
      else
        [content |> concat newline]

  let moduleSigNonRec (ms: TextModule list) = ms |> List.map moduleSig

  let moduleVal (m: TextModule) : text =
    concat newline [
      yield! m.comments
      yield tprintf "module %s = {" m.name
      yield indent (concat newline m.content)
      yield str "}"
    ]

  let moduleValMany ms = ms |> List.map moduleVal

  let moduleSigRec1 name (content: text list) =
    concat newline [
      yield tprintf "module rec %s : {" name
      yield indent (concat newline content)
      yield tprintf "} = %s" name
    ]

  let moduleSCC (dt: DependencyTrie<string>) emitRec emitNonRec (ctx: Typer.TyperContext<_, _>) =
    let scc = dt |> Trie.tryFind ctx.currentNamespace |> Option.map (fun x -> x.scc) |? []
    let sccSet = scc |> List.concat |> Set.ofList
    fun (modules: TextModule list) ->
      let modulesMap = modules |> List.fold (fun state x -> state |> Map.add x.origName x) Map.empty
      let sccModules =
        scc
        |> List.map (fun group ->
          group |> List.choose (fun name -> modulesMap |> Map.tryFind name) |> emitRec)
        |> List.concat
      let otherModules =
        modules
        |> List.filter (fun x -> sccSet |> Set.contains x.origName |> not)
        |> emitNonRec
      sccModules @ otherModules

type [<RequireQualifiedAccess>] Binding =
  | Let of {| name: string; ty: text; body: text; attrs: text list; comments: text list |}
  | Ext of {| name: string; ty: text; target: string; attrs: text list; comments: text list |}
  | Unknown of {| msg:text option; comments: text list |}
with
  member this.comments =
   match this with Let x -> x.comments | Ext x -> x.comments | Unknown x -> x.comments

module Binding =
  let let_ (attrs: text list) comments name ty body =
    Binding.Let {| name = name; ty = ty; body = body; attrs = attrs; comments = comments |}

  let ext (attrs: text list) comments name ty target =
    Binding.Ext {| name = name; ty = ty; target = target; attrs = attrs; comments = comments |}

  let unknown comments msg =
    Binding.Unknown {| msg = msg; comments = comments |}

  let cast comments name ty =
    Binding.Ext {| name = name; ty = ty; target = "%identity"; attrs = []; comments = comments |}

  let builder name (fields: {| isOptional: bool; name: string; value: text |} list) (thisType: text) =
    let args =
      fields
      |> List.distinctBy (fun x -> x.name)
      |> List.map (fun f ->
        let name = f.name |> Naming.valueName
        let suffix =
          if f.isOptional then "=?" else ""
        tprintf "~%s:" name + f.value +@ suffix)
    let ty =
      Type.arrow args thisType
    Binding.Ext {| name = name; ty = ty; target = ""; attrs = [Attr.External.obj]; comments = []|}

  let emitForImplementation (b: Binding) = [
    yield! b.comments
    match b with
    | Binding.Let x -> yield Statement.let_ x.attrs x.name x.ty x.body
    | Binding.Ext x -> yield Statement.external x.attrs x.name x.ty x.target
    | Binding.Unknown x -> match x.msg with Some msg -> yield comment msg | None -> ()
  ]

  let emitForInterface (b: Binding) = [
    yield! b.comments
    match b with
    | Binding.Let x -> yield Statement.val_ x.attrs x.name x.ty
    | Binding.Ext x -> yield Statement.external x.attrs x.name x.ty x.target
    | Binding.Unknown x -> match x.msg with Some msg -> yield comment msg | None -> ()
  ]

module Import =
  open Fable.Core.JsInterop
  open JsHelper
  type Node = NodeBuiltin

  let isModule (ctx: Typer.TyperContext<_, _>) (name: string) (kind: Set<Kind> option) =
    kind |> Option.map Kind.generatesReScriptModule
            |> Option.defaultValue false
    || ctx |> Typer.TyperContext.tryCurrentSourceInfo (fun i -> i.unknownIdentTypes |> Trie.containsKey [name])
            |> Option.defaultValue false
    || name |> Naming.isCase Naming.PascalCase

  [<RequireQualifiedAccess>]
  type Statement =
    /// `module Name = Target`
    | Alias of name:string * target:string
    /// `open Name`
    | Open of name:string
    /// `module Name = { type t = typeName }`
    | Type of name:string * typeName:string * typeArgs:string list
    /// `module Name = Y.Make()`
    | FunctorInstance of name:string * expr:string
    | Comment of text

  let alias name target = Statement.Alias (name, target)
  let open_ name = Statement.Open name
  let type_ name typeName typeArgs = Statement.Type (name, typeName, typeArgs)
  let instance name expr = Statement.FunctorInstance (name, expr)
  let comment text = Statement.Comment text

  let private getDedicatedImportStatementForNodeBuiltin (ctx: Typer.TyperContext<_, _>) (c: ImportClause) =
    option {
      let! specifier = c.moduleSpecifier
      let! builtin = getNodeBuiltin specifier
      let moduleName =
        match builtin.name with
        | Node.Vm -> "VM"
        | _ -> Naming.toCase Naming.PascalCase !!builtin.name
      let importedName = c.importedName |? "" // this becomes None only when ES6WildcardImport is used

      match builtin.name, builtin.subpath, c with
      // special cases
      | Node.ChildProcess, None, ES6Import x ->
        match x.name with
        | "ChildProcess" ->
          return alias (Naming.moduleName importedName) "NodeJs.ChildProcess"
        | name when name.StartsWith("ExecOptions") ->
          return type_ (Naming.moduleName importedName) "NodeJs.ChildProcess.execOptions" []
        | name when name.StartsWith("ExecFileOptions") ->
          return type_ (Naming.moduleName importedName) "NodeJs.ChildProcess.execFileOptions" []
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.ChildProcess.{x.name}"
      | Node.Console, None, ES6Import x when x.name = "ConsoleConstructorOptions" ->
        return type_ (Naming.moduleName importedName) "NodeJs.Console.consoleOptions" []
      | Node.Dns, None, ES6Import x when x.name.StartsWith("Lookup") && x.name.EndsWith("Options") ->
        return type_ (Naming.moduleName importedName) "NodeJs.Dns.options" []
      | Node.Events, None, ES6Import x when x.name = "EventEmitter" ->
        return instance (Naming.moduleName importedName) "NodeJs.EventEmitter.Make()"
      | Node.Fs, _, ES6Import x ->
        match builtin.subpath, x.name with
        | None, "ReadStreamOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Fs.createReadStreamOptions" []
        | None, "WriteStreamOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Fs.createWriteStreamOptions" ["'t"]
        | None, "WriteFileOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Fs.writeFileOptions" []
        | _, _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.Fs.{x.name}"
      | Node.Http, None, ES6Import x ->
        match x.name with
        | "IncomingHttpHeaders" | "OutgoingHttpHeaders" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Http.headersObject" []
        | "ServerOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Http.createServerOptions" []
        | "RequestOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Http.requestOptions" []
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.Http.{x.name}"
      | Node.Http2, None, ES6Import x when x.name = "Settings" ->
        return type_ (Naming.moduleName importedName) "NodeJs.Http2.settingsObject" []
      | Node.Https, None, ES6Import x ->
        match x.name with
        | "Server" ->
          return alias (Naming.moduleName importedName) "NodeJs.Https.HttpsServer"
        | "Agent" ->
          return alias (Naming.moduleName importedName) "NodeJs.Https.Agent"
        // rescript-nodejs doesn't have these, but it has fallback types
        | "ServerOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Http.createServerOptions" []
        | "RequestOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Http.requestOptions" []
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.Https.{x.name}"
      | Node.Net, None, ES6Import x when x.name = "AddressInfo" ->
        return type_ (Naming.moduleName importedName) "NodeJs.Net.address" []
      | Node.Os, None, ES6Import x when x.name = "CpuInfo" ->
        return type_ (Naming.moduleName importedName) "NodeJs.Os.cpu" []
      | Node.Os, None, ES6Import x when x.name = "ParsedPath" || x.name = "FormatInputPathObject" ->
        return type_ (Naming.moduleName importedName) "NodeJs.Path.t" []
      | Node.Tls, None, ES6Import x ->
        match x.name with
        | "TLSSocket" ->
          return alias (Naming.moduleName importedName) "NodeJs.Tls.TlsSocket"
        | "Server" ->
          return alias (Naming.moduleName importedName) "NodeJs.Tls.TlsServer"
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.Tls.{x.name}"
      | Node.Url, None, ES6Import x ->
        match x.name with
        | "UrlObject" | "Url" | "UrlWithParsedQuery" | "UrlWithStringQuery" | "URL" ->
          return alias (Naming.moduleName importedName) "NodeJs.Url"
        | "URLSearchParams" ->
          return alias (Naming.moduleName importedName) "NodeJs.Url.SearchParams"
        | "URLFormatOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Url.urlFormatOptions" []
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.Url.{x.name}"
      | Node.Util, None, ES6Import x ->
        match x.name with
        | "InspectOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.Util.inspectOptions" []
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.Util.{x.name}"
      | Node.V8, None, ES6Import x ->
        match x.name with
        | "HeapSpaceInfo" ->
          return type_ (Naming.moduleName importedName) "NodeJs.V8.heapSpaceStats" []
        | "HeapInfo" ->
          return type_ (Naming.moduleName importedName) "NodeJs.V8.heapStats" []
        | "HeapCodeStatistics" ->
          return type_ (Naming.moduleName importedName) "NodeJs.V8.heapCodeStats" []
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.V8.{x.name}"
      | Node.Vm, None, ES6Import x ->
        match x.name with
        | "CreateContextOptions" ->
          return type_ (Naming.moduleName importedName) "NodeJs.VM.createContextOptions" []
        | "Context" ->
          return type_ (Naming.moduleName importedName) "NodeJs.VM.contextifiedObject" ["'t"]
        | _ ->
          return alias (Naming.moduleName importedName) $"NodeJs.VM.{x.name}"

      // general cases
      // 1. the `t` type right under the module
      | (Node.Buffer | Node.ChildProcess | Node.Console | Node.Module | Node.Stream | Node.StringDecoder), None, ES6Import x when x.name = moduleName ->
        return alias (Naming.moduleName importedName) $"NodeJs.{moduleName}"
      // 2. the module contains submodules with their `t` type
      | _, _, _ ->
        match c with
        | (NamespaceImport _ | ES6DefaultImport _) ->
          return alias (Naming.moduleName importedName) $"NodeJs.{moduleName}"
        | ES6Import x when isModule ctx x.name x.kind ->
          return alias (Naming.moduleName importedName) $"NodeJs.{moduleName}.{x.name}"
        | ES6WildcardImport _ ->
          return open_ $"NodeJs.{moduleName}"
        | _ -> ()
    }

  let getDedicatedImportStatement (ctx: Typer.TyperContext<_, _>) (c: ImportClause) =
    getDedicatedImportStatementForNodeBuiltin ctx c
    // TODO: add more dedicated imports?