module Targets.ReScript.Writer

open Ts2Ml
open Syntax
open Typer
open Typer.Type
open DataTypes
open DataTypes.Text

open Targets.ReScript.Common
open Targets.ReScript.ReScriptHelper

let [<Literal>] stdlibEsSrc = "lib.es.d.ts"
let [<Literal>] stdlibDomSrc = "lib.dom.d.ts"
let [<Literal>] stdlibWebworkerSrc = "lib.webworker.d.ts"

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

type Variance = Covariant | Contravariant | Invariant with
  static member (~-) (v: Variance) =
    match v with
    | Covariant -> Contravariant
    | Contravariant -> Covariant
    | Invariant -> Invariant

type Label =
  | Case of text
  | TagType of text

type [<RequireQualifiedAccess>] External =
  | Root of variadic:bool * nullable:bool
  | Return of nullable:bool
  | Argument of variadic:bool
  | None

type EmitTypeFlags = {
  resolveUnion: bool
  needParen: bool
  variance: Variance
  external: External
  simplifyContravariantUnion: bool
  avoidTheseArgumentNames: Set<string>
}

module EmitTypeFlags =
  let defaultValue =
    {
      resolveUnion = true
      needParen = false
      variance = Covariant
      external = External.None
      simplifyContravariantUnion = false
      avoidTheseArgumentNames = Set.empty
    }

  let ofChild flags =
    { flags with external = External.None }
  let ofFuncArg isVariadic flags =
    { flags with
        variance = -flags.variance
        external =
          match flags.external with
          | External.Root _ -> External.Argument isVariadic
          | _ -> External.None
    }
  let ofFuncReturn flags =
    { flags with
        external =
          match flags.external with
          | External.Root (_, n) -> External.Return n
          | _ -> External.None }

let classifyExternalFunction flags (f: FuncType<Type>) =
  let isVariadic =
    if not f.isVariadic then false
    else if List.isEmpty f.args then false
    else
      let check = function
        | App (APrim (Array | ReadonlyArray), _, _) -> true
        | _ -> false
      match List.last f.args with
      | Choice1Of2 x -> check x.value
      | Choice2Of2 t -> check t
  let isNullable =
    match f.returnType with
    | Union u ->
      let u = ResolvedUnion.checkNullOrUndefined u
      u.hasNull || u.hasUndefined
    | _ -> false
  let flags = { flags with external = External.Root(isVariadic, isNullable) }
  {| flags = flags; isVariadic = isVariadic; isNullable = isNullable |}

type TypeEmitter = Context -> Type -> text

type OverrideFunc = EmitTypeFlags -> TypeEmitter -> Context -> Type -> text option
module OverrideFunc =
  let inline noOverride _flags _emitType _ctx _ty = None
  let inline combine (f1: OverrideFunc) (f2: OverrideFunc) : OverrideFunc =
    fun _flags _emitType _ctx ty ->
      match f2 _flags _emitType _ctx ty with
      | Some text -> Some text
      | None -> f1 _flags _emitType _ctx ty

let fixme alternative fmt =
  Printf.ksprintf (fun msg ->
    commentStr (sprintf "FIXME: %s" msg) + alternative
  ) fmt

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

let anonymousInterfaceModuleName (ctx: Context) (info: AnonymousInterfaceInfo) =
  match info.origin.valueName, info.origin.argName with
  | _, Some s | Some s, None when ctx.options.readableNames ->
    sprintf "%s%d" (Naming.toCase Naming.PascalCase s) info.id
  | _, _ ->
    sprintf "AnonymousInterface%d" info.id

let anonymousInterfaceToIdentifier (ctx: Context) (a: AnonymousInterface) : text =
  match ctx |> Context.bindCurrentSourceInfo (fun i -> i.anonymousInterfacesMap |> Map.tryFind a) with
  | Some i -> tprintf "%s.t" (anonymousInterfaceModuleName ctx i)
  | None -> failwithf "impossible_anonymousInterfaceToIdentifier(%s)" a.loc.AsString

