[<AutoOpen>]
module Ts2Ml.Extensions

let inline (|?) (xo: 'a option) (y: 'a) : 'a = Option.defaultValue y xo

/// Use when a certain code path is impossible or unreachable.
let impossible fmt =
  Printf.ksprintf (fun msg -> failwith ("impossible: " + msg)) fmt

/// Repeatedly apply `f` until the same result is obtained.
let rec repeatUntilEquilibrium<'a when 'a: equality> (f: 'a -> 'a) a =
  let a' = f a
  if (a = a') then a' else repeatUntilEquilibrium f a'

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
     .Replace("\"", "\\\"")
     .Replace("\b", "\\b").Replace("\n", "\\n").Replace("\r", "\\r")
     .Replace("\t", "\\t")

  let escapeWith (escaped: string seq) (s: string) =
    escaped |> Seq.fold (fun (state: string) e ->
      state.Replace(e, "\\" + e)
    ) s

  open Fable.Core
  [<Emit("$0.normalize()")>]
  let normalize (_: string) : string = jsNative

module Option =
  let iterNone f = function
    | Some x -> Some x
    | None -> f (); None

module Result =
  let ofOption opt =
    match opt with Some x -> Ok x | None -> Error (Unchecked.defaultof<_>)
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

  let splitChoice3 (xs: Choice<'t1, 't2, 't3> list) : 't1 list * 't2 list * 't3 list =
    let xs1, xs2, xs3 =
      xs |> List.fold (fun (xs1, xs2, xs3) -> function
        | Choice1Of3 x -> x :: xs1, xs2, xs3
        | Choice2Of3 x -> xs1, x :: xs2, xs3
        | Choice3Of3 x -> xs1, xs2, x :: xs3) ([], [], [])
    List.rev xs1, List.rev xs2, List.rev xs3

module Map =
  let addNoOverwrite k v m =
    m |> Map.change k (function None -> Some v | Some v -> Some v)

  let mergeWith f m1 m2 =
    m2 |> Map.fold (fun m1 k v2 ->
      match m1 |> Map.tryFind k with
      | None -> m1 |> Map.add k v2
      | Some v1 -> m1 |> Map.add k (f v1 v2)
    ) m1

  let intersectWith f m1 m2 =
    let getKeys = Map.keys >> Set.ofSeq
    Set.intersect (getKeys m1) (getKeys m2)
    |> Set.toSeq
    |> Seq.choose (fun key ->
      let v1 = m1 |> Map.tryFind key
      let v2 = m2 |> Map.tryFind key
      match v1, v2 with
      | None, None -> None
      | Some v, None
      | None, Some v -> Some (key, v)
      | Some v1, Some v2 -> f v1 v2 |> Option.map (fun v -> key, v))
    |> Map.ofSeq

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

type OptionBuilder() =
  member inline _.Bind (v,f) = Option.bind f v
  member inline _.Return v = Some v
  member inline _.BindReturn (v, f) = Option.map f v
  member inline _.Bind2Return (v1, v2, f) = Option.map2 f v1 v2
  member inline _.Bind3Return (v1, v2, v3, f) = Option.map3 f v1 v2 v3
  member _.MergeSources (v1, v2) =
    match v1, v2 with
    | Some x1, Some x2 -> Some (x1, x2)
    | _, _ -> None
  member _.MergeSources3 (v1, v2, v3) =
    match v1, v2, v3 with
    | Some x1, Some x2, Some x3 -> Some (x1, x2, x3)
    | _, _, _ -> None
  member inline _.For (xs, f) = Seq.tryPick f xs
  member inline _.ReturnFrom o = o
  member inline _.Zero () = None

let option = new OptionBuilder()

open Fable.Core
open Fable.Core.JsInterop

type JS.ObjectConstructor with
  [<Emit("$0.entries($1)")>]
  member __.entries (_: 'a) : (string * obj) [] = jsNative

type JS.NumberConstructor with
  [<Emit("$0.isSafeInteger($1)")>]
  member __.isSafeInteger (_: float) : bool = jsNative

type JSRecord<'TKey, 'TValue> =
  [<EmitIndexer>]
  abstract member Item: 'TKey -> 'TValue option with get
  [<EmitIndexer>]
  abstract member Item: 'TKey -> 'TValue with set
  [<Emit("Object.keys($0)")>]
  abstract member keys: 'TKey[]
  [<Emit("Object.values($0)")>]
  abstract member values: 'TValue[]
  [<Emit("Object.entries($0)")>]
  abstract member entries: ('TKey * 'TValue)[]
  [<Emit("$1 in $0")>]
  abstract member hasKey: 'TKey -> bool

module JSRecord =
  [<Emit("{}")>]
  let empty<'TKey, 'TValue> : JSRecord<'TKey, 'TValue> = jsNative

type JSObj =
  [<EmitIndexer>]
  abstract member Item: string -> JSObj option with get
  [<EmitIndexer>]
  abstract member Item: string -> JSObj with set
  [<Emit("Object.keys($0)")>]
  abstract member keys: string[]
  [<Emit("Object.values($0)")>]
  abstract member values: JSObj[]
  [<Emit("Object.entries($0)")>]
  abstract member entries: (string * JSObj)[]
  [<Emit("$1 in $0")>]
  abstract member hasKey: string -> bool

module JSObj =
  [<Emit("{}")>]
  let empty : JSObj = jsNative
  [<Emit("$0")>]
  let box _ : JSObj = jsNative
  [<Emit("$0")>]
  let unbox (_: JSObj) : 'a = jsNative

module JS =
  [<Emit("typeof $0")>]
  let typeof (_: 'a) : string = jsNative

  let cloneWith (f: 'a -> unit) (x: 'a) =
    let newX = JS.Constructors.Object.assign(!!{||}, [x]) :?> 'a
    f newX
    newX

  let stringify (x: obj) =
    let objSet = JS.Constructors.Set.Create()
    JS.JSON.stringify(x, space=2, replacer=(fun _key value ->
      if not (isNullOrUndefined value) && typeof value = "object" then
        if objSet.has(value) then box "<circular object>"
        else
          objSet.add value |> ignore
          value
      else
        value
    ))

let inline nodeOnly (f: unit -> 'a option) : 'a option =
  if not BrowserOrNode.isNode then None
  else f ()

let inline assertNode () =
  assert BrowserOrNode.isNode

module Path =
  module Node = Node.Api

  type Absolute = string
  type Difference = string

  let normalizeSlashes (path: string) =
    path |> String.replace "\\" "/"

  let absolute (path: string) : Absolute =
    if Node.path.isAbsolute(path) then path |> normalizeSlashes
    else Node.path.resolve(path) |> normalizeSlashes

  let relativeToCwd (path: string) =
    if Node.path.isAbsolute(path) then
      Node.path.relative(Node.``process``.cwd(), path) |> normalizeSlashes
    else path |> normalizeSlashes

  let diff (fromPath: Absolute) (toPath: Absolute) : string =
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
