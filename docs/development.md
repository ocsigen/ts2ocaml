TODO: expand this

## Requirements

- .NET 5.0
- OCaml 4.? or higher
- Node 14.x or higher
- yarn

## Build

`dotnet tool install -g fake-cli`

`fake build target Build`

## Run local build

`yarn ts2ocaml jsoo <input.d.ts> -o <output dir>`

## Test

`fake build target TestBuild`
