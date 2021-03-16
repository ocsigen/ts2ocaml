[<AutoOpen>]
module Utils

open System

let inline (|Ref|) (x: 'a ref) = !x

module Char =
  let isAlphabetOrDigit c =
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
