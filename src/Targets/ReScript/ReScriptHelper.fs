module Targets.ReScript.ReScriptHelper

open System
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
  let object = str "Js.Types.obj_val"
  let function_ = str "Js.Types.function_val"
  let symbol = str "Js.Types.symbol"
  let regexp = str "Js.Re.t"
  // ES2020
  let bigint = str "bigint"

  // TS types
  let never = str "never"
  let any = str "any"
  let unknown = str "unknown"
  let null_ = str "Js.null"
  let undefined = str "Js.undefined"
  let null_undefined = str "Js.nullable"

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

  let and_ a b = app (str "and_") [a; b]
  let or_  a b = app (str "or_")  [a; b]

  let union types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> or_ (go (i-1) t) h
        | xs -> app (tprintf "Union.t%i" i) xs
      go l types

  let intersection types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> and_ (go (i-1) t) h
        | xs -> app (tprintf "Intersection.t%i" i) xs
      go l types

