module Targets.ReScript.Common

type Options =
  inherit GlobalOptions
  inherit Typer.TyperOptions
  // code generator options
  abstract numberAsInt: bool with get, set
  abstract safeArity: FeatureFlag with get, set