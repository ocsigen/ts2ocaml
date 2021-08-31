module Target.JsOfOCaml.Writer

open System
open Syntax
open Typer
open Typer.Type
open Text

open Target.JsOfOCaml.Common
open Target.JsOfOCaml.OCamlHelper

type ScriptTarget = TypeScript.Ts.ScriptTarget
type Dict<'k, 'v> = Collections.Generic.Dictionary<'k, 'v>

type State = {|
  referencesCache: Dict<string list, WeakTrie<string>>
  usedAnonymousInterfacesCache: Dict<string list, Set<int>>
|}
module State =
  let defaultValue () : State =
    {| referencesCache = new Dict<_, _>();
       usedAnonymousInterfacesCache = new Dict<_, _>() |}

type Context = Context<Options, State>

let emitComment (c: Comment) : text =
  // https://github.com/ocaml/ocaml/issues/5745
  let escapeDoubleQuote (lines: string list) =
    let dqCount =
      lines |> List.sumBy (fun (s: string) -> s.ToCharArray() |> Array.sumBy (function '"' -> 1 | _ -> 0))
    if dqCount % 2 = 0 then lines
    else lines @ ["\""]

  let escape (lines: string list) =
    lines
    |> List.map (String.escapeWith ["{"; "}"; "["; "]"; "@"])
    |> List.map (String.replace "(*" "( *")
    |> List.map (String.replace "*)" "* )")
    |> escapeDoubleQuote

  match c with
  | Description lines | Summary lines -> strLines (escape lines)
  | Param (name, lines) -> tprintf "@param %s " name + strLines (escape lines)
  | Return lines -> "@return " @+ strLines (escape lines)
  | Deprecated lines -> "@deprecated " @+ strLines (escape lines)
  | Example lines ->
    concat newline [
      str "example:"
      between "[" "]" (strLines (escape lines))
    ]
  | See (link, lines) -> tprintf "@see \"%s\" " link + strLines (escape lines)
  | ESVersion target ->
    match target with
    | ScriptTarget.ES3 | ScriptTarget.ES5 -> empty
    | _ -> tprintf "language version: %s" (Enum.pp target)
  | Other ("author", lines, _) -> "@author " @+ strLines (escape lines)
  | Other ("since", lines, _) -> "@since " @+ strLines (escape lines)
  | Other ("version", lines, _) -> "@version " @+ strLines (escape lines)
  | Other (("throws" | "exception"), lines, _) -> "@raise exn " @+ strLines (escape lines)
  | Other (tag, lines, _) -> tprintf "%s: " tag + strLines (escape lines)

