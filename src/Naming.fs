// partly borrowed from https://github.com/fable-compiler/ts2fable/
module Naming

open System

module Keywords =
  let keywords =
    Set.ofList [
      "and"; "as"; "assert"; "asr"; "begin"; "class";
      "constraint"; "do"; "done"; "downto"; "else"; "end";
      "exception"; "external"; "false"; "for"; "fun"; "function";
      "functor"; "if"; "in"; "include"; "inherit"; "initializer";
      "land"; "lazy"; "let"; "lor"; "lsl"; "lsr";
      "lxor"; "match"; "method"; "mod"; "module"; "mutable";
      "new"; "nonrec"; "object"; "of"; "open"; "or";
      "private"; "rec"; "sig"; "struct"; "then"; "to";
      "true"; "try"; "type"; "val"; "virtual"; "when";
      "while"; "with"
    ]

  let esKeywords =
    Set.ofList [
      "Readonly"; "Partial"; "Pick";
      "HTMLDialogElement"; "HTMLWebViewElement"
    ]

  let primitives = ["string"; "obj"; "unit"; "float"; "bool"; "int"] |> Set.ofList

let removeQuotes (s: string) =
  if String.IsNullOrEmpty s then ""
  else
    let c = s.[0]
    if (c = '\"' || c = ''')
    then s.Trim(c)
    else s

// gets the JavaScript module name
// intended for use by SourceFile.fileName which has slashes normalized
// TODO implement all of https://github.com/ajafff/tsutils/issues/14#issuecomment-345544684
let getJsModuleName (path: string): string =
  let parts =
    path
      |> fun x ->
        let inm = path.LastIndexOf "node_modules"
        if inm = -1 then x
        else x.Substring(inm+13)
      |> fun x ->
        let is = x.LastIndexOf "@"
        if is = -1 then x
        else x.Substring(is)
      |> fun x ->
        x.Split '/'
          |> List.ofArray
          |> List.filter (fun s -> s <> "index.d.ts" && s <> "types")

  let out =
    match parts with
      | "@types"::x::xs ->
        let xs' = x.Replace("__", "/") :: xs
        String.Join("/", xs')
      | x::xs when x.StartsWith "@" ->
        String.Join("/", x :: xs)
      // TODO: Shouldn't this be List.last instead?
      | xs -> List.head xs
  out.Replace(".ts","").Replace(".d","")

