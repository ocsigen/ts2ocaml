module Writer

open Syntax
open Text

module Utils =
  let comment text = tprintf "/* %s */" text

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
  let promise_t = str "Js.Promise.t"
  let null_t = str "Js.Null.t"
  let undefined_t = str "Js.Undefined.t"
  let null_undefined_t = str "Js.Nullable.t"
  let js_t = str "Js.t"
  let ts_t = str "Ts.t"
  let obj_t = str "Obj.t"
  let pv_head = "#"

  let var s = tprintf "'%s" s

  let tuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let app t = function
    | [] -> failwith "type application with empty arguments"
    | [u] -> t + between "<" ">" u
    | us -> t + between "<" ">" (concat (str ", ") us)

open Type
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

type IdentEmitMode = Structured | Flattened of appendTypeModule:bool

let rec emitType (identEmitMode: IdentEmitMode) (polyThis: text option) (ctx: Context) (ty: Type) : text =
  match ty with
  | Ident { fullName = Some fn } ->
    let fn = FullName.toStrings fn
    match identEmitMode with
    | Structured -> tprintf "%s.t" (getStructuredName fn)
    | Flattened false -> str (getFlattenedLowerName fn)
    | Flattened true  -> tprintf "Types.%s" (getFlattenedLowerName fn)
  | Ident i ->
    comment (sprintf "FIXME: unknown type '%s'" (String.concat "." i.name)) + str (getStructuredName i.name + ".t")
  | App (t, ts) -> app (emitType identEmitMode polyThis ctx t) (List.map (emitType identEmitMode polyThis ctx) ts)
  | TypeVar v -> tprintf "'%s" v
  | Prim p ->
    match p with
    | Null -> app null_t [unit_t] | Undefined -> app undefined_t [unit_t] | Object -> obj_t
    | String -> string_t | Bool -> boolean_t | Number -> number_t
    | UntypedFunction -> obj_t | Array -> array_t | Date -> date_t | Error -> error_t
    | RegExp -> regexp_t | Symbol -> symbol_t | Promise -> promise_t
    | Never -> str "Ts.never" | Any -> str "Ts.any" | Unknown -> str "Ts.unknown" | Void -> unit_t
    | ReadonlyArray -> array_t
  | TypeLiteral l -> tprintf "%s.TypeLiterals.%A" ctx.internalModuleName (literalToIdentifier ctx l)
  | Union _ ->
    comment "TODO: union type" + obj_t
  | Intersection _ ->
    comment "TODO: intersection type" + obj_t
  | AnonymousInterface a -> anonymousInterfaceToIdentifier ctx a
  | PolymorphicThis ->
    match polyThis with
    | Some t -> t
    | None -> comment "FIXME: polymorphic this" + obj_t
  | Function f ->
    if f.isVariadic then
      comment "TODO: variadic function" + obj_t
    else
      between "(" ")" (
        concat (str " => ") [
          yield between "(" ")" (concat (str ", ") [
            for a in f.args do
              yield tprintf "~%s:" a.name + emitType identEmitMode polyThis ctx a.value + (if a.isOptional then str "=?" else empty)
          ])
          yield emitType identEmitMode polyThis ctx f.returnType
        ]
      )
  | Tuple ts | ReadonlyTuple ts ->
    tuple (ts |> List.map (emitType identEmitMode polyThis ctx))
  | UnknownType msgo ->
    match msgo with None -> comment "FIXME: unknown type" + obj_t | Some msg -> comment (sprintf "FIXME: unknown type '%s'" msg) + obj_t

let emitFlattenedDefinitions (ctx: Context) : text =
  module_ ctx.internalModuleName (
    concat newline [
      str "module Ts = { type t<-'a>; type never; type any; type unknown; type enum<'t, +'a>; }"

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
            yield str "type " + i + str " = " + app (str "Ts.enum") [getTypeOfLiteral l; between "[" "]" (str "#" + i)]
            yield str "let " + i + str ":" + i + str " = " + emitLiteral l
        ]
      )

      module_ "AnonymousInterfaces" (
        concat newline [
          for (a, _) in ctx.anonymousInterfacesMap |> Map.toSeq do
            let i = anonymousInterfaceToIdentifier ctx a
            yield str "type " + i + str " = " + app ts_t [between "[" "]" (str "#" + i)]
        ]
      )

      module_ "Types" (
        let emitTypeName name args =
          if List.isEmpty args then str (getFlattenedLowerName name)
          else app (str (getFlattenedLowerName name)) args

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
                yield comment (sprintf "WARNING: the enum '%s' has multiple base types" e.name)
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
                + app (str "Ts.enum") [ty; cases]

              for (_comments, name, vo) in e.cases do
                match vo with
                | Some v ->
                  yield tprintf "and %s = %A" (getFlattenedLowerName (k @ [name])) (literalToIdentifier ctx v)
                | None -> ()
            ] |> Some
          | ClassDef c ->
            let typrm = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
            let labels = [
              for e in getAllInheritances ctx k do
                match e with
                | Ident { fullName = Some fn } ->
                  yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                | App (Ident { fullName = Some fn }, ts) ->
                  yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType (Flattened false) None ctx))
                | _ -> ()
            ]
            concat newline [
              yield tprintf "%s %A = " prefix (emitTypeName k typrm) + app ts_t [
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
                  for e in getAllInheritances ctx k do
                    match e with
                    | Ident { fullName = Some fn } ->
                      yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                    | App (Ident { fullName = Some fn }, ts) ->
                      yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType (Flattened false) None ctx))
                    | _ -> ()
                } |> Set.ofSeq
              | App (Ident { fullName = Some fn }, ts) ->
                let k = FullName.toStrings fn
                seq {
                  yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType (Flattened false) None ctx))
                  let typrms =
                    match ctx.definitionsMap |> Map.tryFind (FullName.toStrings fn) with
                    | Some (ClassDef c) -> c.typeParams
                    | Some (TypeAlias a) -> a.typeParams
                    | _ -> []
                  let subst = List.map2 (fun (tv: TypeParam) ty -> tv.name, ty) typrms ts |> Map.ofList
                  for e in getAllInheritances ctx k do
                    match e with
                    | Ident { fullName = Some fn } ->
                      yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                    | App (Ident { fullName = Some fn }, ts) ->
                      yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (substTypeVar subst ctx >> emitType (Flattened false) None ctx))
                    | _ -> ()
                } |> Set.ofSeq
              | AnonymousInterface a ->
                seq { yield pv_head @+ anonymousInterfaceToIdentifier ctx a } |> Set.ofSeq
              | Union ts ->
                ts.types |> List.map getLabel |> Set.intersectMany
              | Intersection ts ->
                ts.types |> List.map getLabel |> Set.unionMany
              | _ -> Set.empty

            let typrm = p.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
            let labels = getLabel p.target
            concat newline [
              tprintf "%s %A = " prefix (emitTypeName k typrm) + app ts_t [
                str "[ " + concat (str " | ") [
                  yield tprintf "%s%A" pv_head (emitCase k typrm)
                  yield! labels
                ] + str " ]"
              ]
            ] |> Some
            // TODO: emit extends of type parameters
          | _ -> None

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