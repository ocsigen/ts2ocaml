@@warning("-27")

type never

module Never = {
  type t = never
  exception Never
  let absurd : t => 'a = x => raise(Never)
}

@unboxed type rec any = Any('a): any
external any : 'a => any = "%identity"

module Any = {
  type t = any
  external unsafeCast : t => 'a = "%identity"
}

type unknown

module Unknown = {
  type t = unknown
  external unsafeCast : t => 'a = "%identity"
}

type untyped_object = Js.Types.obj_val
type untyped_function = Js.Types.function_val
type symbol = Js.Types.symbol
type regexp = Js.Re.t
type bigint
type \"true" = private bool
type \"false" = private bool
type intrinsic<'a> = private 'a

type null<+'a> = Js.null<'a>
type null' = null<never>
type undefined<+'a> = Js.undefined<'a>
type undefined' = undefined<never>
type nullable<+'a> = Js.nullable<'a>

module Union = {
  type container<+'cases>

  external return1 : 't1 => container<[> #U1('t1)]> = "%identity"
  external return2 : 't2 => container<[> #U2('t2)]> = "%identity"
  external return3 : 't3 => container<[> #U3('t3)]> = "%identity"
  external return4 : 't4 => container<[> #U4('t4)]> = "%identity"
  external return5 : 't5 => container<[> #U5('t5)]> = "%identity"
  external return6 : 't6 => container<[> #U6('t6)]> = "%identity"
  external return7 : 't7 => container<[> #U7('t7)]> = "%identity"
  external return8 : 't8 => container<[> #U8('t8)]> = "%identity"

  external getUnsafe1 : container<[> #U1('t1)]> => 't1 = "%identity"
  external getUnsafe2 : container<[> #U2('t2)]> => 't2 = "%identity"
  external getUnsafe3 : container<[> #U3('t3)]> => 't3 = "%identity"
  external getUnsafe4 : container<[> #U4('t4)]> => 't4 = "%identity"
  external getUnsafe5 : container<[> #U5('t5)]> => 't5 = "%identity"
  external getUnsafe6 : container<[> #U6('t6)]> => 't6 = "%identity"
  external getUnsafe7 : container<[> #U7('t7)]> => 't7 = "%identity"
  external getUnsafe8 : container<[> #U8('t8)]> => 't8 = "%identity"

  type t2<'t1, 't2> = container<[ #U1('t1) | #U2('t2) ]>
  type t3<'t1, 't2, 't3> = container<[ #U1('t1) | #U2('t2) | #U3('t3) ]>
  type t4<'t1, 't2, 't3, 't4> = container<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) ]>
  type t5<'t1, 't2, 't3, 't4, 't5> = container<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) ]>
  type t6<'t1, 't2, 't3, 't4, 't5, 't6> = container<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) | #U6('t6) ]>
  type t7<'t1, 't2, 't3, 't4, 't5, 't6, 't7> = container<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) | #U6('t6) | #U7('t7) ]>
  type t8<'t1, 't2, 't3, 't4, 't5, 't6, 't7, 't8> = container<[ #U1('t1) | #U2('t2) | #U3('t3) | #U4('t4) | #U5('t5) | #U6('t6) | #U7('t7) | #U8('t8) ]>
}

module Intersection = {
  type container<-'cases>

  external get1 : container<[> #I1('t1)]> => 't1 = "%identity"
  external get2 : container<[> #I2('t2)]> => 't2 = "%identity"
  external get3 : container<[> #I3('t3)]> => 't3 = "%identity"
  external get4 : container<[> #I4('t4)]> => 't4 = "%identity"
  external get5 : container<[> #I5('t5)]> => 't5 = "%identity"
  external get6 : container<[> #I6('t6)]> => 't6 = "%identity"
  external get7 : container<[> #I7('t7)]> => 't7 = "%identity"
  external get8 : container<[> #I8('t8)]> => 't8 = "%identity"

  type t2<'t1, 't2> = container<[ #I1('t1) | #I2('t2) ]>
  type t3<'t1, 't2, 't3> = container<[ #I1('t1) | #I2('t2) | #I3('t3) ]>
  type t4<'t1, 't2, 't3, 't4> = container<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) ]>
  type t5<'t1, 't2, 't3, 't4, 't5> = container<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) ]>
  type t6<'t1, 't2, 't3, 't4, 't5, 't6> = container<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) | #I6('t6) ]>
  type t7<'t1, 't2, 't3, 't4, 't5, 't6, 't7> = container<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) | #I6('t6) | #I7('t7) ]>
  type t8<'t1, 't2, 't3, 't4, 't5, 't6, 't7, 't8> = container<[ #I1('t1) | #I2('t2) | #I3('t3) | #I4('t4) | #I5('t5) | #I6('t6) | #I7('t7) | #I8('t8) ]>
}

module Interface = {
  @unboxed type t<-'tags, 'base> = { value: 'base }

  let value = (x: t<_, _>) => x.value
}
type intf<-'tags, 'base> = Interface.t<'tags, 'base>
type intf'<-'tags> = intf<'tags, any>

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

  external fromNull: null<'a> => t<[> #Null | #Other('a) ]> = "%identity"
  external toNull: t<[< #Null | #Other('a) ]> => null<'a> = "%identity"

  external fromUndefined: undefined<'a> => t<[> #Undefined | #Other('a) ]> = "%identity"
  external toUndefined: t<[< #Undefined | #Other('a) ]> => undefined<'a> = "%identity"

  external fromNullable: nullable<'a> => t<[> #Null | #Undefined | #Other('a) ]> = "%identity"
  external toNullable: t<[< #Null | #Undefined | #Other('a) ]> => nullable<'a> = "%identity"

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
  let make0 : ('variadic => 't) => t0<'variadic, 't> = f => %raw(`(function(...args) { return f(args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let make1 : (('arg1, 'variadic) => 't) => t1<'arg1, 'variadic, 't> = f => %raw(`(function(arg1, ...args) { return f(arg1, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let make2 : (('arg1, 'arg2, 'variadic) => 't) => tn<('arg1, 'arg2), 'variadic, 't> = f => %raw(`(function(arg1, arg2, ...args) { return f(arg1, arg2, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let make3 : (('arg1, 'arg2, 'arg3, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, ...args) { return f(arg1, arg2, arg3, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let make4 : (('arg1, 'arg2, 'arg3, 'arg4, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, ...args) { return f(arg1, arg2, arg3, arg4, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let make5 : (('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4, 'arg5), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, arg5, ...args) { return f(arg1, arg2, arg3, arg4, arg5, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let make6 : (('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, arg5, arg6, ...args) { return f(arg1, arg2, arg3, arg4, arg5, arg6, args); })`)

  @ocaml.doc(`\`'variadic\` is expected to be array or some other iterable type.`)
  let make7 : (('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6, 'arg7, 'variadic) => 't) => tn<('arg1, 'arg2, 'arg3, 'arg4, 'arg5, 'arg6, 'arg7), 'variadic, 't> = f => %raw(`(function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, ...args) { return f(arg1, arg2, arg3, arg4, arg5, arg6, arg7, args); })`)

  @ocaml.doc(`\`'args\` must be a tuple type. \`'variadic\` is expected to be array or some other iterable type.`)
  let makeN : (('args, 'variadic) => 't, int) => tn<'args, 'variadic, 't> = (f, n) => %raw(`(function(...args) { return f(args.slice(0, n), args.slice(n)); })`)

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