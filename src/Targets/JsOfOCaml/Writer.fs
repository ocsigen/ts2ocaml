module Targets.JsOfOCaml.Writer

open Ts2Ml
open Syntax
open Typer
open Typer.Type
open DataTypes
open DataTypes.Text

open Targets.JsOfOCaml.Common
open Targets.JsOfOCaml.OCamlHelper

type ScriptTarget = TypeScript.Ts.ScriptTarget

type State = {|
  fileNames: string list
  info: Result<PackageInfo, string option>
  referencesCache: MutableMap<string list, WeakTrie<string>>
|}
module State =
  let create fileNames info : State =
    {| fileNames = fileNames
       info = info
       referencesCache = new MutableMap<_, _>() |}

type Context = TyperContext<Options, State>
module Context = TyperContext

let emitCommentBody (c: Comment) : text =
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
  | See (Some name, lines) -> tprintf "@see \"%s\" " name + strLines (escape lines)
  | See (None, lines) -> str "see: " + strLines (escape lines)
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
    match ctx |> Context.bindCurrentSourceInfo (fun i -> i.typeLiteralsMap |> Map.tryFind l) with
    | Some i ->
      if String.forall (Char.isAlphabetOrDigit >> not) s then tprintf "s%i" i
      else tprintf "s%i_%s" i (formatString s)
    | None -> failwithf "the literal '%s' is not found in the context" s
  | LInt i -> tprintf "n_%s" (formatNumber i)
  | LFloat l -> tprintf "n_%s" (formatNumber l)
  | LBool true -> str "b_true" | LBool false -> str "b_false"

let anonymousInterfaceModuleName (index: int) = sprintf "AnonymousInterface%d" index

let anonymousInterfaceToIdentifier (ctx: Context) (a: AnonymousInterface) : text =
  match ctx |> Context.bindCurrentSourceInfo (fun i -> i.anonymousInterfacesMap |> Map.tryFind a) with
  | Some i ->
    if not ctx.options.recModule.IsOffOrDefault then
      tprintf "%s.t" (anonymousInterfaceModuleName i.id)
    else
      tprintf "anonymous_interface_%d" i.id
  | None -> failwithf "impossible_anonymousInterfaceToIdentifier(%s)" a.loc.AsString

let enumCaseToIdentifier (e: Enum) (c: EnumCase) =
  let duplicateCases =
    e.cases |> List.filter (fun c' -> c.value = c'.value)
  match duplicateCases with
  | [] -> failwith "impossible_enumCaseToIdentifier"
  | [c'] ->
    assert (c = c')
    Naming.constructorName [c.name]
  | cs ->
    cs |> List.map (fun c -> c.name) |> Naming.constructorName

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
  forceSkipAttributes: bool
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
      forceSkipAttributes = false
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
  let forceSkipAttr text =
    if flags.forceSkipAttributes then empty else text
  let treatEnum (flags: EmitTypeFlags) ctx (cases: Set<Choice<Enum * EnumCase, Literal>>) =
    let usedValues =
      cases
      |> Seq.choose (function Choice1Of2 (_, { value = v }) -> v | _ -> None)
      |> Set.ofSeq
    let cases =
      cases
      // Remove literal cases (e.g. `42`) when it is a duplicate of some enum case (e.g. `Case = 42`).
      |> Set.filter (function Choice2Of2 l when usedValues |> Set.contains l -> false | _ -> true)
      // Convert to identifiers while merging duplicate enum cases
      |> Set.map (function
        | Choice1Of2 (e, c) -> enumCaseToIdentifier e c |> str, c.value
        | Choice2Of2 l -> "L_" @+ literalToIdentifier ctx l, Some l)
    between "[" "]" (concat (str " | ") [
      for name, value in Set.toSeq cases do
        let attr =
          match value with
          | _ when flags.forceSkipAttributes -> empty
          | Some v -> Attr.js (Term.literal v)
          | None -> empty
        yield pv_head @+ name + attr
    ]) + forceSkipAttr (str " [@js.enum]") |> between "(" ")"

  let treatIdent (i: Ident) (tyargs: Type list) (loc: Location) =
    let arity = List.length tyargs
    let withTyargs ty =
      Type.appOpt ty (tyargs |> List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false } overrideFunc ctx))
    let origin =
      Ident.pickDefinitionWithFullName ctx i (fun fn -> function
        | _ when fn.source <> ctx.currentSourceFile -> None
        | Definition.Class     { typeParams = tps; loc = loc }
        | Definition.TypeAlias { typeParams = tps; loc = loc } -> Some (fn, tps, loc)
        | Definition.Enum { loc = loc }
        | Definition.EnumCase ({ loc = loc }, _) -> Some (fn, [], loc)
        | _ -> None
      )
    match origin with
    | None ->
      let tyName =
        let fallback () =
          let tyName =
            match ctx.options.safeArity with
            | FeatureFlag.Full | FeatureFlag.Consume ->
              Naming.createTypeNameOfArity arity None "t"
            | _ -> "t"
          Naming.structured Naming.moduleName i.name + "." + tyName |> str
        match i.name with
        | [name] ->
          match PrimType.FromJSClassName name with
          | Some p -> emitTypeImpl flags overrideFunc ctx (Prim p)
          | None -> fallback ()
        | _ -> fallback ()
      tyName |> withTyargs
    | Some (fn, typrms, origLoc) ->
      if ctx.options.recModule.IsOffOrDefault then
        let name = Naming.flattenedTypeName fn.name
        let ts =
          assignTypeParams fn.name (origLoc ++ loc) typrms tyargs
            (fun _ t -> t)
            (fun tv ->
              match tv.defaultType with
              | Some t -> t
              | None -> failwithf "error: insufficient type params for type '%s' at %s" (String.concat "." fn.name) loc.AsString)
        Type.appOpt (str name) (ts |> List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false  } overrideFunc ctx))
      else
        let maxArity = List.length typrms
        let tyName = Naming.createTypeNameOfArity arity (Some maxArity) "t"
        let simple name =
          Naming.structured Naming.moduleName name + "." + tyName |> str |> withTyargs
        if fn.source <> ctx.currentSourceFile then simple fn.name
        else
          match ctx |> Context.getRelativeNameTo fn.name with
          | Ok relativeName -> simple relativeName
          | Error [] -> // the type is the current namespace
            tyName |> str |> withTyargs
          | Error diff ->
            if ctx.options.subtyping |> List.contains Subtyping.Tag then
              // the type is a parent of the current namespace.
              // we expand the identifier to `[ .. ] intf`
              let ty =
                if List.isEmpty tyargs then Ident i
                else App (AIdent i, tyargs, loc)
              let labels =
                getAllInheritancesAndSelf ctx ty
                |> getLabelsFromInheritingTypes (emitTypeImpl flags overrideFunc) ctx
              emitLabels ctx labels
              |> List.singleton
              |> Type.app Type.intf
            else
              let fn = String.concat "." fn.name
              let selfName = String.concat "." diff
              let warnText = $"cannot reference a type {fn} from its sub-namespace {selfName}"
              Log.warnf ctx.options "%s at %s" warnText loc.AsString
              commentStr warnText + Type.any

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
      | RegExp -> Type.regexp | Symbol _ -> Type.symbol
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
          if flags.forceSkipAttributes then empty
          else if flags.skipAttributesOnContravariantPosition && flags.variance = Contravariant then empty
          else text
        let treatNullUndefined t =
          match ru.caseNull, ru.caseUndefined with
          | true, true -> Type.app Type.null_undefined [t]
          | true, false -> Type.app Type.null_ [t]
          | false, true -> Type.app Type.undefined [t]
          | false, false -> t
        let treatTypeofableTypes (ts: Set<Typeofable>) t =
          let emitOr tt t =
            match tt with
            | Typeofable.Number -> Type.number_or t
            | Typeofable.String -> Type.string_or t
            | Typeofable.Boolean -> Type.boolean_or t
            | Typeofable.Symbol -> Type.symbol_or t
            | Typeofable.BigInt -> Type.bigint_or t
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
          ]) + forceSkipAttr (tprintf " [@js.union on_field \"%s\"]" tagName) |> between "(" ")"
        let treatOther otherTypes =
          if Set.isEmpty otherTypes then
            failwith "impossible_emitResolvedUnion_treatOther_go"
          else
            otherTypes |> Set.toList |> List.map (emitTypeImpl flags overrideFunc ctx) |> safe_union_t
        let treatEnumOr (cases: Set<Choice<Enum * EnumCase, Literal>>) t =
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
    | Func (f, [], _) ->
      let renamer = new OverloadRenamer(used=(flags.avoidTheseArgumentNames |> Set.map (fun s -> "value", s)))
      let inline rename x = renamer.Rename "value" x
      // warning 16 (this optional argument cannot be erased) is widened since OCaml 4.12:
      // labelled arguments after the optional argument does not prevent warning 16 anymore, so
      //
      //    let f ~x ?y ~z = ..
      //
      // now should have an extra unit argument.
      let rec go hasOptional acc (args: Choice<FieldLike, Type> list) =
        let flags = { flags with variance = -flags.variance }
        match args with
        | [] -> acc + Type.void_
        | Choice1Of2 x :: [] when acc = empty && not x.isOptional ->
          go hasOptional acc [Choice2Of2 x.value] // do not generate label if it is the only argument and is not optional
        | Choice1Of2 x :: [] when f.isVariadic ->
          assert (not x.isOptional)
          let t = tprintf "%s:" (Naming.valueName x.name |> rename) + between "(" ")" (emitTypeImpl { flags with forceVariadic = true } overrideFunc ctx x.value + forceSkipAttr (str " [@js.variadic]"))
          if not hasOptional then acc + t
          else acc + t +@ " -> " + Type.void_
        | Choice2Of2 t :: [] when f.isVariadic ->
          let t = between "(" ")" (emitTypeImpl { flags with forceVariadic = true } overrideFunc ctx t + forceSkipAttr (str " [@js.variadic]"))
          if not hasOptional then acc + t
          else acc + t +@ " -> " + Type.void_
        | Choice1Of2 x :: xs ->
          let prefix =
            if x.isOptional then "?" else ""
          let ty = emitTypeImpl { flags with needParen = true } overrideFunc ctx x.value
          let t = tprintf "%s%s:" prefix (Naming.valueName x.name |> rename) + ty
          if not x.isOptional && not hasOptional && List.isEmpty xs then acc + t
          else go (hasOptional || x.isOptional) (acc + t +@ " -> ") xs
        | Choice2Of2 t :: xs ->
          let t = emitTypeImpl { flags with needParen = true } overrideFunc ctx t
          if not hasOptional && List.isEmpty xs then acc + t
          else go hasOptional (acc + t +@ " -> ") xs
      let lhs = go false empty f.args
      let rhs =
        let argNames =
          f.args |> List.choose (function Choice1Of2 x -> Some x.name | Choice2Of2 _ -> None) |> Set.ofList
        let x = emitTypeImpl { flags with needParen = false; avoidTheseArgumentNames = argNames } overrideFunc ctx f.returnType
        match f.returnType with
        | Func _ -> between "(" ")" (x + forceSkipAttr (str " [@js.dummy]"))
        | _ -> x
      let result = lhs +@ " -> " + rhs
      if flags.needParen then result |> between "(" ")" else result
    | Tuple ts ->
      // TODO: emit label
      match ts.types with
      | []  -> Type.void_
      | [t] -> emitTypeImpl flags overrideFunc ctx t.value
      | ts  -> Type.tuple (ts |> List.map (fun x -> emitTypeImpl flags overrideFunc ctx x.value))
    | Erased (_, loc, origText) -> failwithf "impossible_emitTypeImpl_erased: %s (%s)" loc.AsString origText
    | Func (_, _ :: _, loc) -> failwithf "impossible_emitTypeImpl_Func_poly: %s (%s)" loc.AsString (Type.pp ty)
    | NewableFunc (_, _, loc) -> failwithf "impossible_emitTypeImpl_NewableFunc: %s (%s)" loc.AsString (Type.pp ty)
    | UnknownType msgo ->
      match msgo with None -> commentStr "FIXME: unknown type" + Type.any | Some msg -> commentStr (sprintf "FIXME: unknown type '%s'" msg) + Type.any

