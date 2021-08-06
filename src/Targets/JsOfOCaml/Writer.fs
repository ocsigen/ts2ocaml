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
  | Some i, None -> tprintf "AnonymousInterface%i.t" i
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

  let treatIdent { name = name; fullName = fno; loc = identLoc } (tyargs: Type list) (loc: Location) =
    let arity = List.length tyargs
    let withTyargs tyName =
      Type.appOpt (str tyName) (tyargs |> List.map (emitTypeImpl { flags with needParen = true; forceVariadic = false } overrideFunc ctx))
    match fno with
    | None ->
      let tyName = Naming.createTypeNameOfArity arity None "t"
      Naming.structured Naming.moduleName name + "." + tyName |> withTyargs
    | Some fn ->
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
          emitLabels labels
          |> List.singleton
          |> Type.app Type.intf

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
and emitLabels labels =
  let rec go firstCaseEmitted acc = function
    | [] -> acc
    | Case c :: rest ->
      if firstCaseEmitted then
        go firstCaseEmitted (acc + str " | " + c) rest
      else
        go true (acc + c) rest
    | TagType t :: rest ->
      if firstCaseEmitted then
        go firstCaseEmitted (acc + str " | " + comment t) rest
      else
        go true (acc + comment t) rest
  go false empty labels |> between "[" "]"

and getLabelsFromInheritingTypes (emitType_: TypeEmitter) (ctx: Context<Options>) (inheritingTypes: Set<InheritingType>) =
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
and getLabelsOfFullName emitType_ (ctx: Context<Options>) (fullName: string list) (typeParams: TypeParam list) =
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
type StructuredText = Trie<string, StructuredTextItem list>

let removeLabels (xs: Choice<FieldLike, Type> list) =
    xs |> List.map (function Choice2Of2 t -> Choice2Of2 t | Choice1Of2 fl -> Choice2Of2 fl.value)

let rec emitMembers (emitType_: TypeEmitter) ctx (name: string) (selfTy: Type) (ma: MemberAttribute) m = [
  match ma.comments with
  | [] -> ()
  | xs ->
    yield ScopeIndependent empty
    yield docComment (xs |> List.map emitComment |> concat newline) |> ScopeIndependent

  let inline overloaded (f: (string -> string) -> text list) =
    OverloadedText (fun renamer -> f (renamer.Rename "value"))

  match m with
  | Constructor (ft, typrm) ->
    let ty = Function { args = ft.args; isVariadic = ft.isVariadic; returnType = selfTy; loc = ft.loc } |> emitType_ ctx
    yield overloaded (fun rename -> [val_ (rename "create") ty + str " " + Attr.js_create])
  | New (ft, typrm) ->
    let ft = Function { ft with args = Choice2Of2 selfTy :: ft.args } |> emitType_ ctx
    yield overloaded (fun rename -> [val_ (rename "create") ft + str " " + Attr.js_apply true])
  | Field ({ name = name; value = Function ft }, _, typrm)
  | Method (name, ft, typrm) ->
    let ty, attr =
      if ma.isStatic then Function ft, Attr.js_global name
      else
        let ft = { ft with args = Choice2Of2 selfTy :: ft.args }
        Function ft, Attr.js_call name
    let ty = emitType_ ctx ty
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
    yield overloaded (fun rename -> [val_ ("set_" + Naming.removeInvalidChars fl.name |> rename) ty + str " " + Attr.js_set fl.name])
  | Field (fl, Mutable, _) ->
    yield! emitMembers emitType_ ctx name selfTy ma (Getter fl)
    yield! emitMembers emitType_ ctx name selfTy ma (Setter fl)
  | FunctionInterface (ft, _) ->
    let ft = Function { ft with args = Choice2Of2 selfTy :: ft.args } |> emitType_ ctx
    yield overloaded (fun rename -> [val_ (rename "apply") ft + str " " + Attr.js_apply false])
  | Indexer (ft, ReadOnly) ->
    let ft = Function { ft with args = Choice2Of2 selfTy :: removeLabels ft.args } |> emitType_ ctx
    yield overloaded (fun rename -> [val_ (rename "get") ft + str " " + Attr.js_index_get])
  | Indexer (ft, WriteOnly) ->
    let ft =
      Function {
        args = Choice2Of2 selfTy :: removeLabels ft.args @ [ Choice2Of2 ft.returnType ]
        isVariadic = false;
        returnType = Prim Void;
        loc = ft.loc
      } |> emitType_ ctx
    yield overloaded (fun rename -> [val_ (rename "set") ft + str " " + Attr.js_index_set])
  | Indexer (ft, Mutable) ->
    yield! emitMembers emitType_ ctx name selfTy ma (Indexer (ft, ReadOnly))
    yield! emitMembers emitType_ ctx name selfTy ma (Indexer (ft, WriteOnly))
  | UnknownMember msgo ->
    match msgo with
    | Some msg ->
      yield commentStr msg |> ScopeIndependent
    | None -> ()
]

let emitMappers ctx emitType tName (typrms: TypeParam list) =
  let t_ty =
    let t_ident =
      { name = [tName]; fullName = Some [tName]; loc = UnknownLocation }
    if List.isEmpty typrms then Ident t_ident
    else App (AIdent t_ident, typrms |> List.map (fun typrm -> TypeVar typrm.name), UnknownLocation)
  let ojs_t_ty = Ident { name = ["Ojs"; "t"]; fullName = Some ["Ojs"; "t"]; loc = UnknownLocation }
  let orf _emitType _ctx ty =
    match ty with
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
  ]

