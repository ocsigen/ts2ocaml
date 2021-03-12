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

  let js_implem_floating content = attr Floating "js.implem" (newline + indent content + newline)
  let js_implem_val content = attr Block "js.implem" (newline + indent content + newline)

  let js_custom_typ content = attr Block "js.custom" content

  let js_create = attr Block "js.create" empty

  let private str' s = between "\"" "\"" (str s)

  let js_get name = attr Block "js.get" (str' name)
  
  let js_set name = attr Block "js.set" (str' name)

  let js_index_get = attr Block "js.index_get" empty
  
  let js_index_set = attr Block "js.index_set" empty

  let js_call name = attr Block "js.call" (str' name)

  let js_apply = attr Block "js.apply" empty
  
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
  let array_t   = str "list"
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

  let record (fields: (string * text) list) =
    if List.isEmpty fields then failwith "empty fields of record"
    else
      List.map (fun (name, body) -> name + "=" @+ body) fields
      |> concat (str "; ")
      |> between "{ " " }"

  let termFun (args: text list) (body: text) =
    if List.isEmpty args then failwith "empty args of fun"
    else "fun " @+ concat (str " ") args +@ " -> " + body

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
    else if name.[0] = '_' then
      "M" + name
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

  let moduleType name content =
    concat newline [
      tprintf "module type %s = sig" name
      indent content
      str "end"
    ]

  let functor_ name moduleName moduleType content =
    concat newline [
      tprintf "module %s (%s: " name moduleName + moduleType +@ ") : sig"
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

type Variance = Covariant | Contravariant | Invariant with
  static member (~-) (v: Variance) =
    match v with
    | Covariant -> Contravariant
    | Contravariant -> Covariant
    | Invariant -> Invariant

type EmitTypeFlags = {
  resolveUnion: bool
  needParen: bool
  variance: Variance
  failContravariantTypeVar: bool
  skipAttributesOnContravariantPosition: bool
}

module EmitTypeFlags =
  let defaultValue =
    {
      resolveUnion = true
      needParen = false
      variance = Covariant
      failContravariantTypeVar = false
      skipAttributesOnContravariantPosition = false
    }

let treatEnum (flags: EmitTypeFlags) ctx (cases: Set<Choice<EnumCase, Literal>>) =
  between "[" "]" (concat (str " | ") [
    for c in Set.toSeq cases do
      let name, value =
        match c with
        | Choice1Of2 e -> str e.name, e.value
        | Choice2Of2 l -> "L_" @+ literalToIdentifier ctx l, Some l
      let attr =
        match value with
        | _ when flags.skipAttributesOnContravariantPosition && flags.variance = Contravariant -> empty
        | Some v -> Attr.js (literal v)
        | None -> empty
      yield pv_head @+ name + attr
  ]) +@ " [@js.enum]" |> between "(" ")"

let rec emitTypeImpl (flags: EmitTypeFlags) (overrideFunc: (Context -> Type -> text) -> Context -> Type -> text option) (ctx: Context) (ty: Type) : text =
  match overrideFunc (emitTypeImpl flags overrideFunc) ctx ty with
  | Some t -> t
  | None ->
    match ty with
    | App (t, ts) ->
      let ts =
        match t with
        | Ident { fullName = Some fn } ->
          match lookupFullName ctx fn with
          | AliasName { typeParams = typrms; erased = false }
          | ClassName { typeParams = typrms } ->
            assignTypeParams fn typrms ts
              (fun _ t -> t)
              (fun tv ->
                match tv.defaultType with
                | Some t -> t
                | None -> failwithf "emitTypeImpl: insufficient type params for type '%s'" (String.concat "." fn))
          | _ -> ts
        | _ -> ts
      tyApp (emitTypeImpl flags overrideFunc ctx t) (List.map (emitTypeImpl { flags with needParen = true } overrideFunc ctx) ts)
    | Ident i ->
      match i.fullName with
      | Some fn ->
        match lookupFullName ctx fn with
        | AliasName ta when ta.erased -> emitTypeImpl flags overrideFunc ctx ta.target
        | _ -> str (Naming.flattenedLower fn)
      | None -> str (Naming.structured i.name + ".t")
    | TypeVar v ->
      if flags.failContravariantTypeVar && flags.variance = Contravariant then
        commentStr (sprintf "FIXME: contravariant type variable '%s'" v) + any_t
      else
        tprintf "'%s" v
    | Prim p ->
      match p with
      | Null -> tyApp null_t [never_t] | Undefined -> tyApp undefined_t [never_t] | Object -> any_t
      | String -> string_t | Bool -> boolean_t | Number -> number_t
      | UntypedFunction -> any_t | Array -> array_t | Date -> date_t | Error -> error_t
      | RegExp -> regexp_t | Symbol -> symbol_t | Promise -> promise_t
      | Never -> never_t | Any -> any_t | Unknown -> unknown_t | Void -> void_t
      | ReadonlyArray -> readonlyArray_t
    | TypeLiteral l ->
      treatEnum flags ctx (Set.singleton (Choice2Of2 l))
    | Intersection i -> intersection_t (i.types |> List.map (emitTypeImpl flags overrideFunc ctx))
    | Union u ->
      if not flags.resolveUnion then
        union_t (u.types |> List.map (emitTypeImpl flags overrideFunc ctx))
      else
        let ru = resolveUnion ctx u
        let flags = { flags with needParen = true }
        let skipOnContravariant text =
          if flags.skipAttributesOnContravariantPosition && flags.variance = Contravariant then empty
          else text
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
              | None -> TypeofableType.toType x |> emitTypeImpl flags overrideFunc ctx |> Some
              | Some t -> emitOr x t |> Some
            | x :: rest -> go rest |> Option.map (emitOr x)
          Set.toList ts |> go
        let treatArray (arr: Set<Type> option) t =
          match arr with
          | None -> t
          | Some ts ->
            // TODO: think how to map multiple array cases properly
            let u = emitTypeImpl flags overrideFunc ctx (Union { types = Set.toList ts })
            match t with
            | None -> Some u
            | Some t -> or_ (tyApp array_t [u]) t |> Some
        let treatDU (tagName: string) (cases: Map<Literal, Type>) =
          between "[" "]" (concat (str " | ") [
            for (l, t) in Map.toSeq cases do
              let name = pv_head @+ "U_" @+ literalToIdentifier ctx l
              let ty = emitTypeImpl { flags with resolveUnion = false } overrideFunc ctx t
              let body = tprintf "%A of %A " name ty
              yield body + skipOnContravariant (Attr.js (literal l))
          ]) + tprintf " [@js.union on_field \"%s\"]" tagName |> between "(" ")"
        let treatOther otherTypes =
          let rec go = function
            | [] -> failwith "impossible_emitResolvedUnion_treatOther_go"
            | t :: [] -> emitTypeImpl flags overrideFunc ctx t
            | t :: ts -> or_ (emitTypeImpl flags overrideFunc ctx t) (go ts)
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
              enum_or (typeofable |> TypeofableType.toType |> emitTypeImpl flags overrideFunc ctx)
                      (treatEnum flags ctx (Set.ofList cases))
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
          | true, false, false -> Some (treatEnum flags ctx ru.caseEnum)
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
    | AnonymousInterface a -> anonymousInterfaceToIdentifier ctx a
    | PolymorphicThis -> commentStr "FIXME: polymorphic this" + any_t
    | Function f ->
      let rec go acc (args: Choice<FieldLike, Type> list) =
        let flags = { flags with variance = -flags.variance }
        match args with
        | [] -> acc + void_t
        | Choice1Of2 x :: [] when f.isVariadic ->
          assert (not x.isOptional)
          acc + tprintf "%s:" (Naming.variableName x.name) + between "(" ")" (emitTypeImpl flags overrideFunc ctx x.value +@ " [@js.variadic]")
        | Choice2Of2 t :: [] when f.isVariadic ->
          acc + emitTypeImpl flags overrideFunc ctx t +@ " [@js.variadic]"
        | Choice1Of2 x :: xs ->
          let prefix =
            if x.isOptional then "?" else ""
          let ty = emitTypeImpl { flags with needParen = true } overrideFunc ctx x.value
          let t = tprintf "%s%s:" prefix (Naming.variableName x.name) + ty
          if not x.isOptional && List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs
        | Choice2Of2 t :: xs ->
          let t = emitTypeImpl { flags with needParen = true } overrideFunc ctx t
          if List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs
      let lhs = go empty f.args
      let rhs =
        match f.returnType with
        | Prim Void -> void_t
        | Function _ ->
          between "(" ")" (emitTypeImpl flags overrideFunc ctx f.returnType +@ " [@js.dummy]")
        | _ -> emitTypeImpl flags overrideFunc ctx f.returnType
      let result = lhs +@ " -> " + rhs
      if flags.needParen then result |> between "(" ")" else result
    | Tuple ts | ReadonlyTuple ts ->
      tyTuple (ts |> List.map (emitTypeImpl flags overrideFunc ctx))
    | IndexedAccess _ -> failwith "impossible_emitTypeImpl_IndexedAccess"
    | TypeQuery _ -> failwith "impossible_emitTypeImpl_TypeQuery"
    | UnknownType msgo ->
      match msgo with None -> commentStr "FIXME: unknown type" + any_t | Some msg -> commentStr (sprintf "FIXME: unknown type '%s'" msg) + any_t

let inline noOverride _emitType _ctx _ty = None

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
            let_ "intf_of_js" [str "_"; str "x"] (Some (tyApp (str "intf") [str "_"])) (str "x")
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
            let_ "enum_of_js" [str "f"; str "_"; str "e"] (Some (tyApp (str "enum") [str "_"])) (termApp (str "f") [str "e"])
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
  let emitType_ = emitTypeImpl { EmitTypeFlags.defaultValue with failContravariantTypeVar = true } noOverride

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
        let subst = createBindings fn typrms ts
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

let emitMappers ctx emitType tName (typrms: TypeParam list) =
  let t_ty =
    let t_ident =
      Ident { name = [tName]; fullName = Some [tName]; loc = UnknownLocation }
    if List.isEmpty typrms then t_ident
    else App (t_ident, typrms |> List.map (fun typrm -> TypeVar typrm.name))
  let ojs_t_ty = Ident { name = ["Ojs"; "t"]; fullName = Some ["Ojs"; "t"]; loc = UnknownLocation }
  let orf _emitType _ctx ty =
    match ty with
    | App (Ident { name = [n] }, ts) when n = tName ->
      tyApp (str tName) (List.map (_emitType _ctx) ts) |> Some
    | Ident { name = [n] } when n = tName -> Some (str tName)
    | Ident { name = ["Ojs"; "t"] } -> Some (str "Ojs.t")
    | _ -> None
  let emitType_ = emitType orf
  let funTy toJs =
    let mapperArgs =
      typrms |> List.map (fun typrm ->
        if toJs then
          Function { args = [Choice2Of2 (TypeVar typrm.name)]; returnType = ojs_t_ty; isVariadic = false } |> Choice2Of2
        else
          Function { args = [Choice2Of2 ojs_t_ty]; returnType = TypeVar typrm.name; isVariadic = false } |> Choice2Of2
      )
    if toJs then
      Function { args = mapperArgs @ [Choice2Of2 t_ty]; returnType = ojs_t_ty; isVariadic = false }
    else
      Function { args = mapperArgs @ [Choice2Of2 ojs_t_ty]; returnType = t_ty; isVariadic = false }
  [
    val_ (sprintf "%s_to_js" tName) (emitType_ ctx (funTy true))
    val_ (sprintf "%s_of_js" tName) (emitType_ ctx (funTy false))
  ]

let emitUnknownIdentifiers ctx =
  let missingModule =
    let rec f ko (t: Trie<string, Set<int>>) =
      let content =
        concat newline [
          match t.value with
          | None -> ()
          | Some arities ->
            let maxArity = Set.maxElement arities
            let emit arity =
              let name =
                "t" + String.replicate (maxArity - arity) "_"
              let typrm : TypeParam list = [ for i in 1 .. arity do yield { name = sprintf "T%d" i; extends = None; defaultType = None } ]
              [
                yield abstractType name (typrm |> List.map (fun tp -> tprintf "'%s" tp.name))
                yield! emitMappers ctx (emitTypeImpl EmitTypeFlags.defaultValue) name typrm
              ]
            for arity in arities do yield! emit arity
          for k, t in t.childs |> Map.toSeq do
            yield f (Some k) t
        ]
      match ko with
      | None -> content
      | Some k -> moduleSig k content
      
    moduleType "Missing" (f None ctx.unknownIdentifiers)

  if ctx.unknownIdentifiers |> Trie.isEmpty then empty
  else
    concat newline [
      comment (newline + indent (concat newline [
        yield str "unknown identifiers:"
        for name, arities in ctx.unknownIdentifiers |> Trie.toSeq do
          if Set.forall ((=) 0) arities then
            yield (tprintf "- %s" (String.concat "." name))
          else
            let tyargs =
              let minArity = Set.minElement arities
              let maxArity = Set.maxElement arities
              [
                for i = 1 to maxArity do
                  if i <= minArity then yield sprintf "T%d" i
                  else yield sprintf "T%d?" i
              ]
            yield (tprintf "- %s<%s>" (String.concat "." name) (String.concat ", " tyargs))
      ]) + newline)
      Attr.js_stop_start_implem missingModule missingModule
    ]

let emitHeader =
  concat newline [
    str "[@@@ocaml.warning \"-7-11-32-39\"]"
    Attr.js_implem_floating (str "[@@@ocaml.warning \"-7-11-32-39\"]")
  ]

let emitFlattenedDefinitions (ctx: Context) : text =
  let emitType_ = emitTypeImpl { EmitTypeFlags.defaultValue with failContravariantTypeVar = true } noOverride

  let genJsCustomMapper (typrms: TypeParam list) =
    let body =
      if List.isEmpty typrms then str "Obj.magic"
      else
        let args = typrms |> List.map (fun tp -> tprintf "_%s" tp.name)
        between "(" ")" (termFun args (str "Obj.magic"))
    record [ "of_js", body; "to_js", body ]

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
            yield def + newline + Attr.js_custom_typ (genJsCustomMapper a.typeParams)
        ]
      )

      let f prefix (k: string list, v: Statement) =
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
            yield def + newline + Attr.js_custom_typ (genJsCustomMapper c.typeParams)
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
  let emitType = emitTypeImpl { EmitTypeFlags.defaultValue with skipAttributesOnContravariantPosition = true }
  let emitType_ = emitType noOverride

  let emitTypeAliases (typrms: TypeParam list) target =
    let tyargs = typrms |> List.map (fun x -> tprintf "'%s" x.name)
    [
      yield typeAlias "t" tyargs target
      yield! emitMappers ctx emitType "t" typrms
      let rec go i tyargs typrms =
        match tyargs, typrms with
        | _ :: tyargs, { defaultType = Some ty } :: typrms ->
          let target' =
            let t' = tprintf "t%s" (String.replicate (i-1) "_")
            let tyText = emitType_ ctx ty
            tyApp t' (List.rev (tyText :: tyargs))
          let tName = sprintf "t%s" (String.replicate i "_")
          [
            yield  typeAlias tName (List.rev tyargs) target'
            yield! emitMappers ctx emitType tName typrms
            yield! go (i+1) tyargs typrms
          ]
        | _, _ -> []
      yield! go 1 (List.rev tyargs) (List.rev typrms)
    ]

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
            concat newline [
              yield! emitTypeAliases typeParams (emitTypeName k tyargs)
            ]
          )
      ]
    | EnumDef _ -> failwith "impossible_emitStructuredDefinitions_EnumDef"
    | Value v ->
      concat newline [
        yield val_ (Naming.variableName v.name) (emitType_ ctx v.typ) + str " " + Attr.js_global v.name
      ]
    | ClassDef c ->
      let tyargs = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)

      let name, selfTy, selfTyText, isSelfTy, isAnonymous =
        match c.name with
        | Some n ->
          let k = List.rev (n :: ctx.currentNamespace)
          let ident = { name = [n]; fullName = Some k; loc = UnknownLocation }
          let selfTy = 
            if List.isEmpty c.typeParams then Ident ident
            else App (Ident ident, List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams)
          n,
          selfTy,
          emitTypeName k tyargs,
          (function Ident { fullName = Some fn } when k = fn -> true | _ -> false),
          false
        | None ->
          match ctx.anonymousInterfacesMap |> Map.tryFind c with
          | Some i ->
            sprintf "AnonymousInterface%d" i,
            AnonymousInterface c,
            tprintf "anonymous_interface_%d" i,
            (fun t -> t = AnonymousInterface c),
            true
          | None -> failwith "impossible_emitStructuredDefinitions_ClassDef"

      let orf _emitType _ctx ty =
        if isSelfTy ty then Some (str "t")
        else
          match ty with
          | PolymorphicThis -> Some (_emitType ctx selfTy)
          | _ -> None
      let emitType_ ctx ty = emitType orf ctx ty

      let removeLabels (xs: Choice<FieldLike, Type> list) =
        xs |> List.map (function Choice2Of2 t -> Choice2Of2 t | Choice1Of2 fl -> Choice2Of2 fl.value)

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
              let ft = { ft with args = Choice2Of2 selfTy :: ft.args }
              Function ft, Attr.js_call name
          yield val_ (Naming.variableName name) (emitType_ ctx ty) + str " " + attr
        | Getter fl | Field (fl, ReadOnly, _) ->
          let fl =
            if fl.value <> Prim Void then fl
            else
              eprintf "warn: the field/getter '%s' of type '%s' has type 'void' and treated as 'unknown'" fl.name name
              { fl with value = Prim Unknown }
          let ty =
            let args =
              if ma.isStatic then [Choice2Of2 (Prim Void)]
              else [Choice2Of2 selfTy]
            let ret =
              if fl.isOptional then Union { types = [fl.value; Prim Undefined] }
              else fl.value
            Function { isVariadic = false; args = args; returnType = ret }
          yield val_ ("get_" + fl.name) (emitType_ ctx ty) + str " " + Attr.js_get fl.name
        | Setter fl | Field (fl, WriteOnly, _) ->
          let fl =
            if fl.value <> Prim Void then fl
            else
              eprintf "warn: the field/setter '%s' of type '%s' has type 'void' and treated as 'unknown'" fl.name name
              { fl with value = Prim Unknown }
          let ty =
            let args =
              if ma.isStatic then [Choice2Of2 fl.value]
              else [Choice2Of2 selfTy; Choice2Of2 fl.value]
            Function { isVariadic = false; args = args; returnType = Prim Void }
          yield val_ ("set_" + fl.name) (emitType_ ctx ty) + str " " + Attr.js_set fl.name
        | Field (fl, Mutable, _) ->
          yield! emitMember ma (Getter fl)
          yield! emitMember ma (Setter fl)
        | FunctionInterface (ft, _) ->
          let ft = { ft with args = Choice2Of2 selfTy :: ft.args }
          yield val_ "apply" (emitType_ ctx (Function ft)) + str " " + Attr.js_apply
        | Indexer (ft, ReadOnly) ->
          let ft = { ft with args = Choice2Of2 selfTy :: removeLabels ft.args }
          yield val_ "get" (emitType_ ctx (Function ft)) + str " " + Attr.js_index_get
        | Indexer (ft, WriteOnly) ->
          let ft =
            { args = Choice2Of2 selfTy :: removeLabels ft.args @ [ Choice2Of2 ft.returnType ]
              isVariadic = false;
              returnType = Prim Void }
          yield val_ "set" (emitType_ ctx (Function ft)) + str " " + Attr.js_index_set
        | Indexer (ft, Mutable) ->
          yield! emitMember ma (Indexer (ft, ReadOnly))
          yield! emitMember ma (Indexer (ft, WriteOnly))
        | New _ -> ()
      ]

      let members = [
        for ma, m in c.members do yield! emitMember ma m
      ]

      if List.isEmpty members || isAnonymous then
        moduleSig name (concat newline [
          yield! emitTypeAliases c.typeParams selfTyText
          yield! members
        ])
      else
        concat newline [
          yield
            moduleScopeSig name (Naming.moduleName name) (concat newline [
              yield! emitTypeAliases c.typeParams selfTyText
              yield! members
            ])
        ]


  concat newline [
    yield open_ [ ctx.internalModuleName ]
    yield open_ [ "AnonymousInterfaces"; "Types" ]

    for c, _ in ctx.anonymousInterfacesMap |> Map.toSeq do
      yield go ctx (ClassDef c)

    for stmt in stmts do yield go ctx stmt
  ]

let emitAll ctx stmts =
  concat newline [
    yield emitHeader
    yield empty
    yield emitUnknownIdentifiers ctx
    yield empty

    let defs = [ 
      emitFlattenedDefinitions ctx
      empty
      emitStructuredDefinitions ctx stmts
    ]
    if Trie.isEmpty ctx.unknownIdentifiers then
      yield! defs
    else
      yield
        functor_ "Make" "M" (str "Missing") (concat newline [
          yield  open_ ["M"]
          yield! defs
        ])
  ]