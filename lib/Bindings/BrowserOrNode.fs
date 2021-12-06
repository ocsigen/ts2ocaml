// ts2fable 0.7.1
module rec BrowserOrNode
open System
open Fable.Core
open Fable.Core.JS

let [<Import("isBrowser","browser-or-node")>] isBrowser: bool = jsNative
let [<Import("isWebWorker","browser-or-node")>] isWebWorker: bool = jsNative
let [<Import("isNode","browser-or-node")>] isNode: bool = jsNative
let [<Import("isJsDom","browser-or-node")>] isJsDom: bool = jsNative
let [<Import("isDeno","browser-or-node")>] isDeno: bool = jsNative
