#!/bin/bash

node --stack-trace-limit=100000 ./output/ts2ocaml.js jsoo --stdlib node_modules/typescript/lib/lib.*.d.ts > ./output/ts2ocaml.mli
cp ./output/ts2ocaml.mli ./test/src/ts2ocaml.mli

function ts2ocaml () {
  node --stack-trace-limit=100000 ./output/ts2ocaml.js jsoo $1 --simplify-immediate-instance --simplify-immediate-constructor > ./output/$2.mli
  if [ $? -ne 0 ]; then
    echo "failed: " $1
    rm output/$2.mli
    return
  fi
  cp ./output/$2.mli ./test/src/$2.mli
}

# ts2ocaml "./node_modules/@types/node/*.d.ts" node
ts2ocaml ./node_modules/typescript/lib/typescript.d.ts typescript
ts2ocaml ./node_modules/monaco-editor/monaco.d.ts monaco
ts2ocaml ./node_modules/@types/react/index.d.ts react
ts2ocaml ./node_modules/@types/react-modal/index.d.ts react_modal