let literalToIdentifier (ctx: Context) (l: Literal) : text =
  let formatString (s: string) =
    (s :> char seq)
    |> Seq.map (fun c ->
      if Char.isAlphabetOrDigit c then c
      else '_'
    ) |> Seq.toArray |> System.String
  let inline formatNumber (x: 'a) =
    string x
    |> String.replace "+" "plus"
    |> String.replace "-" "minus"
    |> String.replace "." "_"
  match l with
  | LString s ->
    match ctx.typeLiteralsMap |> Map.tryFind l with
    | Some i ->
      if String.forall (Char.isAlphabetOrDigit >> not) s then tprintf "s%i" i
      else tprintf "s%i_%s" i (formatString s)
    | None -> failwithf "the literal '%s' is not found in the context" s
  | LInt i -> tprintf "n_%s" (formatNumber i)
  | LFloat l -> tprintf "n_%s" (formatNumber l)
  | LBool true -> str "b_true" | LBool false -> str "b_false"

let anonymousInterfaceModuleName (index: int) = sprintf "AnonymousInterface%d" index

let anonymousInterfaceToIdentifier (ctx: Context) (c: Class) : text =
  match ctx.anonymousInterfacesMap |> Map.tryFind c, c.name with
  | Some i, None ->
    if ctx.options.useRecursiveModules <> UseRecursiveModules.Off then
      tprintf "%s.t" (anonymousInterfaceModuleName i)
    else
      tprintf "anonymous_interface_%d" i
  | None, None -> failwithf "the anonymous interface '%A' is not found in the context" c
  | _, Some n -> failwithf "the class or interface '%s' is not anonymous" n

type Variance = Covariant | Contravariant | Invariant with
  static member (~-) (v: Variance) =
    match v with
    | Covariant -> Contravariant
    | Contravariant -> Covariant
    | Invariant -> Invariant

type Label =
  | Case of text
  | TagType of text

type EmitTypeFlags = {
  resolveUnion: bool
  needParen: bool
  variance: Variance
  failContravariantTypeVar: bool
  skipAttributesOnContravariantPosition: bool
  avoidTheseArgumentNames: Set<string>
  forceVariadic: bool
  hasTypeArgumentsHandled: bool
}

module EmitTypeFlags =
  let defaultValue =
    {
      resolveUnion = true
      needParen = false
      variance = Covariant
      failContravariantTypeVar = false
      skipAttributesOnContravariantPosition = false
      avoidTheseArgumentNames = Set.empty
      forceVariadic = false
      hasTypeArgumentsHandled = false
    }

type TypeEmitter = Context -> Type -> text

type OverrideFunc = TypeEmitter -> Context -> Type -> text option
module OverrideFunc =
  let inline noOverride _emitType _ctx _ty = None
  let inline combine (f1: OverrideFunc) (f2: OverrideFunc) : OverrideFunc =
    fun _emitType _ctx ty ->
      match f1 _emitType _ctx ty with
      | Some text -> Some text
      | None -> f2 _emitType _ctx ty

let rec emitTypeImpl (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) (ty: Type) : text =
  let treatEnum (flags: EmitTypeFlags) ctx (cases: Set<Choice<EnumCase, Literal>>) =
    between "[" "]" (concat (str " | ") [
      for c in Set.toSeq cases do
        let name, value =
          match c with
          | Choice1Of2 e -> str (Naming.constructorName [e.name]), e.value
          | Choice2Of2 l -> "L_" @+ literalToIdentifier ctx l, Some l
        let attr =
          match value with
          | _ when flags.skipAttributesOnContravariantPosition && flags.variance = Contravariant -> empty
          | Some v -> Attr.js (Term.literal v)
          | None -> empty
        yield pv_head @+ name + attr
    ]) +@ " [@js.enum]" |> between "(" ")"

  let treatIdent { name = name; fullName = fno; loc = identLoc } (tyargs: Type list) (loc: Location) =
    let arity = List.length tyargs
    let withTyargs tyName =
      Type.appOpt (str tyName) (tyargs |> List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false } overrideFunc ctx))
    match fno with
    | None ->
      let tyName =
        match ctx.options.useAritySafeTypeNames with
        | UseAritySafeTypeNames.Full | UseAritySafeTypeNames.Consume ->
          Naming.createTypeNameOfArity arity None "t"
        | _ -> "t"
      Naming.structured Naming.moduleName name + "." + tyName |> withTyargs
    | Some fn ->
      if ctx.options.useRecursiveModules <> UseRecursiveModules.Off then
        let maxArity =
          FullName.tryLookupWith ctx fn (function
            | AliasName { typeParams = tps; erased = false }
            | ClassName { typeParams = tps } -> List.length tps |> Some
            | _ -> None
          )
        let tyName = Naming.createTypeNameOfArity arity maxArity "t"
        match ctx |> Context.getRelativeNameTo fn with
        | Ok relativeName ->
          assert (relativeName = name)
          Naming.structured Naming.moduleName relativeName + "." + tyName |> withTyargs
        | Error diff ->
          if List.isEmpty diff then
            // the type is the current namespace
            tyName |> withTyargs
          else
            // the type is a parent of the current namespace.
            // we expand the identifier to `[ .. ] intf`
            let ty =
              if List.isEmpty tyargs then Ident { name = name; fullName = fno; loc = loc }
              else App (AIdent { name = name; fullName = fno; loc = identLoc }, tyargs, loc)
            let labels =
              getAllInheritancesAndSelf ctx ty
              |> getLabelsFromInheritingTypes (emitTypeImpl flags overrideFunc) ctx
            emitLabels ctx labels
            |> List.singleton
            |> Type.app Type.intf
      else
        let name = Naming.flattenedTypeName fn
        let ts =
          FullName.tryLookupWith ctx fn (function
            | AliasName { typeParams = tps; loc = origLoc }
            | ClassName { typeParams = tps; loc = origLoc } ->
              assignTypeParams fn (origLoc ++ loc) tps tyargs
                (fun _ t -> t)
                (fun tv ->
                  match tv.defaultType with
                  | Some t -> t
                  | None -> failwithf "error: insufficient type params for type '%s' at %s" (String.concat "." fn) loc.AsString)
              |> Some
            | _ -> None
          ) |> Option.defaultValue tyargs
        Type.appOpt (str name) (ts |> List.map (emitTypeImpl flags overrideFunc ctx))

  match overrideFunc (emitTypeImpl flags overrideFunc) ctx ty with
  | Some t -> t
  | None ->
    match ty with
    | App (APrim Array, ts, _) when flags.forceVariadic ->
      Type.app Type.array (List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false } overrideFunc ctx) ts)
    | App (APrim ReadonlyArray, ts, _) when flags.forceVariadic ->
      Type.app Type.readonlyArray (List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false } overrideFunc ctx) ts)
    | _ when flags.forceVariadic ->
      commentStr (sprintf "FIXME: type '%s' cannot be used for variadic argument" (Type.pp ty)) + Type.app Type.array [Type.any]
    | App (t, ts, loc) ->
      let emit t ts =
        Type.appOpt (emitTypeImpl { flags with hasTypeArgumentsHandled = true } overrideFunc ctx t) (List.map (emitTypeImpl { flags with needParen = true } overrideFunc ctx) ts)
      match t with
      | AIdent i -> treatIdent i ts loc
      | APrim _ | AAnonymousInterface _ -> emit (Type.ofAppLeftHandSide t) ts
    | Ident i -> treatIdent i [] i.loc
    | TypeVar v ->
      if flags.failContravariantTypeVar && flags.variance = Contravariant then
        commentStr (sprintf "FIXME: contravariant type variable '%s'" v) + Type.any
      else
        tprintf "'%s" v
    | Prim p ->
      match p with
      | Null -> Type.app Type.null_ [Type.never] | Undefined -> Type.app Type.undefined [Type.never]
      | String -> Type.string | Bool -> Type.boolean
      | Number -> Type.number ctx.options
      | Object -> Type.object | UntypedFunction -> Type.function_
      | RegExp -> Type.regexp | Symbol -> Type.symbol
      | Never -> Type.never | Any -> Type.any | Unknown -> Type.unknown | Void -> Type.void_
      | Array -> Type.array | ReadonlyArray -> Type.readonlyArray
      | BigInt -> Type.bigint
    | TypeLiteral l ->
      treatEnum flags ctx (Set.singleton (Choice2Of2 l))
    | Intersection i ->
      let flags = { flags with needParen = true }
      Type.intersection (i.types |> List.distinct |> List.map (emitTypeImpl flags overrideFunc ctx))
    | Union u ->
      let flags = { flags with needParen = true }
      let safe_union_t = function
        | [] -> failwith "union type with only zero types"
        | [t] -> t
        | ts -> Type.union ts
      if not flags.resolveUnion then
        safe_union_t (u.types |> List.distinct |> List.map (emitTypeImpl flags overrideFunc ctx))
      else
        let ru = ResolvedUnion.resolve ctx u
        let skipOnContravariant text =
          if flags.skipAttributesOnContravariantPosition && flags.variance = Contravariant then empty
          else text
        let treatNullUndefined t =
          match ru.caseNull, ru.caseUndefined with
          | true, true -> Type.app Type.null_undefined [t]
          | true, false -> Type.app Type.null_ [t]
          | false, true -> Type.app Type.undefined [t]
          | false, false -> t
        let treatTypeofableTypes (ts: Set<TypeofableType>) t =
          let emitOr tt t =
            match tt with
            | TNumber -> Type.number_or t
            | TString -> Type.string_or t
            | TBoolean -> Type.boolean_or t
            | TSymbol -> Type.symbol_or t
            | TBigInt -> Type.bigint_or t
          let rec go = function
            | [] -> t
            | [x] ->
              match t with
              | None -> TypeofableType.toType x |> emitTypeImpl flags overrideFunc ctx |> Some
              | Some t -> Some (emitOr x t)
            | x :: rest -> go rest |> Option.map (emitOr x)
          Set.toList ts |> go
        let treatArray (arr: Set<Type> option) t =
          match arr with
          | None -> t
          | Some ts ->
            // TODO: think how to map multiple array cases properly
            let elemT = emitTypeImpl flags overrideFunc ctx (Union { types = Set.toList ts })
            match t with
            | None -> Some (Type.app Type.array [elemT])
            | Some t -> Some (Type.array_or elemT t)
        let treatDU (tagName: string) (cases: Map<Literal, Type>) =
          between "[" "]" (concat (str " | ") [
            for (l, t) in Map.toSeq cases do
              let name = pv_head @+ "U_" @+ literalToIdentifier ctx l
              let ty = emitTypeImpl { flags with resolveUnion = false } overrideFunc ctx t
              let body = tprintf "%A of %A " name ty
              yield body + skipOnContravariant (Attr.js (Term.literal l))
          ]) + tprintf " [@js.union on_field \"%s\"]" tagName |> between "(" ")"
        let treatOther otherTypes =
          if Set.isEmpty otherTypes then
            failwith "impossible_emitResolvedUnion_treatOther_go"
          else
            otherTypes |> Set.toList |> List.map (emitTypeImpl flags overrideFunc ctx) |> safe_union_t
        let treatEnumOr (cases: Set<Choice<EnumCase, Literal>>) t =
          if Set.isEmpty cases then t
          else Type.enum_or (treatEnum flags ctx cases) t
        let treatDUMany du =
          if Map.isEmpty du then
            failwith "impossible_emitResolvedUnion_baseType_go"
          else
            Map.toList du
            |> List.map (fun (tagName, cases) -> treatDU tagName cases)
            |> safe_union_t
        let baseType =
          match not (Set.isEmpty ru.caseEnum), not (Map.isEmpty ru.discriminatedUnions), not (Set.isEmpty ru.otherTypes) with
          | false, false, false -> None
          | true, false, false -> Some (treatEnum flags ctx ru.caseEnum)
          | false, true, hasOther ->
            let t = treatDUMany ru.discriminatedUnions
            if hasOther then Type.or_ t (treatOther ru.otherTypes) |> Some
            else Some t
          | false, false, true -> treatOther ru.otherTypes |> Some
          | true, false, true -> treatOther ru.otherTypes |> treatEnumOr ru.caseEnum |> Some
          | true, true, hasOther ->
            let t = treatDUMany ru.discriminatedUnions
            let t = if hasOther then Type.or_ t (treatOther ru.otherTypes) else t
            t |> treatEnumOr ru.caseEnum |> Some
        baseType |> treatArray ru.caseArray
                 |> treatTypeofableTypes ru.typeofableTypes
                 |> Option.defaultValue Type.never
                 |> treatNullUndefined
    | AnonymousInterface a -> anonymousInterfaceToIdentifier ctx a
    | PolymorphicThis -> commentStr "FIXME: polymorphic this" + Type.any
    | Intrinsic -> Type.ojs_t
    | Function f ->
      let renamer = new OverloadRenamer(used=(flags.avoidTheseArgumentNames |> Set.map (fun s -> "value", s)))
      let inline rename x = renamer.Rename "value" x
      let rec go acc (args: Choice<FieldLike, Type> list) =
        let flags = { flags with variance = -flags.variance }
        match args with
        | [] -> acc + Type.void_
        | Choice1Of2 x :: [] when acc = empty && not x.isOptional ->
          go acc [Choice2Of2 x.value] // do not generate label if it is the only argument and is not optional
        | Choice1Of2 x :: [] when f.isVariadic ->
          assert (not x.isOptional)
          acc + tprintf "%s:" (Naming.valueName x.name |> rename) + between "(" ")" (emitTypeImpl { flags with forceVariadic = true } overrideFunc ctx x.value +@ " [@js.variadic]")
        | Choice2Of2 t :: [] | Choice1Of2 { value = t } :: [] when f.isVariadic ->
          acc + between "(" ")" (emitTypeImpl { flags with forceVariadic = true } overrideFunc ctx t +@ " [@js.variadic]")
        | Choice1Of2 x :: xs ->
          let prefix =
            if x.isOptional then "?" else ""
          let ty = emitTypeImpl { flags with needParen = true } overrideFunc ctx x.value
          let t = tprintf "%s%s:" prefix (Naming.valueName x.name |> rename) + ty
          if not x.isOptional && List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs
        | Choice2Of2 t :: xs ->
          let t = emitTypeImpl { flags with needParen = true } overrideFunc ctx t
          if List.isEmpty xs then acc + t
          else go (acc + t +@ " -> ") xs
      let lhs = go empty f.args
      let rhs =
        let argNames =
          f.args |> List.choose (function Choice1Of2 x -> Some x.name | Choice2Of2 _ -> None) |> Set.ofList
        let x = emitTypeImpl { flags with needParen = false; avoidTheseArgumentNames = argNames } overrideFunc ctx f.returnType
        match f.returnType with
        | Function _ -> between "(" ")" (x +@ " [@js.dummy]")
        | _ -> x
      let result = lhs +@ " -> " + rhs
      if flags.needParen then result |> between "(" ")" else result
    | Tuple ts ->
      // TODO: emit label
      match ts.types with
      | []  -> Type.void_
      | [t] -> emitTypeImpl flags overrideFunc ctx t.value
      | ts  -> Type.tuple (ts |> List.map (fun x -> emitTypeImpl flags overrideFunc ctx x.value))
    | Erased (_, loc) -> failwithf "impossible_emitTypeImpl_erased: %s" loc.AsString
    | UnknownType msgo ->
      match msgo with None -> commentStr "FIXME: unknown type" + Type.any | Some msg -> commentStr (sprintf "FIXME: unknown type '%s'" msg) + Type.any

