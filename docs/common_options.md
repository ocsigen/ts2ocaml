Common Options
==============

## Configuration File

In addition to setting the options in command line, you can also use a JSON config file.

You should use `camelCase` key names. For example, if you want to set `--output-dir`, you should use `outputDir`.

```json
{
  "verbose": true,
  "outputDir": "src",
  "preset": "minimal"
}
```

## Parser Options

### `--follow-relative-references`

Follow and parse relative imports and file references.

If this option is enabled, ts2ocaml tries to find relative `import` statements or `/// <referench path="...">` directives, and add the referenced files to the input files. ts2ocaml repeats this until no new file is added.

> ts2ocaml will not follow package `import` statements and `/// <reference types="...">` directives.

## Output Options

### `--merge`

Merge multiple input definition files to one binding.

By default, ts2ocaml generates multiple bindings if multiple inputs are given.

If this option is enabled, ts2ocaml bundles all the input files and generates one single binding.

> This option may break relative imports. Use it with care.

## Logging Options

### `--verbose`

This enables verbose logging.

### `--no-warn`

This disables warning messages.
