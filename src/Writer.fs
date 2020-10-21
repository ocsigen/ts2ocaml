module Writer

open Syntax
open Text

module Utils =
  let comment text = between "/* " " */" text
  let commentStr text = tprintf "/* %s */" text

open Utils

module Type =
  let string_t = str "string"
  let boolean_t = str "bool"
  let number_t = str "float"
  let regexp_t = str "Js.Re.t"
  let date_t = str "Js.Date.t"
  let symbol_t = str "Js.Types.symbol"
  let unit_t = str "unit"
  let error_t = str "Js.Exn.t"
  let array_t = str "array"
  let readonlyArray_t = str "Js.Array.array_like"
  let promise_t = str "Js.Promise.t"
  let null_t = str "Js.Null.t"
  let undefined_t = str "Js.Undefined.t"
  let null_undefined_t = str "Js.Nullable.t"
  let js_t = str "Js.t"
  let ts_t = str "Ts.t"
  let never_t = str "never"
  let any_t = str "any"
  let unknown_t = str "unknown"
  let obj_t = str "Obj.t"
  let enum_t = str "enum"
  let pv_head = "#"

  let tyVar s = tprintf "'%s" s

  let tyTuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let tyApp t = function
    | [] -> failwith "type application with empty arguments"
    | [u] -> t + between "<" ">" u
    | us -> t + between "<" ">" (concat (str ", ") us)

  let and_ a b = tyApp (str "and_") [a; b]
  let or_  a b = tyApp (str "or_")  [a; b]

  let union_t types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> or_ h (go (i-1) t)
        | xs -> tyApp (tprintf "union%i" i) xs
      go l types

  let intersection_t types =
    let l = List.length types
    if l < 1 then failwith "union type with only zero or one type"
    else
      let rec go i = function
        | h :: t when i > 8 -> and_ h (go (i-1) t)
        | xs -> tyApp (tprintf "intersection%i" i) xs
      go l types

module Term =
  let termTuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let termApp t = function
    | [] -> failwith "term application with empty arguments"
    | [u] -> t + between "(" ")" u
    | us -> t + between "(" ")" (concat (str ", ") us)

  let typeAssert term ty = between "(" ")" (term +@ ":" + ty)

open Type
open Term
open System

let getFlattenedLowerName (name: string list) =
  let s = String.concat "_" name
  if Char.IsUpper s.[0] then
    sprintf "%c%s" (Char.ToLower s.[0]) s.[1..]
  else s

let getFlattenedUpperName (name: string list) =
  let s = String.concat "_" name
  if Char.IsLower s.[0] then
    sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]
  else s

let getStructuredName (name: string list) =
  name |> List.map (fun s -> sprintf "%c%s" (Char.ToUpper s.[0]) s.[1..]) |> String.concat "."

module Definition =
  let open_ names = names |> List.map (tprintf "open %s") |> concat newline

  let module_ name content =
    concat newline [
      tprintf "module %s = {" name
      indent content
      str "}"
    ]

  let abstractType name tyargs = 
    str "type "
    + (if List.isEmpty tyargs then str name else tyApp (str name) tyargs)

  let typeAlias name tyargs ty =
    str "type "
    + (if List.isEmpty tyargs then str name else tyApp (str name) tyargs)
    +@ " = " + ty
  
  let external_ name tyarg tyret extName =
    tprintf "external %s: " name + tyarg +@ " => " + tyret + tprintf " = \"%s\"" extName

  let letFunction name (args: (text * text) list) value =
    tprintf "let %s = " name
    + between "(" ")" (concat (str ", ") (args |> List.map (fun (n, t) -> n +@ ": " + t)))
    +@ " => " + value
  
open Definition
open Syntax
open Type

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

let getTypeOfLiteral = function
  | LString _ -> string_t
  | LInt _ | LFloat _ -> number_t
  | LBool _ -> boolean_t

let anonymousInterfaceToIdentifier (ctx: Context) (c: Class) : text =
  match ctx.anonymousInterfacesMap |> Map.tryFind c, c.name with
  | Some i, None -> tprintf "anonymous_interface_%i" i
  | None, None -> failwithf "the anonymous interface '%A' is not found in the context" c
  | _, Some n -> failwithf "the class or interface '%s' is not anonymous" n

