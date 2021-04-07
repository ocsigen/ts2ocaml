(* The gen_js_api is released under the terms of an MIT-like license.     *)
(* See the attached LICENSE file.                                         *)
(* Copyright 2015 by LexiFi.                                              *)

(** Some ad hoc code to illustrate and test various aspects
    of gen_js_api *)


[@@@ocaml.warning "-7-32-33-39"]

open Es5

open Ts2ocaml_baselib

include [%js:
  val console_log: 'a -> unit [@@js.global "console.log"]
]

let () =
  Printf.printf "%f\n" (Es5.Math.get_PI math);
  Printf.printf "%b\n" (is_array (Ojs.list_to_js Ojs.int_to_js [1;2;3]));
;;