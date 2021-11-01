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

// Build targets

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

Target.create "YarnInstall" <| fun _ ->
    Yarn.installFrozenLockFile (fun ``params`` ->
        { ``params`` with
            WorkingDirectory = "./" })

Target.create "Prepare" ignore

Target.create "BuildOnly" <| fun _ ->
    dotnetExec "fable" $"{srcDir} --sourceMaps --run webpack"

Target.create "Build" ignore

Target.create "Watch" <| fun _ ->
    dotnetExec "fable" $"watch {srcDir} --sourceMaps --define DEBUG --run webpack -w"

"Clean"
    ==> "YarnInstall"
    ==> "Restore"
    ==> "Prepare"
    ==> "Build"

"Prepare"
    ?=> "BuildOnly"
    ==> "Build"

"Prepare"
    ?=> "Watch"

// Test targets

module Test =
    let opamTool = platformTool "opam"
    let opam args = run opamTool "./" args
    let dune args = run opamTool "./" (sprintf "exec -- dune %s" args)

    module Jsoo =
        let testDir = testDir </> "jsoo"
        let outputDir = outputDir </> "test_jsoo"
        let srcDir = testDir </> "src"

        let generateBindings () =
            Directory.create outputDir

            let ts2ocaml args files =
                Yarn.exec (sprintf "ts2ocaml %s" (String.concat " " (Seq.append args files))) id

            ts2ocaml ["jsoo"; "--verbose"; "--nowarn"; "--stdlib"; $"-o {outputDir}"] <|
                !! "node_modules/typescript/lib/lib.*.d.ts"

            let packages = [
               // "full" package involving a lot of inheritance
               "full", !! "node_modules/typescript/lib/typescript.d.ts";

               // "full" packages involving a lot of dependencies (which includes some "safe" packages)
               "safe", !! "node_modules/@types/scheduler/tracing.d.ts";
               "full", !! "node_modules/csstype/index.d.ts";
               "safe", !! "node_modules/@types/prop-types/index.d.ts";
               "full", !! "node_modules/@types/react/index.d.ts" ++ "node_modules/@types/react/global.d.ts";
               "full", !! "node_modules/@types/react-modal/index.d.ts";

               // "safe" package which depends on another "safe" package
               "safe", !! "node_modules/@types/yargs-parser/index.d.ts";
               "safe", !! "node_modules/@types/yargs/index.d.ts";
            ]

            for preset, package in packages do
                ts2ocaml ["jsoo"; "--verbose"; "--nowarn"; $"--preset {preset}"; $"-o {outputDir}"] package

        let build () =
            for file in outputDir |> Shell.copyRecursiveTo true srcDir do
                printfn "* copied to %s" file
            Shell.cd testDir
            dune "build"

Target.create "TestJsooGenerateBindings" <| fun _ -> Test.Jsoo.generateBindings ()
Target.create "TestJsooBuild" <| fun _ -> Test.Jsoo.build ()
Target.create "TestJsoo" ignore

"BuildOnly"
    ==> "TestJsooGenerateBindings"
    ==> "TestJsooBuild"
    ==> "TestJsoo"

Target.create "Test" ignore
Target.create "TestOnly" ignore

"TestJsoo"
    ==> "TestOnly"
    ==> "Test"

"Build" ==> "Test"

// Deploy targets

let changelogFile = "CHANGELOG.md"
let changelog = Changelog.load changelogFile

module Deploy =
    let setPackageJson () =
        Yarn.exec $"version --new-version {changelog.LatestEntry.SemVer.AsString} --no-git-tag-version" id

// start build
Target.runOrDefault "Build"
