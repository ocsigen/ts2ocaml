module Targets.ReScript.Common

open Ts2Ml

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  // code generator options
  abstract numberAsInt: bool with get, set
  abstract safeArity: FeatureFlag with get, set
  abstract readableNames: bool with get, set