/// ``[ `A | `B | ... ]``
and emitLabels (ctx: Context) labels =
  let inline commentTags t =
    if ctx.options.useTagsToInheritUnknownTypes then t
    else comment t
  let rec go firstCaseEmitted acc = function
    | [] -> acc
    | Case c :: rest ->
      if firstCaseEmitted then
        go firstCaseEmitted (acc + str " | " + c) rest
      else
        go true (acc + c) rest
    | TagType t :: rest ->
      if firstCaseEmitted then
        go firstCaseEmitted (acc + commentTags (" | " @+ t)) rest
      else
        go true (acc + commentTags t) rest
  go false empty labels |> between "[" "]"

and getLabelsFromInheritingTypes (emitType_: TypeEmitter) (ctx: Context) (inheritingTypes: Set<InheritingType>) =
  let emitCase name args =
    match args with
    | [] -> str (Naming.constructorName name)
    | [arg] -> tprintf "%s of %A" (Naming.constructorName name) arg
    | _ -> tprintf "%s of %A" (Naming.constructorName name) (Type.tuple args)
  let emitTagType name args =
    let ty = Naming.structured Naming.moduleName name + ".tags"
    let args = args |> List.map (emitType_ ctx)
    Type.appOpt (str ty) args
  [
    for e in inheritingTypes do
      match e with
      | InheritingType.KnownIdent i ->
        yield str pv_head + emitCase i.fullName (i.tyargs |> List.map (emitType_ ctx)) |> Case
      | InheritingType.ImportedIdent i ->
        yield emitTagType i.name i.tyargs |> TagType
      | InheritingType.UnknownIdent i ->
        yield emitTagType i.name i.tyargs |> TagType
      | InheritingType.Prim (p, ts) ->
        match p.AsJSClassName with
        | Some name ->
          yield str pv_head + emitCase [name] (ts |> List.map (emitType_ ctx)) |> Case
        | None -> ()
      | InheritingType.Other _ -> ()
  ]

/// `Choice2Of2` when it is an alias to a non-JSable prim type.
and getLabelsOfFullName emitType_ (ctx: Context) (fullName: string list) (typeParams: TypeParam list) =
  let normalClass () = getAllInheritancesAndSelfFromName ctx fullName |> getLabelsFromInheritingTypes emitType_ ctx
  match fullName with
  | [name] when ctx.options.stdlib && Map.containsKey name Type.nonJsablePrimTypeInterfaces && typeParams |> List.isEmpty ->
    let prim = Type.nonJsablePrimTypeInterfaces |> Map.find name
    Choice2Of2 (prim, Case (tprintf "%s%s" pv_head name))
  | _ -> Choice1Of2 (normalClass () |> List.sort)

type StructuredTextItem =
  | ImportText of text // import texts should be at the top of the module
  | TypeDef of text    // and type definitions should come next
  | ScopeIndependent of text
  | OverloadedText of (OverloadRenamer -> text list)

type StructuredTextNode = {|
  shouldBeScoped: bool
  items: StructuredTextItem list
  docCommentLines: text list
  knownTypes: Set<KnownType>
|}
module StructuredTextNode =
  let union (a: StructuredTextNode) (b: StructuredTextNode) : StructuredTextNode =
    {| shouldBeScoped = a.shouldBeScoped || b.shouldBeScoped
       items = List.append a.items b.items
       docCommentLines = List.append a.docCommentLines b.docCommentLines
       knownTypes = Set.union a.knownTypes b.knownTypes |}

type StructuredText = Trie<string, StructuredTextNode>

