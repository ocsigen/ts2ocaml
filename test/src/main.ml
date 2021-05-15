(* The gen_js_api is released under the terms of an MIT-like license.     *)
(* See the attached LICENSE file.                                         *)
(* Copyright 2015 by LexiFi.                                              *)

(** Some ad hoc code to illustrate and test various aspects
    of gen_js_api *)


[@@@ocaml.warning "-7-32-33-39"]

open Es5

open Ts2ocaml_baselib

module Typescript = Typescript.Make(struct include Es5 end)

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

  module Internal_types = struct
    type _A = [ `A ] intf
    type _B = [ `A | `B ] intf
  end

  module A = struct
    type t = Internal_types._A
    type 't t_inherited = 't intf constraint [> `A ] = 't
    let create () : t = Obj.magic ()
  end

  module B = struct
    type t = Internal_types._B
    type 't t_inherited = 't intf constraint [> `B ] = 't
    let create () : t = Obj.magic ()
  end

  let someFunctionUsingA (_a: _ A.t_inherited) = ()

  let a = A.create ()
  let b = B.create ()

  let test () =
    someFunctionUsingA a;
    someFunctionUsingA b;
    ()
end


let () =
  Printf.printf "%f\n" (Es5.Math.get_PI math);
  Printf.printf "%s\n" (Typescript.Ts.version);
  Printf.printf "%b\n" (is_array (Ojs.list_to_js Ojs.int_to_js [1;2;3]));
;;