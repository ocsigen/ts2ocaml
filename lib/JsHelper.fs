module Ts2Ml.JsHelper

open Fable.Core
open Fable.Core.JsInterop

module Node = Node.Api

let getPackageJsonPath (exampleFilePath: string) =
  nodeOnly <| fun () ->
    let parts =
      exampleFilePath
      |> String.split Path.separator
      |> List.ofArray
    match parts |> List.tryFindIndexBack ((=) "node_modules") with
    | None -> None
    | Some i ->
      let prefix, rest = List.splitAt (i+1) parts
      if rest = [] then None
      else
        let packageName =
          match rest with
          | userName :: packageName :: _ when userName.StartsWith("@") -> [userName; packageName]
          | packageName :: _ -> [packageName]
          | _ -> impossible "getPackageJsonPath_root"
        let path =
          prefix @ packageName @ ["package.json"] |> String.concat Path.separator

        if not <| Node.fs.existsSync(!^path) then None
        else Some (Path.absolute path)

type IPackageExportItemEntry =
  inherit JSRecord<string, string>
  abstract ``default``: string option

type IPackageExportItem =
  inherit JSRecord<string, U2<string, IPackageExportItemEntry>>
  abstract types: U2<string, IPackageExportItemEntry> option

type IPackageJson =
  abstract name: string
  abstract version: string
  abstract types: string option
  abstract typings: string option
  abstract exports: JSRecord<string, U2<string, IPackageExportItem>> option

let getPackageInfo (exampleFilePath: string) : Syntax.PackageInfo option =
  nodeOnly <| fun () ->
    match getPackageJsonPath exampleFilePath with
    | None -> None
    | Some path ->
      let p =
        let content = Node.fs.readFileSync(path, "utf-8")
        !!JS.JSON.parse(content) : IPackageJson

      let rootPath = Path.dirname path

      let name =
        if p.name.StartsWith("@types/") then
          let tmp = p.name.Substring(7)
          if tmp.Contains("__") then "@" + tmp.Replace("__", "/")
          else tmp
        else p.name

      let shortName =
        p.name
        |> String.splitThenRemoveEmptyEntries "/"
        |> Array.skipWhile (fun s -> s.StartsWith("@"))
        |> String.concat "/"

      let exports =
        match p.exports with
        | None -> []
        | Some exports ->
          [
            for k, v in exports.entries do
              if JS.typeof v = "string" then
                let v = !!v : string
                if v.EndsWith(".d.ts") then yield k, v
              else
                let v = !!v : IPackageExportItem
                match v.types with
                | None -> ()
                | Some types ->
                  if JS.typeof types = "string" then
                    yield k, !!types
                  else
                    let types = !!types : IPackageExportItemEntry
                    match types.``default`` with
                    | Some v -> yield k, v
                    | None ->
                      yield!
                        types.entries
                        |> Array.tryPick (fun (_, v) ->
                          if JS.typeof v = "string" && v.EndsWith(".d.ts") then Some v
                          else None)
                        |> Option.map (fun v -> k, v)
                        |> Option.toList
          ]

      let indexFile =
        match Option.orElse p.types p.typings, exports |> List.tryFind (fst >> (=) ".") with
        | None, None ->
          let index = Path.join [rootPath; "index.d.ts"]
          if not <| Node.fs.existsSync(!^index) then None
          else Some index
        | Some typings, _
        | None, Some (_, typings) ->
          Path.join [rootPath; typings] |> Some

      let exports =
        exports
        |> List.filter (fst >> (<>) ".")
        |> List.map (fun (k, v) ->
          {| submodule = k;
             file = Path.join [rootPath; v] |})

      Some {
        name = name
        shortName = shortName
        isDefinitelyTyped = p.name.StartsWith("@types/")
        version = p.version
        rootPath = rootPath
        indexFile = indexFile
        exports = exports
      }

type InferenceResult =
  | Valid of string
  | Heuristic of string
  | Unknown
