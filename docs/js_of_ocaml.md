ts2ocaml for js_of_ocaml
========================

Generates binding for js_of_ocaml.

## Overview

TODO

### Using generated bindings in your project

`ts2ocaml` for `js_of_ocaml` generates `.mli` files, which should then be processed with [LexiFi/gen_js_api](https://github.com/LexiFi/gen_js_api).

You should use the latest `gen_js_api` as `ts2ocaml` uses the latest features of `gen_js_api`.
As of Oct 2021, most of the required features have not been present in the latest version in opam.
So you would have to `git submodule` their repository (`https://github.com/LexiFi/gen_js_api`) to the `lib` directory of your OCaml project.

### Standard library

TODO

------

## Usage

```bash
$ ts2ocaml jsoo [options] <inputs..>
```

## Output Options

### `-o`, `--output-dir`

The directory to place the generated bindings.
If not set, it will be the current directory.

### `-s`, `--stub-file`

The name of the JS stub file to import/require JS modules.
If not set, it will be `stub.js`.

If the stub file already exists, `ts2ocaml` will append new entries.

The resulting `stub.js` will look like:

```js
joo_global_object["React"] = require('react')
joo_global_object["ReactModal"] = require('react-modal')
joo_global_object["prop-types"] = require('prop-types') /* need Babel */
joo_global_object["scheduler/tracing"] = require('scheduler/tracing') /* need Babel */
joo_global_object["ts"] = require('typescript')
joo_global_object["yargs"] = require('yargs')
joo_global_object["yargsParser"] = require('yargs-parser')
```

The stub file uses `require` for importing packages. `/* need Babel */` indicates the referenced package is actually a ES6 module and so it needs to be converted by Babel.

## Code Generator Options

### `--int`, `--number-as-int`

Treat number types as int. If not set, float will be used.

### `--tags`, `--inherit-with-tags`

Use `TypeName.tags` type names to inherit types from other packages.

* `--tags=full` (default)
  - It generates `tags` types in the module, and tries to use `tags` type to inherit a type if it is unknown (e.g. from another package).
* `--tags=provide`
  - It only generates `tags` types in the module.
* `--tags=consume`
  - It only tries to use `tags` type if the inherited type is unknown.
* `--tag=off`
  - It disables any usage of `tags` types.

For example, assume we have `node_modules/foo/index.d.ts` and `node_modules/bar/index.d.ts` as the following:

```typescript
// foo/index.d.ts

declare namespace foo {
  interface A { ... }
}

export = foo;
```

```typescript
// bar/index.d.ts

import * as Foo from 'foo';

declare namespace bar {
  interface B extends A { ... }
}

export = bar;
```

Then the outputs will look like depending on the option you set:

```ocaml
(* Foo.mli *)

module Foo : sig
  module A : sig
    type t = [`A] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]

    (* The following will be generated if --full or --provide is set *)
    [@@js.stop] type tags =  [`A] [@@js.start] [@@js.implem type tags = [`A]]

    ...
  end
end

(* export = foo; *)
[@@@js.stop] module Export = Foo [@@@js.start] [@@@js.implem module Export = Foo]
```

```ocaml
(* Bar.mli *)

(* import * as Foo from "foo"; *)
[@@@js.stop] module Foo = Foo.Export [@@@js.start] [@@@js.implem module Foo = Foo.Export]

module Bar : sig
  module B : sig
    (* if --full or --consume is set, the following will be generated *)
    type t = [`B | Foo.A.tags] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    (* otherwise, the following will be generated *)
    type t = [`B] intf [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]

    (* if --full is set, the following will be generated *)
    [@@js.stop] type tags =  [`B | Foo.A.tags] [@@js.start] [@@js.implem type tags = [`B | Foo.A.tags]]
    (* else if --provide is set, the following will be generated *)
    [@@js.stop] type tags =  [`B] [@@js.start] [@@js.implem type tags = [`B]]

    (* the following will be generated regardless of the option *)
    val cast: t -> Foo.A.t [@@js.cast]
  end
end

(* export = bar; *)
[@@@js.stop] module Export = Bar [@@@js.start] [@@@js.implem module Export = Bar]
```

If `--provide` or `--full` is used for `foo.d.ts` and `--consume` or `--full` is used for `bar.d.ts`,
you will be able to safely cast `Bar.Export.B.t` to `Foo.Export.A.t`.
Otherwise, you will have to use `Bar.Export.B.cast`.

```ocaml
module Foo = Foo.Export
module Bar = Bar.Export

let bar : Bar.B.t = ...

