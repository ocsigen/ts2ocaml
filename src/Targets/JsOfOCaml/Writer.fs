module Target.JsOfOCaml.Writer

open System
open Syntax
open Typer
open Text

open Target.JsOfOCaml.Common

module Utils =
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

  let js_apply is_newable = attr Block (if is_newable then "js.apply_newable" else "js.apply") empty

  let js_global name = attr Block "js.global" (str' name)

[<RequireQualifiedAccess>]
module Ppx =
  let js body = "[%js: " @+ newline + indent body + newline +@ "]"

  let include_ body = "include " @+ js body

  let module_  name body = tprintf "module %s = " name + js body

module Type =
  // prim types that are JS-able and defined as interface in typescript/lib/lib.*.d.ts
  let jsablePrimTypeInterfaces =
    Map.ofList [
      "String",  String
      "Boolean", Bool
      "Number",  Number
      "Array",   Array
      "ReadonlyArray", Array
    ]

  let nonJsablePrimTypeInterfaces =
    Map.ofList [
      "Object", Object
      "Function", UntypedFunction
      "Symbol", Symbol
      "RegExp", RegExp
      "BigInt", BigInt
    ]

  // JS-able OCaml types
  let void_t = str "unit"
  let string_t  = str "string"
  let boolean_t = str "bool"
  let number_t  = str "float"
  let array_t   = str "list"
  let readonlyArray_t = str "list"

  // JS only types
  // ES5
  let object_t  = str "untyped_object"
  let function_t = str "untyped_function"
  let symbol_t  = str "symbol"
  let regexp_t  = str "regexp"
  // ES2020
  let bigint_t = str "bigint"

  // TS types
  let never_t   = str "never"
  let any_t     = str "any"
  let unknown_t = str "unknown"
  let null_t           = str "or_null"
  let undefined_t      = str "or_undefined"
  let null_undefined_t = str "or_null_or_undefined"

  // gen_js_api types
  let ojs_t = str "Ojs.t"

  // our types
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

  let intf  = str "intf"
  let enum baseType cases = tyApp (str "enum") [baseType; cases]

  let and_ a b = tyApp (str "and_") [a; b]
  let or_  a b = tyApp (str "or_")  [a; b]

  let string_or t  = tyApp (str "or_string") [t]
  let number_or t  = tyApp (str "or_number") [t]
  let boolean_or t = tyApp (str "or_boolean") [t]
  let symbol_or t  = tyApp (str "or_symbol") [t]
  let bigint_or t  = tyApp (str "or_bigint") [t]

  let array_or elemT t = tyApp (str "or_array") [t; elemT]
  let enum_or cases t = tyApp (str "or_enum") [t; cases]

  let union_t types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> or_ (go (i-1) t) h
        | xs -> tyApp (tprintf "union%i" i) xs
      go l types

  let intersection_t types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> and_ (go (i-1) t) h
        | xs -> tyApp (tprintf "intersection%i" i) xs
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

  let pureJSExpr (js: string) =
    termApp (str "Ts2ocaml_baselib.pure_js_expr") [literal (LString js)]

open Type
open Term

module Naming =
  let ourReservedNames =
    set [
      "create"; "apply"; "get"; "set"; "cast"
    ]

  let reservedNames =
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
      if String.forall (fun c -> Char.IsLower c |> not) name then
        name.ToLowerInvariant()
      else if Char.IsUpper name.[0] then
        sprintf "%c%s" (Char.ToLower name.[0]) name.[1..]
      else name
    if reservedNames |> Set.contains result then result + "_" else result

  let moduleName (name: string) =
    let name = removeInvalidChars name
    if Char.IsLower name.[0] then
      sprintf "%c%s" (Char.ToUpper name.[0]) name.[1..]
    else if name.[0] = '_' then
      "M" + name
    else name

  let constructorName (name: string list) =
    let s = String.concat "_" name |> removeInvalidChars
    if Char.IsLower s.[0] then
      sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]
    else s

  let flattenedTypeName (name: string list) =
    let s = String.concat "_" name |> removeInvalidChars
    let result =
      if Char.IsUpper s.[0] then "_" + s
      else s
    if reservedNames |> Set.contains result then result + "_" else result

  let structuredTypeName (name: string list) =
    name
    |> List.map removeInvalidChars
    |> List.map (fun s -> sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..])
    |> String.concat "."

  let createTypeNameOfArity arity maxArityOpt name =
    match maxArityOpt with
    | Some maxArity ->
      if arity = maxArity then name
      else sprintf "%s_%d" name arity
    | None -> sprintf "%s_%d" name arity

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
  // https://github.com/ocaml/ocaml/issues/5745
  let escapeDoubleQuote (lines: string list) =
    let dqCount =
      lines |> List.sumBy (fun (s: string) -> s.ToCharArray() |> Array.sumBy (function '"' -> 1 | _ -> 0))
    if dqCount % 2 = 0 then lines
    else lines @ ["\""]

  let escape (lines: string list) =
    lines
    |> List.map (String.escapeWith ["{"; "}"; "["; "]"; "@"])
    |> List.map (String.replace "*)" "* )")
    |> escapeDoubleQuote

  match c with
  | Description lines | Summary lines -> strLines (escape lines)
  | Param (name, lines) -> tprintf "@param %s " name + strLines (escape lines)
  | Return lines -> "@return " @+ strLines (escape lines)
  | Deprecated lines -> "@deprecated " @+ strLines (escape lines)
  | Example lines ->
    concat newline [
      str "example:"
      between "[" "]" (strLines (escape lines))
    ]
  | See (link, lines) -> tprintf "@see \"%s\" " link + strLines (escape lines)
  | Other ("author", lines, _) -> "@author " @+ strLines (escape lines)
  | Other ("since", lines, _) -> "@since " @+ strLines (escape lines)
  | Other ("version", lines, _) -> "@version " @+ strLines (escape lines)
  | Other (("throws" | "exception"), lines, _) -> "@raise exn " @+ strLines (escape lines)
  | Other (tag, lines, _) -> tprintf "%s: " tag + strLines (escape lines)

