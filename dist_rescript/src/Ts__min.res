@@warning("-27")

type never

module Never = {
  type t = never
  exception Never
  let absurd : t => 'a = x => raise(Never)
}

type any
let any : 'a => any = Obj.magic

module Any = {
  type t = any
  let unsafeCast : t => 'a = x => Obj.magic(x)
}

type unknown

module Unknown = {
  type t = unknown
  let unsafeCast = (x: t) => Obj.magic(x)
}

type untyped_object = Js.Types.obj_val
type untyped_function = Js.Types.function_val
type symbol = Js.Types.symbol
type regexp = Js.Re.t
type bigint
type \"true" = private bool
type \"false" = private bool

type null<+'a> = Js.null<'a>
type undefined<+'a> = Js.undefined<'a>
type nullable<+'a> = Js.nullable<'a>

module Union = {
  type t<+'cases>

  let return1 : 't1 => t<[> #U1('t1)]> = x => Obj.magic(x)
  let return2 : 't2 => t<[> #U2('t2)]> = x => Obj.magic(x)
  let return3 : 't3 => t<[> #U3('t3)]> = x => Obj.magic(x)
  let return4 : 't4 => t<[> #U4('t4)]> = x => Obj.magic(x)
  let return5 : 't5 => t<[> #U5('t5)]> = x => Obj.magic(x)
  let return6 : 't6 => t<[> #U6('t6)]> = x => Obj.magic(x)
  let return7 : 't7 => t<[> #U7('t7)]> = x => Obj.magic(x)
  let return8 : 't8 => t<[> #U8('t8)]> = x => Obj.magic(x)

  let getUnsafe1 : t<[> #U1('t1)]> => 't1 = x => Obj.magic(x)
  let getUnsafe2 : t<[> #U2('t2)]> => 't2 = x => Obj.magic(x)
  let getUnsafe3 : t<[> #U3('t3)]> => 't3 = x => Obj.magic(x)
  let getUnsafe4 : t<[> #U4('t4)]> => 't4 = x => Obj.magic(x)
  let getUnsafe5 : t<[> #U5('t5)]> => 't5 = x => Obj.magic(x)
  let getUnsafe6 : t<[> #U6('t6)]> => 't6 = x => Obj.magic(x)
  let getUnsafe7 : t<[> #U7('t7)]> => 't7 = x => Obj.magic(x)
  let getUnsafe8 : t<[> #U8('t8)]> => 't8 = x => Obj.magic(x)
}
type union2<'t1, 't2> = Union.t<[ #U1('t1) | #U2('t2) ]>
type union3<'t1, 't2, 't3> = Union.t<[ #U1('t1) | #U2('t2) | #U3('t3) ]>
type union4<'t1, 't2, 't3, 't4> = Union.t<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) ]>
type union5<'t1, 't2, 't3, 't4, 't5> = Union.t<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) ]>
type union6<'t1, 't2, 't3, 't4, 't5, 't6> = Union.t<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) | #U6('t6) ]>
type union7<'t1, 't2, 't3, 't4, 't5, 't6, 't7> = Union.t<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) | #U6('t6) | #U7('t7) ]>
type union8<'t1, 't2, 't3, 't4, 't5, 't6, 't7, 't8> = Union.t<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) | #U6('t6) | #U7('t7) | #U8('t8) ]>

module Intersection = {
  type t<-'cases>

  let get1 : t<[> #I1('t1)]> => 't1 = x => Obj.magic(x)
  let get2 : t<[> #I2('t2)]> => 't2 = x => Obj.magic(x)
  let get3 : t<[> #I3('t3)]> => 't3 = x => Obj.magic(x)
  let get4 : t<[> #I4('t4)]> => 't4 = x => Obj.magic(x)
  let get5 : t<[> #I5('t5)]> => 't5 = x => Obj.magic(x)
  let get6 : t<[> #I6('t6)]> => 't6 = x => Obj.magic(x)
  let get7 : t<[> #I7('t7)]> => 't7 = x => Obj.magic(x)
  let get8 : t<[> #I8('t8)]> => 't8 = x => Obj.magic(x)
}
type intersection2<'t1, 't2> = Intersection.t<[ #I1('t1) | #I2('t2) ]>
type intersection3<'t1, 't2, 't3> = Intersection.t<[ #I1('t1) | #I2('t2) | #I3('t3) ]>
type intersection4<'t1, 't2, 't3, 't4> = Intersection.t<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) ]>
type intersection5<'t1, 't2, 't3, 't4, 't5> = Intersection.t<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) ]>
type intersection6<'t1, 't2, 't3, 't4, 't5, 't6> = Intersection.t<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) | #I6('t6) ]>
type intersection7<'t1, 't2, 't3, 't4, 't5, 't6, 't7> = Intersection.t<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) | #I6('t6) | #I7('t7) ]>
type intersection8<'t1, 't2, 't3, 't4, 't5, 't6, 't7, 't8> = Intersection.t<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) | #I6('t6) | #I7('t7) | #I8('t8) ]>

module Interface = {
  @unboxed type t<-'tags, 'base> = { value: 'base }

  let value = (x: t<_, _>) => x.value
}
type intf<-'tags, 'base> = Interface.t<'tags, 'base>

module Primitive = {
  type cases<'other> = [ #Null | #Undefined | #String(string) | #Number(float) | #Boolean(bool) | #Symbol(symbol) | #BigInt(bigint) | #Other('other) ]
  type t<+'cases>

  let return: ([< cases<'other>] as 'cases) => t<'cases> = x =>
    %raw(`(function (x) {
    switch (x) {
      case 'null' | 'Null': return null;
      case 'undefined' | 'Undefined': return;
      default: return x.VAL;
    }
  })(x)`)

  let fromNull: null<'a> => t<[> #Null | #Other('a) ]> = Obj.magic
  let toNull: t<[< #Null | #Other('a) ]> => null<'a> = Obj.magic

  let fromUndefined: undefined<'a> => t<[> #Undefined | #Other('a) ]> = Obj.magic
  let toUndefined: t<[< #Undefined | #Other('a) ]> => undefined<'a> = Obj.magic

  let fromNullable: nullable<'a> => t<[> #Null | #Undefined | #Other('a) ]> = Obj.magic
  let toNullable: t<[< #Null | #Undefined | #Other('a) ]> => nullable<'a> = Obj.magic

  let classify: t<[< cases<'other>] as 'cases> => 'cases = x =>
    switch (Js.typeof(x)) {
      | "string" => Obj.magic(#String(Obj.magic(x)))
      | "number" => Obj.magic(#Number(Obj.magic(x)))
      | "boolean" => Obj.magic(#Boolean(Obj.magic(x)))
      | "symbol" => Obj.magic(#Symbol(Obj.magic(x)))
      | "bigint" => Obj.magic(#BigInt(Obj.magic(x)))
      | "undefined" => Obj.magic(#Undefined)
      | _ =>
        if (Js.testAny(x)) { Obj.magic(#Null) }
        else { Obj.magic(#Other(x)) }
    }
}
type prim<+'cases> = Primitive.t<'cases>

module Interop = {
  let apply0 = (it: 'Function) => %raw(`it()`)
  let apply1 = (it: 'Function, arg0) => %raw(`it(arg0)`)
  let apply2 = (it: 'Function, arg0, arg1) => %raw(`it(arg0, arg1)`)
  let apply3 = (it: 'Function, arg0, arg1, arg2) => %raw(`it(arg0, arg1, arg2)`)
  let apply4 = (it: 'Function, arg0, arg1, arg2, arg3) => %raw(`it(arg0, arg1, arg2, arg3)`)
  let apply5 = (it: 'Function, arg0, arg1, arg2, arg3, arg4) => %raw(`it(arg0, arg1, arg2, arg3, arg4)`)
  let apply6 = (it: 'Function, arg0, arg1, arg2, arg3, arg4, arg5) => %raw(`it(arg0, arg1, arg2, arg3, arg4, arg5)`)
  let apply7 = (it: 'Function, arg0, arg1, arg2, arg3, arg4, arg5, arg6) => %raw(`it(arg0, arg1, arg2, arg3, arg4, arg5, arg6)`)
  let applyN = (it: 'Function, args: 'args) => %raw(`it(...args)`)

  let applyNewable0 = (it: 'Newable) => %raw(`new it()`)
  let applyNewable1 = (it: 'Newable, arg0) => %raw(`new it(arg0)`)
  let applyNewable2 = (it: 'Newable, arg0, arg1) => %raw(`new it(arg0, arg1)`)
  let applyNewable3 = (it: 'Newable, arg0, arg1, arg2) => %raw(`new it(arg0, arg1, arg2)`)
  let applyNewable4 = (it: 'Newable, arg0, arg1, arg2, arg3) => %raw(`new it(arg0, arg1, arg2, arg3)`)
  let applyNewable5 = (it: 'Newable, arg0, arg1, arg2, arg3, arg4) => %raw(`new it(arg0, arg1, arg2, arg3, arg4)`)
  let applyNewable6 = (it: 'Newable, arg0, arg1, arg2, arg3, arg4, arg5) => %raw(`new it(arg0, arg1, arg2, arg3, arg4, arg5)`)
  let applyNewable7 = (it: 'Newable, arg0, arg1, arg2, arg3, arg4, arg5, arg6) => %raw(`new it(arg0, arg1, arg2, arg3, arg4, arg5, arg6)`)
  let applyNewableN = (it: 'Newable, args: 'args) => %raw(`new it(...args)`)

  module PolyVariant = {
    let name  = (it: 'PolyVariant) : 'name => %raw(`it.NAME`)
    let value = (it: 'PolyVariant) : 'value => %raw(`it.VAL`)
    let make  = (name: 'name, value: 'value) : 'PolyVariant => %raw(`{ NAME: name, VAL: value }`)
  }
}

module Newable = {
  type t0<'t>
  type t1<'arg1, 't>

  @ocaml.doc(`\`'args\` must be a tuple type.`)
  type tn<'args, 't>

  let apply0 = (f0: t0<'t>) : 't => %raw(`new f0()`)
  let apply1 = (f1: t1<'arg1, 't>, arg1: 'arg1) : 't => %raw(`new f1(arg1)`)
  let applyN = (fn: tn<'args, 't>, args: 'args) : 't => %raw(`new fn(...args)`)
}

module Variadic = {
  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  type t0<'variadic, 't>

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  type t1<'arg1, 'variadic, 't>

  @ocaml.doc(`\`'args\` must be a tuple type. \`'variadic\` is expected to be array or some other iterable type.`)
  type tn<'args, 'variadic, 't>

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create0 : ('variadic => 't) => t0<'variadic, 't> = f => %raw(`(function(...args) { return f(args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create1 : (('arg1, 'variadic) => 't) => t1<'arg1, 'variadic, 't> = f => %raw(`(function(arg1, ...args) { return f(arg1, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create2 : (('arg1, 'arg2, 'variadic) => 't) => tn<('arg1, 'arg2), 'variadic, 't> = f => %raw(`(function(arg1, arg2, ...args) { return f(arg1, arg2, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create3 : (('arg1, 'arg2, 'arg3, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, ...args) { return f(arg1, arg2, arg3, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create4 : (('arg1, 'arg2, 'arg3, 'arg4, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, ...args) { return f(arg1, arg2, arg3, arg4, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create5 : (('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4, 'arg5), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, arg5, ...args) { return f(arg1, arg2, arg3, arg4, arg5, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create6 : (('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, arg5, arg6, ...args) { return f(arg1, arg2, arg3, arg4, arg5, arg6, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let create7 : (('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6, 'arg7, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6, 'arg7), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, ...args) { return f(arg1, arg2, arg3, arg4, arg5, arg6, arg7, args); })`)

  @ocaml.doc(`\`'args\` must be a tuple type. \`'variadic\` is expected to be array or some other iterable type.`)
  let createN : (('args, 'variadic) => 't, int) => tn<'args, 'variadic, 't> = (f, n) => %raw(`(function(...args) { return f(args.slice(0, n), args.slice(n)); })`)

  let apply0 = (f0: t0<'variadic, 't>, variadic: 'variadic) : 't => %raw(`f0(...variadic)`)
  let apply1 = (f1: t1<'arg1, 'variadic, 't>, arg1: 'arg1, variadic: 'variadic) : 't => %raw(`f1(arg1, ...variadic)`)
  let applyN = (fn: tn<'args, 'variadic, 't>, args: 'args, variadic: 'variadic) : 't => %raw(`fn(...args, ...variadic)`)
}

module NewableVariadic = {
  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  type t0<'variadic, 't>

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  type t1<'arg1, 'variadic, 't>

  @ocaml.doc(`\`'args\` must be a tuple type. \`'variadic\` is expected to be array or some other iterable type.`)
  type tn<'args, 'variadic, 't>

  let apply0 = (f0: t0<'variadic, 't>, variadic: 'variadic) : 't => %raw(`new f0(...variadic)`)
  let apply1 = (f1: t1<'arg1, 'variadic, 't>, arg1: 'arg1, variadic: 'variadic) : 't => %raw(`new f1(arg1, ...variadic)`)
  let applyN = (fn: tn<'args, 'variadic, 't>, args: 'args, variadic: 'variadic) : 't => %raw(`new fn(...args, ...variadic)`)
}