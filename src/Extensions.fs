[<AutoOpen>]
module Extensions

open Ts2Ml
open System
open Fable.Core
open Fable.Core.JsInterop
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
              if JS.typeof s = "string" then s :?> string
              else s.ToString()
            s.Split([|','|], StringSplitOptions.RemoveEmptyEntries)
            |> Array.map (fun s ->
              match validate s with
              | Some x -> x
              | None -> failwithf "Unknown value '%s' for option '%s'" s key)
            |> Array.toList)
        :> Argv<'U>