let literalToIdentifier (ctx: Context<Options>) (l: Literal) : text =
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

let anonymousInterfaceToIdentifier (ctx: Context<Options>) (c: Class) : text =
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
  avoidTheseArgumentNames: Set<string>
  forceVariadic: bool
  hasTypeArgumentsHandled: bool
}

module EmitTypeFlags =
  let defaultValue =
    {
      resolveUnion = true
      needParen = false
      variance = Covariant
      failContravariantTypeVar = false
      skipAttributesOnContravariantPosition = false
      avoidTheseArgumentNames = Set.empty
      forceVariadic = false
      hasTypeArgumentsHandled = false
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

let rec emitTypeImpl (flags: EmitTypeFlags) (overrideFunc: (Context<Options> -> Type -> text) -> Context<Options> -> Type -> text option) (ctx: Context<Options>) (ty: Type) : text =
  match overrideFunc (emitTypeImpl flags overrideFunc) ctx ty with
  | Some t -> t
  | None ->
    match ty with
    | App (APrim Array, ts, _) when flags.forceVariadic ->
      tyApp array_t (List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false } overrideFunc ctx) ts)
    | App (APrim ReadonlyArray, ts, _) when flags.forceVariadic ->
      tyApp readonlyArray_t (List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false } overrideFunc ctx) ts)
    | _ when flags.forceVariadic ->
      commentStr (sprintf "FIXME: type '%s' cannot be used for variadic argument" (Type.pp ty)) + tyApp array_t [any_t]
    | App (t, ts, loc) ->
      let emit t ts =
        tyAppOpt (emitTypeImpl { flags with hasTypeArgumentsHandled = true } overrideFunc ctx t) (List.map (emitTypeImpl { flags with needParen = true } overrideFunc ctx) ts)
      match t with
      | AIdent { fullName = Some fn } ->
        let ts =
          FullName.tryLookupWith ctx fn (function
            | AliasName { typeParams = typrms; erased = false }
            | ClassName { typeParams = typrms } ->
              assignTypeParams fn loc typrms ts
                (fun _ t -> t)
                (fun tv ->
                  match tv.defaultType with
                  | Some t -> t
                  | None -> failwithf "emitTypeImpl: insufficient type params for type '%s'" (String.concat "." fn))
              |> Some
            | _ -> None
          ) |> Option.defaultValue ts
        emit (Type.ofAppLeftHandSide t) ts
      | AIdent { name = name; fullName = None } ->
        let lhs =
          str (Naming.structuredTypeName name + "." + Naming.createTypeNameOfArity (List.length ts) None "t")
        tyAppOpt lhs (List.map (emitTypeImpl { flags with needParen = true } overrideFunc ctx) ts)
      | APrim _ | AAnonymousInterface _ -> emit (Type.ofAppLeftHandSide t) ts
    | Ident i ->
      match i.fullName with
      | Some fn ->
        FullName.tryLookupWith ctx fn (function
          | AliasName { target = target; erased = true } -> emitTypeImpl flags overrideFunc ctx target |> Some
          | AliasName { typeParams = typrms; erased = false }
          | ClassName { typeParams = typrms } when not (List.isEmpty typrms) && not flags.hasTypeArgumentsHandled ->
            emitTypeImpl flags overrideFunc ctx (App (AIdent i, [], i.loc)) |> Some
          | _ -> None
        ) |> Option.defaultWith (fun () -> str (Naming.flattenedTypeName fn))
      | None ->
        str (Naming.structuredTypeName i.name + "." + Naming.createTypeNameOfArity 0 None "t")
    | TypeVar v ->
      if flags.failContravariantTypeVar && flags.variance = Contravariant then
        commentStr (sprintf "FIXME: contravariant type variable '%s'" v) + any_t
      else
        tprintf "'%s" v
    | Prim p ->
      match p with
      | Null -> tyApp null_t [never_t] | Undefined -> tyApp undefined_t [never_t]
      | String -> string_t | Bool -> boolean_t | Number -> number_t
      | Object -> object_t | UntypedFunction -> function_t
      | RegExp -> regexp_t | Symbol -> symbol_t
      | Never -> never_t | Any -> any_t | Unknown -> unknown_t | Void -> void_t
      | Array -> array_t | ReadonlyArray -> readonlyArray_t
      | BigInt -> bigint_t
    | TypeLiteral l ->
      treatEnum flags ctx (Set.singleton (Choice2Of2 l))
    | Intersection i ->
      let flags = { flags with needParen = true }
      intersection_t (i.types |> List.distinct |> List.map (emitTypeImpl flags overrideFunc ctx))
    | Union u ->
      let flags = { flags with needParen = true }
      let safe_union_t = function
        | [] -> failwith "union type with only zero types"
        | [t] -> t
        | ts -> union_t ts
      if not flags.resolveUnion then
        safe_union_t (u.types |> List.distinct |> List.map (emitTypeImpl flags overrideFunc ctx))
      else
        let ru = ResolvedUnion.resolve ctx u
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
            | TBigInt -> bigint_or t
          let rec go = function
            | [] -> t
            | [x] ->
              match t with
              | None -> TypeofableType.toType x |> emitTypeImpl flags overrideFunc ctx |> Some
              | Some t -> Some (emitOr x t)
            | x :: rest -> go rest |> Option.map (emitOr x)
          Set.toList ts |> go
        let treatArray (arr: Set<Type> option) t =
          match arr with
          | None -> t
          | Some ts ->
            // TODO: think how to map multiple array cases properly
            let elemT = emitTypeImpl flags overrideFunc ctx (Union { types = Set.toList ts })
            match t with
            | None -> Some (tyApp array_t [elemT])
            | Some t -> Some (array_or elemT t)
        let treatDU (tagName: string) (cases: Map<Literal, Type>) =
          between "[" "]" (concat (str " | ") [
            for (l, t) in Map.toSeq cases do
              let name = pv_head @+ "U_" @+ literalToIdentifier ctx l
              let ty = emitTypeImpl { flags with resolveUnion = false } overrideFunc ctx t
              let body = tprintf "%A of %A " name ty
              yield body + skipOnContravariant (Attr.js (literal l))
          ]) + tprintf " [@js.union on_field \"%s\"]" tagName |> between "(" ")"
        let treatOther otherTypes =
          if Set.isEmpty otherTypes then
            failwith "impossible_emitResolvedUnion_treatOther_go"
          else
            otherTypes |> Set.toList |> List.map (emitTypeImpl flags overrideFunc ctx) |> safe_union_t
        let treatEnumOr (cases: Set<Choice<EnumCase, Literal>>) t =
          if Set.isEmpty cases then t
          else enum_or (treatEnum flags ctx cases) t
        let treatDUMany du =
          if Map.isEmpty du then
            failwith "impossible_emitResolvedUnion_baseType_go"
          else
            Map.toList du
            |> List.map (fun (tagName, cases) -> treatDU tagName cases)
            |> safe_union_t
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
    | Intrinsic -> ojs_t
    | Function f ->
      let renamer = new OverloadRenamer(used=(flags.avoidTheseArgumentNames |> Set.map (fun s -> "value", s)))
      let inline rename x = renamer.Rename "value" x
      let rec go acc (args: Choice<FieldLike, Type> list) =
        let flags = { flags with variance = -flags.variance }
        match args with
        | [] -> acc + void_t
        | Choice1Of2 x :: [] when f.isVariadic ->
          assert (not x.isOptional)
          acc + tprintf "%s:" (Naming.valueName x.name |> rename) + between "(" ")" (emitTypeImpl { flags with forceVariadic = true } overrideFunc ctx x.value +@ " [@js.variadic]")
        | Choice2Of2 t :: [] | Choice1Of2 { value = t } :: [] when f.isVariadic ->
          acc + between "(" ")" (emitTypeImpl { flags with forceVariadic = true } overrideFunc ctx t +@ " [@js.variadic]")
        | Choice1Of2 x :: xs ->
          let prefix =
            if x.isOptional then "?" else ""
          let ty = emitTypeImpl { flags with needParen = true } overrideFunc ctx x.value
          let t = tprintf "%s%s:" prefix (Naming.valueName x.name |> rename) + ty
          if not x.isOptional && List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs
        | Choice2Of2 t :: xs | Choice1Of2 { value = t } :: xs ->
          let t = emitTypeImpl { flags with needParen = true } overrideFunc ctx t
          if List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs
      let lhs = go empty f.args
      let rhs =
        let argNames =
          f.args |> List.choose (function Choice1Of2 x -> Some x.name | Choice2Of2 _ -> None) |> Set.ofList
        let x = emitTypeImpl { flags with needParen = false; avoidTheseArgumentNames = argNames } overrideFunc ctx f.returnType
        match f.returnType with
        | Function _ -> between "(" ")" (x +@ " [@js.dummy]")
        | _ -> x
      let result = lhs +@ " -> " + rhs
      if flags.needParen then result |> between "(" ")" else result
    | Tuple ts ->
      // TODO: emit label
      match ts.types with
      | []  -> void_t
      | [t] -> emitTypeImpl flags overrideFunc ctx t.value
      | ts  -> tyTuple (ts |> List.map (fun x -> emitTypeImpl flags overrideFunc ctx x.value))
    | Erased (_, loc) -> failwithf "impossible_emitTypeImpl_erased: %s" loc.AsString
    | UnknownType msgo ->
      match msgo with None -> commentStr "FIXME: unknown type" + any_t | Some msg -> commentStr (sprintf "FIXME: unknown type '%s'" msg) + any_t

