// partly borrowed from https://github.com/fable-compiler/ts2fable/
module Ts2Ml.Naming

open Ts2Ml.Extensions
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

let getWords (str: string) =
  if String.IsNullOrWhiteSpace str then invalidArg "str" "string is null or whitespace"
  let chars = str.ToCharArray() |> List.ofArray
  let rec go words acc = function
    | [] ->
      acc :: words
      |> List.filter (List.isEmpty >> not)
      |> List.map (fun word -> new String(List.rev word |> Array.ofList))
      |> List.rev
      |> Array.ofList
    | c :: rest when not (Char.IsLetterOrDigit c) -> go (acc :: words) [] rest
    | c1 :: c2 :: rest when Char.IsUpper c1 && Char.IsLower c2 ->
      go (acc :: words) [c1] (c2 :: rest)
    | c1 :: c2 :: rest when not (Char.IsUpper c1) && Char.IsUpper c2 ->
      go ((c1 :: acc) :: words) [] (c2 :: rest)
    | c :: rest -> go words (c :: acc) rest
  go [] [] chars

let wordsToCase (case: Case) (words: string[]) =
  let toLower (s: string) = s.ToLowerInvariant()
  let toUpper (s: string) = s.ToUpperInvariant()
  let toPascal (s: string) : string =
    s.ToCharArray()
    |> Array.mapi (fun i c -> if i = 0 then Char.ToUpperInvariant c else Char.ToLowerInvariant c)
    |> String
  match case with
  | LowerCase -> words |> String.concat "" |> toLower
  | UpperCase -> words |> String.concat "" |> toUpper
  | PascalCase -> words |> Array.map toPascal |> String.Concat
  | DromedaryCase -> words |> Array.mapi (fun i s -> if i = 0 then toLower s else toPascal s) |> String.Concat
  | LowerSnakeCase -> words |> Array.map toLower |> String.concat "_"
  | UpperSnakeCase -> words |> Array.map toUpper |> String.concat "_"
  | (PascalSnakeCase | MixedSnakeCase) -> words |> Array.map toPascal |> String.concat "_"
  | KebabCase -> words |> Array.map toLower |> String.concat "-"
  | UpperTrainCase -> words |> Array.map toUpper |> String.concat "-"
  | (PascalTrainCase | MixedTrainCase) -> words |> Array.map toPascal |> String.concat "-"
  | OtherCase -> words |> String.concat ""

let toCase (case: Case) (str: string) =
  let words = getWords str
  match case, getCase str with
  | c1, c2 when c1 = c2 -> str
  | (DromedaryCase | LowerSnakeCase | KebabCase), LowerCase -> str
  | (UpperSnakeCase | UpperTrainCase), UpperCase -> str
  | MixedSnakeCase, (LowerSnakeCase | UpperSnakeCase | PascalSnakeCase) -> str
  | MixedTrainCase, (KebabCase | UpperTrainCase | PascalTrainCase) -> str
  | _, _ -> wordsToCase case words

module Keywords =
  let esKeywords =
    Set.ofList [
      "Readonly"; "Partial"; "Pick";
      "HTMLDialogElement"; "HTMLWebViewElement"
    ]

let removeQuotesAndTrim (s: string) =
  if String.IsNullOrEmpty s then ""
  else
    let c = s.[0]
    if (c = '\"' || c = ''')
    then s.Trim(c).Trim()
    else s.Trim()

let isValidJSIdentifier (s: string) =
  if String.IsNullOrEmpty s then false
  else
    let cs = s.ToCharArray()
    if cs[0] |> Char.IsDigit then false
    else
      cs |> Array.forall (fun c ->
        Char.IsLetterOrDigit(c)
        || c = '_' || c = '$'
      )
