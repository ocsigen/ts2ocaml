type union(+'labels, 'fields) =
  | Union('labels, 'fields)

type intersection(-'labels, 'fields) =
  | Intersection(('labels => unit), 'fields)

module Union = {
  type t(+'labels, 'fields) = union('labels, 'fields)
  external get_value: t(_, 'f) => 'f = "%identity"
}

module Intersection = {
  type t(-'labels, 'fields) = intersection('labels, 'fields)
  external get_value: t(_, 'f) => 'f = "%identity"
}

type any

module Any = {
  type t = any
  type union_label = [ `Any ]
  type intersection_label = [ `Any ]

  external inject: 't => t = "%identity"
  external unsafe_coerce: t => 't = "%identity"
}

type unknown

module Unknown = {
  type t = unknown
  type union_label = [ `Unknown ]
  type intersection_label = [ `Unknown ]

  external inject: 't => t = "%identity"
  external unsafe_coerce: t => 't = "%identity"
}

type never = unit

module Never = {
  type t = never
  type union_label = [ `Never ]
  type intersection_label = [ `Never ]
}

type void = unit

module Void = {
  type t = void
  type union_label = [ `Void ]
  type intersection_label = [ `Void ]
}

module Number = {
  type t = float
  type extends_t('a) = Js.t({..}) as 'a
  type union_label = [ `Number ]
  type intersection_label = [ `Number ]

  external of_intersection: intersection([> intersection_label], extends_t(_)) => t = "%identity"
  external to_union: t => union([> union_label], t) = "%identity"
}

module Symbol = {
  type t = Js.Types.symbol
}