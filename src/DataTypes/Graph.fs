namespace DataTypes

type Graph<'node when 'node: comparison> = Map<'node, 'node list>

module Graph =
  let rec private dfsImpl' g (used, ordRev) v =
    let used = used |> Set.add v
    let used, ordRev =
      match g |> Map.tryFind v with
      | None -> used, ordRev
      | Some xs ->
        xs |> List.fold (dfsImpl g) (used, ordRev)
    (used, v :: ordRev)

  and private dfsImpl g (used, ordRev) v =
    if used |> Set.contains v then
      used, ordRev
    else dfsImpl' g (used, ordRev) v

  let ofEdges (edges: ('a * 'a) list) : Graph<_> =
    edges
    |> List.groupBy fst
    |> List.fold (fun state (k, xs) -> state |> Map.add k (xs |> List.map snd)) Map.empty

  let ofEdgesRev (edges: ('a * 'a) list) : Graph<_> =
    edges
    |> List.groupBy snd
    |> List.fold (fun state (k, xs) -> state |> Map.add k (xs |> List.map fst)) Map.empty

  let nodes (g: Graph<'a>) : Set<'a> =
    g |> Map.fold (fun state k vs -> state |> Set.add k |> Set.union (Set.ofList vs)) Set.empty

  let edges (g: Graph<'a>) : ('a * 'a) list =
    g |> Map.toList |> List.collect (fun (k, vs) -> vs |> List.map (fun v -> k, v))

  let rev (g: Graph<_>) : Graph<_> =
    g
    |> Map.toList
    |> List.collect (fun (k, vs) -> vs |> List.map (fun v -> v, k))
    |> ofEdges

  let topologicalSort (g: Graph<'a>) (xs: 'a list) : 'a list =
    xs |> List.fold (dfsImpl g) (Set.empty, [])
       |> snd
       |> List.rev

  /// Performs topological sort while grouping mutually-referencing nodes (i.e. loops)
  ///
  /// You can also use this to detect loops:
  ///
  /// if the output looks like ``[[a]; [b]; [c]]`` then there is no loop
  ///
  /// otherwise, the element with more than one child elements is a loop
  let stronglyConnectedComponents (g: Graph<'a>) (xs: 'a list) : 'a list list =
    let gR = rev g

    let rec rdfs k cmps v =
      let cmps = cmps |> Map.add v k
      match gR |> Map.tryFind v with
      | None -> cmps
      | Some xs -> xs |> List.fold (rdfs' k) cmps
    and rdfs' k cmps v =
      if cmps |> Map.containsKey v then cmps
      else rdfs k cmps v

    let _, dfsReversed =
      xs |> List.fold (dfsImpl g) (Set.empty, [])

    let _, cmps =
      dfsReversed |> List.fold (fun (k, cmps) child ->
        if cmps |> Map.containsKey child then (k, cmps)
        else (k+1, rdfs k cmps child)
      ) (0, Map.empty)
    let groups = [0 .. Map.fold (fun state _ v -> max v state) 0 cmps]

    let cmpsGraph =
      xs
      |> List.fold (fun acc orig ->
        match g |> Map.tryFind orig with
        | None -> acc
        | Some dests ->
          let origGroup = cmps |> Map.find orig
          dests |> List.fold (fun acc dest ->
            let destGroup = cmps |> Map.find dest
            if origGroup <> destGroup then
              acc |> Set.add (origGroup, destGroup)
            else acc
          ) acc
      ) Set.empty
      |> Set.toList
      |> List.groupBy fst |> List.fold (fun state (k, xs) -> state |> Map.add k (xs |> List.map snd)) Map.empty

    let sortedGroups =
      groups
      |> List.fold (dfsImpl cmpsGraph) (Set.empty, [])
      |> snd |> List.rev
      |> List.indexed
      |> List.fold (fun (ordering: int[]) (order, group) ->
          ordering.[group] <- order; ordering
        ) (Array.zeroCreate (List.length groups))

    xs
    |> List.groupBy (fun s -> Map.find s cmps)
    |> List.sortBy (fun (i, _) -> sortedGroups.[i])
    |> List.map (snd >> List.sort)
