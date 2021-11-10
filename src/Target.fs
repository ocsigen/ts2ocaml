module Target

open Syntax
open Yargs

type ITarget<'Options when 'Options :> GlobalOptions> =
  abstract Command: string
  abstract Description: string
  abstract Builder: (Argv<'Options> -> Argv<'Options>)
  abstract Run: input: Input * options:'Options -> unit

open Fable.Core
open Fable.Core.JsInterop

let register (parse: GlobalOptions -> string[] -> Input) (target: ITarget<'TargetOptions>) (argv: Argv<'Options>) : Argv<'Options>
  when 'Options :> GlobalOptions
  and  'TargetOptions :> GlobalOptions =
  argv.command(
    U2.Case1 (target.Command + " [inputs..]"),
    target.Description,
    builder = U3.Case2 (fun argv ->
      (target.Builder !!argv).positional("inputs", {| describe = ".d.ts files to generate a binding" |})
    ),
    handler = (fun (argv: Arguments<'Options>) ->
      let inputs = argv.["inputs"] :?> string[]
      try
        let input = parse !!argv.Options inputs
        target.Run(input, !!argv.Options)
      with
        e ->
          eprintfn "%s" e.StackTrace
      ))