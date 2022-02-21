module Targets.ReScript.Writer

open Ts2Ml
open Syntax
open Typer
open Typer.Type
open DataTypes
open DataTypes.Text

open Targets.ReScript.Common
open Targets.ReScript.ReScriptHelper

type ScriptTarget = TypeScript.Ts.ScriptTarget

type State = {
  fileNames: string list
  info: Result<PackageInfo, string option>
}
module State =
  let create fileNames info : State =
    { fileNames = fileNames
      info = info }

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

let classifyExternalFunction (f: FuncType<Type>) =
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
  let flags = { EmitTypeFlags.defaultValue with external = External.Root(isVariadic, isNullable) }
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
      let name = Naming.flattenedTypeName fn.name
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