let rec emitType (overrideFunc: (Context -> Type -> text) -> Context -> Type -> text option) (ctx: Context) (ty: Type) : text =
  match overrideFunc (emitType overrideFunc) ctx ty with
  | Some t -> t
  | None ->
    match ty with
    | Ident i ->
      match i.fullName with
      | Some fn -> tprintf "%s.t" (getStructuredName (FullName.toStrings fn))
      | None -> commentStr (sprintf "FIXME: unknown type '%s'" (String.concat "." i.name)) + str (getStructuredName i.name + ".t")
    | App (t, ts) -> tyApp (emitType overrideFunc ctx t) (List.map (emitType overrideFunc ctx) ts)
    | TypeVar v -> tprintf "'%s" v
    | Prim p ->
      match p with
      | Null -> tyApp null_t [unit_t] | Undefined -> tyApp undefined_t [unit_t] | Object -> obj_t
      | String -> string_t | Bool -> boolean_t | Number -> number_t
      | UntypedFunction -> obj_t | Array -> array_t | Date -> date_t | Error -> error_t
      | RegExp -> regexp_t | Symbol -> symbol_t | Promise -> promise_t
      | Never -> never_t | Any -> any_t | Unknown -> unknown_t | Void -> unit_t
      | ReadonlyArray -> readonlyArray_t
    | TypeLiteral l -> literalToIdentifier ctx l
    | Intersection i -> intersection_t (i.types |> List.map (emitType overrideFunc ctx))
    | Union u ->
      let nullOrUndefined, rest =
        u.types |> List.partition (function Prim (Null | Undefined) -> true | _ -> false)
      let prims, rest =
        rest |> List.partition (function 
          | Prim (Number | String | Bool | Symbol)
          | App (Prim Array, [_]) -> true
          | _ -> false
        )
      let body =
        match rest with
        | [] -> never_t
        | [x] -> emitType overrideFunc ctx x
        | _ ->
          match isEnum ctx { types = rest } with
          | None -> union_t (u.types |> List.map (emitType overrideFunc ctx))
          | Some (po, lits) ->
            tyApp enum_t [
              match po with
              | Some t -> yield emitType overrideFunc ctx (Prim t)
              | None -> yield commentStr "WARNING: mixed enum type" + obj_t
              yield between "[ " " ]" (
                concat (str " | ") (lits |> Set.toList |> List.map (fun x -> str pv_head + literalToIdentifier ctx x))
              )
            ]
      let rec appendPrim = function
        | x :: [] when body = never_t -> emitType overrideFunc ctx x
        | Prim Number :: rest -> tyApp (str "number_or") [appendPrim rest]
        | Prim String :: rest -> tyApp (str "string_or") [appendPrim rest]
        | Prim Bool :: rest -> tyApp (str "boolean_or") [appendPrim rest]
        | Prim Symbol :: rest -> tyApp (str "symbol_or") [appendPrim rest]
        | App (Prim Array, [t]) :: rest -> tyApp (str "array_or") [emitType overrideFunc ctx t; appendPrim rest]
        | [] -> body
        | _ -> failwith "impossible_appendPrim"
      let body = appendPrim prims
      let appendNullOrUndefined = function
        | [Prim Null; Prim Undefined] | [Prim Undefined; Prim Null] -> tyApp null_undefined_t [body]
        | [Prim Null] -> tyApp null_t [body] | [Prim Undefined] -> tyApp undefined_t [body]
        | [] -> body
        | _ -> failwith "impossible_appendNullOrUndefined"
      let body = appendNullOrUndefined nullOrUndefined
      body
    | AnonymousInterface a -> anonymousInterfaceToIdentifier ctx a
    | PolymorphicThis -> commentStr "FIXME: polymorphic this" + obj_t
    | Function f ->
      if f.isVariadic then
        commentStr "TODO: variadic function" + obj_t
      else
        between "(" ")" (
          concat (str " => ") [
            yield between "(" ")" (concat (str ", ") [
              for a in f.args do
                yield tprintf "~%s:" a.name + emitType overrideFunc ctx a.value + (if a.isOptional then str "=?" else empty)
            ])
            yield emitType overrideFunc ctx f.returnType
          ]
        )
    | Tuple ts | ReadonlyTuple ts ->
      tyTuple (ts |> List.map (emitType overrideFunc ctx))
    | UnknownType msgo ->
      match msgo with None -> commentStr "FIXME: unknown type" + obj_t | Some msg -> commentStr (sprintf "FIXME: unknown type '%s'" msg) + obj_t

