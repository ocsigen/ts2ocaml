open Ts

module Person = {
  type t = {
    .
    "name": string,
    "age": int,
  }
  type extends_t('a) = {
    ..
    "name": string,
    "age": int,
  } as 'a
  type union_label = [ `Person ]
  type intersection_label = [ `Person ]
  external of_intersection: intersection([> intersection_label], extends_t(_)) => t = "%identity"
  external to_union: t => union([> union_label], t) = "%identity"
  external unsafe_of_union: union([> union_label], _) => t = "%identity"
}

module Student = {
  type t = Person.extends_t({.
    "name": string,
    "age": int,
    "id": int
  })
  type extends_t('a) =
    Person.extends_t({..
      "name": string,
      "age": int,
      "id": int
    }) as 'a
  type union_label = [ `Student | Person.union_label ]
  type intersection_label = [ `Student | Person.intersection_label ]
  external of_intersection: intersection([> intersection_label], extends_t(_)) => t = "%identity"
  external to_union: t => union([> union_label], t) = "%identity"
  external unsafe_of_union: union([> union_label], _) => t = "%identity"
}

module Computer = {
  type t('customer) = {
    .
    "name": string,
    "cpus": int,
    "customer": Person.extends_t('customer)
  }
  type extends_t('a, 'customer) = {
    ..
    "name": string,
    "cpus": int,
    "customer": Person.extends_t('customer)
  } as 'a
  type union_label('customer) = [ `Computer('customer) ]
  type intersection_label('customer) = [ `Computer('customer) ]
  external of_intersection: intersection([> intersection_label('customer)], extends_t(_, 'customer)) => t('customer) = "%identity"
  external to_union: t('customer) => union([> union_label('customer)], t('customer)) = "%identity"
  external unsafe_of_union: union([> union_label('customer)], _) => t('customer) = "%identity"
}

let p : Person.t = Obj.magic()
let s : Student.t = Obj.magic()
let c : Computer.t(Person.t) = Obj.magic()

let s_as_p = (s :> Person.t)

let us = [
  Person.to_union(p) :> union(_, {. "name": string}), 
  Student.to_union(s) :> union(_, {. "name": string}), 
  Computer.to_union(c) :> union(_, {. "name": string})
]

let i()
  : intersection(
      [Student.intersection_label | Computer.intersection_label(Student.t)],
      Student.extends_t(Computer.extends_t('a, Student.t)))
  = Obj.magic()

let name =
  (i() |> Intersection.get_value :> {. "name": string})##name

let pu = (i() :> intersection(Person.intersection_label, Person.t))
let cu = (i() :> intersection(Computer.intersection_label(_), Computer.t(_)))

let p_ = i() |> Person.of_intersection
let s_ = i() |> Student.of_intersection
let c_ = i() |> Computer.of_intersection

