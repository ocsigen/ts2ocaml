# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.3.0] - 2021-12-10
- Upgrade gen\_js\_api to 1.0.9.
- Ts2ocaml now merges enum case names if they have the same value.
  - This is because gen\_js\_api now profibits enum cases with duplicate values.
  - This is a breaking change.

```typescript
enum Foo { A = 1, B = 1, C = 2 }
```

```ocaml
module Foo: sig
  (* before *)
  type t = [ `A [@js 1] | `B [@js 2] | `C [@js 2] ] [@js.enum]

  (* after  *)
  type t = [ `A_B [@js 1] | `C [@js 2] ] [@js.enum]
end
```

## [1.2.1] - 2021-12-07
- Fix a bug which "relativized" the path of the specified output directory.
- Fix a bug which prevented ts2ocaml from parsing package.json correctly.

## [1.2.0] - 2021-11-30
- Add an option `--merge` to merge the input definition files to one binding.
  - This is a breaking change; previously `--merge` was the default behavior.
- Add an option `--follow-relative-references` to generate bindings for relevant files at once.

## [1.1.0] - 2021-11-24
- Upgrade and fixed TypeScript version to >= 4.5.2 < 4.6.0.
- Fix the problem which prevented `--create-minimal-stdlib` from working correctly.
- Add better heuristic for relative imports.
- Fix bugs on relative imports.

## [1.0.0] - 2021-11-08

Official release. Nothing is changed internally.

## [0.0.5] - 2021-11-08
Test automated publishing for the official release. Nothing is changed internally.

## [0.0.4] - 2021-11-08
Test automated publishing for the official release. Nothing is changed internally.

## [0.0.3] - 2021-11-02
Nothing is changed internally, but the GitHub Action is now working as intended.
Publishing the NPM package and the OPAM package (to `jsoo-stdlib` branch for OPAM pinning) is now automated.

## [0.0.2] - 2021-11-02
Test if package is published correctly when we create an release on GitHub.
Also create a branch to be used as the standard library for js_of_ocaml.

## [0.0.1] - 2021-10-22
Test publishing to npm.

## [0.0.0] - 2021-10-21
In development.