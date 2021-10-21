ts2ocaml
========

[![npm latest version](https://img.shields.io/npm/v/@ocsigen/ts2ocaml/latest.svg)](https://www.npmjs.com/package/@ocsigen/ts2ocaml)

Generate OCaml bindings from TypeScript definitions via the TypeScript compiler API.

## Installation

```
npm install -g @ocsigen/ts2ocaml
```

Or if you are using yarn:

```
yarn global add @ocsigen/ts2ocaml
```

An in-browser version may be available in future.

## Overview

**Goals:**
* Provide a way to quickly generate a missing binding to some JS package you need in your project.
  - This tool can generate OCaml bindings to JS packages from TS definition files (`.d.ts`), which you can use with minimal modification.
* Help library authors by reducing the amount of boilerplate code they have to write by hand.
  - This tool can be configured to generate an imperfect but simpler version of bindings, which you can easily modify to create a better binding library.

**Non-goals:**
* Generate a binding written in 100% OCaml-idiomatic way.
  - OCaml has very different programming concepts from TypeScript, so it's not very straightforward to translate TypeScript's concepts to OCaml's one.
  - This tool will simply generate bindings which closely resembles the original TypeScript definitions. It's human's job to translate it to OCaml-idiomatic API.
* Perfectly replicate TypeScript in OCaml.
  - Many of [the advanced types in TypeScript](https://www.typescriptlang.org/docs/handbook/2/types-from-types.html), such as `keyof T` or `T extends U ? A : B`, are simply impossible to simulate in OCaml.
  - In those cases, this tool will leave them as untyped. It's also human's job to (possibly) restore type safety with some other means.

## Documentation

For users:
- [ts2ocaml for js_of_ocaml](docs/js_of_ocaml.md)
- ts2ocaml for ReScript (planned)

For developers and contributors:
- [Overview](docs/development.md)
- [Note on modeling TS subtyping in OCaml](docs/modeling_subtyping.md)

## About this tool

This tool is heavily inspired by [fable-compiler/ts2fable](https://github.com/fable-compiler/ts2fable), which generates [Fable](https://fable.io/) (F# AltJS) bindings from TS definition files.

This tools is licensed under the [Apache License 2.0](LICENSE.md).