module InferenceResult =
  let unwrap defaultValue = function
    | Valid s | Heuristic s -> s
    | Unknown -> defaultValue
  let tryUnwrap = function
    | Valid s | Heuristic s -> Some s
    | Unknown -> None

let inferPackageInfoFromFileName (sourceFile: Path.Absolute) : {| name: string; isDefinitelyTyped: bool; rest: string list |} option =
  let parts =
    sourceFile
      |> fun x ->
        let inm = x.LastIndexOf "node_modules"
        if inm = -1 then x
        else x.Substring(inm)
      |> String.split "/"
      |> List.ofArray
  match parts with
  | "node_modules" :: "@types" :: name :: rest ->
    let name = if name.Contains("__") then "@" + name.Replace("__", "/") else name
    Some {| name = name; isDefinitelyTyped = true; rest = rest |}
  | "node_modules" :: user :: name :: rest when user.StartsWith("@") ->
    Some {| name = user + "/" + name; isDefinitelyTyped = false; rest = rest |}
  | "node_modules" :: name :: rest ->
    Some {| name = name; isDefinitelyTyped = false; rest = rest |}
  | _ -> None

let inline stripExtension path =
  let stripEnd ext cont (path: string) =
    if path.EndsWith(ext) then path.Substring(0, path.Length - ext.Length)
    else cont path
  stripEnd ".d.ts" (stripEnd ".ts" id) path

let getJsModuleName (info: Syntax.PackageInfo option) (sourceFile: Path.Absolute) =
  let getSubmodule rest =
    match List.rev rest with
    | "index.d.ts" :: name :: _ -> name
    | name :: _ -> stripExtension name
    | [] -> impossible "getJsModuleName_getSubmodule"
  match info with
  | Some info ->
    if info.indexFile |> Option.exists ((=) sourceFile) then
      info.name |> Valid
    else
      // make it relative to the package root directory
      let relativePath = Path.diff info.rootPath sourceFile
      if info.isDefinitelyTyped then
        Path.join [info.name; stripExtension relativePath] |> Valid
      else
        match info.exports |> List.tryFind (fun x -> x.file = sourceFile) with
        | Some export -> Path.join [info.name; export.submodule] |> Valid
        | None -> // heuristic
          let submodule =
            relativePath
            |> String.splitThenRemoveEmptyEntries "/"
            |> List.ofArray
            |> getSubmodule
          Path.join [info.name; submodule] |> Heuristic
  | None ->
    match inferPackageInfoFromFileName sourceFile with
    | None ->
      Path.basename sourceFile |> stripExtension |> Heuristic
    | Some info ->
      if info.isDefinitelyTyped then
        let rest =
          match List.rev info.rest with
          | "index.d.ts" :: rest -> List.rev rest
          | other :: rest ->
            stripExtension other :: rest |> List.rev
          | [] -> []
        info.name :: rest |> String.concat "/" |> Valid
      else
        match info.rest with
        | ["index.d.ts"] -> Valid info.name
        | rest ->
          info.name + "/" + getSubmodule rest
          |> Heuristic

let deriveModuleName (info: Syntax.PackageInfo option) (srcs: Path.Absolute list) =
 match srcs with
  | [] -> invalidArg "srcs" "source is empty"
  | [src] -> getJsModuleName info src
  | srcs ->
    let fallback () =
      let names =
        srcs
        |> List.choose inferPackageInfoFromFileName
        |> List.map (fun info -> info.name)
        |> List.groupBy id
        |> List.map (fun (name, xs) -> name, List.length xs)
      names |> List.maxBy (fun (_, count) -> count) |> fst |> Heuristic
    match info with
    | None -> fallback ()
    | Some info ->
      if info.indexFile |> Option.exists (fun index -> srcs |> List.exists ((=) index)) then
        Valid info.name
      else
        fallback ()

