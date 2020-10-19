type t<-'a>

type never
type any
type unknown

type enum<'t, +'a>

external magic: 'a => 'b = "%identity"

module Enum = {
  type t<'t, +'a> = enum<'t, 'a>
  external value: enum<'t, 'a> => 't = "id"
}

type and_<'a, 'b>
type intersection2<'a, 'b> = and_<'a, 'b>
type intersection3<'a, 'b, 'c> = and_<'a, intersection2<'b, 'c>>
type intersection4<'a, 'b, 'c, 'd> = and_<'a, intersection3<'b, 'c, 'd>>
type intersection5<'a, 'b, 'c, 'd, 'e> = and_<'a, intersection4<'b, 'c, 'd, 'e>>
type intersection6<'a, 'b, 'c, 'd, 'e, 'f> = and_<'a, intersection5<'b, 'c, 'd, 'e, 'f>>
type intersection7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = and_<'a, intersection6<'b, 'c, 'd, 'e, 'f, 'g>>
type intersection8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> = and_<'a, intersection7<'b, 'c, 'd, 'e, 'f, 'g, 'h>>

module Intersection = {
  external skip: (and_<'a, 'b>) => 'b = "%identity"
  external get:  (and_<'a, 'b>) => 'a = "%identity"
  let unwrap2 = (x: intersection2<'a, 'b>) => (magic(x):'a, magic(x):'b)
  let unwrap3 = (x: intersection3<'a, 'b, 'c>) => (magic(x):'a, magic(x):'b, magic(x):'c)
  let unwrap4 = (x: intersection4<'a, 'b, 'c, 'd>) => (magic(x):'a, magic(x):'b, magic(x):'c, magic(x):'d)
}

type or<'a, 'b>
type union2<'a, 'b> = or<'a, 'b>
type union3<'a, 'b, 'c> = or<'a, union2<'b, 'c>>
type union4<'a, 'b, 'c, 'd> = or<'a, union3<'b, 'c, 'd>>
type union5<'a, 'b, 'c, 'd, 'e> = or<'a, union4<'b, 'c, 'd, 'e>>
type union6<'a, 'b, 'c, 'd, 'e, 'f> = or<'a, union5<'b, 'c, 'd, 'e, 'f>>
type union7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = or<'a, union6<'b, 'c, 'd, 'e, 'f, 'g>>
type union8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> = or<'a, union7<'b, 'c, 'd, 'e, 'f, 'g, 'h>>

type number_or<'a> = or<float, 'a>
type string_or<'a> = or<string, 'a>
type boolean_or<'a> = or<bool, 'a>
type symbol_or<'a> = or<Js.Types.symbol, 'a>
type array_or<'t, 'a> = or<array<'t>, 'a>

module Union = {
  open Js.Types
  external flip2: (or<'a, or<'b, 'c>>) => or<'b, or<'a, 'c>> = "%identity"
  external flip3: (or<'a, or<'b, or<'c, 'd>>>) => or<'c, or<'a, or<'b, 'd>>> = "%identity"
  external flip4: (or<'a, or<'b, or<'c, or<'d, 'e>>>>) => or<'d, or<'a, or<'b, or<'c, 'e>>>> = "%identity"
  
  let to_number = (x: or<float, 'a>) => {
    if (test(x, Number)) { Ok(magic(x) : float) }
    else { Error(magic(x) : 'a) }
  }
  let number_or = (f: (float => 'b), g: ('a => 'b), x: or<float, 'a>) => {
    if (test(x, Number)) { f(magic(x) : float) }
    else { g(magic(x) : 'a) }
  }
  let to_string = (x: or<string, 'a>) => {
    if (test(x, String)) { Ok(magic(x) : string) }
    else { Error(magic(x) : 'a) }
  }
  let to_boolean = (x: or<bool, 'a>) => {
    if (test(x, Boolean)) { Ok(magic(x) : bool) }
    else { Error(magic(x) : 'a) }
  }
  
}
