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

[<RequireQualifiedAccess>]
module Type =
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
      | xs -> concat (str ", ") xs |> between "(." ")"
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