let foo1 : Foo.A.t = bar :> Foo.A.t
let foo2 : Foo.A.t = Bar.B.cast bar
```

**Note:** `TypeName.tags` types will come with the "arity-safe" version of them if `--safe-arity` is also set.

### `--safe-arity`

Use `TypeName.t_n` type names to safely use overloaded types from other packages.

* `--safe-arity=full` (default)
  - It generates `t_n` types in the module, and tries to use `t_n` type if the type is unknown (e.g. from another package).
* `--safe-arity=provide`
  - It only generates `t_n` types in the module.
* `--safe-arity=consume`
  - It only tries to use `t_n` type if the type is unknown.
* `--safe-arity=off`
  - It disables any usage of `t_n` types.

For example, assume we have `node_modules/foo/index.d.ts` and `node_modules/bar/index.d.ts` as the following:

```typescript
// foo/index.d.ts

declare namespace foo {
  interface A<T> { ... }

  interface B<T = any> { ... }
}

export = foo;
```

```typescript
// bar/index.d.ts

import * as Foo from 'foo';

declare function useA(a: Foo.A<T>) : void;

declare function useB(b: Foo.B<T>) : void;

declare function useBDefault(b: Foo.B) : void;
```

Then the outputs will look like depending on the option you set:

```ocaml
(* Foo.mli *)

module Foo : sig
  module A : sig
    type 'T t = [`A of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]

    (* The following will be generated if --full or --provide is set *)
    type 'T t_1 = 'T t (* for arity 1 *)

    ...
  end

  module B : sig
    type 'T t = [`B of 'T] intf [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]

    (* The following will be generated if --full or --provide is set *)
    type 'T t_1 =  'T t  (* for arity 1 *)

    (* The following will be generated regardless of the option, since B contains an optional type parameter *)
    type    t_0 = any t  (* for arity 0 *)

    ...
  end
end

(* export = foo; *)
[@@@js.stop] module Export = Foo [@@@js.start] [@@@js.implem module Export = Foo]
```

```ocaml
(* Bar.mli *)

(* import * as Foo from "foo"; *)
[@@@js.stop] module Foo = Foo.Export [@@@js.start] [@@@js.implem module Foo = Foo.Export]

(* if --full or --consume is set, the followings will be generated *)
val useA: 'T Foo.A.t_1 -> unit [@@js.global "useA"]
val useB: 'T Foo.B.t_1 -> unit [@@js.global "useB"]
val useBDefault: Foo.B.t_0 -> unit [@@js.global "useBDefault"]

(* otherwise, the followings will be generated *)
val useA: 'T Foo.A.t -> unit [@@js.global "useA"]
val useB: 'T Foo.B.t -> unit [@@js.global "useB"]
val useBDefault: Foo.B.t -> unit [@@js.global "useBDefault"] (* this does not compile! *)
```

### `--rec-module`

Use recursive modules to simplify the output. Can impact the compilation time.

Assume we have the following input:

```typescript
interface A {
  readonly b: B;
}

interface B {
  readonly a: A;
}

interface C {
  readonly a: A;
  readonly b: B;
}
```

* `--rec-module=optimized` (default)
  - It applies [strongly-connected-component algorithm](https://en.wikipedia.org/wiki/Strongly_connected_component) to find the smallest sets of recursively defined types and modules.

```ocaml
module rec A : sig
  type t = ...
  val get_b: unit -> B.t [@@js.get "b"]
end

and B : sig
  type t = ...
  val get_a: unit -> A.t [@@js.get "a"]
end

module C : sig
  type t = ...
  val get_a: unit -> A.t [@@js.get "a"]
  val get_b: unit -> B.t [@@js.get "b"]
end
```

* `--rec-module=naive`
  - It simply makes every module recursive.
  - Not very recommended because hundreds of recursive modules would torture OCaml compiler.

```ocaml
module rec A : sig
  type t = ...
  val get_b: unit -> B.t [@@js.get "b"]
end

and B : sig
  type t = ...
  val get_a: unit -> A.t [@@js.get "a"]
end

and C : sig
  type t = ...
  val get_a: unit -> A.t [@@js.get "a"]
  val get_b: unit -> B.t [@@js.get "b"]
end
```

* `--rec-module=off`
  - It generates types and the corresponding modules (which contain methods and fields for the type) separately.

```ocaml
type _A = ...
type _B = ...
type _C = ...

module A : sig
  type t = _A
  val get_b: unit -> _B [@@js.get "b"]
end

module B : sig
  type t = _B
  val get_a: unit -> _A [@@js.get "a"]
end

module C : sig
  type t = _C
  val get_a: unit -> _A [@@js.get "a"]
  val get_b: unit -> _B [@@js.get "b"]