module StructuredText =
  let pp (x: StructuredText) =
    let rec go (x: StructuredText) =
      concat newline [
        for k, v in x.children |> Map.toArray do
          tprintf "- %s" k
          indent (go v)
      ]
    go x

  let rec getReferences (ctx: Context) (x: StructuredText) : WeakTrie<string> =
    match ctx.state.referencesCache.TryGetValue(ctx.currentNamespace) with
    | true, ts -> ts
    | false, _ ->
      let fn = List.rev ctx.currentNamespace
      let trie =
        x.value
        |> Option.map (fun v ->
          v.knownTypes
          |> Set.fold (fun state -> function
            | KnownType.Ident ks -> state |> WeakTrie.add ks
            | KnownType.AnonymousInterface i ->
              state |> WeakTrie.add [anonymousInterfaceModuleName i]
          ) WeakTrie.empty)
        |> Option.defaultValue WeakTrie.empty
      let trie =
        x.children
        |> Map.fold (fun state k child ->
          WeakTrie.union state (getReferences (ctx |> Context.ofChildNamespace k) child)) trie
        |> WeakTrie.remove fn
      ctx.state.referencesCache.[fn] <- trie
      trie

  let getDependenciesOfChildren (ctx: Context) (x: StructuredText) : (string * string) list =
    let parent = List.rev ctx.currentNamespace
    x.children
    |> Map.fold (fun state k child ->
      let refs =
        getReferences (ctx |> Context.ofChildNamespace k) child
        |> WeakTrie.getSubTrie parent
        |> Option.defaultValue WeakTrie.empty
        |> WeakTrie.ofDepth 1
        |> WeakTrie.toList
        |> List.map (function
          | [x] -> k, x
          | xs -> failwithf "impossible_StructuredText_getDependencyGraphOfChildren_refs(%s): %A" (k :: ctx.currentNamespace |> List.rev |> String.concat ".") xs)
      refs :: state) []
    |> List.rev
    |> List.concat

  let calculateSCCOfChildren (ctx: Context) (x: StructuredText) : string list list =
    let g, gR =
      let deps = getDependenciesOfChildren ctx x
      deps |> List.groupBy fst |> List.fold (fun state (k, xs) -> state |> Map.add k (xs |> List.map snd)) Map.empty,
      deps |> List.groupBy snd |> List.fold (fun state (k, xs) -> state |> Map.add k (xs |> List.map fst)) Map.empty
    let children = x.children |> Map.toList |> List.map fst

    let rec dfs' g (used, ordRev) v =
      let used = used |> Set.add v
      let used, ordRev =
        match g |> Map.tryFind v with
        | None -> used, ordRev
        | Some xs ->
          xs |> List.fold (dfs g) (used, ordRev)
      (used, v :: ordRev)
    and dfs g (used, ordRev) v =
      if used |> Set.contains v then
        used, ordRev
      else dfs' g (used, ordRev) v

    let rec rdfs k cmps v =
      let cmps = cmps |> Map.add v k
      match gR |> Map.tryFind v with
      | None -> cmps
      | Some xs -> xs |> List.fold (rdfs' k) cmps
    and rdfs' k cmps v =
      if cmps |> Map.containsKey v then cmps
      else rdfs k cmps v

    let _, dfsReversed =
      children |> List.fold (dfs g) (Set.empty, [])

    let _, cmps =
      dfsReversed |> List.fold (fun (k, cmps) child ->
        if cmps |> Map.containsKey child then (k, cmps)
        else (k+1, rdfs k cmps child)
      ) (0, Map.empty)
    let groups = [0 .. Map.fold (fun state _ v -> max v state) 0 cmps]

    let cmpsGraph =
      children
      |> List.fold (fun acc orig ->
        match g |> Map.tryFind orig with
        | None -> acc
        | Some dests ->
          let origGroup = cmps |> Map.find orig
          dests |> List.fold (fun acc dest ->
            let destGroup = cmps |> Map.find dest
            if origGroup <> destGroup then
              acc |> Set.add (origGroup, destGroup)
            else acc
          ) acc
      ) Set.empty
      |> Set.toList
      |> List.groupBy fst |> List.fold (fun state (k, xs) -> state |> Map.add k (xs |> List.map snd)) Map.empty

    let sortedGroups =
      groups
      |> List.fold (dfs cmpsGraph) (Set.empty, [])
      |> snd |> List.rev
      |> List.indexed
      |> List.fold (fun (ordering: int[]) (order, group) ->
          ordering.[group] <- order; ordering
        ) (Array.zeroCreate (List.length groups))

    children
    |> List.groupBy (fun s -> Map.find s cmps)
    |> List.sortBy (fun (i, _) -> sortedGroups.[i])
    |> List.map (snd >> List.sort)

let removeLabels (xs: Choice<FieldLike, Type> list) =
    xs |> List.map (function Choice2Of2 t -> Choice2Of2 t | Choice1Of2 fl -> Choice2Of2 fl.value)

let rec emitMembers (emitType_: TypeEmitter) ctx (name: string) (selfTy: Type) (ma: MemberAttribute) m = [
  let inline comments () =
    match ma.comments with
    | [] -> Seq.empty
    | xs ->
      seq {
        yield ScopeIndependent empty
        yield docComment (xs |> List.map emitComment |> concat newline) |> ScopeIndependent
      }

  let inline overloaded (f: (string -> string) -> text list) =
    OverloadedText (fun renamer -> f (renamer.Rename "value"))

  match m with
  | Constructor (ft, typrm) ->
    let ty = Function { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy; loc = ft.loc } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "create") ty + str " " + Attr.js_create])
  | New (ft, typrm) ->
    let ft = Function { ft with args = Choice2Of2 selfTy :: ft.args } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "create") ft + str " " + Attr.js_apply true])
  | Field ({ name = name; value = Function ft }, _, typrm)
  | Method (name, ft, typrm) ->
    let ty, attr =
      if ma.isStatic then Function ft, Attr.js_global name
      else
        let ft = { ft with args = Choice2Of2 selfTy :: ft.args }
        Function ft, Attr.js_call name
    let ty = emitType_ ctx ty
    yield! comments ()
    yield overloaded (fun rename -> [val_ (Naming.valueName name |> rename) ty + str " " + attr])
  | Getter fl | Field (fl, ReadOnly, _) ->
    let fl =
      if fl.value <> Prim Void then fl
      else
        eprintf "warn: the field/getter '%s' of type '%s' has type 'void' and treated as 'unknown'" fl.name name
        { fl with value = Prim Unknown }
    let ty =
      let args =
        if ma.isStatic then [Choice2Of2 (Prim Void)]
        else [Choice2Of2 selfTy]
      let ret =
        if fl.isOptional then Union { types = [fl.value; Prim Undefined] }
        else fl.value
      Function { isVariadic = false; args = args; returnType = ret; loc = ma.loc } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ ("get_" + Naming.removeInvalidChars fl.name |> rename) ty + str " " + Attr.js_get fl.name])
  | Setter fl | Field (fl, WriteOnly, _) ->
    let fl =
      if fl.value <> Prim Void then fl
      else
        eprintf "warn: the field/setter '%s' of type '%s' has type 'void' and treated as 'unknown'" fl.name name
        { fl with value = Prim Unknown }
    let ty =
      let args =
        if ma.isStatic then [Choice2Of2 fl.value]
        else [Choice2Of2 selfTy; Choice2Of2 fl.value]
      Function { isVariadic = false; args = args; returnType = Prim Void; loc = ma.loc } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ ("set_" + Naming.removeInvalidChars fl.name |> rename) ty + str " " + Attr.js_set fl.name])
  | Field (fl, Mutable, _) ->
    yield! emitMembers emitType_ ctx name selfTy ma (Getter fl)
    yield! emitMembers emitType_ ctx name selfTy ma (Setter fl)
  | FunctionInterface (ft, _) ->
    let ft = Function { ft with args = Choice2Of2 selfTy :: ft.args } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "apply") ft + str " " + Attr.js_apply false])
  | Indexer (ft, ReadOnly) ->
    let ft = Function { ft with args = Choice2Of2 selfTy :: removeLabels ft.args } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "get") ft + str " " + Attr.js_index_get])
  | Indexer (ft, WriteOnly) ->
    let ft =
      Function {
        args = Choice2Of2 selfTy :: removeLabels ft.args @ [ Choice2Of2 ft.returnType ]
        isVariadic = false;
        returnType = Prim Void;
        loc = ft.loc
      } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "set") ft + str " " + Attr.js_index_set])
  | Indexer (ft, Mutable) ->
    yield! emitMembers emitType_ ctx name selfTy ma (Indexer (ft, ReadOnly))
    yield! emitMembers emitType_ ctx name selfTy ma (Indexer (ft, WriteOnly))
  | UnknownMember msgo ->
    yield! comments ()
    match msgo with
    | Some msg ->
      yield commentStr msg |> ScopeIndependent
    | None -> ()
]

