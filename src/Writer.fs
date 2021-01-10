module Writer

open System
open Syntax
open Typer
open Text

module Utils =
  let comment text = if text = empty then empty else between "(* " " *)" text
  let commentStr text = tprintf "(* %s *)" text
  let docComment text = if text = empty then empty else between "(** " " *)" text
  let docCommentStr text = tprintf "(** %s *)" text

  let [<Literal>] pv_head = "`"

  [<Obsolete("TODO")>]
  let inline TODO<'a> = failwith "TODO"

open Utils

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

  let js_custom_val content =
    if content = empty then attr Block "js.custom" empty
    else attr Block "js.custom" (newline + indent content + newline)

  let js_implem_val content = attr Block "js.implem" (newline + indent content + newline)

  let js_custom_typ content = attr Block "js.custom" (newline + indent content + newline)

  let js_create = attr Block "js.create" empty

  let private str' s = between "\"" "\"" (str s)

  let js_get name = attr Block "js.get" (str' name)
  
  let js_set name = attr Block "js.set" (str' name)

  let js_call name = attr Block "js.call" (str' name)
  
  let js_global name = attr Block "js.global" (str' name)

[<RequireQualifiedAccess>]
module Ppx =
  let js body = "[%js: " @+ newline + indent body + newline +@ "]"

  let include_ body = "include " @+ js body

  let module_  name body = tprintf "module %s = " name + js body

module Type =
  // primitive types
  // these types should reside in the "Js" module of the base library.
  let string_t  = str "Js.string"
  let boolean_t = str "Js.boolean"
  let number_t  = str "Js.number"
  let object_t  = str "Js.untyped_object"
  let symbol_t  = str "Js.symbol" // symbol is a ES5 type but should be distinguished from the boxed Symbol type
  let void_t    = str "unit"
  let array_t   = str "Js.array"
  let null_t           = str "Js.or_null"
  let undefined_t      = str "Js.or_undefined"
  let null_undefined_t = str "Js.or_null_or_undefined"

  // ES5 types
  // these types should reside in the "Es5" module of the base library.
  let regexp_t  = str "Es5.RegExp.t"
  let date_t    = str "Es5.Date.t"
  let error_t   = str "Es5.Error.t"
  let readonlyArray_t = str "Es5.ArrayLike.t"
  let promise_t = str "Es5.Promise.t"

  // TS specific types
  // these types should reside in the "Ts" module of the base library.
  let never_t   = str "Ts.never"
  let any_t     = str "Ts.any"
  let unknown_t = str "Ts.unknown"

  // gen_js_api types
  let ojs_t = str "Ojs.t"

  // our types
  let ts_intf  = str "Ts.intf"

  let tyVar s = tprintf "'%s" s

  let tyMany sep = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat sep xs |> between "(" ")"

  let tyTuple = tyMany (str " * ")

  let tyApp t = function
    | [] -> failwith "type application with empty arguments"
    | [u] -> u +@ " " + t
    | us -> tyMany (str ", ") us +@ " " + t

  let tyAppOpt t args =
    if List.isEmpty args then t
    else tyApp t args

  let ts_enum baseType cases = tyApp (str "Ts.enum") [baseType; cases]

  let and_ a b = tyApp (str "Ts.and_") [a; b]
  let or_  a b = tyApp (str "Ts.or_")  [a; b]

  let string_or t = tyApp (str "Ts.or_string") [t]
  let number_or t = tyApp (str "Ts.or_number") [t]
  let boolean_or t = tyApp (str "Ts.or_boolean") [t]
  let symbol_or t = tyApp (str "Ts.or_symbol") [t]
  let enum_or baseType cases t = or_ t (ts_enum baseType cases)

  let union_t types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> or_ (go (i-1) t) h
        | xs -> tyApp (tprintf "Ts.union%i" i) xs
      go l types

  let intersection_t types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> and_ (go (i-1) t) h
        | xs -> tyApp (tprintf "Ts.intersection%i" i) xs
      go l types

module Term =
  let termTuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let termApp t = function
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

open Type
open Term

module Naming =
  let ocamlKeywords =
    set [
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
      "create"; "invoke"; "get"; "set"
    ]

  let reservedNames = Set.union ocamlKeywords ourReservedNames

  let variableName (name: string) =
    let result =
      if Char.IsUpper name.[0] then
        sprintf "%c%s" (Char.ToLower name.[0]) name.[1..]
      else name
    if reservedNames |> Set.contains result then result + "_" else result

  let moduleName (name: string) =
    if Char.IsLower name.[0] then
      sprintf "%c%s" (Char.ToUpper name.[0]) name.[1..]
    else name

  let flattenedLower (name: string list) =
    let s = String.concat "_" name
    let result =
      if Char.IsUpper s.[0] then
        sprintf "%c%s" (Char.ToLower s.[0]) s.[1..]
      else s
    if reservedNames |> Set.contains result then result + "_" else result

  let flattenedUpper (name: string list) =
    let s = String.concat "_" name
    if Char.IsLower s.[0] then
      sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]
    else s

  let structured (name: string list) =
    name |> List.map (fun s -> sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]) |> String.concat "."

module Definition =
  let open_ names = names |> List.map (tprintf "open %s") |> concat newline
  
  let include_ names = names |> List.map (tprintf "include %s") |> concat newline

  let module_ name content =
    concat newline [
      tprintf "module %s = struct" name
      indent content
      str "end"
    ]

  let moduleSig name content =
    concat newline [
      tprintf "module %s : sig" name
      indent content
      str "end"
    ]

  let moduleScopeSig scope name content =
    concat newline [
      tprintf "module[@js.scope \"%s\"] %s : sig" scope name
      indent content
      str "end"
    ]

  let abstractType name tyargs = 
    str "type "
    + (if List.isEmpty tyargs then str name else tyApp (str name) tyargs)

  let abstractTypeOjs name tyargs =
    abstractType name tyargs +@ " = private Ojs.t"

  let typeAlias name tyargs ty =
    str "type "
    + (if List.isEmpty tyargs then str name else tyApp (str name) tyargs)
    +@ " = " + ty

  let val_ name ty =
    tprintf "val %s: " name + ty

  let let_ name args retTyOpt value =
    let retTy =
      match retTyOpt with
      | None -> empty
      | Some t -> " : " @+ t
    tprintf "let %s " name + concat (str " ") args + retTy +@ " = " + value

  let external_ name tyarg tyret extName =
    tprintf "external %s: " name + tyarg +@ " -> " + tyret + tprintf " = \"%s\"" extName

open Definition

let emitComment (c: Comment) : text =
  match c with
  | Deprecated (Some text) -> tprintf "@deprecated %s" text
  | Deprecated None -> tprintf "@deprecated"
  | TextLine text -> str text
  | Param (id, text) -> tprintf "@param %s %s" id text
  | Return text -> tprintf "@return %s" text

let literalToIdentifier (ctx: Context) (l: Literal) : text =
  let formatString (s: string) =
    (s :> char seq)
    |> Seq.map (fun c ->
      if Char.isAlphabetOrDigit c then c
      else '_'
    ) |> Seq.toArray |> System.String
  let inline formatNumber (x: 'a) =
    string x
    |> String.replace "+" "plus"
    |> String.replace "-" "minus"
    |> String.replace "." "_"
  match l with
  | LString s ->
    match ctx.typeLiteralsMap |> Map.tryFind l with
    | Some i ->
      if String.forall (Char.isAlphabetOrDigit >> not) s then tprintf "s%i" i
      else tprintf "s%i_%s" i (formatString s)
    | None -> failwithf "the literal '%s' is not found in the context" s
  | LInt i -> tprintf "n_%s" (formatNumber i)
  | LFloat l -> tprintf "n_%s" (formatNumber l)
  | LBool true -> str "b_true" | LBool false -> str "b_false"

let anonymousInterfaceToIdentifier (ctx: Context) (c: Class) : text =
  match ctx.anonymousInterfacesMap |> Map.tryFind c, c.name with
  | Some i, None -> tprintf "anonymous_interface_%i" i
  | None, None -> failwithf "the anonymous interface '%A' is not found in the context" c
  | _, Some n -> failwithf "the class or interface '%s' is not anonymous" n

let treatEnum ctx (cases: Set<Choice<EnumCase, Literal>>) =
  between "[" "]" (concat (str " | ") [
    for c in Set.toSeq cases do
      let name, value =
        match c with
        | Choice1Of2 e -> str e.name, e.value
        | Choice2Of2 l -> "L_" @+ literalToIdentifier ctx l, Some l
      let attr =
        match value with
        | Some v -> Attr.js (literal v)
        | None -> empty
      yield pv_head @+ name + attr
  ]) +@ " [@js.enum]" |> between "(" ")"

let rec emitResolvedUnion overrideFunc ctx (ru: ResolvedUnion) =
  let treatNullUndefined t =
    match ru.caseNull, ru.caseUndefined with
    | true, true -> tyApp null_undefined_t [t]
    | true, false -> tyApp null_t [t]
    | false, true -> tyApp undefined_t [t]
    | false, false -> t

  let treatTypeofableTypes (ts: Set<TypeofableType>) t =
    let emitOr tt t =
      match tt with
      | TNumber -> number_or t
      | TString -> string_or t
      | TBoolean -> boolean_or t
      | TSymbol -> symbol_or t
    let rec go = function
      | [] -> t
      | x :: [] ->
        match t with
        | None -> TypeofableType.toType x |> emitType overrideFunc ctx |> Some
        | Some t -> emitOr x t |> Some
      | x :: rest -> go rest |> Option.map (emitOr x)
    Set.toList ts |> go

  let treatArray (arr: Set<Type> option) t =
    match arr with
    | None -> t
    | Some ts ->
      // TODO: think how to map multiple array cases properly
      let u = emitResolvedUnion overrideFunc ctx (resolveUnion ctx { types = Set.toList ts })
      match t with
      | None -> Some u
      | Some t -> or_ (tyApp array_t [u]) t |> Some

  let treatDU (tagName: string) (cases: Map<Literal, Type>) =
    between "[" "]" (concat (str " | ") [
      for (l, t) in Map.toSeq cases do
        let name = pv_head @+ "U_" @+ literalToIdentifier ctx l
        let ty = emitTypeNoResolveUnion overrideFunc ctx t
        yield tprintf "%A of %A " name ty + Attr.js (literal l)
    ]) + tprintf " [@js.union on_field \"%s\"]" tagName |> between "(" ")"

  let treatOther otherTypes =
    let rec go = function
      | [] -> failwith "impossible_emitResolvedUnion_treatOther_go"
      | t :: [] -> emitType overrideFunc ctx t
      | t :: ts -> or_ (emitType overrideFunc ctx t) (go ts)
    go (Set.toList otherTypes)

  let treatEnumOr (cases: Set<Choice<EnumCase, Literal>>) t =
    let casesByType =
      cases
      |> Set.toList
      |> List.groupBy (function
        | Choice1Of2 { value = Some l }
        | Choice2Of2 l ->
          match Literal.getType l with
          | String -> TString
          | Number -> TNumber
          | Bool   -> TBoolean
          | _ -> failwith "impossible_emitResolvedUnion_treatEnumOr"
        | _ -> failwith "impossible_emitResolvedUnion_treatEnumOr")
    let rec go = function
      | (typeofable, cases) :: rest ->
        enum_or (typeofable |> TypeofableType.toType |> emitType overrideFunc ctx)
                (treatEnum ctx (Set.ofList cases))
                (go rest)
      | [] -> t
    go casesByType

  let treatDUMany du =
    let rec go = function
      | [] -> failwith "impossible_emitResolvedUnion_baseType_go"
      | (tagName, cases) :: [] -> treatDU tagName cases
      | (tagName, cases) :: rest -> or_ (treatDU tagName cases) (go rest)
    go (Map.toList du)

  let baseType =
    match not (Set.isEmpty ru.caseEnum), not (Map.isEmpty ru.discriminatedUnions), not (Set.isEmpty ru.otherTypes) with
    | false, false, false -> None
    | true, false, false -> Some (treatEnum ctx ru.caseEnum)
    | false, true, hasOther ->
      let t = treatDUMany ru.discriminatedUnions
      if hasOther then or_ t (treatOther ru.otherTypes) |> Some
      else Some t
    | false, false, true -> treatOther ru.otherTypes |> Some
    | true, false, true -> treatOther ru.otherTypes |> treatEnumOr ru.caseEnum |> Some
    | true, true, hasOther ->
      let t = treatDUMany ru.discriminatedUnions
      let t = if hasOther then or_ t (treatOther ru.otherTypes) else t
      t |> treatEnumOr ru.caseEnum |> Some

  baseType |> treatArray ru.caseArray
           |> treatTypeofableTypes ru.typeofableTypes
           |> Option.defaultValue never_t
           |> treatNullUndefined

and emitTypeNoResolveUnion orf ctx ty =
  emitType (fun _emitType ctx ty ->
    match ty with
    | Union u -> union_t (u.types |> List.map (emitTypeNoResolveUnion orf ctx)) |> Some
    | _ -> orf (emitTypeNoResolveUnion orf) ctx ty
  ) ctx ty

and emitType (overrideFunc: (Context -> Type -> text) -> Context -> Type -> text option) (ctx: Context) (ty: Type) : text =
  match overrideFunc (emitType overrideFunc) ctx ty with
  | Some t -> t
  | None ->
    match ty with
    | Ident i ->
      match i.fullName with
      | Some fn -> str (Naming.flattenedLower fn)
      | None -> commentStr (sprintf "FIXME: unknown type '%s'" (String.concat "." i.name)) + str (Naming.structured i.name + ".t")
    | App (t, ts) -> tyApp (emitType overrideFunc ctx t) (List.map (emitType overrideFunc ctx) ts)
    | TypeVar v -> tprintf "'%s" v
    | Prim p ->
      match p with
      | Null -> tyApp null_t [never_t] | Undefined -> tyApp undefined_t [never_t] | Object -> any_t
      | String -> string_t | Bool -> boolean_t | Number -> number_t
      | UntypedFunction -> any_t | Array -> array_t | Date -> date_t | Error -> error_t
      | RegExp -> regexp_t | Symbol -> symbol_t | Promise -> promise_t
      | Never -> never_t | Any -> any_t | Unknown -> unknown_t | Void -> void_t
      | ReadonlyArray -> readonlyArray_t
    | TypeLiteral l ->
      treatEnum ctx (Set.singleton (Choice2Of2 l))
    | Intersection i -> intersection_t (i.types |> List.map (emitType overrideFunc ctx))
    | Union u -> emitResolvedUnion overrideFunc ctx (resolveUnion ctx u)
    | AnonymousInterface a -> anonymousInterfaceToIdentifier ctx a
    | PolymorphicThis -> commentStr "FIXME: polymorphic this" + any_t
    | Function f ->
      let rec go acc (args: Choice<FieldLike, Type> list) =
        match args with
        | [] -> acc + void_t
        | Choice1Of2 x :: [] when f.isVariadic ->
          assert (not x.isOptional)
          acc + tprintf "%s:" (Naming.variableName x.name) + between "(" ")" (emitType overrideFunc ctx x.value +@ " [@js.variadic]")
        | Choice2Of2 t :: [] when f.isVariadic ->
          acc + emitType overrideFunc ctx t +@ " [@js.variadic]"
        | Choice1Of2 x :: xs ->
          let needParen =
            match x.value with
            | Function _ -> true
            | _ -> false
          let prefix =
            if x.isOptional then "?" else ""
          let ty =
            if needParen then between "(" ")" (emitType overrideFunc ctx x.value)
            else emitType overrideFunc ctx x.value
          let t =
            tprintf "%s%s:" prefix (Naming.variableName x.name) + ty
          if not x.isOptional && List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs
        | Choice2Of2 t :: xs ->
          let needParen = match t with Function _ -> true | _ -> false
          let t = if needParen then between "(" ")" (emitType overrideFunc ctx t) else emitType overrideFunc ctx t
          if List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs

      let lhs = go empty f.args
      let rhs =
        match f.returnType with
        | Prim Void -> void_t
        | Function _ ->
          between "(" ")" (emitType overrideFunc ctx f.returnType +@ " [@js.dummy]")
        | _ -> emitType overrideFunc ctx f.returnType

      lhs +@ " -> " + rhs   
    | Tuple ts | ReadonlyTuple ts ->
      tyTuple (ts |> List.map (emitType overrideFunc ctx))
    | UnknownType msgo ->
      match msgo with None -> commentStr "FIXME: unknown type" + any_t | Some msg -> commentStr (sprintf "FIXME: unknown type '%s'" msg) + any_t

let inline noOverride _emitType _ctx _ty = None

let emitType_ ctx ty = emitType noOverride ctx ty

module BaseLibrary =

  let private emitTyargsPart isToJs tyargs =
    tyargs |> List.map (fun tyarg ->
              between "(" ")" (if isToJs then tyarg +@ " -> " + ojs_t else ojs_t +@ " -> " + tyarg)
              +@ " -> ")
           |> concat empty

  let private genConverters name tyargs =
    let ty = tyAppOpt (str name) tyargs
    [
      yield val_ (name + "_to_js") (emitTyargsPart true tyargs + ty +@ " -> Ojs.t")
      yield val_ (name + "_of_js") (emitTyargsPart false tyargs +@ "Ojs.t -> " + ty)
    ]

  let private genTypeWithConverters name tyargs =
    [
      yield abstractTypeOjs name tyargs
      yield! genConverters name tyargs
    ]

  let aliasWithConverters name tyargs value =
    [
      yield typeAlias name tyargs value
      yield! genConverters name tyargs
    ]

  let dummyJsModule : text =
    concat newline [
      yield! genTypeWithConverters "string" []
      yield! genTypeWithConverters "number" []
      yield! genTypeWithConverters "boolean" []
      yield! genTypeWithConverters "symbol" []
      yield! genTypeWithConverters "untyped_object" []
      yield! genTypeWithConverters "array" [tyVar "a"]
      yield! aliasWithConverters "or_null" [tyVar "a"] (tyApp (str "option") [tyVar "a"])
      yield! aliasWithConverters "or_undefined" [tyVar "a"] (tyApp (str "option") [tyVar "a"])
      yield! aliasWithConverters "or_null_or_undefined" [tyVar "a"] (tyApp (str "option") [tyVar "a"])
    ]

  let dummyES5Module : text =
    concat newline [
      yield
        moduleSig "RegExp" (concat newline [
          yield! genTypeWithConverters "t" []
        ])
      yield
        moduleSig "Date" (concat newline [
          yield! genTypeWithConverters "t" []
        ])
      yield
        moduleSig "Error" (concat newline [
          yield! genTypeWithConverters "t" []
        ])
      yield
        moduleSig "ArrayLike" (concat newline [
          yield! genTypeWithConverters "t" [tyVar "a"]
        ])
      yield
        moduleSig "Promise" (concat newline [
          yield! genTypeWithConverters "t" [tyVar "a"]
        ])
    ]

  let tsModule : text =
    concat newline [
      yield! genTypeWithConverters "never" []
      yield! genTypeWithConverters "any" []
      yield! genTypeWithConverters "unknown" []

      yield
        Attr.js_stop_start_implem
          (concat newline [
            yield abstractType "intf" [str "-'a"]
            yield! genConverters "intf" [str "'a"]
          ])
          (concat newline [
            typeAlias    "intf" [str "-'a"] ojs_t
            let_ "intf_to_js" [str "_"; str "x"] (Some ojs_t) (str "x")
            let_ "intf_of_js" [str "_"; str "x"] (Some (str "intf")) (str "x")
          ])

      yield
        Attr.js_stop_start_implem
          (concat newline [
            yield abstractType "enum" [str "'t"; str "+'a"]
            yield! genConverters "enum" [str "'t"; str "'a"]
          ])
          (concat newline [
            typeAlias    "enum" [str "'t"; str "+'a"] (str "'t")
            let_ "enum_to_js" [str "f"; str "_"; str "e"] (Some ojs_t) (termApp (str "f") [str "e"])
            let_ "enum_of_js" [str "f"; str "_"; str "e"] (Some (str "enum")) (termApp (str "f") [str "e"])
          ])
      
      let alphabets = [for c in 'a' .. 'z' do tyVar (string c)]

      yield! genTypeWithConverters "and_" [tyVar "a"; tyVar "b"]
      let and_ a b = tyApp (str "and_") [a; b]
      yield! aliasWithConverters "intersection2" [tyVar "a"; tyVar "b"] (and_ (tyVar "b") (tyVar "a"))
      for i = 3 to 8 do
        let args = alphabets |> List.take i
        yield! aliasWithConverters
            (sprintf "intersection%i" i) args
            (and_ (tyApp (tprintf "intersection%i" (i-1)) (List.tail args))
                  (List.head args))
    
      (*
      yield module_ "Intersection" (
        concat newline [
          yield external_ "car" (and_ (str "'a") (str "'b")) (str "'b") "%identity"
          yield external_ "cdr" (and_ (str "'a") (str "'b")) (str "'a") "%identity"
          for i = 2 to 8 do
            yield
              (*letFunction
                (sprintf "unwrap%i" i)
                [str "x", tyApp (tprintf "intersection%i" i) (List.take i alphabets)]
                (termTuple [
                  for t in List.take i alphabets do
                    typeAssert (termApp (str "cast") [str "x"]) t
                ])*)
              TODO
        ]
      )
      *)

      yield! genTypeWithConverters "or_" [tyVar "a"; tyVar "b"]
      let or_ a b = tyApp (str "or_") [a; b]
      yield! aliasWithConverters "union2" [tyVar "a"; tyVar "b"] (or_ (tyVar "b") (tyVar "a"))
      for i = 3 to 8 do
        let args = alphabets |> List.take i
        yield! aliasWithConverters
            (sprintf "union%i" i) args
            (or_ (tyApp (tprintf "union%i" (i-1)) (List.tail args))
                 (List.head args))

      yield! aliasWithConverters "or_number"  [tyVar "a"] (or_ (tyVar "a") number_t)
      yield! aliasWithConverters "or_string"  [tyVar "a"] (or_ (tyVar "a") string_t)
      yield! aliasWithConverters "or_boolean" [tyVar "a"] (or_ (tyVar "a") boolean_t)
      yield! aliasWithConverters "or_symbol"  [tyVar "a"] (or_ (tyVar "a") symbol_t)
      yield! aliasWithConverters "or_array"   [tyVar "a"; tyVar "t"] (or_  (tyVar "a") (tyApp array_t [tyVar "t"]))
      yield! aliasWithConverters "or_enum"    [tyVar "a"; tyVar "t"; tyVar "cases"]
                                   (or_ (tyVar "a") (tyApp (str "enum") [tyVar "t"; tyVar "cases"]))

      (*
      yield module_ "Union" (
        concat newline [

        ]
      )
      *)
    ]


let emitTypeName name args =
  if List.isEmpty args then str (Naming.flattenedLower name)
  else tyApp (str (Naming.flattenedLower name)) args

let emitCase name args =
  match args with
  | [] -> str (Naming.flattenedUpper name)
  | [arg] -> tprintf "%s of %A" (Naming.flattenedUpper name) arg
  | _ -> tprintf "%s of %A" (Naming.flattenedUpper name) (tyTuple args)

let getSafeLabels ctx ty =
  let rec getLabel = function
    | Ident { fullName = Some fn } -> 
      seq {
        yield tprintf "%s%s" pv_head (fn |> Naming.flattenedUpper)
        for e in getAllInheritancesFromName ctx fn do
          match e with
          | Ident { fullName = Some fn } ->
            yield tprintf "%s%s" pv_head (fn |> Naming.flattenedUpper)
          | App (Ident { fullName = Some fn }, ts) ->
            yield str pv_head + emitCase fn (ts |> List.map (emitType_ ctx))
          | _ -> ()
      } |> Set.ofSeq
    | App (Ident { fullName = Some fn }, ts) ->
      seq {
        yield str pv_head + emitCase fn (ts |> List.map (emitType_ ctx))
        let typrms =
          match ctx.definitionsMap |> Map.tryFind fn with
          | Some (ClassDef c) -> c.typeParams
          | Some (TypeAlias a) -> a.typeParams
          | _ -> []
        let subst = List.map2 (fun (tv: TypeParam) ty -> tv.name, ty) typrms ts |> Map.ofList
        for e in getAllInheritancesFromName ctx fn do
          match e with
          | Ident { fullName = Some fn } ->
            yield tprintf "%s%s" pv_head (fn |> Naming.flattenedUpper)
          | App (Ident { fullName = Some fn }, ts) ->
            yield str pv_head + emitCase fn (ts |> List.map (substTypeVar subst ctx >> emitType_ ctx))
          | _ -> ()
      } |> Set.ofSeq
    | Union ts -> ts.types |> List.map getLabel |> Set.intersectMany
    | Intersection ts -> ts.types |> List.map getLabel |> Set.unionMany
    | _ -> Set.empty
  getLabel ty

let emitFlattenedDefinitions (ctx: Context) : text =
  moduleSig ctx.internalModuleName (
    concat newline [
      moduleSig "Js"  BaseLibrary.dummyJsModule
      moduleSig "Es5" BaseLibrary.dummyES5Module
      moduleSig "Ts"  BaseLibrary.tsModule

      moduleSig "AnonymousInterfaces" (
        concat newline [
          for (a, _) in ctx.anonymousInterfacesMap |> Map.toSeq do
            let i = anonymousInterfaceToIdentifier ctx a
            let def = str "type " + i + str " = " + tyApp ts_intf [between "[" "]" (str pv_head + i)]
            yield Attr.js_stop_start_implem def def
        ]
      )

      let f prefix (k: string list, v: Statement) =
        let genMapper (typeParams: TypeParam list) =
          let ty = Naming.flattenedLower k
          let f suffix tin tout =
            let_
              (ty + suffix)
              (List.map (fun (x: TypeParam) -> str ("_" + x.name)) typeParams @ [between "(" ")" ("x : " @+ tin)])
              (Some tout)
              (termApp (str "Obj.magic") [str "x"])
          [ f "_to_js" (str ty) ojs_t; f "_of_js" ojs_t (str ty) ]

        match v with
        | EnumDef e ->
          concat newline [
            let treatEnum (cases: EnumCase list) =
              between "[" "]" (concat (str " | ") [
                for c in cases do
                  let name, value = str c.name, c.value
                  let attr =
                    match value with
                    | Some v -> Attr.js (literal v)
                    | None -> empty
                  yield pv_head @+ name + attr
              ]) +@ " [@js.enum]"
            yield
              tprintf "%s %s = " prefix (Naming.flattenedLower k)
                + treatEnum e.cases
            for c in e.cases do
              yield tprintf "and %s = %A" (Naming.flattenedLower (k @ [c.name])) (treatEnum [c])
          ] |> Some
        | ClassDef c ->
          let typrm = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
          let labels = [
            for e in getAllInheritancesFromName ctx k do
              match e with
              | Ident { fullName = Some fn } ->
                yield tprintf "%s%s" pv_head (Naming.flattenedUpper fn)
              | App (Ident { fullName = Some fn }, ts) ->
                yield str pv_head + emitCase fn (ts |> List.map (emitType_ ctx))
              | _ -> ()
          ]
          concat newline [
            let def =
              tprintf "%s %A = " prefix (emitTypeName k typrm)
              + tyApp ts_intf [
                between "[" "]" (
                  concat (str " | ") [
                    yield  tprintf "%s%A" pv_head (emitCase k typrm)
                    yield! labels
                  ]
                )
              ]
            yield def +@ " " + Attr.js_custom_typ (concat newline (genMapper c.typeParams))
          ] |> Some
          // TODO: emit extends of type parameters
        | TypeAlias p when p.erased = false ->
          let typrm = p.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
          tprintf "%s %A = " prefix (emitTypeName k typrm) + emitType_ ctx p.target |> Some
          // TODO: emit extends of type parameters
        | _ -> None

      moduleSig "Types" (
        concat newline [
          yield open_ ["AnonymousInterfaces"]
          let prefix = seq { yield "type"; while true do yield "and" }
          yield!
            ctx.definitionsMap
            |> Map.toSeq
            |> Seq.skipWhile (fun t -> f "type" t |> Option.isNone)
            |> Seq.map2 (fun prefix t -> f prefix t) prefix
            |> Seq.choose id
        ]
      )
    ]
  ) + newline



let emitStructuredDefinitions (ctx: Context) (stmts: Statement list) =
  let (|Dummy|) _ = []
  let rec go (ctx: Context) (s: Statement) : text =
    match s with
    | Module m ->
      moduleScopeSig
        m.name
        (Naming.moduleName m.name)
        (concat newline (List.map (go ({ ctx with currentNamespace = m.name :: ctx.currentNamespace})) m.statements))
    | Export (e, _) -> commentStr (sprintf "export = %s" (String.concat "." e.name))
    | UnknownStatement (Some s) -> commentStr s
    | UnknownStatement None -> commentStr "unknown statement"
    | TypeAlias { name = name; typeParams = typeParams } | (EnumDef { name = name } & Dummy typeParams) ->
      let k = List.rev (name :: ctx.currentNamespace)
      let tyargs = typeParams |> List.map (fun x -> tprintf "'%s" x.name)
      concat newline [
        yield
          moduleSig (Naming.moduleName name) (
            typeAlias "t" tyargs (emitTypeName k tyargs)
          )
      ]
    | EnumDef _ -> failwith "impossible_emitStructuredDefinitions_EnumDef"
    | Value v ->
      concat newline [
        yield val_ (Naming.variableName v.name) (emitType_ ctx v.typ) + str " " + Attr.js_global v.name
      ]
    | ClassDef c ->
      match c.name with
      | None -> failwith "impossible_emitStructuredDefinitions_ClassDef"
      | Some name ->
        let k = List.rev (name :: ctx.currentNamespace)
        let tyargs = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
        let selfTyText = str "t"
        let ident = { name = [name]; fullName = Some k }
        let selfTy = 
          if List.isEmpty c.typeParams then Ident ident
          else App (Ident ident, List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams)

        let orf _emitType _ctx ty =
          match ty with
          | Ident i when i = ident -> Some selfTyText
          | _ -> None
        let emitType_ ctx ty = emitType orf ctx ty
        
        concat newline [
          yield
            moduleScopeSig name (Naming.moduleName name) (concat newline [
              let rec emitMember (ma: MemberAttribute) m = [
                match m with
                | Constructor (ft, _typrm) ->
                  let ty = Function { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy }
                  yield val_ "create" (emitType_ ctx ty) + str " " + Attr.js_create
                | Field ({ name = name; value = Function ft }, _, _)
                | Method (name, ft, _) ->
                  let ty, attr =
                    if ma.isStatic then Function ft, Attr.js_global name
                    else
                      let ft =
                        { args = Choice2Of2 selfTy :: ft.args
                          returnType = ft.returnType
                          isVariadic = ft.isVariadic }
                      Function ft, Attr.js_call name
                  yield tprintf "val %s: " (Naming.variableName name) + emitType_ ctx ty + str " " + attr
                | Getter fl | Field (fl, ReadOnly, _) when fl.value <> Prim Void ->
                  let lhs = if ma.isStatic then void_t else selfTyText
                  let rhs =
                    let retTy = emitType_ ctx fl.value
                    if fl.isOptional then tyApp undefined_t [retTy] else retTy
                  yield tprintf "val get_%s: " fl.name + lhs + str " -> " + rhs + str " " + Attr.js_get fl.name
                | Setter fl | Field (fl, WriteOnly, _) when fl.value <> Prim Void ->
                  let vTy = emitType_ ctx fl.value
                  let lhs =
                    if ma.isStatic then vTy else selfTyText + str " -> " + vTy
                  yield tprintf "val set_%s: " fl.name + lhs + str " -> " + void_t + str " " + Attr.js_set fl.name
                | Field (fl, Mutable, _) ->
                  yield! emitMember ma (Getter fl)
                  yield! emitMember ma (Setter fl)
                | FunctionInterface (ft, _) ->
                  yield comment (str "val invoke: " + emitType_ ctx (Function ft))
                | Indexer (ft, ReadOnly) ->
                  yield comment (str "val get: " + emitType_ ctx (Function ft))
                | Indexer (ft, WriteOnly) ->
                  let ft =
                    { args = ft.args @ [ Choice2Of2 ft.returnType ]
                      isVariadic = false;
                      returnType = Prim Void }
                  yield comment (str "val set: " + emitType_ ctx (Function ft))
                | Indexer (ft, Mutable) ->
                  yield! emitMember ma (Indexer (ft, ReadOnly))
                  yield! emitMember ma (Indexer (ft, WriteOnly))
                // field/getter/setter of void value is ignored
                | Getter { name = n } | Setter { name = n } | Field ({ name = n }, _, _) ->
                  eprintf "warn: the field/getter/setter '%s' of type '%s' has type 'void' and is ignored" n name
                  ()
                | New _ -> ()
              ]

              yield typeAlias "t" tyargs (emitTypeName k tyargs)
              for ma, m in c.members do yield! emitMember ma m
            ])
        ]


  concat newline [
    yield open_ [ ctx.internalModuleName ]
    yield open_ [ "AnonymousInterfaces"; "Types" ]

    for stmt in stmts do yield go ctx stmt
  ]