let inline noOverride _emitType _ctx _ty = None

let emitTsModule : text =
  concat newline [
    yield abstractType "t" [str "-'a"]
    yield abstractType "never" []
    yield abstractType "any" []
    yield abstractType "unknown" []
    yield abstractType "enum" [str "'t"; str "+'a"]
    yield module_ "Unsafe" (
      concat newline [
        external_ "cast" (str "'a") (str "'b") "%identity"
      ]
    )
    yield open_ ["Unsafe"]
    
    let alphabets = [for c in 'a' .. 'z' do tyVar (string c)]

    yield abstractType "and_" [tyVar "a"; tyVar "b"]
    yield typeAlias "intersection2" [tyVar "a"; tyVar "b"] (and_ (tyVar "a") (tyVar "b"))
    for i = 3 to 8 do
      let args = alphabets |> List.take i
      yield
        typeAlias
          (sprintf "intersection%i" i) args
          (and_ (List.head args)
                (tyApp (tprintf "intersection%i" (i-1)) (List.tail args)))
    yield module_ "Intersection" (
      concat newline [
        yield external_ "car" (and_ (str "'a") (str "'b")) (str "'b") "%identity"
        yield external_ "cdr" (and_ (str "'a") (str "'b")) (str "'a") "%identity"
        for i = 2 to 8 do
          yield
            letFunction
              (sprintf "unwrap%i" i)
              [str "x", tyApp (tprintf "intersection%i" i) (List.take i alphabets)]
              (termTuple [
                for t in List.take i alphabets do
                  typeAssert (termApp (str "cast") [str "x"]) t
              ])
      ]
    )

    yield abstractType "or_" [tyVar "a"; tyVar "b"]
    yield typeAlias "union2" [tyVar "a"; tyVar "b"] (or_ (tyVar "a") (tyVar "b"))
    for i = 3 to 8 do
      let args = alphabets |> List.take i
      yield
        typeAlias
          (sprintf "union%i" i) args
          (or_ (List.head args)
               (tyApp (tprintf "union%i" (i-1)) (List.tail args)))
    yield typeAlias "number_or" [tyVar "a"] (or_ number_t (tyVar "a"))
    yield typeAlias "string_or" [tyVar "a"] (or_ string_t (tyVar "a"))
    yield typeAlias "boolean_or" [tyVar "a"] (or_ boolean_t (tyVar "a"))
    yield typeAlias "symbol_or" [tyVar "a"] (or_ symbol_t (tyVar "a"))
    yield typeAlias "array_or" [tyVar "t"; tyVar "a"] (or_ (tyApp array_t [tyVar "t"]) (tyVar "a"))

    (*
    yield module_ "Union" (
      concat newline [
        yield open_ ["Js.Types"]

      ]
    )
    *)
  ]

type IdentEmitMode = Structured | Flattened of appendTypeModule:bool

let rec emitTypeWithIdentEmitMode identEmitMode orf ctx ty =
  if identEmitMode = Structured then emitType orf ctx ty
  else
    emitType (fun _emitType ctx ty ->
      match ty with
      | Ident { fullName = Some fn } ->
        let fn = FullName.toStrings fn
        match identEmitMode with
        | Structured -> orf (emitTypeWithIdentEmitMode identEmitMode orf) ctx ty
        | Flattened false -> str (getFlattenedLowerName fn) |> Some
        | Flattened true  -> tprintf "Types.%s" (getFlattenedLowerName fn) |> Some
      | _ -> orf (emitTypeWithIdentEmitMode identEmitMode orf) ctx ty
    ) ctx ty