end
```

### `--simplify`

Turn on simplification features.

You can use `--simplify=foo,bar` to turn on multiple features. Also, `--simplify=all` enables all the features.

#### Feature: `immediate-instance`

Simplifies a value definition of an interface type with the same name **(case sensitive)** to a module.

Assume we have the following input:

```typescript
interface Foo = {
  someMethod(value: number): void;
}

declare var Foo: Foo;
```

If this option is set, the output will be:

```ocaml
module [@js.scope "Foo"] Foo : sig
  val someMethod: float -> unit [@@js.global "someMethod"]
end

(* usage *)
let _ = Foo.someMethod 42.0
```

Otherwise, the output will be:

```ocaml
module Foo : sig
  type t = ...

  val someMethod: t -> float -> unit [@@js.call "someMethod"]
end

val foo: unit -> Foo.t [@@js.global "Foo"]

(* usage *)
let _ = Foo.someMethod (foo ()) 42.0
```

A notable example is the `Math` object in ES5 (https://github.com/microsoft/TypeScript/blob/main/lib/lib.es5.d.ts).

#### Feature: `immediate-constructor`

Simplifies so-called constructor pattern.

Assume we have the following input:

```typescript
interface Foo = {
  someMethod(value: number): void;
}

interface FooConstructor {
  new(name: string) : Foo;

  anotherMethod(): number;
}

declare var Foo: FooConstructor;
```

If this option is set, the output will be:

```ocaml
module [@js.scope "Foo"] Foo : sig
  type t = ...
  val someMethod: t -> float -> unit [@@js.call "someMethod"]

  val create: string -> t [@@js.create]
  val anotherMethod: unit -> float [@@js.global "anotherMethod"]
end

(* usage *)
let _ =
  let foo = Foo.create "foo" in
  let num = Foo.anotherMethod () in
  Foo.someMethod foo num
```

Otherwise, the output will be:

```ocaml
module Foo : sig
  type t = ...

  val someMethod: t -> float -> unit [@js.call "someMethod"]
end

module FooConstructor : sig
  type t = ...

  val create: t -> name:string -> Foo.t [@@js.apply_newable]
  val anotherMethod: t -> unit -> float [@@js.call "anotherMethod"]
end

val foo: unit -> FooConstructor [@@js.global "Foo"]

(* usage *)
let _ =
  let foo = FooConstructor.create (foo ()) "foo" in
  let num = FooConstructor.anotherMethod (foo ()) () in
  Foo.someMethod foo num
```

A notable example is the `ArrayConstructor` type in ES5 (https://github.com/microsoft/TypeScript/blob/main/lib/lib.es5.d.ts).

#### Feature: `anonymous-interface-value`

Simplifies a value definition of an anonymous interface type to a module.

Assume we have the following input:

```typescript
declare var Foo: {
  someMethod(value: number): void;
};
```

If this option is set, the output will be:

```ocaml
module [@js.scope "Foo"] Foo : sig
  val someMethod: float -> unit [@@js.global "someMethod"]
end

(* usage *)
let _ = Foo.someMethod 42.0
```

Otherwise, the output will be:

```ocaml
module AnonymousInterfaceN : sig
  type t = private Ojs.t

  val someMethod: t -> float -> unit [@@js.call "someMethod"]
end

val foo: unit -> AnonymousInterfaceN.t [@@js.global "Foo"]

(* usage *)
let _ = AnonymousInterfaceN.someMethod (foo ()) 42.0
```

A notable example is the `Document` variable in DOM (https://github.com/microsoft/TypeScript/blob/main/lib/lib.dom.d.ts).

#### Feature: `named-interface-value`

Defines additional module with a suffix `Static` for a value definition of some interface type.

Note that `immediate-instance` and `immediate-constructor` will override this feature if the name of the value definition is the same as the corresponding interface.

Assume we have the following input:

```typescript
interface Foo = {
  someMethod(value: number): void;
}

declare var foo: Foo;
```

If this option is set, the output will be:

```ocaml
module Foo : sig
  type t = ...

  val someMethod: t -> float -> unit [@@js.call "someMethod"]
end

module [@js.scope "foo"] FooStatic : sig
  val someMethod: float -> unit [@@js.global "someMethod"]
end

val foo: unit -> Foo.t [@@js.global "Foo"]

(* usage *)
let _ = FooStatic.someMethod 42.0
let _ = Foo.someMethod (foo ()) 42.0 (* "instance call" is also available *)
```

Otherwise, the output will be:

```ocaml
module Foo : sig
  type t = ...

  val someMethod: t -> float -> unit [@@js.call "someMethod"]
end

val foo: unit -> Foo.t [@@js.global "Foo"]

(* usage *)
let _ = Foo.someMethod (foo ()) 42.0
```

A notable example is the `document` variable in DOM (https://github.com/microsoft/TypeScript/blob/main/lib/lib.dom.d.ts).