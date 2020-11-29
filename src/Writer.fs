module Writer

open System
open Syntax
open Typer
open Text

module Utils =
  let comment text = between "(* " " *)" text
  let commentStr text = tprintf "(* %s *)" text
  let [<Literal>] pv_head = "`"

  [<Obsolete("TODO")>]
  let inline TODO<'a> = failwith "TODO"

open Utils

module Attr =
  type Category = Normal | Block | Floating

  let attr (c: Category) name payload =
    let at = String.replicate (match c with Normal -> 1 | Block -> 2 | Floating -> 3) "@"
    if payload <> empty then tprintf "[%s%s " at name + payload +@ "]"
    else tprintf "[%s%s]" at name

  let js payload = attr Normal "js" payload

  let js_stop_start_implem sigContent implContent =
    concat newline [
      attr Floating "js.stop" empty
      sigContent
      attr Floating "js.start" empty
      attr Floating "js.implem" (newline + indent implContent + newline)
    ]

  let js_custom_val content =
    if content = empty then attr Block "js.custom" empty
    else attr Block "js.custom" (newline + indent content + newline)

  let js_implem_val content = attr Block "js.implem" (newline + indent content + newline)

open Attr

module Type =
  // primitive types
  // these types should reside in the "Js" module of the base library.
  let string_t  = str "js_string"
  let boolean_t = str "js_boolean"
  let number_t  = str "js_number"
  let object_t  = str "js_object"
  let symbol_t  = str "js_symbol" // symbol is a ES5 type but should be distinguished from the boxed Symbol type
  let void_t    = str "unit"
  let array_t   = str "js_array"
  let null_t           = str "or_null"
  let undefined_t      = str "or_undefined"
  let null_undefined_t = str "or_null_or_undefined"

  // ES5 types
  // these types should reside in the "ES5" module of the base library.
  let regexp_t  = str "RegExp.t"
  let date_t    = str "Date.t"
  let error_t   = str "Error.t"
  let readonlyArray_t = str "ArrayLike.t"
  let promise_t = str "Promise.t"

  // TS specific types
  // these types should reside in the "Ts" module of the base library.
  let never_t   = str "ts_never"
  let any_t     = str "ts_any"
  let unknown_t = str "ts_unknown"

  // gen_js_api types
  let ojs_t = str "Ojs.t"

  // our types
  let ts_intf  = str "ts_intf"

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

  let ts_enum baseType cases = tyApp (str "ts_enum") [baseType; cases]

  let and_ a b = tyApp (str "and_") [a; b]
  let or_  a b = tyApp (str "or_")  [a; b]

  let string_or t = tyApp (str "or_string") [t]
  let number_or t = tyApp (str "or_number") [t]
  let boolean_or t = tyApp (str "or_boolean") [t]
  let symbol_or t = tyApp (str "or_symbol") [t]
  let enum_or baseType cases t = or_ t (ts_enum baseType cases)

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

open Type
open Term

module Naming =
  let flattenedLower (name: string list) =
    let s = String.concat "_" name
    if Char.IsUpper s.[0] then
      sprintf "%c%s" (Char.ToLower s.[0]) s.[1..]
    else s

  let flattenedUpper (name: string list) =
    let s = String.concat "_" name
    if Char.IsLower s.[0] then
      sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]
    else s

  let structured (name: string list) =
    name |> List.map (fun s -> sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]) |> String.concat "."

module Definition =
  let open_ names = names |> List.map (tprintf "open %s") |> concat newline

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

  let abstractType name tyargs = 
    str "type "
    + (if List.isEmpty tyargs then str name else tyApp (str name) tyargs)

  let typeAlias name tyargs ty =
    str "type "
    + (if List.isEmpty tyargs then str name else tyApp (str name) tyargs)
    +@ " = " + ty
  
  let external_ name tyarg tyret extName =
    tprintf "external %s: " name + tyarg +@ " -> " + tyret + tprintf " = \"%s\"" extName

open Definition

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
        | Some v -> tprintf " [@js %A]" (literal v)
        | None -> empty
      yield pv_head @+ name + attr
  ]) +@ " [@js.enum]"

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
        yield tprintf "%A of %A [@js %A]" name ty (literal l)
    ]) + tprintf " [@js.union on_field \"%s\"]" tagName

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

