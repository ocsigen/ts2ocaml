module Targets.ReScript.ReScriptHelper

open System
open Ts2Ml
open Syntax
open Targets.ReScript.Common
open DataTypes
open DataTypes.Text

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

  // primitive types
  let void_ = str "unit"
  let string  = str "string"
  let boolean = str "bool"
  let number (opt: Options) =
    if opt.numberAsInt then str "int"
    else str "float"
  let array = str "array"
  let readonlyArray = str "array"

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
  let null_ = null_or never
  let undefined = undefined_or never

  // our types
  let intf tags baseTy = app (str "intf") [tags; baseTy]
  let prim cases = app (str "prim") [cases]

  let rec union = function
    | [] -> failwith "union type with zero elements"
    | x :: [] -> x
    | x1 :: x2 :: x3 :: x4 :: x5 :: x6 :: x7 :: x8 :: rest ->
      app (str "union8") [x1; x2; x3; x4; x5; x6; x7; union (x8 :: rest)]
    | xs -> app (tprintf "union%i" (List.length xs)) xs

  let rec intersection = function
    | [] -> failwith "intersection type with zero elements"
    | x :: [] -> x
    | x1 :: x2 :: x3 :: x4 :: x5 :: x6 :: x7 :: x8 :: rest ->
      app (str "intersection8") [x1; x2; x3; x4; x5; x6; x7; intersection (x8 :: rest)]
    | xs -> app (tprintf "intersection%i" (List.length xs)) xs

[<RequireQualifiedAccess>]
module Term =
  let tuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let appCurried t us = t + (us |> concat (str ", ") |> between "(" ")")
  let appUncurried t us = t + (us |> concat (str ", ") |> between "(. " ")")

  let literal (l: Literal) =
    match l with
    | LBool true -> str "true" | LBool false -> str "false"
    | LInt i -> string i |> str
    | LFloat f -> tprintf "%f" f
    | LString s -> tprintf "\"%s\"" (String.escape s)

  let raw js = between "%raw(`" "`)" js

let let_ name typ body =
  tprintf "let %s: " name + typ +@ " = " + body

let external (attrs: text list) name (typ: text) target =
  concat (str " ") attrs
  + tprintf " external %s: " name + typ + tprintf " = \"%s\"" target