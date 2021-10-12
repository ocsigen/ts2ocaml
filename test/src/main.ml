(* The gen_js_api is released under the terms of an MIT-like license.     *)
(* See the attached LICENSE file.                                         *)
(* Copyright 2015 by LexiFi.                                              *)

(** Some ad hoc code to illustrate and test various aspects
    of gen_js_api *)


[@@@ocaml.warning "-7-26-32-33-39"]

open Ts2ocaml
module TypeScript = Typescript.Export
module Yargs = Yargs.Export

module CSS = Csstype.Export
module PropTypes = Prop_types.Export
module SchedulerInteraction = Scheduler__tracing.Export.Interaction
module React = React.Export
module React_modal = React_modal.Export

let () =
  Printf.printf "%f\n" (Math.pi ());
  Printf.printf "%f\n" (Math.cos (Math.pi () /. 2.0));
  Printf.printf "%f\n" (Number.parseInt ~string:"42" ());
  let s = String.bold (String.of_ml "foo") in

  let regex = RegExp.create' ~pattern:"[abc]+" () in
  let result = RegExp.exec regex ~string:"cabaret" in
  let () =
    begin match result with
    | Some xs ->
      let ys = Array.sort xs () in
      Dom.Console.log (Dom.console ()) ~data:[Obj.magic ys];
    | None -> ()
    end
  in
  Printf.printf "typescript version: %s\n" (TypeScript.version ());
  ()
;;