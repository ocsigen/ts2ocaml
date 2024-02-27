open RescriptCore

module Ts = Typescript.Export

let source = "let x: string = 'hello, world!'"

let result = Ts.transpileModule(
  ~input=source,
  ~transpileOptions=Ts.TranspileOptions.make(
    ~compilerOptions=Ts.CompilerOptions.make(~\"module"=CommonJS),
  ),
)

Console.log(result->Ts.TranspileOutput.get_outputText)
