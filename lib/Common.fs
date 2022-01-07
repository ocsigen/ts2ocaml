module Ts2Ml.Common

type ILogger =
  abstract tracef: fmt:Printf.StringFormat<'T, unit> -> 'T
  abstract warnf:  fmt:Printf.StringFormat<'T, unit> -> 'T
  abstract errorf: fmt:Printf.StringFormat<'T, 'Result> -> 'T

type IOptions =
  abstract followRelativeReferences: bool with get, set

type IContext<'Options when 'Options :> IOptions> =
  abstract options: 'Options
  abstract logger: ILogger

type IContext =
  inherit IContext<IOptions>

/// Stateful class to rename overloaded identifiers.
type OverloadRenamer(?rename: string -> int -> string, ?used: Set<string * string>) =
  let rename =
    match rename with
    | Some f -> f
    | None -> (fun s i -> s + (String.replicate i "'"))
  let m = new MutableMap<string * string, int>()
  do
    match used with
    | None -> ()
    | Some used ->
      for name in used |> Set.toSeq do
        m.[name] <- 0

  /// If the `name` is already used in the same `category`, returns the new renamed name.
  ///
  /// Otherwise, (even if it is used in a different `category`), returns the original name.
  ///
  /// `category` can be arbitrary, but it is intended for something like `value`, `type`, `module`, etc.
  member __.Rename (category: string) (name: string) =
    match m.TryGetValue((category, name)) with
    | true, i ->
      m.[(category, name)] <- i + 1
      let name' = rename name (i+1)
      m.[(category, name')] <- 0
      name'
    | false, _ ->
      m.[(category, name)] <- 0
      name