let inline noOverride _emitType _ctx _ty = None

let emitCase name args =
  match args with
  | [] -> str (Naming.constructorName name)
  | [arg] -> tprintf "%s of %A" (Naming.constructorName name) arg
  | _ -> tprintf "%s of %A" (Naming.constructorName name) (tyTuple args)

let genJsCustomMapper (typrms: TypeParam list) =
  let body =
    if List.isEmpty typrms then str "Obj.magic"
    else
      let args = typrms |> List.map (fun tp -> tprintf "_%s" tp.name)
      between "(" ")" (termFun args (str "Obj.magic"))
  record [ "of_js", body; "to_js", body ]

let emitTypeName name args =
  if List.isEmpty args then str (Naming.flattenedTypeName name)
  else tyApp (str (Naming.flattenedTypeName name)) args

let emitMappers ctx emitType tName (typrms: TypeParam list) =
  let t_ty =
    let t_ident =
      { name = [tName]; fullName = Some [tName]; loc = UnknownLocation }
    if List.isEmpty typrms then Ident t_ident
    else App (AIdent t_ident, typrms |> List.map (fun typrm -> TypeVar typrm.name), UnknownLocation)
  let ojs_t_ty = Ident { name = ["Ojs"; "t"]; fullName = Some ["Ojs"; "t"]; loc = UnknownLocation }
  let orf _emitType _ctx ty =
    match ty with
    | App (AIdent { name = [n] }, ts, _) when n = tName ->
      tyApp (str tName) (List.map (_emitType _ctx) ts) |> Some
    | Ident { name = [n] } when n = tName -> Some (str tName)
    | Ident { name = ["Ojs"; "t"] } -> Some (str "Ojs.t")
    | _ -> None
  let emitType_ = emitType orf
  let funTy toJs =
    let mapperArgs =
      typrms |> List.map (fun typrm ->
        if toJs then
          Function { args = [Choice2Of2 (TypeVar typrm.name)]; returnType = ojs_t_ty; isVariadic = false; loc = UnknownLocation } |> Choice2Of2
        else
          Function { args = [Choice2Of2 ojs_t_ty]; returnType = TypeVar typrm.name; isVariadic = false; loc = UnknownLocation } |> Choice2Of2
      )
    if toJs then
      Function { args = mapperArgs @ [Choice2Of2 t_ty]; returnType = ojs_t_ty; isVariadic = false; loc = UnknownLocation }
    else
      Function { args = mapperArgs @ [Choice2Of2 ojs_t_ty]; returnType = t_ty; isVariadic = false; loc = UnknownLocation }
  [
    val_ (sprintf "%s_to_js" tName) (emitType_ ctx (funTy true))
    val_ (sprintf "%s_of_js" tName) (emitType_ ctx (funTy false))
  ]