let rec emitTypeImpl (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) (ty: Type) : text =
  let treatIdent (i: Ident) (tyargs: Type list) (loc: Location) =
    let arity = List.length tyargs
    let flagsForArgs = { flags with needParen = true } |> EmitTypeFlags.ofChild
    let withTyargs ty =
      Type.appOpt ty (tyargs |> List.map (emitTypeImpl flagsForArgs overrideFunc ctx))
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
            | FeatureFlag.Full | FeatureFlag.Consume -> Naming.createTypeNameOfArity arity None "t"
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
      let name = Naming.structured Naming.moduleName fn.name + ".t"
      let ts =
        assignTypeParams fn.name (origLoc ++ loc) typrms tyargs
          (fun _ t -> t)
          (fun tv ->
            match tv.defaultType with
            | Some t -> t
            | None -> failwithf "error: insufficient type params for type '%s' at %s" (String.concat "." fn.name) loc.AsString)
      Type.appOpt (str name) (ts |> List.map (emitTypeImpl flagsForArgs overrideFunc ctx))
  match overrideFunc flags (emitTypeImpl flags overrideFunc) ctx ty with
  | Some t -> t
  | None ->
    match ty with
    | App (APrim Array, ts, _) when flags.external = External.Argument true ->
      Type.app Type.array (List.map (emitTypeImpl { flags with needParen = true; external = External.None } overrideFunc ctx) ts)
    | App (APrim ReadonlyArray, ts, _) when flags.external = External.Argument true  ->
      Type.app Type.readonlyArray (List.map (emitTypeImpl { flags with needParen = true; external = External.None } overrideFunc ctx) ts)
    | _ when flags.external = External.Argument true ->
      commentStr (sprintf "FIXME: type '%s' cannot be used for variadic argument" (Type.pp ty)) + Type.app Type.array [Type.any]
    | App (t, ts, loc) ->
      let flags = flags |> EmitTypeFlags.ofChild
      let emit t ts =
        Type.appOpt (emitTypeImpl flags overrideFunc ctx t) (List.map (emitTypeImpl { flags with needParen = true } overrideFunc ctx) ts)
      match t with
      | AIdent i -> treatIdent i ts loc
      | APrim _ | AAnonymousInterface _ -> emit (Type.ofAppLeftHandSide t) ts
    | Ident i -> treatIdent i [] i.loc
    | TypeVar v -> tprintf "'%s" v
    | Prim p ->
      match p with
      | Null -> Type.null_ | Undefined -> Type.undefined
      | String -> Type.string | Bool -> Type.boolean
      | Number -> Type.number ctx.options
      | Object -> Type.object | UntypedFunction -> Type.function_
      | RegExp -> Type.regexp | Symbol _ -> Type.symbol
      | Never -> Type.never | Any -> Type.any | Unknown -> Type.unknown | Void -> Type.void_
      | Array -> Type.array | ReadonlyArray -> Type.readonlyArray
      | BigInt -> Type.bigint
    | TypeLiteral l ->
      match l with
      | LBool true -> Type.true_ | LBool false -> Type.false_
      | LString s -> Type.polyVariant [{| name = Choice1Of2 s; value = None; attr = None |}]
      | LInt i -> Type.polyVariant [{| name = Choice2Of2 i; value = None; attr = None |}]
      | LFloat f -> fixme (str "float") "float literal %f" f
    | Intersection i ->
      let flags = { flags with needParen = true } |> EmitTypeFlags.ofChild
      Type.intersection (i.types |> List.distinct |> List.map (emitTypeImpl flags overrideFunc ctx))
    | Union u -> emitUnion flags overrideFunc ctx u
    | AnonymousInterface a -> anonymousInterfaceToIdentifier ctx a
    | PolymorphicThis -> fixme Type.any "polymorphic 'this' appeared out of context"
    | Intrinsic -> Type.intrinsic
    | Tuple ts ->
      // TODO: emit label
      match ts.types with
      | []  -> Type.void_
      | [t] -> emitTypeImpl flags overrideFunc ctx t.value
      | ts  -> Type.tuple (ts |> List.map (fun x -> emitTypeImpl (flags |> EmitTypeFlags.ofChild) overrideFunc ctx x.value))
    | Func (f, [], _) -> emitFuncType flags overrideFunc ctx false f
    | NewableFunc (f, [], _) -> emitFuncType flags overrideFunc ctx true f
    | Erased (_, loc, origText) -> failwithf "impossible_emitTypeImpl_erased: %s (%s)" loc.AsString origText
    | Func (_, _ :: _, loc) -> failwithf "impossible_emitTypeImpl_Func_poly: %s (%s)" loc.AsString (Type.pp ty)
    | NewableFunc (_, _, loc) -> failwithf "impossible_emitTypeImpl_NewableFunc_poly: %s (%s)" loc.AsString (Type.pp ty)
    | UnknownType msgo ->
      match msgo with
      | None -> fixme Type.any "unknown type"
      | Some msg -> fixme Type.any "unknown type '%s'" msg

and emitFuncType (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) isNewable (f: FuncType<Type>) =
  let retTy flags =
    let argNames =
      f.args |> List.choose (function Choice1Of2 x -> Some x.name | Choice2Of2 _ -> None) |> Set.ofList
    let flags = { flags with needParen = true; avoidTheseArgumentNames = argNames } |> EmitTypeFlags.ofFuncReturn
    emitTypeImpl flags overrideFunc ctx f.returnType
  let paren x =
    if flags.needParen then between "(" ")" x
    else x
  let variadicFallback () =
    assert f.isVariadic
    let retTy = retTy (EmitTypeFlags.ofChild flags)
    let args =
      let flags = { flags with needParen = true } |> EmitTypeFlags.ofChild
      f.args |> List.map (function
        | Choice1Of2 x ->
          let t = emitTypeImpl flags overrideFunc ctx x.value
          if x.isOptional then Type.undefined_or t else t
        | Choice2Of2 t -> emitTypeImpl flags overrideFunc ctx t)
    let args, variadic =
      match List.rev args with
      | v :: rest -> List.rev rest, v
      | [] -> failwith "impossible_emitFuncType_empty_variadic_function"
    if isNewable then Type.newableVariadic args variadic retTy |> paren
    else Type.variadic args variadic retTy |> paren
  let newableFallback () =
    let retTy = retTy (EmitTypeFlags.ofChild flags)
    let args =
      let flags = { flags with needParen = true } |> EmitTypeFlags.ofChild
      f.args |> List.map (function
        | Choice1Of2 x ->
          let t = emitTypeImpl flags overrideFunc ctx x.value
          if x.isOptional then Type.undefined_or t else t
        | Choice2Of2 t -> emitTypeImpl flags overrideFunc ctx t)
    Type.newable args retTy
  let args () =
    let rec go optional acc (args: Choice<FieldLike, Type> list) =
      let flags = { flags with needParen = true } |> EmitTypeFlags.ofFuncArg false
      match args with
      | [] -> if optional then Type.void_ :: acc else acc
      | Choice1Of2 x :: [] when acc = [] && not x.isOptional ->
        go optional acc [Choice2Of2 x.value]
      | Choice1Of2 x :: [] when f.isVariadic ->
        assert (not x.isOptional)
        let t = emitTypeImpl { flags with external = External.Argument true } overrideFunc ctx x.value
        (tprintf "~%s:" x.name + t) :: acc
      | Choice2Of2 t :: [] ->
        let flags =
          if f.isVariadic then { flags with external = External.Argument true } else flags
        emitTypeImpl flags overrideFunc ctx t :: acc
      | Choice1Of2 x :: rest ->
        let arg =
          let tmp = tprintf "~%s:" x.name + emitTypeImpl flags overrideFunc ctx x.value
          if x.isOptional then tmp +@ "=?" else tmp
        go (optional || x.isOptional) (arg :: acc) rest
      | Choice2Of2 t :: rest ->
        let t = emitTypeImpl flags overrideFunc ctx t
        go false (t :: acc) rest
    go false [] f.args |> List.rev
  match flags.external with
  | _ when isNewable ->
    if f.isVariadic then variadicFallback () else newableFallback ()
  | External.Root (true, _) -> Type.curriedArrow (args ()) (retTy (EmitTypeFlags.ofFuncReturn flags))
  | _ when f.isVariadic -> variadicFallback ()
  | External.Root (_, _) -> Type.curriedArrow (args ()) (retTy (EmitTypeFlags.ofFuncReturn flags))
  | External.Argument _ -> paren ("@uncurry " @+ Type.curriedArrow (args ()) (retTy (EmitTypeFlags.ofFuncReturn flags)))
  | _ -> Type.uncurriedArrow (args ()) (retTy (EmitTypeFlags.ofFuncReturn flags)) |> paren