and emitLabelsBody (ctx: Context) labels =
  let inline tag t =
    if ctx.options.inheritWithTags.HasConsume then t
    else empty
  let rec go firstCaseEmitted acc = function
    | [] -> acc
    | Case c :: rest ->
      if firstCaseEmitted then
        go firstCaseEmitted (acc + str " | " + c) rest
      else
        go true (acc + c) rest
    | TagType t :: rest ->
      if firstCaseEmitted then
        go firstCaseEmitted (acc + tag (" | " @+ t)) rest
      else
        go ctx.options.inheritWithTags.HasConsume (acc + tag t) rest
  go false empty labels

/// ``[ `A | `B | ... ]``
and emitLabels (ctx: Context) labels =
  emitLabelsBody ctx labels |> between "[" "]"

and getLabelsFromInheritingTypes (emitType_: TypeEmitter) (ctx: Context) (inheritingTypes: Set<InheritingType>) =
  let emitCase name args =
    match args with
    | [] -> str (Naming.constructorName name)
    | [arg] -> tprintf "%s of %A" (Naming.constructorName name) arg
    | _ -> tprintf "%s of %A" (Naming.constructorName name) (Type.tuple args)
  let emitTagType name args =
    let arity = List.length args
    let tagTypeName =
      if ctx.options.safeArity.HasConsume then
        Naming.createTypeNameOfArity arity None "tags"
      else
        "tags"
    let ty = Naming.structured Naming.moduleName name + "." + tagTypeName
    let args = args |> List.map (emitType_ ctx)
    Type.appOpt (str ty) args
  [
    for e in inheritingTypes do
      match e with
      | InheritingType.KnownIdent i ->
        yield str pv_head + emitCase i.fullName.name (i.tyargs |> List.map (emitType_ ctx)) |> Case
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
and getLabelsOfFullName emitType_ (ctx: Context) (fullName: FullName) (typeParams: TypeParam list) =
  let normalClass () = getAllInheritancesAndSelfFromName ctx fullName |> getLabelsFromInheritingTypes emitType_ ctx
  match fullName.name with
  | [name] when ctx.options.stdlib && Map.containsKey name Type.nonJsablePrimTypeInterfaces && typeParams |> List.isEmpty ->
    let prim = Type.nonJsablePrimTypeInterfaces |> Map.find name
    Choice2Of2 (prim, Case (tprintf "%s%s" pv_head name))
  | _ -> Choice1Of2 (normalClass () |> List.sort)

and getLabelOfFullName emitType_ (ctx: Context) (fullName: FullName) (typeParams: TypeParam list) =
  match fullName.name with
  | [name] when ctx.options.stdlib && Map.containsKey name Type.nonJsablePrimTypeInterfaces && typeParams |> List.isEmpty ->
    let prim = Type.nonJsablePrimTypeInterfaces |> Map.find name
    Choice2Of2 (prim, Case (tprintf "%s%s" pv_head name))
  | _ ->
    let inheritingType = InheritingType.KnownIdent {| fullName = fullName; tyargs = typeParams |> List.map (fun tp -> TypeVar tp.name) |}
    getLabelsFromInheritingTypes emitType_ ctx (Set.singleton inheritingType) |> Choice1Of2

type StructuredTextItem =
  | ImportText of text // import texts should be at the top of the module
  | TypeDef of text    // and type definitions should come next
  | ScopeIndependent of text
  | OverloadedText of (OverloadRenamer -> text list)

type [<RequireQualifiedAccess>] ExportItem =
  | Export of {| comments: Comment list; clauses: (ExportClause * Set<Kind>) list; loc: Location; origText: string |}
  | ReExport of {| comments: Comment list; clauses: (ReExportClause * Set<Kind>) list; loc: Location; specifier: string; origText: string |}
  | DefaultUnnamedClass of StructuredTextNode

and [<RequireQualifiedAccess>] Scoped =
  | Force of string
  | Yes
  | No
with
  static member union s1 s2 =
    match s1, s2 with
    | No, No -> No
    | Force s1, Force s2 when s1 <> s2 ->
      failwithf "impossible_Scoped_union(%s, %s)" s1 s2
    | Force s, _ | _, Force s -> Force s
    | Yes, _ | _, Yes -> Yes

and StructuredTextNode = {|
  scoped: Scoped
  items: StructuredTextItem list
  docCommentLines: text list
  exports: ExportItem list
  knownTypes: Set<KnownType>
  anonymousInterfaces: Set<AnonymousInterface>
|}
module StructuredTextNode =
  let empty : StructuredTextNode =
    {| scoped = Scoped.No; items = []; docCommentLines = []; exports = []; knownTypes = Set.empty; anonymousInterfaces = Set.empty |}
  let union (a: StructuredTextNode) (b: StructuredTextNode) : StructuredTextNode =
    {| scoped = Scoped.union a.scoped b.scoped
       items = List.append a.items b.items
       docCommentLines = List.append a.docCommentLines b.docCommentLines
       exports = List.append a.exports b.exports
       knownTypes = Set.union a.knownTypes b.knownTypes
       anonymousInterfaces = Set.union a.anonymousInterfaces b.anonymousInterfaces |}

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
      let fn = ctx.currentNamespace
      let trie =
        x.value
        |> Option.map (fun v ->
          v.knownTypes
          |> Set.fold (fun state -> function
            | KnownType.Ident fn when fn.source = ctx.currentSourceFile -> state |> WeakTrie.add fn.name
            | KnownType.AnonymousInterface (_, i) ->
              state |> WeakTrie.add (i.path @ [anonymousInterfaceModuleName i.id])
            | _ -> state
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
    let parent = ctx.currentNamespace
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
          | xs -> failwithf "impossible_StructuredText_getDependencyGraphOfChildren_refs(%s): %A" (ctx |> Context.getFullNameString [k]) xs)
      refs :: state) []
    |> List.rev
    |> List.concat

  let calculateSCCOfChildren (ctx: Context) (x: StructuredText) : string list list =
    let g =
      let deps = getDependenciesOfChildren ctx x
      Graph.ofEdges deps
    Graph.stronglyConnectedComponents g (x.children |> Map.toList |> List.map fst)

let removeLabels (xs: Choice<FieldLike, Type> list) =
    xs |> List.map (function Choice2Of2 t -> Choice2Of2 t | Choice1Of2 fl -> Choice2Of2 fl.value)

let inline func ft = Func (ft, [], ft.loc)

let rec emitMembers (emitType_: TypeEmitter) ctx (selfTy: Type) (ma: MemberAttribute) m = [
  let inline comments () =
    match ma.comments with
    | [] -> Seq.empty
    | xs ->
      seq {
        yield ScopeIndependent empty
        yield docComment (xs |> List.map emitCommentBody |> concat newline) |> ScopeIndependent
      }

  let inline overloaded (f: (string -> string) -> text list) =
    OverloadedText (fun renamer -> f (renamer.Rename "value"))

  match m with
  | Constructor ft ->
    let ty = func { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy; loc = ft.loc } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "create") ty + str " " + Attr.js_create])
  | Newable (ft, _typrm) ->
    let ft = func { ft with args = Choice2Of2 selfTy :: ft.args } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "create") ft + str " " + Attr.js_apply true])
  | Field ({ name = name; value = Func (ft, _typrm, _) }, _)
  | Method (name, ft, _typrm) ->
    let ty, attr =
      if ma.isStatic then func ft, Attr.js_global name
      else
        let ft = { ft with args = Choice2Of2 PolymorphicThis :: ft.args }
        func ft, Attr.js_call name
    let ty = emitType_ ctx ty
    yield! comments ()
    yield overloaded (fun rename -> [val_ (Naming.valueName name |> rename) ty + str " " + attr])
  | Getter fl | Field (fl, ReadOnly) ->
    let fl =
      if fl.value <> Prim Void then fl
      else
        ctx.logger.warnf "the field/getter '%s' at %s has type 'void' and treated as 'unknown'" fl.name ma.loc.AsString
        { fl with value = Prim Unknown }
    let ty =
      let args =
        if ma.isStatic then [Choice2Of2 (Prim Void)]
        else [Choice2Of2 PolymorphicThis]
      let ret =
        if fl.isOptional then Union { types = [fl.value; Prim Undefined] }
        else fl.value
      func { isVariadic = false; args = args; returnType = ret; loc = ma.loc } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ ("get_" + Naming.removeInvalidChars fl.name |> rename) ty + str " " + Attr.js_get fl.name])
  | Setter fl | Field (fl, WriteOnly) ->
    let fl =
      if fl.value <> Prim Void then fl
      else
        ctx.logger.warnf "the field/setter '%s' at '%s' has type 'void' and treated as 'unknown'" fl.name ma.loc.AsString
        { fl with value = Prim Unknown }
    let ty =
      let args =
        if ma.isStatic then [Choice2Of2 fl.value]
        else [Choice2Of2 PolymorphicThis; Choice2Of2 fl.value]
      func { isVariadic = false; args = args; returnType = Prim Void; loc = ma.loc } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ ("set_" + Naming.removeInvalidChars fl.name |> rename) ty + str " " + Attr.js_set fl.name])
  | Field (fl, Mutable) ->
    yield! emitMembers emitType_ ctx selfTy ma (Getter fl)
    yield! emitMembers emitType_ ctx selfTy ma (Setter fl)
  | Callable (ft, _typrm) ->
    let ft = func { ft with args = Choice2Of2 PolymorphicThis :: ft.args } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "apply") ft + str " " + Attr.js_apply false])
  | Indexer (ft, ReadOnly) ->
    let ft = Func ({ ft with args = Choice2Of2 PolymorphicThis :: removeLabels ft.args }, [], ft.loc) |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "get") ft + str " " + Attr.js_index_get])
  | Indexer (ft, WriteOnly) ->
    let ft =
      func {
        args = Choice2Of2 PolymorphicThis :: removeLabels ft.args @ [ Choice2Of2 ft.returnType ]
        isVariadic = false;
        returnType = Prim Void;
        loc = ft.loc
      } |> emitType_ ctx
    yield! comments ()
    yield overloaded (fun rename -> [val_ (rename "set") ft + str " " + Attr.js_index_set])
  | Indexer (ft, Mutable) ->
    yield! emitMembers emitType_ ctx selfTy ma (Indexer (ft, ReadOnly))
    yield! emitMembers emitType_ ctx selfTy ma (Indexer (ft, WriteOnly))
  | SymbolIndexer _ -> ()
  | UnknownMember msgo ->
    yield! comments ()
    match msgo with
    | Some msg ->
      yield commentStr msg |> ScopeIndependent
    | None -> ()
]

