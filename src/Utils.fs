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
  children: Map<'k, Trie<'k, 'v>>
}

type Trie<'k when 'k: comparison> = Trie<'k, unit>

type WeakTrie<'k when 'k: comparison> = {
  children: Map<'k, WeakTrie<'k>>
}

module Trie =
  let empty<'k, 'v when 'k: comparison> : Trie<'k, 'v> =
    { value = None; children = Map.empty }

  let rec isEmpty (t: Trie<_, _>) =
    t.value.IsNone && Map.forall (fun _ -> isEmpty) t.children

  let setOrUpdate (v: 'v) (update: 'v -> 'v -> 'v) (t: Trie<'k, 'v>) =
    match t.value with
    | Some v' -> { t with value = Some (update v' v) }
    | None -> { t with value = Some v }

  let rec addOrUpdate (ks: 'k list) (v: 'v) (update: 'v -> 'v -> 'v) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> setOrUpdate v update t
    | k :: ks ->
      let child =
        match Map.tryFind k t.children with
        | None -> empty
        | Some child -> child
      { t with children = t.children |> Map.add k (addOrUpdate ks v update child) }

  let add ks v t = addOrUpdate ks v (fun _ x -> x) t

  let rec remove (ks: 'k list) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> { t with value = None }
    | k :: ks ->
      match Map.tryFind k t.children with
      | None -> t
      | Some child -> { t with children = t.children |> Map.add k (remove ks child) }

  let rec union (update: 'v -> 'v -> 'v) (t1: Trie<'k, 'v>) (t2: Trie<'k, 'v>) =
    let value =
      match t1.value, t2.value with
      | Some v, None | None, Some v -> Some v
      | Some v1, Some v2 -> Some (update v1 v2)
      | None, None -> None
    let children =
      t2.children |> Map.fold (fun state k2 v2 ->
        match state |> Map.tryFind k2 with
        | Some v1 -> state |> Map.add k2 (union update v1 v2)
        | None    -> state |> Map.add k2 v2
      ) t1.children
    { value = value; children = children }

  let rec containsKey (ks: 'k list) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> true
    | k :: ks ->
      match Map.tryFind k t.children with
      | None -> false
      | Some child -> containsKey ks child

  let rec tryFind (ks: 'k list) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> t.value
    | k :: ks ->
      match Map.tryFind k t.children with
      | None -> None
      | Some child -> tryFind ks child

  let rec getSubTrie (ks: 'k list) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> Some t
    | k :: ks ->
      match Map.tryFind k t.children with
      | None -> None
      | Some child -> getSubTrie ks child

  let rec replaceSubTrie (ks: 'k list) (subTrie: Trie<'k, 'v>) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> subTrie
    | k :: ks ->
      match Map.tryFind k t.children with
      | Some child -> { t with children = t.children |> Map.add k (replaceSubTrie ks subTrie child) }
      | None -> { t with children = t.children |> Map.add k (replaceSubTrie ks subTrie empty) }

  let fold (f: 'state -> 'k list -> 'v -> 'state) (s: 'state) (t: Trie<'k, 'v>) =
    let rec go ksRev state t =
      let state =
        match t.value with
        | None -> state
        | Some v -> f state (List.rev ksRev) v
      t.children |> Map.fold (fun state k child ->
        go (k :: ksRev) state child
      ) state
    go [] s t

  let keys (t: Trie<'k, 'v>) =
    let rec go ks t =
      seq {
        match t.value with
        | None -> ()
        | Some _ -> yield List.rev ks
        for k, child in Map.toSeq t.children do
          yield! go (k :: ks) child
      }
    go [] t

  let values (t: Trie<'k, 'v>) =
    let rec go ks t =
      seq {
        match t.value with
        | None -> ()
        | Some v -> yield v
        for k, child in Map.toSeq t.children do
          yield! go (k :: ks) child
      }
    go [] t

  let toSeq (t: Trie<'k, 'v>) =
    let rec go ks t =
      seq {
        match t.value with
        | None -> ()
        | Some v -> yield List.rev ks, v
        for k, child in Map.toSeq t.children do
          yield! go (k :: ks) child
      }
    go [] t

  let ofSeq (xs: seq<'k list * 'v>) =
    xs |> Seq.fold (fun state (ks, v) -> add ks v state) empty

  let toSet (t: Trie<'k>) : Set<'k list> = t |> fold (fun state ks _ -> Set.add ks state) Set.empty
  let ofSet (xs: Set<'k list>) : Trie<'k> = xs |> Set.fold (fun state ks -> add ks () state) empty
  let toMap (t: Trie<'k, 'v>) : Map<'k list, 'v> = t |> fold (fun state ks v -> Map.add ks v state) Map.empty
  let ofMap (xs: Map<'k list, 'v>) : Trie<'k, 'v> = xs |> Map.fold (fun state ks v -> add ks v state) empty

module WeakTrie =
  let empty<'k when 'k: comparison> : WeakTrie<'k> = { children = Map.empty }

  let rec singleton (ks: 'k list) : WeakTrie<'k> =
    match ks with
    | [] -> empty
    | k :: ks -> { children = Map.empty |> Map.add k (singleton ks) }

  let isEmpty (x: WeakTrie<_>) = x.children.IsEmpty

  let rec add (ks: 'k list) (x: WeakTrie<'k>) =
    match ks with
    | [] -> x
    | k :: ks ->
      let child =
        match x.children |> Map.tryFind k with
        | Some child -> child
        | None -> empty
      { children = x.children |> Map.add k (add ks child) }

  let rec remove (ks: 'k list) (x: WeakTrie<'k>) =
    match ks with
    | [] -> x
    | k :: [] ->
      { children = x.children |> Map.remove k }
    | k :: ks ->
      match x.children |> Map.tryFind k with
      | None -> x
      | Some child ->
        let child = remove ks child
        { children = x.children |> Map.add k child }

  let rec union (x1: WeakTrie<'k>) (x2: WeakTrie<'k>) =
    let children =
      x2.children |> Map.fold (fun x1c k c2 ->
        match x1c |> Map.tryFind k with
        | None -> x1c |> Map.add k c2
        | Some c1 -> x1c |> Map.add k (union c1 c2)
      ) x1.children
    { children = children }

  let rec intersect (x1: WeakTrie<'k>) (x2: WeakTrie<'k>) =
    let children =
      x2.children |> Map.fold (fun state k c2 ->
        match x1.children |> Map.tryFind k with
        | Some c1 -> state |> Map.add k (intersect c1 c2)
        | None -> state
      ) Map.empty
    { children = children }

  let rec ofDepth (depth: int) (x: WeakTrie<'k>) =
    if depth < 0 then invalidArg "depth" "depth is negative"
    else if depth = 0 then empty
    else
      { children = x.children |> Map.map (fun _ child -> ofDepth (depth-1) child) }

  let rec contains (ks: 'k list) (x: WeakTrie<'k>) =
    match ks with
    | [] -> true
    | k :: ks ->
      match x.children |> Map.tryFind k with
      | None -> false
      | Some child -> contains ks child

  let rec getSubTrie (ks: 'k list) (x: WeakTrie<'k>) =
    match ks with
    | [] -> Some x
    | k :: ks ->
      match x.children |> Map.tryFind k with
      | None -> None
      | Some child -> getSubTrie ks child

  let fold (f: 'state -> 'k list -> 'state) (s: 'state) (x: WeakTrie<'k>) =
    let rec go ks s m =
      m |> Map.fold (fun state k child ->
        let state = f state (List.rev (k :: ks))
        go (k :: ks) state child.children
      ) s
    go [] s x.children

  let leafs (x: WeakTrie<'k>) =
    let rec go acc x =
      seq {
        if Map.isEmpty x.children then
          if not (List.isEmpty acc) then
            yield List.rev acc
        else
          for k, child in Map.toSeq x.children do
            yield! go (k :: acc) child
      }
    go [] x

  let toSeq (x: WeakTrie<'k>) : 'k list seq =
    let rec go ks m =
      seq {
        for k, child in Map.toSeq m do
          yield  List.rev (k :: ks)
          yield! go (k :: ks) child.children
      }
    go [] x.children
  let ofSeq (xs: 'k list seq) : WeakTrie<'k> =
    xs |> Seq.fold (fun state ks -> add ks state) empty

  let toList x = fold (fun state ks -> ks :: state) [] x |> List.rev
  let ofList xs = List.fold (fun state ks -> add ks state) empty xs
  let toSet x = fold (fun state ks -> Set.add ks state) Set.empty x
  let ofSet xs = Set.fold (fun state ks -> add ks state) empty xs

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
  member this.addOption (key: string, f: 'U -> string, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg) =
    this.string(!^key)
        .addImpl<string>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> string option, ?descr) =
    this.string(!^key)
        .addImpl(key, descr)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> float, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg) =
    this.number(!^key)
        .addImpl<float>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> float option, ?descr) =
    this.string(!^key)
        .addImpl(key, descr)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> int, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg) =
    this.number(!^key)
        .addImpl<int>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> int option, ?descr) =
    this.string(!^key)
        .addImpl(key, descr)
        :> Argv<'U>
  member this.addChoice (key: string, values: 'a[], f: 'U -> 'a, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg) =
    this.choices(key, values)
        .addImpl<'a>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr)
        :> Argv<'U>
  member this.addFlag (key: string, f: 'U -> bool, ?descr, ?defaultValue, ?defaultDescr) =
    this.boolean(!^key)
        .addImpl<bool>(key, descr, dv=(defaultValue |> Option.defaultValue false), ?dd=defaultDescr)
        :> Argv<'U>
  member this.addCounter (key: string, f: 'U -> int, ?descr) =
    this.count(!^key)
        .addImpl<int>(key, descr)
        :> Argv<'U>
