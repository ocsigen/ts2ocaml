module Codeframe

#nowarn "3390" // disable warnings for invalid XML comments

open System
open Fable.Core
open Fable.Core.JS

type Position = {| line: int; column: int option |}

type [<AllowNullLiteral>] SourceLocation =
    abstract start: Position with get, set
    abstract ``end``: Position option with get, set

type [<AllowNullLiteral>] BabelCodeFrameOptions =
    /// Syntax highlight the code as JavaScript for terminals. default: false
    abstract highlightCode: bool option with get, set
    /// The number of lines to show above the error. default: 2
    abstract linesAbove: int option with get, set
    /// The number of lines to show below the error. default: 3
    abstract linesBelow: int option with get, set
    /// Forcibly syntax highlight the code as JavaScript (for non-terminals);
    /// overrides highlightCode.
    /// default: false
    abstract forceColor: bool option with get, set
    /// Pass in a string to be displayed inline (if possible) next to the
    /// highlighted location in the code. If it can't be positioned inline,
    /// it will be placed above the code frame.
    /// default: nothing
    abstract message: string option with get, set

type [<AllowNullLiteral>] ICodeframe =
    [<Emit("$0($1...)")>]
    abstract Invoke: rawLines: string * lineNumber: int * colNumber: int * ?options: BabelCodeFrameOptions -> string

type [<AllowNullLiteral>] ICodeframeColumns =
    [<Emit("$0($1...)")>]
    abstract Invoke: rawLines: string * location: SourceLocation * ?options: BabelCodeFrameOptions -> string

let [<ImportDefault("@babel/code-frame")>] codeFrame: ICodeframe = jsNative

let [<Import("codeFrameColumns", "@babel/code-frame")>] codeFrameColumns: ICodeframeColumns = jsNative

type Codeframe =
    static member CreateColumns(rawLines, startLine, ?startCol, ?endLine, ?endCol, ?highlightCode, ?linesAbove, ?linesBelow, ?forceColor, ?message) =
        let options : BabelCodeFrameOptions = JsInterop.createEmpty
        options.highlightCode <- highlightCode
        options.linesAbove <- linesAbove
        options.linesBelow <- linesBelow
        options.forceColor <- forceColor
        options.message <- message
        let startPos = {| line = startLine; column = startCol |}
        let endPos =
            match endLine with
            | Some x -> Some {| line = x; column = endCol |}
            | None -> None
        let loc : SourceLocation = JsInterop.createEmpty
        loc.start <- startPos
        loc.``end`` <- endPos
        codeFrameColumns.Invoke(rawLines, loc, options)
    static member Create(rawLines, line, col, ?highlightCode, ?linesAbove, ?linesBelow, ?forceColor, ?message) =
        let options : BabelCodeFrameOptions = JsInterop.createEmpty
        options.highlightCode <- highlightCode
        options.linesAbove <- linesAbove
        options.linesBelow <- linesBelow
        options.forceColor <- forceColor
        options.message <- message
        codeFrame.Invoke(rawLines, line, col, options)