let emitMappers ctx emitType tName (typrms: TypeParam list) =
  let t_ident =
    { name = [tName]; fullName = Some [tName]; loc = UnknownLocation }
  let t_ty =
    if List.isEmpty typrms then Ident t_ident
    else App (AIdent t_ident, typrms |> List.map (fun typrm -> TypeVar typrm.name), UnknownLocation)
  let ojs_t_ty = Ident { name = ["Ojs"; "t"]; fullName = Some ["Ojs"; "t"]; loc = UnknownLocation }
  let orf _emitType _ctx ty =
    match ty with
    | Ident { name = ["Ojs"; "t"] } -> Some (str "Ojs.t")
    | Ident i when i = t_ident -> Some (str tName)
    | App (AIdent i, ts, _) when i = t_ident ->
      Type.app (str tName) (ts |> List.map (_emitType _ctx)) |> Some
    | _ -> None
  let emitType_ = emitType orf
  let funTy toJs =
    let mapperArgs =
      typrms |> List.map (fun typrm ->
        if toJs then
          Function { args = [Choice2Of2 (TypeVar typrm.name)]; returnType = ojs_t_ty; isVariadic = false; loc = UnknownLocation } |> Choice2Of2
        else
          Function { args = [Choice2Of2 ojs_t_ty]; returnType = TypeVar typrm.name; isVariadic = false; loc = UnknownLocation } |> Choice2Of2
      )
    if toJs then
      Function { args = mapperArgs @ [Choice2Of2 t_ty]; returnType = ojs_t_ty; isVariadic = false; loc = UnknownLocation }
    else
      Function { args = mapperArgs @ [Choice2Of2 ojs_t_ty]; returnType = t_ty; isVariadic = false; loc = UnknownLocation }
  [
    val_ (sprintf "%s_to_js" tName) (emitType_ ctx (funTy true))  |> ScopeIndependent
    val_ (sprintf "%s_of_js" tName) (emitType_ ctx (funTy false)) |> ScopeIndependent
  ]

let emitTypeAliases flags overrideFunc ctx (typrms: TypeParam list) target =
  let emitType = emitTypeImpl flags
  let emitType_ = emitType overrideFunc
  let tyargs = typrms |> List.map (fun x -> tprintf "'%s" x.name)
  [
    yield typeAlias "t" tyargs target |> TypeDef
    yield! emitMappers ctx emitType "t" typrms
    match ctx.options.useAritySafeTypeNames with
    | UseAritySafeTypeNames.Full | UseAritySafeTypeNames.Provide ->
      let arities = getPossibleArity typrms
      for arity in arities |> Set.toSeq |> Seq.sortDescending do
        let name = Naming.createTypeNameOfArity arity None "t"
        let tyargs' = List.take arity tyargs
        let typrms' = List.take arity typrms
        let target =
          Type.appOpt
            (str "t")
            [
              for tyarg in tyargs' do yield tyarg
              for t in typrms |> List.skip arity do
                match t.defaultType with
                | None -> failwith "impossible_emitTypeAliases"
                | Some t -> yield emitType_ ctx t
            ]
        yield typeAlias name tyargs' target |> TypeDef
        yield! emitMappers ctx emitType name typrms'
    | _ -> ()
  ]

let inline private overloaded (f: (string -> string) -> text list) =
  OverloadedText (fun renamer -> f (renamer.Rename "value"))

let genJsCustomMapper (typrms: TypeParam list) =
  let body =
    if List.isEmpty typrms then str "Obj.magic"
    else
      let args = typrms |> List.map (fun tp -> tprintf "_%s" tp.name)
      between "(" ")" (Term.fun_ args (str "Obj.magic"))
  Term.record [ "of_js", body; "to_js", body ]

module GetSelfTyText =
  /// `ctx.currentNamespace` should be the class
  let class_ flags overrideFunc (ctx: Context) (c: Class) =
    let emitType = emitTypeImpl flags
    let emitType_ = emitType overrideFunc
    match c.name with
    | Some name ->
      assert (name = List.last ctx.currentNamespace)
      let labels =
        getLabelsOfFullName emitType_ ctx (List.rev ctx.currentNamespace) c.typeParams
        |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
      if List.isEmpty labels then
        str "private Ojs.t"
      else
        Type.appOpt Type.intf [emitLabels ctx labels] + str " " + Attr.js_custom_typ (genJsCustomMapper c.typeParams)
    | None -> str "private Ojs.t"

  let enumCases (cases: EnumCase list) =
    between "[" "]" (concat (str " | ") [
      for c in cases do
        let name, value = str (Naming.constructorName [c.name]), c.value
        let attr =
          match value with
          | Some v -> Attr.js (Term.literal v)
          | None -> empty
        yield pv_head @+ name + attr
      ]) +@ " [@js.enum]"

