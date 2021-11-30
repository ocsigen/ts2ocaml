// ts2fable 0.7.1
module rec YargsParser
open System
open Fable.Core
open Fable.Core.JS

type Array<'T> = System.Collections.Generic.IList<'T>
type Error = System.Exception

let [<Import("yargsParser","yargs-parser")>] yargsParser: Parser = jsNative

type [<AllowNullLiteral>] Arguments =
    /// Non-option arguments
    abstract ``_``: ResizeArray<string> with get, set
    /// The script name or node command
    abstract ``$0``: string with get, set
    /// All remaining options
    [<Emit "$0[$1]{{=$2}}">] abstract Item: argName: string -> obj option with get, set

type [<AllowNullLiteral>] DetailedArguments =
    /// An object representing the parsed value of `args`
    abstract argv: Arguments with get, set
    /// Populated with an error object if an exception occurred during parsing.
    abstract error: Error option with get, set
    /// The inferred list of aliases built by combining lists in opts.alias.
    abstract aliases: DetailedArgumentsAliases with get, set
    /// Any new aliases added via camel-case expansion.
    abstract newAliases: DetailedArgumentsNewAliases with get, set
    /// The configuration loaded from the yargs stanza in package.json.
    abstract configuration: Configuration with get, set

type [<AllowNullLiteral>] Configuration =
    /// Should variables prefixed with --no be treated as negations? Default is `true`
    abstract ``boolean-negation``: bool with get, set
    /// Should hyphenated arguments be expanded into camel-case aliases? Default is `true`
    abstract ``camel-case-expansion``: bool with get, set
    /// Should arrays be combined when provided by both command line arguments and a configuration file. Default is `false`
    abstract ``combine-arrays``: bool with get, set
    /// Should keys that contain . be treated as objects? Default is `true`
    abstract ``dot-notation``: bool with get, set
    /// Should arguments be coerced into an array when duplicated. Default is `true`
    abstract ``duplicate-arguments-array``: bool with get, set
    /// Should array arguments be coerced into a single array when duplicated. Default is `true`
    abstract ``flatten-duplicate-arrays``: bool with get, set
    /// Should arrays consume more than one positional argument following their flag. Default is `true`
    abstract ``greedy-arrays``: bool with get, set
    /// Should nargs consume dash options as well as positional arguments. Default is `false`
    abstract ``nargs-eats-options``: bool with get, set
    /// Should parsing stop at the first text argument? This is similar to how e.g. ssh parses its command line. Default is `false`
    abstract ``halt-at-non-option``: bool with get, set
    /// The prefix to use for negated boolean variables. Default is `'no-'`
    abstract ``negation-prefix``: string with get, set
    /// Should keys that look like numbers be treated as such? Default is `true`
    abstract ``parse-numbers``: bool with get, set
    /// Should positional keys that look like numbers be treated as such? Default is `true`
    abstract ``parse-positional-numbers``: bool with get, set
    /// Should unparsed flags be stored in -- or _. Default is `false`
    abstract ``populate--``: bool with get, set
    /// Should a placeholder be added for keys not set via the corresponding CLI argument? Default is `false`
    abstract ``set-placeholder-key``: bool with get, set
    /// Should a group of short-options be treated as boolean flags? Default is `true`
    abstract ``short-option-groups``: bool with get, set
    /// Should aliases be removed before returning results? Default is `false`
    abstract ``strip-aliased``: bool with get, set
    /// Should dashed keys be removed before returning results? This option has no effect if camel-case-expansion is disabled. Default is `false`
    abstract ``strip-dashed``: bool with get, set
    /// Should unknown options be treated like regular arguments? An unknown option is one that is not configured in opts. Default is `false`
    abstract ``unknown-options-as-args``: bool with get, set

type [<AllowNullLiteral>] Options =
    /// An object representing the set of aliases for a key: `{ alias: { foo: ['f']} }`.
    abstract alias: OptionsAlias option with get, set
    /// Indicate that keys should be parsed as an array: `{ array: ['foo', 'bar'] }`.
    /// Indicate that keys should be parsed as an array and coerced to booleans / numbers:
    /// { array: [ { key: 'foo', boolean: true }, {key: 'bar', number: true} ] }`.
    abstract array: U2<ResizeArray<string>, Array<OptionsArrayArray>> option with get, set
    /// Arguments should be parsed as booleans: `{ boolean: ['x', 'y'] }`.
    abstract boolean: ResizeArray<string> option with get, set
    /// Indicate a key that represents a path to a configuration file (this file will be loaded and parsed).
    abstract config: U3<string, ResizeArray<string>, OptionsConfig> option with get, set
    /// Provide configuration options to the yargs-parser.
    abstract configuration: obj option with get, set
    /// Provide a custom synchronous function that returns a coerced value from the argument provided (or throws an error), e.g.
    /// `{ coerce: { foo: function (arg) { return modifiedArg } } }`.
    abstract coerce: OptionsCoerce option with get, set
    /// Indicate a key that should be used as a counter, e.g., `-vvv = {v: 3}`.
    abstract count: ResizeArray<string> option with get, set
    /// Provide default values for keys: `{ default: { x: 33, y: 'hello world!' } }`.
    abstract ``default``: OptionsDefault option with get, set
    /// Environment variables (`process.env`) with the prefix provided should be parsed.
    abstract envPrefix: string option with get, set
    /// Specify that a key requires n arguments: `{ narg: {x: 2} }`.
    abstract narg: OptionsNarg option with get, set
    /// `path.normalize()` will be applied to values set to this key.
    abstract normalize: ResizeArray<string> option with get, set
    /// Keys should be treated as strings (even if they resemble a number `-x 33`).
    abstract string: ResizeArray<string> option with get, set
    /// Keys should be treated as numbers.
    abstract number: ResizeArray<string> option with get, set

type [<AllowNullLiteral>] Parser =
    [<Emit "$0($1...)">] abstract Invoke: argv: U2<string, ResizeArray<string>> * ?opts: Options -> Arguments
    abstract detailed: argv: U2<string, ResizeArray<string>> * ?opts: Options -> DetailedArguments

type [<AllowNullLiteral>] DetailedArgumentsAliases =
    [<Emit "$0[$1]{{=$2}}">] abstract Item: alias: string -> ResizeArray<string> with get, set

type [<AllowNullLiteral>] DetailedArgumentsNewAliases =
    [<Emit "$0[$1]{{=$2}}">] abstract Item: alias: string -> bool with get, set

type [<AllowNullLiteral>] OptionsAlias =
    [<Emit "$0[$1]{{=$2}}">] abstract Item: key: string -> U2<string, ResizeArray<string>> with get, set

type [<AllowNullLiteral>] OptionsArrayArray =
    abstract key: string with get, set
    abstract boolean: bool option with get, set
    abstract number: bool option with get, set

type [<AllowNullLiteral>] OptionsConfig =
    [<Emit "$0[$1]{{=$2}}">] abstract Item: key: string -> bool with get, set

type [<AllowNullLiteral>] OptionsCoerce =
    [<Emit "$0[$1]{{=$2}}">] abstract Item: key: string -> (obj option -> obj option) with get, set

type [<AllowNullLiteral>] OptionsDefault =
    [<Emit "$0[$1]{{=$2}}">] abstract Item: key: string -> obj option with get, set

type [<AllowNullLiteral>] OptionsNarg =
    [<Emit "$0[$1]{{=$2}}">] abstract Item: key: string -> float with get, set