and emitUnion (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) (u: UnionType) : text =
  // TODO: more classification
  let u = ResolvedUnion.checkNullOrUndefined u
  let rest =
    let rest = u.rest |> List.map (emitTypeImpl (EmitTypeFlags.ofChild flags) overrideFunc ctx)
    if List.isEmpty rest then Type.never
    else Type.union rest
  match u.hasNull, u.hasUndefined with
  | true, _ | _, true when flags.external = External.Return true -> Type.option rest
  | true, true -> Type.null_or_undefined_or rest
  | true, false -> Type.null_or rest
  | false, true -> Type.undefined_or rest
  | false, false -> rest

let setTyperOptions (ctx: IContext<Options>) =
  ctx.options.inheritArraylike <- true
  ctx.options.inheritIterable <- true
  ctx.options.inheritPromiselike <- true
  ctx.options.replaceAliasToFunction <- false
  ctx.options.replaceNewableFunction <- false
  ctx.options.replaceRankNFunction <- true

/// `[ #A | #B | ... ]`
let rec emitLabels (ctx: Context) labels =
  emitLabelsBody ctx labels |> between "[" "]"

/// `#A | #B | ...`
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

and getLabelsFromInheritingTypes (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) (inheritingTypes: Set<InheritingType>) =
  let emitType_ = emitTypeImpl flags overrideFunc
  let emitCase name args =
    match args with
    | [] -> str (Naming.constructorName name)
    | [arg] -> tprintf "%s(" (Naming.constructorName name) + arg +@ ")"
    | _ -> Naming.constructorName name @+ Type.tuple args
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
        yield str "#" + emitCase i.fullName.name (i.tyargs |> List.map (emitType_ ctx)) |> Case
      | InheritingType.UnknownIdent i ->
        yield emitTagType i.name i.tyargs |> TagType
      | InheritingType.Prim (p, ts) ->
        match p.AsJSClassName with
        | Some name ->
          yield str "#" + emitCase [name] (ts |> List.map (emitType_ ctx)) |> Case
        | None -> ()
      | InheritingType.Other _ -> ()
  ]

/// `Choice2Of2` when it is an alias to a non-JSable prim type.
and getLabelsOfFullName flags overrideFunc (ctx: Context) (fullName: FullName) (typeParams: TypeParam list) =
  getAllInheritancesAndSelfFromName ctx fullName |> getLabelsFromInheritingTypes flags overrideFunc ctx |> List.sort

and getLabelOfFullName flags overrideFunc (ctx: Context) (fullName: FullName) (typeParams: TypeParam list) =
  let inheritingType = InheritingType.KnownIdent {| fullName = fullName; tyargs = typeParams |> List.map (fun tp -> TypeVar tp.name) |}
  getLabelsFromInheritingTypes flags overrideFunc ctx (Set.singleton inheritingType) |> Choice1Of2

type Scope = {
  moduleName: string option
  /// reversed list of scope
  scopeRev: string list
}

type [<RequireQualifiedAccess>] Binding =
  | Let of {| name: string; ty: text; body: text; attrs: text list; comments: text list |}
  | Ext of {| name: string; ty: text; target: string; attrs: text list; comments: text list |}
  | Unknown of {| msg:text option; comments: text list |}

let let_ (attrs: text list) comments name ty body =
  Binding.Let {| name = name; ty = ty; body = body; attrs = attrs; comments = comments |}

let ext (attrs: text list) comments name ty target =
  Binding.Ext {| name = name; ty = ty; target = target; attrs = attrs; comments = comments |}

let unknownBinding comments msg =
  Binding.Unknown {| msg = msg; comments = comments |}

let cast comments name ty =
  Binding.Ext {| name = name; ty = ty; target = "%identity"; attrs = []; comments = comments |}

let builder name (fields: {| isOptional: bool; name: string; value: text |} list) (thisType: text) =
  let args =
    fields
    |> List.map (fun f ->
      let name =
        if Naming.isValid name && (name[0] = '_' || System.Char.IsLower(name[0])) then name
        else String.escape name |> sprintf "\\\"%s\""
      let suffix =
        if f.isOptional then "=?" else ""
      tprintf "~%s: " name + f.value +@ suffix)
  let args =
    match List.tryLast fields with
    | None -> args
    | Some last -> if last.isOptional then args @ [Type.void_] else args
  let ty =
    Type.curriedArrow args thisType
  Binding.Ext {| name = name; ty = ty; target = ""; attrs = [Attr.External.obj]; comments = []|}

type EmitCondition = {
  /// Emit in the `Types` module in `.res`
  onTypes: bool
  /// Emit in `.res`
  onImpl: bool
  /// Emit in `.resi`
  onIntf: bool
} with
  static member empty = { onTypes = false; onImpl = false; onIntf = false }

type StructuredTextItem =
  | ImportText of text   // import texts should be at the top of the module
  | TypeDefText of text  // and type definitions should come next
  | Conditional of StructuredTextItem * EmitCondition
  | ScopeIndependentText of text // floating comments, etc
  | Binding of (OverloadRenamer -> Scope -> Binding)

and [<RequireQualifiedAccess>] ExportItem =
  | Export of {| comments: Comment list; clauses: (ExportClause * Set<Kind>) list; loc: Location; origText: string |}
  | ReExport of {| comments: Comment list; clauses: (ReExportClause * Set<Kind>) list; loc: Location; specifier: string; origText: string |}
  | DefaultUnnamedClass of StructuredTextNode

and StructuredTextNode = {|
  /// By default, key is used as a scope. `Some scope` to override it.
  scope: string option
  items: StructuredTextItem list
  comments: text list
  exports: ExportItem list
  knownTypes: Set<KnownType>
  anonymousInterfaces: Set<AnonymousInterface>
|}

and StructuredText = Trie<string, StructuredTextNode>

let inline conditional cond x = Conditional (x, cond)

