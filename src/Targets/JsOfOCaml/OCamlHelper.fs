module Targets.JsOfOCaml.OCamlHelper

open System
open Ts2Ml
open Syntax
open Targets.JsOfOCaml.Common
open DataTypes
open DataTypes.Text

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
  let jsablePrimitives =
    Map.ofList [
      "Array",   Array
      "ReadonlyArray", Array
      "ArrayLike", Array
      "Number", Number
      "String", String
      "Boolean", Bool
    ]

  // these types don't really defined as interface, but have "boxed" interfaces.
  // these interfaces have `constructor(any)` to box, and `valueOf()` to unbox.
  // however, methods defined in those interfaces are still present even in "unboxed" form.
  let jsableBoxedPrimitives =
    Map.ofList [
      "Number", Number
      "String", String
      "Boolean", Bool
    ]

  // these types have different JS representation than in OCaml,
  // so it should be avoided to appear as type arguments.
  let nonIdentityPrimitives =
    Map.ofList [
      "Array",   Array
      "ReadonlyArray", Array
      "ArrayLike", Array
      "String", String
      "Boolean", Bool
    ]

  // prim types that are NOT JS-able and defined as interface in typescript/lib/lib.*.d.ts
  let nonJsablePrimitives =
    Map.ofList [
      "Object", Object
      "Function", UntypedFunction
      "Symbol", Symbol false
      "RegExp", RegExp
      "BigInt", BigInt
    ]

  // basic type expressions
  let var s = tprintf "'%s" s

  let many sep = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat sep xs |> between "(" ")"

  let tuple = many (str " * ")
  let arrow xs = concat (str " -> ") xs

  let app t = function
    | [] -> failwith "type application with empty arguments"
    | [u] -> u +@ " " + t
    | us -> many (str ", ") us +@ " " + t

  let appOpt t args =
    if List.isEmpty args then t
    else app t args

  // JS-able OCaml types
  let void_ = str "unit"
  let string  = str "string"
  let boolean = str "bool"
  let number (opt: Options) =
    if opt.numberAsInt then str "int"
    else str "float"
  let array = str "list"
  let readonlyArray = str "list"
  let option t = app (str "option") [t]

  // JS only types
  // ES5
  let object  = str "untyped_object"
  let function_ = str "untyped_function"
  let symbol  = str "symbol"
  let regexp  = str "regexp"
  let null_ = str "null"
  let undefined = str "undefined"
  // ES2020
  let bigint = str "bigint"

  // TS types
  let never   = str "never"
  let any     = str "any"
  let unknown = str "unknown"

  // gen_js_api types
  let ojs_t = str "Ojs.t"

  // our types
  let intf  = str "intf"

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

let moduleAlias name target =
  let text = tprintf "module %s = %s" name target
  Attr.js_stop_start_implem_oneliner text text

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
  let keywords =
    Set.ofList [
      "and"; "as"; "assert"; "asr"; "begin"; "class";
      "constraint"; "do"; "done"; "downto"; "else"; "end";
      "exception"; "external"; "false"; "for"; "fun"; "function";
      "functor"; "if"; "in"; "include"; "inherit"; "initializer";
      "land"; "lazy"; "let"; "lor"; "lsl"; "lsr";
      "lxor"; "match"; "method"; "mod"; "module"; "mutable";
      "new"; "nonrec"; "object"; "of"; "open"; "or";
      "private"; "rec"; "sig"; "struct"; "then"; "to";
      "true"; "try"; "type"; "val"; "virtual"; "when";
      "while"; "with"
    ]

  let ourReservedNames =
    set [
      "create"; "apply"; "invoke"; "get"; "set"; "cast_from"
    ]

  let reservedValueNames =
    Set.unionMany [
      keywords
      ourReservedNames
    ]

  let removeInvalidChars (s: string) =
    s.Trim('"').ToCharArray()
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
    if keywords |> Set.contains result then result + "_" else result

  let reservedModuleNames =
    Set.ofList [
      "Export"; "Default"
    ] |> Set.union keywords

  let moduleNameReserved (name: string) =
    let name = removeInvalidChars name
    if Char.IsLower name.[0] then
      sprintf "%c%s" (Char.ToUpper name.[0]) name.[1..]
    else if name.[0] = '_' then
      "M" + name
    else name

  let moduleName (name: string) =
    let result = moduleNameReserved name
    if reservedModuleNames |> Set.contains result then result + "_" else result

  let constructorName (name: string list) =
    let s = String.concat "_" name |> removeInvalidChars
    let result =
      if Char.IsLower s.[0] then
        sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]
      else s
    if keywords |> Set.contains result then result + "_" else result

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
    if keywords |> Set.contains result then result + "_" else result

  let createTypeNameOfArity arity maxArityOpt name =
    match maxArityOpt with
    | Some maxArity ->
      if arity = maxArity then name
      else sprintf "%s_%d" name arity
    | None -> sprintf "%s_%d" name arity

  let private jsModuleNameToOCamlName (jsModuleName: string) =
    match jsModuleName.TrimStart('@') |> String.splitThenRemoveEmptyEntries "/" |> Array.toList with
    | xs ->
      xs
      |> List.map (fun n ->
        n |> Naming.toCase Naming.Case.LowerSnakeCase)
      |> String.concat "__"

  let jsModuleNameToFileName (jsModuleName: string) =
    jsModuleName
    |> jsModuleNameToOCamlName
    |> sprintf "%s.mli"

  let jsModuleNameToOCamlModuleName (jsModuleName: string) =
    jsModuleName
    |> jsModuleNameToOCamlName
    |> moduleName

  let exportDefaultClassStubName = "__export_default_class__"

module Kind =
  let generatesOCamlModule kind =
    Set.intersect kind (Set.ofList [Kind.Type; Kind.ClassLike; Kind.Module]) |> Set.isEmpty |> not

let jsBuilder name (fields: {| isOptional: bool; name: string; value: text |} list) (thisType: text) =
  let args =
    fields
    |> List.map (fun f ->
      let prefix = if f.isOptional then str "?" else empty
      let name = Naming.valueName f.name
      let value =
        if name = f.name then f.value
        else
          between "(" ")" (f.value + tprintf "[@js \"%s\"]" f.name)
      prefix +@ name +@ ":" + value)
  tprintf "val %s: " name + Type.arrow (args @ [Type.void_; thisType]) +@ " [@@js.builder]"