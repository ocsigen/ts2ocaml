module Targets.ReScript.Writer

open Ts2Ml
open Syntax
open Typer
open Typer.Type
open DataTypes
open DataTypes.Text

open Fable.Core
open Fable.Core.JsInterop

open Targets.ReScript.Common
open Targets.ReScript.ReScriptHelper

let impossibleNone msgf (x: 'a option) =
  match x with None -> failwith ("impossible (not None): " + msgf ()) | Some x -> x

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

type Label =
  | Case of text * text list
  | TagType of text * text list

type [<RequireQualifiedAccess>] External =
  | Root of variadic:bool * nullable:bool
  | Return of nullable:bool
  | Argument of variadic:bool
  | None

type EmitTypeFlags = {
  resolveUnion: bool
  needParen: bool
  external: External
  avoidTheseArgumentNames: Set<string>
}

module EmitTypeFlags =
  let defaultValue =
    {
      resolveUnion = true
      needParen = false
      external = External.None
      avoidTheseArgumentNames = Set.empty
    }

  let noExternal flags =
    { flags with external = External.None }
  let ofFuncArg isVariadic flags =
    { flags with
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
  let needsWorkaround = f.isVariadic && not isVariadic
  {| flags = flags; isVariadic = isVariadic; isNullable = isNullable; needsWorkaround = needsWorkaround |}

let functionNeedsWorkaround (ft: FuncType<Type>) =
  let c = classifyExternalFunction EmitTypeFlags.defaultValue ft
  c.needsWorkaround

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

let anonymousInterfaceModuleName (ctx: Context) (info: AnonymousInterfaceInfo) =
  match info.origin.valueName, info.origin.argName with
  | _, Some s | Some s, None when ctx.options.readableNames ->
    sprintf "%s%d" (Naming.toCase Naming.PascalCase s) info.id
  | _, _ ->
    sprintf "AnonymousInterface%d" info.id

let anonymousInterfaceToIdentifier (ctx: Context) (a: AnonymousInterface) : text =
  let i =
    ctx
    |> Context.bindCurrentSourceInfo (fun i -> i.anonymousInterfacesMap |> Map.tryFind a)
    |> impossibleNone (fun () -> sprintf "anonymousInterfaceToIdentifier(%s)" a.loc.AsString)
  tprintf "%s.t" (anonymousInterfaceModuleName ctx i)

let rec emitTypeImpl (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) (ty: Type) : text =
  let treatBuiltinTypes (i: Ident) (tyargs: Type list) =
    let contains path = i.fullName |> List.exists (fun fn -> fn.source.Contains(path))
    if contains "node_modules/typescript/lib/lib" then
      let len = List.length tyargs
      let flagsForArgs = { flags with needParen = true } |> EmitTypeFlags.noExternal
      let emitWith ty = Type.appOpt (str ty) (tyargs |> List.map (emitTypeImpl flagsForArgs overrideFunc ctx)) |> Some
      match i.name with
      | [] | _ :: _ :: _ -> None
      | [name] ->
        match Type.predefinedTypes |> Map.tryFind name with
        | Some (ty, arity) when arity = len -> emitWith ty
        | _ ->
          if contains "lib.es" then emitWith (sprintf "%s.t" name)
          else if contains "lib.dom" || contains "lib.webworker" then
            match Type.predefinedDOMTypes.TryGetValue(name) with
            | true, ty -> emitWith ty
            | _, _ -> None
          else None
    else None

  let treatIdent (i: Ident) (tyargs: Type list) (loc: Location) =
    match treatBuiltinTypes i tyargs with
    | Some t -> t
    | None ->
      let arity = List.length tyargs
      let flagsForArgs = { flags with needParen = true } |> EmitTypeFlags.noExternal
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
              if Option.isSome i.misc.maxArity then
                Naming.createTypeNameOfArity arity i.misc.maxArity "t"
              else "t"
            Naming.structured Naming.moduleName i.name + "." + tyName |> str
          match i.name with
          | [name] ->
            match PrimType.FromJSClassName name with
            | Some p -> emitTypeImpl flags overrideFunc ctx (Prim p)
            | None -> fallback ()
          | _ -> fallback ()
        tyName |> withTyargs
      | Some (fn, typrms, origLoc) ->
        let result name =
          let ts =
            assignTypeParams fn.name (origLoc ++ loc) typrms tyargs
              (fun _ t -> t)
              (fun tv ->
                match tv.defaultType with
                | Some t -> t
                | None -> ctx.logger.errorf "error: insufficient type params for type '%s' at %s" (String.concat "." fn.name) loc.AsString)
          Type.appOpt (str name) (ts |> List.map (emitTypeImpl flagsForArgs overrideFunc ctx))
        let fullName = Naming.structured Naming.moduleName fn.name + ".t"
        if fn.source <> ctx.currentSourceFile then result fullName
        else
          match ctx |> Context.getRelativeNameTo fn.name with
          | Ok relativeName -> result (Naming.structured Naming.moduleName relativeName + ".t")
          | Error [] -> result "t"
          | Error diff ->
            let fn = String.concat "." fn.name
            let selfName = String.concat "." diff
            let warnText = $"cannot reference a type {fn} from its sub-namespace {selfName}"
            Log.warnf ctx.options "%s at %s" warnText loc.AsString
            commentStr warnText + Type.any

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
      let flags = flags |> EmitTypeFlags.noExternal
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
      | LInt i ->
        if i >= 0 then Type.polyVariant [{| name = Choice2Of2 i; value = None; attr = None |}]
        else fixme (str "int") "%d" i
      | LFloat f -> fixme (str "float") "float literal %f" f
    | Intersection i ->
      let flags = { flags with needParen = true } |> EmitTypeFlags.noExternal
      Type.intersection (i.types |> List.distinct |> List.map (emitTypeImpl flags overrideFunc ctx))
    | Union u -> emitUnion flags overrideFunc ctx u
    | AnonymousInterface a -> anonymousInterfaceToIdentifier ctx a
    | PolymorphicThis -> fixme Type.any "polymorphic 'this' appeared out of context"
    | Intrinsic -> Type.intrinsic
    | Tuple ts ->
      match ts.types with
      | []  -> Type.void_
      | [t] -> emitTypeImpl flags overrideFunc ctx t.value
      | ts  -> Type.tuple (ts |> List.map (fun x -> emitTypeImpl (flags |> EmitTypeFlags.noExternal) overrideFunc ctx x.value))
    | Func (f, [], _) -> emitFuncType flags overrideFunc ctx false f
    | NewableFunc (f, [], _) -> emitFuncType flags overrideFunc ctx true f
    | Erased (_, loc, origText) -> impossible "emitTypeImpl_erased: %s (%s)" loc.AsString origText
    | Func (_, _ :: _, loc) -> impossible "emitTypeImpl_Func_poly: %s (%s)" loc.AsString (Type.pp ty)
    | NewableFunc (_, _, loc) -> impossible "emitTypeImpl_NewableFunc_poly: %s (%s)" loc.AsString (Type.pp ty)
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
    let retTy = retTy (EmitTypeFlags.noExternal flags)
    let args =
      let flags = { flags with needParen = true } |> EmitTypeFlags.noExternal
      f.args |> List.map (function
        | Choice1Of2 x ->
          let t = emitTypeImpl flags overrideFunc ctx x.value
          if x.isOptional then Type.undefined_or t else t
        | Choice2Of2 t -> emitTypeImpl flags overrideFunc ctx t)
    let args, variadic =
      match List.rev args with
      | v :: rest -> List.rev rest, v
      | [] -> impossible "emitFuncType_empty_variadic_function"
    if isNewable then Type.newableVariadic args variadic retTy |> paren
    else Type.variadic args variadic retTy |> paren
  let newableFallback () =
    let retTy = retTy (EmitTypeFlags.noExternal flags)
    let args =
      let flags = { flags with needParen = true } |> EmitTypeFlags.noExternal
      f.args |> List.map (function
        | Choice1Of2 x ->
          let t = emitTypeImpl flags overrideFunc ctx x.value
          if x.isOptional then Type.undefined_or t else t
        | Choice2Of2 t -> emitTypeImpl flags overrideFunc ctx t)
    Type.newable args retTy
  let args () =
    let rec go acc (args: Choice<FieldLike, Type> list) =
      let flags = { flags with needParen = true } |> EmitTypeFlags.ofFuncArg false
      match args with
      | [] -> acc
      | Choice1Of2 x :: [] when acc = [] && not x.isOptional ->
        go acc [Choice2Of2 x.value]
      | Choice1Of2 x :: [] when f.isVariadic ->
        assert (not x.isOptional)
        let t = emitTypeImpl { flags with external = External.Argument true } overrideFunc ctx x.value
        (tprintf "~%s:" (Naming.valueName x.name) + t) :: acc
      | Choice2Of2 t :: [] ->
        let flags =
          if f.isVariadic then { flags with external = External.Argument true } else flags
        emitTypeImpl flags overrideFunc ctx t :: acc
      | Choice1Of2 x :: rest ->
        let arg =
          let tmp = tprintf "~%s:" (Naming.valueName x.name) + emitTypeImpl flags overrideFunc ctx x.value
          if x.isOptional then tmp +@ "=?" else tmp
        go (arg :: acc) rest
      | Choice2Of2 t :: rest ->
        let t = emitTypeImpl flags overrideFunc ctx t
        go (t :: acc) rest
    go [] f.args |> List.rev
  match flags.external with
  | _ when isNewable ->
    if f.isVariadic then variadicFallback () else newableFallback ()
  | External.Root (true, _) -> Type.arrow (args ()) (retTy flags)
  | _ when f.isVariadic -> variadicFallback ()
  | External.Root (_, _)
  | External.Argument _
  | External.Return _ -> Type.arrow (args ()) (retTy flags)
  | _ -> Type.arrow (args ()) (retTy flags) |> paren

and emitUnion (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) (u: UnionType) : text =
  if flags.resolveUnion = false then
    u.types
    |> List.distinct
    |> List.map (emitTypeImpl (EmitTypeFlags.noExternal flags) overrideFunc ctx)
    |> Type.union
  else if flags.external = External.Return true then
    let u = ResolvedUnion.checkNullOrUndefined u
    let rest =
      if List.isEmpty u.rest then Type.never
      else
        let t = Union { types = u.rest }
        emitTypeImpl (EmitTypeFlags.noExternal flags) overrideFunc ctx t
    match u.hasNull, u.hasUndefined with
    | true, _ | _, true -> Type.option rest
    | false, false -> rest
  else
    let u = ResolvedUnion.resolve ctx u

    let treatEnum (cases: Set<Choice<Enum * EnumCase * Type, Literal>>) =
      let handleLiteral l attr ty =
        match l with
        | LString s -> Choice1Of2 {| name = Choice1Of2 s; value = None; attr = attr |}
        | LInt i -> Choice1Of2 {| name = Choice2Of2 i; value = None; attr = attr |}
        | LFloat _ -> Choice2Of2 (ty |? Type.float)
        | LBool _ -> Choice2Of2 (ty |? Type.boolean)
      let cases = [
        for c in cases do
          match c with
          | Choice1Of2 (_, _, ty) ->
            let ty = emitTypeImpl (EmitTypeFlags.noExternal flags) overrideFunc ctx ty
            yield Choice2Of2 ty
          | Choice2Of2 l -> yield handleLiteral l None None
      ]
      let cases, rest = List.splitChoice2 cases
      [
        if List.isEmpty cases |> not then
          yield Type.polyVariant cases
        yield! rest
      ]

    let treatArray (ts: Set<Type>) =
      // TODO: think how to map multiple array cases properly
      let elemT =
        let elemT =
          match Set.toList ts with
          | [t] -> t
          | ts -> Union { types = ts }
        emitTypeImpl (EmitTypeFlags.noExternal flags) overrideFunc ctx elemT
      Type.app Type.array [elemT]

    let treatDUMany du =
      // TODO: anonymous DU?
      let types =
        du
        |> Map.toList
        |> List.collect (fun (_, cases) -> Map.toList cases)
        |> List.map (fun (_, t) -> t)
      types
      |> List.map (emitTypeImpl (EmitTypeFlags.noExternal { flags with resolveUnion = false }) overrideFunc ctx)
      |> List.distinct

    let baseTypes = [
      if not (Set.isEmpty u.caseEnum) then
        yield! treatEnum u.caseEnum
      if not (Map.isEmpty u.discriminatedUnions) then
        yield! treatDUMany u.discriminatedUnions
      match u.caseArray with
      | Some ts -> yield treatArray ts
      | None -> ()
      for t in u.otherTypes do
        yield emitTypeImpl (EmitTypeFlags.noExternal { flags with resolveUnion = false }) overrideFunc ctx t
    ]

    let case name value = {| name = Choice1Of2 name; value = value; attr = None |}
    let genPoly unwrap =
      let cases = [
        for t in u.typeofableTypes do
          match t with
          | Typeofable.String -> yield case "String" (Some Type.string)
          | Typeofable.Number -> yield case "Number" (Some (Type.number ctx.options))
          | Typeofable.Boolean -> yield case "Boolean" (Some Type.boolean)
          | Typeofable.Symbol -> yield case "Symbol" (Some Type.symbol)
          | Typeofable.BigInt -> yield case "Bigint" (Some Type.bigint)

        if u.caseNull then
          yield case "Null" (if unwrap then Some Type.null_ else None)
        if u.caseUndefined then
          yield case "Undefined" (if unwrap then Some Type.undefined else None)

        match List.distinct baseTypes with
        | [] -> ()
        | [t] -> yield case "Other" (Some t)
        | ts ->
          if unwrap then
            for i, t in ts |> List.indexed do
              yield case (sprintf "U%d" (i+1)) (Some t)
          else
            yield case "Other" (Some (Type.union ts))
      ]
      Type.polyVariant cases

    let createNullable isNull isUndefined t =
      match isNull, isUndefined with
      | false, false -> t
      | true, false -> Type.null_or t
      | false, true -> Type.undefined_or t
      | true, true -> Type.null_or_undefined_or t

    let emitTypeofableType t = emitTypeImpl flags overrideFunc ctx (TypeofableType.toType t)

    let isExternalArg = match flags.external with External.Argument _ -> true | _ -> false

    match baseTypes, Set.toList u.typeofableTypes, u.caseNull, u.caseUndefined with
    | [], [], false, false -> impossible "emitUnion_empty_union"
    | [], [], true, false -> Type.null_
    | [], [], false, true -> Type.undefined
    | [], [], true, true -> Type.null_or_undefined_or Type.never
    | [t], [], isNull, isUndefined -> createNullable isNull isUndefined t
    | ts, [], isNull, isUndefined when not isExternalArg ->
      createNullable isNull isUndefined (Type.union ts)
    | [], [t], isNull, isUndefined -> createNullable isNull isUndefined (emitTypeofableType t)
    | _, _, _, _ ->
      match flags.external with
      | External.Argument _ -> Attr.PolyVariant.unwrap +@ " " + genPoly true
      | _ -> Type.app (str "Primitive.t") [genPoly false]

/// `[ #A | #B | ... ]`
and emitLabels (ctx: Context) labels =
  emitLabelsBody ctx labels |> between "[" "]"

/// `#A | #B | ...`
and emitLabelsBody (ctx: Context) labels =
  let inline tag t =
    if ctx.options.inheritWithTags.HasConsume then t
    else empty
  let rec go firstCaseEmitted acc = function
    | [] -> acc
    | Case (c, args) :: rest ->
      let text =
        match args with
        | [] -> "#" @+ c
        | _ -> "#" @+ c + between "(" ")" (concat (str ", ") args)
      if firstCaseEmitted then
        go firstCaseEmitted (acc + str " | " + text) rest
      else
        go true (acc + text) rest
    | TagType (t, args) :: rest ->
      let text = Type.appOpt t args
      if firstCaseEmitted then
        go firstCaseEmitted (acc + tag (" | " @+ text)) rest
      else
        go ctx.options.inheritWithTags.HasConsume (acc + tag text) rest
  go false empty labels

and getLabelsFromInheritingTypes (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context) (inheritingTypes: Set<InheritingType>) =
  let emitType_ = emitTypeImpl flags overrideFunc
  let createCase name args = Case (str (Naming.constructorName name), args)
  let createTagType name args maxArity =
    let arity = List.length args
    let tagTypeName =
      if Option.isSome maxArity then
        Naming.createTypeNameOfArity arity maxArity "tags"
      else "tags"
    let ty = Naming.structured Naming.moduleName name + "." + tagTypeName
    let args = args |> List.map (emitType_ ctx)
    TagType (str ty, args)
  [
    for e in inheritingTypes do
      match e with
      | InheritingType.KnownIdent i ->
        yield createCase i.fullName.name (i.tyargs |> List.map (emitType_ ctx))
      | InheritingType.UnknownIdent i ->
        yield createTagType i.name i.tyargs i.maxArity
      | InheritingType.Prim (p, ts) ->
        match p.AsJSClassName with
        | Some name ->
          yield createCase [name] (ts |> List.map (emitType_ ctx))
        | None -> ()
      | InheritingType.Other _ -> ()
  ]

/// `Choice2Of2` when it is an alias to a non-JSable prim type.
and getLabelsOfFullName flags overrideFunc (ctx: Context) (fullName: FullName) (typeParams: TypeParam list) =
  getAllInheritancesAndSelfFromName ctx fullName |> getLabelsFromInheritingTypes flags overrideFunc ctx |> List.sort

and getLabelOfFullName flags overrideFunc (ctx: Context) (fullName: FullName) (typeParams: TypeParam list) =
  let inheritingType = InheritingType.KnownIdent {| fullName = fullName; tyargs = typeParams |> List.map (fun tp -> TypeVar tp.name) |}
  getLabelsFromInheritingTypes flags overrideFunc ctx (Set.singleton inheritingType) |> Choice1Of2

type StructuredTextItemBase<'TypeDefText, 'Binding, 'EnumCaseText> =
  /// Will always be emitted at the top of the module.
  | ImportText of text
  /// Will always be emitted at the next top of the module.
  | TypeDefText of 'TypeDefText
  | TypeAliasText of text
  /// Will be emitted in `.res` and `.resi`, but not in the `Types` module
  | Comment of text
  /// Will only be emitted in `.res` (not in `.resi` or in the `Types` module)
  | Binding of 'Binding
  | EnumCaseText of 'EnumCaseText

and StructuredTextItem = StructuredTextItemBase<
  TypeDefText,
  (OverloadRenamer -> CurrentScope -> Binding),
  {| name: string; comments: Comment list |}
>

and TypeDefText = {
  name: string
  tyargs: (TypeParam * text) list
  body: text option
  isRec: bool
  shouldAssert: bool
  attrs: text list
  comments: text list
} with
  static member Create(name, tyargs, body, ?attrs, ?comments, ?isRec, ?shouldAssert) =
    TypeDefText {
      name = name; tyargs = tyargs; body = body
      attrs = attrs |? []
      comments = comments |? []
      isRec = isRec |? false
      shouldAssert = shouldAssert |? false
    }

and CurrentScope = {
  jsModule: string option
  /// reversed list of scope
  scopeRev: string list
}

and [<RequireQualifiedAccess>] Scope =
  | Default
  | Module of string
  | Path of string
  | Global
  | Ignore

and [<RequireQualifiedAccess>] ExportItem =
  | Export of {| comments: Comment list; clauses: (ExportClause * Set<Kind>) list; loc: Location; origText: string |}
  | ReExport of {| comments: Comment list; clauses: (ReExportClause * Set<Kind>) list; loc: Location; specifier: string; origText: string |}
  | DefaultUnnamedClass of StructuredTextNode

and StructuredTextNode = {|
  scope: Scope
  items: StructuredTextItem list
  comments: text list
  exports: ExportItem list
  openTypesModule: bool
  knownTypes: Set<KnownType>
  anonymousInterfaces: Set<AnonymousInterface>
|}

and StructuredText = Trie<string, StructuredTextNode>

module StructuredTextNode =
  let empty : StructuredTextNode =
    {| scope = Scope.Default; items = []; comments = []; exports = []; knownTypes = Set.empty; anonymousInterfaces = Set.empty; openTypesModule = true |}

  let union (a: StructuredTextNode) (b: StructuredTextNode) : StructuredTextNode =
    let mergeScope s1 s2 =
      match s1, s2 with
      | Scope.Default, s | s, Scope.Default -> s
      | _, _ -> impossible "mergeScope(%A, %A)" s1 s2
    {| scope = mergeScope a.scope b.scope
       items = List.append a.items b.items
       comments = List.append a.comments b.comments
       exports = List.append a.exports b.exports
       openTypesModule = a.openTypesModule || b.openTypesModule
       knownTypes = Set.union a.knownTypes b.knownTypes
       anonymousInterfaces = Set.union a.anonymousInterfaces b.anonymousInterfaces |}

  let getReferences (ctx: Context) (v: StructuredTextNode) : WeakTrie<string> =
    v.knownTypes
    |> Set.fold (fun state -> function
      | KnownType.Ident fn when fn.source = ctx.currentSourceFile -> state |> WeakTrie.add fn.name
      | KnownType.AnonymousInterface (_, i) ->
        state |> WeakTrie.add (i.namespace_ @ [anonymousInterfaceModuleName ctx i])
      | _ -> state
    ) WeakTrie.empty

module StructuredText =
  let pp (x: StructuredText) =
    let rec go (x: StructuredText) =
      concat newline [
        for k, v in x.children |> Map.toArray do
          tprintf "- %s" k
          indent (go v)
      ]
    go x

let removeLabels (xs: Choice<FieldLike, Type> list) =
    xs |> List.map (function Choice2Of2 t -> Choice2Of2 t | Choice1Of2 fl -> Choice2Of2 fl.value)

let emitComments (comments: Comment list) : text list =
  // TODO
  []

let inline binding (f: (string -> string) -> CurrentScope -> Binding) : StructuredTextItem list =
  [Binding (fun renamer scope -> f (renamer.Rename "value") scope)]

let scopeToAttr (s: CurrentScope) attr =
  match s.scopeRev, s.jsModule with
  | [], None -> attr
  | [], Some m -> Attr.External.module_ (Some m) :: attr
  | sr, None -> Attr.External.scope (List.rev sr) :: attr
  | sr, Some m ->
    Attr.External.module_ (Some m) :: Attr.External.scope (List.rev sr) :: attr

let tryBindToCurrentScope (s: CurrentScope) attr =
  match s.scopeRev, s.jsModule with
  | [], None -> None
  | [], Some m      -> Some {| self = m; attr = Attr.External.module_ None :: attr |}
  | s :: [], None   -> Some {| self = s; attr = attr |}
  | s :: [], Some m -> Some {| self = s; attr = Attr.External.module_ (Some m) :: attr |}
  | s :: sr, None   -> Some {| self = s; attr = Attr.External.scope (List.rev sr) :: attr |}
  | s :: sr, Some m -> Some {| self = s; attr = Attr.External.module_ (Some m) :: Attr.External.scope (List.rev sr) :: attr |}

let func flags overrideFunc ctx (ft: FuncType<Type>) =
  Func (ft, [], ft.loc) |> emitTypeImpl flags overrideFunc ctx

let newableFunc flags overrideFunc ctx (ft: FuncType<Type>) =
  NewableFunc (ft, [], ft.loc) |> emitTypeImpl flags overrideFunc ctx

let extFunc flags overrideFunc ctx (ft: FuncType<Type>) =
  let c = classifyExternalFunction flags ft
  let ty = func c.flags overrideFunc ctx ft
  let attr =
    if c.needsWorkaround then None
    else Some [
      if c.isNullable then yield Attr.ExternalModifier.return_nullable
      if c.isVariadic then yield Attr.ExternalModifier.variadic
    ]
  ty, attr

let extValue flags overrideFunc ctx (t: Type) =
  let isNullable =
    match t with
    | Union u ->
      let u = ResolvedUnion.checkNullOrUndefined u
      u.hasNull || u.hasUndefined
    | _ -> false
  let flags = { flags with external = External.Return isNullable }
  let attr =
    if isNullable then [Attr.ExternalModifier.return_nullable]
    else []
  let ty = emitTypeImpl flags overrideFunc ctx t
  ty, attr

let rec emitMembers flags overrideFunc ctx (selfTy: Type) (isExportDefaultClass: bool) (ma: MemberAttribute) m =
  let emitType_ = emitTypeImpl flags overrideFunc

  let comments = emitComments ma.comments

  let inline extFunc ft = extFunc flags overrideFunc ctx ft
  let inline extValue t = extValue flags overrideFunc ctx t
  let inline func ft = func flags overrideFunc ctx ft
  let inline newableFunc ft = newableFunc flags overrideFunc ctx ft

  let createRawCall memberName isVariadic isNewable (args: Choice<FieldLike, Type> list) =
    let used =
      args |> List.choose (function Choice1Of2 f -> Some f.name | Choice2Of2 _ -> None)
           |> Set.ofList
    let rec rename s =
      if used |> Set.contains s |> not then s
      else rename (s + "_")
    let self = rename "t"
    let args =
      let rec go index acc = function
        | [] -> List.rev acc
        | Choice2Of2 _ :: rest ->
          let name = sprintf "arg%d" index |> rename
          go (index+1) ({| ml = str name; js = name |} :: acc) rest
        | Choice1Of2 { name = name; isOptional = isOptional' } :: rest ->
          let ml = if isOptional' then sprintf "~%s=?" name else "~" + name
          let js = name |> String.replace "'" "$p"
          go (index+1) ({| ml = str ml; js = js |} :: acc) rest
      go 1 [] args
    let body =
      let args =
        let args =
          args |> List.map (fun arg -> arg.js)
        if not isVariadic then String.concat ", " args
        else
          match List.rev args with
          | [] -> impossible "emitMembers_createValue"
          | last :: [] -> $"...{last}"
          | last :: rest -> sprintf "%s, ...%s" (rest |> List.rev |> String.concat ", ") last
      let body =
        match memberName with
        | Some m ->
          if Naming.isValidJSIdentifier m then sprintf "%s.%s(%s)" self m args
          else sprintf "%s[\"%s\"](%s)" self m args
        | None -> sprintf "%s(%s)" self args
      if isNewable then "new " + body else body
    let args = str self :: (args |> List.map (fun arg -> arg.ml))
    Term.arrow args (Term.raw body)

  let scopeToAttrIf isStatic s attrs =
    if isStatic then scopeToAttr s attrs else attrs

  match m with
  | Constructor ft ->
    let ty, attrs =
      let ft = { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy; loc = ft.loc }
      match extFunc ft with
      | ty, Some attrs -> ty, Attr.External.new_ :: attrs
      | _,  None ->
        newableFunc { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy; loc = ft.loc },
        Attr.External.val_ :: []
    binding (fun rename s ->
      let target, attrs =
        if isExportDefaultClass || List.isEmpty s.scopeRev then
          match s.jsModule with
          | Some m -> m, Attr.External.module_ None :: Attr.External.new_ :: attrs
          | None -> impossible "emitMembers_Constructor_ExportDefaultClass(%s)" ma.loc.AsString
        else
          match tryBindToCurrentScope s attrs with
          | None -> impossible "emitMembers_Constructor(%s)" ma.loc.AsString
          | Some x -> x.self, x.attr
      let attrs = attrs |> List.rev
      Binding.ext attrs comments (rename "make") ty target
    )
  | Newable (ft, _typrm) ->
    let ty = func { ft with args = Choice2Of2 PolymorphicThis :: ft.args; isVariadic = false }
    let value = createRawCall None ft.isVariadic true ft.args
    binding (fun rename _ -> Binding.let_ [] comments (rename "make") ty value)
  | Callable (ft, _typrm) ->
    let ty = func { ft with args = Choice2Of2 PolymorphicThis :: ft.args; isVariadic = false }
    let value = createRawCall None ft.isVariadic false ft.args
    binding (fun rename _ -> Binding.let_ [] comments (rename "apply") ty value)
  | Field ({ name = name; value = Func (ft, _typrm, _); isOptional = false }, _)
  | Method (name, ft, _typrm) ->
    let origName = name
    let ext ty attrs =
      binding (fun rename s -> Binding.ext (scopeToAttrIf ma.isStatic s attrs) comments (rename name |> Naming.valueName) ty origName)
    if ma.isStatic then
      match extFunc ft with
      | ty, Some attr -> ext ty (Attr.External.val_ :: attr)
      | ty, None -> ext ty (Attr.External.val_ :: [])
    else
      let ft = { ft with args = Choice2Of2 PolymorphicThis :: ft.args }
      match extFunc ft with
      | ty, Some attr -> ext ty (Attr.External.send :: attr)
      | _, None ->
        let ty = func { ft with args = Choice2Of2 PolymorphicThis :: ft.args; isVariadic = false }
        let value = createRawCall (Some name) ft.isVariadic false ft.args
        binding (fun rename _ -> Binding.let_ [] comments (rename name |> Naming.valueName) ty value)
  | Getter fl | Field (fl, ReadOnly) ->
    let origName = fl.name
    let name =
      match m with
      | Getter _ -> "get_" + fl.name
      | _ -> fl.name
    let ty = Member.getActualTypeOfFieldLike fl
    if ma.isStatic then
      let ty, attrs =
        let ty, attrs = extValue ty
        ty, Attr.External.val_ :: attrs
      binding (fun rename s -> Binding.ext (scopeToAttr s attrs) comments (rename name |> Naming.valueName) ty origName)
    else
      let ty, attrs =
        let args = [Choice2Of2 PolymorphicThis]
        let ty, attrs = extFunc { isVariadic = false; args = args; returnType = ty; loc = ma.loc }
        ty, Attr.External.get_ :: impossibleNone (fun () -> "emitMembers_Getter") attrs
      binding (fun rename _ -> Binding.ext attrs comments (rename name |> Naming.valueName) ty origName)
  | Setter fl | Field (fl, WriteOnly) ->
    let origName = fl.name
    if ma.isStatic then
      ctx.logger.warnf "writable global value or static setter '%s' is not supported in ReScript at %s" fl.name ma.loc.AsString
      []
    else
      let name =
        match m with
        | Setter _ -> "set_" + fl.name
        | _ -> fl.name
      let ty, attrs =
        let ty = Member.getActualTypeOfFieldLike fl
        let args =
          if ma.isStatic then [Choice2Of2 ty]
          else [Choice2Of2 PolymorphicThis; Choice2Of2 ty]
        let ty, attrs =
          extFunc { isVariadic = false; args = args; returnType = Prim Void; loc = ma.loc }
        ty, Attr.External.set_ :: impossibleNone (fun () -> "emitMembers_Setter") attrs
      binding (fun rename s -> Binding.ext (scopeToAttrIf ma.isStatic s attrs) comments (rename name |> Naming.valueName) ty origName)
  | Field (fl, Mutable) ->
    List.concat [
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Getter fl)
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Setter fl)
    ]
  | Indexer (ft, ReadOnly) ->
    let ty, attrs =
      let args = Choice2Of2 PolymorphicThis :: removeLabels ft.args
      extFunc { ft with args = args; isVariadic = false }
    let attrs = Attr.External.get_index :: impossibleNone (fun () -> "emitMembers_Indexer_Read") attrs
    binding (fun rename _ -> Binding.ext attrs comments (rename "get") ty "")
  | Indexer (ft, WriteOnly) ->
    let ty, attrs =
      let args = Choice2Of2 PolymorphicThis :: removeLabels ft.args @ [Choice2Of2 ft.returnType]
      let ret = Prim Void
      extFunc { ft with args = args; returnType = ret; isVariadic = false }
    let attrs = Attr.External.set_index :: impossibleNone (fun () -> "emitMembers_Indexer_Write") attrs
    binding (fun rename _ -> Binding.ext attrs comments (rename "set") ty "")
  | Indexer (ft, Mutable) ->
    List.concat [
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Indexer (ft, ReadOnly))
      emitMembers flags overrideFunc ctx selfTy isExportDefaultClass ma (Indexer (ft, WriteOnly))
    ]
  | SymbolIndexer (symbol, ft, _) ->
    let c =
      let ft = func ft
      tprintf "external [Symbol.%s]: " symbol + ft + tprintf " = \"[Symbol.%s]\"" symbol
    binding (fun _ _ -> Binding.unknown comments (Some c))
  | UnknownMember msgo ->
    binding (fun _ _ -> Binding.unknown comments (msgo |> Option.map str))

