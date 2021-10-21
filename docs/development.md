Overview for Developers
=======================

## Project Structure

Modules with **\[\<AutoOpen\>\]** does not require `open` to use.

- `src/`
  - `Bindings/` ... bindings to JS libraries
  - `Extensions.fs` ... **\[\<AutoOpen\>\]** extensions for standard library and JS libraries
  - `DataType/`  ... common data structures and algorithm
    - `Text.fs`  ... efficient rope with `O(1)` concat & `O(n)` stringify
    - `Trie.fs`  ... trie based on immutable map
    - `Graph.fs` ... graph based on immutable map & graph algorithms
  - `Common.fs` ... **\[\<AutoOpen\>\]** global command line options, types, and modules
  - `Syntax.fs` ... AST for parsed TypeScAript code
  - `Naming.fs` ... naming helpers
  - `Typer.fs`  ... functions for resolving and manipulating AST
  - `Parser.fs` ... functions for converting TS syntax tree to our AST
  - `Target.fs` ... generic definitions for each targets (`ITarget<_>`)
  - `Targets/`  ... targets should be placed into here
    - `ParserTest.fs` ... debug target to test parser and typer
    - `JsOfOCaml/` ... `js_of_ocaml` target specific codes
      - `Common.fs` ... command line options for `js_of_ocaml` target
      - `OCamlHelper.fs` ... helper functions to generate OCaml code
      - `Writer.fs` ... functions for generating OCaml code from AST
      - `Target.fs` ... `ITarget<_>` instance for `js_of_ocaml` target
  - `Main.fs` ... entry point
- `test/` ... test for `js_of_ocaml` target
  - this should be divided to subdirectories if `ReScript` or other targets are added.
- `dist/` ... output directory for NPM packaging
- `output/` ... output directory for automated testing, etc

## Requirements

- [.NET SDK 5.0](https://dotnet.microsoft.com/download/dotnet/5.0)
  - [FAKE](https://fake.build/) and [Fable](https://fable.io/) are required to build this tool.
    - Run `dotnet tool restore` in the root directory of this repo to install them.

- OCaml 4.08 or higher
  - [js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) should be installed to your opam switch.
  - The latest [gen_js_api](https://github.com/LexiFi/gen_js_api) is already present in `test/lib/gen_js_api` as a git submodule. Run `git submodule update --init --recursive`.

- Node 14.0 or higher
  - [yarn](https://yarnpkg.com/) is required.

## Building

`dotnet fake build -t Build` performs the followings:
- `yarn install` to populate `node_modules`
- `dotnet restore` to install required F# libraries
- Compile F# source files into JS source files (through Fable)
- Bundle the JS files into `dist/ts2ocaml.js` (through Webpack)

The resulting `dist/ts2ocaml.js` is then ready to run through `node`.

## Testing

`dotnet fake build -t TestBuild` builds the tool (as described above) and then performs the followings:
- Test the tool with the following packages:
  - TypeScript standard libraries (`node_modules/typescript/lib/lib.*.d.ts`)
  - `typescript` (binding for TypeScript compiler API)
  - `react`
    - `scheduler/tracing`
    - `csstype`
    - `prop-types`
  - `react-modal`
  - `yargs`
    - `yargs-parser`
  - The output files will be placed into `output/`
- Copy the resulting OCaml bindings to `test/src/`
- Perform `dune build` in `test/`
