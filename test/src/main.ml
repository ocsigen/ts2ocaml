(* The gen_js_api is released under the terms of an MIT-like license.     *)
(* See the attached LICENSE file.                                         *)
(* Copyright 2015 by LexiFi.                                              *)

(** Some ad hoc code to illustrate and test various aspects
    of gen_js_api *)


[@@@ocaml.warning "-7-26-32-33-39"]

open Ts2ocaml
module TypeScript = Typescript.Export
module Yargs = Yargs.Export
module React = React.Export
module React_modal = React_modal.Export

let () =
  Printf.printf "typescript version: %s\n" (TypeScript.version ())
;;