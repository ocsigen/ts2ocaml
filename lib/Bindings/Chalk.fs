module Chalk

#nowarn "3390" // disable warnings for invalid XML comments

open System
open Fable.Core
open Fable.Core.JS

type ColorSupportLevel =
    | L0 = 0
    | L1 = 1
    | L2 = 2
    | L3 = 3

type ColorInfo = U2<ColorSupportLevel, bool>

type [<AllowNullLiteral>] ChalkInstance =
    [<Emit("$0($1...)")>] abstract draw: [<ParamArray>] text: obj[] -> string
    [<Emit("$0($1...)")>] abstract Item: [<ParamArray>] text: obj[] -> string
    /// <summary>
    /// The color support for Chalk.
    ///
    /// By default, color support is automatically detected based on the environment.
    ///
    /// Levels:
    /// - <c>0</c> - All colors disabled.
    /// - <c>1</c> - Basic 16 colors support.
    /// - <c>2</c> - ANSI 256 colors support.
    /// - <c>3</c> - Truecolor 16 million colors support.
    /// </summary>
    abstract level: ColorSupportLevel with get, set
    /// <summary>Use RGB values to set text color.</summary>
    /// <example>
    /// <code>
    /// import chalk from 'chalk';
    /// chalk.rgb(222, 173, 237);
    /// </code>
    /// </example>
    abstract rgb: float * float * float -> ChalkInstance
    /// <summary>Use HEX value to set text color.</summary>
    /// <param name="color">Hexadecimal value representing the desired color.</param>
    /// <example>
    /// <code>
    /// import chalk from 'chalk';
    /// chalk.hex('#DEADED');
    /// </code>
    /// </example>
    abstract hex: string -> ChalkInstance
    /// <summary>Use an <see href="https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit">8-bit unsigned number</see> to set text color.</summary>
    /// <example>
    /// <code>
    /// import chalk from 'chalk';
    /// chalk.ansi256(201);
    /// </code>
    /// </example>
    abstract ansi256: float -> ChalkInstance
    /// <summary>Use RGB values to set background color.</summary>
    /// <example>
    /// <code>
    /// import chalk from 'chalk';
    /// chalk.bgRgb(222, 173, 237);
    /// </code>
    /// </example>
    abstract bgRgb: float * float * float -> ChalkInstance
    /// <summary>Use HEX value to set background color.</summary>
    /// <param name="color">Hexadecimal value representing the desired color.</param>
    /// <example>
    /// <code>
    /// import chalk from 'chalk';
    /// chalk.bgHex('#DEADED');
    /// </code>
    /// </example>
    abstract bgHex: string -> ChalkInstance
    /// <summary>Use a <see href="https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit">8-bit unsigned number</see> to set background color.</summary>
    /// <example>
    /// <code>
    /// import chalk from 'chalk';
    /// chalk.bgAnsi256(201);
    /// </code>
    /// </example>
    abstract bgAnsi256: float -> ChalkInstance
    /// Modifier: Reset the current style.
    abstract reset: ChalkInstance
    /// Modifier: Make the text bold.
    abstract bold: ChalkInstance
    /// Modifier: Make the text have lower opacity.
    abstract dim: ChalkInstance
    /// Modifier: Make the text italic. *(Not widely supported)*
    abstract italic: ChalkInstance
    /// Modifier: Put a horizontal line below the text. *(Not widely supported)*
    abstract underline: ChalkInstance
    /// Modifier: Put a horizontal line above the text. *(Not widely supported)*
    abstract overline: ChalkInstance
    /// Modifier: Invert background and foreground colors.
    abstract inverse: ChalkInstance
    /// Modifier: Print the text but make it invisible.
    abstract hidden: ChalkInstance
    /// Modifier: Puts a horizontal line through the center of the text. *(Not widely supported)*
    abstract strikethrough: ChalkInstance
    /// Modifier: Print the text only when Chalk has a color level above zero.
    ///
    /// Can be useful for things that are purely cosmetic.
    abstract visible: ChalkInstance
    abstract black: ChalkInstance
    abstract red: ChalkInstance
    abstract green: ChalkInstance
    abstract yellow: ChalkInstance
    abstract blue: ChalkInstance
    abstract magenta: ChalkInstance
    abstract cyan: ChalkInstance
    abstract white: ChalkInstance
    abstract gray: ChalkInstance
    abstract grey: ChalkInstance
    abstract blackBright: ChalkInstance
    abstract redBright: ChalkInstance
    abstract greenBright: ChalkInstance
    abstract yellowBright: ChalkInstance
    abstract blueBright: ChalkInstance
    abstract magentaBright: ChalkInstance
    abstract cyanBright: ChalkInstance
    abstract whiteBright: ChalkInstance
    abstract bgBlack: ChalkInstance
    abstract bgRed: ChalkInstance
    abstract bgGreen: ChalkInstance
    abstract bgYellow: ChalkInstance
    abstract bgBlue: ChalkInstance
    abstract bgMagenta: ChalkInstance
    abstract bgCyan: ChalkInstance
    abstract bgWhite: ChalkInstance
    abstract bgGray: ChalkInstance
    abstract bgGrey: ChalkInstance
    abstract bgBlackBright: ChalkInstance
    abstract bgRedBright: ChalkInstance
    abstract bgGreenBright: ChalkInstance
    abstract bgYellowBright: ChalkInstance
    abstract bgBlueBright: ChalkInstance
    abstract bgMagentaBright: ChalkInstance
    abstract bgCyanBright: ChalkInstance
    abstract bgWhiteBright: ChalkInstance

/// <summary>
/// Main Chalk object that allows to chain styles together.
///
/// Call the last one as a method with a string argument.
///
/// Order doesn't matter, and later styles take precedent in case of a conflict.
///
/// This simply means that <c>chalk.red.yellow.green</c> is equivalent to <c>chalk.green</c>.
/// </summary>
let [<ImportDefault("chalk")>] chalk: ChalkInstance = jsNative
let [<Import("chalkStderr","chalk")>] chalkStderr: ChalkInstance = jsNative
let [<Import("supportsColor","chalk")>] supportsColor: ColorInfo = jsNative
let [<Import("supportsColorStderr","chalk")>] supportsColorStderr: ColorInfo = jsNative