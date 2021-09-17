#!/bin/bash

rm output/stub.js 2> /dev/null

node --stack-trace-limit=100000 ./output/ts2ocaml.js jsoo -v --stdlib node_modules/typescript/lib/lib.*.d.ts -o output
cp ./output/ts2ocaml.mli ./test/src/ts2ocaml.mli

function ts2ocaml () {
  node --stack-trace-limit=100000 ./output/ts2ocaml.js -v --nowarn jsoo $1 --simplify-immediate-instance --simplify-immediate-constructor -o output
  if [ $? -ne 0 ]; then
    echo "failed: " $1
    rm output/$2.mli
    return
  fi
  cp ./output/$2.mli ./test/src/$2.mli
}

# ts2ocaml "./node_modules/@types/node/*.d.ts" node
ts2ocaml ./node_modules/typescript/lib/typescript.d.ts typescript
ts2ocaml ./node_modules/monaco-editor/monaco.d.ts monaco_editor

## React bindings
ts2ocaml ./node_modules/@types/prop-types/index.d.ts prop_types
ts2ocaml ./node_modules/@types/scheduler/tracing.d.ts scheduler__tracing
ts2ocaml ./node_modules/csstype/index.d.ts csstype
ts2ocaml ./node_modules/@types/react/index.d.ts react
ts2ocaml ./node_modules/@types/react-modal/index.d.ts react_modal

ts2ocaml ./node_modules/@types/yargs-parser/index.d.ts yargs_parser
ts2ocaml ./node_modules/@types/yargs/index.d.ts yargs

cp ./output/stub.js ./test/src/stub.js