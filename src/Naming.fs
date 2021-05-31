// partly borrowed from https://github.com/fable-compiler/ts2fable/
module Naming

open System

type Case =
  /// `lowercase`
  | LowerCase
  /// `UPPERCASE`
  | UpperCase
  /// `PascalCase`
  | PascalCase
  /// `dromedaryCase`
  | DromedaryCase

  /// `lower_snake_case`
  | LowerSnakeCase
  /// `UPPER_SNAKE_CASE`
  | UpperSnakeCase
  /// `Pascal_Snake_Case`
  | PascalSnakeCase
  /// `Mixed_snake_Case`
  | MixedSnakeCase

  /// `kebab-case`
  | KebabCase
  /// `UPPER-TRAIN-CASE`
  | UpperTrainCase
  /// `Pascal-Train-Case`
  | PascalTrainCase
  /// `Mixed-train-Case`
  | MixedTrainCase

  /// `other-Ca_SE`
  | OtherCase

let getCase (str: string) =
  if String.IsNullOrWhiteSpace str then invalidArg "str" "string is null or whitespace"
  let lower =
    str |> Seq.filter (fun c -> Char.isAlphabet c && Char.IsLower c) |> Seq.length
  let upper =
    str |> Seq.filter (fun c -> Char.isAlphabet c && Char.IsUpper c) |> Seq.length
  let firstIsUpper (s: string) =
    Char.isAlphabet s.[0] && Char.IsUpper s.[0]
  let snake, kebab =
    str.Contains("_"), str.Contains("-")
  match snake, kebab with
  | true, true -> OtherCase
  | true, false ->
    if upper = 0 then LowerSnakeCase
    else if lower = 0 then UpperSnakeCase
    else
      let flags = str.Split('_') |> Array.map firstIsUpper
      if flags |> Array.forall id then PascalSnakeCase
      else MixedSnakeCase
  | false, true ->
    if upper = 0 then KebabCase
    else if lower = 0 then UpperTrainCase
    else
      let flags = str.Split('_') |> Array.map firstIsUpper
      if flags |> Array.forall id then PascalTrainCase
      else MixedTrainCase
  | false, false ->
    if upper = 0 then LowerCase
    else if lower = 0 then UpperCase
    else if firstIsUpper str then PascalCase
    else DromedaryCase

let isCase (case: Case) (str: string) =
  if String.IsNullOrWhiteSpace str then invalidArg "str" "string is null or whitespace"
  match case, getCase str with
  | c1, c2 when c1 = c2 -> true
  | (DromedaryCase | LowerSnakeCase | KebabCase), LowerCase
  | (UpperSnakeCase | UpperTrainCase), UpperCase
  | MixedSnakeCase, (LowerSnakeCase | UpperSnakeCase | PascalSnakeCase)
  | MixedTrainCase, (KebabCase | UpperTrainCase | PascalTrainCase)
  | OtherCase, _ -> true
  | _, _ -> false

let toCase (case: Case) (str: string) =
  if String.IsNullOrWhiteSpace str then invalidArg "str" "string is null or whitespace"
  let words =
    str.Split('_', '-')
    |> Array.collect (fun s ->
      if s.Length = 0 then [||]
      else if s.Length = 1 then [|s|]
      else
        let h, t = s.[0], s.[1..]
        let sb = StringBuilder().Append(h)
        let sb, words =
          t |> Seq.fold (fun (sb: StringBuilder, words) c ->
            if Char.IsUpper c then
              let word = sb.ToString()
              sb.Clear().Append(c), word :: words
            else
              sb.Append(c), words
          ) (sb, [])
        sb.ToString() :: words |> List.rev |> List.toArray
    )
  let toLower (s: string) = s.ToLowerInvariant()
  let toUpper (s: string) = s.ToUpperInvariant()
  let toPascal (s: string) : string =
    s.ToCharArray()
    |> Array.mapi (fun i c -> if i = 0 then Char.ToUpperInvariant c else Char.ToLowerInvariant c)
    |> String
  match case, getCase str with
  | c1, c2 when c1 = c2 -> str
  | (DromedaryCase | LowerSnakeCase | KebabCase), LowerCase -> str
  | (UpperSnakeCase | UpperTrainCase), UpperCase -> str
  | MixedSnakeCase, (LowerSnakeCase | UpperSnakeCase | PascalSnakeCase) -> str
  | MixedTrainCase, (KebabCase | UpperTrainCase | PascalTrainCase) -> str
  | LowerCase, _ -> str.Replace("_","").Replace("-","") |> toLower
  | UpperCase, _ -> str.Replace("_","").Replace("-","") |> toUpper
  | PascalCase, _ -> words |> Array.map toPascal |> String.Concat
  | DromedaryCase, _ -> words |> Array.mapi (fun i s -> if i = 0 then toLower s else toPascal s) |> String.Concat
  | LowerSnakeCase, _ -> words |> Array.map toLower |> String.concat "_"
  | UpperSnakeCase, _ -> words |> Array.map toUpper |> String.concat "_"
  | (PascalSnakeCase | MixedSnakeCase), _ -> words |> Array.map toPascal |> String.concat "_"
  | KebabCase, _ -> words |> Array.map toLower |> String.concat "-"
  | UpperTrainCase, _ -> words |> Array.map toUpper |> String.concat "-"
  | (PascalTrainCase | MixedTrainCase), _ -> words |> Array.map toPascal |> String.concat "-"
  | OtherCase, _ -> str

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

  let primitives = Set.ofList [ "string"; "obj"; "unit"; "float"; "bool"; "int" ]
  let basicTypes = Set.ofList [ "list"; "array"; "option" ]

let removeQuotesAndTrim (s: string) =
  if String.IsNullOrEmpty s then ""
  else
    let c = s.[0]
    if (c = '\"' || c = ''')
    then s.Trim(c).Trim()
    else s.Trim()

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

