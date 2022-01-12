module Target

open Ts2Ml
open Common
open Syntax
open Yargs

type ITarget<'Options when 'Options :> GlobalOptions> =
  abstract Command: string
  abstract Description: string
  abstract Builder: (Argv<'Options> -> Argv<'Options>)
  abstract Run: input: Input * baseCtx:IContext<'Options> -> unit

open Fable.Core
open Fable.Core.JsInterop

let inline has name value =
  isIn name value

let register (parse: GlobalOptions -> string[] -> Input) (target: ITarget<'TargetOptions>) (argv: Argv<'Options>) : Argv<'Options>
  when 'Options :> GlobalOptions
  and  'TargetOptions :> GlobalOptions =
  argv.command(
    U2.Case1 (target.Command + " [inputs..]"),
    target.Description,
    builder = U3.Case2 (fun argv ->
      (target.Builder !!argv).positional("inputs", {| describe = ".d.ts files to generate a binding" |})
    ),
    handler = (fun (args: Arguments<'Options>) ->
      let inputs = args.["inputs"] :?> string[]
      try
        let input = parse !!args.Options inputs
        let baseCtx = createBaseContext !!args.Options
        target.Run(input, baseCtx)
      with
        e ->
          eprintfn "%s" e.StackTrace
          argv.exit(-1, e)
      ))