let emitMappers (ctx: Context) emitType tName (typrms: TypeParam list) =
  let t =
    { name = [tName]; fullName = []; kind = None; loc = UnknownLocation; parent = None }
  let t_ty =
    if List.isEmpty typrms then Ident t
    else App (AIdent t, typrms |> List.map (fun typrm -> TypeVar typrm.name), UnknownLocation)
  let ojs_t = { name = ["Ojs"; "t"]; fullName = []; kind = None; loc = UnknownLocation; parent = None }
  let ojs_t_ty = Ident ojs_t
  let orf _emitType _ctx ty =
    match ty with
    | Ident i when i = ojs_t -> Some (str "Ojs.t")
    | Ident i when i = t     -> Some (str tName)
    | App (AIdent i, ts, _) when i = t ->
      Type.app (str tName) (ts |> List.map (_emitType _ctx)) |> Some
    | _ -> None
  let emitType_ = emitType orf
  let funTy toJs =
    let mapperArgs =
      typrms |> List.map (fun typrm ->
        if toJs then
          func { args = [Choice2Of2 (TypeVar typrm.name)]; returnType = ojs_t_ty; isVariadic = false; loc = UnknownLocation } |> Choice2Of2
        else
          func { args = [Choice2Of2 ojs_t_ty]; returnType = TypeVar typrm.name; isVariadic = false; loc = UnknownLocation } |> Choice2Of2
      )
    if toJs then
      func { args = mapperArgs @ [Choice2Of2 t_ty]; returnType = ojs_t_ty; isVariadic = false; loc = UnknownLocation }
    else
      func { args = mapperArgs @ [Choice2Of2 ojs_t_ty]; returnType = t_ty; isVariadic = false; loc = UnknownLocation }
  [
    val_ (sprintf "%s_to_js" tName) (emitType_ ctx (funTy true))  |> ScopeIndependent
    val_ (sprintf "%s_of_js" tName) (emitType_ ctx (funTy false)) |> ScopeIndependent
  ]


