module Targets.JsOfOCaml.OCamlHelper

open System
open Syntax
open Targets.JsOfOCaml.Common
open DataType
open DataType.Text

let comment text =
  if text = empty then empty
  else
    let inner =
      if isMultiLine text then newline + indent text + newline
      else between " " " " text
    between "(*" "*)" inner
let commentStr text = tprintf "(* %s *)" text
let docComment text =
  if text = empty then empty
  else
    let inner =
      if isMultiLine text then newline + indent text + newline
      else between " " " " text
    between "(**" "*)" inner
let docCommentStr text =tprintf "(** %s *)" text

let [<Literal>] pv_head = "`"

[<Obsolete("TODO")>]
let inline TODO<'a> = failwith "TODO"

[<RequireQualifiedAccess>]
module Attr =
  type Category = Normal | Block | Floating

  let attr (c: Category) name payload =
    let at = String.replicate (match c with Normal -> 1 | Block -> 2 | Floating -> 3) "@"
    if payload <> empty then tprintf "[%s%s " at name + payload +@ "]"
    else tprintf "[%s%s]" at name

  let js payload = attr Normal "js" payload

  let js_stop = attr Floating "js.stop" empty
  let js_start = attr Floating "js.start" empty

  let js_stop_start_implem sigContent implContent =
    concat newline [
      js_stop
      sigContent
      js_start
      attr Floating "js.implem" (newline + indent implContent + newline)
    ]

  let js_stop_start_implem_oneliner sigContent implContent =
    concat (str " ") [
      js_stop
      sigContent
      js_start
      attr Floating "js.implem" implContent
    ]

  let js_custom_val content = attr Block "js.custom" content

  let js_implem_floating content = attr Floating "js.implem" (newline + indent content + newline)
  let js_implem_val content = attr Block "js.implem" (newline + indent content + newline)

  let js_custom_typ content = attr Block "js.custom" content

  let js_create = attr Block "js.create" empty
  let js_invoke = attr Block "js.invoke" empty

  let private str' s = between "\"" "\"" (str s)

  let js_get name = attr Block "js.get" (str' name)

  let js_set name = attr Block "js.set" (str' name)

  let js_index_get = attr Block "js.index_get" empty

  let js_index_set = attr Block "js.index_set" empty

  let js_call name = attr Block "js.call" (str' name)

  let js_apply is_newable = attr Block (if is_newable then "js.apply_newable" else "js.apply") empty

  let js_global name = attr Block "js.global" (str' name)

[<RequireQualifiedAccess>]
module Type =
  // prim types that are JS-able and defined as interface in typescript/lib/lib.*.d.ts
  let jsablePrimTypeInterfaces =
    Map.ofList [
      "Array",   Array
      "ReadonlyArray", Array
    ]

  let nonJsablePrimTypeInterfaces =
    Map.ofList [
      "Object", Object
      "Function", UntypedFunction
      "Symbol", Symbol false
      "RegExp", RegExp
      "BigInt", BigInt
    ]

  // JS-able OCaml types
  let void_ = str "unit"
  let string  = str "string"
  let boolean = str "bool"
  let number (opt: Options) =
    if opt.numberAsInt then str "int"
    else str "float"
  let array   = str "list"
  let readonlyArray = str "list"

  // JS only types
  // ES5
  let object  = str "untyped_object"
  let function_ = str "untyped_function"
  let symbol  = str "symbol"
  let regexp  = str "regexp"
  // ES2020
  let bigint = str "bigint"

  // TS types
  let never   = str "never"
  let any     = str "any"
  let unknown = str "unknown"
  let null_          = str "or_null"
  let undefined      = str "or_undefined"
  let null_undefined = str "or_null_or_undefined"

  // gen_js_api types
  let ojs_t = str "Ojs.t"

  // our types
  let var s = tprintf "'%s" s

  let many sep = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat sep xs |> between "(" ")"

  let tuple = many (str " * ")
  let arrow = many (str " -> ")

  let app t = function
    | [] -> failwith "type application with empty arguments"
    | [u] -> u +@ " " + t
    | us -> many (str ", ") us +@ " " + t

  let appOpt t args =
    if List.isEmpty args then t
    else app t args

  let intf  = str "intf"

  let and_ a b = app (str "and_") [a; b]
  let or_  a b = app (str "or_")  [a; b]

  let string_or t  = app (str "or_string") [t]
  let number_or t  = app (str "or_number") [t]
  let boolean_or t = app (str "or_boolean") [t]
  let symbol_or t  = app (str "or_symbol") [t]
  let bigint_or t  = app (str "or_bigint") [t]

  let array_or elemT t = app (str "or_array") [t; elemT]
  let enum_or cases t = app (str "or_enum") [t; cases]

  let union types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> or_ (go (i-1) t) h
        | xs -> app (tprintf "union%i" i) xs
      go l types

  let intersection types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> and_ (go (i-1) t) h
        | xs -> app (tprintf "intersection%i" i) xs
      go l types

[<RequireQualifiedAccess>]
module Term =
  let tuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let app t = function
    | [] -> failwith "term application with empty arguments"
    | us ->
      (t :: us) |> concat (str " ") |> between "(" ")"

  let typeAssert term ty = between "(" ")" (term +@ ":" + ty)

  let literal (l: Literal) =
    match l with
    | LBool true -> str "true" | LBool false -> str "false"
    | LInt i -> string i |> str
    | LFloat f -> tprintf "%f" f
    | LString s -> tprintf "\"%s\"" (String.escape s)

  let record (fields: (string * text) list) =
    if List.isEmpty fields then failwith "empty fields of record"
    else
      List.map (fun (name, body) -> name + "=" @+ body) fields
      |> concat (str "; ")
      |> between "{ " " }"

  let fun_ (args: text list) (body: text) =
    if List.isEmpty args then failwith "empty args of fun"
    else "fun " @+ concat (str " ") args +@ " -> " + body

  let jsExpr (js: string) =
    app (str "Ts2ocaml_baselib.pure_js_expr") [literal (LString js)]

let open_ names = names |> List.map (tprintf "open %s") |> concat newline

let include_ names = names |> List.map (tprintf "include %s") |> concat newline

type TextModuleSig = {| name: string; origName: string; scope: string option; content: text list; docCommentBody: text list |}

let private moduleSigImplLines (prefix: string) (isRec: bool) (module_: TextModuleSig) =
  [ if List.isEmpty module_.docCommentBody |> not then
      yield empty
      yield docComment (concat newline module_.docCommentBody)
    let isEmpty = List.isEmpty module_.content
    let head =
      tprintf "%s%s %s%s : sig"
        prefix
        (match module_.scope with Some s when not isEmpty -> sprintf "[@js.scope \"%s\"]" s | _ -> "")
        (if isRec then "rec " else "")
        module_.name
    if isEmpty then
      yield head +@ " end"
    else
      yield head
      yield indent (concat newline module_.content)
      yield str "end" ]

let private moduleSigImpl (prefix: string) (isRec: bool) (module_: TextModuleSig) =
  moduleSigImplLines prefix isRec module_ |> concat newline

let moduleSig (module_: TextModuleSig) = moduleSigImpl "module" false module_

let moduleSigRec (modules: TextModuleSig list) =
  match modules with
  | [] -> []
  | [x] -> [moduleSigImpl "module" false x]
  | x :: xs ->
    moduleSigImpl "module" true x :: (xs |> List.map (moduleSigImpl "and" false))

let moduleSigNonRec (modules: TextModuleSig list) =
  modules |> List.map (moduleSigImpl "module" false)

let abstractType name tyargs =
  str "type "
  + (if List.isEmpty tyargs then str name else Type.app (str name) tyargs)

let abstractTypeOjs name tyargs =
  abstractType name tyargs +@ " = private Ojs.t"

let typeAlias name tyargs ty =
  str "type "
  + (if List.isEmpty tyargs then str name else Type.app (str name) tyargs)
  +@ " = " + ty

let val_ name ty =
  tprintf "val %s: " name + ty

let let_ name args retTyOpt value =
  let retTy =
    match retTyOpt with
    | None -> empty
    | Some t -> " : " @+ t
  tprintf "let %s" name + concat empty (args |> List.map ((@+) " ")) + retTy +@ " = " + value

let external_ name tyarg tyret extName =
  tprintf "external %s: " name + tyarg +@ " -> " + tyret + tprintf " = \"%s\"" extName

// we don't sanitize names in OCamlHelper; callers should do it themselves
module Naming =
  let ourReservedNames =
    set [
      "create"; "apply"; "invoke"; "get"; "set"; "cast_from"
    ]

  let reservedValueNames =
    Set.unionMany [
      Naming.Keywords.keywords
      ourReservedNames
    ]

  let removeInvalidChars (s: string) =
    s.ToCharArray()
    |> Array.map (fun c -> if Char.isAlphabetOrDigit c || c = '_' then c else '_')
    |> System.String

  let valueName (name: string) =
    let name = removeInvalidChars name
    let result =
      if name = "NaN" then "nan"
      else if String.forall (fun c -> Char.IsLower c |> not) name then
        name.ToLowerInvariant()
      else if Char.IsUpper name.[0] then
        sprintf "%c%s" (Char.ToLower name.[0]) name.[1..]
      else name
    if reservedValueNames |> Set.contains result then result + "_" else result

  let typeName (name: string) =
    let name = removeInvalidChars name
    let result =
      if String.forall (fun c -> Char.IsLower c |> not) name then
        name.ToLowerInvariant()
      else if Char.IsUpper name.[0] then
        sprintf "%c%s" (Char.ToLower name.[0]) name.[1..]
      else name
    if Naming.Keywords.keywords |> Set.contains result then result + "_" else result

  let reservedModuleNames =
    Set.ofList [
      "Export"; "Default"
    ] |> Set.union Naming.Keywords.keywords

  let moduleName (name: string) =
    let name = removeInvalidChars name
    let result =
      if Char.IsLower name.[0] then
        sprintf "%c%s" (Char.ToUpper name.[0]) name.[1..]
      else if name.[0] = '_' then
        "M" + name
      else name
    if reservedModuleNames |> Set.contains result then result + "_" else result

  let constructorName (name: string list) =
    let s = String.concat "_" name |> removeInvalidChars
    let result =
      if Char.IsLower s.[0] then
        sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]
      else s
    if Naming.Keywords.keywords |> Set.contains result then result + "_" else result

  let structured (baseName: string -> string) (name: string list) =
    let rec prettify = function
      | [] -> ""
      | [x] -> baseName x
      | x :: xs -> moduleName x + "." + prettify xs
    prettify name

  let flattenedTypeName (name: string list) =
    let s = String.concat "_" name |> removeInvalidChars
    let result =
      if Char.IsUpper s.[0] then "_" + s
      else s
    if Naming.Keywords.keywords |> Set.contains result then result + "_" else result

  let createTypeNameOfArity arity maxArityOpt name =
    match maxArityOpt with
    | Some maxArity ->
      if arity = maxArity then name
      else sprintf "%s_%d" name arity
    | None -> sprintf "%s_%d" name arity

  let jsModuleNameToFileName (jsModuleName: string) =
    jsModuleName
    |> String.split "/"
    |> Array.map (fun n ->
      n |> Naming.toCase Naming.Case.LowerSnakeCase)
    |> String.concat "__"
    |> sprintf "%s.mli"

  let jsModuleNameToOCamlModuleName (jsModuleName: string) =
    jsModuleName
    |> String.split "/"
    |> Array.map (fun n ->
      n |> Naming.toCase Naming.Case.LowerSnakeCase)
    |> String.concat "__"
    |> moduleName