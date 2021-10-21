[<AutoOpen>]
module Common

type GlobalOptions =
  abstract verbose: bool with get
  abstract nowarn: bool with get

module GlobalOptions =
  let register (yargs: Yargs.Argv<_>) =
    yargs
      .addFlag("verbose", (fun (o: GlobalOptions) -> o.verbose), descr="Show verbose log", alias="v")
      .addFlag("nowarn", (fun (o: GlobalOptions) -> o.nowarn), descr="Do not show warnings")

module Log =
  let tracef (opt: 'Options) fmt : _ when 'Options :> GlobalOptions =
    Printf.ksprintf (fun str ->
      if opt.verbose then
        printfn "%s" str
    ) fmt

  let warnf (opt: 'Options) fmt : _ when 'Options :> GlobalOptions =
    Printf.ksprintf (fun str ->
      if not opt.nowarn then
        eprintfn "warn: %s" str
    ) fmt

type OverloadRenamer(?rename: string -> int -> string, ?used: Set<string * string>) =
  let rename =
    match rename with
    | Some f -> f
    | None -> (fun s i -> s + (String.replicate i "'"))
  let m = new MutableMap<string * string, int>()
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