let emitTypeAliasesImpl
    (baseName: string)
    flags overrideFunc
    (ctx: Context)
    (typrms: TypeParam list)
    (target: text)
    (lines: {| name: string; tyargs:(TypeParam * text) list; target: text; isOverload: bool |} -> 'a list) =
  let emitType_ = emitTypeImpl flags overrideFunc
  let tyargs = typrms |> List.map (fun x -> tprintf "'%s" x.name)
  [
    yield! lines {| name = baseName; tyargs = List.zip typrms tyargs; target = target; isOverload = false |}
    let arities = getPossibleArity typrms
    let maxArity = List.length tyargs
    for arity in arities |> Set.toSeq |> Seq.sortDescending do
      if arity <> maxArity || ctx.options.safeArity.HasProvide then
        let name = Naming.createTypeNameOfArity arity None baseName
        let tyargs' = List.take arity tyargs
        let typrms' = List.take arity typrms
        let target =
          Type.appOpt
            (str baseName)
            [
              for tyarg in tyargs' do yield tyarg
              for t in typrms |> List.skip arity do
                match t.defaultType with
                | None -> failwith "impossible_emitTypeAliases"
                | Some t -> yield emitType_ ctx t
            ]
        yield! lines {| name = name; tyargs = List.zip typrms' tyargs'; target = target; isOverload = true |}
  ]

let emitTypeAliases flags overrideFunc ctx (typrms: TypeParam list) target =
  let emitType = emitTypeImpl flags
  emitTypeAliasesImpl "t" flags overrideFunc ctx typrms target (
    fun x -> [
      yield  typeAlias x.name (x.tyargs |> List.map snd) x.target |> TypeDef
      yield! emitMappers ctx emitType x.name (x.tyargs |> List.map fst)
    ]
  )

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
    let fallback = str "private Ojs.t"
    match c.name with
    | Name name ->
      assert (name = List.last ctx.currentNamespace)
      if ctx.options.subtyping |> List.contains Subtyping.Tag then
        let labels =
          getLabelsOfFullName emitType_ ctx (ctx |> Context.getFullName []) c.typeParams
          |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
        if List.isEmpty labels then fallback
        else
          Type.appOpt Type.intf [emitLabels ctx labels] + str " " + Attr.js_custom_typ (genJsCustomMapper c.typeParams)
      else fallback
    | ExportDefaultUnnamedClass ->
      let labels =
        c.implements
        |> List.map (getAllInheritancesAndSelf ctx) |> Set.unionMany
        |> getLabelsFromInheritingTypes emitType_ ctx
      if List.isEmpty labels then fallback
      else
        Type.appOpt Type.intf [emitLabels ctx labels] + str " " + Attr.js_custom_typ (genJsCustomMapper c.typeParams)

  let enumCases (e: Enum) (cases: EnumCase list) =
    let cases =
      cases
      |> List.map (fun c -> enumCaseToIdentifier e c, c.value)
      |> Set.ofList
    between "[" "]" (concat (str " | ") [
      for name, value in cases |> Set.toSeq do
        let attr =
          match value with
          | Some v -> Attr.js (Term.literal v)
          | None -> empty
        yield pv_head @+ name @+ attr
    ]) +@ " [@js.enum]"

let getExportFromStatement (ctx: Context) (name: string) (kind: Kind list) (kindString: string) (s: Statement) : ExportItem option =
  let fn = ctx |> Context.getFullName [name]
  let ident = { name = [name]; fullName = [fn]; kind = Some (Set.ofList kind); parent = None; loc = s.loc }
  match s.isExported.AsExport ident with
  | None -> None
  | Some clause ->
    let prefix =
      match clause with
      | ES6DefaultExport _ -> "export default"
      | _ -> "export"
    Some (ExportItem.Export {| comments = []; clauses = [clause, Set.ofList kind]; loc = s.loc; origText = sprintf "%s %s %s" prefix kindString name |})

let getTrie name current =
  current |> Trie.getSubTrie name |> Option.defaultValue Trie.empty
let setTrie name trie current =
  current |> Trie.setSubTrie name trie
let inTrie name f current =
  let m =
    current
    |> Trie.getSubTrie name
    |> Option.defaultValue Trie.empty
    |> f
  current |> Trie.setSubTrie name m
let set node current = current |> Trie.setOrUpdate node StructuredTextNode.union
let add name node current = current |> Trie.addOrUpdate name node StructuredTextNode.union

type [<RequireQualifiedAccess>] ClassKind<'a, 'b, 'c> =
  | NormalClass of 'a
  | ExportDefaultClass of 'b
  | AnonymousInterface of 'c

let rec emitClass flags overrideFunc (ctx: Context) (current: StructuredText) (c: ClassOrAnonymousInterface) (additionalMembers: Context -> EmitTypeFlags -> OverrideFunc -> list<StructuredTextItem>, additionalKnownTypes: Set<KnownType>, forceScoped: Scoped option) =
  let emitType orf ctx ty = emitTypeImpl flags orf ctx ty

  let typrms = List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams
  let kind, selfTy,  overrideFunc =
    match c.name with
    | Choice1Of2 (Name n) ->
      let k = { name = (ctx |> Context.getFullName [n]).name; source = ctx.currentSourceFile }
      let ident = { name = [n]; fullName = [k]; kind = Some (Set.ofList Kind.OfClass); parent = None; loc = UnknownLocation }
      let selfTy =
        if List.isEmpty c.typeParams then Ident ident
        else App (AIdent ident, typrms, UnknownLocation)
      let overrideFunc =
        if not ctx.options.recModule.IsOffOrDefault then overrideFunc
        else
          let orf _emitType _ctx = function
            | Ident { name = [n']; fullName = fns } when n = n' && fns |> List.contains k -> Some (str "t")
            | App (AIdent { name = [n']; fullName = fns }, ts, _) when n = n' && fns |> List.contains k ->
              Some (Type.appOpt (str "t") (List.map (_emitType _ctx) ts))
            | _ -> None
          OverrideFunc.combine overrideFunc orf
      ClassKind.NormalClass {| name = n; orig = c.MapName(fun _ -> Name n) |},
      selfTy,
      overrideFunc
    | Choice1Of2 ExportDefaultUnnamedClass ->
      ClassKind.ExportDefaultClass {| orig = c.MapName(fun _ -> ExportDefaultUnnamedClass) |},
      PolymorphicThis,
      overrideFunc
    | Choice2Of2 Anonymous ->
      let ai = c.MapName (fun _ -> Anonymous)
      match ctx |> Context.bindCurrentSourceInfo (fun info -> info.anonymousInterfacesMap |> Map.tryFind ai) with
      | None -> failwith "impossible_emitClass_unknown_anonymousInterface"
      | Some i ->
        let selfTy =
          if List.isEmpty c.typeParams then AnonymousInterface ai
          else App (AAnonymousInterface ai, typrms, UnknownLocation)
        let orf _emitType _ctx = function
          | AnonymousInterface a when a = ai -> Some (str "t")
          | App (AAnonymousInterface a, ts, _) when a = ai ->
            Some (Type.appOpt (str "t") (ts |> List.map (_emitType _ctx)))
          | _ -> None
        ClassKind.AnonymousInterface {|
          name = anonymousInterfaceModuleName i.id
          orig = c.MapName(fun _ -> Anonymous)
        |},
        selfTy,
        OverrideFunc.combine overrideFunc orf

  let knownTypes =
    let dummy = c.MapName(fun _ -> ExportDefaultUnnamedClass)
    Statement.getKnownTypes ctx [Class dummy] |> Set.union additionalKnownTypes

  let isAnonymous =
    match kind with
    | ClassKind.AnonymousInterface _ -> true
    | _ -> false

  let node =
    let ctx, innerCtx =
      (),
      ctx
      |> (match kind with
          | ClassKind.NormalClass x -> Context.ofChildNamespace x.name
          | ClassKind.AnonymousInterface x -> Context.ofChildNamespace x.name
          | ClassKind.ExportDefaultClass _ -> id)
      |> Context.mapOptions (fun options ->
        if not isAnonymous then options
        else
          // no need to generate t_n types for anonymous interfaces
          ctx.options |> JS.cloneWith (fun o -> o.safeArity <- o.safeArity.WithProvide(false)))
    let typrms = List.map (fun (tp: TypeParam) -> tprintf "'%s" tp.name) c.typeParams
    let currentNamespace = innerCtx |> Context.getFullName []

    let labels =
      let emitType_ = emitType overrideFunc // labels should not have polymorphic this type
      match kind with
      | ClassKind.NormalClass _ ->
        getLabelsOfFullName emitType_ innerCtx currentNamespace c.typeParams
        |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
      | ClassKind.ExportDefaultClass _ ->
        c.implements
        |> List.map (getAllInheritancesAndSelf innerCtx) |> Set.unionMany
        |> getLabelsFromInheritingTypes emitType_ innerCtx
      | ClassKind.AnonymousInterface _ -> []

    let useTags =
         not isAnonymous
      && innerCtx.options.subtyping |> List.contains Subtyping.Tag
      && not (List.isEmpty labels)

    let polymorphicThis =
      if useTags then
        Type.appOpt (str "this") (str "'tags" :: typrms)
      else
        Type.appOpt (str "t") typrms

    let overrideFunc =
      OverrideFunc.combine overrideFunc <|
        fun _emitType _ctx -> function
          | PolymorphicThis -> Some polymorphicThis
          | _ -> None

    let emitType_ ctx ty = emitType overrideFunc ctx ty

    let members = [
      for ma, m in c.members do
        yield! emitMembers emitType_ innerCtx PolymorphicThis ma m
      yield! additionalMembers innerCtx flags overrideFunc
    ]

    let scoped =
      match kind with
      | ClassKind.ExportDefaultClass _ -> Scoped.No
      | _ ->
        let scoped = forceScoped |> Option.defaultValue Scoped.No
        let shouldBeScoped =
          c.members |> List.exists (fun (ma, m) ->
            if ma.isStatic then true
            else match m with Constructor _ -> true | _ -> false) // constructor generates global value
        Scoped.union
          scoped
          (if shouldBeScoped then Scoped.Yes else Scoped.No)

    let docCommentLines =
      c.comments |> List.distinct |> List.map emitCommentBody

    let tagsDefinition =
      if useTags && innerCtx.options.inheritWithTags.HasProvide then
        let alias =
          emitTypeAliasesImpl
            "tags" { flags with forceSkipAttributes = true } overrideFunc innerCtx c.typeParams (emitLabels innerCtx labels)
            (fun x -> [typeAlias x.name (x.tyargs |> List.map snd) x.target])
          |> concat newline
        Attr.js_stop_start_implem alias alias |> TypeDef |> Some
      else None

    let polymorphicThisDefinition =
      if useTags then
        let tags =
          getLabelOfFullName emitType_ innerCtx currentNamespace c.typeParams
          |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
          |> emitLabelsBody innerCtx
          |> between "[> " " ]"
        typeAlias "this"
          (str "'tags" :: typrms)
          (Type.app Type.intf [str "'tags"] +@ " constraint 'tags = " + tags)
        |> TypeDef |> Some
      else None

    let typeDefinition =
      let selfTyText =
        if innerCtx.options.recModule.IsOffOrDefault then
          let t =
            if isAnonymous then
              anonymousInterfaceToIdentifier innerCtx (c.MapName(fun _ -> Anonymous))
            else
              (innerCtx |> Context.getFullName []).name |> Naming.flattenedTypeName |> str
          Type.appOpt t (c.typeParams |> List.map (fun tp -> TypeVar tp.name |> emitType_ innerCtx))
        else
          match kind with
          | ClassKind.NormalClass x -> GetSelfTyText.class_ { flags with failContravariantTypeVar = true } overrideFunc innerCtx x.orig
          | ClassKind.ExportDefaultClass x -> GetSelfTyText.class_ { flags with failContravariantTypeVar = true } overrideFunc innerCtx x.orig
          | ClassKind.AnonymousInterface _ -> str "private Ojs.t"
      emitTypeAliases flags overrideFunc innerCtx c.typeParams selfTyText

    let castFunctions = [
      // add a generic cast function if tag is available
      if useTags then
        let castTy =
          Type.arrow [
            polymorphicThis
            Type.appOpt (str "t") typrms
          ]
        yield ScopeIndependent (val_ "cast_from" castTy +@ " " + Attr.js_custom_val (let_ "cast_from" [] None (str "Obj.magic")))

      if innerCtx.options.subtyping |> List.contains Subtyping.CastFunction then
        for parent in c.implements do
          let ty = func { isVariadic = false; args = [Choice2Of2 selfTy]; returnType = parent; loc = UnknownLocation } |> emitType_ innerCtx
          let parentName = getHumanReadableName innerCtx parent
          yield overloaded (fun rename -> [val_ (rename $"cast_to_{parentName}") ty + str " " + Attr.attr Attr.Category.Block "js.cast" empty])

      match kind with
      | ClassKind.NormalClass x ->
        // add `to_ml` and `of_ml` if the type is primitive and has an OCaml equivalent (e.g. number, boolean, string, array)
        match Type.jsablePrimTypeInterfaces |> Map.tryFind x.name with
        | None -> ()
        | Some prim ->
          let targetTy =
            if List.isEmpty c.typeParams then Prim prim
            else App (APrim prim, c.typeParams |> List.map (fun tp -> TypeVar tp.name), UnknownLocation)
          let toMlTy = func { isVariadic = false; args = [Choice2Of2 selfTy]; returnType = targetTy; loc = UnknownLocation } |> emitType_ innerCtx
          let ofMlTy = func { isVariadic = false; args = [Choice2Of2 targetTy]; returnType = selfTy; loc = UnknownLocation } |> emitType_ innerCtx
          yield
            overloaded (fun rename -> [
              val_ (rename "to_ml") toMlTy + str " " + Attr.attr Attr.Category.Block "js.cast" empty
              val_ (rename "of_ml") ofMlTy + str " " + Attr.attr Attr.Category.Block "js.cast" empty
            ])
      | _ -> ()
    ]

    let items = [
      yield! typeDefinition
      yield! tagsDefinition |> Option.toList
      yield! polymorphicThisDefinition |> Option.toList
      yield! members
      yield! castFunctions
    ]

    {| StructuredTextNode.empty with items = items; docCommentLines = docCommentLines; knownTypes = knownTypes; scoped = scoped |}

  let export =
    match kind with
    | ClassKind.NormalClass x ->
      let kind =
        if not c.isInterface || node.scoped <> Scoped.No then Kind.OfClass
        else Kind.OfInterface
      getExportFromStatement ctx x.name kind (if c.isInterface then "interface" else "class") (Class x.orig)
    | _ -> None

  let addAsNode (name: string) =
    current
    |> add [name] node
    |> inTrie [name] (addAnonymousInterface flags ctx knownTypes)
    |> set {| StructuredTextNode.empty with scoped = (if node.scoped <> Scoped.No then Scoped.Yes else Scoped.No); exports = Option.toList export |}

  match kind with
  | ClassKind.NormalClass x -> addAsNode x.name
  | ClassKind.AnonymousInterface x -> addAsNode x.name
  | ClassKind.ExportDefaultClass _ ->
    current
    |> set {|
        StructuredTextNode.empty with
          scoped = Scoped.Force Naming.exportDefaultClassStubName
          exports = [ExportItem.DefaultUnnamedClass node]
        |}
    |> addAnonymousInterface flags ctx knownTypes

and addAnonymousInterfaceExcluding emitTypeFlags (ctx: Context) knownTypes ais (current: StructuredText) =
  knownTypes
  |> Seq.choose (function KnownType.AnonymousInterface (a, info) -> Some (a, info) | _ -> None)
  |> Seq.filter (fun (a, _) -> ais |> List.contains a |> not)
  |> Seq.fold (fun (current: StructuredText) (a, _) ->
    let shouldSkip =
      current.value
      |> Option.map (fun v -> v.anonymousInterfaces |> Set.contains a)
      |> Option.defaultValue false
    if shouldSkip then current
    else
      emitClass emitTypeFlags OverrideFunc.noOverride ctx current (a.MapName Choice2Of2) ((fun _ _ _ -> []), Set.empty, None)
      |> set {| StructuredTextNode.empty with anonymousInterfaces = Set.singleton a |}
  ) current
and addAnonymousInterface emitTypeFlags ctx knownTypes (current: StructuredText) = addAnonymousInterfaceExcluding emitTypeFlags ctx knownTypes [] current

let emitVariable flags overrideFunc ctx (v: Variable) =
  let emitType = emitTypeImpl flags
  let emitType_ = emitType overrideFunc

  let ty, attr =
    match v.typ with
    | Func (ft, _, loc) ->
      Func (ft, [], loc), Attr.js_global v.name
    | _ ->
      let tyAsGetter = func { args = [Choice2Of2 (Prim Void)]; isVariadic = false; returnType = v.typ; loc = v.loc }
      tyAsGetter, Attr.js_get v.name
  let comments =
    if List.isEmpty v.comments then []
    else ScopeIndependent empty :: [v.comments |> List.map emitCommentBody |> concat newline |> docComment |> ScopeIndependent]
  let item =
    let ty = emitType_ ctx ty
    overloaded (fun rename -> [
      val_ (Naming.valueName v.name |> rename) ty + str " " + attr
    ])
  comments @ [item]

let emitFunction flags overrideFunc ctx (f: Function) =
  let emitType = emitTypeImpl flags
  let emitType_ = emitType overrideFunc

  let ty, attr =
    Func (f.typ, [], f.loc), Attr.js_global f.name

  let comments =
    if List.isEmpty f.comments then []
    else ScopeIndependent empty :: [f.comments |> List.map emitCommentBody |> concat newline |> docComment |> ScopeIndependent]
  let item =
    let ty = emitType_ ctx ty
    overloaded (fun rename -> [
      val_ (Naming.valueName f.name |> rename) ty + str " " + attr
    ])
  comments @ [item]

let emitImport (ctx: Context) (i: Import) : StructuredTextItem list =
  let emitImportClause (c: ImportClause) =
    let getModuleName (specifier: string) =
      if specifier.StartsWith(".") |> not then Naming.jsModuleNameToOCamlModuleName specifier |> Some
      else
        match JsHelper.tryGetActualFileNameFromRelativeImportPath ctx.currentSourceFile ctx.state.fileNames specifier with
        | Some _ -> None // if the imported file is included in the input files, skip emitting it
        | None ->
          JsHelper.resolveRelativeImportPath (ctx.state.info |> Result.toOption) ctx.currentSourceFile ctx.state.fileNames specifier
          |> JsHelper.InferenceResult.tryUnwrap
          |> Option.defaultValue specifier
          |> Naming.jsModuleNameToOCamlModuleName
          |> Some

    let isModule (name: string) (kind: Set<Kind> option) =
      i.isTypeOnly
      || kind |> Option.map Kind.generatesOCamlModule
              |> Option.defaultValue false
      || ctx |> Context.tryCurrentSourceInfo (fun i -> i.unknownIdentTypes |> Trie.containsKey [name])
             |> Option.defaultValue false
      || name |> Naming.isCase Naming.PascalCase

    match c with
    | LocalImport x ->
      let shouldEmit =
        match x.kind with
        | Some kind -> kind |> Kind.generatesOCamlModule
        | None -> x.target |> Ident.getKind ctx |> Kind.generatesOCamlModule
      if shouldEmit then
        [moduleAlias (Naming.moduleName x.name) (x.target.name |> Naming.structured Naming.moduleName) |> ImportText]
      else []
    | NamespaceImport x when isModule x.name x.kind ->
      getModuleName x.specifier
      |> Option.map (fun moduleName ->
        [moduleAlias (Naming.moduleName x.name) (sprintf "%s.Export" moduleName) |> ImportText])
      |> Option.defaultValue []
    | ES6WildcardImport s ->
      getModuleName s
      |> Option.map (fun moduleName -> [open_ [sprintf "%s.Export" moduleName] |> ImportText])
      |> Option.defaultValue []
    | ES6DefaultImport x when isModule x.name x.kind ->
      getModuleName x.specifier
      |> Option.map (fun moduleName ->
        [moduleAlias (Naming.moduleName x.name) (sprintf "%s.Export.Default" moduleName) |> ImportText])
      |> Option.defaultValue []
    | ES6Import x when isModule x.name x.kind ->
      let name =
        match x.renameAs with
        | Some name -> Naming.moduleName name
        | None -> Naming.moduleName x.name
      getModuleName x.specifier
      |> Option.map (fun moduleName ->
        [moduleAlias name (sprintf "%s.Export.%s" moduleName (Naming.moduleName x.name)) |> ImportText])
      |> Option.defaultValue []
    | NamespaceImport _ | ES6DefaultImport _ | ES6Import _ -> []

  [ yield! i.comments |> List.map (emitCommentBody >> comment >> ImportText)
    yield commentStr i.origText |> ImportText
    for c in i.clauses do
      yield! emitImportClause c]

let createStructuredText (rootCtx: Context) (stmts: Statement list) : StructuredText =
  let emitTypeFlags = { EmitTypeFlags.defaultValue with skipAttributesOnContravariantPosition = true }
  let overrideFunc = OverrideFunc.noOverride
  let emitType = emitTypeImpl emitTypeFlags
  let emitType_ = emitType overrideFunc
  let emitSelfType = emitTypeImpl { emitTypeFlags with failContravariantTypeVar = true } overrideFunc

  /// convert interface members to appropriate statements
  let intfToStmts (moduleIntf: Class<_>) ctx flags overrideFunc =
    let emitAsVariable name typ isConst (memberAttr: MemberAttribute) =
      let v =
        { name = name; typ = typ;
          isConst = isConst; isExported = Exported.No; accessibility = Some memberAttr.accessibility;
          comments = memberAttr.comments; loc = memberAttr.loc }
      emitVariable flags overrideFunc ctx v
    let emitAsFunction name typ typrms (memberAttr: MemberAttribute) =
      let f =
        { name = name; typ = typ; typeParams = typrms;
          isExported = Exported.No; accessibility = Some memberAttr.accessibility;
          comments = memberAttr.comments; loc = memberAttr.loc }
      emitFunction flags overrideFunc ctx f
    [ for ma, m in moduleIntf.members do
        let cmt =
          if List.isEmpty ma.comments then []
          else ScopeIndependent empty :: [ma.comments |> List.map emitCommentBody |> concat newline |> docComment |> ScopeIndependent]
        match m with
        | Field (fl, mt) ->
          yield! emitAsVariable fl.name fl.value (mt = ReadOnly) ma
        | Getter fl ->
          yield! emitAsVariable fl.name fl.value true ma
        | Setter _ -> ()
        | Method (name, ft, tps) ->
          yield! emitAsFunction name ft tps ma
        | Newable (ft, _tps) ->
          let ty = emitType_ ctx (func ft)
          yield! cmt
          yield overloaded (fun rename -> [val_ (rename "create") ty + str " " + Attr.js_create])
        | Callable (ft, _tps) ->
          let ty = emitType_ ctx (func ft)
          yield! cmt
          yield overloaded (fun rename -> [val_ (rename "invoke") ty + str " " + Attr.js_invoke])
        | Constructor _ -> failwith "impossible_emitStructuredDefinition_Pattern_intfToModule_Constructor" // because interface!
        | Indexer (ft, _) -> yield ScopeIndependent (comment (tprintf "unsupported indexer of type: %s" (Type.pp (func ft))))
        | UnknownMember (Some msg) -> yield ScopeIndependent (commentStr msg)
        | SymbolIndexer _ | UnknownMember None -> () ]

  let rec folder ctx (current: StructuredText) (s: Statement) : StructuredText =
    let comments =
      match (s :> ICommented<_>).getComments() with
      | [] -> []
      | xs -> xs |> List.distinct |> List.map emitCommentBody

    let knownTypes () = Statement.getKnownTypes ctx [s]
    let addExport name kind kindString current =
      match getExportFromStatement ctx name kind kindString s with
      | None -> current
      | Some e -> current |> set {| StructuredTextNode.empty with exports = [e] |}
    let addAnonymousInterfaceWithKnownTypes knownTypes current = addAnonymousInterface emitTypeFlags ctx knownTypes current
    let addAnonymousInterface current = addAnonymousInterfaceWithKnownTypes (knownTypes ()) current
    let addAnonymousInterfaceExcludingWithKnownTypes knownTypes ais current = addAnonymousInterfaceExcluding emitTypeFlags ctx knownTypes ais current
    let addAnonymousInterfaceExcluding ais current = addAnonymousInterfaceExcludingWithKnownTypes (knownTypes ()) ais current

    match s with
    | Module m ->
      let module' =
        let node = {| StructuredTextNode.empty with docCommentLines = comments; knownTypes = knownTypes () |}
        let module' = current |> getTrie [m.name] |> set node
        let ctx = ctx |> Context.ofChildNamespace m.name
        m.statements |> List.fold (folder ctx) module'
      let current =
        current |> setTrie [m.name] module'
      match module'.value with
      | None -> current
      | Some v ->
        let kind =
          if v.scoped <> Scoped.No then Kind.OfModule
          else Kind.OfNamespace
        current |> addExport m.name kind (if m.isNamespace then "namespace" else "module")
    | Global m -> m.statements |> List.fold (folder ctx) current
    | Class c ->
      emitClass emitTypeFlags OverrideFunc.noOverride ctx current (c.MapName Choice1Of2) ((fun _ _ _ -> []), Set.empty, None)
    | Enum e ->
      current
      |> inTrie [e.name] (fun module' ->
        let ctx = ctx |> Context.ofChildNamespace e.name
        let items = emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx [] (GetSelfTyText.enumCases e e.cases)
        let module' =
          let node = {| StructuredTextNode.empty with items = items; docCommentLines = comments; knownTypes = knownTypes () |}
          module' |> set node
        e.cases |> List.fold (fun state c ->
          let ctx = ctx |> Context.ofChildNamespace c.name
          let comments = List.map emitCommentBody c.comments
          let items =
            emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx [] (GetSelfTyText.enumCases e [c])
          let node = {| StructuredTextNode.empty with items = items; docCommentLines = comments; knownTypes = knownTypes () |}
          state |> add [c.name] node
        ) module')
      |> addExport e.name Kind.OfEnum "enum"
    | TypeAlias ta ->
      let ctx = ctx |> Context.ofChildNamespace ta.name
      let items =
        emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx ta.typeParams (emitSelfType ctx ta.target)
      let node = {| StructuredTextNode.empty with items = items; docCommentLines = comments; knownTypes = knownTypes () |}
      current
      |> inTrie [ta.name] (set node)
      |> addExport ta.name Kind.OfTypeAlias "type"
      |> inTrie [ta.name] addAnonymousInterface
    | Pattern p ->
      let fallback current =
        p.underlyingStatements
        |> List.fold (folder ctx) current
        |> addAnonymousInterface
      match p with
      | ImmediateInstance (intf & { name = Name intfName }, value) when Simplify.Has(ctx.options.simplify, Simplify.ImmediateInstance) ->
        let knownTypesInMembers = Statement.getKnownTypes ctx [Class intf]
        let createModule () =
          let items = intfToStmts intf (ctx |> Context.ofChildNamespace value.name) emitTypeFlags overrideFunc
          {| StructuredTextNode.empty with items = items; knownTypes = knownTypesInMembers; scoped = Scoped.Force value.name |}
        if knownTypesInMembers |> Set.contains (KnownType.Ident (ctx |> Context.getFullName [intfName])) then
          fallback current
        else
          current
          |> inTrie [value.name] (set (createModule ()))
          |> set {| StructuredTextNode.empty with scoped = Scoped.Yes |}
          |> addExport value.name Kind.OfClass "interface"
          |> inTrie [value.name] addAnonymousInterface
      | ImmediateConstructor (baseIntf, ctorIntf, ctorValue) when Simplify.Has(ctx.options.simplify, Simplify.ImmediateConstructor) ->
        emitClass emitTypeFlags OverrideFunc.noOverride ctx current (baseIntf.MapName Choice1Of2) (intfToStmts ctorIntf, Statement.getKnownTypes ctx [Class ctorIntf], Some (Scoped.Force ctorValue.name))
      | _ -> fallback current
    | Function func ->
      let node =
        {| StructuredTextNode.empty with
            items = emitFunction emitTypeFlags overrideFunc ctx func
            knownTypes = knownTypes ()
            scoped = Scoped.Yes |}
      current
      |> set node
      |> addExport func.name Kind.OfValue "function"
      |> addAnonymousInterface
    | Variable value ->
      let fallback current =
        let node =
          {| StructuredTextNode.empty with
              items = emitVariable emitTypeFlags overrideFunc ctx value
              knownTypes = knownTypes ()
              scoped = Scoped.Yes |}
        current
        |> set node
        |> addExport value.name Kind.OfValue (if value.isConst then "const" else "let")
        |> addAnonymousInterface
      let inline (|Dummy|) _ = []
      match value.typ with
      | AnonymousInterface intf when Simplify.Has(ctx.options.simplify, Simplify.AnonymousInterfaceValue) ->
        let knownTypes = knownTypes ()
        let items = intfToStmts intf (ctx |> Context.ofChildNamespace value.name) emitTypeFlags overrideFunc
        current
        |> inTrie [value.name]
          (set
            {| StructuredTextNode.empty with
                items = items
                knownTypes =
                  knownTypes |> Set.filter (function KnownType.AnonymousInterface (ai, _) -> ai.loc <> intf.loc | _ -> true)
                scoped = Scoped.Force value.name |})
        |> set {| StructuredTextNode.empty with scoped = Scoped.Yes |}
        |> addExport value.name Kind.OfClass (if value.isConst then "const" else "let")
        |> inTrie [value.name] (addAnonymousInterfaceExcluding [intf])
      | Ident (i & { loc = loc }) & Dummy tyargs
      | App (AIdent i, tyargs, loc) when Simplify.Has(ctx.options.simplify, Simplify.NamedInterfaceValue) ->
        let intf =
          Ident.pickDefinition ctx i (function Definition.Class c when c.isInterface -> Some c | _ -> None)
        match intf with
        | None -> fallback current
        | Some intf ->
          let bindings = createBindings i.name loc intf.typeParams tyargs
          let intf = intf |> mapInClass (substTypeVar bindings) ctx
          let name = value.name + "Static"
          let knownTypesInMembers = Statement.getKnownTypes ctx [Class intf]
          let createModule () =
            let items = intfToStmts intf ctx emitTypeFlags overrideFunc
            {| StructuredTextNode.empty with items = items; knownTypes = knownTypesInMembers; scoped = Scoped.Force value.name |}
          current
          |> inTrie [name] (set (createModule ()))
          |> addExport name Kind.OfClass (if value.isConst then "const" else "let")
          |> inTrie [name] (addAnonymousInterfaceWithKnownTypes knownTypesInMembers)
          |> fallback
      | _ -> fallback current
    | Import i ->
      current |> set {| StructuredTextNode.empty with items = emitImport ctx i |}
    | Export e ->
      let getKind = function
        | CommonJsExport i | ES6DefaultExport i -> i |> Ident.getKind ctx
        | ES6Export x -> x.target |> Ident.getKind ctx
        | NamespaceExport _ -> Set.empty
      current
      |> set
        {| StructuredTextNode.empty with
            exports = [ExportItem.Export {| e with clauses = e.clauses |> List.map (fun c -> c, getKind c) |}] |}
    | ReExport e ->
      let getKind = function
        | ES6ReExport x -> x.target |> Ident.getKind ctx
        | ES6NamespaceReExport _ | ES6WildcardReExport -> Set.empty
      current
      |> set
        {| StructuredTextNode.empty with
            exports = [ExportItem.ReExport {| e with clauses = e.clauses |> List.map (fun c -> c, getKind c) |}] |}
    | UnknownStatement u ->
      let cmt =
        match u.origText with
        | Some s -> commentStr s | None -> commentStr "unknown statement"
      current |> set {| StructuredTextNode.empty with items = [ScopeIndependent cmt] |}
    | FloatingComment c ->
      let cmt = ScopeIndependent empty :: (c.comments |> List.map (emitCommentBody >> comment >> ScopeIndependent))
      current |> set {| StructuredTextNode.empty with items = ScopeIndependent empty :: cmt |}
  and folder' ctx stmt node = folder ctx node stmt

  stmts |> List.fold (folder rootCtx) Trie.empty

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
    match opt.recModule with
    | RecModule.Off | RecModule.Default -> nonRec
    | RecModule.Naive -> recAll
    | RecModule.Optimized -> recOptimized

type ExportWithKind = {| comments: Comment list; clauses: (ExportClause * Set<Kind>) list; loc: Location; origText: string |}

let rec emitExportModule (moduleEmitter: ModuleEmitter) (ctx: Context) (exports: ExportItem list) : text list =
  let emitComment isFirst comments origText = [
    let hasDocComment = not (List.isEmpty comments)
    if not isFirst && hasDocComment then yield ScopeIndependent empty
    yield commentStr origText |> ScopeIndependent
    if hasDocComment then
      yield comments |> List.map emitCommentBody |> concat newline |> comment |> ScopeIndependent
  ]

  let emitModuleAlias name (i: Ident) =
    if i.kind |> Option.map Kind.generatesOCamlModule |> Option.defaultValue false then
      [ moduleAlias
          (name |> Naming.moduleNameReserved)
          (i.name |> Naming.structured Naming.moduleName) |> ScopeIndependent]
    else []

  let addItems items (acc: StructuredText) =
    acc |> Trie.setOrUpdate {| StructuredTextNode.empty with items = items |} StructuredTextNode.union

  let setItems path items (acc: StructuredText) =
    acc |> Trie.addOrUpdate path {| StructuredTextNode.empty with items = items |} StructuredTextNode.union

  let rec go isFirst (acc: StructuredText) (exports: ExportItem list) =
    match exports with
    | [] -> acc
    | ExportItem.DefaultUnnamedClass node :: rest ->
      go false (acc |> Trie.addOrUpdate ["Export"; "Default"] node StructuredTextNode.union) rest
    | ExportItem.Export export :: rest ->
      let clauses = export.clauses |> List.map fst
      let rec go' acc = function
        | [] -> acc
        | NamespaceExport _ :: rest -> go' acc rest
        | CommonJsExport i :: rest ->
          go' (acc |> addItems (emitModuleAlias "Export" i)) rest
        | ES6DefaultExport e :: rest ->
          go' (acc |> setItems ["Export"] (emitModuleAlias "Default" e)) rest
        | ES6Export e :: rest ->
          let name = e.renameAs |> Option.defaultValue (e.target.name |> List.last)
          go' (acc |> setItems ["Export"] (emitModuleAlias name e.target)) rest
      let acc =
        let generatesExportModule =
          clauses |> List.exists (function ES6Export _ | ES6DefaultExport _ -> true | _ -> false)
        if generatesExportModule then
          acc |> setItems ["Export"] (emitComment isFirst export.comments export.origText)
        else
          acc |> addItems (emitComment isFirst export.comments export.origText)
      go false (go' acc clauses) rest
    | ExportItem.ReExport export :: rest ->
      // TODO
      let acc =
        acc |> setItems ["Export"] (emitComment isFirst export.comments export.origText)
      go isFirst acc rest

  let st = go true Trie.empty exports
  let emitted = st |> emitStructuredText true moduleEmitter ctx
  // add newline if not empty
  if not (List.isEmpty emitted.content) then
    empty :: emitted.content
  else
    []

and private emitStructuredText (reserved: bool) (moduleEmitter: ModuleEmitter) (ctx: Context) (st: StructuredText) : {| scoped: Scoped; imports: text list; content: text list; docCommentBody: text list |} =
  let renamer = new OverloadRenamer()
  let modules : TextModuleSig list =
    st.children
    |> Map.toList
    |> List.map (fun (k, v) ->
      let name =
        let name =
          if reserved then Naming.moduleNameReserved k
          else Naming.moduleName k
        name |> renamer.Rename "module"
      let ctx = ctx |> Context.ofChildNamespace k
      let result = emitStructuredText reserved moduleEmitter ctx v
      {|
        name = name
        origName = k
        scope =
          match result.scoped with
          | Scoped.Force s -> Some s
          | Scoped.Yes -> Some k
          | Scoped.No -> None
        content = result.imports @ result.content
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
  let scoped =
    match st.value with
    | Some v -> v.scoped
    | None -> Scoped.No
  let content =
    [
      yield! emitModules modules
      yield! typedefs
      for item in items do
        match item with
        | Choice1Of2 text -> yield text
        | Choice2Of2 overloaded -> yield! overloaded renamer
      match st.value with
      | None -> ()
      | Some v ->
        yield! emitExportModule moduleEmitter ctx v.exports
    ]
  {| scoped = scoped; imports = imports; content = content; docCommentBody = docCommentBody |}

let emitFlattenedDefinitions (ctx: Context) (stmts: Statement list) : text list =
  let flags = { EmitTypeFlags.defaultValue with failContravariantTypeVar = true }
  let emitType_ = emitTypeImpl flags OverrideFunc.noOverride

  let inline emitTypeName name args =
    Type.appOpt (str (Naming.flattenedTypeName name)) args

  let rec go prefix (ctx: Context) (v: Statement) =
    match v with
    | Enum e ->
      let fn = ctx |> Context.getFullName [e.name]
      [
        yield tprintf "%s %s = " prefix (Naming.flattenedTypeName fn.name) + GetSelfTyText.enumCases e e.cases
        for c in e.cases do
          yield tprintf "and %s = " (Naming.flattenedTypeName (fn.name @ [c.name])) + GetSelfTyText.enumCases e [c]
      ]
    | Class c ->
      match c.name with
      | ExportDefaultUnnamedClass -> []
      | Name name ->
        let fn = ctx |> Context.getFullName [name]
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
        [prefix @+ " " @+ emitTypeName fn.name typrm +@ " = " + selfTyText]
    | TypeAlias { name = name; typeParams = typeParams; target = target } ->
      let fn = ctx |> Context.getFullName [name]
      let typrm = typeParams |> List.map (fun x -> tprintf "'%s" x.name)
      let selfTyText = emitType_ ctx target
      [prefix @+ " " @+ emitTypeName fn.name typrm +@ " = " + selfTyText]
      // TODO: emit extends of type parameters
    | Module m -> m.statements |> List.collect (go prefix (ctx |> Context.ofChildNamespace m.name))
    | Global m -> m.statements |> List.collect (go prefix (ctx |> Context.ofRoot))
    | Pattern p ->
      match p with
      | ImmediateInstance (intf & { name = Name intfName }, value) when Simplify.Has(ctx.options.simplify, Simplify.ImmediateInstance) ->
        let knownTypesInMembers = Statement.getKnownTypes ctx [Class intf]
        if intfName <> value.name || knownTypesInMembers |> Set.contains (KnownType.Ident (ctx |> Context.getFullName [intfName])) then
          p.underlyingStatements |> List.collect (go prefix ctx)
        else
          [] // no type is generated for immediate instance
      | ImmediateConstructor (baseIntf, _, _) when Simplify.Has(ctx.options.simplify, Simplify.ImmediateConstructor) ->
        go prefix ctx (Class baseIntf) // only the base interface is used as a type
      | _ ->
        p.underlyingStatements |> List.collect (go prefix ctx)
    | Import _
    | Variable _
    | Function _
    | Module _
    | Export _
    | ReExport _
    | UnknownStatement _
    | FloatingComment _ -> []

  let genAnonymousInterface prefix (a: AnonymousInterface) =
    let typeName =
      Type.appOpt
        (anonymousInterfaceToIdentifier ctx a)
        (a.typeParams |> List.map (fun x -> tprintf "'%s" x.name))
    let selfTyText = str "private Ojs.t"
    prefix @+ " " @+ typeName +@ " = " + selfTyText

  let getPrefix =
    let mutable isFirst = false
    fun () ->
      if not isFirst then
        isFirst <- true
        "type"
      else "and"

  let aim =
   ctx |> Context.tryCurrentSourceInfo (fun info -> info.anonymousInterfacesMap) |> Option.defaultValue Map.empty

  List.distinct [
    for a in aim |> Map.toList |> List.map fst do
      yield genAnonymousInterface (getPrefix()) a
    for stmt in stmts do
      yield! go (getPrefix()) ctx stmt
  ]

let emitStatementsWithStructuredText (ctx: Context) (stmts: Statement list) (st: StructuredText) =
  let moduleEmitter = ModuleEmitter.fromOption ctx.options
  let result = st |> emitStructuredText false moduleEmitter ctx
  let imports =
    if List.isEmpty result.imports then []
    else result.imports @ [empty]
  let content =
    if List.isEmpty result.docCommentBody then result.content
    else
      docComment (concat newline result.docCommentBody) :: result.content
  [
    yield! imports
    if ctx.options.recModule.IsOffOrDefault then
      yield! emitFlattenedDefinitions ctx stmts
      yield empty
    yield! content
  ]

let emitStatements (ctx: Context) (stmts: Statement list) =
  emitStatementsWithStructuredText ctx stmts (createStructuredText ctx stmts)

let header =
  [ str "[@@@ocaml.warning \"-7-11-32-33-39\"]"
    Attr.js_implem_floating (str "[@@@ocaml.warning \"-7-11-32-33-39\"]") ]

let setTyperOptions (ctx: IContext<Options>) =
  ctx.options.inheritArraylike <- true
  ctx.options.inheritIterable <- true
  ctx.options.inheritPromiselike <- true
  ctx.options.replaceAliasToFunction <- true
  ctx.options.replaceNewableFunction <- true
  ctx.options.replaceRankNFunction <- true

let emitStdlib (input: Input) (ctx: IContext<Options>) : Output list =
  let srcs = input.sources

  ctx.logger.tracef "* looking up the minimal supported ES version for each definition..."
  let esSrc =
    srcs
    |> List.filter (fun src -> src.fileName.Contains("lib.es") && src.fileName.EndsWith(".d.ts"))
    |> mergeESLibDefinitions

  let domSrc =
    srcs
    |> List.filter (fun src -> src.fileName.Contains("lib.dom") && src.fileName.EndsWith(".d.ts"))
    |> mergeSources "lib.dom.d.ts"

  let webworkerSrc =
    srcs
    |> List.filter (fun src -> src.fileName.Contains("lib.webworker") && src.fileName.EndsWith(".d.ts"))
    |> mergeSources "lib.webworker.d.ts"
    |> fun src ->
      let statements =
        src.statements |> Statement.mapIdent (fun i ->
          i |> Ident.mapSource (fun path ->
            // webworker does not depend on DOM but fullnames can still refer to it
            if path.Contains("lib.dom") && src.fileName.EndsWith(".d.ts") then "lib.webworker.d.ts"
            else path
          )
        )
      { src with statements = statements }

  ctx.logger.tracef "* running typer..."

  setTyperOptions ctx
  let opts = ctx.options
  opts.simplify <- [Simplify.All]
  opts.inheritWithTags <- FeatureFlag.Full
  opts.safeArity <- FeatureFlag.Full
  opts.recModule <- RecModule.Optimized
  opts.subtyping <- [Subtyping.Tag]

  let esCtx, esSrc = runAll [esSrc] ctx
  let domCtx, domSrc = runAll [domSrc] ctx
  let webworkerCtx, webworkerSrc = runAll [webworkerSrc] ctx

  let writerCtx (srcs: SourceFile list) ctx =
    ctx |> Context.mapOptions (fun _ -> opts)
        |> Context.mapState (fun _ -> State.create (srcs |> List.map (fun src -> src.fileName)) (Error None))

  ctx.logger.tracef "* emitting stdlib..."

  let createOutput (fileNameSuffix: string) (opens: string list) ctx (src: SourceFile list) =
    let content =
      concat newline [
        yield! header
        yield open_ opens
        yield empty
        for s in src do
          yield! emitStatements (writerCtx src ctx |> Context.ofSourceFileRoot s.fileName) s.statements
      ]
    { fileName = sprintf "ts2ocaml_%s.mli" fileNameSuffix; content = content; stubLines = []}

  let ts2ocamlMin =
    { fileName = "ts2ocaml_min.mli"; content = str stdlib; stubLines = []}

  [ ts2ocamlMin
    createOutput "es"  ["Ts2ocaml_min"] esCtx esSrc
    createOutput "dom" ["Ts2ocaml_min"; "Ts2ocaml_es"] domCtx domSrc
    createOutput "webworker" ["Ts2ocaml_min"; "Ts2ocaml_es"] webworkerCtx webworkerSrc ]

let handleExports moduleName (ctx: Context) (str: StructuredText) : {| stubLines: string list; topLevelScope: string option |} =
  let stubBinding xs expr =
    let specifier = xs |> List.map (fun n -> sprintf "[\"%s\"]" (String.escape n)) |> String.concat ""
    sprintf "joo_global_object%s = %s" specifier expr

  let createStubLine prefix (x: {| expr: string; needBabel: bool; target: Ident |}) =
    match x.target.fullName |> List.tryFind (fun fn -> fn.source = ctx.currentSourceFile) with
    | None ->
      ctx.logger.warnf "cannot generate stub for importing '%s' at %s" (x.target.name |> String.concat ".") (x.target.loc.AsString)
      None
    | Some fn -> Some (stubBinding (prefix @ fn.name) x.expr)

  match str.value with
  | None -> {| stubLines = []; topLevelScope = None |}
  | Some v ->
    let stubLines, topLevelScope =
      v.exports |> List.fold (fun (stubLines, topLevelScope) export ->
        match export with
        | ExportItem.DefaultUnnamedClass _ ->
          stubBinding [moduleName; Naming.exportDefaultClassStubName] (sprintf "require('%s').default /* need Babel */" moduleName) :: stubLines,
          Some moduleName
        | ExportItem.ReExport _ -> stubLines, topLevelScope // no stub line needed for re-exports
        | ExportItem.Export e ->
          e.clauses |> List.fold (fun (stubLines, topLevelScope) -> function
            | (CommonJsExport _ as clause, _) ->
              let stub =
                ExportClause.require moduleName clause
                |> List.choose (fun x -> createStubLine [] {| x with needBabel = false |})
              List.rev stub @ stubLines, topLevelScope
            | (ES6DefaultExport _ as clause, kind) when kind |> Set.contains Kind.Value ->
              let stub =
                ExportClause.require moduleName clause
                |> List.choose (fun x -> createStubLine [moduleName] {| x with needBabel = true |})
              List.rev stub @ stubLines, Some moduleName
            | (ES6Export _, kind) when kind |> Set.contains Kind.Value ->
              let stub =
                stubBinding [moduleName] (sprintf "require('%s') /* need Babel */" moduleName)
              stub :: stubLines, Some moduleName
            | _ -> stubLines, topLevelScope
          ) (stubLines, topLevelScope)
      ) ([], None)
    {| stubLines = stubLines |> List.rev |> List.distinct; topLevelScope = topLevelScope |}

let emitReferenceTypeDirectives (ctx: Context) (src: SourceFile) : text list =
  let refs =
    src.references
    |> List.choose (function TypeReference r -> Some r | _ -> None)
  if List.isEmpty refs then []
  else
    let comments =
      refs
      |> List.map (sprintf "<reference types=\"%s\">")
      |> List.map commentStr
    let openRefs =
      refs
      |> List.map Naming.jsModuleNameToOCamlModuleName
      |> open_
    empty :: comments @ [openRefs]

let emitReferenceFileDirectives (ctx: Context) (src: SourceFile) : text list =
  let refs =
    src.references
    |> List.choose (function FileReference r -> Some r | _ -> None)
  if List.isEmpty refs then []
  else
    // if the referenced file is included in the input files, skip emitting it
    let validRefs =
      refs
      |> List.choose (fun ref ->
        let relativePath = Path.join [Path.dirname src.fileName; ref]
        if ctx.state.fileNames |> List.contains relativePath |> not then
          Some {| path = ref; relativePath = relativePath |}
        else None)
    let comments =
      refs
      |> List.map (sprintf "<reference path=\"%s\">")
      |> List.map commentStr
    let openRefs =
      validRefs
      |> List.choose (fun x ->
        JsHelper.deriveModuleName (Result.toOption ctx.state.info) [x.relativePath]
        |> JsHelper.InferenceResult.tryUnwrap
        |> Option.map Naming.jsModuleNameToOCamlModuleName)
      |> open_
    empty :: comments @ [openRefs]

let private emitImpl (sources: SourceFile list) (info: PackageInfo option) (ctx: IContext<Options>) =
  let derivedOutputFileName =
    let inline log x =
      ctx.logger.tracef "* the inferred output file name is '%s'" x
      x
    JsHelper.deriveModuleName info (sources |> List.map (fun s -> s.fileName))
    |> JsHelper.InferenceResult.tryUnwrap
    |> Option.map (Naming.jsModuleNameToFileName >> log)
    |> Option.defaultWith (fun () ->
      ctx.logger.warnf "* the output file name cannot be inferred. 'output.mli' is used instead."
      "output.mli")

  let derivedModuleName =
    JsHelper.deriveModuleName info (sources |> List.map (fun s -> s.fileName))
    |> JsHelper.InferenceResult.unwrap "package"

  let fileNames = sources |> List.map (fun s -> s.fileName)

  let info =
    match info with
    | Some info -> Ok info
    | None -> Error (Some derivedModuleName)

  let sources, mergedFileName =
    match sources with
    | [] -> failwith "impossible_emitImpl (empty sources)"
    | [src] -> [src], src.fileName
    | _ -> [mergeSources "input.d.ts" sources], "input.d.ts"

  ctx.logger.tracef "* running typer..."
  setTyperOptions ctx
  let ctx, sources = runAll sources ctx

  let ctx =
    ctx
    |> Context.mapState (fun _ -> State.create fileNames info)
    |> Context.ofSourceFileRoot mergedFileName
  let stmts = sources |> List.collect (fun x -> x.statements)
  let structuredText = createStructuredText ctx stmts
  let exported = handleExports derivedModuleName ctx structuredText

  ctx.logger.tracef "* emitting a binding to '%s' for js_of_ocaml..." derivedModuleName
  let content =
    concat newline [
      yield! header
      match exported.topLevelScope with
      | None -> ()
      | Some scope ->
        yield tprintf "[@@@js.scope \"%s\"]" scope

      yield open_ [ "Ts2ocaml"; "Ts2ocaml.Dom"; ]
      for src in sources do
        yield! emitReferenceTypeDirectives ctx src
        yield! emitReferenceFileDirectives ctx src

      yield empty
      yield! emitStatementsWithStructuredText ctx stmts structuredText
    ]

  { fileName = derivedOutputFileName; content = content; stubLines = exported.stubLines }

let emit (input: Input) (ctx: IContext<Options>) : Output list =
  if ctx.options.merge then
    [emitImpl input.sources input.info ctx]
  else
    input.sources
    |> List.map (fun source -> emitImpl [source] input.info ctx)
