#!/bin/bash

function ts2ocaml () {
  node --stack-trace-limit=100000 ./output/ts2ocaml.js $1 > ./output/$2.mli
  if [ $? -ne 0 ]; then
    echo "failed: " $1
    rm output/$2.mli
    return
  fi 
  cp ./output/$2.mli ./test/src/$2.mli
}

ts2ocaml ./node_modules/typescript/lib/lib.es5.d.ts es5
ts2ocaml ./node_modules/typescript/lib/lib.es6.d.ts es6
ts2ocaml ./node_modules/typescript/lib/lib.dom.d.ts dom
ts2ocaml "./node_modules/typescript/lib/lib.es2015*.d.ts" es2015
ts2ocaml ./node_modules/typescript/lib/lib.dom.iterable.d.ts dom_iterable
ts2ocaml "./node_modules/typescript/lib/lib.es2016*.d.ts" es2016
ts2ocaml "./node_modules/typescript/lib/lib.es2017*.d.ts" es2017
ts2ocaml "./node_modules/typescript/lib/lib.es2018*.d.ts" es2018
ts2ocaml "./node_modules/typescript/lib/lib.es2019*.d.ts" es2019
ts2ocaml "./node_modules/typescript/lib/lib.es2020*.d.ts" es2020
ts2ocaml "./node_modules/typescript/lib/lib.esnext*.d.ts" esnext
ts2ocaml ./node_modules/typescript/lib/typescript.d.ts typescript
ts2ocaml ./monaco.d.ts monaco

