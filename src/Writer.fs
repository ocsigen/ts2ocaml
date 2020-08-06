module Writer

open Syntax
open Text

module Utils =
  let recordBody inlined (fields: text list) =
    if inlined then
      concat (str "; ") fields
    else
      concat (str ";" + newline) fields

  let variantBody poly inlined (cases: (string * text) list) =
    let cases = cases |> List.map (fun (l, r) -> str (if poly then "`" else "") +@ l +@ " of " + r)
    if inlined then
      concat (str " | ") cases
    else
      str "| " + concat (str "|" + newline) cases
 
  let attr isField name payload =
    join [
      if isField then str "@" else str "@@";
      str name;
      str " ";
      concat (str " ") payload
    ] |> between "[" "]"

  let constraint_ tyvar ty =
    tprintf " constraint '%s = " tyvar + ty  

  let comment text = tprintf "(* %s *)" text

open Utils

module Type =
  let string_ = str "string"
  let bool_ = str "bool"
  let float_ = str "float"
  let regexp = str "Js.Re.t"
  let date = str "Js.Date.t"
  let unit_ = str "()"

  let promise t = t +@ " Js.Promise.t"
  let null_ t = t +@ " Js.Null.t"
  let undefined_ t = t +@ " Js.Undefined.t"
  let null_undefined t = t +@ " Js.Nullable.t"
  let js_t t = t +@ " Js.t"
  let obj_ = str "Obj.t"

  let var s = tprintf "'%s" s

  let tuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

  let array_ t = t +@ " array"

  let app t = function
    | [] -> failwith "type application with empty arguments"
    | [u] -> u +@ " " + t
    | us -> tuple us +@ " " + t

  let func args t =
    match args with
    | [] -> failwith "empty argument of function type"
    | _ -> concat (str " -> ") args +@ " -> " + t |> between "(" ")"
  
  let object fields = recordBody true fields |> between "<" ">"

  let polyVariant cases = variantBody true true cases

open Type

module Definition =
  let val_ name types = tprintf "val %s : " name + concat (str " -> ") types + newline

  let module_ name isSig decls =
    join [
      tprintf "module %s %s" name (if isSig then " : sig" else " = struct")
      newline
      indent (concat newline decls)
      newline
      str "end"
    ]

  let variant name isPoly cases =
    join [
      tprintf "type %s = " name
      newline
      indent (variantBody isPoly false cases)
    ]

  let record name isObj fields =
    join [
      tprintf "type %s = " name
      if isObj then str "<" else str "{"
      newline
      indent (recordBody false fields)
      newline
      if isObj then str ">" else str "}"
    ]

  let open_ names = names |> List.map (tprintf "open %s") |> concat newline

open Definition

type Context = {
  currentNamespace: string list
}

let rec writeType (ctx: Context) (ty: Type) : text =
  match ty with
  | PolymorphicThis -> comment "FIXME: polymorphic this" + obj_
  | Ident i -> String.concat "." (i.name @ ["t"]) |> str
  | TypeVar v -> tprintf "'%s" v
  | Prim p ->
    match p with
    | Null -> null_ unit_ | Undefined -> undefined_ unit_
    | Never -> comment "never" + obj_
    | String -> string_ | Bool -> bool_ | Number -> float_
    | Any -> comment "any" + obj_ | Void -> unit_ | Unknown -> comment "unknown" + obj_
    | RegExp -> regexp | Object -> comment "FIXME: object" + obj_
  | BuiltIn b ->
    match b with
    | Promise t -> promise (writeType ctx t)
    | Date -> date
  | TypeLiteral l ->
    match l with
    | LString s -> tprintf "\"%s\"" (Naming.escapeString s)
    | LInt i -> tprintf "%d" i
    | LBool true -> str "true" | LBool false -> str "false"
    | LFloat f -> tprintf "%f" f
  | AnonymousInterface i ->
    js_t (object (i.members |> List.map (writeMember ctx)))
  | Union ts ->
    let canNull, ts =
      if List.contains (Prim Null) ts then true, ts |> List.filter ((<>) (Prim Null))
      else false, ts
    let canUndefined, ts =
      if List.contains (Prim Undefined) ts then true, ts |> List.filter ((<>) (Prim Undefined))
      else false, ts
    let inner =
      match ts with
      | [] -> unit_ | [t] -> writeType ctx t
      | ts -> failwith "TODO"
    match canNull, canUndefined with
    | true, true -> null_undefined inner
    | true, false -> null_ inner
    | false, true -> undefined_ inner
    | false, false -> inner
  | Intersection ts -> failwith "TODO"
  | Tuple ts | ReadonlyTuple ts -> tuple (List.map (writeType ctx) ts)
  | Array t | ReadonlyArray t -> array_ (writeType ctx t)
  | Function f -> failwith "TODO"
  | App (t, ts) -> app (writeType ctx t) (List.map (writeType ctx) ts)
  | UnknownType (Some help) -> comment help + obj_
  | UnknownType None -> comment "unknown type" + obj_

and writeMember (ctx: Context) (m: MemberAttribute * Member) : text =
  failwith "TODO"

let writeTypeAlias (ctx: Context) (a: TypeAlias) : text =
  failwith "TODO"

let writeClass (ctx: Context) (c: Class) : text =
  failwith "TODO"

let writeEnum (ctx: Context) (e: Enum) : text =
  failwith "TODO"

let writeValue (ctx: Context) (v: Value) : text =
  failwith "TODO"

let writeExport (ctx: Context) (e: IdentType * ExportModifier) : text =
  failwith "TODO"

let rec writeStatement (ctx: Context) (s: Statement) : text =
  failwith "TODO"

and writeModule (ctx: Context) (m: Module) : text =
  failwith "TODO"