(*
let rec emitTypeWithIdentEmitMode identEmitMode orf ctx ty =
  if identEmitMode = Structured then emitType orf ctx ty
  else
    emitType (fun _emitType ctx ty ->
      match ty with
      | Ident { fullName = Some fn } ->
        match identEmitMode with
        | Structured -> orf (emitTypeWithIdentEmitMode identEmitMode orf) ctx ty
        | Flattened false -> str (Naming.flattenedLower fn) |> Some
        | Flattened true  -> tprintf "Types.%s" (Naming.flattenedLower fn) |> Some
      | _ -> orf (emitTypeWithIdentEmitMode identEmitMode orf) ctx ty
    ) ctx ty
*)

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
      | Some fn -> tprintf "%s.t" (Naming.structured fn)
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
      let rec go acc (args: FieldLike list) =
        match args with
        | [] -> acc + void_t
        | x :: [] when f.isVariadic ->
          assert (not x.isOptional)
          acc + tprintf "~%s:" x.name + between "(" ")" (emitType overrideFunc ctx x.value +@ " [@js.variadic]")
        | x :: xs ->
          let needParen =
            match x.value with
            | Function _ -> true
            | _ -> false
          let prefix =
            if x.isOptional then "?" else "~"
          let ty =
            if needParen then between "(" ")" (emitType overrideFunc ctx x.value)
            else emitType overrideFunc ctx x.value
          let t =
            tprintf "%s%s:" prefix x.name + ty
          if not x.isOptional && List.isEmpty xs then t
          else go (t +@ " -> ") xs

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

let emitType' ctx ty = emitType noOverride ctx ty

type IdentEmitMode = Structured | Flattened of appendTypeModule:bool

let rec emitTypeWithIdentEmitMode identEmitMode orf ctx ty =
  if identEmitMode = Structured then emitType orf ctx ty
  else
    emitType (fun _emitType ctx ty ->
      match ty with
      | Ident { fullName = Some fn } ->
        match identEmitMode with
        | Structured -> orf (emitTypeWithIdentEmitMode identEmitMode orf) ctx ty
        | Flattened false -> str (Naming.flattenedLower fn) |> Some
        | Flattened true  -> tprintf "Types.%s" (Naming.flattenedLower fn) |> Some
      | _ -> orf (emitTypeWithIdentEmitMode identEmitMode orf) ctx ty
    ) ctx ty

let emitTsModule : text =
  concat newline [
    yield abstractType "ts_never" []
    yield abstractType "ts_any" []
    yield abstractType "ts_unknown" []

    yield abstractType "ts_intf" [str "-'a"]
    yield
      js_stop_start_implem
        (abstractType "ts_enum" [str "'t"; str "+'a"])
        (typeAlias    "ts_enum" [str "'t"; str "+'a"] (str "'t"))
    
    let alphabets = [for c in 'a' .. 'z' do tyVar (string c)]

    yield abstractType "and_" [tyVar "a"; tyVar "b"]
    yield typeAlias "intersection2" [tyVar "a"; tyVar "b"] (and_ (tyVar "b") (tyVar "a"))
    for i = 3 to 8 do
      let args = alphabets |> List.take i
      yield
        typeAlias
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

    yield abstractType "or_" [tyVar "a"; tyVar "b"]
    yield typeAlias "union2" [tyVar "a"; tyVar "b"] (or_ (tyVar "b") (tyVar "a"))
    for i = 3 to 8 do
      let args = alphabets |> List.take i
      yield
        typeAlias
          (sprintf "union%i" i) args
          (or_ (tyApp (tprintf "union%i" (i-1)) (List.tail args))
               (List.head args))

    yield typeAlias "or_number"  [tyVar "a"] (or_ (tyVar "a") number_t)
    yield typeAlias "or_string"  [tyVar "a"] (or_ (tyVar "a") string_t)
    yield typeAlias "or_boolean" [tyVar "a"] (or_ (tyVar "a") boolean_t)
    yield typeAlias "or_symbol"  [tyVar "a"] (or_ (tyVar "a") symbol_t)
    yield typeAlias "or_array"   [tyVar "a"; tyVar "t"] (or_  (tyVar "a") (tyApp array_t [tyVar "t"]))
    yield typeAlias "or_enum"    [tyVar "a"; tyVar "t"; tyVar "cases"]
                                 (or_ (tyVar "a") (ts_enum (tyVar "t") (tyVar "cases")))

    (*
    yield module_ "Union" (
      concat newline [

      ]
    )
    *)
  ]

