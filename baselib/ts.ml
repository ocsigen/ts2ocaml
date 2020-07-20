type +'a union = Union of 'a
type -'a intersection = Intersection of ('a -> unit)

external typeof : 'a -> string = "typeof" [@@bs.val]

module Number = struct
  type t = float
  type union_label = [ `Number of t ]
  type intersection_label = [ `Number of t ]
  external of_intersection: [> intersection_label] intersection -> t = "%identity"
  external to_union: t -> [> union_label] union = "%identity"
  let of_union: [> union_label] union -> t option =
  	fun x -> if typeof x = "number" then Some (Obj.magic x) else None
end

module String = struct
  type t = string
  type union_label = [ `String of t ]
  type intersection_label = [ `String of t ]
  external of_intersection: [> intersection_label] intersection -> t = "%identity"
  external to_union: t -> [> union_label] union = "%identity"
  let of_union: [> union_label] union -> t option =
  	fun x -> if typeof x = "string" then Some (Obj.magic x) else None
end

module Boolean = struct
  type t = bool
  type union_label = [ `Boolean of t ]
  type intersection_label = [ `Boolean of t ]
  external of_intersection: [> intersection_label] intersection -> t = "%identity"
  external to_union: t -> [> union_label] union = "%identity"
  let of_union: [> union_label] union -> t option =
  	fun x -> if typeof x = "boolean" then Some (Obj.magic x) else None
end