let emitTypeAliasesImpl
    (baseName: string)
    flags overrideFunc
    (ctx: Context)
    loc
    (typrms: TypeParam list)
    (target: text option)
    (lines: {| name: string; tyargs:(TypeParam * text) list; target: text option; isOverload: bool |} -> 'a list) =
  let emitType_ = emitTypeImpl flags overrideFunc
  let tyargs = typrms |> List.map (fun x -> tprintf "'%s" x.name)
  [
    yield! lines {| name = baseName; tyargs = List.zip typrms tyargs; target = target; isOverload = false |}
    let arities = getPossibleArity typrms
    let maxArity = List.length tyargs
    for arity in arities |> Set.toSeq |> Seq.sortDescending do
      if arity <> maxArity then
        let name = Naming.createTypeNameOfArity arity None baseName
        let tyargs' = List.take arity tyargs
        let typrms' = List.take arity typrms

        let bindings =
          createBindings (ctx.currentNamespace @ [name]) loc
            (typrms |> List.skip arity)
            (typrms |> List.skip arity |> List.map (fun t ->
              match t.defaultType with
              | None -> impossible "emitTypeAliases"
              | Some t -> t
            ))

        let target =
          Type.appOpt
            (str baseName)
            [
              for tyarg in tyargs' do yield tyarg
              for t in typrms |> List.skip arity do
                let t' = repeatUntilEquilibrium (substTypeVar bindings ctx) (TypeVar t.name)
                yield emitType_ ctx t'
            ]

        yield! lines {| name = name; tyargs = List.zip typrms' tyargs'; target = Some target; isOverload = true |}
  ]

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
  let ident = { name = [name]; fullName = [fn]; kind = Some (Set.ofList kind); parent = None; loc = s.loc; misc = IdentMiscData.Internal  }
  match s.isExported.AsExport ident with
  | None -> None
  | Some clause ->
    let prefix =
      match clause with
      | ES6DefaultExport _ -> "export default"
      | _ -> "export"
    Some (ExportItem.Export {| comments = []; clauses = [clause, Set.ofList kind]; loc = s.loc; origText = sprintf "%s %s %s" prefix kindString name |})

let addExportFromStatement ctx name kind kindString s current =
  match getExportFromStatement ctx name kind kindString s with
  | None -> current
  | Some e -> current |> set {| StructuredTextNode.empty with exports = [e] |}

type [<RequireQualifiedAccess>] ClassKind<'a, 'b, 'c> =
  | NormalClass of 'a
  | ExportDefaultClass of 'b
  | AnonymousInterface of 'c

let rec emitClass flags overrideFunc (ctx: Context) (current: StructuredText) (c: ClassOrAnonymousInterface) (additionalMembers: Context -> EmitTypeFlags -> OverrideFunc -> list<StructuredTextItem>, additionalKnownTypes: Set<KnownType>, forceScope: Scope option) =
  let emitType orf ctx ty = emitTypeImpl flags orf ctx ty

  let typrms = List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams
  let kind, selfTy, overrideFunc =
    match c.name with
    | Choice1Of2 (Name n) ->
      let k = ctx |> Context.getFullName [n]
      let ident = { name = [n]; fullName = [k]; kind = Some (Set.ofList Kind.OfClass); parent = None; loc = UnknownLocation; misc = IdentMiscData.Internal }
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
      | None -> impossible "emitClass_unknown_anonymousInterface"
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
    let typrms = List.map (fun (tp: TypeParam) -> tprintf "'%s" tp.name) c.typeParams
    let selfTyText = Type.appOpt (str "t") typrms
    let currentNamespace = innerCtx |> Context.getFullName []
    let inheritingTypes = c.implements |> List.map (getAllInheritancesAndSelf innerCtx) |> Set.unionMany

    let knownTypes =
      Set.unionMany [
        if innerCtx.options.subtyping |> List.contains Subtyping.CastFunction then
          yield! c.implements |> List.map (getKnownTypes innerCtx)
        else
          // We only need the type arguments of the inherited types
          yield!
            inheritingTypes
            |> Set.toList
            |> List.collect (function
              | InheritingType.KnownIdent x -> x.tyargs
              | InheritingType.UnknownIdent x -> x.tyargs
              | InheritingType.Prim (_, tyargs) -> tyargs
              | InheritingType.Other t -> [t])
            |> List.map (getKnownTypes innerCtx)

        yield
          c.members
          |> Seq.collect (snd >> findTypesInClassMember (knownTypeFinder innerCtx) ())
          |> Set.ofSeq

        yield!
          c.typeParams
          |> List.choose (fun c -> c.defaultType)
          |> List.map (getKnownTypes innerCtx)
      ] |> Set.union additionalKnownTypes

    let labels =
      match kind with
      | ClassKind.NormalClass _ ->
        getLabelsOfFullName flags overrideFunc innerCtx currentNamespace c.typeParams
      | ClassKind.ExportDefaultClass _ ->
        inheritingTypes |> getLabelsFromInheritingTypes flags overrideFunc innerCtx
      | ClassKind.AnonymousInterface _ -> []
    let emittedLabels = emitLabels innerCtx labels

    let useTags =
         not isAnonymous
      && innerCtx.options.subtyping |> List.contains Subtyping.Tag
      && not (List.isEmpty labels)

    let polymorphicThis =
      if useTags then
        Type.appOpt (str "this") (str "'tags" :: typrms)
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
        yield! emitMembers flags overrideFunc innerCtx selfTy isExportDefaultClass ma m
      yield! additionalMembers innerCtx flags overrideFunc
    ]

    let scope =
      match kind with
      | ClassKind.NormalClass _ -> forceScope |> Option.defaultValue Scope.Default
      | _ -> Scope.Ignore

    let comments = c.comments |> emitComments

    let tagsDefinition =
      if useTags && innerCtx.options.inheritWithTags.HasProvide then
        let alias =
          emitTypeAliasesImpl
            "tags" flags overrideFunc innerCtx c.loc c.typeParams (Some emittedLabels)
            (fun x -> [Statement.typeAlias false x.name (x.tyargs |> List.map snd) x.target])
          |> concat newline
        alias |> TypeAliasText |> Some
      else None

    let polymorphicThisDefinition =
      if useTags then
        let tags =
          getLabelOfFullName flags overrideFunc innerCtx currentNamespace c.typeParams
          |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
          |> emitLabelsBody innerCtx
          |> between "[> " " ]"
        Statement.typeAlias false "this"
          (str "'tags" :: typrms)
          (Type.intf (str "'tags") +@ " constraint 'tags = " + tags |> Some)
        |> TypeAliasText |> Some
      else None

    let typeDefinition =
      let fallback = {| ty = None; isRec = false |}
      let getSelfTyText (c: Class) =
        match c.name with
        | Name name ->
          assert (name = List.last innerCtx.currentNamespace)
          if innerCtx.options.subtyping |> List.contains Subtyping.Tag then
            if List.isEmpty labels then fallback
            else
              let isRec =
                labels |> List.exists (function
                  | Case (_, args) | TagType (_, args) ->
                    args |> List.contains (str "t")
                )
              {| ty = Type.intf emittedLabels |> Some; isRec = isRec |}
          else fallback
        | ExportDefaultUnnamedClass ->
          if List.isEmpty labels then fallback
          else {| ty = Type.intf emittedLabels |> Some; isRec = false |}
      let selfTyText =
        match kind with
        | ClassKind.NormalClass x -> getSelfTyText x.orig
        | ClassKind.ExportDefaultClass x -> getSelfTyText x.orig
        | ClassKind.AnonymousInterface _ -> fallback

      emitTypeAliasesImpl "t" flags overrideFunc innerCtx c.loc c.typeParams selfTyText.ty (fun x ->
        if not x.isOverload then
          [TypeDefText.Create(x.name, x.tyargs, x.target, isRec=selfTyText.isRec, comments=emitComments c.comments)]
        else
          [TypeAliasText (Statement.typeAlias false x.name (x.tyargs |> List.map snd) x.target)]
      )

    let castFunctions = [
      // add a generic cast function if tag is available
      if useTags then
        let castTy =
          Type.arrow [polymorphicThis] selfTyText
        yield! binding (fun _ _ -> Binding.cast [] "castFrom" castTy)

      if innerCtx.options.subtyping |> List.contains Subtyping.CastFunction then
        for parent in c.implements do
          let ty = Type.arrow [selfTyText] (emitType_ innerCtx parent)
          let parentName = getHumanReadableName innerCtx parent
          yield! binding (fun rename _ -> Binding.cast [] (rename $"as{parentName}") ty)
    ]

    let builder =
      let emitType_ ctx ty =
        emitTypeImpl { flags with needParen = true } overrideFunc ctx ty
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
        binding (fun rename _ -> Binding.builder (rename "make") fields selfTyText)

    let items = [
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
        if not c.isInterface || node.scope <> Scope.Ignore then Kind.OfClass
        else Kind.OfInterface
      getExportFromStatement ctx x.name kind (if c.isInterface then "interface" else "class") (Class x.orig)
    | _ -> None

  let addAsNode (name: string) =
    current
    |> add [name] node
    |> inTrie [name] (addAnonymousInterface flags ctx node.knownTypes)
    |> set {| StructuredTextNode.empty with exports = Option.toList export |}

  match kind with
  | ClassKind.NormalClass x -> addAsNode x.name
  | ClassKind.AnonymousInterface x -> addAsNode x.name
  | ClassKind.ExportDefaultClass _ ->
    current
    |> set {| StructuredTextNode.empty with exports = [ExportItem.DefaultUnnamedClass node] |}
    |> addAnonymousInterface flags ctx node.knownTypes

and addAnonymousInterfaceExcluding emitTypeFlags (ctx: Context) knownTypes ais (current: StructuredText) =
  knownTypes
  |> Seq.choose (function KnownType.AnonymousInterface (a, info) -> Some (a, info) | _ -> None)
  |> Seq.filter (fun (a, _) -> ais |> List.contains a |> not)
  |> Seq.fold (fun (current: StructuredText) (a, _) ->
    let shouldSkip =
      current.value
      |> Option.map (fun v -> v.anonymousInterfaces |> Set.contains a)
      |? false
    if shouldSkip then current
    else
      emitClass emitTypeFlags OverrideFunc.noOverride ctx current (a.MapName Choice2Of2) ((fun _ _ _ -> []), Set.empty, None)
      |> set {| StructuredTextNode.empty with anonymousInterfaces = Set.singleton a |}
  ) current
and addAnonymousInterface emitTypeFlags ctx knownTypes (current: StructuredText) = addAnonymousInterfaceExcluding emitTypeFlags ctx knownTypes [] current

let emitConstructor name attrs types =
  concat (str " ") [
    yield str "|"
    yield! attrs
    yield str name
    if List.isEmpty types |> not then
      yield between "(" ")" (concat (str ", ") types)
  ]

let getEnumCaseValue (ctx: Context) (e: Enum) (ec: EnumCase) =
  ec.value |> Option.defaultWith (fun () ->
    ctx.logger.errorf "error: the case '%s' of enum '%s' has an unknown value, which is not supported at %s"
      ec.name e.name ec.loc.AsString
  )

let emitEnum (ctx: Context) (current: StructuredText) (e: Enum) =
  let enumCaseToIdentifier (e: Enum) (ec: EnumCase) =
    let duplicateCases =
      e.cases |> List.filter (fun ec' -> ec.value = ec'.value)
    match duplicateCases with
    | [] -> impossible "enumCaseToIdentifier"
    | [ec'] ->
      assert (ec = ec')
      Naming.constructorName [ec.name]
    | ecs ->
      ecs |> List.map (fun ec -> ec.name) |> Naming.constructorName

  let distinctCases =
    e.cases
    |> List.map (fun ec -> enumCaseToIdentifier e ec, ec)
    |> List.distinctBy (fun (_, ec) -> ec.value)
    |> List.map (fun (key, ec) -> key, getEnumCaseValue ctx e ec)

  let childNode (ec: EnumCase) =
    EnumCaseText {| name = ec.name; comments = ec.comments  |}

  let parentNode =
    let casesText =
      newline + concat newline [
        for key, value in distinctCases do
          yield emitConstructor key [Attr.as_ (Term.literal value)] [] |> indent
      ]
    let item = TypeDefText.Create("t", [], Some casesText, shouldAssert=true, comments=emitComments e.comments)
    let items = item :: List.map childNode e.cases
    let comments = e.comments |> emitComments
    {| StructuredTextNode.empty with items = items; comments = comments |}

  let exports = getExportFromStatement ctx e.name Kind.OfEnum "enum" (Enum e)

  current
  |> add [e.name] parentNode
  |> set {| StructuredTextNode.empty with exports = Option.toList exports |}

let emitTypeAlias flags overrideFunc (ctx: Context) (current: StructuredText) (ta: TypeAlias) : StructuredText =
  let emitType = emitTypeImpl flags overrideFunc

  let comments = (ta :> ICommented<_>).getComments() |> emitComments
  let knownTypes = Statement.getKnownTypes ctx [TypeAlias ta]

  let items =
    let ctx = ctx |> Context.ofChildNamespace ta.name
    let isRec = knownTypes |> Set.contains (KnownType.Ident (ctx |> Context.getFullNameOfCurrentNamespace))
    let emitTypeAliases attrs shouldAssert target =
      emitTypeAliasesImpl "t" flags OverrideFunc.noOverride ctx ta.loc ta.typeParams (Some target) (fun x ->
        if not x.isOverload then
          [TypeDefText.Create (
            x.name, x.tyargs, x.target,
            isRec=isRec, attrs=attrs, shouldAssert=shouldAssert,
            comments=emitComments ta.comments
          )]
        else
          [TypeAliasText (Statement.typeAlias false x.name (x.tyargs |> List.map snd) x.target)]
      )
    let fallback () = emitTypeAliases [] false (emitType ctx ta.target)
    let renamer = new OverloadRenamer()
    let rename s = renamer.Rename "ctor" s
    let nameFromType t =
      Naming.constructorName [getHumanReadableName ctx t] |> rename

    match ta.target with
    | Union u -> // emit as variant if possible
      let ru = ResolvedUnion.resolve ctx u
      let isEnumOrUnboxed =
        ru.satisfies(hasDU=false, hasOther=false)
        && ru.typeofableTypes |> Set.contains Typeofable.BigInt |> not // not supported by res
        && ru.typeofableTypes |> Set.contains Typeofable.Symbol |> not // not supported by res

      let isTagged =
        ru.satisfies(hasDU=true, hasTypeofable=false, hasArray=false, hasOther=false)
        && Map.count ru.discriminatedUnions = 1
        && ru.discriminatedUnions |> Map.forall (fun _ -> Map.forall (fun _ -> function AnonymousInterface _ -> true | _ -> false))

      let commonCases () = [
        if ru.caseNull then
          yield emitConstructor (rename "Null") [Attr.as_ (str "null")] []
        if ru.caseUndefined then
          yield emitConstructor (rename "Undefined") [Attr.as_ (str "undefined")] []
        for e in ru.caseEnum do
          match e with
          | Choice1Of2 (e, ec, _) ->
            let value =
              ec.value |> Option.defaultWith (fun () ->
                ctx.logger.errorf "error: the case '%s' of enum '%s' has an unknown value, which is not supported at %s"
                  ec.name e.name ec.loc.AsString
              )
            yield
              emitConstructor
                (Naming.constructorName [ec.name] |> rename)
                [Attr.as_ (Term.literal value)]
                []
          | Choice2Of2 l ->
            yield emitConstructor (nameFromType (TypeLiteral l)) [Attr.as_ (Term.literal l)] []
      ]
      if isEnumOrUnboxed then
        let attrs =
          if Set.isEmpty ru.typeofableTypes && Option.isNone ru.caseArray then []
          else [Attr.Variant.unboxed]
        emitTypeAliases attrs true (
          newline + concat newline [
            yield! commonCases ()

            match ru.caseArray with
            | None -> ()
            | Some ts ->
              yield emitConstructor (rename "Array") [] [
                Type.app Type.array [emitType ctx (Union { types = Set.toList ts })]
              ]

            for t in ru.typeofableTypes do
              match t with
              | Typeofable.String  -> yield emitConstructor (rename "String") [] [Type.string]
              | Typeofable.Number  -> yield emitConstructor (rename "Number") [] [Type.number ctx.options]
              | Typeofable.Boolean -> yield emitConstructor (rename "Boolean") [] [Type.boolean]
              | _ -> ()
          ]
        )
      else if isTagged then
        fallback () // TODO: special case, or just contribute to res compiler for unboxed tagged union?
      else fallback ()
    | TypeLiteral l -> // emit as single-case variant
      emitTypeAliases [] true (
        emitConstructor (nameFromType (TypeLiteral l)) [Attr.as_ (Term.literal l)] []
      )
    | _ -> fallback ()

  let node = {| StructuredTextNode.empty with items = items; comments = comments; knownTypes = knownTypes |}
  current
  |> inTrie [ta.name] (set node)
  |> addExportFromStatement ctx ta.name Kind.OfTypeAlias "type" (TypeAlias ta)
  |> inTrie [ta.name] (addAnonymousInterface flags ctx knownTypes) 

let private createExternalForValue (ctx: Context) (rename: string -> string) (s: CurrentScope) attr comments name ty =
  let fallback () =
    Binding.ext (scopeToAttr s attr) comments (rename name |> Naming.valueName) ty name
  let jsModule () =
    match s.jsModule with
    | None -> impossible "createExternalForValue"
    | Some jsModule -> jsModule
  match ctx |> Context.getExportTypeOfName [name] with
  | None | Some (ExportType.Child _) | Some (ExportType.ES6 None) -> fallback ()
  | Some ExportType.CommonJS ->
    Binding.ext (Attr.External.module_ None :: attr) comments (rename name |> Naming.valueName) ty (jsModule ())
  | Some ExportType.ES6Default ->
    Binding.ext (scopeToAttr s attr) comments (rename name |> Naming.valueName) ty "default"
  | Some (ExportType.ES6 (Some renameAs)) ->
    Binding.ext (scopeToAttr s attr) comments (rename name |> Naming.valueName) ty renameAs

let rec emitFunction flags overrideFunc ctx (f: Function) =
  if functionNeedsWorkaround f.typ then
    emitVariable flags overrideFunc ctx
      { accessibility = f.accessibility; comments = f.comments; isExported = f.isExported;
        loc = f.loc; name = f.name; isConst = true; typ = Func (f.typ, [], f.loc) }
  else
    let inline extFunc ft = extFunc flags overrideFunc ctx ft
    let ty, attr = extFunc f.typ
    let attr = attr |> impossibleNone (fun () -> "emitFunction")
    let comments = emitComments f.comments
    binding (fun rename s -> createExternalForValue ctx rename s (Attr.External.val_ :: attr) comments f.name ty)

and emitVariable flags overrideFunc ctx (v: Variable) =
  match v.typ with
  | Func (ft, tps, _) when not (functionNeedsWorkaround ft) ->
    emitFunction flags overrideFunc ctx
      { accessibility = v.accessibility; comments = v.comments; isExported = v.isExported;
        loc = v.loc; name = v.name; typ = ft; typeParams = tps }
  | _ ->
    let emitType = emitTypeImpl flags
    let emitType_ = emitType overrideFunc
    let ty, attr = emitType_ ctx v.typ, [Attr.External.val_]
    let comments = emitComments v.comments
    binding (fun rename s -> createExternalForValue ctx rename s attr comments v.name ty)

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

  [ yield! emitComments i.comments |> List.map ImportText
    yield commentStr i.origText |> ImportText
    for c in i.clauses do
      yield! emitImportClause c]

let createStructuredText (rootCtx: Context) (stmts: Statement list) : StructuredText =
  let emitTypeFlags = EmitTypeFlags.defaultValue
  let overrideFunc = OverrideFunc.noOverride
  let emitType = emitTypeImpl emitTypeFlags
  let emitSelfType = emitTypeImpl emitTypeFlags overrideFunc

  /// convert interface members to appropriate statements
  let intfToStmts (moduleIntf: Class<_>) ctx flags overrideFunc =
    let inline extFunc ft = extFunc flags overrideFunc ctx ft
    let inline func ft = func flags overrideFunc ctx ft
    let inline newableFunc ft = newableFunc flags overrideFunc ctx ft
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
          let ty, attrs =
            match extFunc ft with
            | ty, Some attrs -> ty, Attr.External.new_ :: attrs
            | _,  None -> newableFunc ft, Attr.External.val_ :: []
          yield!
            binding (fun rename s ->
              let target, attrs =
                match tryBindToCurrentScope s attrs with
                | Some x -> x.self, x.attr
                | None -> impossible "intfToStmts_Newable(%s)" ma.loc.AsString
              let attrs = attrs |> List.rev
              Binding.ext attrs comments (rename "make") ty target
            )
        | Callable (ft, _tps) ->
          let ty, attrs =
            match extFunc ft with
            | ty, Some attrs -> ty, Attr.External.new_ :: attrs
            | _,  None -> func ft, Attr.External.val_ :: []
          yield!
            binding (fun rename s ->
              let target, attrs =
                match tryBindToCurrentScope s attrs with
                | Some x -> x.self, x.attr
                | None -> impossible "intfToStmts_Callable(%s)" ma.loc.AsString
              let attrs = attrs |> List.rev
              Binding.ext attrs comments (rename "apply") ty target
            )
        | Constructor _ -> impossible "emitStructuredDefinition_Pattern_intfToModule_Constructor" // because interface!
        | Indexer (ft, _) ->
          let ty = func ft
          yield! binding (fun _ _ -> Binding.unknown comments (Some ("unsupported indexer of type: " @+ ty)))
        | UnknownMember (Some msg) ->
          yield! binding (fun _ _ -> Binding.unknown comments (Some (str msg)))
        | SymbolIndexer _ | UnknownMember None -> () ]

  let rec folder ctx (current: StructuredText) (s: Statement) : StructuredText =
    let comments = (s :> ICommented<_>).getComments() |> emitComments

    let knownTypes () = Statement.getKnownTypes ctx [s]
    let addExport name kind kindString current =
      addExportFromStatement ctx name kind kindString s current
    let addAnonymousInterfaceWithKnownTypes knownTypes current = addAnonymousInterface emitTypeFlags ctx knownTypes current
    let addAnonymousInterface current = addAnonymousInterfaceWithKnownTypes (knownTypes ()) current
    let addAnonymousInterfaceExcludingWithKnownTypes knownTypes ais current = addAnonymousInterfaceExcluding emitTypeFlags ctx knownTypes ais current
    let addAnonymousInterfaceExcluding ais current = addAnonymousInterfaceExcludingWithKnownTypes (knownTypes ()) ais current

    match s with
    | Namespace m ->
      let module' =
        let node = {| StructuredTextNode.empty with comments = comments; scope = Scope.Default; knownTypes = knownTypes () |}
        let module' = current |> getTrie [m.name] |> set node
        let ctx = ctx |> Context.ofChildNamespace m.name
        m.statements |> List.fold (folder ctx) module'
      let current = current |> setTrie [m.name] module'
      match module'.value with
      | None -> current
      | Some _ -> current |> addExport m.name Kind.OfNamespace "namespace"
    | AmbientModule m ->
      let module' =
        let node = {| StructuredTextNode.empty with comments = comments; scope = Scope.Module m.name.unquoted; knownTypes = knownTypes () |}
        let module' = current |> getTrie [m.name.orig] |> set node
        let ctx = ctx |> Context.ofChildNamespace m.name.orig
        m.statements |> List.fold (folder ctx) module'
      current |> setTrie [m.name.orig] module'
    | Global m ->
      current |> inTrie ["global"] (fun g ->
        let node = {| StructuredTextNode.empty with scope = Scope.Global |}
        m.statements |> List.fold (folder ctx) (set node g)
      )
    | Class c ->
      emitClass emitTypeFlags OverrideFunc.noOverride ctx current (c.MapName Choice1Of2) ((fun _ _ _ -> []), Set.empty, None)
    | Enum e ->
      emitEnum ctx current e
    | TypeAlias ta ->
      emitTypeAlias emitTypeFlags overrideFunc ctx current ta
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
          {| StructuredTextNode.empty with items = items; scope = Scope.Path value.name; knownTypes = knownTypesInMembers; openTypesModule = false |}
        if knownTypesInMembers |> Set.contains (KnownType.Ident (ctx |> Context.getFullName [intfName])) then
          fallback current
        else
          current
          |> inTrie [value.name] (set (createModule ()))
          |> addExport value.name Kind.OfClass "interface"
          |> inTrie [value.name] addAnonymousInterface
      | ImmediateConstructor (baseIntf, ctorIntf, ctorValue) when Simplify.Has(ctx.options.simplify, Simplify.ImmediateConstructor) ->
        emitClass emitTypeFlags OverrideFunc.noOverride ctx current (baseIntf.MapName Choice1Of2) (intfToStmts ctorIntf, Statement.getKnownTypes ctx [Class ctorIntf], Some (Scope.Path ctorValue.name))
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
      let knownTypes = knownTypes ()
      let fallback current =
        let node =
          {| StructuredTextNode.empty with
              items = emitVariable emitTypeFlags overrideFunc ctx value
              knownTypes = knownTypes |}
        current
        |> set node
        |> addExport value.name Kind.OfValue (if value.isConst then "const" else "let")
        |> addAnonymousInterface
      let inline (|Dummy|) _ = []
      match value.typ with
      | AnonymousInterface intf when Simplify.Has(ctx.options.simplify, Simplify.AnonymousInterfaceValue) ->
        let items = intfToStmts intf (ctx |> Context.ofChildNamespace value.name) emitTypeFlags overrideFunc
        current
        |> inTrie [value.name]
          (set
            {| StructuredTextNode.empty with
                items = items
                scope = Scope.Path value.name
                knownTypes =
                  knownTypes |> Set.filter (function KnownType.AnonymousInterface (ai, _) -> ai.loc <> intf.loc | _ -> true)
                openTypesModule = false |})
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
            {| StructuredTextNode.empty with items = items; scope = Scope.Path value.name; knownTypes = knownTypesInMembers; openTypesModule = false |}
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
      current |> set {| StructuredTextNode.empty with items = [Comment cmt] |}
    | FloatingComment c ->
      let cmt = c.comments |> emitComments |> List.map Comment
      current |> set {| StructuredTextNode.empty with items = Comment empty :: cmt |}

  stmts |> List.fold (folder rootCtx) Trie.empty

type EmitModuleFlags = {|
  /// The module being emitted is a reserved one (e.g. `Export`)
  isReservedModule: bool
  jsModule: string option
  scopeRev: string list
|}

type EmitModuleResult = {|
  imports: text list
  /// The `Types` module
  types: text list
  /// The content of the `.res` file
  impl: text list
  /// The content of the `.resi` file
  intf: text list
  comments: text list
|}

module EmitModuleResult =
  let empty : EmitModuleResult =
    {| imports = []; types = []; impl = []; intf = []; comments = [] |}

let rec emitModule (dt: DependencyTrie<string>) flags (ctx: Context) st =
  let isLinear = ctx.options.noTypesModule || DependencyTrie.isLinear dt // compute only once
  let rec go (flags: EmitModuleFlags) (ctx: Context) (st: StructuredText) : EmitModuleResult =
    let renamer = new OverloadRenamer()
    let children =
      st.children
      |> Map.toList
      |> List.map (fun (k, v) ->
        let name =
          let name =
            if flags.isReservedModule then Naming.moduleNameReserved k
            else Naming.moduleName k
          name |> renamer.Rename "module"
        let scopeRev, jsModule =
          let overrideScope name =
            match ctx |> Context.getExportTypeOfName [name] with
            | None
            | Some (ExportType.Child _) -> name :: flags.scopeRev
            | Some ExportType.CommonJS -> []
            | Some (ExportType.ES6 None) -> [name]
            | Some ExportType.ES6Default -> ["default"]
            | Some (ExportType.ES6 (Some name)) -> [name]
          match v.value with
          | None -> k :: flags.scopeRev, flags.jsModule
          | Some v ->
            match v.scope with
            | Scope.Default  -> overrideScope k, flags.jsModule
            | Scope.Path p   -> overrideScope p, flags.jsModule
            | Scope.Module m -> [], Some m
            | Scope.Global   -> [], None
            | Scope.Ignore   -> flags.scopeRev, flags.jsModule
        let flags = {| flags with scopeRev = scopeRev; jsModule = jsModule |}
        let ctx = ctx |> Context.ofChildNamespace k
        let result = go flags ctx v
        let openTypesModule =
          if flags.isReservedModule then false
          else
            let hasTypeDefinitions = result.types |> List.isEmpty |> not
            v.value
            |> Option.map (fun v -> hasTypeDefinitions && v.openTypesModule)
            |> Option.defaultValue hasTypeDefinitions
        {| name = name; origName = k |}, openTypesModule, result)

    let items =
      let currentScope : CurrentScope = !!flags

      let emitEnumCase (e: {| name: string; comments: Comment list |}) =
        let moduleName = Naming.moduleName e.name
        let types =
          tprintf "module %s : " moduleName +@ "{ type nonrec t = t }"
        let intf = [
          yield str $"type nonrec t = t"
        ]
        let impl = [
          yield Statement.open_ moduleName
          yield str "type nonrec t = t"
        ]
        let m content = {| name = moduleName; origName = e.name; content = content; comments = emitComments e.comments |}
        {| types = types
           intf = Statement.moduleSig (m intf)
           impl = Statement.moduleVal (m (if isLinear then intf else impl))
        |}

      let emitTypeDefText (e: TypeDefText) =
        // TODO: emit comments
        let attrs = e.attrs |> List.map (fun x -> x +@ " ") |> join
        let actual = attrs + Statement.typeAlias e.isRec e.name (e.tyargs |> List.map snd) e.body
        let alias =
          let tmp =
            Statement.typeAlias false e.name (e.tyargs |> List.map snd)
              (Type.appOpt (str e.name) (e.tyargs |> List.map snd) |> Some)
          match e.body, e.shouldAssert with
          | _, false | None, _ -> tmp
          | Some b, true -> attrs + tmp +@ " = " + b
        {| types = actual; intf = actual; impl = alias |}

      let rec f = function
        | ImportText t -> ImportText t
        | TypeAliasText t -> TypeAliasText t
        | TypeDefText d -> TypeDefText (emitTypeDefText d)
        | Binding b -> Binding (b renamer currentScope)
        | EnumCaseText e -> EnumCaseText (emitEnumCase e)
        | Comment c -> Comment c
      match st.value with None -> [] | Some v -> v.items |> List.map f

    let imports =
      items |> List.choose (function ImportText t -> Some t | _ -> None)

    let types =
      if isLinear then []
      else
        let items =
          items |> List.choose (function
            | TypeDefText x | EnumCaseText x -> Some x.types
            | _ -> None)
        let children =
          children
          |> List.filter (fun (_, _, c) -> c.types |> List.isEmpty |> not)
          |> List.map (fun (k, _, c) -> {| k with content = c.imports @ c.types; comments = [] |})
          |> Statement.moduleSCC dt Statement.moduleSigRec Statement.moduleSigNonRec ctx
        children @ items

    let exports =
      st.value
      |> Option.map (fun m -> m.exports |> emitExportModule ctx)
      |> Option.defaultValue EmitModuleResult.empty

    let intf =
      let children =
        children
        |> List.filter (fun (_, _, c) -> c.intf |> List.isEmpty |> not)
        |> List.map (fun (k, _, c) ->
          let content = c.imports @ c.intf
          {| k with content = content; comments = c.comments |})
        |> Statement.moduleSigRec
      let typeDefs =
        items |> List.choose (function
          | TypeAliasText t -> Some t
          | TypeDefText x | EnumCaseText x -> Some x.intf
          | _ -> None)
      [
        yield! children
        yield! typeDefs
        for item in items do
          match item with
          | Binding b -> yield! Binding.emitForInterface b
          | Comment c -> yield c
          | _ -> ()
        yield! exports.intf
      ]

    let impl =
      let fixmeRecursiveModules (ms: TextModule list) =
        match ms with
        | [] -> []
        | [m] -> [Statement.moduleVal m]
        | _ when ctx.options.noTypesModule ->
          [ yield
              commentStr (
                sprintf "FIXME: start of recursive definitions (%s)"
                  (ms |> List.map (fun m -> m.name) |> String.concat ", ")
              )
            yield! Statement.moduleValMany ms
            yield commentStr "FIXME: end of recursive definitions" ]
        | _ -> Statement.moduleValMany ms

      let children =
        children
        |> List.filter (fun (_, _, c) -> c.impl |> List.isEmpty |> not)
        |> List.map (fun (k, openTypesModule, c) ->
          let content =
            if not isLinear && openTypesModule then
              Statement.open_ k.name :: c.imports @ c.impl
            else
              c.imports @ c.impl
          {| k with content = content; comments = c.comments |})
        |> Statement.moduleSCC dt fixmeRecursiveModules Statement.moduleValMany ctx
      let typeDefs =
        items |> List.choose (function
          | TypeAliasText t -> Some t
          | TypeDefText d -> if isLinear then Some d.types else Some d.impl
          | EnumCaseText x -> Some x.impl
          | _ -> None)
      [
        yield! children
        yield! typeDefs
        for item in items do
          match item with
          | Binding b -> yield! Binding.emitForImplementation b
          | Comment c -> yield c
          | _ -> ()
        yield! exports.impl
      ]

    let comments =
      match st.value with None -> [] | Some v -> v.comments

    {| imports = imports; types = types; intf = intf; impl = impl; comments = comments |}
  go flags ctx st

and emitExportModule (ctx: Context) (exports: ExportItem list) : EmitModuleResult =
  let emitModuleAlias name (i: Ident) =
    if i.kind |> Option.map Kind.generatesReScriptModule |> Option.defaultValue false then
      [ Statement.moduleAlias
          (name |> Naming.moduleNameReserved)
          (i.name |> Naming.structured Naming.moduleName) |> TypeAliasText ]
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
      go false (go' acc clauses) rest
    | ExportItem.ReExport export :: rest ->
      // TODO
      go isFirst acc rest

  let st = go true Trie.empty exports
  st |> emitModule Trie.empty {| isReservedModule = true; jsModule = None; scopeRev = [] |} ctx

let header = [
  str "@@uncurried"
  str "@@warning(\"-27-32-33-44\")"
]

let setTyperOptions (ctx: IContext<Options>) =
  ctx.options.inheritArraylike <- true
  ctx.options.inheritIterable <- true
  ctx.options.inheritPromiselike <- true
  ctx.options.replaceAliasToFunction <- false
  ctx.options.replaceNewableFunction <- false
  ctx.options.replaceRankNFunction <- true
  ctx.options.addAllParentMembersToClass <- true
  ctx.options.noExtendsInTyprm <- true

let emitTypes (types: text list) : text list =
  if List.isEmpty types then []
  else
    [
      Statement.moduleSigRec1 "Types" types
      Statement.open_ "Types"
    ]

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
      |> List.map Naming.jsModuleNameToReScriptModuleName
      |> List.map Statement.open_
    empty :: comments @ openRefs

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
        |> Option.map Naming.jsModuleNameToReScriptModuleName)
      |> List.map Statement.open_
    empty :: comments @ openRefs

let private emitImpl (sources: SourceFile list) (info: PackageInfo option) (ctx: IContext<Options>) =
  let moduleName =
    match ctx.options.name with
    | Some name -> name
    | None ->
      JsHelper.deriveModuleName info (sources |> List.map (fun s -> s.fileName))
      |> JsHelper.InferenceResult.unwrap "package"

  let outputBaseName =
    match ctx.options.name with
    | Some name -> name
    | None ->
      let inline log x =
        ctx.logger.tracef "* the inferred output file name is '%s.res'" x
        x
      JsHelper.deriveModuleName info (sources |> List.map (fun s -> s.fileName))
      |> JsHelper.InferenceResult.tryUnwrap
      |> Option.map (Naming.jsModuleNameToReScriptName >> log)
      |> Option.defaultWith (fun () ->
        ctx.logger.warnf "* the output file name cannot be inferred. 'output.res' is used instead."
        "output")

  let fileNames = sources |> List.map (fun s -> s.fileName)

  let info =
    match info with
    | Some info -> Ok info
    | None -> Error (Some moduleName)

  let sources, mergedFileName =
    match sources with
    | [] -> impossible "emitImpl (empty sources)"
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

  ctx.logger.tracef "* emitting a binding to '%s' for rescript..." moduleName
  let st = createStructuredText ctx stmts
  let flags : EmitModuleFlags =
    let jsModule =
      match ctx.options.``module`` with
      | ModuleKind.None -> None
      | ModuleKind.ES | ModuleKind.CJS -> Some moduleName
      | ModuleKind.Default ->
        let hasExport =
          ctx.info |> Map.exists (fun _ v -> v.exportMap |> Trie.isEmpty |> not)
        if hasExport then Some moduleName else None
    {| jsModule = jsModule; scopeRev = []; isReservedModule = false |}
  let dt = DependencyTrie.ofTrie (StructuredTextNode.getReferences ctx) st
  let m = emitModule dt flags ctx st

  let opens = [
    yield Statement.open_ "Js"
    yield Statement.open_ "Ts2ocaml"
    for src in sources do
      yield! emitReferenceTypeDirectives ctx src
      yield! emitReferenceFileDirectives ctx src
  ]

  let res =
    concat newline [
      yield! header
      yield! m.comments
      yield! opens
      yield! m.imports
      yield! emitTypes m.types
      yield! m.impl
    ]
  let resi =
    if ctx.options.resi then
      concat newline [
        yield! header
        yield! m.comments
        yield! opens
        yield! m.imports
        yield! m.intf
      ] |> Some
    else None

  { baseName = outputBaseName; resi = resi; res = res}

let emit (input: Input) (ctx: IContext<Options>) : Output list =
  if ctx.options.merge then
    [emitImpl input.sources input.info ctx]
  else
    input.sources
    |> List.map (fun source -> emitImpl [source] input.info ctx)
