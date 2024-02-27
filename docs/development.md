Overview for Developers
=======================

## Project Structure

Modules with **\[\<AutoOpen\>\]** does not require `open` to use.

- `build/` ... build scripts
  - `BindingUpdater.fs` ... a utility to update bindings in `lib/Bindings/`
  - `build.fs` ... the main build script
- `lib/` ... target-agnostic part of the tool (will be separated to a different repo in near future)
  - `Bindings/` ... bindings to JS libraries (typescript, browser-or-node)
  - `Extensions.fs` ... **\[\<AutoOpen\>\]** extensions for standard library and JS libraries
  - `DataTypes/`  ... common data structures and algorithm
    - `Text.fs`  ... efficient rope with `O(1)` concat & `O(n)` stringify
    - `Trie.fs`  ... trie based on immutable map
    - `Graph.fs` ... graph based on immutable map & graph algorithms
  - `Common.fs` ... global interfaces
  - `Syntax.fs` ... AST for parsed TypeScAript code
  - `Naming.fs` ... naming helpers
  - `JsHelper.fs` ... helper functions for JavaScript-related things e.g. NPM packages and ES6 module names.
  - `TypeScriptHelper.fs` ... helper functions for using TypeScript Compiler API
  - `Typer.fs`  ... functions for resolving and manipulating AST
  - `Parser.fs` ... functions for converting TS syntax tree to our AST
- `src/` ... target-dependent part of the tool
  - `Bindings/` ... bindings to JS libraries (yargs)
  - `Extensions.fs` ... **\[\<AutoOpen\>\]** extensions for standard library and JS libraries
  - `Common.fs` ... **\[\<AutoOpen\>\]** global command line options, types, and modules
  - `Target.fs` ... generic definitions for each targets (`ITarget<_>`)
  - `Targets/`  ... targets should be placed into here
    - `ParserTest.fs` ... debug target to test parser and typer
    - `{Target}/` ... target-specific codes
      - `Common.fs` ... command line options for the target
      - `{Target}Helper.fs` ... helper functions to generate code for the target language
      - `Writer.fs` ... functions for generating the code from AST
      - `Target.fs` ... `ITarget<_>` instance for the target
  - `Main.fs` ... entry point
- `test/`
  - `jsoo/` ... test for the `js_of_ocaml` target
  - `res/` ... test for the `ReScript` target
- `dist/`
  - `js/ `... output directory for NPM packaging
  - `jsoo/` ... output directory for OPAM packaging
  - `jsoo/` ... output directory for NPM packaging of the stdlib for ReScript
- `output/` ... temporary output directory for automated testing, etc

## Requirements

- [.NET SDK 6.0](https://dotnet.microsoft.com/download/dotnet/6.0)
  - [Fable](https://fable.io/) is required to build this tool.
  - Run `dotnet tool restore` in the root directory of this repo to install it.

- OCaml 4.08 or higher
  - [js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) should be installed to your opam switch.
  - [gen_js_api](https://github.com/LexiFi/gen_js_api) `>= 1.0.9` should also be installed to your opam switch.
  - Run `opam install . --deps-only` to install all the dependencies.

- Node 14.0 or higher
  - [yarn](https://yarnpkg.com/) is required.

- ReScript 11.0.1 or higher
  - Installed by `yarn`.

## Updating TypeScript SDK

- Run `yarn update --latest typescript`
- Run `./fake UpdateBindings` to update the Fable binding (`lib/Bindings/TypeScript.fs`)
- Run `./fake build` and fix type errors

## Debugging

`./fake watch` to live update `dist/js/ts2ocaml.js`.

It will be bundled by Webpack with the `development` mode.

## Building

`./fake build` performs the followings:
- `yarn install` to populate `node_modules`
- `dotnet restore ts2ocaml.sln` to install required F# libraries
- Compile F# source files into JS source files (through Fable)
- Bundle the JS files into `dist/js/ts2ocaml.js` (through Webpack)

The resulting `dist/js/ts2ocaml.js` is then ready to run through `node`.

## Testing

`./fake test` builds the tool and then performs the followings:

### Test the tool for [`js_of_ocaml` target](js_of_ocaml.md)

- Generate bindings for the following packages:
  - TypeScript standard libraries (`node_modules/typescript/lib/lib.*.d.ts`)
  - `typescript` with the `full` preset (involving a lot of inheritance)
  - `react` with the `full` preset (depending on both `full` packages and `safe` packages)
    - `scheduler/tracing` (`safe`)
    - `csstype` (`full`)
    - `prop-types` (`safe`)
  - `react-modal` with the `full` preset (depending on a `full` package)
  - `yargs` with the `safe` preset (depending on a `safe` package)
    - `yargs-parser` (`safe`)
- The bindings will be placed into `output/test_jsoo/`
- Copy the bindings to `test/jsoo/src/`
- Perform `dune build` in `test/jsoo/`

### Test the tool for [`ReScript` target](rescript.md)

- Generate bindings for the following packages:
  - TypeScript standard libraries (`node_modules/typescript/lib/lib.*.d.ts`)
  - `typescript` with the `full` preset (involving a lot of inheritance)
  - `react` with the `full` preset (depending on both `full` packages and `safe` packages)
    - `scheduler/tracing` (`safe`)
    - `csstype` (`full`)
    - `prop-types` (`safe`)
  - `react-modal` with the `full` preset (depending on a `full` package)
  - `yargs` with the `safe` preset (depending on a `safe` package)
    - `yargs-parser` (`safe`)
- The bindings will be placed into `output/test_res/`
- Copy the bindings to `test/res/src/generated/`
- Perform `yarn build` in `test/res/`

> Tests for other targets will be added here

## Publishing

`./fake publish` builds the tool, runs the tests, and then performs the followings:

### Prepare for publishing the standard library for [`js_of_ocaml` target](js_of_ocaml.md) to the `jsoo-stdlib` branch

- Copy `ts2ocaml_*.mli` from `output/test_jsoo/` to `dist/jsoo/src/`
- Copy `ts2ocaml_*.ml`  from `test/jsoo/_build/default/src/` to `dist/jsoo/src/`
- Set the correct `version` in `dist/jsoo/dune-project`
- Perform `dune build` in `dist/jsoo/` to generate `.opam` file and check if it compiles

GitHub Action `publish.yml` is configured to push the `dist/jsoo` directory to the `jsoo-stdlib` branch.

### Prepare for publishing the tool to NPM

- Set the correct `version` in `package.json`

GitHub Action `publish.yml` is configured to publish `ts2ocaml` to NPM.
