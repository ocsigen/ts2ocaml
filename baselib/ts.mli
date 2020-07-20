type +'a union
type -'a intersection

module Number: sig
  type t = float
  type union_label = [ `Number of t ]
  type intersection_label = [ `Number of t ]
  external of_intersection: [> intersection_label] intersection -> t = "%identity"
  external to_union: t -> [> union_label] union = "%identity"
  val of_union: [> union_label] union -> t option
end

module String: sig
  type t = string
  type union_label = [ `String of t ]
  type intersection_label = [ `String of t ]
  external of_intersection: [> intersection_label] intersection -> t = "%identity"
  external to_union: t -> [> union_label] union = "%identity"
  val of_union: [> union_label] union -> t option
end

module Boolean: sig
  type t = bool
  type union_label = [ `Boolean of t ]
  type intersection_label = [ `Boolean of t ]
  external of_intersection: [> intersection_label] intersection -> t = "%identity"
  external to_union: t -> [> union_label] union = "%identity"
  val of_union: [> union_label] union -> t option
end