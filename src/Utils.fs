[<AutoOpen>]
module Utils

open System

let inline (|Ref|) (x: 'a ref) = !x

let inline (|NullOrUndefined|_|) x =
  if Fable.Core.JsInterop.isNullOrUndefined x then Some ()
  else None

module Enum =
  let inline pp (e: 'enum when 'enum: enum<_>) =
    Enum.GetName(typeof<'enum>, e)

module Char =
  let inline isAlphabet c =
    ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')
  let inline isAlphabetOrDigit c =
    ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || ('0' <= c && c <= '9')

module String =
  let containsAny (a: string) (b: string list) =
    b |> List.exists a.Contains

  let replace (pattern:string) (destPattern:string) (text: string) =
    text.Replace(pattern,destPattern)

  let escape (s: string) =
    s
     .Replace("\\", "\\\\")
     .Replace("'", "\\'").Replace("\"", "\\\"")
     .Replace("\b", "\\b").Replace("\n", "\\n").Replace("\r", "\\r")
     .Replace("\t", "\\t")

  let escapeWith (escaped: string seq) (s: string) =
    escaped |> Seq.fold (fun (state: string) e ->
      state.Replace(e, "\\" + e)
    ) s

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
  member __.ToString (startIndex: int, length: int) =
    s.Substring (startIndex, length)
  member sb.Clear () =
    s <- ""; sb
  override __.ToString() = s
#else
type StringBuilder = System.Text.StringBuilder
#endif

type OverloadRenamer(?rename: string -> int -> string, ?used: Set<string * string>) =
  let rename =
    match rename with
    | Some f -> f
    | None -> (fun s i -> s + (String.replicate i "'"))
  let m = new Collections.Generic.Dictionary<string * string, int>()
  do
    match used with
    | None -> ()
    | Some used ->
      for name in used |> Set.toSeq do
        m.[name] <- 0
  member __.Rename (ns: string) (name: string) =
    match m.TryGetValue((ns, name)) with
    | true, i ->
      m.[(ns, name)] <- i + 1
      let name' = rename name (i+1)
      m.[(ns, name')] <- 0
      name'
    | false, _ ->
      m.[(ns, name)] <- 0
      name

type Trie<'k, 'v when 'k: comparison> = {
  value: 'v option
  childs: Map<'k, Trie<'k, 'v>>
}

module Trie =
  let empty<'k, 'v when 'k: comparison> : Trie<'k, 'v> =
    { value = None; childs = Map.empty }

  let isEmpty (t: Trie<_, _>) =
    t.value.IsNone && Map.isEmpty t.childs

  let rec addOrUpdate (ks: 'k list) (v: 'v) (update: 'v -> 'v -> 'v) (t: Trie<'k, 'v>) =
    match ks with
    | [] ->
      match t.value with
      | Some v' -> { t with value = Some (update v' v)}
      | None -> { t with value = Some v }
    | k :: ks ->
      let child =
        match Map.tryFind k t.childs with
        | None -> empty
        | Some child -> child
      { t with childs = t.childs |> Map.add k (addOrUpdate ks v update child) }

  let add ks v t = addOrUpdate ks v (fun _ x -> x) t

  let rec containsKey (ks: 'k list) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> true
    | k :: ks ->
      match Map.tryFind k t.childs with
      | None -> false
      | Some child -> containsKey ks child

  let rec tryFind (ks: 'k list) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> t.value
    | k :: ks ->
      match Map.tryFind k t.childs with
      | None -> None
      | Some child -> tryFind ks child

  let rec getSubTrie (ks: 'k list) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> Some t
    | k :: ks ->
      match Map.tryFind k t.childs with
      | None -> None
      | Some child -> getSubTrie ks child

  let keys (t: Trie<'k, 'v>) =
    let rec go ks t =
      seq {
        match t.value with
        | None -> ()
        | Some _ -> yield List.rev ks
        for k, child in Map.toSeq t.childs do
          yield! go (k :: ks) child
      }
    go [] t

  let values (t: Trie<'k, 'v>) =
    let rec go ks t =
      seq {
        match t.value with
        | None -> ()
        | Some v -> yield v
        for k, child in Map.toSeq t.childs do
          yield! go (k :: ks) child
      }
    go [] t

  let toSeq (t: Trie<'k, 'v>) =
    let rec go ks t =
      seq {
        match t.value with
        | None -> ()
        | Some v -> yield List.rev ks, v
        for k, child in Map.toSeq t.childs do
          yield! go (k :: ks) child
      }
    go [] t

  let ofSeq (xs: seq<'k list * 'v>) =
    xs |> Seq.fold (fun state (ks, v) -> add ks v state) empty

open Fable.Core
open Fable.Core.JsInterop

[<Emit("typeof $0")>]
let jsTypeof (x: 'a) : string = jsNative

let stringify (x: obj) =
  let objSet = JS.Constructors.Set.Create()
  Fable.Core.JS.JSON.stringify(x, space=2, replacer=(fun _key value ->
    if not (isNullOrUndefined value) && jsTypeof value = "object" then
      if objSet.has(value) then box "<circular object>"
      else
        objSet.add value |> ignore
        value
    else
      value
  ))

open Yargs

type Argv<'T> with
  member private argv.addImpl<'a> (key: string, descr: string option, ?demand: bool, ?missingMsg: string, ?dv:'a, ?dd:string) =
    let argv = match descr with None -> argv | Some d -> argv.describe(!^key, d)
    let argv =
      match dv with
      | None ->
        match demand with
        | Some true -> argv.demandOption(key, ?msg=missingMsg)
        | _ -> argv
      | Some v -> argv.``default``(key, v, ?description=dd)
    argv
  member this.addOption (key: string, f: string -> 'T -> 'U, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg) =
    this.string(!^key)
        .addImpl<string>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr)
        :> Argv<'U>
  member this.addOption (key: string, f: string option -> 'T -> 'U, ?descr) =
    this.string(!^key)
        .addImpl(key, descr)
        :> Argv<'U>
  member this.addOption (key: string, f: float -> 'T -> 'U, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg) =
    this.number(!^key)
        .addImpl<float>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr)
        :> Argv<'U>
  member this.addOption (key: string, f: float option -> 'T -> 'U, ?descr) =
    this.string(!^key)
        .addImpl(key, descr)
        :> Argv<'U>
  member this.addOption (key: string, f: int -> 'T -> 'U, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg) =
    this.number(!^key)
        .addImpl<int>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr)
        :> Argv<'U>
  member this.addOption (key: string, f: int option -> 'T -> 'U, ?descr) =
    this.string(!^key)
        .addImpl(key, descr)
        :> Argv<'U>
  member this.addFlag (key: string, f: bool -> 'T -> 'U, ?descr, ?defaultValue, ?defaultDescr) =
    this.boolean(!^key)
        .addImpl<bool>(key, descr, dv=(defaultValue |> Option.defaultValue false), ?dd=defaultDescr)
        :> Argv<'U>
  member this.addCounter (key: string, f: int -> 'T -> 'U, ?descr) =
    this.count(!^key)
        .addImpl<int>(key, descr)
        :> Argv<'U>