#r "paket:
nuget Fake.DotNet.Cli
nuget Fake.DotNet.Paket
nuget Fake.Core.Target
nuget Fake.Core.Process
nuget Fake.Core.String
nuget Fake.Core.ReleaseNotes
nuget Fake.IO.FileSystem
nuget Fake.Tools.Git
nuget Fake.JavaScript.Yarn
//"
#load ".fake/build.fsx/intellisense.fsx"

#nowarn "52"

open Fake.Core
open Fake.Core.TargetOperators
open Fake.DotNet
open Fake.IO
open Fake.IO.Globbing.Operators
open Fake.IO.FileSystemOperators
open Fake.JavaScript

let srcDir = "./src"
let outputDir = "./output"
let distDir = "./dist"
let testDir = "./test"
let testSrcDir = Path.combine testDir "src"

let run cmd dir args =
    let result =
        CreateProcess.fromRawCommandLine cmd args
        |> CreateProcess.withWorkingDirectory dir
        |> Proc.run
    if result.ExitCode <> 0 then
        failwithf "Error while running '%s' with args: %s " cmd args

let platformTool tool =
    ProcessUtils.tryFindFileOnPath tool
    |> function Some t -> t | _ -> failwithf "%s not found" tool

let dotnetExec cmd args =
    let result = DotNet.exec id cmd args
    if not result.OK then
        failwithf "Error while running 'dotnet %s %s'" cmd args

Target.create "Clean" <| fun _ ->
    !! "src/bin"
    ++ "src/obj"
    ++ distDir
    ++ "src/.fable"
    |> Seq.iter Shell.cleanDir

    !! "src/**/*fs.js"
    ++ "src/**/*fs.js.map"
    |> Seq.iter Shell.rm

Target.create "Restore" <| fun _ ->
    DotNet.restore
        (DotNet.Options.withWorkingDirectory __SOURCE_DIRECTORY__)
        "ts2ocaml.sln"

Target.create "YarnInstall" <| fun _ -> Yarn.install id

Target.create "Prepare" ignore

Target.create "Build" <| fun _ ->
    dotnetExec "fable" $"{srcDir} --sourceMaps --run webpack"

Target.create "Watch" <| fun _ ->
    dotnetExec "fable" $"watch {srcDir} --sourceMaps --define DEBUG --run webpack -w"

module Test =
    let duneTool = platformTool "dune"
    let dune args = run duneTool "./" args

    let generateBindings () =
        let ts2ocaml args files =
            Yarn.exec (sprintf "ts2ocaml %s" (String.concat " " (Seq.append args files))) id

        ts2ocaml ["jsoo"; "-v"; "--nowarn"; "--stdlib"; $"-o {outputDir}"] <|
            !! "node_modules/typescript/lib/lib.*.d.ts"

        let packages = [
            !! "node_modules/typescript/lib/typescript.d.ts";
            !! "node_modules/@types/scheduler/tracing.d.ts";
            !! "node_modules/csstype/index.d.ts";
            !! "node_modules/@types/react/index.d.ts" ++ "node_modules/@types/react/global.d.ts";
            !! "node_modules/@types/react-modal/index.d.ts";
            !! "node_modules/@types/yargs-parser/index.d.ts";
            !! "node_modules/@types/yargs/index.d.ts";
        ]

        for package in packages do
            ts2ocaml ["jsoo"; "-v"; "--nowarn"; $"-o {outputDir}"; "--simplify-immediate-instance"; "--simplify-immediate-constructor"] package

    let prepare () =
        for file in outputDir |> Shell.copyRecursiveTo true testSrcDir do
            printfn "* copied to %s" file

    let build () =
        Shell.cd testDir
        dune "build"

Target.create "TestClean" <| fun _ -> Shell.cleanDir outputDir
Target.create "TestGenerateBindings" <| fun _ -> Test.generateBindings ()
Target.create "TestPrepare" <| fun _ -> Test.prepare ()
Target.create "TestBuild" <| fun _ -> Test.build ()

// Build order

"Clean"
    ==> "Restore"
    ==> "Prepare"

"Clean"
    ==> "YarnInstall"
    ==> "Prepare"

"Prepare"
    ==> "Build"
    ==> "TestGenerateBindings"

"Prepare"
    ==> "Watch"

"TestClean"
    ==> "TestGenerateBindings"
    ==> "TestPrepare"
    ==> "TestBuild"

// start build
Target.runOrDefault "Build"