let emitClass flags overrideFunc (ctx: Context<_>) (current: StructuredText) (c: Class) (additionalMembers: TypeEmitter -> list<StructuredTextItem>) =
  let getModule name =
    match current |> Trie.getSubTrie [name] with
    | Some t -> t
    | None -> Trie.empty
  let setModule name trie = current |> Trie.replaceSubTrie [name] trie

  let typrms = List.map (fun (tp: TypeParam) -> TypeVar tp.name) c.typeParams
  let name, isAnonymous, selfTy, overrideFunc =
    match c.name with
    | Some n ->
      let k = List.rev (n :: ctx.currentNamespace)
      let ident = { name = [n]; fullName = Some k; loc = UnknownLocation }
      let selfTy =
        if List.isEmpty c.typeParams then Ident ident
        else App (AIdent ident, typrms, UnknownLocation)
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
            Some (Type.app (str "t") (ts |> List.map (_emitType _ctx)))
          | _ -> None
        sprintf "AnonymousInterface%d" i,
        true,
        selfTy,
        OverrideFunc.combine overrideFunc orf

  let overrideFunc =
    OverrideFunc.combine overrideFunc <|
      fun _emitType _ctx -> function
        | PolymorphicThis -> _emitType _ctx selfTy |> Some
        | _ -> None

  let ctx, innerCtx = (), ctx |> Context.ofChildNamespace name

  let emitType = emitTypeImpl flags
  let emitType_ = emitType overrideFunc

  let typrmsText = typrms |> List.map (emitType_ innerCtx)
  let selfTyText = Type.app (str "t") typrmsText

  let members = [
    for ma, m in c.members do
      yield! emitMembers emitType_ innerCtx name selfTy ma m
    yield! additionalMembers emitType_
  ]

  let inline overloaded (f: (string -> string) -> text list) =
    OverloadedText (fun renamer -> f (renamer.Rename "value"))

  let items = [
    yield! emitTypeAliases flags overrideFunc innerCtx c.typeParams selfTyText
    if not isAnonymous then
      let labels =
        getLabelsOfFullName emitType_ innerCtx (List.rev innerCtx.currentNamespace) c.typeParams
        |> function Choice1Of2 xs -> xs | Choice2Of2 (_, x) -> [x]
      yield typeAlias "tags" typrmsText (emitLabels labels) |> TypeDef

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

  getModule name |> Trie.setOrUpdate items List.append |> setModule name

let createStructuredText (rootCtx: Context<Options>) (stmts: Statement list) : StructuredText =
  let (|Dummy|) _ = []
  let emitTypeFlags = { EmitTypeFlags.defaultValue with skipAttributesOnContravariantPosition = true }
  let emitType = emitTypeImpl emitTypeFlags

  let rec folder ctx (current: StructuredText) (s: Statement) : StructuredText =
    let comments =
      match (s :> ICommented<_>).getComments() with
      | [] -> []
      | xs -> [empty; docComment (xs |> List.map emitComment |> concat newline)]
    let current =
      current |> Trie.setOrUpdate (comments |> List.map ScopeIndependent) List.append

    let getModule name =
      match current |> Trie.getSubTrie [name] with
      | Some t -> t
      | None -> Trie.empty
    let setModule name trie = current |> Trie.replaceSubTrie [name] trie
    let setItems items = current |> Trie.setOrUpdate items List.append

    match s with
    | Module m ->
      let module' =
        let module' = getModule m.name
        let innerCtx = ctx |> Context.ofChildNamespace m.name
        m.statements |> List.fold (folder innerCtx) module'
      setModule m.name module'
    | ClassDef c -> emitClass emitTypeFlags OverrideFunc.noOverride ctx current c (fun _ -> [])
    | EnumDef e -> failwith "TODO"
    | TypeAlias ta -> failwith "TODO"
    | Pattern p -> failwith "TODO"
    | Value v -> failwith "TODO"
    | Import i -> // TODO
      [commentStr (sprintf "%A" i) |> ImportText] |> setItems
    | Export _ -> current // nop
    | UnknownStatement u ->
      let cmt =
        match u.msg with
        | Some s -> commentStr s | None -> commentStr "unknown statement"
      [ScopeIndependent cmt] |> setItems
    | FloatingComment c ->
      let cmt = c.comments |> List.map (emitComment >> ScopeIndependent)
      (ScopeIndependent empty :: cmt) |> setItems

  stmts |> List.fold (folder rootCtx) Trie.empty

let rec emitStructuredText (st: StructuredText) : text =
  let modules = st.childs
  match st.value with
  | None -> failwith "TODO"
  | Some items ->
    let imports, typedefs, items =
      List.fold (fun (imports, typedefs, items) -> function
        | ImportText x -> (x :: imports, typedefs, items)
        | TypeDef x -> (imports, x :: typedefs, items)
        | ScopeIndependent x -> (imports, typedefs, Choice1Of2 x :: items)
        | OverloadedText f -> (imports, typedefs, Choice2Of2 f :: items)
      ) ([], [], []) items
    let imports = List.rev imports
    let typedefs = List.rev typedefs
    let items = List.rev items
    failwith "TODO"