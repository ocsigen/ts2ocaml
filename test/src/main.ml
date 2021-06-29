(* The gen_js_api is released under the terms of an MIT-like license.     *)
(* See the attached LICENSE file.                                         *)
(* Copyright 2015 by LexiFi.                                              *)

(** Some ad hoc code to illustrate and test various aspects
    of gen_js_api *)


[@@@ocaml.warning "-7-32-33-39"]

open Ts2ocaml
open Typescript

include [%js:
  val console_log: 'a -> unit [@@js.global "console.log"]
]

module Foo = struct
  module A : sig
    type t

    val pp : t -> unit

    val create : string -> t
  end = struct
    type t = {
      name : string
    }

    let pp t = print_endline t.name

    let create name = {name}
  end

  module B : sig
    include module type of struct include A end
  end = struct
    include A
  end

  let b : B.t = B.create "test"

  let () =
    A.pp b
end

module Baz = struct
  type -'inherits intf

  module Internal_tags = struct
    type _A = [ `A ]
    and  _B = [ `B | `A ]
  end

  module Internal_types = struct
    type _A = [ `A ] intf
    type _B = [ `A | `B ] intf
  end

  module A = struct
    type t = Internal_types._A
    type tags = Internal_tags._A
    let create () : t = Obj.magic ()
  end

  module B = struct
    type t = Internal_types._B
    type tags = Internal_tags._B
    let create () : t = Obj.magic ()
  end

  module C = struct
    type 'a t = [ `C of 'a | A.tags | B.tags ] intf
    type 'a tags = [ `C of 'a | A.tags | B.tags ]
  end

  module D = struct
    type t = [ int C.tags | `D ] intf
    type tags = [ `D | int C.tags ]
  end

  let someFunctionUsingA (_a: [> A.tags] intf) = ()
  let someFunctionUsingB (_b: [> B.tags] intf) = ()

  let a = A.create ()
  let b = B.create ()

  let test () =
    someFunctionUsingA a;
    someFunctionUsingA b;
    (* someFunctionUsingB a; *)
    someFunctionUsingB b;
    ()
end


let () =
  Printf.printf "%f\n" (Math.get_PI math);
  Printf.printf "%s\n" (Ts.version);
  Printf.printf "%b\n" (is_array (Ojs.list_to_js Ojs.int_to_js [1;2;3]));
;;