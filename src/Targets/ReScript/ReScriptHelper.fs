module Targets.ReScript.ReScriptHelper

open System
open Ts2Ml
open Syntax
open Targets.ReScript.Common
open DataTypes
open DataTypes.Text

module Source =
  open Fable.Core
  let [<ImportDefault("rescript/lib/ocaml/dom.ml?raw")>] dom: string = jsNative

let comment text =
  if text = empty then empty
  else
    let inner =
      if isMultiLine text then newline + indent text + newline
      else between " " " " text
    between "/*" "*/" inner
let commentStr text = tprintf "/* %s */" text

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
    s.ToCharArray()
    |> Array.map (fun c -> if Char.isAlphabetOrDigit c || c = '_' then c else '_')
    |> System.String

  let isValid (s: string) =
    Char.isAlphabet(s[0])
    && s.ToCharArray() |> Array.forall(fun c -> Char.isAlphabetOrDigit c || c = '_')

  let keywords =
    set [
      "and"; "as"; "assert"; "constraint"; "else"; "exception"; "external"
      "false"; "for"; "if"; "in"; "include"; "lazy"; "let"; "module"; "mutable"
      "of"; "open"; "rec"; "switch"; "true"; "try"; "type"; "when"; "while"; "with"
    ]

  let reservedValueNames =
    set [
      "create"; "apply"; "invoke"; "get"; "set"; "castFrom"
    ] |> Set.union keywords

  let upperFirst (s: string) =
    if Char.IsLower s[0] then
      sprintf "%c%s" (Char.ToUpper s[0]) s[1..]
    else s

  let lowerFirst (s: string) =
    if Char.IsUpper s[0] then
      sprintf "%c%s" (Char.ToLower s[0]) s[1..]
    else s

  let valueName (name: string) =
    let name = removeInvalidChars name
    let result =
      if name = "NaN" then "nan"
      else if String.forall (fun c -> Char.IsLower c |> not) name then
        name.ToLowerInvariant()
      else lowerFirst name
    if reservedValueNames |> Set.contains result then result + "_" else result

  let reservedModuleNames =
    Set.ofList [
      "Export"; "Default"; "Types"
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
    if keywords |> Set.contains s then s + "_" else s

  let flattenedTypeName (name: string list) =
    let s = String.concat "_" name |> removeInvalidChars |> lowerFirst
    if keywords |> Set.contains s then s + "_" else s

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

[<RequireQualifiedAccess>]
module Type =
  /// non-primitive types defined in the standard library
  let predefinedTypes =
    let typedArray name = name, sprintf "Js.TypedArray2.%s.t" name
    Map.ofList [
      "RegExp", "Js.Re.t"
      "Date", "Js.Date.t"
      "Promise", "Js.Promise.t" (* arity 1 *)
      "Array", "Js.Array.t" (* arity 1*)
      "ArrayLike", "Js.TypedArray2.array_like" (* arity 1 *)
      "ArrayBuffer", "Js.TypedArray2.array_buffer"
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

  /// non-primitive DOM types defined in the standard library
  ///
  /// `MutableMap` with ignore-case keys, because `dom.ml` has lowered all acronyms (e.g. HTML -> html)
  let predefinedDOMTypes =
    let types =
      Source.dom
      |> String.splitManyThenRemoveEmptyEntries ["\n"; "\r"]
      |> Array.filter (fun s -> s.StartsWith("type ") && s.Contains("="))
      |> Array.choose (fun s -> s |> String.replace "type " "" |> String.split " = " |> Array.tryHead)
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
  let curriedArrow args ret =
    let lhs =
      match args with
      | [] -> failwith "0-ary function"
      | [x] -> x
      | xs -> concat (str ", ") xs |> between "(" ")"
    lhs +@ " => " + ret

  /// `(.t1, t2) => tr`
  let uncurriedArrow args ret =
    let lhs =
      match args with
      | [] -> failwith "0-ary function"
      | xs -> concat (str ", ") xs |> between "(. " ")"
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
          if Naming.isValid str then str else sprintf "\"%s\"" (String.escape str)
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
  let number (opt: Options) =
    if opt.numberAsInt then str "int"
    else str "float"
  let array = str "array"
  let readonlyArray = str "array"
  let option t = app (str "option") [t]

  // JS types
  // ES5
  let object = str "untyped_object"
  let function_ = str "untyped_function"
  let symbol = str "symbol"
  let regexp = str "regexp"
  // ES2020
  let bigint = str "bigint"

  // TS types
  let never = str "never"
  let any = str "any"
  let unknown = str "unknown"
  let null_or t = app (str "null") [t]
  let undefined_or t = app (str "undefined") [t]
  let null_or_undefined_or t = app (str "nullable") [t]
  let null_ = str "null'"
  let undefined = str "undefined'"
  let intrinsic = app (str "intrinsic") [object]
  let true_ = str "\\\"true\""
  let false_ = str "\\\"false\""

  // our types
  let intf tags baseTy = app (str "intf") [tags; baseTy]
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

  let appCurried t us = t + (us |> concat (str ", ") |> between "(" ")")
  let appUncurried t us = t + (us |> concat (str ", ") |> between "(. " ")")

  /// `(arg1, arg2) => ret`
  let curriedArrow args ret =
    let lhs =
      match args with
      | [] -> failwith "0-ary function"
      | [x] -> x
      | xs -> concat (str ", ") xs |> between "(" ")"
    lhs +@ " => " + ret

  /// `(. arg1, arg2) => ret`
  let uncurriedArrow args ret =
    let lhs =
      match args with
      | [] -> failwith "0-ary function"
      | xs -> concat (str ", ") xs |> between "(. " ")"
    lhs +@ " => " + ret

  let literal (l: Literal) =
    match l with
    | LBool true -> str "true" | LBool false -> str "false"
    | LInt i -> string i |> str
    | LFloat f -> tprintf "%f" f
    | LString s -> tprintf "\"%s\"" (String.escape s)

  let raw js = js |> String.escapeWith ["`"] |> str |> between "%raw(`" "`)"

[<RequireQualifiedAccess>]
module Statement =
  let let_ (attrs: text list) name typ value =
    concat (str " ") attrs
    + tprintf "let %s: " name + typ +@ " = " + value

  let val_ (attrs: text list) name typ =
    concat (str " ") attrs
    + tprintf "let %s: " name + typ

  let external (attrs: text list) name (typ: text) target =
    concat (str " ") attrs
    + tprintf " external %s: " name + typ + tprintf " = \"%s\"" target

  let typeAlias name tyargs ty =
    str "type "
    + (if List.isEmpty tyargs then str name else Type.app (str name) tyargs)
    +@ " = " + ty