let emitHeader =
  concat newline [
    str "[@@@ocaml.warning \"-7-11-32-33-39\"]"
    Attr.js_implem_floating (str "[@@@ocaml.warning \"-7-11-32-33-39\"]")
  ]

/// `Choice2Of2` when it is an alias to a non-JSable prim type.
let getLabelsOfFullName (ctx: Context<Options>) (fullName: string list) (c: Class) =
  let emitType_ = emitTypeImpl { EmitTypeFlags.defaultValue with failContravariantTypeVar = true } noOverride
  let normalClass () =
    [
      for e in getAllInheritancesAndSelfFromName ctx fullName do
        match e with
        | InheritingType.KnownIdent i ->
          if i.tyargs |> List.isEmpty then
            yield tprintf "%s%s" pv_head (Naming.constructorName i.fullName)
          else
            yield str pv_head + emitCase i.fullName (i.tyargs |> List.map (emitType_ ctx))
        | InheritingType.ImportedIdent i ->
          yield str (Naming.structuredTypeName (i.name @ ["tags"]))
        | InheritingType.UnknownIdent i ->
          yield str (Naming.structuredTypeName (i.name @ ["tags"]))
        | InheritingType.Prim (p, ts) ->
          match p.AsJSClassName with
          | Some name ->
            if List.isEmpty ts then
              yield tprintf "%s%s" pv_head name
            else
              yield str pv_head + emitCase [name] (ts |> List.map (emitType_ ctx))
          | None -> ()
        | InheritingType.Other _ -> ()
    ]
  match fullName with
  | [name] when ctx.options.generateStdlib && Map.containsKey name nonJsablePrimTypeInterfaces && c.typeParams |> List.isEmpty ->
    let prim = nonJsablePrimTypeInterfaces |> Map.find name
    Choice2Of2 (prim, tprintf "%s%s" pv_head name)
  | _ -> Choice1Of2 (normalClass ())

