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

let changelogFile = "CHANGELOG.md"
let changelog = Changelog.load changelogFile

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

Target.create "YarnInstall" <| fun _ ->
    Yarn.installFrozenLockFile (fun ``params`` ->
        { ``params`` with
            WorkingDirectory = "./" })

Target.create "Prepare" ignore

Target.create "BuildOnly" <| fun _ ->
    dotnetExec "fable" $"{srcDir} --sourceMaps --run webpack"

Target.create "Build" ignore
Target.create "BuildNoClean" ignore

Target.create "Watch" <| fun _ ->
    dotnetExec "fable" $"watch {srcDir} --sourceMaps --define DEBUG --run webpack -w"

module Deploy =
    let appendSheBang () =
        let binFile = Path.combine outputDir "ts2ocaml.js"
        let content = File.readWithEncoding System.Text.Encoding.UTF8 binFile
        let newContent =
            Seq.concat [
                Seq.singleton "#!/usr/bin/env node"
                content
            ]
        File.writeWithEncoding System.Text.Encoding.UTF8 false binFile newContent

    let setPackageJson () =
        Yarn.exec $"version --new-version {changelog.LatestEntry.SemVer.AsString} --no-git-tag-version" id

module Test =
    let opamTool = platformTool "opam"
    let opam args = run opamTool "./" args
    let dune args = run opamTool "./" (sprintf "exec -- dune %s" args)

    let generateBindings () =
        let ts2ocaml args files =
            Yarn.exec (sprintf "ts2ocaml %s" (String.concat " " (Seq.append args files))) id

        ts2ocaml ["jsoo"; "-v"; "--nowarn"; "--stdlib"; $"-o {outputDir}"] <|
            !! "node_modules/typescript/lib/lib.*.d.ts"

        let packages = [
            !! "node_modules/typescript/lib/typescript.d.ts";
            !! "node_modules/@types/scheduler/tracing.d.ts";
            !! "node_modules/csstype/index.d.ts";
            !! "node_modules/@types/prop-types/index.d.ts";
            !! "node_modules/@types/react/index.d.ts" ++ "node_modules/@types/react/global.d.ts";
            !! "node_modules/@types/react-modal/index.d.ts";
            !! "node_modules/@types/yargs-parser/index.d.ts";
            !! "node_modules/@types/yargs/index.d.ts";
        ]

        for package in packages do
            ts2ocaml ["jsoo"; "-v"; "--nowarn"; $"-o {outputDir}"; "--simplify=all"] package

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
Target.create "TestOnly" ignore
Target.create "TestNoClean" ignore
Target.create "Test" ignore

// Build order

"Clean"
    ==> "YarnInstall"
    ==> "Restore"
    ==> "Prepare"
    ==> "Build"

"Prepare"
    ?=> "BuildOnly"
    ==> "BuildNoClean"
    ==> "Build"

"Prepare"
    ?=> "Watch"

"BuildOnly"
    ==> "TestClean"
    ==> "TestGenerateBindings"
    ==> "TestPrepare"
    ?=> "TestBuild"
    ==> "TestOnly"
    ==> "TestNoClean"
    ==> "Test"

"Prepare"
    ==> "Test"

"TestPrepare"
    ==> "TestNoClean"
    ==> "Test"

// start build
Target.runOrDefault "Build"
