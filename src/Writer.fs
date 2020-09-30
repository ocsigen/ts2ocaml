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
    | us -> t + tuple us

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

type IdentEmitMode = Structured | Flattened of appendLabelModule:bool

let literalToIdentifier (ctx: Context) (l: Literal) : text =
  if ctx.typeLiteralsMap |> Map.containsKey l |> not then
    failwithf "literal '%s' is not found in the context" (Literal.toString l)
  else
    match l with
    | LString "" -> str "empty_string"
    | LString "\"" -> str "double_quotation_string" // ReScript doesn't support `"` in the identifier name syntax!!
    | _ ->
      let s =
        match l with
        | LString s ->
          s.Replace("\\", "\\\\")
           .Replace("\"", "''") // ReScript doesn't support `"` in the identifier name syntax!!
           .Replace("\b", "\\b").Replace("\n", "\\n").Replace("\r", "\\r")
           .Replace("\t", "\\t")
        | LInt i -> string i
        | LFloat l -> string l
        | LBool true -> "true" | LBool false -> "false"
      tprintf "\\\"%s\"" s

let rec emitType (identEmitMode: IdentEmitMode) (ctx: Context) (ty: Type) : text =
  match ty with
  | Ident { fullName = Some fn } ->
    let fn = FullName.toStrings fn
    match identEmitMode with
    | Structured -> tprintf "%s.t" (getStructuredName fn)
    | Flattened false -> app ts_t [str (getFlattenedLowerName fn)]
    | Flattened true  -> app ts_t [tprintf "Labels.%s" (getFlattenedLowerName fn)]
  | Ident i ->
    comment (sprintf "unknown type '%s'" (String.concat "." i.name)) + str (getStructuredName i.name + ".t")
  | App (Ident { fullName = Some fn }, ts) when identEmitMode <> Structured ->
    let n = getFlattenedLowerName (FullName.toStrings fn)
    let args = ts |> List.map (emitType identEmitMode ctx)
    match identEmitMode with
    | Structured -> failwith "impossible"
    | Flattened true ->
      app ts_t [app (tprintf "Labels.%s" n) args]
    | Flattened false ->
      app ts_t [app (str n) args]
  | App (t, ts) -> app (emitType identEmitMode ctx t) (List.map (emitType identEmitMode ctx) ts)
  | TypeVar v -> tprintf "'%s" v
  | Prim p ->
    match p with
    | Null -> app null_t [unit_t] | Undefined -> app undefined_t [unit_t] | Object -> obj_t
    | String -> string_t | Bool -> boolean_t | Number -> number_t
    | UntypedFunction -> obj_t | Array -> array_t | Date -> date_t | Error -> error_t
    | RegExp -> regexp_t | Symbol -> symbol_t | Promise -> promise_t
    | Never -> str "Ts.never" | Any -> str "Ts.any" | Unknown -> str "Ts.unknown" | Void -> unit_t
    | ReadonlyArray -> array_t
  | TypeLiteral l -> tprintf "%s.TypeLiterals.%A" ctx.typesModuleName (literalToIdentifier ctx l)
  | Union _ ->
    comment "TODO: union type" + obj_t
  | Intersection _ ->
    comment "TODO: intersection type" + obj_t
  | AnonymousInterface _ ->
    comment "TODO: anonymous interface type" + obj_t
  | PolymorphicThis ->
    comment "TODO: polymorphic this" + obj_t
  | Function f ->
    if f.isVariadic then
      comment "TODO: variadic function" + obj_t
    else
      between "(" ")" (
        concat (str " => ") [
          yield between "(" ")" (concat (str ", ") [
            for a in f.args do
              yield tprintf "~%s:" a.name + emitType identEmitMode ctx a.value + (if a.isOptional then str "=?" else empty)
          ])
          yield emitType identEmitMode ctx f.returnType
        ]
      )
  | Tuple ts | ReadonlyTuple ts ->
    tuple (ts |> List.map (emitType identEmitMode ctx))
  | UnknownType msgo ->
    match msgo with None -> comment "unknown type" + obj_t | Some msg -> comment (sprintf "unknown type '%s'" msg) + obj_t

let emitFlattenedTypeNames (ctx: Context) : text =
  module_ ctx.typesModuleName (
    concat newline [
      str "module Ts = { type t<+'a>; type never; type any; type unknown; }"

      module_ "TypeLiterals" (
        concat newline [
          for (l, _) in ctx.typeLiteralsMap |> Map.toSeq do
            let i = literalToIdentifier ctx l
            yield str "type " + i + str " = " + between "[" "]" (str "#" + i)
        ]
      )

      module_ "Labels" (
        let emitTypeName name args =
          if List.isEmpty args then str (getFlattenedLowerName name)
          else app (str (getFlattenedLowerName name)) args

        let emitCase name args =
          if List.isEmpty args then str (getFlattenedUpperName name)
          else str (getFlattenedUpperName name) + between "(" ")" (concat (str ",") (args))

        let f prefix (k: string list, v: Statement) =
          match v with
          | EnumDef e ->
            concat newline [
              yield
                tprintf "%s %s = [ " prefix (getFlattenedLowerName k)
                + concat (str " | ") [
                  for (_, _, vo) in e.cases do
                    match vo with
                    | Some v ->
                      yield str pv_head + literalToIdentifier ctx v
                    | None -> ()
                ] + str " ]"
              for (_comments, name, vo) in e.cases do
                match vo with
                | Some v ->
                  yield tprintf "and %s = %A" (getFlattenedLowerName (k @ [name])) (literalToIdentifier ctx v)
                | None -> ()
            ] |> Some
          | ClassDef c ->
            let typrm = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
            concat (str " | ") [
              yield tprintf "%s %A = [ %s%A" prefix (emitTypeName k typrm) pv_head (emitCase k typrm)
              for e in getAllInheritances ctx k do
                match e with
                | Ident { fullName = Some fn } ->
                  yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                | App (Ident { fullName = Some fn }, ts) ->
                  yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType (Flattened false) ctx))
                | _ -> ()
            ] + str " ]" |> Some
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
                      yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType (Flattened false) ctx))
                    | _ -> ()
                } |> Set.ofSeq
              | App (Ident { fullName = Some fn }, ts) ->
                let k = FullName.toStrings fn
                seq {
                  yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType (Flattened false) ctx))
                  for e in getAllInheritances ctx k do
                    match e with
                    | Ident { fullName = Some fn } ->
                      yield tprintf "%s%s" pv_head (FullName.toStrings fn |> getFlattenedUpperName)
                    | App (Ident { fullName = Some fn }, ts) ->
                      yield str pv_head + emitCase (FullName.toStrings fn) (ts |> List.map (emitType (Flattened false) ctx))
                    | _ -> ()
                } |> Set.ofSeq
              | Union ts ->
                ts.types |> List.map getLabel |> Set.intersectMany
              | Intersection ts ->
                ts.types |> List.map getLabel |> Set.unionMany
              | _ -> Set.empty

            let typrm = p.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
            concat (str " | ") [
              yield tprintf "%s %A = [ %s%A" prefix (emitTypeName k typrm) pv_head (emitCase k typrm)
              yield! getLabel p.target
            ] + str " ]" |> Some
            // TODO: emit extends of type parameters
          | _ -> None

        concat newline [
          yield str "open TypeLiterals"
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