module StructuredTextNode =
  let empty : StructuredTextNode =
    {| scope = None; items = []; comments = []; exports = []; knownTypes = Set.empty; anonymousInterfaces = Set.empty |}
  let union (a: StructuredTextNode) (b: StructuredTextNode) : StructuredTextNode =
    let mergeScope s1 s2 =
      match s1, s2 with
      | Some s1, Some s2 -> failwithf "impossible_union_mergeScope(%s, %s)" s1 s2
      | Some s, None | None, Some s -> Some s
      | None, None -> None
    {| scope = mergeScope a.scope b.scope
       items = List.append a.items b.items
       comments = List.append a.comments b.comments
       exports = List.append a.exports b.exports
       knownTypes = Set.union a.knownTypes b.knownTypes
       anonymousInterfaces = Set.union a.anonymousInterfaces b.anonymousInterfaces |}

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
              state |> WeakTrie.add (i.namespace_ @ [anonymousInterfaceModuleName ctx i])
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

let emitComments (comments: Comment list) : text list =
  // TODO
  []

let inline binding (f: (string -> string) -> Scope -> Binding) =
  [Binding (fun renamer scope -> f (renamer.Rename "value") scope)]

let scopeToAttr (s: Scope) attr =
  match s.scopeRev, s.moduleName with
  | [], None -> attr
  | sr, None -> Attr.External.scope (List.rev sr) :: attr
  | sr, Some m ->
    Attr.External.module_ (Some m) :: Attr.External.scope (List.rev sr) :: attr

let func flags overrideFunc ctx (ft: FuncType<Type>) =
  Func (ft, [], ft.loc) |> emitTypeImpl flags overrideFunc ctx

let extFunc flags overrideFunc ctx (ft: FuncType<Type>) =
  let c = classifyExternalFunction flags ft
  let ty = func c.flags overrideFunc ctx ft
  let attr = [
    if c.isNullable then yield Attr.ExternalModifier.return_nullable
    if c.isVariadic then yield Attr.ExternalModifier.variadic
  ]
  ty, attr

let rec emitMembers flags overrideFunc ctx (selfTy: Type) (isExportDefaultClass: bool) (ma: MemberAttribute) m =
  let flags = { flags with simplifyContravariantUnion = true }
  let emitType_ = emitTypeImpl flags overrideFunc

  let comments = emitComments ma.comments

  let inline extFunc ft = extFunc flags overrideFunc ctx ft
  let inline func ft = func flags overrideFunc ctx ft

  let generateCallable isNewable (args: Choice<FieldLike, Type> list) =
    let used =
      args |> List.choose (function Choice1Of2 f -> Some f.name | Choice2Of2 _ -> None)
           |> Set.ofList
    let rec rename s =
      if used |> Set.contains s |> not then s
      else rename (s + "_")
    let self = rename "t"
    let args =
      let rec createArgs index isOptional acc = function
        | [] ->
          if isOptional then
            let name = rename "unit"
            List.rev ({| ml = str name; js = name; used = false |} :: acc)
          else
            List.rev acc
        | Choice2Of2 _ :: rest ->
          let name = sprintf "arg%d" index |> rename
          createArgs (index+1) false ({| ml = str name; js = name; used = true |} :: acc) rest
        | Choice1Of2 { name = name; isOptional = isOptional } :: rest ->
          let ml = if isOptional then sprintf "~%s=?" name else "~" + name
          let js = name |> String.replace "'" "$p"
          createArgs (index+1) isOptional ({| ml = str ml; js = js; used = true |} :: acc) rest
      createArgs 1 false [] args
    let body =
      let args =
        args |> List.filter (fun arg -> arg.used)
             |> List.map (fun arg -> arg.js)
             |> String.concat ", "
      let body = sprintf "%s(%s)" self args
      if isNewable then "new " + body else body
    let args = str self :: (args |> List.map (fun arg -> arg.ml))
    Term.curriedArrow args (Term.raw body)

  match m with
  | Constructor ft ->
    let ty, attrs = extFunc { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy; loc = ft.loc }
    binding (fun rename s ->
      let target, attrs =
        if isExportDefaultClass then
          match s.moduleName with
          | Some m -> m, Attr.External.module_ None :: attrs
          | None -> failwithf "impossible_emitMembers_Constructor_ExportDefaultClass(%s)" ma.loc.AsString
        else
          match s.scopeRev with
          | self :: sr ->
            let attrs = scopeToAttr { s with scopeRev = sr } attrs
            self, attrs
          | [] -> failwithf "impossible_emitMembers_Constructor(%s)" ma.loc.AsString
      let attrs = Attr.External.new_ :: attrs |> List.rev
      ext attrs comments (rename "make") ty target
    )
  | Newable (ft, _typrm) ->
    let ty = func { ft with args = Choice2Of2 PolymorphicThis :: ft.args }
    let value = generateCallable true ft.args
    binding (fun rename _ -> let_ [] comments (rename "make") ty value)
  | Callable (ft, _typrm) ->
    let ty = func { ft with args = Choice2Of2 PolymorphicThis :: ft.args }
    let value = generateCallable false ft.args
    binding (fun rename _ -> let_ [] comments (rename "apply") ty value)
  | Field ({ name = name; value = Func (ft, _typrm, _) }, _)
  | Method (name, ft, _typrm) ->
    let name = Naming.valueName name
    let ty, attrs =
      if ma.isStatic then
        let ty, attr = extFunc ft
        ty, Attr.External.val_ :: attr
      else
        let ft = { ft with args = Choice2Of2 PolymorphicThis :: ft.args }
        let ty, attr = extFunc ft
        ty, Attr.External.send :: attr
    binding (fun rename s -> ext (scopeToAttr s attrs) comments (rename name) ty name)
  | Getter fl | Field (fl, ReadOnly) ->
    let name =
      match m with
      | Getter _ -> "get" + Naming.upperFirst fl.name |> Naming.valueName
      | _ -> fl.name |> Naming.valueName
    let fl =
      if fl.value <> Prim Void then fl
      else
        ctx.logger.warnf "the field/getter '%s' at %s has type 'void' and treated as 'undefined'" fl.name ma.loc.AsString
        { fl with value = Prim Undefined }
    if ma.isStatic then
      let ty, attrs =
        let ty = emitType_ ctx fl.value
        if fl.isOptional then
          Type.option ty, [Attr.External.val_; Attr.ExternalModifier.return_nullable]
        else
          ty, [Attr.External.val_]
      binding (fun rename s -> ext (scopeToAttr s attrs) comments (rename name) ty name)
    else
      let ty, attrs =
        let args = [Choice2Of2 PolymorphicThis]
        let ret =
          if fl.isOptional then Union { types = [fl.value; Prim Undefined] }
          else fl.value
        extFunc { isVariadic = false; args = args; returnType = ret; loc = ma.loc }
      let attrs = Attr.External.get_ :: attrs
      binding (fun rename s -> ext (scopeToAttr s attrs) comments (rename name) ty name)
  | Setter fl | Field (fl, WriteOnly) ->
    if ma.isStatic then
      ctx.logger.warnf "writable global value or static setter '%s' is not supported in ReScript at %s" fl.name ma.loc.AsString
      []
    else
      let name =
        match m with
        | Setter _ -> "set" + Naming.upperFirst fl.name |> Naming.valueName
        | _ -> fl.name |> Naming.valueName
      let fl =
        if fl.value <> Prim Void then fl
        else
          ctx.logger.warnf "the field/setter '%s' at %s has type 'void' and treated as 'undefined'" fl.name ma.loc.AsString
          { fl with value = Prim Undefined }
      let ty, attrs =
        let args =
          if ma.isStatic then [Choice2Of2 fl.value]
          else [Choice2Of2 PolymorphicThis; Choice2Of2 fl.value]
        let ty, attrs =
          extFunc { isVariadic = false; args = args; returnType = Prim Void; loc = ma.loc }
        ty, Attr.External.set_ :: attrs
      binding (fun rename s -> ext (scopeToAttr s attrs) comments (rename name) ty name)
  | Field (fl, Mutable) ->
    List.concat [
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Getter fl)
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Setter fl)
    ]
  | Indexer (ft, ReadOnly) ->
    let ty, attrs =
      let args = Choice2Of2 PolymorphicThis :: removeLabels ft.args
      extFunc { ft with args = args }
    let attrs = Attr.External.get_index :: attrs
    binding (fun rename s -> ext (scopeToAttr s attrs) comments (rename "get") ty "")
  | Indexer (ft, WriteOnly) ->
    let ty, attrs =
      let args = Choice2Of2 PolymorphicThis :: removeLabels ft.args @ [Choice2Of2 ft.returnType]
      let ret = Prim Void
      extFunc { ft with args = args; returnType = ret }
    let attrs = Attr.External.set_index :: attrs
    binding (fun rename s -> ext (scopeToAttr s attrs) comments (rename "set") ty "")
  | Indexer (ft, Mutable) ->
    List.concat [
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Indexer (ft, ReadOnly))
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Indexer (ft, WriteOnly))
    ]
  | SymbolIndexer (symbol, ft, _) ->
    let c =
      let ft = func ft
      tprintf "external [Symbol.%s]: " symbol + ft + tprintf " = \"[Symbol.%s]\"" symbol
    binding (fun _ _ -> unknownBinding comments (Some c))
  | UnknownMember msgo ->
    binding (fun _ _ -> unknownBinding comments (msgo |> Option.map str))

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
    fun x -> [Statement.typeAlias x.name (x.tyargs |> List.map snd) x.target |> TypeDefText]
  )

