module Writer

module Text =
  #if FABLE_COMPILER
  type StringBuilder (s: string) =
    let mutable s = s
    new () = StringBuilder ("")
    member __.Length = s.Length
    member sb.Append (s': string) = s <- s + s'; sb
    member inline sb.Append (c: char) = sb.Append (string c)
    member inline sb.Append (num: ^n) = sb.Append (sprintf "%d" num)
    member inline sb.Append (o: obj) = sb.Append (string o)
    member inline sb.AppendLine () = sb.Append System.Environment.NewLine
    member inline sb.AppendLine (s: string) = (sb.Append (s)).AppendLine()
    member sb.Remove (startIndex: int, length: int) =
      if startIndex + length >= s.Length
      then s <- s.Substring (0, startIndex)
      else s <- s.Substring (0, startIndex) + s.Substring (startIndex + length)
      sb
    member inline __.ToString (startIndex: int, length: int) =
      s.Substring (startIndex, length)
    override __.ToString() = s
  #else
  type StringBuilder = System.Text.StringBuilder
  #endif

  type text =
    private
    | Indent of text
    | Concat of text * text
    | Newline
    | Str of string
  with
    static member (+) (x, y) = Concat (x, y)
    override this.ToString() = this.ToString(2)
    member this.ToString(indentLength: int) =
      let sb = StringBuilder()
      let rec go indent rhs = function
        | Str s ->
          sb.Append s |> ignore;
          match rhs with
          | [] -> sb.ToString()
          | (t, indent) :: rest -> go indent rest t
        | Concat (l, r) ->
          go indent ((r, indent) :: rhs) l
        | Newline ->
          sb.AppendLine() |> ignore;
          match rhs with
          | [] -> sb.ToString()
          | (t, indent) :: rest ->
            sb.Append(String.replicate (indent * indentLength) " ") |> ignore;
            go indent rest t
        | Indent t ->
          sb.Append(String.replicate indentLength " ") |> ignore;
          go (indent + 1) rhs t
      go 0 [] this

  let empty = Str ""

  let str (s: string) =
    let lines = s.Replace("\r\n", "\n").Split([|'\n'; '\r'|])
    match lines.Length with
    | 0 -> empty
    | 1 -> Str lines.[0]
    | _ -> 
      lines |> Array.mapi (fun i x -> if i = 0 then Str x else Newline + Str x)
            |> Array.reduce (+)

  let indent x = Indent x

  let newline = Newline

  let inline (@+) s x = str s + x
  let inline (+@) x s = x + str s

  let inline tprintf format = Printf.kprintf str format
  let inline tprintfn format = Printf.kprintf (fun s -> str s + newline) format

  let between l r x = l @+ x +@ r

  let join xs =
    match xs with
    | [] -> empty
    | h :: t -> t |> List.fold (+) h

  let concat sep xs =
    match xs with
    | [] -> empty
    | h :: t ->
      let rec go result = function
        | [] -> result
        | x :: xs -> go (result + sep + x) xs
      go h t

open Text

module Utils =
  let recordBody inlined (fields: (text * text) list) =
    let fields = fields |> List.map (fun (n, t) -> n +@ ": " + t)
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

open Utils

module Type =
  let string_ = str "string"
  let bool_ = str "bool"
  let float_ = str "float"
  let regexp = str "Js.Re.t"
  let date = str "Js.Date.t"

  let promise t = t +@ " Js.Promise.t"
  let null_ t = t +@ " Js.Null.t"
  let undefined_ t = t +@ " Js.Undefined.t"
  let null_undefined t = t +@ " Js.Nullable.t"

  let var s = tprintf "'%s" s

  let tuple = function
    | [] -> failwith "empty tuple"
    | _ :: [] -> failwith "1-ary tuple"
    | xs -> concat (str ", ") xs |> between "(" ")"

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