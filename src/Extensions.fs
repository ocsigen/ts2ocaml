[<AutoOpen>]
module Extensions

open System

module Enum =
  /// Get the name of an enum case
  let inline pp (e: 'enum when 'enum: enum<_>) =
    Enum.GetName(typeof<'enum>, e)

module Char =
  let inline isAlphabet c =
    ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')
  let inline isAlphabetOrDigit c =
    ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || ('0' <= c && c <= '9')

module String =
  let containsAny (a: string) (b: string list) =
    b |> List.exists a.Contains

  let replace (pattern:string) (destPattern:string) (text: string) =
    text.Replace(pattern,destPattern)

  let split (separator: string) (text: string) =
    text.Split([|separator|], StringSplitOptions.None)

  let splitMany (separators: string list) (text: string) =
    text.Split(Array.ofList separators, StringSplitOptions.None)

  let splitThenRemoveEmptyEntries (separator: string) (text: string) =
    text.Split([|separator|], StringSplitOptions.RemoveEmptyEntries)

  let splitManyThenRemoveEmptyEntries (separators: string list) (text: string) =
    text.Split(Array.ofList separators, StringSplitOptions.RemoveEmptyEntries)

  let toLines (s: string) : string[] =
    s
    |> replace "\r\n" "\n"
    |> replace "\r"   "\n"
    |> split "\n"

  let escape (s: string) =
    s
     .Replace("\\", "\\\\")
     .Replace("'", "\\'").Replace("\"", "\\\"")
     .Replace("\b", "\\b").Replace("\n", "\\n").Replace("\r", "\\r")
     .Replace("\t", "\\t")

  let escapeWith (escaped: string seq) (s: string) =
    escaped |> Seq.fold (fun (state: string) e ->
      state.Replace(e, "\\" + e)
    ) s

module Result =
  let toOption result =
    match result with Ok x -> Some x | Error _ -> None

module List =
  let splitChoice2 (xs: Choice<'t1, 't2> list) : 't1 list * 't2 list =
    let xs1, xs2 =
      xs |> List.fold (fun (xs1, xs2) -> function
        | Choice1Of2 x -> x :: xs1, xs2
        | Choice2Of2 x -> xs1, x :: xs2
      ) ([], [])
    List.rev xs1, List.rev xs2

type MutableMap<'k, 'v> = Collections.Generic.Dictionary<'k, 'v>
type MutableSet<'v> = Collections.Generic.HashSet<'v>

#if FABLE_COMPILER
type StringBuilder (s: string) =
  let mutable s = s
  new () = StringBuilder ("")
  member __.Length = s.Length
  member sb.Append (s': string) = s <- s + s'; sb
  member inline sb.Append (c: char) = sb.Append (string c)
  member inline sb.Append (num: ^n) = sb.Append (sprintf "%d" num)
  member inline sb.Append (o: obj) = sb.Append (string o)
  member inline sb.AppendLine () = sb.Append System.Environment.NewLine
  member inline sb.AppendLine (s: string) = (sb.Append (s)).AppendLine()
  member sb.Remove (startIndex: int, length: int) =
    if startIndex + length >= s.Length
    then s <- s.Substring (0, startIndex)
    else s <- s.Substring (0, startIndex) + s.Substring (startIndex + length)
    sb
  member __.ToString (startIndex: int, length: int) =
    s.Substring (startIndex, length)
  member sb.Clear () =
    s <- ""; sb
  override __.ToString() = s
#else
type StringBuilder = System.Text.StringBuilder
#endif

open Fable.Core
open Fable.Core.JsInterop

module JS =
  [<Emit("typeof $0")>]
  let jsTypeof (_: 'a) : string = jsNative

  let cloneWith (f: 'a -> unit) (x: 'a) =
    let newX = JS.Constructors.Object.assign(!!{||}, x) :?> 'a
    f newX
    newX

  let stringify (x: obj) =
    let objSet = JS.Constructors.Set.Create()
    JS.JSON.stringify(x, space=2, replacer=(fun _key value ->
      if not (isNullOrUndefined value) && jsTypeof value = "object" then
        if objSet.has(value) then box "<circular object>"
        else
          objSet.add value |> ignore
          value
      else
        value
    ))

type JS.ObjectConstructor with
  [<Emit("$0.entries($1)")>]
  member __.entries (x: 'a) : (string * obj) [] = jsNative

module Path =
  module Node = Node.Api

  type Absolute = string
  /// relative to current directory
  type Relative = string
  type Difference = string

  let relative (path: string) : Relative =
    Node.path.relative(Node.``process``.cwd(), path)

  let absolute (path: string) : Absolute =
    if Node.path.isAbsolute(path) then path
    else Node.path.resolve(path)

  let diff (fromPath: string) (toPath: string) : Difference =
    let fromPath =
      if Node.fs.lstatSync(!^fromPath).isDirectory() then fromPath
      else Node.path.dirname(fromPath)
    Node.path.relative(fromPath, toPath)

  let dirname (path: string) : string =
    Node.path.dirname(path)

  let basename (path: string) : string =
    Node.path.basename(path)

  let join (paths: string list) : string =
    Node.path.join(Array.ofList paths)

  let separator =
    Node.path.sep

open Yargs

type Argv<'T> with
  member private argv.addImpl<'a> (key: string, descr: string option, ?demand: bool, ?missingMsg: string, ?dv:'a, ?dd:string, ?alias:string) =
    let argv = match descr with None -> argv | Some d -> argv.describe(!^key, d)
    let argv =
      match dv with
      | None ->
        match demand with
        | Some true -> argv.demandOption(key, ?msg=missingMsg)
        | _ -> argv
      | Some v -> argv.``default``(key, v, ?description=dd)
    let argv =
      match alias with
      | None -> argv
      | Some a -> argv.alias(!^a, !^key)
    argv
  member this.addOption (key: string, f: 'U -> string, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg, ?alias) =
    this.string(!^key)
        .addImpl<string>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr, ?alias=alias)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> string option, ?descr, ?alias) =
    this.string(!^key)
        .addImpl(key, descr, ?alias=alias)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> float, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg, ?alias) =
    this.number(!^key)
        .addImpl<float>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr, ?alias=alias)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> float option, ?descr, ?alias) =
    this.string(!^key)
        .addImpl(key, descr, ?alias=alias)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> int, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg, ?alias) =
    this.number(!^key)
        .addImpl<int>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr, ?alias=alias)
        :> Argv<'U>
  member this.addOption (key: string, f: 'U -> int option, ?descr, ?alias) =
    this.string(!^key)
        .addImpl(key, descr, ?alias=alias)
        :> Argv<'U>
  member this.addChoice (key: string, values: 'a[], f: 'U -> 'a, ?descr, ?defaultValue, ?defaultDescr, ?missingMsg, ?alias) =
    this.choices(key, values)
        .addImpl<'a>(key, descr, demand=true, ?missingMsg=missingMsg, ?dv=defaultValue, ?dd=defaultDescr, ?alias=alias)
        :> Argv<'U>
  member this.addChoice (key: string, values: 'a[], f: 'U -> 'a option, ?descr, ?alias) =
    this.choices(key, values)
        .addImpl<'a>(key, descr, ?alias=alias)
        :> Argv<'U>
  member this.addFlag (key: string, f: 'U -> bool, ?descr, ?defaultValue, ?defaultDescr, ?alias) =
    this.boolean(!^key)
        .addImpl<bool>(key, descr, dv=(defaultValue |> Option.defaultValue false), ?dd=defaultDescr, ?alias=alias)
        :> Argv<'U>
  member this.addCounter (key: string, f: 'U -> int, ?descr, ?alias) =
    this.count(!^key)
        .addImpl<int>(key, descr, ?alias=alias)
        :> Argv<'U>
  member this.addCommaSeparatedStringSet (key: string, validate: string -> 'a option, f: 'U -> 'a list, ?descr, ?alias) =
    this.string(!^key)
        .addImpl(key, descr, ?alias=alias)
        .coerce(!^key, fun o ->
          match o with
          | None -> []
          | Some s ->
            let s =
              if JS.jsTypeof s = "string" then s :?> string
              else s.ToString()
            s.Split([|','|], StringSplitOptions.RemoveEmptyEntries)
            |> Array.map (fun s ->
              match validate s with
              | Some x -> x
              | None -> failwithf "Unknown value '%s' for option '%s'" s key)
            |> Array.toList)
        :> Argv<'U>
