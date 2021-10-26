Modeling TypeScript's Subtyping in OCaml
========================================

TypeScript uses [structural subtyping](https://www.typescriptlang.org/docs/handbook/type-compatibility.html).

In OCaml, we have row polymorphism, which is very close to structural subtyping in TypeScript.
But **TypeScript objects can have overloaded methods**, which is impossible to represent in OCaml classes without giving them different names, and therefore will easily break the intended subtyping relations.

However, *most* TypeScript developers tend to use `extends` and `implements` to explicitly define subtyping relations.
So in *most* cases, we can regard it as **nominal subtyping**.
[fable-compiler/ts2fable](https://github.com/fable-compiler/ts2fable), which this project is inspired by, has been successful in simulating
TypeScript's subtyping using [F# interfaces](https://docs.microsoft.com/en-us/dotnet/fsharp/language-reference/interfaces).

# Simulating nominal subtyping in OCaml

In OCaml, there are several ways to simulate nominal subtyping.

## Classes

Uses OCaml classes to model JS objects.

Note that this does not try to model structural subtyping, but this actually relies on row polymorphism on methods and fields (which is very similar to structural subtyping).

```ocaml
class virtual foo =
  object
    method virtual meth: float -> unit
  end

class virtual bar =
  object
    inherit foo
    method virtual meth': float -> float -> unit
  end
```

Pros:
* Easy to use.
  - JS methods are just OCaml methods.
* Good support for recursive types.
  ```ocaml
  class virtual foo =
    object
      method virtual meth: float -> bar
    end

  and virtual bar =
    object
      inherit foo
      method virtual meth': float * float -> foo
    end
  ```
* Can model diamond inheritances in most cases.
  - The only exception is when a type inherits two different instantiation of the same generic type (`Bar extends Foo<T>, Foo<U>`).
* Can model [F-bounded polymorphism](https://www.typescriptlang.org/docs/handbook/advanced-types.html#polymorphic-this-types).
  - `val f: (< meth: float -> unit; ..> as 'this) -> float -> 'this`
* Can cast an object to its super class with `:>`.

Cons:
* Overloaded methods from parent classes should be renamed.
  - It adds extra complexity when writing a tool to generate bindings.
  - You would now have to check all the methods in all the super classes.
* Treating OCaml objects as JS objects **requires special runtime support.**
  - In js_of_ocaml, **OCaml objects are NOT JS objects**.
  - In ReScript, [OCaml objects are JS objects.](https://rescript-lang.org/docs/manual/latest/object)
* **Bad editor experiences in Merlin.**
  - In Merlin, if we have a value `val x: bar`, the `x` will show as having the type `< meth : float -> unit; meth' : float * float -> unit >`, not `bar`.
    - JS objects can have many methods and fields, which would make it hard to read the type.
  - In ReScript, it will show as `bar`.

## Private Type Abbreviations

Uses private type abbreviations to inherit a type.

```ocaml
module Foo : sig
  type t

  val meth: t -> float -> unit
end

module Bar : sig
  type t = private Foo.t

  val meth: t -> float -> float -> unit
end
```

Pros:
* Good editor experiences in Merlin.
  - If we have a value `val x: Bar.t`, the `x` will show as having the type `Bar.t`.
* Can cast an object to its super class with `:>`.
* Overloaded methods from parent classes don't have to be renamed.
  - Because they live in a different module.
* Does not require special runtime support.
  - Because every type is abstract.

Cons:
* **Can't model diamond inheritances**.
  - It's not very sure what to do when a type inherits two or more types.
* Can't model F-bounded polymorphism.
* A bit awkward to use.
  - You would have to write `Foo.meth (x :> Foo.t) 42.0` if `x` has the type `Bar.t`.
* Poor support for recursive types.
  - JS classes can be defined recursively, so you would have to use recursive modules to model it.
  - But recursive module signatures in OCaml doesn't support `include module type of`...

## Cast functions

Creates cast functions to cast an object to its parent classes.

```ocaml
module Foo : sig
  type t

  val meth: t -> float -> unit
end

module Bar : sig
  type t

  val meth: t -> float -> float -> unit

  val cast_to_foo: t -> Foo.t
end
```

Pros:
* Good editor experiences in Merlin.
* Overloaded methods from parent classes don't have to be renamed.
* Can model diamond inheritances.
  - Even when `Bar extends Foo<T>, Foo<U>`.
* Does not require special runtime support.

Cons:
* **Can't cast an object to its super class with `:>`**.
  - You would have to call `cast` functions to cast objects.
  - When `A :> B :> C`, you would have to write `B.cast_to_A (C.cast_to_B c)`.
* Can't model F-bounded polymorphism.
* A bit awkward to use.
* Poor support for recursive types.


## Phantom Types with Row Polymorphism (Polymorphic Variants)

Create a wrapper type with a phantom type `-'tags`, then put a polymorphic variant to the `-'tags`.

In this way, we use **row polymorphism on class names** to model nominal subtyping.

```ocaml
type -'tags intf

module Foo : sig
  type t = [`Foo] intf

  val meth: t -> float -> unit
end

module Bar : sig
  type t = [`Bar | `Foo] intf

  val meth: t -> float -> float -> unit
end

```

Pros:
* Overloaded methods from parent classes don't have to be renamed.
* Can cast an object to its super class with `:>`.
* Can model diamond inheritances in most cases.
  - The only exception is when a type inherits two different instantiation of the same generic type (`Bar extends Foo<T>, Foo<U>`).
* Can model F-bounded polymorphism.
  - ``val f: ([> `Foo] as 'this) -> float -> 'this``
  - The syntax is cleaner than when using classes.
* Does not require special runtime support.

Cons:
* **Mediocre editor experiences in Merlin.**
  - If we have a value `val x: Bar.t`, the `x` will show as having the type ``[ `Foo | `Bar ] intf``.
  - Not as bad as classes; the `'tags` type can be viewed as the list of classes the object inherits.
* A bit awkward to use.
* Poor support for recursive types.

## Give up modeling subtyping relations

```ocaml
type obj

module Foo : sig
  type t = obj

  val meth: t -> float -> unit
end

module Bar : sig
  type t = obj

  val meth: t -> float -> float -> unit
end
```

Pros:
* Overloaded methods from parent classes don't have to be renamed.
* No need to cast objects.
* Can handle diamond inheritances.
  - Because we don't try to simulate it.
* Can handle F-bounded polymorphism.
  - Because we don't try to simulate it.
* Does not require special runtime support.

Cons:
* **No type safety.**
  - Every JS type is the same type `obj`.
* **Bad editor experiences in Merlin.**
  - Every JS type now shows up as `obj`.
* A bit awkward to use.
* Poor support for recursive types.

# Failed attempts

Here I list other approaches which ended up being failure when I'm trying to simulate nominal subtyping in OCaml.

## Use `include` to inherit methods and property from super class

Assume we have the following input:

```typescript
interface A { methA(a: number): number; }

interface B extends A { methB(a: number, b: number): number; }

interface C extends A { methC(a: number, b: number, c: number): number; }

interface D extends B, C { methD(a: number, b: number, c: number, d: number): number; }
```

It seems we could beautifully model it with module inclusion (`include`):

```ocaml
module A : sig
  type t
  val methA: t -> a:float -> float
end

module B : sig
  type t
  include module type of A with type t := t
  val methB: t -> a:float -> b:float -> float
end

module C : sig
  type t
  include module type of A with type t := t
  val methC: t -> a:float -> b:float -> c:float -> float
end

module D : sig
  type t
  include module type of B with type t := t
  include module type of C with type t := t
  val methD: t -> a:float -> b:float -> c:float -> d:float -> float
end
```

But this approach starts to fall apart once we encounter a bit more complex cases.

### Can't `include` mutually-recursive module

Consider `A` has some method which takes `B` as an argument.

```typescript
interface A {
  methA(a: number): number;
  doSomethingWithB(b: B): unit;
}

interface B extends A {
  methB(a: number, b: number): number;
}
```

Then we would have to define `A` and `B` as mutually recursive modules.

```ocaml
module rec A : sig
  type t
  val methA: t -> a:float -> float
  val doSomethingWithB: t -> b:B.t -> unit
end

and B : sig
  type t
  include module type of A with type t := t
  val methB: t -> a:float -> b:float -> float
end
```

But this does not compile: it fails with `Illegal recursive module reference` error.
OCaml's module system simply don't support this.

> We could remove the recursion by moving the types to the outside of its modules, but then `with type t := t` does not work anymore:
> ```ocaml
> type _A
> type _B
>
> module A : sig
>   type t = _A
>   val methA: t -> a:float -> float
>   val doSomethingWithB: t -> b:_B -> unit
> end
>
> module B : sig
>   type t = _B
>   include module type of A with type t := t
>   val methB: t -> a:float -> b:float -> float
> end
> ```
> This now fails with a different error:
> ```
> In this `with' constraint, the new definition of t
> does not match its original definition in the constrained signature:
> Type declarations do not match: type t = _B is not included in type t = A.t
> ```

### Functions from the parent class with the same name are problematic

In the above example, each interface (conveniently) has a distinct name. But this is not the case in real-world examples.

If they share the same name `meth`, the above example now looks like this:

```ocaml
module A : sig
  type t
  val meth: t -> a:float -> float
end

module B : sig
  type t
  include module type of A with type t := t
  val meth: t -> a:float -> b:float -> float
end
```

Here, in the module `B`, the `meth` from `A` is hidden by `B`'s own `meth`.

What we have to do here is
1. List all the methods from the parent classes `A`, then
2. If there are any name collisions, rename the one from the child class `B` (in this case, to `meth'`).

But this means **we are always forced to have the complete list of methods** of the child class.

So using `include module type` does not make the implementation any easier than just dumping everything to `B` like this:

```ocaml
module A : sig
  type t
  val meth: t -> a:float -> float
end

module B : sig
  type t
  val meth: t -> a:float -> float
  val meth': t -> a:float -> b:float -> float
end
```

### Can't `include` the parent class if it has fewer type parameter than the child

Suppose `B` has a type parameter `T`:

```typescript
interface B<T> extends A {
  methB(a: number, b: number): T;
}
```

We would want to translate it to something like this:

```ocaml
module B : sig
  type 'T t
  include module type of A with type t := 'T t
  val methB: 'T t -> a:float -> b:float -> 'T
end
```

But this fails with the error `The type variable 'T is unbound in this type declaration`.
You can't introduce a new type variable in a destructive substitutions (`with .. := ..`).

> Yes, first-class module supports introducing additional type parameters:
> ```ocaml
> module type A_Type = sig
>   type t
>   val methA: t -> a:float -> float
> end
>
> module B : sig
>   type 'T t
>   type 'T b = (module A with type t = 'T t)
> end
> ```
> Then `'T b` is the type of the first-class module.
> But it has several problems:
> 1. first-class modules in JS require special runtime support,
> 2. it's difficult to inherit multiple classes into a single `'T b`,
> 3. it's also difficult to add `B`'s own methods to `'T b`, and
> 4. we can't extract the module type back from `'T b`, so we can't inherit `B` by `include` anymore.