let emitTypeAlias flags overrideFunc ctx (typrms: TypeParam list) target =
  let emitType = emitTypeImpl flags
  emitTypeAliasesImpl "t" flags overrideFunc ctx typrms target (
    fun x ->
      if not x.isOverload then [Statement.typeAlias x.name (x.tyargs |> List.map snd) x.target |> TypeDefText]
      else []
  )

module GetSelfTyText =
  /// `ctx.currentNamespace` should be the class
  let class_ flags overrideFunc (ctx: Context) (c: Class) (baseType: text option) =
    let emitType = emitTypeImpl flags
    let emitType_ = emitType overrideFunc
    let fallback = str "private any"
    match c.name with
    | Name name ->
      assert (name = List.last ctx.currentNamespace)
      if ctx.options.subtyping |> List.contains Subtyping.Tag then
        let labels =
          getLabelsOfFullName flags overrideFunc ctx (ctx |> Context.getFullName []) c.typeParams
        if List.isEmpty labels then fallback
        else
          Type.intf (emitLabels ctx labels) baseType
      else fallback
    | ExportDefaultUnnamedClass ->
      let labels =
        c.implements
        |> List.map (getAllInheritancesAndSelf ctx) |> Set.unionMany
        |> getLabelsFromInheritingTypes flags overrideFunc ctx
      if List.isEmpty labels then fallback
      else
        Type.intf (emitLabels ctx labels) baseType

  let enumCases (e: Enum) (cases: EnumCase list) =
    failwith "TODO"

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

type [<RequireQualifiedAccess>] ClassKind<'a, 'b, 'c> =
  | NormalClass of 'a
  | ExportDefaultClass of 'b
  | AnonymousInterface of 'c