let emitFlattenedDefinitions (ctx: Context<Options>) : text =
  let emitType_ = emitTypeImpl { EmitTypeFlags.defaultValue with failContravariantTypeVar = true } noOverride

  moduleSig ctx.internalModuleName (
    concat newline [
      moduleSig "AnonymousInterfaces" (
        concat newline [
          for (a, _) in ctx.anonymousInterfacesMap |> Map.toSeq do
            let i = anonymousInterfaceToIdentifier ctx a
            let def =
              typeAlias
                (Text.toString 0 i)
                (a.typeParams |> List.map (fun x -> tprintf "'%s" x.name))
                (tyApp intf [between "[" "]" (str pv_head + i)])
            yield def + newline + Attr.js_custom_typ (genJsCustomMapper a.typeParams)
        ]
      )

      let f prefix (k: string list, v: Statement) =
        match v with
        | EnumDef e ->
          concat newline [
            yield commentStr e.loc.AsString
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
              tprintf "%s %s = " prefix (Naming.flattenedTypeName k)
                + treatEnum e.cases
            for c in e.cases do
              yield tprintf "and %s = %A" (Naming.flattenedTypeName (k @ [c.name])) (treatEnum [c])
          ] |> Some
        | ClassDef c ->
          let typrm = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
          match getLabelsOfFullName ctx k c with
          | Choice1Of2 labels ->
            concat newline [
              yield commentStr c.loc.AsString
              let def =
                tprintf "%s %A = " prefix (emitTypeName k typrm)
                + tyApp intf [
                  between "[" "]" (
                    concat (str " | ") labels
                  )
                ]
              yield def + newline + Attr.js_custom_typ (genJsCustomMapper c.typeParams)
            ] |> Some
          | Choice2Of2 (prim, _) ->
            let target =
              match c.typeParams with
              | [] -> Prim prim
              | _  -> App (APrim prim, c.typeParams |> List.map (fun tp -> TypeVar tp.name), UnknownLocation)
            tprintf "%s %A = " prefix (emitTypeName k typrm) + (emitType_ ctx target) |> Some
          // TODO: emit extends of type parameters
        | TypeAlias { erased = false; typeParams = typeParams; target = target; loc = loc } ->
          let typrm = typeParams |> List.map (fun x -> tprintf "'%s" x.name)
          concat newline [
            commentStr loc.AsString
            tprintf "%s %A = " prefix (emitTypeName k typrm) + emitType_ ctx target
          ] |> Some
          // TODO: emit extends of type parameters
        | Import _
        | Value _
        | Module _
        | TypeAlias { erased = true } -> None
        | Export _
        | UnknownStatement _
        | FloatingComment _ -> failwithf "impossible_emitFlattenedDefinitions(%A)" v

      moduleSig "Types" (
        concat newline [
          yield open_ ["AnonymousInterfaces"]
          let prefix = seq { yield "type"; while true do yield "and" }
          yield!
            ctx.definitionsMap
            |> Trie.toSeq
            |> Seq.collect (fun (k, vs) -> vs |> Seq.map (fun v -> k, v))
            |> Seq.skipWhile (fun t -> f "type" t |> Option.isNone)
            |> Seq.map2 (fun prefix t -> f prefix t) prefix
            |> Seq.choose id
        ]
      )
    ]
  ) + newline

