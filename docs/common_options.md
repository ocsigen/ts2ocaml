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

## Logging Options

### `--verbose`

This enables verbose logging.

### `--no-warn`

This disables warning messages.
