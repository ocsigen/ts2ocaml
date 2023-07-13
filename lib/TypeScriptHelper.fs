module Ts2Ml.TypeScriptHelper

open TypeScript
open Fable.Core.JsInterop

let defaultCompilerOptions =
  jsOptions<Ts.CompilerOptions>(fun o ->
    o.target <- Some Ts.ScriptTarget.Latest
    o.noEmit <- Some true
    o.moduleResolution <- Some Ts.ModuleResolutionKind.NodeNext
  )

type IDummyCompilerHost =
  abstract getSourceFile: fileName: string * languageVersion: Ts.ScriptTarget * ?onError: (string -> unit) * ?shouldCreateNewSourceFile: bool -> Ts.SourceFile option
  abstract getSourceFileByPath: fileName: string * path: Ts.Path * languageVersion: Ts.ScriptTarget * ?onError: (string -> unit) * ?shouldCreateNewSourceFile: bool -> Ts.SourceFile option
  abstract getDefaultLibFileName: options: Ts.CompilerOptions -> string
  abstract useCaseSensitiveFileNames: unit -> bool
  abstract getCanonicalFileName: fileName: string -> string
  abstract getCurrentDirectory: unit -> string
  abstract getNewLine: unit -> string
  abstract fileExists: fileName: string -> bool
  abstract readFile: fileName: string -> string option
  abstract directoryExists: directoryName: string -> bool
  abstract getDirectories: path: string -> ResizeArray<string>

let createDummyCompilerHost (fileNames: string[]) (sourceFiles: Ts.SourceFile[]) : Ts.CompilerHost =
  let host =
    { new IDummyCompilerHost with
        member _.getSourceFile(fileName, _, ?__, ?___) =
          sourceFiles |> Array.tryFind (fun sf -> sf.fileName = fileName)
        member _.getSourceFileByPath(fileName, _, _, ?__, ?___) =
          sourceFiles |> Array.tryFind (fun sf -> sf.fileName = fileName)
        member _.getDefaultLibFileName(_) = "lib.d.ts"
        member _.useCaseSensitiveFileNames() = false
        member _.getCanonicalFileName(s) = s
        member _.getCurrentDirectory() = ""
        member _.getNewLine() = "\r\n"
        member _.fileExists(fileName) = Array.contains fileName fileNames
        member _.readFile(fileName) = sourceFiles |> Array.tryPick (fun sf -> if sf.fileName = fileName then Some (sf.getFullText()) else None)
        member _.directoryExists(_) = true
        member _.getDirectories(_) = ResizeArray []
    }
  !!host

let createProgramForNode (fileNames: string[]) (options: Ts.CompilerOptions) =
  ts.createProgram(fileNames, options, ts.createCompilerHost(options, true))

let createProgramForBrowser (sourceFiles: Ts.SourceFile[]) (options: Ts.CompilerOptions) =
  let fileNames = sourceFiles |> Array.map (fun s -> s.fileName)
  ts.createProgram(
    sourceFiles |> Array.map (fun s -> s.fileName),
    options,
    createDummyCompilerHost fileNames sourceFiles
  )
