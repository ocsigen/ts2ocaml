module Target.JsOfOCaml.Writer

open System
open Syntax
open Typer
open Typer.Type
open Text

open Target.JsOfOCaml.Common
open Target.JsOfOCaml.OCamlHelper

type ScriptTarget = TypeScript.Ts.ScriptTarget

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

let literalToIdentifier (ctx: Context<Options>) (l: Literal) : text =
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

let anonymousInterfaceToIdentifier (ctx: Context<Options>) (c: Class) : text =
  match ctx.anonymousInterfacesMap |> Map.tryFind c, c.name with
  | Some i, None -> tprintf "anonymous_interface_%i" i
  | None, None -> failwithf "the anonymous interface '%A' is not found in the context" c
  | _, Some n -> failwithf "the class or interface '%s' is not anonymous" n

type Variance = Covariant | Contravariant | Invariant with
  static member (~-) (v: Variance) =
    match v with
    | Covariant -> Contravariant
    | Contravariant -> Covariant
    | Invariant -> Invariant

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

type TypeEmitter = Context<Options> -> Type -> text

type OverrideFunc = TypeEmitter -> Context<Options> -> Type -> text option
module OverrideFunc =
  let inline noOverride _emitType _ctx _ty = None
  let inline combine (f1: OverrideFunc) (f2: OverrideFunc) : OverrideFunc =
    fun _emitType _ctx ty ->
      match f1 _emitType _ctx ty with
      | Some text -> Some text
      | None -> f2 _emitType _ctx ty

let rec emitTypeImpl (flags: EmitTypeFlags) (overrideFunc: OverrideFunc) (ctx: Context<Options>) (ty: Type) : text =
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

  let treatIdent { name = name; fullName = fno } (arity: int) (loc: Location) =
    let relativeName, maxArity =
      match fno with
      | None -> name, None
      | Some fn ->
        let relativeName = ctx |> Context.getRelativeNameTo fn
        let maxArity =
          FullName.tryLookupWith ctx fn (function
            | AliasName { typeParams = tps; erased = false }
            | ClassName { typeParams = tps } -> List.length tps |> Some
            | _ -> None
          )
        assert (relativeName = name)
        relativeName, maxArity
    let tyName = Naming.createTypeNameOfArity arity maxArity "t"
    str (Naming.structured Naming.moduleName relativeName + "." + tyName)

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
      | AIdent i -> treatIdent i (List.length ts) loc
      | APrim _ | AAnonymousInterface _ -> emit (Type.ofAppLeftHandSide t) ts
    | Ident i -> treatIdent i 0 i.loc
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

type Label =
  | Case of text
  | TagType of text

/// `Choice2Of2` when it is an alias to a non-JSable prim type.
let getLabelsOfFullName (ctx: Context<Options>) (fullName: string list) (typeParams: TypeParam list) =
  let emitType_ = emitTypeImpl { EmitTypeFlags.defaultValue with failContravariantTypeVar = true } OverrideFunc.noOverride

  let emitCase name args =
    match args with
    | [] -> str (Naming.constructorName name)
    | [arg] -> tprintf "%s of %A" (Naming.constructorName name) arg
    | _ -> tprintf "%s of %A" (Naming.constructorName name) (Type.tuple args)

  let normalClass () =
    [
      for e in getAllInheritancesAndSelfFromName ctx fullName do
        match e with
        | InheritingType.KnownIdent i ->
          yield str pv_head + emitCase i.fullName (i.tyargs |> List.map (emitType_ ctx)) |> Case
        | InheritingType.ImportedIdent i ->
          yield str (Naming.structured Naming.moduleName i.name + ".tags") |> TagType
        | InheritingType.UnknownIdent i ->
          yield str (Naming.structured Naming.moduleName i.name + ".tags") |> TagType
        | InheritingType.Prim (p, ts) ->
          match p.AsJSClassName with
          | Some name ->
            if List.isEmpty ts then
              yield tprintf "%s%s" pv_head name |> Case
            else
              yield str pv_head + emitCase [name] (ts |> List.map (emitType_ ctx)) |> Case
          | None -> ()
        | InheritingType.Other _ -> ()
    ]
  match fullName with
  | [name] when ctx.options.stdlib && Map.containsKey name Type.nonJsablePrimTypeInterfaces && typeParams |> List.isEmpty ->
    let prim = Type.nonJsablePrimTypeInterfaces |> Map.find name
    Choice2Of2 (prim, Case (tprintf "%s%s" pv_head name))
  | _ -> Choice1Of2 (normalClass ())

let emitMappers ctx emitType tName (typrms: TypeParam list) =
  let t_ty =
    let t_ident =
      { name = [tName]; fullName = Some [tName]; loc = UnknownLocation }
    if List.isEmpty typrms then Ident t_ident
    else App (AIdent t_ident, typrms |> List.map (fun typrm -> TypeVar typrm.name), UnknownLocation)
  let ojs_t_ty = Ident { name = ["Ojs"; "t"]; fullName = Some ["Ojs"; "t"]; loc = UnknownLocation }
  let orf _emitType _ctx ty =
    match ty with
    | App (AIdent { name = [n] }, ts, _) when n = tName ->
      Type.app (str tName) (List.map (_emitType _ctx) ts) |> Some
    | Ident { name = [n] } when n = tName -> Some (str tName)
    | Ident { name = ["Ojs"; "t"] } -> Some (str "Ojs.t")
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
    val_ (sprintf "%s_to_js" tName) (emitType_ ctx (funTy true))
    val_ (sprintf "%s_of_js" tName) (emitType_ ctx (funTy false))
  ]

let emitTypeAliases emitType_ ctx (typrms: TypeParam list) target =
  let emitType = emitTypeImpl { EmitTypeFlags.defaultValue with skipAttributesOnContravariantPosition = true }
  let tyargs = typrms |> List.map (fun x -> tprintf "'%s" x.name)
  [
    yield typeAlias "t" tyargs target
    yield! emitMappers ctx emitType "t" typrms
    let otherArities = getPossibleArity typrms |> Set.remove (List.length typrms)
    for arity in otherArities |> Set.toSeq |> Seq.sortDescending do
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
      yield typeAlias name tyargs' target
      yield! emitMappers ctx emitType name typrms'
  ]