let tryGetActualFileNameFromRelativeImportPath (currentFile: Path.Absolute) (allFiles: Path.Absolute list) (path: string) =
  let path = Path.join [Path.dirname currentFile; path]
  if not <| path.EndsWith(".ts") then
    let tryFind p = if allFiles |> List.contains p then Some p else None
    tryFind $"{path}.d.ts"
    |> Option.orElseWith (fun () -> tryFind (Path.join [path; "index.d.ts"]))
    |> Option.orElseWith (fun () -> allFiles |> List.tryFind (fun p -> p.StartsWith(path)))
  else
    if allFiles |> List.contains path then Some path
    else None

let resolveRelativeImportPath (info: Syntax.PackageInfo option) (currentFile: Path.Absolute) (allFiles: Path.Absolute list) (path: string) =
  if path.StartsWith(".") then
    let targetPath =
      match tryGetActualFileNameFromRelativeImportPath currentFile allFiles path with
      | Some path -> path
      | None -> Path.join [Path.dirname currentFile; path; "index.d.ts"]
    getJsModuleName info targetPath
  else
    Valid path

[<StringEnum(CaseRules.SnakeCase); RequireQualifiedAccess>]
type NodeBuiltin =
  | Assert
  | AsyncHooks
  | Buffer
  | ChildProcess
  | Cluster
  | Console
  | Constants
  | Crypto
  | Dgram
  | DiagnosticsChannel
  | Dns
  | Domain
  | Events
  | Fs
  | Http
  | [<CompiledName("http2")>] Http2
  | Https
  | Inspector
  | Module
  | Net
  | Os
  | Path
  | PerfHooks
  | Process
  | Punycode
  | Querystring
  | Readline
  | Repl
  | Stream
  | StringDecoder
  | Timers
  | Tls
  | TraceEvents
  | Tty
  | Url
  | Util
  | [<CompiledName("v8")>] V8
  | Vm
  | Wasi
  | WorkerThreads
  | Zlib

let nodeBuiltins : Set<NodeBuiltin> =
  set [
    NodeBuiltin.Assert; NodeBuiltin.AsyncHooks; NodeBuiltin.Buffer; NodeBuiltin.ChildProcess;
    NodeBuiltin.Cluster; NodeBuiltin.Console; NodeBuiltin.Constants; NodeBuiltin.Crypto;
    NodeBuiltin.Dgram; NodeBuiltin.DiagnosticsChannel; NodeBuiltin.Dns; NodeBuiltin.Domain;
    NodeBuiltin.Events; NodeBuiltin.Fs; NodeBuiltin.Http; NodeBuiltin.Http2; NodeBuiltin.Https;
    NodeBuiltin.Inspector; NodeBuiltin.Module; NodeBuiltin.Net; NodeBuiltin.Net; NodeBuiltin.Os;
    NodeBuiltin.Path; NodeBuiltin.PerfHooks; NodeBuiltin.Process; NodeBuiltin.Punycode;
    NodeBuiltin.Querystring; NodeBuiltin.Readline; NodeBuiltin.Repl; NodeBuiltin.Stream;
    NodeBuiltin.StringDecoder; NodeBuiltin.Timers; NodeBuiltin.Tls; NodeBuiltin.TraceEvents;
    NodeBuiltin.Tty; NodeBuiltin.Url; NodeBuiltin.Util; NodeBuiltin.V8; NodeBuiltin.Vm;
    NodeBuiltin.Wasi; NodeBuiltin.WorkerThreads; NodeBuiltin.Zlib;
  ]

type NodeBuiltinResult = {
  name: NodeBuiltin;
  subpath: string option;
}

open System.Text.RegularExpressions

let nodeBuiltinPattern = new Regex("^(?:node:)?(\\w+)(?:\\/(.+))?$")

let getNodeBuiltin (specifier: string) : NodeBuiltinResult option =
  let res = nodeBuiltinPattern.Match(specifier)
  if isNull res || res.Groups.Count < 2 then None
  else
    let name : NodeBuiltin = !!res.Groups[1].Value
    if nodeBuiltins |> Set.contains name |> not then None
    else
      let subpath =
        if res.Groups.Count < 3 then None
        else
          let subpath = res.Groups[2].Value
          if System.String.IsNullOrWhiteSpace subpath then None
          else Some subpath
      Some { name = name; subpath = subpath }
