[<AutoOpen>]
module Common

open Ts2Ml.Common

type GlobalOptions =
  inherit IOptions
  abstract verbose: bool with get
  abstract nowarn: bool with get
  abstract merge: bool with get, set

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

let createBaseContext (opts: #GlobalOptions) : IContext<_> =
  let logger =
    { new ILogger with
        member _.tracef fmt = Log.tracef opts fmt
        member _.warnf  fmt = Log.warnf opts fmt
        member _.errorf fmt = failwithf fmt
    }
  { new IContext<_> with
      member _.options = opts
      member _.logger = logger }

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

type IContext<'Options when 'Options :> IOptions> = Ts2Ml.Common.IContext<'Options>
type OverloadRenamer = Ts2Ml.Common.OverloadRenamer