let emitStructuredDefinitions (ctx: Context<Options>) (stmts: Statement list) =
  let (|Dummy|) _ = []
  let emitType = emitTypeImpl { EmitTypeFlags.defaultValue with skipAttributesOnContravariantPosition = true }
  let emitType_ = emitType noOverride

  let emitTypeAliases (typrms: TypeParam list) target =
    let tyargs = typrms |> List.map (fun x -> tprintf "'%s" x.name)
    [
      yield typeAlias "t" tyargs target
      yield! emitMappers ctx emitType "t" typrms
      let arities = getPossibleArity typrms
      for arity in arities |> Set.toSeq |> Seq.sortDescending do
        let name = Naming.createTypeNameOfArity arity None "t"
        let tyargs' = List.take arity tyargs
        let typrms' = List.take arity typrms
        let target =
          tyAppOpt
            (str "t")
            [
              for tyarg in tyargs' do yield tyarg
              for t in typrms |> List.skip arity do
                match t.defaultType with
                | None -> failwith "impossible_emitTypeAliases"
                | Some t -> yield emitType_ ctx t
            ]
        yield typeAlias name tyargs' target
        yield! emitMappers ctx emitType name typrms'
    ]

  let rec go (renamer: OverloadRenamer) (ctx: Context<Options>) (s: Statement) : text =
    let comments =
      match (s :> ICommented<_>).getComments() with
      | [] -> empty
      | xs -> docComment (xs |> List.map emitComment |> concat newline) + newline
    comments +
    match s with
    | Module m ->
      let content =
        concat newline (
          m.statements |> List.map (fun stmt ->
            let renamer = new OverloadRenamer()
            go renamer ({| ctx with currentNamespace = m.name :: ctx.currentNamespace |}) stmt
          )
        )
      if m.statements |> List.forall (function Import _ | Export _ | UnknownStatement _ -> true | _ -> false) then
        moduleSig
          (Naming.moduleName m.name |> renamer.Rename "module")
          content
      else
        moduleScopeSig
          m.name
          (Naming.moduleName m.name |> renamer.Rename "module")
          content
    | Import i ->
      commentStr (sprintf "%A" i) // TODO
    | Export (e, _) ->
      commentStr (sprintf "%A" e) // TODO
    | UnknownStatement (Some s, _) -> commentStr s
    | UnknownStatement (None, _) -> commentStr "unknown statement"
    | FloatingComment xs -> xs |> List.map emitComment |> concat newline |> comment
    | TypeAlias { name = name; typeParams = typeParams } | (EnumDef { name = name } & Dummy typeParams) ->
      let k = List.rev (name :: ctx.currentNamespace)
      let tyargs = typeParams |> List.map (fun x -> tprintf "'%s" x.name)
      concat newline [
        yield
          moduleSig (Naming.moduleName name |> renamer.Rename "module") (
            concat newline [
              yield! emitTypeAliases typeParams (emitTypeName k tyargs)
            ]
          )
      ]
    | EnumDef _ -> failwith "impossible_emitStructuredDefinitions_EnumDef"
    | Value v ->
      concat newline [
        yield val_ (Naming.valueName v.name |> renamer.Rename "value") (emitType_ ctx v.typ) + str " " + Attr.js_global v.name
      ]
    | ClassDef c ->
      let tyargs = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
      let name, selfTy, selfTyText, isSelfTy, isAnonymous =
        let typrms = List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams
        match c.name with
        | Some n ->
          let k = List.rev (n :: ctx.currentNamespace)
          let ident = { name = [n]; fullName = Some k; loc = UnknownLocation }
          let selfTy =
            if List.isEmpty c.typeParams then Ident ident
            else App (AIdent ident, typrms, UnknownLocation)
          n,
          selfTy,
          emitTypeName k tyargs,
          (function Ident { fullName = Some fn } when k = fn -> true | _ -> false),
          false
        | None ->
          match ctx.anonymousInterfacesMap |> Map.tryFind c with
          | Some i ->
            let n = sprintf "AnonymousInterface%d" i
            let k = [sprintf "anonymous_interface_%d" i]
            let selfTy =
              if List.isEmpty c.typeParams then AnonymousInterface c
              else App (AAnonymousInterface c, typrms, UnknownLocation)
            n,
            selfTy,
            emitTypeName k tyargs,
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

      let rec emitMember (renamer: OverloadRenamer) (ma: MemberAttribute) m = [
        match ma.comments with
        | [] -> ()
        | xs ->
          yield docComment (xs |> List.map emitComment |> concat newline)

        let rename s = renamer.Rename "value" s
        match m with
        | Constructor (ft, typrm) ->
          let ty = Function { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy; loc = ft.loc }
          yield val_ (rename "create") (emitType_ ctx ty) + str " " + Attr.js_create
        | New (ft, typrm) ->
          let ft = { ft with args = Choice2Of2 selfTy :: ft.args }
          yield val_ (rename "create") (emitType_ ctx (Function ft)) + str " " + Attr.js_apply true
        | Field ({ name = name; value = Function ft }, _, typrm)
        | Method (name, ft, typrm) ->
          let ty, attr =
            if ma.isStatic then Function ft, Attr.js_global name
            else
              let ft = { ft with args = Choice2Of2 selfTy :: ft.args }
              Function ft, Attr.js_call name
          yield val_ (Naming.valueName name |> rename) (emitType_ ctx ty) + str " " + attr
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
            Function { isVariadic = false; args = args; returnType = ret; loc = UnknownLocation }
          yield val_ ("get_" + Naming.removeInvalidChars fl.name |> rename) (emitType_ ctx ty) + str " " + Attr.js_get fl.name
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
            Function { isVariadic = false; args = args; returnType = Prim Void; loc = UnknownLocation }
          yield val_ ("set_" + Naming.removeInvalidChars fl.name |> rename) (emitType_ ctx ty) + str " " + Attr.js_set fl.name
        | Field (fl, Mutable, _) ->
          yield! emitMember renamer ma (Getter fl)
          yield! emitMember renamer ma (Setter fl)
        | FunctionInterface (ft, _) ->
          let ft = { ft with args = Choice2Of2 selfTy :: ft.args }
          yield val_ (rename "apply") (emitType_ ctx (Function ft)) + str " " + Attr.js_apply false
        | Indexer (ft, ReadOnly) ->
          let ft = { ft with args = Choice2Of2 selfTy :: removeLabels ft.args }
          yield val_ (rename "get") (emitType_ ctx (Function ft)) + str " " + Attr.js_index_get
        | Indexer (ft, WriteOnly) ->
          let ft =
            { args = Choice2Of2 selfTy :: removeLabels ft.args @ [ Choice2Of2 ft.returnType ]
              isVariadic = false;
              returnType = Prim Void;
              loc = ft.loc }
          yield val_ (rename "set") (emitType_ ctx (Function ft)) + str " " + Attr.js_index_set
        | Indexer (ft, Mutable) ->
          yield! emitMember renamer ma (Indexer (ft, ReadOnly))
          yield! emitMember renamer ma (Indexer (ft, WriteOnly))
      ]

      let members = [
        let renamer = new OverloadRenamer()
        for ma, m in c.members do yield! emitMember renamer ma m
        for parent in c.implements do
          let ty = Function { isVariadic = false; args = [Choice2Of2 selfTy]; returnType = parent; loc = UnknownLocation }
          yield val_ ("cast" |> renamer.Rename "value") (emitType_ ctx ty) + str " " + Attr.attr Attr.Category.Block "js.cast" empty
        match c.name with
        | None -> ()
        | Some name ->
          match jsablePrimTypeInterfaces |> Map.tryFind name with
          | None -> ()
          | Some prim ->
            let targetTy =
              if List.isEmpty c.typeParams then Prim prim
              else App (APrim prim, c.typeParams |> List.map (fun tp -> TypeVar tp.name), UnknownLocation)
            let toMlTy = Function { isVariadic = false; args = [Choice2Of2 selfTy]; returnType = targetTy; loc = UnknownLocation }
            let ofMlTy = Function { isVariadic = false; args = [Choice2Of2 targetTy]; returnType = selfTy; loc = UnknownLocation }
            yield val_ ("to_ml" |> renamer.Rename "value") (emitType_ ctx toMlTy) + str " " + Attr.attr Attr.Category.Block "js.cast" empty
            yield val_ ("of_ml" |> renamer.Rename "value") (emitType_ ctx ofMlTy) + str " " + Attr.attr Attr.Category.Block "js.cast" empty
      ]

      if List.isEmpty members || isAnonymous then
        moduleSig (Naming.moduleName name |> renamer.Rename "module") (concat newline [
          yield! emitTypeAliases c.typeParams selfTyText
          yield! members
        ])
      else
        concat newline [
          yield
            moduleScopeSig name (Naming.moduleName name |> renamer.Rename "module") (concat newline [
              yield! emitTypeAliases c.typeParams selfTyText
              yield! members
            ])
        ]

  concat newline [
    yield open_ [ ctx.internalModuleName ]
    yield open_ [ "AnonymousInterfaces"; "Types" ]

    for c, _ in ctx.anonymousInterfacesMap |> Map.toSeq do
      let renamer = new OverloadRenamer()
      yield go renamer ctx (ClassDef c)

    for stmt in stmts do
      let renamer = new OverloadRenamer()
      yield go renamer ctx stmt
  ]

