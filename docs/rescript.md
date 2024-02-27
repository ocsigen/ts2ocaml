> **Note:** ReScript support is currently available in `2.0.0-beta.0` or later.
> 
> Please install it with `npm install -g @ocsigen/ts2ocaml@beta`.

# ts2ocaml for ReScript

Generates binding for ReScript.

# Overview

`ts2ocaml` is a powerful tool, but there are so many options and also some caverts.

Therefore, we first provide a walkthrough to use this tool for your project.

The documentation for the `ts2ocaml` command and its options comes after the walkthrough, starting with the [Usage](#usage) setion.

## Requirements

`ts2ocaml` targets ReScript v11 or later.

## Adding `ts2ocaml.res`

ReScript has a rich standard library to use JS and DOM APIs and `ts2ocaml` makes use of it as much as possible. In addition to that, `ts2ocaml` uses a small standard library to handle some TypeScript-specific concepts:

- `intf<'tags>` type, which is used for [tag-based subtyping](#feature-tag).
- TypeScript-specific primitive types, such as `any`, `never`, `unknown`, etc.
- Utility types for handling TypeScript's union types and intersection types.

Run `ts2ocaml res --create-stdlib` to generate `ts2ocaml.res`. You can safely add it to your project, and even modify it for your needs.

## Choosing a preset

`ts2ocaml` has many options, so there is an option [`--preset`](#--preset) to set multiple options at once which is commonly used together.

- `--preset=minimal`
  - A preset to **minimize the output**.
  - Intended for library authors, who will modify the output and build a binding library upon it.
    - It generates the simplest binding.
    - However, it lacks subtyping and it will not compile if the package depends on another package.
- `--preset=safe`
  - A preset to generate a code **which just compiles and works**.
  - Suited for generating bindings for relatively small packages, which involve less inheritance and slightly depend on other packages.
    - e.g. `yargs`, which has a minimal dependency and does not make use of `extends` so much.
- `--preset=full`
  - A preset to generate a code with **more type safety** and **more support for package dependency**.
  - Suited for generating bindings for large packages, which have many `extends` and/or heavily depend on another package.
    - e.g. React component packages, which almost certainly inherits many interfaces from React.

[`--preset`](#--preset) doesn't override options you explicitly set.
See [`--preset`](#--preset) for the options which will be set by each preset.

> **Hint:** if a package `foo` depends only on `bar` and `bar` depends on many other packages,
> it's safe to use `--preset=safe` to `foo` and `--preset=full` to `bar`, but not vice versa.

## Generating and using the bindings

Once you figure out which preset (and some additional options if any) to use, you are now ready to run `ts2ocaml`.

```
ts2ocaml res --preset full --output-dir src node_modules/typescript/lib/typescript.d.ts
```

A binding (`typescript.res` and `typescript.resi` in this example) will be generated in the `src` directory.

The binding has an `Export` module which corresponds to the package's default export (`export default ..` or `export = ..` in TypeScript).

Define a module alias to "import" the package:

```rescript
module Ts = Typescript.Export
```

Now you can use the binding through the module alias:

```rescript
let source = "let x: string = 'hello, world!'"

let result = Ts.transpileModule(
  ~input=source,
  ~transpileOptions=Ts.TranspileOptions.make(
    ~compilerOptions=Ts.CompilerOptions.make(~\"module"=CommonJS),
  ),
)

Js.log(result->Ts.TranspileOutput.get_outputText)
```

# Conventions

Here we describe the coding conventions and file name conventions used by `ts2ocaml` to ensure that multiple bindings work together without problem. If you are not interested, you can skip to the [Usage](#usage) setion.

## `import` and `export`

To work with multiple files and packages, `ts2ocaml` has some conventions around the name of the generated OCaml source codes.

1. If not known, `ts2ocaml` computes the JS module name of the input `.d.ts` file by [heuristics](#how-the-heuristics-work).
2. `ts2ocaml` converts the JS module name to a ReScript module name by the followings:
   - Removes `@` at the top of the module name
   - Replaces `/` with `__`
   - Replaces any other signs (such as `-`) to `_`
3. `ts2ocaml` uses the ReScript module name as the output file name.

### How the heuristics work

- If the filename is equal to `types` or `typings` of `package.json`, then `ts2ocaml` will use the package name itself.
  - input: `node_modules/typescript/lib/typescript.d.ts`
  - `package.json`: `"typings": "./lib/typescript.d.ts",`
  - `getJsModuleName`: `typescript`
  - output file: `typescript.res`
- If the filename is present in `exports` of `package.json`, then `ts2ocaml` will combine the package name and the exported module name.
  - input: `node_modules/@angular/common/http/http.d.ts`
  - `package.json`: `"exports": { .., "./http": { "types": "./http/http.d.ts", .. }, .. }`
  - `getJsModuleName`: `@angualr/common/http`
  - output file: `angular__common__http.res`
- Otherwise, `ts2ocaml` uses a heuristic module name: it will combine the package name and the filename. `index.d.ts` is handled specially.
  - input: `node_modules/cassandra-driver/lib/auth/index.d.ts`
  - `getJsModuleName`: `cassandra-driver/auth`
  - output file: `cassandra_driver__auth.res`
  - if `package.json` is not present, the package name is also inferred heuristically from the filename.

### How the `import` statements are translated

- `import` of another package from `node_modules` will be converted to an `open` statement or a module alias.
  - The ReScript module name of the imported package is computed by the step 2 of [the above](#handling-import-and-export).

```typescript
// node_modules/@types/react/index.d.ts
import * as CSS from "csstype";
import { Interaction as SchedulerInteraction } from "scheduler/tracing";
```

```rescript
// react.res
/* import * as CSS from 'csstype'; */
module CSS = Csstype.Export
/* import { Interaction as SchedulerInteraction } from 'scheduler/tracing'; */
module SchedulerInteraction = Scheduler__tracing.Export.Interaction
```

- `import` of relative path will be converted to an `open` statement or a module alias.
  - The OCaml module name of the imported file will also be inferred by [heuristics](#how-the-heuristics-work).

```typescript
// node_modules/cassandra-driver/index.d.ts
import { auth } from "./lib/auth";
```

```rescript
// cassandra_driver.res
module Auth = Cassandra_driver__auth.Export.Auth
```

```typescript
// node_modules/cassandra-driver/lib/mapping/index.d.ts
import { Client } from "../../";
```

```rescript
// cassandra_driver__mapping.res
module Client = Cassandra_driver.Export.Client
```

- Indirect `import` using identifiers is not yet be supported.

```typescript
import { types } from "./lib/types";
import Uuid = types.Uuid; // we should be able to convert this to `module Uuid = Type.Uuid`, but not yet
```

- Direct `export` of an external module **will not be supported**.

```typescript
export { someFunction } from "./lib/functions"; // this is VERY hard to do in OCaml!
```

### How the `export` statements are translated

`ts2ocaml` will create a module named `Export` to represent the exported definitions.

- If an export assignment `export = Something` is used, the `Export` module will be an alias to the `Something` module.

```rescript
/* export = Something */
module Export = Something
```

- If ES6 exports `export interface Foo` or `export { Bar }` are used, the `Export` module will contain the exported modules.

```rescript
module Export = {
  /* export interface Foo */
  module Foo = Foo
  /* export { Bar } */
  module Bar = Bar
  /* export { Baz as Buzz } */
  module Buzz = Baz
}
```

This is why you are advised to use the generated bindings with the following:

```rescript
/* This is analogous to `import * as TypeScript from "typescript";` */
module TypeScript = Typescript.Export
```

## Optional type parameters

TypeScript makes use of [generic parameter defaults](https://www.typescriptlang.org/docs/handbook/2/generics.html#generic-parameter-defaults), where you can make a type parameter optional with a default type, which is not supported by ReScript. As such, `ts2ocaml` emits additional type aliases when it encounters such type parameters.

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

import * as Foo from "foo";

declare function useA(a: Foo.A<T>): void;
declare function useB(b: Foo.B<T>): void;
declare function useBDefault(b: Foo.B): void;
```

Then the outputs will look like this:

```rescript
/* foo.res */

module Foo = {
  module A = {
    type t<'T> = intf<[#A(T)]>

    ...
  }

  module B = {
    type t<'T> = intf<#B(T)>
    type t0 = t<any>

    ...
  }
}

/* export = foo; */
module Export = Foo
```

```rescript
/* bar.res */

/* import * as Foo from "foo"; */
module Foo = Foo.Export

@module("bar") @val external useA: (Foo.A.t<'T>) => unit = "useA"
@module("bar") @val external useB: (Foo.B.t<'T>) => unit = "useB"
@module("bar") @val external useBDefault: (Foo.B.t0) => unit = "useBDefault"
```

# Usage

```bash
$ ts2ocaml res [options] <inputs..>
```

> See also [the common options](common_options.md).

# General Options

## `--preset`

Specify the preset to use.

- `--preset=minimal`
  - It sets `--simplify=all``.
- `--preset=safe`
  - It sets `--subtyping=cast-function`.
  - It also sets all the options `--preset=minimal` sets.
- `--preset=full`
  - It sets `--inherit-with-tags=full` and `--subtyping=tag`.
  - It also sets all the options `--preset=safe` sets.

## `--create-stdlib`

If set, `ts2ocaml` will create `ts2ocaml.res`.

# Output Options

## `-o`, `--output-dir`

The directory to place the generated bindings.
If not set, it will be the current directory.

## `--no-resi`

If set, `ts2ocaml` will not generate interface files (`.resi`).

# JS Module Options

## `--module`

Override the JS module type. If not set, it is inferred from the input.

- `--module=es`: Treats the input as an ES module.
- `--module=cjs`: Treats the input as a CommonJS module.
- `--module=none`: Treats the input as a global definition.

## `--name`

Override the JS module name used in the `@module` attribute.
If not set, it is inferred from `package.json`.

# Typer Options

## `--int`, `--number-as-int`

Treat number types as `int`. If not set, `float` will be used.

## `--subtyping`

> See also [the detailed docs about modeling TypeScript's subtyping in OCaml](modeling_subtyping.md).

Turn on subtyping features.

You can use `--subtyping=foo,bar` to turn on multiple features. Also, use `--subtyping=off` to explicitly disable subtyping features.

### Feature: `tag`

Use `intf<'tags>` for class and interface types, which [simulates nominal subtyping](modeling_subtyping.md#phantom-types-with-row-polymorphism-polymorphic-variants) by putting to `'tags` the class names as a polymorphic variant.

For example, assume we have the following input:

```typescript
interface A {
  methA(a: number): number;
}

interface B extends A {
  methB(a: number, b: number): number;
}

interface C extends B {
  methC(a: number, b: number, c: number): number;
}
```

When this feature is used, the resulting binding will look like:

```rescript
module A = {
  type t = intf<[ #A ]>
  @send external methA: (t, ~a:float) => float = "methA"
  external castFrom: (intf<[> #A ]>) => t = "%identity"
}

module B = {
  type t = intf<[ #A | #B ]>
  @send external methB: (t, ~a:float, ~b:float) => float = "methB"
  external castFrom: (intf<[> #B ]>) => t = "%identity"
}

module C = {
  type t = intf<[ #A | #B | #C ]>
  @send external methC: (t, ~a:float, ~b:float, ~c:float) => float = "methC"
  external castFrom: (intf<[> #C ]>) => t = "%identity"
}
```

So if we have a `let x : C.t`, you can directly cast it to `A.t` by writing `x :> A.t`.

Alternatively, you can also write `A.castFrom(x)`, which uses a generic cast function `castFrom`.

```rescript
let c : C.t = ...

let a1 : A.t = c :> A.t
let a2 : A.t = A.castFrom(c)
```

### Feature: `cast-function`

Add [`cast` functions](https://github.com/ocsigen/ts2ocaml/blob/bootstrap/docs/modeling_subtyping.md#cast-functions) to cast types around.

For example, assume we have the following input:

```typescript
interface A {
  methA(a: number): number;
}

interface B extends A {
  methB(a: number, b: number): number;
}

interface C extends B {
  methC(a: number, b: number, c: number): number;
}
```

When this feature is used, the resulting binding will look like:

```rescript
module A = {
  type t
  @send external methA: (t, ~a:float) => float = "methA"
}

module B = {
  type t
  @send external methB: (t, ~a:float, ~b:float) => float = "methB"
  external castToA: (t) => A.t = "%identity"
}

module C = {
  type t
  @send external methC: (t, ~a:float, ~b:float, ~c:float) => float = "methC"
  external castToB: (t) => B.t = "%identity"
}
```

So if we have a `let x : C.t`, you can cast it to `A.t` by writing `B.castToA(C.castToB(x))`.

```rescript
let c : C.t = ...

let a : A.t = x->C.castToB->B.castToA
```

This feature is less powerful than [`tag`](#feature-tag), but it has some use cases [`tag`](#feature-tag) doesn't cover.

- [`tag`](#feature-tag) [doesn't support diamond inheritance](modeling_subtyping.md#phantom-types-with-row-polymorphism-polymorphic-variants), while `cast-function` does.
- When [`--inherit-with-tags`](#--inherit-with-tags) is not used, [`tag`](#feature-tag) doesn't support casting a type to other from a different package, while `cast-function` does.

## `--inherit-with-tags`

> **Note:** This options requires [`--subtyping=tag`](#feature-tag). If the `tag` feature is not specified, it will fail with an error.

Use `TypeName.tags` type names to inherit types from other packages.

- `--inherit-with-tags=full` (default)
  - It generates `tags` types in the module, and tries to use `tags` type to inherit a type if it is unknown (e.g. from another package).
- `--inherit-with-tags=provide`
  - It only generates `tags` types in the module.
- `--inherit-with-tags=consume`
  - It only tries to use `tags` type if the inherited type is unknown.
- `--inherit-with-tags=off`
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

```rescript
/* foo.res */

module Foo = {
  module A = {
    type t = intf<[ #A ]>

    /* this will be generated if `full` or `provide` is set */
    type tags = [ #A ]

    /* this will be generated regardless of the option */
    type this<'tags> = intf<'tags> constraint 'tags = [> #A ]
    external castFrom: (this<'tags>) => t = "%identity"

    ...
  }
}

/* export = foo; */
module Export = Foo
```

```rescript
/* bar.res */

/* import * as Foo from "foo"; */
module Foo = Foo.Export

module Bar = {
  module B = {
    /* if `full` or `consume` is set, this will be generated */
    type t = intf<[ #B | Foo.A.tags ]>
    /* otherwise, this will be generated */
    type t = intf<[ #B ]>

    /* if `full` is set, this will be generated */
    type tags = [ #B | Foo.A.tags ]
    /* else if `provide` is set, this will be generated */
    type tags = [ #B ]

    /* this will be generated regardless of the option */
    type this<'tags> = intf<'tags> constraint 'tags = [> #B ]
    external castFrom: (this<'tags>) => t = "%identity"

    ...
  }
}

/* export = bar; */
module Export = Bar
```

If `provide` or `full` is used for `foo.d.ts` and `consume` or `full` is used for `bar.d.ts`,
you will be able to safely cast `B.t` to `A.t`, although they come from different packages.

```rescript
module Foo = Foo.Export
module Bar = Bar.Export

let bar : Bar.B.t = ...

let foo1 : Foo.A.t = bar :> Foo.A.t
let foo2 : Foo.A.t = Foo.A.castFrom(bar)
```

Otherwise, you can't safely cast `B.t` to `A.t`. To do it, you will have to

- set [`--subtyping=cast-function`](#feature-cast-function) to obtain `castToA: (B.t) => A.t`, or
- manually add `#A` to the definition of `B.t` (and `B.tags` if you choose to provide).

# Code Generator Options

## `--simplify`

Turn on simplification features.

You can use `--simplify=foo,bar` to turn on multiple features. Also, `--simplify=all` enables all the features and `--simplify=off` explicitly disables simplification features.

### Feature: `immediate-instance`

Simplifies a value definition of an interface type with the same name **(case sensitive)** to a module.

Assume we have the following input:

```typescript
interface Foo = {
  someMethod(value: number): void;
}

declare var Foo: Foo;
```

If this option is set, the output will be:

```rescript
module Foo = {
  @module("package") @val @scope("Foo") external someMethod: float => unit = "someMethod"
}

/* usage */
Foo.someMethod(42.0)
```

Otherwise, the output will be:

```rescript
module Foo = {
  type t

  @send external someMethod: (t, float) => unit = "someMethod"
}

@module("package") @val external foo: Foo.t = "Foo"

/* usage */
foo->Foo.someMethod(42.0)
```

A notable example is the `Math` object in ES5 (https://github.com/microsoft/TypeScript/blob/main/lib/lib.es5.d.ts).

### Feature: `immediate-constructor`

Simplifies so-called constructor pattern.

Assume we have the following input:

```typescript
interface Foo = {
  someMethod(value: number): void;
}

interface FooConstructor {
  new(name: string) : Foo;

  staticMethod(): number;
}

declare var Foo: FooConstructor;
```

If this option is set, the output will be:

```rescript
module Foo = {
  type t
  @send external someMethod: (t, float) => unit = "someMethod"

  @module("package") @new external create: (string) => t = "Foo"
  @module("package") @scope("Foo") @val external staticMethod: () => float = "staticMethod"
}

/* usage */
let x = Foo.create("foo")
let num = Foo.staticMethod()
x->Foo.someMethod(num)
```

Otherwise, the output will be:

```rescript
module Foo = {
  type t
  @send external someMethod: (t, float) => unit = "someMethod"
}

module FooConstructor = {
  type t
  @get external create: Newable.t1<string, Foo.t> = "Foo"
  @send external staticMethod: (t, ()) => float = "staticMethod"
}

@module("package") @val external foo: FooConstructor.t = "Foo"

/* usage */
let x = foo->FooConstructor.create->Newable.apply1("foo")
let num = foo->FooConstructor.staticMethod()
x->Foo.someMethod(num)
```

A notable example is the `ArrayConstructor` type in ES5 (https://github.com/microsoft/TypeScript/blob/main/lib/lib.es5.d.ts).

### Feature: `anonymous-interface-value`

Simplifies a value definition of an anonymous interface type to a module.

Assume we have the following input:

```typescript
declare var Foo: {
  someMethod(value: number): void;
};
```

If this option is set, the output will be:

```rescript
module Foo = {
  @module("package") @val external someMethod: (float) => unit = "someMethod"
}

/* usage */
Foo.someMethod(42.0)
```

Otherwise, the output will be:

```rescript
module AnonymousInterface = {
  type t

  @send external someMethod: (t, float) => unit = "someMethod"
}

@module("package") @val external foo: AnonymousInterface.t = "Foo"

/* usage */
foo->AnonymousInterface.someMethod(42.0)
```

A notable example is the `Document` variable in DOM (https://github.com/microsoft/TypeScript/blob/main/lib/lib.dom.d.ts).

### Feature: `named-interface-value`

> **Note:** [`immediate-instance`](#feature-immediate-instance) and [`immediate-constructor`](#feature-immediate-constructor) will override this feature if the name of the value definition is the same as the corresponding interface.

Defines additional module with a suffix `Static` for a value definition of some interface type.

Assume we have the following input:

```typescript
interface Foo = {
  someMethod(value: number): void;
}

declare var foo: Foo;
```

If this option is set, the output will be:

```rescript
module Foo = {
  type t

  @send external someMethod: (t, float) => unit = "someMethod"
}

module FooStatic = {
  @module("package") @scope("Foo") @val external someMethod: float => unit = "someMethod"
}

@module("package") @val external foo: Foo.t = "Foo"

/* usage */
FooStatic.someMethod(42.0)
foo->Foo.someMethod(42.0) // "instance call" is also available
```

Otherwise, the output will be:

```rescript
module Foo = {
  type t

  @send external someMethod: (t, float) => unit = "someMethod"
}

@module("package") @val external foo: Foo.t = "Foo"

/* usage */
foo->Foo.someMethod(42.0)
```

A notable example is the `document` variable in DOM (https://github.com/microsoft/TypeScript/blob/main/lib/lib.dom.d.ts).

## `--readable-names`

Try to use more readable names instead of `AnonymousInterface{N}`.

- If the anonymous interface is an argument of a function, the name of the argument will be used.
- If the anonymous interface is the type of a field or the return type of a function, the name of the field/function will be used.

## `--no-types-module`

TypeScript code often has mutually recursive definitions. ReScript support defining recursive types by `type rec`, but there are some cases where `type rec` is not enough. As such, `ts2ocaml` emits a special recursive module named `Types` that contains all the types used in the file. You can use the `--no-types-module` option to disable this.

> **Warning:**
> This option is intended for library authors who want a minimalistic output. It will generate a broken code if an input file contains mutually recursive types. A manual modification would be needed!
>
> Also, you wouldn't need this unless you're using the [`--no-resi`](#--no-resi) option, as the `Types` module is hidden by the `.resi` file and won't show up in the editor autocompletion.

# Experimental Options

> **Warning:**
> These features are experimental and may be subject to change.

## `--experimental-tagged-union`

Emit additional variant type for tagged union.

Assume we have the following input:

```typescript
interface Foo {
  kind: "foo";
  ...
}

interface Bar {
  kind: "bar";
  ...
}

type FooBar = Foo | Bar;
```

Normally, `ts2ocaml` would generate the following code:

```rescript
module Foo = {
  type t
  @get external get_kind: (t) => string = "kind"
  ...
}

module Bar = {
  type t
  @get external get_kind: (t) => string = "kind"
  ...
}

module FooBar = {
  type t = Union.t2<Foo.t, Bar.t>
}
```

With this option, `ts2ocaml` will generate an additional type `FooBar.cases` and additional functions `FooBar.box` and `FooBar.unbox`:

```rescript
module FooBar = {
  type t = Union.t2<Foo.t, Bar.t>

  @tag("kind") type cases =
    | @as("foo") Foo (Foo.t)
    | @as("bar") Bar (Bar.t)

  let box: (t) => cases = ...
  let unbox: (cases) => t = ...
}
```

Now you can match over the tagged union type by `box`ing it first:

```rescript
let x : FooBar.t = ...

switch x->FooBar.box {
  | Foo(foo) => ...
  | Bar(bar) => ...
}
```