let emitFlattenedDefinitions (ctx: Context) : text =
  let emitType_ identEmitMode ctx ty = emitTypeWithIdentEmitMode identEmitMode noOverride ctx ty
  module_ ctx.internalModuleName (
    concat newline [
      module_ "Ts" emitTsModule
      open_ ["Ts"]

      module_ "TypeLiterals" (
        let emitLiteral l =
          let s =
            match l with
            | LString s -> tprintf "\"%s\"" (String.escape s |> String.replace "`" "\\`")
            | LInt i -> tprintf "%i" i
            | LFloat f -> tprintf "%f" f
            | LBool true -> str "true" | LBool false -> str "false"
          between "%raw(`" "`)" s
        concat newline [
          for (l, _) in ctx.typeLiteralsMap |> Map.toSeq do
            let i = literalToIdentifier ctx l
            yield str "type " + i + str " = " + tyApp (str "Ts.enum") [getTypeOfLiteral l; between "[" "]" (str pv_head + i)]
            yield str "let " + i + str ":" + i + str " = " + emitLiteral l
        ]
      )

      module_ "AnonymousInterfaces" (
        concat newline [
          for (a, _) in ctx.anonymousInterfacesMap |> Map.toSeq do
            let i = anonymousInterfaceToIdentifier ctx a
            yield str "type " + i + str " = " + tyApp ts_t [between "[" "]" (str pv_head + i)]
        ]
      )

      let emitTypeName name args =
        if List.isEmpty args then str (getFlattenedLowerName name)
        else tyApp (str (getFlattenedLowerName name)) args

      let emitCase name args =
        if List.isEmpty args then str (getFlattenedUpperName name)
        else str (getFlattenedUpperName name) + between "(" ")" (concat (str ",") (args))

      let f prefix (k: string list, v: Statement) =
        match v with
        | EnumDef e ->
          let lt =
            e.cases
            |> Seq.choose (function (_, _, Some l) -> getTypeOfLiteral l |> Some | _ -> None)
            |> Seq.distinct
            |> Seq.toArray
          concat newline [
            if lt.Length <> 1 then
              eprintfn "warn: the enum '%s' has multiple base types" e.name
              yield commentStr (sprintf "WARNING: the enum '%s' has multiple base types" e.name)
            let ty = if lt.Length = 1 then lt.[0] else obj_t
            let cases =
              between "[ " " ]" (
                  concat (str " | ") [
                    for (_, _, vo) in e.cases do
                      match vo with
                      | Some v ->
                        yield str pv_head + literalToIdentifier ctx v
                      | None -> ()
              ])
            yield
              tprintf "%s %s = " prefix (getFlattenedLowerName k)
              + tyApp enum_t [ty; cases]

            for (_comments, name, vo) in e.cases do
              match vo with
              | Some v ->
                yield tprintf "and %s = %A" (getFlattenedLowerName (k @ [name])) (literalToIdentifier ctx v)
              | None -> ()
          ] |> Some
        | ClassDef c ->
          let typrm = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
          let labels = [
            for e in getAllInheritancesFromName ctx k do
              match e with
              | Ident { fullName = Some fn } ->
                yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
              | App (Ident { fullName = Some fn }, ts) ->
                yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType_ (Flattened false) ctx))
              | _ -> ()
          ]
          concat newline [
            yield tprintf "%s %A = " prefix (emitTypeName k typrm) + tyApp ts_t [
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
              let k = FullName.toStrings fn
              seq {
                yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                for e in getAllInheritancesFromName ctx k do
                  match e with
                  | Ident { fullName = Some fn } ->
                    yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                  | App (Ident { fullName = Some fn }, ts) ->
                    yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType_ (Flattened false) ctx))
                  | _ -> ()
              } |> Set.ofSeq
            | App (Ident { fullName = Some fn }, ts) ->
              let k = FullName.toStrings fn
              seq {
                yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType_ (Flattened false) ctx))
                let typrms =
                  match ctx.definitionsMap |> Map.tryFind (FullName.toStrings fn) with
                  | Some (ClassDef c) -> c.typeParams
                  | Some (TypeAlias a) -> a.typeParams
                  | _ -> []
                let subst = List.map2 (fun (tv: TypeParam) ty -> tv.name, ty) typrms ts |> Map.ofList
                for e in getAllInheritancesFromName ctx k do
                  match e with
                  | Ident { fullName = Some fn } ->
                    yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                  | App (Ident { fullName = Some fn }, ts) ->
                    yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (substTypeVar subst ctx >> emitType_ (Flattened false) ctx))
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
                yield tprintf "%s %A = " prefix (emitTypeName k typrm) + tyApp ts_t [
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

      module_ "Types" (
        concat newline [
          yield str "open TypeLiterals"
          yield str "open AnonymousInterfaces"
          let prefix = seq { yield "type rec"; while true do yield "and" }
          yield!
            ctx.definitionsMap
            |> Map.toSeq
            |> Seq.skipWhile (fun t -> f "type rec" t |> Option.isNone)
            |> Seq.map2 (fun prefix t -> f prefix t) prefix
            |> Seq.choose id
        ]
      )
    ]
  ) + newline