let emitFlattenedDefinitions (ctx: Context) : text =
  let emitType_ identEmitMode ctx ty = emitTypeWithIdentEmitMode identEmitMode noOverride ctx ty
  moduleSig ctx.internalModuleName (
    concat newline [
      moduleSig "Ts" emitTsModule
      open_ ["Ts"]

      moduleSig "AnonymousInterfaces" (
        concat newline [
          for (a, _) in ctx.anonymousInterfacesMap |> Map.toSeq do
            let i = anonymousInterfaceToIdentifier ctx a
            yield str "type " + i + str " = " + tyApp ts_intf [between "[" "]" (str pv_head + i)]
        ]
      )

      let emitTypeName name args =
        if List.isEmpty args then str (Naming.flattenedLower name)
        else tyApp (str (Naming.flattenedLower name)) args

      let emitCase name args =
        if List.isEmpty args then str (Naming.flattenedUpper name)
        else str (Naming.flattenedUpper name) + between "(" ")" (concat (str ",") (args))

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
                    | Some v -> tprintf " [@js %A]" (literal v)
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
                yield str pv_head + emitCase fn (ts |> List.map (emitType_ (Flattened false) ctx))
              | _ -> ()
          ]
          concat newline [
            yield tprintf "%s %A = " prefix (emitTypeName k typrm) + tyApp ts_intf [
              str "[ " + concat (str " | ") [
                yield  tprintf "%s%A" pv_head (emitCase k typrm)
                yield! labels
              ] + str " ]"
            ]
          ] |> Some
          // TODO: emit extends of type parameters
        | TypeAlias p when p.erased = false ->
          let rec getLabel = function
            | Ident { fullName = Some fn } -> 
              seq {
                yield tprintf "%s%s" pv_head (fn |> Naming.flattenedUpper)
                for e in getAllInheritancesFromName ctx k do
                  match e with
                  | Ident { fullName = Some fn } ->
                    yield tprintf "%s%s" pv_head (fn |> Naming.flattenedUpper)
                  | App (Ident { fullName = Some fn }, ts) ->
                    yield str pv_head + emitCase fn (ts |> List.map (emitType_ (Flattened false) ctx))
                  | _ -> ()
              } |> Set.ofSeq
            | App (Ident { fullName = Some fn }, ts) ->
              seq {
                yield str pv_head + emitCase fn (ts |> List.map (emitType_ (Flattened false) ctx))
                let typrms =
                  match ctx.definitionsMap |> Map.tryFind fn with
                  | Some (ClassDef c) -> c.typeParams
                  | Some (TypeAlias a) -> a.typeParams
                  | _ -> []
                let subst = List.map2 (fun (tv: TypeParam) ty -> tv.name, ty) typrms ts |> Map.ofList
                for e in getAllInheritancesFromName ctx k do
                  match e with
                  | Ident { fullName = Some fn } ->
                    yield tprintf "%s%s" pv_head (fn |> Naming.flattenedUpper)
                  | App (Ident { fullName = Some fn }, ts) ->
                    yield str pv_head + emitCase fn (ts |> List.map (substTypeVar subst ctx >> emitType_ (Flattened false) ctx))
                  | _ -> ()
              } |> Set.ofSeq
            | Union ts -> ts.types |> List.map getLabel |> Set.intersectMany
            | Intersection ts -> ts.types |> List.map getLabel |> Set.unionMany
            | _ -> Set.empty

          let typrm = p.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
          concat newline [
            match p.target with
            | Union _ | Intersection _ ->
              let labels = getLabel p.target
              // it cannot be casted to any known class or interface
              if Set.isEmpty labels then
                yield tprintf "%s %A = " prefix (emitTypeName k typrm) + emitType_ (Flattened false ) ctx p.target
              // it can be casted to any known class or interface
              else
                yield comment (emitType_ (Flattened false) ctx p.target)
                yield tprintf "%s %A = " prefix (emitTypeName k typrm) + tyApp ts_intf [
                  str "[ " + concat (str " | ") [
                    yield! labels
                  ] + str " ]"
                ]
            // it does not introduce any subtyping relationship
            | _ ->
              yield tprintf "%s %A = " prefix (emitTypeName k typrm) + emitType_ (Flattened false ) ctx p.target
          ] |> Some
          // TODO: emit extends of type parameters
        | _ -> None

      moduleSig "Types" (
        concat newline [
          yield str "open AnonymousInterfaces"
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