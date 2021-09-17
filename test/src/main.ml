(* The gen_js_api is released under the terms of an MIT-like license.     *)
(* See the attached LICENSE file.                                         *)
(* Copyright 2015 by LexiFi.                                              *)

(** Some ad hoc code to illustrate and test various aspects
    of gen_js_api *)


[@@@ocaml.warning "-7-32-33-39"]

open Ts2ocaml
module TypeScript = Typescript.Export
module Yargs = Yargs.Export

let () =
  Printf.printf "%f\n" (Math.pi ());
  Printf.printf "%f\n" (Math.cos (Math.pi () /. 2.0));
  Printf.printf "%f\n" (Number.parseInt ~string:"42" ());
  let s = String.bold (String.of_ml "foo") in
  Printf.printf "%s\n" s;
  Printf.printf "typescript version: %s\n" (TypeScript.version ());
  ()
;;