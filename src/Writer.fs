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
    static member inline (+) (x, y) = Concat (x, y)
    override this.ToString() = this.ToString(2)
    member this.ToString(indentLength: int) =
      let sb = StringBuilder()
      let rec go indent rhs = function
        | Str s ->
          sb.Append s |> ignore;
          match rhs with
          | [] -> sb.ToString()
          | t :: rest -> go indent rest t
        | Concat (l, r) ->
          go indent (r :: rhs) l
        | Newline ->
          sb.AppendLine()
            .Append(String.replicate (indent * indentLength) " ")
            |> ignore;
          match rhs with
          | [] -> sb.ToString()
          | t :: rest -> go indent rest t
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

  let inline indent x = Indent x

  let newline = Newline

  let inline (@+) s x = str s + x
  let inline (+@) x s = x + str s

  let inline tprintf format = Printf.kprintf str format
  let inline tprintfn format = Printf.kprintf (fun s -> str s + newline) format

  let concat sep xs =
    match xs with
    | [] -> empty
    | h :: t ->
      let rec go result = function
        | [] -> result
        | x :: xs -> go (result + sep + x) xs
      go h t

open Text

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
    | xs -> "(" @+ concat (str ", ") xs +@ ")"

  let app t = function
    | [] -> failwith "type application with empty arguments"
    | [u] -> u +@ " " + t
    | us -> tuple us +@ " " + t

  let func args t =
    match args with
    | [] -> failwith "empty argument of function type"
    | _ -> "(" @+ concat (str " -> ") args +@ " -> " + t +@ ")"
