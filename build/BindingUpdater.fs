module BindingUpdater

open Fake.Core
open Fake.IO
open System.Text.RegularExpressions

let commonOptions = "--noresizearray --convertpropfns --tagged-union --remove-obsolete"
let ts2fable (srcs: string list) (dest: string) =
  let src = srcs |> String.concat " "
  Shell.Exec(
    "yarn",
    $"ts2fable {src} {dest} {commonOptions}"
  )

let typeParamConstraints =
  new Regex("""when '\w+ :> [\w\.]+(?: and '\w+ :> [\w\.]+)*""", RegexOptions.Compiled)

let erasedCast =
  new Regex("""static member inline op_ErasedCast.+$""", RegexOptions.Compiled ||| RegexOptions.Multiline)

let importAttribute =
  new Regex("""\[<Import\(""", RegexOptions.Compiled)

let replace (regex: Regex) (replacement: string) (s: string) =
  printfn $"{regex.ToString()} ==> {replacement}"
  regex.Replace(s, replacement)

let typescript () =
  let dest = "lib/Bindings/TypeScript.fs"
  ts2fable ["node_modules/typescript/lib/typescript.d.ts"] dest |> ignore
  File.readAsString dest
  |> replace typeParamConstraints ""
  |> replace erasedCast "// $&"
  |> replace importAttribute "[<Fable.Core.Import("
  |> File.writeString false dest

let run () =
  typescript ()