let emitClass flags overrideFunc (ctx: Context) (current: StructuredText) (c: Class) (additionalMembers: list<StructuredTextItem>, additionalKnownTypes: Set<KnownType>) =
  let typrms = List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams
  let name, isAnonymous, selfTy, overrideFunc =
    match c.name with
    | Some n ->
      let k = List.rev (n :: ctx.currentNamespace)
      let ident = { name = [n]; fullName = Some k; loc = UnknownLocation }
      let selfTy =
        if List.isEmpty c.typeParams then Ident ident
        else App (AIdent ident, typrms, UnknownLocation)
      let overrideFunc =
        if ctx.options.useRecursiveModules <> UseRecursiveModules.Off then overrideFunc
        else
          let orf _emitType _ctx = function
            | Ident { name = [n']; fullName = Some k' } when n = n' && k = k' -> Some (str "t")
            | App (AIdent { name = [n']; fullName = Some k' }, ts, _) when n = n' && k = k' ->
              Some (Type.appOpt (str "t") (List.map (_emitType _ctx) ts))
            | _ -> None
          OverrideFunc.combine overrideFunc orf
      n, false, selfTy, overrideFunc
    | None ->
      match ctx.anonymousInterfacesMap |> Map.tryFind c with
      | None -> failwith "impossible_emitClass_unknown_anonymousInterface"
      | Some i ->
        let selfTy =
          if List.isEmpty c.typeParams then AnonymousInterface c
          else App (AAnonymousInterface c, typrms, UnknownLocation)
        let orf _emitType _ctx = function
          | AnonymousInterface a when a = c -> Some (str "t")
          | App (AAnonymousInterface a, ts, _) when a = c ->
            Some (Type.appOpt (str "t") (ts |> List.map (_emitType _ctx)))
          | _ -> None
        anonymousInterfaceModuleName i,
        true,
        selfTy,
        OverrideFunc.combine overrideFunc orf

  let overrideFunc =
    OverrideFunc.combine overrideFunc <|
      fun _emitType _ctx -> function
        | PolymorphicThis -> _emitType _ctx selfTy |> Some
        | _ -> None

  let knownTypes = Statement.getKnownTypes ctx [ClassDef c] |> Set.union additionalKnownTypes
  let ctx, innerCtx =
    (),
    {| (ctx |> Context.ofChildNamespace name) with
        options =
          if not isAnonymous then ctx.options
          else
            ctx.options |> jsWith (fun o -> o.useAritySafeTypeNames <- UseAritySafeTypeNames.Consume) |}

  let emitType = emitTypeImpl flags
  let emitType_ = emitType overrideFunc

  let labels =
    getLabelsOfFullName emitType_ innerCtx (List.rev innerCtx.currentNamespace) c.typeParams
    |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
  let selfTyText =
    GetSelfTyText.class_ flags overrideFunc innerCtx c

  let members = [
    for ma, m in c.members do
      yield! emitMembers emitType_ innerCtx name selfTy ma m
    yield! additionalMembers
  ]
  let shouldBeScoped =
    (c.members |> List.exists (fun (ma, _) -> ma.isStatic))
    || (additionalMembers |> List.exists (function OverloadedText _ -> true | _ -> false))

  let docCommentLines =
    c.comments |> List.distinct |> List.map emitComment

  let items = [
    yield! emitTypeAliases flags overrideFunc innerCtx c.typeParams selfTyText

    if not isAnonymous && not (List.isEmpty labels) then
      let typrmsText = typrms |> List.map (emitType_ innerCtx)
      let alias = typeAlias "tags" typrmsText (emitLabels innerCtx labels)
      yield Attr.js_stop_start_implem alias alias |> TypeDef

    yield! members
    for parent in c.implements do
      let ty = Function { isVariadic = false; args = [Choice2Of2 selfTy]; returnType = parent; loc = UnknownLocation } |> emitType_ innerCtx
      yield overloaded (fun rename -> [val_ (rename "cast") ty + str " " + Attr.attr Attr.Category.Block "js.cast" empty])
    match c.name with
    | None -> ()
    | Some name ->
      match Type.jsablePrimTypeInterfaces |> Map.tryFind name with
      | None -> ()
      | Some prim ->
        let targetTy =
          if List.isEmpty c.typeParams then Prim prim
          else App (APrim prim, c.typeParams |> List.map (fun tp -> TypeVar tp.name), UnknownLocation)
        let toMlTy = Function { isVariadic = false; args = [Choice2Of2 selfTy]; returnType = targetTy; loc = UnknownLocation } |> emitType_ innerCtx
        let ofMlTy = Function { isVariadic = false; args = [Choice2Of2 targetTy]; returnType = selfTy; loc = UnknownLocation } |> emitType_ innerCtx
        yield
          overloaded (fun rename -> [
            val_ (rename "to_ml") toMlTy + str " " + Attr.attr Attr.Category.Block "js.cast" empty
            val_ (rename "of_ml") ofMlTy + str " " + Attr.attr Attr.Category.Block "js.cast" empty
          ])
  ]

  let node = {| items = items; docCommentLines = docCommentLines; knownTypes = knownTypes; shouldBeScoped = shouldBeScoped |}
  current
  |> Trie.addOrUpdate [name] node StructuredTextNode.union
  |> Trie.setOrUpdate {| items = []; docCommentLines = []; knownTypes = Set.empty; shouldBeScoped = shouldBeScoped |} StructuredTextNode.union

let emitValue ctx v =
  let emitTypeFlags = { EmitTypeFlags.defaultValue with skipAttributesOnContravariantPosition = true }
  let emitType = emitTypeImpl emitTypeFlags
  let emitType_ = emitType OverrideFunc.noOverride

  let ty, attr =
    match v.typ with
    | Function _ ->
      v.typ, Attr.js_global v.name
    | _ ->
      let tyAsGetter = Function { args = [Choice2Of2 (Prim Void)]; isVariadic = false; returnType = v.typ; loc = v.loc }
      tyAsGetter, Attr.js_get v.name
  let comments =
    if List.isEmpty v.comments then []
    else ScopeIndependent empty :: [v.comments |> List.map emitComment |> concat newline |> docComment |> ScopeIndependent]
  let item =
    let ty = emitType_ ctx ty
    overloaded (fun rename -> [
      val_ (Naming.valueName v.name |> rename) ty + str " " + attr
    ])
  comments @ [item]

let createStructuredText (rootCtx: Context) (stmts: Statement list) : StructuredText =
  let emitTypeFlags = { EmitTypeFlags.defaultValue with skipAttributesOnContravariantPosition = true }
  let emitType = emitTypeImpl emitTypeFlags
  let emitType_ = emitType OverrideFunc.noOverride

  let rec folder ctx (current: StructuredText) (s: Statement) : StructuredText =
    let getModule name =
      match current |> Trie.getSubTrie [name] with
      | Some t -> t
      | None -> Trie.empty
    let setModule name trie = current |> Trie.setSubTrie [name] trie
    let setNode node = current |> Trie.setOrUpdate node StructuredTextNode.union

    let comments =
      match (s :> ICommented<_>).getComments() with
      | [] -> []
      | xs -> xs |> List.distinct |> List.map emitComment

    let knownTypes () = Statement.getKnownTypes ctx [s]

    match s with
    | Module m ->
      let module' =
        let node = {| items = []; docCommentLines = comments; knownTypes = knownTypes (); shouldBeScoped = false |}
        let module' = getModule m.name |> Trie.setOrUpdate node StructuredTextNode.union
        let ctx = ctx |> Context.ofChildNamespace m.name
        m.statements |> List.fold (folder ctx) module'
      setModule m.name module'
    | ClassDef c ->
      emitClass emitTypeFlags OverrideFunc.noOverride ctx current c ([], Set.empty)
    | EnumDef e ->
      let module' =
        let ctx = ctx |> Context.ofChildNamespace e.name
        let items = emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx [] (GetSelfTyText.enumCases e.cases)
        let node = {| items = items; docCommentLines = comments; knownTypes = knownTypes (); shouldBeScoped = false |}
        let module' =
          getModule e.name |> Trie.setOrUpdate node StructuredTextNode.union
        e.cases |> List.fold (fun state c ->
          let ctx = ctx |> Context.ofChildNamespace c.name
          let comments = List.map emitComment c.comments
          let items =
            emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx [] (GetSelfTyText.enumCases [c])
          let node = {| items = items; docCommentLines = comments; knownTypes = knownTypes (); shouldBeScoped = false |}
          state |> Trie.addOrUpdate [c.name] node StructuredTextNode.union
        ) module'
      setModule e.name module'
    | TypeAlias ta ->
      if ta.erased then current
      else
        let ctx = ctx |> Context.ofChildNamespace ta.name
        let items =
          emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx ta.typeParams (emitType_ ctx ta.target)
        let node = {| items = items; docCommentLines = comments; knownTypes = knownTypes (); shouldBeScoped = false |}
        let module' =
          getModule ta.name |> Trie.setOrUpdate node StructuredTextNode.union
        setModule ta.name module'
    | Pattern p ->
      let fallback () =
        p.underlyingStatements |> List.fold (folder ctx) current
      let intfToStmts name (moduleIntf: Class) =
        let ctx = ctx |> Context.ofChildNamespace name
        let emitAsValue name typ typrms isConst (memberAttr: MemberAttribute) =
          let v =
            { name = name; typ = typ; typeParams = typrms;
              isConst = isConst; isExported = Exported.No; accessibility = Some memberAttr.accessibility;
              comments = memberAttr.comments; loc = memberAttr.loc }
          emitValue ctx v
        [ for ma, m in moduleIntf.members do
            let cmt =
              if List.isEmpty ma.comments then []
              else ScopeIndependent empty :: [ma.comments |> List.map emitComment |> concat newline |> docComment |> ScopeIndependent]
            match m with
            | Field (fl, mt, tps) ->
              yield! emitAsValue fl.name fl.value tps (mt = ReadOnly) ma
            | Getter fl ->
              yield! emitAsValue fl.name fl.value [] true ma
            | Setter _ -> ()
            | Method (name, ft, tps) ->
              yield! emitAsValue name (Function ft) tps true ma
            | New (ft, _tps) ->
              let ty = emitType_ ctx (Function ft)
              yield! cmt
              yield overloaded (fun rename -> [val_ (rename "create") ty + str " " + Attr.js_create])
            | FunctionInterface (ft, _tps) ->
              let ty = emitType_ ctx (Function ft)
              yield! cmt
              yield overloaded (fun rename -> [val_ (rename "invoke") ty + str " " + Attr.js_invoke])
            | Constructor _ -> failwith "impossible_emitStructuredDefinition_Pattern_intfToModule_Constructor" // because interface!
            | Indexer (ft, _) -> yield ScopeIndependent (comment (tprintf "unsupported indexer of type: %s" (Type.pp (Function ft))))
            | UnknownMember (Some msg) -> yield ScopeIndependent (commentStr msg)
            | UnknownMember None -> () ]
      match p with
      | ImmediateInstance (intf, value) when ctx.options.simplifyImmediateInstance ->
        let module' =
          let items = intfToStmts value.name intf
          getModule value.name
          |> Trie.setOrUpdate {| items = items; docCommentLines = []; knownTypes = knownTypes (); shouldBeScoped = true |} StructuredTextNode.union
        setModule value.name module'
      | ImmediateConstructor (baseIntf, ctorIntf, ctorValue) when ctx.options.simplifyImmediateConstructor ->
        emitClass emitTypeFlags OverrideFunc.noOverride ctx current baseIntf (intfToStmts ctorValue.name ctorIntf, Statement.getKnownTypes ctx [ClassDef ctorIntf])
      | _ -> fallback ()
    | Value v ->
      setNode {| items = emitValue ctx v; docCommentLines = []; knownTypes = knownTypes (); shouldBeScoped = true |}
    | Import i -> // TODO
      setNode {| items = [commentStr (sprintf "%A" i) |> ImportText]; docCommentLines = []; knownTypes = Set.empty; shouldBeScoped = false |}
    | Export _ -> current // nop
    | UnknownStatement u ->
      let cmt =
        match u.msg with
        | Some s -> commentStr s | None -> commentStr "unknown statement"
      setNode {| items = [ScopeIndependent cmt]; docCommentLines = []; knownTypes = Set.empty; shouldBeScoped = false |}
    | FloatingComment c ->
      let cmt = ScopeIndependent empty :: (c.comments |> List.map (emitComment >> comment >> ScopeIndependent))
      setNode {| items = ScopeIndependent empty :: cmt; docCommentLines = []; knownTypes = Set.empty; shouldBeScoped = false |}

  let anonymousInterfaces =
    rootCtx.anonymousInterfacesMap
    |> Map.toList
    |> List.map (fst >> ClassDef)

  (anonymousInterfaces @ stmts) |> List.fold (folder rootCtx) Trie.empty

type ModuleEmitter = Context -> StructuredText -> (TextModuleSig list -> text list)
module ModuleEmitter =
  let nonRec _ctx _st modules = moduleSigNonRec modules
  let recAll _ctx _st modules = moduleSigRec modules
  let recOptimized (ctx: Context) (st: StructuredText) =
    if Map.count st.children < 3 then
      recAll ctx st
    else
      let scc = StructuredText.calculateSCCOfChildren ctx st
      fun (modules: TextModuleSig list) ->
        let modules = modules |> List.fold (fun state x -> state |> Map.add x.origName x) Map.empty
        scc
        |> List.map (fun group ->
          group |> List.map (fun name -> modules |> Map.find name) |> moduleSigRec)
        |> List.concat
  let fromOption (opt: Options) =
    match opt.useRecursiveModules with
    | UseRecursiveModules.Off -> nonRec
    | UseRecursiveModules.Naive -> recAll
    | UseRecursiveModules.Optimized -> recOptimized

let rec private emitStructuredText (moduleEmitter: ModuleEmitter) (ctx: Context) (st: StructuredText) : {| shouldBeScoped: bool; content: text list; docCommentBody: text list |} =
  let renamer = new OverloadRenamer()
  let modules : TextModuleSig list =
    st.children
    |> Map.toList
    |> List.map (fun (k, v) ->
      let name = Naming.moduleName k |> renamer.Rename "module"
      let ctx = ctx |> Context.ofChildNamespace k
      let result = emitStructuredText moduleEmitter ctx v
      {|
        name = name
        origName = k
        scope = if result.shouldBeScoped then Some k else None
        content = result.content
        docCommentBody = result.docCommentBody
      |}
    )
  let emitModules = moduleEmitter ctx st
  let imports, typedefs, items, docCommentBody =
    match st.value with
    | None -> [], [], [], []
    | Some node ->
      let imports, typedefs, items =
        List.fold (fun (imports, typedefs, items) -> function
          | ImportText x -> (x :: imports, typedefs, items)
          | TypeDef x -> (imports, x :: typedefs, items)
          | ScopeIndependent x -> (imports, typedefs, Choice1Of2 x :: items)
          | OverloadedText f -> (imports, typedefs, Choice2Of2 f :: items)
        ) ([], [], []) node.items
      List.rev imports, List.rev typedefs, List.rev items, node.docCommentLines
  let shouldBeScoped =
    match st.value with
    | Some v -> v.shouldBeScoped
    | None -> false
  let content =
    [
      yield! imports
      yield! emitModules modules
      yield! typedefs
      for item in items do
        match item with
        | Choice1Of2 text -> yield text
        | Choice2Of2 overloaded -> yield! overloaded renamer
    ]
  {| shouldBeScoped = shouldBeScoped; content = content; docCommentBody = docCommentBody |}

let emitFlattenedDefinitions (ctx: Context) (stmts: Statement list) : text list =
  let flags = { EmitTypeFlags.defaultValue with failContravariantTypeVar = true }
  let emitType_ = emitTypeImpl flags OverrideFunc.noOverride

  let inline emitTypeName name args =
    Type.appOpt (str (Naming.flattenedTypeName name)) args

  let rec go prefix (ctx: Context) (v: Statement) =
    match v with
    | EnumDef e ->
      let fn = List.rev (e.name :: ctx.currentNamespace)
      [
        yield tprintf "%s %s = " prefix (Naming.flattenedTypeName fn) + GetSelfTyText.enumCases e.cases
        for c in e.cases do
          yield tprintf "and %s = " (Naming.flattenedTypeName (fn @ [c.name])) + GetSelfTyText.enumCases [c]
      ]
    | ClassDef c ->
      match c.name with
      | None -> [] // anonymous interfaces are treated separately
      | Some name ->
        let fn = List.rev (name :: ctx.currentNamespace)
        let typrm = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
        let selfTyText =
          let ctx = ctx |> Context.ofChildNamespace name
          match getLabelsOfFullName emitType_ ctx fn c.typeParams with
          | Choice1Of2 _ ->
            GetSelfTyText.class_ flags OverrideFunc.noOverride ctx c
          | Choice2Of2 (prim, _) ->
            let target =
              match c.typeParams with
              | [] -> Prim prim
              | _  -> App (APrim prim, c.typeParams |> List.map (fun tp -> TypeVar tp.name), UnknownLocation)
            emitType_ ctx target
        [prefix @+ " " @+ emitTypeName fn typrm +@ " = " + selfTyText]
    | TypeAlias { name = name; erased = false; typeParams = typeParams; target = target } ->
      let fn = List.rev (name :: ctx.currentNamespace)
      let typrm = typeParams |> List.map (fun x -> tprintf "'%s" x.name)
      let selfTyText = emitType_ ctx target
      [prefix @+ " " @+ emitTypeName fn typrm +@ " = " + selfTyText]
      // TODO: emit extends of type parameters
    | Module m -> m.statements |> List.collect (go prefix (ctx |> Context.ofChildNamespace m.name))
    | Pattern p ->
      match p with
      | ImmediateInstance _ when ctx.options.simplifyImmediateInstance ->
        [] // no type is generated for immediate instance
      | ImmediateConstructor (baseIntf, _, _) when ctx.options.simplifyImmediateConstructor ->
        go prefix ctx (ClassDef baseIntf) // only the base interface is used as a type
      | _ ->
        p.underlyingStatements |> List.collect (go prefix ctx)
    | Import _
    | Value _
    | Module _
    | TypeAlias { erased = true } -> []
    | Export _
    | UnknownStatement _
    | FloatingComment _ -> []

  let genAnonymousInterface prefix (c: Class) =
    let typeName =
      Type.appOpt
        (anonymousInterfaceToIdentifier ctx c)
        (c.typeParams |> List.map (fun x -> tprintf "'%s" x.name))
    let selfTyText = str "private Ojs.t"
    prefix @+ " " @+ typeName +@ " = " + selfTyText

  let getPrefix =
    let mutable isFirst = false
    fun () ->
      if not isFirst then
        isFirst <- true
        "type"
      else "and"

  List.distinct [
    for c in ctx.anonymousInterfacesMap |> Map.toList |> List.map fst do
      yield genAnonymousInterface (getPrefix()) c
    for stmt in stmts do
      yield! go (getPrefix()) ctx stmt
  ]


let emitStatements (ctx: Context) (stmts: Statement list) =
  let moduleEmitter = ModuleEmitter.fromOption ctx.options
  let result =
    createStructuredText ctx stmts |> emitStructuredText moduleEmitter ctx
  let content =
    if List.isEmpty result.docCommentBody then result.content
    else
      docComment (concat newline result.docCommentBody) :: result.content
  [
    if ctx.options.useRecursiveModules = UseRecursiveModules.Off then
      yield! emitFlattenedDefinitions ctx stmts
      yield empty
    yield! content
  ]

let emitStdlib (srcs: SourceFile list) (opts: Options) =
  eprintf "* looking up the minimal supported ES version for each definition..."
  let esSrc =
    srcs
    |> List.filter (fun src -> src.fileName.Contains("lib.es") && src.fileName.EndsWith(".d.ts"))
    |> mergeLibESDefinitions

  let domSrc =
    let stmts =
      srcs
      |> List.filter (fun src -> src.fileName.Contains("lib.dom") && src.fileName.EndsWith(".d.ts"))
      |> List.collect (fun src -> src.statements)
      |> Statement.merge
    { fileName = "lib.dom.d.ts"; statements = stmts; references = []; hasNoDefaultLib = false; moduleName = None }

  eprintf "* running typer..."
  opts.simplifyImmediateInstance <- true
  opts.simplifyImmediateConstructor <- true
  opts.useTagsToInheritUnknownTypes <- true
  opts.useAritySafeTypeNames <- UseAritySafeTypeNames.Full
  opts.useRecursiveModules <- UseRecursiveModules.Optimized

  let esCtx, esSrc = runAll [esSrc] opts
  let domCtx, domSrc = runAll [domSrc] opts
  assert (esCtx.unknownIdentTypes |> Trie.isEmpty)
  assert (domCtx.unknownIdentTypes |> Trie.keys |> Seq.forall (fun fn -> Trie.containsKey fn esCtx.definitionsMap))

  let writerCtx ctx =
    ctx |> Context.mapOptions (fun _ -> opts)
        |> Context.mapState (fun _ -> State.defaultValue ())

  eprintf "* emitting baselib..."
  concat newline [
    yield str stdlib
    yield newline
    yield! emitStatements (writerCtx esCtx) (esSrc |> List.collect (fun x -> x.statements))
    yield newline
    yield moduleSig {| name = "Dom"; origName = "Dom"; scope = None; content = emitStatements (writerCtx domCtx) (domSrc |> List.collect (fun x -> x.statements)); docCommentBody = [] |}
  ]

let emitEverythingCombined (srcs: SourceFile list) (opts: Options) =
  let srcs =
    match srcs with
    | [] | _ :: [] -> srcs
    | _ ->
      let combinedName, moduleName =
        match srcs |> List.tryFind (fun src -> src.fileName.EndsWith "index.d.ts") with
        | Some index ->
          eprintfn "info: using index.d.ts as an entrypoint"
          index.fileName, index.moduleName
        | None ->
          eprintfn "info: treating everything as combined into lib.d.ts"
          "lib.d.ts", None
      [
        { fileName = combinedName
          statements = srcs |> List.collect (fun src -> src.statements)
          references = srcs |> List.collect (fun src -> src.references) |> List.distinct
          hasNoDefaultLib = srcs |> List.exists (fun src -> src.hasNoDefaultLib)
          moduleName = moduleName }
      ]

  eprintf "* running typer..."
  let ctx, srcs = runAll srcs opts
  let ctx =
    ctx |> Context.mapOptions (fun _ -> opts)
        |> Context.mapState (fun _ -> State.defaultValue ())
  let stmts = srcs |> List.collect (fun x -> x.statements)

  eprintf "* emitting a binding for js_of_ocaml..."
  concat newline [
    yield str "[@@@ocaml.warning \"-7-11-32-33-39\"]"
    yield Attr.js_implem_floating (str "[@@@ocaml.warning \"-7-11-32-33-39\"]")
    yield open_ [ "Ts2ocaml"; "Ts2ocaml.Dom" ]
    yield! emitStatements ctx stmts
  ]