let emitStdlib (srcs: SourceFile list) (opts: Options) =
  let jsSrcs =
    srcs |> List.filter (fun src -> src.fileName.Contains("lib.es") && src.fileName.EndsWith(".d.ts"))

  let domSrcs =
    srcs
    |> List.filter (fun src -> src.fileName.Contains("lib.dom") && src.fileName.EndsWith(".d.ts"))
    |> List.map (fun src ->
        { src with statements = [ Module { name = "dom"; isExported = Exported.No; isNamespace = false; statements = src.statements; comments = [] } ]})

  failwith "TODO"

let emitEverythingCombined (srcs: SourceFile list) (opts: Options) =
  let srcs =
    match srcs with
    | [] | _ :: [] -> srcs
    | _ ->
      let combinedName, moduleName =
        match srcs |> List.tryFind (fun src -> src.fileName.EndsWith "index.d.ts") with
        | Some index ->
          eprintfn "info: using index.d.ts as an entrypoint"
          index.fileName, index.moduleName
        | None ->
          eprintfn "info: treating everything as combined into lib.d.ts"
          "lib.d.ts", None
      [
        { fileName = combinedName
          statements = srcs |> List.collect (fun src -> src.statements)
          references = srcs |> List.collect (fun src -> src.references) |> List.distinct
          hasNoDefaultLib = srcs |> List.exists (fun src -> src.hasNoDefaultLib)
          moduleName = moduleName }
      ]

  eprintf "* running typer..."
  let ctx, srcs = Typer.runAll srcs {| verbose = opts.verbose |}
  let ctx = ctx |> Context.mapOptions (fun _ -> opts)
  let stmts = srcs |> List.collect (fun x -> x.statements)

  eprintf "* emitting a binding for js_of_ocaml..."
  concat newline [
    yield emitHeader
    yield open_ [ "Ts2ocaml_baselib" ]

    let defs = [
      emitFlattenedDefinitions ctx
      emitStructuredDefinitions ctx stmts
    ]
    if Trie.isEmpty ctx.unknownIdentTypes then
      yield! defs
    else
      yield
        functor_ "Make" "M" (str "Missing") (concat newline [
          yield  open_ ["M"]
          yield! defs
        ])
  ]
