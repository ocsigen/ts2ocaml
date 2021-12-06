namespace Ts2Ml.DataTypes

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

  let singleton v : Trie<'k, 'v> = { value = Some v; children = Map.empty }

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

  let rec setSubTrie (ks: 'k list) (subTrie: Trie<'k, 'v>) (t: Trie<'k, 'v>) =
    match ks with
    | [] -> subTrie
    | k :: ks ->
      match Map.tryFind k t.children with
      | Some child -> { t with children = t.children |> Map.add k (setSubTrie ks subTrie child) }
      | None -> { t with children = t.children |> Map.add k (setSubTrie ks subTrie empty) }

  let rec getLongestMatch (ks: 'k list) (trie: Trie<'k, 'v>) : {| value: 'v option; rest: 'k list |} =
    match ks with
    | [] -> {| value = trie.value; rest = [] |}
    | k :: ks ->
      match Map.tryFind k trie.children with
      | Some child -> getLongestMatch ks child
      | None -> {| value = trie.value; rest = k :: ks |}

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