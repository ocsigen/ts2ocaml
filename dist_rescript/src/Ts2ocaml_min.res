@@warning("-27")

type never

module Never = {
  type t = never
  let absurd = (never: never) => Obj.magic(never)
}

@unboxed type rec any = Any('a): any
let any = x => Any(x)

module Any = {
  type t = any
  let unsafeCast = (x: any) => Obj.magic(x)
}

type unknown

module Unknown = {
  type t = unknown
  let unsafeCast = (x: unknown) => Obj.magic(x)
}

type and_<'a, 'b>

module And = {
  type t<'a, 'b> = and_<'a, 'b>
  let car = (x: t<'a, 'b>) : 'a => Obj.magic(x)
  let cdr = (x: t<'a, 'b>) : 'b => Obj.magic(x)
}

module Intersection = {
  type t2<'t0, 't1> = and_<'t1, 't0>
  type t3<'t0, 't1, 't2> = and_<t2<'t1, 't2>, 't0>
  type t4<'t0, 't1, 't2, 't3> = and_<t3<'t1, 't2, 't3>, 't0>
  type t5<'t0, 't1, 't2, 't3, 't4> = and_<t4<'t1, 't2, 't3, 't4>, 't0>
  type t6<'t0, 't1, 't2, 't3, 't4, 't5> = and_<t5<'t1, 't2, 't3, 't4, 't5>, 't0>
  type t7<'t0, 't1, 't2, 't3, 't4, 't5, 't6> = and_<t6<'t1, 't2, 't3, 't4, 't5, 't6>, 't0>
  type t8<'t0, 't1, 't2, 't3, 't4, 't5, 't6, 't7> = and_<t7<'t1, 't2, 't3, 't4, 't5, 't6, 't7>, 't0>

  let get0 = (x: t2<'t0, 't1>) : 't0 => And.cdr(x)
  let get1 = (x: t3<'t0, 't1, 't2>) : 't1 => And.car(x)->get0
  let get2 = (x: t4<'t0, 't1, 't2, 't3>) : 't2 => And.car(x)->get1
  let get3 = (x: t5<'t0, 't1, 't2, 't3, 't4>) : 't3 => And.car(x)->get2
  let get4 = (x: t6<'t0, 't1, 't2, 't3, 't4, 't5>) : 't4 => And.car(x)->get3
  let get5 = (x: t7<'t0, 't1, 't2, 't3, 't4, 't5, 't6>) : 't5 => And.car(x)->get4
  let get6 = (x: t8<'t0, 't1, 't2, 't3, 't4, 't5, 't6, 't7>) : 't6 => And.car(x)->get5
  let get7 = (x: t8<'t0, 't1, 't2, 't3, 't4, 't5, 't6, 't7>) : 't7 => Obj.magic(x)
}

type or<'a, 'b>

module Or = {
  type t<'a, 'b> = or<'a, 'b>
  let inl = (a: 'a) : t<'a, 'b> => Obj.magic(a)
  let inr = (b: 'b) : t<'a, 'b> => Obj.magic(b)

  let test = (x: t<'a, 'b>, isLeft: any => bool, isRight: any => bool) : [ #Left('a) | #Right('b) | #Other(any) ] => {
    let x = any(x)
    if isLeft(x) { #Left(Any.unsafeCast(x)) }
    else if isRight(x) { #Right(Any.unsafeCast(x)) }
    else { #Other(x) }
  }
}

module Union = {
  type t2<'t0, 't1> = or<'t1, 't0>
  type t3<'t0, 't1, 't2> = or<t2<'t1, 't2>, 't0>
  type t4<'t0, 't1, 't2, 't3> = or<t3<'t1, 't2, 't3>, 't0>
  type t5<'t0, 't1, 't2, 't3, 't4> = or<t4<'t1, 't2, 't3, 't4>, 't0>
  type t6<'t0, 't1, 't2, 't3, 't4, 't5> = or<t5<'t1, 't2, 't3, 't4, 't5>, 't0>
  type t7<'t0, 't1, 't2, 't3, 't4, 't5, 't6> = or<t6<'t1, 't2, 't3, 't4, 't5, 't6>, 't0>
  type t8<'t0, 't1, 't2, 't3, 't4, 't5, 't6, 't7> = or<t7<'t1, 't2, 't3, 't4, 't5, 't6, 't7>, 't0>

  let inject0 = (x: 't0) : t2<'t0, 't1> => Or.inr(x)
  let inject1 = (x: 't1) : t3<'t0, 't1, 't2> => inject0(x)->Or.inl
  let inject2 = (x: 't2) : t4<'t0, 't1, 't2, 't3> => inject1(x)->Or.inl
  let inject3 = (x: 't3) : t5<'t0, 't1, 't2, 't3, 't4> => inject2(x)->Or.inl
  let inject4 = (x: 't4) : t6<'t0, 't1, 't2, 't3, 't4, 't5> => inject3(x)->Or.inl
  let inject5 = (x: 't5) : t7<'t0, 't1, 't2, 't3, 't4, 't5, 't6> => inject4(x)->Or.inl
  let inject6 = (x: 't6) : t8<'t0, 't1, 't2, 't3, 't4, 't5, 't6, 't7> => inject5(x)->Or.inl
  let inject7 = (x: 't7) : t8<'t0, 't1, 't2, 't3, 't4, 't5, 't6, 't7> => Obj.magic(x)
}

type symbol = Js.Types.symbol
type bigint

@unboxed type intf<-'tags, 'a> = { value: 'a }

module JsInterop = {
  let apply0 = (. it: 'Function) => %raw(`it()`)
  let apply1 = (. it: 'Function, arg0) => %raw(`it(arg0)`)
  let apply2 = (. it: 'Function, arg0, arg1) => %raw(`it(arg0, arg1)`)
  let apply3 = (. it: 'Function, arg0, arg1, arg2) => %raw(`it(arg0, arg1, arg2)`)
  let apply4 = (. it: 'Function, arg0, arg1, arg2, arg3) => %raw(`it(arg0, arg1, arg2, arg3)`)
  let apply5 = (. it: 'Function, arg0, arg1, arg2, arg3, arg4) => %raw(`it(arg0, arg1, arg2, arg3, arg4)`)
  let apply6 = (. it: 'Function, arg0, arg1, arg2, arg3, arg4, arg5) => %raw(`it(arg0, arg1, arg2, arg3, arg4, arg5)`)
  let apply7 = (. it: 'Function, arg0, arg1, arg2, arg3, arg4, arg5, arg6) => %raw(`it(arg0, arg1, arg2, arg3, arg4, arg5, arg6)`)
  let applyN = (. it: 'Function, args: array<any>) => %raw(`it(...args)`)

  let applyNewable0 = (. it: 'Function) => %raw(`new it()`)
  let applyNewable1 = (. it: 'Function, arg0) => %raw(`new it(arg0)`)
  let applyNewable2 = (. it: 'Function, arg0, arg1) => %raw(`new it(arg0, arg1)`)
  let applyNewable3 = (. it: 'Function, arg0, arg1, arg2) => %raw(`new it(arg0, arg1, arg2)`)
  let applyNewable4 = (. it: 'Function, arg0, arg1, arg2, arg3) => %raw(`new it(arg0, arg1, arg2, arg3)`)
  let applyNewable5 = (. it: 'Function, arg0, arg1, arg2, arg3, arg4) => %raw(`new it(arg0, arg1, arg2, arg3, arg4)`)
  let applyNewable6 = (. it: 'Function, arg0, arg1, arg2, arg3, arg4, arg5) => %raw(`new it(arg0, arg1, arg2, arg3, arg4, arg5)`)
  let applyNewable7 = (. it: 'Function, arg0, arg1, arg2, arg3, arg4, arg5, arg6) => %raw(`new it(arg0, arg1, arg2, arg3, arg4, arg5, arg6)`)
  let applyNewableN = (. it: 'NewableFunction, args: array<any>) => %raw(`new it(...args)`)

  module PolyVariant = {
    let name  = (. it: 'PolyVariant) => %raw(`it.NAME`)
    let value = (. it: 'PolyVariant) => %raw(`it.VAL`)
    let make = (. name: string, value: 'a) : 'PolyVariant => %raw(`{ NAME: name, VAL: value }`)
  }
}
