module Main

open Ts2Ml
open Fable.Core.JsInterop
open TypeScript
open Syntax

let options =
  jsOptions<Ts.CompilerOptions>(fun o ->
    o.target <- Some Ts.ScriptTarget.Latest
    o.noEmit <- Some true
    o.moduleResolution <- Some Ts.ModuleResolutionKind.Node12
    //o.traceResolution <- Some true
  )

open Yargs

let parse (opts: GlobalOptions) (argv: string[]) : Input =
  let ctx = createBaseContext opts
  Parser.createContextFromFiles ctx options argv |> Parser.parse

[<EntryPoint>]
let main argv =
  let yargs =
    yargs
         .Invoke(argv)
         .wrap(yargs.terminalWidth() |> Some)
         .parserConfiguration({| ``parse-positional-numbers`` = false |})
         .strict()
         .config()
    |> GlobalOptions.register
    |> Target.register parse Targets.JsOfOCaml.Target.target
    |> Target.register parse Targets.ParserTest.target
  yargs.demandCommand(1.0).scriptName("ts2ocaml").help().argv |> ignore
  0
