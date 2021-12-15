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

let rootDir = Path.getFullName "."
let srcDir = "./src"
let outputDir = "./output"
let distDir = "./dist"
let testDir = "./test"

let inDirectory dirName action =
  Shell.cd dirName
  action ()
  Shell.cd rootDir

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

let opamTool = platformTool "opam"
let opam args = run opamTool "./" args
let dune args = run opamTool "./" (sprintf "exec -- dune %s" args)

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
    { ``params`` with WorkingDirectory = "./" })

Target.create "Prepare" ignore

Target.create "BuildOnly" <| fun _ ->
  dotnetExec "fable" $"{srcDir} --sourceMaps --run webpack --mode=production"

Target.create "TestBuild" <| fun _ ->
  dotnetExec "fable" $"{srcDir} --sourceMaps --define DEBUG --run webpack --mode=development"

Target.create "Build" ignore

Target.create "Watch" <| fun _ ->
  dotnetExec "fable" $"watch {srcDir} --sourceMaps --define DEBUG --run webpack -w --mode=development"

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

"Prepare"
  ?=> "TestBuild"
  ?=> "BuildOnly"

// Test targets

module Test =
  module Jsoo =
    let testDir = testDir </> "jsoo"
    let outputDir = outputDir </> "test_jsoo"
    let srcDir = testDir </> "src"

    let clean () =
      !! $"{outputDir}/*"
      ++ $"{srcDir}/*.mli"
      ++ $"{srcDir}/stub.js"
      |> Seq.iter Shell.rm

    let generateBindings () =
      Directory.create outputDir

      let ts2ocaml args files =
        Yarn.exec (sprintf "ts2ocaml %s" (String.concat " " (Seq.append args files))) id

      ts2ocaml ["jsoo"; "--verbose"; "--nowarn"; "--stdlib"; $"-o {outputDir}"] <|
        !! "node_modules/typescript/lib/lib.*.d.ts"

      let packages = [
         // "full" package involving a lot of inheritance
         "full", !! "node_modules/typescript/lib/typescript.d.ts", [];

         // "full" packages involving a lot of dependencies (which includes some "safe" packages)
         "safe", !! "node_modules/@types/scheduler/tracing.d.ts", [];
         "full", !! "node_modules/csstype/index.d.ts", [];
         "safe", !! "node_modules/@types/prop-types/index.d.ts", [];
         "full", !! "node_modules/@types/react/index.d.ts" ++ "node_modules/@types/react/global.d.ts", [];
         "full", !! "node_modules/@types/react-modal/index.d.ts", [];

         // "safe" package which depends on another "safe" package
         "safe", !! "node_modules/@types/yargs-parser/index.d.ts", [];
         "safe", !! "node_modules/@types/yargs/index.d.ts", [];
      ]

      for preset, package, additionalOptions in packages do
        ts2ocaml
          (["jsoo"; "--verbose"; "--nowarn"; "--follow-relative-references";
            $"--preset {preset}"; $"-o {outputDir}"] @ additionalOptions)
          package

    let build () =
      for file in outputDir |> Shell.copyRecursiveTo true srcDir do
        printfn "* copied to %s" file
      inDirectory testDir <| fun () -> dune "build"

Target.create "TestJsooClean" <| fun _ -> Test.Jsoo.clean ()
Target.create "TestJsooGenerateBindings" <| fun _ -> Test.Jsoo.generateBindings ()
Target.create "TestJsooBuild" <| fun _ -> Test.Jsoo.build ()
Target.create "TestJsoo" ignore

"TestBuild"
  ==> "TestJsooClean"
  ==> "TestJsooGenerateBindings"
  ==> "TestJsooBuild"
  ==> "TestJsoo"

Target.create "Test" ignore
Target.create "TestOnly" ignore

"TestJsoo"
  ==> "TestOnly"
  ==> "Test"

"Build" ==> "Test"

// Publish targets

module Publish =
  let changelogFile = "CHANGELOG.md"
  let changelog = Changelog.load changelogFile
  let newVersion = changelog.LatestEntry.SemVer.AsString

  module Npm =
    let updateVersion () =
      Yarn.exec $"version --new-version {newVersion} --no-git-tag-version" id

  module Jsoo =
    let targetDir = "./dist_jsoo"
    let duneProject = targetDir </> "dune-project"

    let copyArtifacts () =
      let mliDir = outputDir </> "test_jsoo"
      let mlDir  = testDir </> "jsoo/_build/default/src"
      let targets = ["ts2ocaml_min"; "ts2ocaml_es"; "ts2ocaml_dom"; "ts2ocaml_webworker"]
      let targetDir = targetDir </> "src"
      for target in targets do
        Shell.rm (targetDir </> $"{target}.mli")
        Shell.copyFile targetDir (mliDir </> $"{target}.mli")
        Shell.rm (targetDir </> $"{target}.ml")
        Shell.copyFile targetDir (mlDir </> $"{target}.ml")

    let versionRegex =
      String.getRegEx "\\(version ((?>\\w\\.)*\\w)\\)"

    let updateVersion () =
      duneProject |> File.applyReplace (fun content ->
        let result = versionRegex.Match content
        if result.Success then
          let oldVersion = result.Groups.[1].Value
          if oldVersion <> newVersion then
            printfn $"* updating version in dist_jsoo/dune-project from '{oldVersion}' to '{newVersion}'."
            content |> String.replace result.Value $"(version {newVersion})"
          else
            printfn $"* version in dist_jsoo/dune-project not updated ('{newVersion}')."
            content
        else content
      )

    let testBuild () =
      inDirectory targetDir <| fun () -> dune "build"

Target.create "Publish" <| fun _ -> ()
Target.create "PublishOnly" <| fun _ -> ()

Target.create "PublishNpm" <| fun _ ->
  Publish.Npm.updateVersion ()

Target.create "PublishJsoo" <| fun _ ->
  Publish.Jsoo.copyArtifacts ()
  Publish.Jsoo.updateVersion ()
  Publish.Jsoo.testBuild ()

"BuildOnly"
  ==> "PublishNpm"
  ==> "PublishJsoo"
  ==> "PublishOnly"
  ==> "Publish"

"TestJsoo" ==> "PublishJsoo"

"Build" ==> "Publish"

Target.create "All" ignore

"Build"
  ==> "Test"
  ==> "Publish"
  ==> "All"

// start build
Target.runOrDefault "Build"
