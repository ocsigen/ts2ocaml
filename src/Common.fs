[<AutoOpen>]
module Common

type GlobalOptions =
  abstract verbose: bool with get
  abstract nowarn: bool with get
  abstract merge: bool with get, set
  abstract followRelativeReferences: bool with get, set

module GlobalOptions =
  open Fable.Core.JsInterop

  let register (yargs: Yargs.Argv<_>) =
    yargs
      .group(!^ResizeArray["config"], "General Options:")
      .describe(!^"config", "Specify the path to a ts2ocaml configuration JSON file.")
      .group(!^ResizeArray["follow-relative-references"], "Parser Options:")
      .addFlag("follow-relative-references", (fun (o: GlobalOptions) -> o.followRelativeReferences), descr="Follow and parse relative imports and file references.")
      .group(!^ResizeArray["merge"], "Output Options:")
      .addFlag("merge", (fun (o: GlobalOptions) -> o.merge), descr="Merge multiple input definition files to one binding", defaultValue=false)
      .group(!^ResizeArray["verbose"; "nowarn"], "Logging Options:")
      .addFlag("verbose", (fun (o: GlobalOptions) -> o.verbose), descr="Show verbose log")
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

/// Stateful class to rename overloaded identifiers.
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

  /// If the `name` is already used in the same `category`, returns the new renamed name.
  ///
  /// Otherwise, (even if it is used in a different `category`), returns the original name.
  ///
  /// `category` can be arbitrary, but it is intended for something like `value`, `type`, `module`, etc.
  member __.Rename (category: string) (name: string) =
    match m.TryGetValue((category, name)) with
    | true, i ->
      m.[(category, name)] <- i + 1
      let name' = rename name (i+1)
      m.[(category, name')] <- 0
      name'
    | false, _ ->
      m.[(category, name)] <- 0
      name