let rec emitClass flags overrideFunc (ctx: Context) (current: StructuredText) (c: ClassOrAnonymousInterface) (additionalMembers: Context -> EmitTypeFlags -> OverrideFunc -> list<StructuredTextItem>, additionalKnownTypes: Set<KnownType>, forceScope: string option) =
  let emitType orf ctx ty = emitTypeImpl flags orf ctx ty

  let typrms = List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams
  let kind, selfTy, overrideFunc =
    match c.name with
    | Choice1Of2 (Name n) ->
      let k = ctx |> Context.getFullName [n]
      let ident = { name = [n]; fullName = [k]; kind = Some (Set.ofList Kind.OfClass); parent = None; loc = UnknownLocation }
      let selfTy =
        if List.isEmpty c.typeParams then Ident ident
        else App (AIdent ident, typrms, UnknownLocation)
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
        let orf _flags _emitType _ctx = function
          | AnonymousInterface a when a = ai -> Some (str "t")
          | App (AAnonymousInterface a, ts, _) when a = ai ->
            Some (Type.appOpt (str "t") (ts |> List.map (_emitType _ctx)))
          | _ -> None
        ClassKind.AnonymousInterface {|
          name = anonymousInterfaceModuleName ctx i
          orig = c.MapName(fun _ -> Anonymous)
        |},
        selfTy,
        OverrideFunc.combine overrideFunc orf

  let knownTypes =
    let dummy = c.MapName(fun _ -> ExportDefaultUnnamedClass)
    Statement.getKnownTypes ctx [Class dummy] |> Set.union additionalKnownTypes

  let isAnonymous, isExportDefaultClass =
    match kind with
    | ClassKind.AnonymousInterface _ -> true, false
    | ClassKind.ExportDefaultClass _ -> false, true
    | ClassKind.NormalClass _ -> false, false

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
    let selfTyText = Type.appOpt (str "t") typrms
    let currentNamespace = innerCtx |> Context.getFullName []

    let labels =
      let emitType_ = emitType overrideFunc // labels should not have polymorphic this type
      match kind with
      | ClassKind.NormalClass _ ->
        getLabelsOfFullName flags overrideFunc innerCtx currentNamespace c.typeParams
      | ClassKind.ExportDefaultClass _ ->
        c.implements
        |> List.map (getAllInheritancesAndSelf innerCtx) |> Set.unionMany
        |> getLabelsFromInheritingTypes flags overrideFunc innerCtx
      | ClassKind.AnonymousInterface _ -> []

    let useTags =
         not isAnonymous
      && innerCtx.options.subtyping |> List.contains Subtyping.Tag
      && not (List.isEmpty labels)

    let polymorphicThis =
      if useTags then
        Type.appOpt (str "this") (str "'tags" :: str "'base" :: typrms)
      else
        selfTyText

    let overrideFunc =
      OverrideFunc.combine overrideFunc <|
        fun _flags _emitType _ctx -> function
          | PolymorphicThis -> Some polymorphicThis
          | _ -> None

    let emitType_ ctx ty = emitType overrideFunc ctx ty
    let members = [
      for ma, m in c.members do
        yield! emitMembers flags overrideFunc innerCtx PolymorphicThis isExportDefaultClass ma m
      yield! additionalMembers innerCtx flags overrideFunc
    ]

    let scope =
      match kind with
      | ClassKind.ExportDefaultClass _ -> None
      | _ -> forceScope

    let comments = c.comments |> emitComments

    let tagsDefinition =
      if useTags && innerCtx.options.inheritWithTags.HasProvide then
        let alias =
          emitTypeAliasesImpl
            "tags" flags overrideFunc innerCtx c.typeParams (emitLabels innerCtx labels)
            (fun x -> [Statement.typeAlias x.name (x.tyargs |> List.map snd) x.target])
          |> concat newline
        alias|> TypeDefText |> conditional { onIntf = true; onImpl = true; onTypes = false } |> Some
      else None

    let polymorphicThisDefinition =
      if useTags then
        let tags =
          getLabelOfFullName flags overrideFunc innerCtx currentNamespace c.typeParams
          |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
          |> emitLabelsBody innerCtx
          |> between "[> " " ]"
        Statement.typeAlias "this"
          (str "'tags" :: str "'base" :: typrms)
          (Type.intf (str "'tags") (Some (str "'base")) +@ " constraint 'tags = " + tags)
        |> TypeDefText |> conditional { onIntf = true; onImpl = true; onTypes = false } |> Some
      else None

    let baseType, baseTypeDefinition =
      let fallback () =
        // TODO
        None, []
      match kind with
      | ClassKind.ExportDefaultClass _ | ClassKind.AnonymousInterface _ -> fallback ()
      | ClassKind.NormalClass x ->
        if not innerCtx.options.stdlib then fallback ()
        else if innerCtx.currentSourceFile = stdlibEsSrc then
          match Type.predefinedTypes |> Map.tryFind x.name with
          | Some t -> Some (str t), []
          | None -> fallback ()
        else if innerCtx.currentSourceFile = stdlibDomSrc then
          match Type.predefinedDOMTypes.TryGetValue(x.name) with
          | true, t -> Some (str t), []
          | false, _ -> fallback ()
        else fallback ()

    let typeDefinition =
      let selfTyText =
        match kind with
        | ClassKind.NormalClass x -> GetSelfTyText.class_ flags overrideFunc innerCtx x.orig baseType
        | ClassKind.ExportDefaultClass x -> GetSelfTyText.class_ flags overrideFunc innerCtx x.orig None
        | ClassKind.AnonymousInterface _ -> str "private any"

      let onTypes =
        emitTypeAlias flags overrideFunc innerCtx c.typeParams selfTyText
        |> List.map (conditional { EmitCondition.empty with onTypes = true })

      let onIntf =
        emitTypeAliases flags overrideFunc innerCtx c.typeParams selfTyText
        |> List.map (conditional { EmitCondition.empty with onIntf = true })

      let onImpl =
        let selfTyText =
          let tyargs = c.typeParams |> List.map (fun x -> tprintf "'%s" x.name)
          Type.appOpt (str "t") tyargs
        emitTypeAliases flags overrideFunc innerCtx c.typeParams selfTyText
        |> List.map (conditional { EmitCondition.empty with onImpl = true })

      List.concat [onTypes; onIntf; onImpl]

    let castFunctions = [
      // add a generic cast function if tag is available
      if useTags then
        let castTy =
          Type.curriedArrow [polymorphicThis] selfTyText
        yield! binding (fun _ _ -> cast [] "castFrom" castTy)

      if innerCtx.options.subtyping |> List.contains Subtyping.CastFunction then
        let inline func ft = func flags overrideFunc innerCtx ft
        for parent in c.implements do
          let ty = func { isVariadic = false; args = [Choice2Of2 selfTy]; returnType = parent; loc = UnknownLocation }
          let parentName = getHumanReadableName innerCtx parent
          yield! binding (fun rename _ -> cast [] (rename $"cast_to_{parentName}") ty)
    ]

    let builder =
      let emitType_ ctx ty =
        emitTypeImpl { flags with needParen = true; variance = Contravariant } overrideFunc ctx ty
      if not c.isPOJO then []
      else
        let field (fl: FieldLike) =
          let value, isOptional =
            match fl.value with
            | Prim Null | Prim Undefined -> Prim Never, true
            | Union u ->
              let nulls, others =
                u.types |> List.partition (function Prim Null | Prim Undefined -> true | _ -> false)
              if List.isEmpty nulls then fl.value, fl.isOptional
              else Union { types = others }, true
            | _ -> fl.value, fl.isOptional
          {| fl with value = value |> emitType_ innerCtx; isOptional = isOptional |}
        let fields =
          c.members
          |> List.choose (fun (ma, m) ->
            match m with
            | Field (fl, (Mutable | ReadOnly)) -> Some (field fl)
            | Getter fl -> Some (field fl)
            (*
            | Method (name, ft, _) ->
              let value = emitType_ innerCtx (Func (ft, [], ma.loc))
              Some {| isOptional = false; name = name; value = value |}
            *)
            | _ -> None)
        binding (fun rename _ -> builder (rename "create") fields selfTyText)

    let items = [
      yield! baseTypeDefinition
      yield! typeDefinition
      yield! tagsDefinition |> Option.toList
      yield! polymorphicThisDefinition |> Option.toList
      yield! members
      yield! builder
      yield! castFunctions
    ]

    {| StructuredTextNode.empty with items = items; comments = comments; knownTypes = knownTypes; scope = scope |}

  let export =
    match kind with
    | ClassKind.NormalClass x ->
      let kind =
        if not c.isInterface || node.scope.IsSome then Kind.OfClass
        else Kind.OfInterface
      getExportFromStatement ctx x.name kind (if c.isInterface then "interface" else "class") (Class x.orig)
    | _ -> None

  let addAsNode (name: string) =
    current
    |> add [name] node
    |> inTrie [name] (addAnonymousInterface flags ctx knownTypes)
    |> set {| StructuredTextNode.empty with exports = Option.toList export |}

  match kind with
  | ClassKind.NormalClass x -> addAsNode x.name
  | ClassKind.AnonymousInterface x -> addAsNode x.name
  | ClassKind.ExportDefaultClass _ ->
    current
    |> set {|
        StructuredTextNode.empty with
          scope = None
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
  let inline extFunc ft = extFunc flags overrideFunc ctx ft
  let ty, attr =
    match v.typ with
    | Func (ft, _, _) ->
      let ty, attr = extFunc ft
      ty, Attr.External.val_ :: attr
    | _ -> emitType_ ctx v.typ, [Attr.External.val_]
  let comments = emitComments v.comments
  binding (fun rename s ->
    ext (scopeToAttr s attr) comments (Naming.valueName v.name |> rename) ty v.name
  )

let emitFunction flags overrideFunc ctx (f: Function) =
  let emitType = emitTypeImpl flags
  let emitType_ = emitType overrideFunc
  let inline extFunc ft = extFunc flags overrideFunc ctx ft
  let ty, attr = extFunc f.typ
  let comments = emitComments f.comments
  binding (fun rename s ->
    ext (scopeToAttr s (Attr.External.val_ :: attr)) comments (Naming.valueName f.name |> rename) ty f.name
  )

let emitImport (ctx: Context) (i: Import) : StructuredTextItem list =
  let emitImportClause (c: ImportClause) =
    let getModuleName (specifier: string) =
      if specifier.StartsWith(".") |> not then Naming.jsModuleNameToReScriptModuleName specifier |> Some
      else
        match JsHelper.tryGetActualFileNameFromRelativeImportPath ctx.currentSourceFile ctx.state.fileNames specifier with
        | Some _ -> None // if the imported file is included in the input files, skip emitting it
        | None ->
          JsHelper.resolveRelativeImportPath (ctx.state.info |> Result.toOption) ctx.currentSourceFile ctx.state.fileNames specifier
          |> JsHelper.InferenceResult.tryUnwrap
          |> Option.defaultValue specifier
          |> Naming.jsModuleNameToReScriptModuleName
          |> Some

    let isModule (name: string) (kind: Set<Kind> option) =
      i.isTypeOnly
      || kind |> Option.map Kind.generatesReScriptModule
              |> Option.defaultValue false
      || ctx |> Context.tryCurrentSourceInfo (fun i -> i.unknownIdentTypes |> Trie.containsKey [name])
             |> Option.defaultValue false
      || name |> Naming.isCase Naming.PascalCase

    match c with
    | LocalImport x ->
      let shouldEmit =
        match x.kind with
        | Some kind -> kind |> Kind.generatesReScriptModule
        | None -> x.target |> Ident.getKind ctx |> Kind.generatesReScriptModule
      if shouldEmit then
        [Statement.moduleAlias (Naming.moduleName x.name) (x.target.name |> Naming.structured Naming.moduleName) |> ImportText]
      else []
    | NamespaceImport x when isModule x.name x.kind ->
      getModuleName x.specifier
      |> Option.map (fun moduleName ->
        [Statement.moduleAlias (Naming.moduleName x.name) (sprintf "%s.Export" moduleName) |> ImportText])
      |> Option.defaultValue []
    | ES6WildcardImport s ->
      getModuleName s
      |> Option.map (fun moduleName -> [Statement.open_ (sprintf "%s.Export" moduleName) |> ImportText])
      |> Option.defaultValue []
    | ES6DefaultImport x when isModule x.name x.kind ->
      getModuleName x.specifier
      |> Option.map (fun moduleName ->
        [Statement.moduleAlias (Naming.moduleName x.name) (sprintf "%s.Export.Default" moduleName) |> ImportText])
      |> Option.defaultValue []
    | ES6Import x when isModule x.name x.kind ->
      let name =
        match x.renameAs with
        | Some name -> Naming.moduleName name
        | None -> Naming.moduleName x.name
      getModuleName x.specifier
      |> Option.map (fun moduleName ->
        [Statement.moduleAlias name (sprintf "%s.Export.%s" moduleName (Naming.moduleName x.name)) |> ImportText])
      |> Option.defaultValue []
    | NamespaceImport _ | ES6DefaultImport _ | ES6Import _ -> []

  [ yield! emitComments i.comments |> List.map (ImportText >> conditional { onImpl = true; onIntf = true; onTypes = false })
    yield commentStr i.origText |> ImportText
    for c in i.clauses do
      yield! emitImportClause c]

let emitTypeAliasToUnionFunctions flags overrideFunc ctx (u: UnionType) : StructuredTextItem list =
  failwith "TODO"

let createStructuredText (rootCtx: Context) (stmts: Statement list) : StructuredText =
  let emitTypeFlags = EmitTypeFlags.defaultValue
  let overrideFunc = OverrideFunc.noOverride
  let emitType = emitTypeImpl emitTypeFlags
  let emitType_ = emitType overrideFunc
  let emitSelfType = emitTypeImpl emitTypeFlags overrideFunc

  /// convert interface members to appropriate statements
  let intfToStmts (moduleIntf: Class<_>) ctx flags overrideFunc =
    let flags = { flags with simplifyContravariantUnion = true }
    let emitType_ = emitTypeImpl flags overrideFunc
    let inline extFunc ft = extFunc flags overrideFunc ctx ft
    let inline func ft = func flags overrideFunc ctx ft
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
        let comments = emitComments ma.comments
        match m with
        | Field (fl, mt) ->
          yield! emitAsVariable fl.name fl.value (mt = ReadOnly) ma
        | Getter fl ->
          yield! emitAsVariable fl.name fl.value true ma
        | Setter _ -> ()
        | Method (name, ft, tps) ->
          yield! emitAsFunction name ft tps ma
        | Newable (ft, _tps) ->
          let ty, attrs = extFunc ft
          yield!
            binding (fun rename s ->
              let target, attrs =
                match s.scopeRev with
                | self :: sr ->
                  let attrs = scopeToAttr { s with scopeRev = sr } attrs
                  self, attrs
                | [] -> failwithf "impossible_intfToStmts_Newable(%s)" ma.loc.AsString
              let attrs = Attr.External.new_ :: attrs |> List.rev
              ext attrs comments (rename "make") ty target
            )
        | Callable (ft, _tps) ->
          let ty, attrs = extFunc ft
          yield!
            binding (fun rename s ->
              let target, attrs =
                match s.scopeRev with
                | self :: sr ->
                  let attrs = scopeToAttr { s with scopeRev = sr } attrs
                  self, attrs
                | [] -> failwithf "impossible_intfToStmts_Callable(%s)" ma.loc.AsString
              let attrs = Attr.External.val_ :: attrs |> List.rev
              ext attrs comments (rename "apply") ty target
            )
        | Constructor _ -> failwith "impossible_emitStructuredDefinition_Pattern_intfToModule_Constructor" // because interface!
        | Indexer (ft, _) ->
          let ty = func ft
          yield! binding (fun _ _ -> unknownBinding comments (Some ("unsupported indexer of type: " @+ ty)))
        | UnknownMember (Some msg) ->
          yield! binding (fun _ _ -> unknownBinding comments (Some (str msg)))
        | SymbolIndexer _ | UnknownMember None -> () ]

  let rec folder ctx (current: StructuredText) (s: Statement) : StructuredText =
    let comments = (s :> ICommented<_>).getComments() |> emitComments

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
        let node = {| StructuredTextNode.empty with comments = comments; knownTypes = knownTypes () |}
        let module' = current |> getTrie [m.name] |> set node
        let ctx = ctx |> Context.ofChildNamespace m.name
        m.statements |> List.fold (folder ctx) module'
      let current =
        current |> setTrie [m.name] module'
      match module'.value with
      | None -> current
      | Some _ ->
        let kind =
          if m.isNamespace then Kind.OfNamespace
          else Kind.OfModule
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
          let node = {| StructuredTextNode.empty with items = items; comments = comments; knownTypes = knownTypes () |}
          module' |> set node
        e.cases |> List.fold (fun state c ->
          let ctx = ctx |> Context.ofChildNamespace c.name
          let comments = emitComments c.comments
          let items =
            emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx [] (GetSelfTyText.enumCases e [c])
          let node = {| StructuredTextNode.empty with items = items; comments = comments; knownTypes = knownTypes () |}
          state |> add [c.name] node
        ) module')
      |> addExport e.name Kind.OfEnum "enum"
    | TypeAlias ta ->
      let ctx = ctx |> Context.ofChildNamespace ta.name
      let items =
        emitTypeAliases emitTypeFlags OverrideFunc.noOverride ctx ta.typeParams (emitSelfType ctx ta.target)
      let node = {| StructuredTextNode.empty with items = items; comments = comments; knownTypes = knownTypes () |}
      current
      |> inTrie [ta.name] (set node)
      |> addExport ta.name Kind.OfTypeAlias "type"
      |> inTrie [ta.name] (
        match ta.target with
        | Union u ->
          let functions = emitTypeAliasToUnionFunctions emitTypeFlags OverrideFunc.noOverride ctx u
          set {| StructuredTextNode.empty with items = functions |}
        | _ -> id)
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
          {| StructuredTextNode.empty with items = items; knownTypes = knownTypesInMembers; scope = Some value.name |}
        if knownTypesInMembers |> Set.contains (KnownType.Ident (ctx |> Context.getFullName [intfName])) then
          fallback current
        else
          current
          |> inTrie [value.name] (set (createModule ()))
          |> addExport value.name Kind.OfClass "interface"
          |> inTrie [value.name] addAnonymousInterface
      | ImmediateConstructor (baseIntf, ctorIntf, ctorValue) when Simplify.Has(ctx.options.simplify, Simplify.ImmediateConstructor) ->
        emitClass emitTypeFlags OverrideFunc.noOverride ctx current (baseIntf.MapName Choice1Of2) (intfToStmts ctorIntf, Statement.getKnownTypes ctx [Class ctorIntf], Some ctorValue.name)
      | _ -> fallback current
    | Function func ->
      let node =
        {| StructuredTextNode.empty with
            items = emitFunction emitTypeFlags overrideFunc ctx func
            knownTypes = knownTypes () |}
      current
      |> set node
      |> addExport func.name Kind.OfValue "function"
      |> addAnonymousInterface
    | Variable value ->
      let fallback current =
        let node =
          {| StructuredTextNode.empty with
              items = emitVariable emitTypeFlags overrideFunc ctx value
              knownTypes = knownTypes () |}
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
                scope = Some value.name |})
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
            {| StructuredTextNode.empty with items = items; knownTypes = knownTypesInMembers; scope = Some value.name |}
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
      current |> set {| StructuredTextNode.empty with items = [ScopeIndependentText cmt] |}
    | FloatingComment c ->
      let cmt = c.comments |> emitComments |> List.map ScopeIndependentText
      current |> set {| StructuredTextNode.empty with items = ScopeIndependentText empty :: cmt |}
  and folder' ctx stmt node = folder ctx node stmt

  stmts |> List.fold (folder rootCtx) Trie.empty
