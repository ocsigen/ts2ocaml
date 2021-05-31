module Text

[<StructuredFormatDisplay("{AsString}")>]
type text =
  private
  | Empty
  | Indent of text
  | Concat of text * text
  | Newline
  | Str of string
with
  static member (+) (x, y) =
    match x, y with
    | Empty, t | t, Empty -> t
    | _, _ -> Concat (x, y)
  override this.ToString() = this.ToString(2)
  member this.AsString = this.ToString(0)
  member this.ToString(indentLength: int) =
    let sb = StringBuilder()
    let rec go indent rhs = function
      | Empty ->
        match rhs with
        | [] -> sb.ToString()
        | (t, indent) :: rest -> go indent rest t
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

let toString indentLength (t: text) = t.ToString(indentLength)

let empty = Empty

let strLines (lines: string seq) =
  let lines =
    lines
    |> Seq.collect (fun s -> s.Split([|"\r\n"; "\r"; "\n"|], System.StringSplitOptions.None))
    |> Seq.toArray
  match lines.Length with
  | 0 -> empty
  | 1 -> Str lines.[0]
  | _ ->
    lines |> Array.mapi (fun i x -> if i = 0 then Str x else Newline + Str x)
          |> Array.reduce (+)

let str (s: string) = strLines [s]

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

let rec isMultiLine = function
  | Newline -> true
  | Indent x -> isMultiLine x
  | Concat (x, y) -> isMultiLine x || isMultiLine y
  | Empty | Str _ -> false