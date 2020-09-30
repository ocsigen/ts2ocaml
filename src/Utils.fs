[<AutoOpen>]
module Utils

module String =
  let containsAny (a: string) (b: string list) =
    b |> List.exists a.Contains

  let replace (pattern:string) (destPattern:string) (text: string) =
    text.Replace(pattern,destPattern)

  let escape (s: string) =
    s
     .Replace("\\", "\\\\")
     .Replace("'", "\\'").Replace("\"", "\\\"")
     .Replace("\b", "\\b").Replace("\n", "\\n").Replace("\r", "\\r")
     .Replace("\t", "\\t")

