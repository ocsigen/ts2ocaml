module Targets.JsOfOCaml.Target

open Syntax
open DataTypes

open Target
open Targets.JsOfOCaml.Common
open Targets.JsOfOCaml.Writer
open Fable.Core.JsInterop

let private builder (argv: Yargs.Argv<Options>) : Yargs.Argv<Options> =
  argv |> Options.register

let private run (input: Input) (options: Options) =
  let outputDir =
    let curdir = Node.Api.``process``.cwd()
    match options.outputDir with
    | None -> curdir
    | Some dir ->
      let path = Node.Api.path.join [|curdir; dir|]
      let fail () =
        failwithf "The output directory '%s' does not exist." path
      try
        if Node.Api.fs.lstatSync(!^path).isDirectory() then path
        else fail ()
      with
        _ -> fail ()

  let results =
    let result =
      if options.createMinimalStdlib then
        [{ fileName = "ts2ocaml_min.mli"; content = Text.str stdlib; stubLines = [] }]
      else []
    if List.isEmpty input.sources then result
    else if options.stdlib then
      result @ emitStdlib input options
    else
      result @ emitEverythingCombined input options

  if results = [] then
    Log.warnf options "no input files are given."

  for result in results do
    let fullPath = Node.Api.path.join[|outputDir; result.fileName|]
    Log.tracef options "* writing the binding to '%s'..." fullPath
    Node.Api.fs.writeFileSync(fullPath, Text.toString 2 result.content)

    let stubFile = Node.Api.path.join [|outputDir; options.stubFile|]
    if not (List.isEmpty result.stubLines) then
      let existingStubLines =
        if not (Node.Api.fs.existsSync(!^stubFile)) then Set.empty
        else if Node.Api.fs.lstatSync(!^stubFile).isFile() then
          Node.Api.fs.readFileSync(stubFile, "UTF-8")
                     .Split([|Node.Api.os.EOL|], System.StringSplitOptions.RemoveEmptyEntries)
          |> Set.ofArray
        else
          failwithf "The path '%s' is not a file." stubFile
      let stubLines = Set.union existingStubLines (Set.ofList result.stubLines)
      if stubLines <> existingStubLines then
        Log.tracef options "* writing the stub file to '%s'..." stubFile
        let stub = stubLines |> String.concat Node.Api.os.EOL
        Node.Api.fs.writeFileSync(stubFile, stub)

let target =
  { new ITarget<Options> with
      member __.Command = "jsoo"
      member __.Description = "Generate binding for js_of_ocaml"
      member __.Builder = builder
      member __.Run (srcs, options) = run srcs options }