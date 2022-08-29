#nowarn "20" "52"

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

let setup () =
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
      id
      "ts2ocaml.sln"

  Target.create "YarnInstall" <| fun _ ->
    Yarn.installFrozenLockFile id

  Target.create "Prepare" ignore

  Target.create "BuildForPublish" <| fun _ ->
    dotnetExec "fable" $"{srcDir} --sourceMaps --run webpack --mode=production"

  Target.create "BuildForTest" <| fun _ ->
    dotnetExec "fable" $"{srcDir} --sourceMaps --define DEBUG --run webpack --mode=development"

  Target.create "Build" ignore

  Target.create "Watch" <| fun _ ->
    dotnetExec "fable" $"watch {srcDir} --sourceMaps --define DEBUG --run webpack -w --mode=development"

  Target.create "Test" ignore

  "Clean" ?=> "Build"

  "Clean"
    ?=> "YarnInstall"
    ==> "Restore"
    ==> "Prepare"
    ?=> "Build"

  "Prepare"
    ?=> "BuildForTest"
    ?=> "BuildForPublish"
    ==> "Build"

  "Prepare"
    ?=> "Watch"

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
         "safe", !! "node_modules/@types/prop-types/index.d.ts", ["--rec-module=off"];
         "full", !! "node_modules/@types/react/index.d.ts" ++ "node_modules/@types/react/global.d.ts", ["--readable-names"];
         "full", !! "node_modules/@types/react-modal/index.d.ts", ["--readable-names"];

         // "safe" package which depends on another "safe" package
         "safe", !! "node_modules/@types/yargs-parser/index.d.ts", [];
         "safe", !! "node_modules/@types/yargs/index.d.ts", ["--rec-module=off"];

         "minimal", !! "node_modules/@types/vscode/index.d.ts", ["--readable-names"];
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

  module Res =
    let testDir = testDir </> "res"
    let outputDir = outputDir </> "test_res"
    let srcDir = testDir </> "src"
    let srcGeneratedDir = srcDir </> "generated"

    let clean () =
      !! $"{outputDir}/*"
      ++ $"{srcGeneratedDir}/generated/*.res"
      ++ $"{srcGeneratedDir}/generated/*.resi"
      |> Seq.iter Shell.rm

    let generateBindings () =
      Directory.create outputDir

      let ts2res args files =
        Yarn.exec (sprintf "ts2ocaml res %s" (String.concat " " (Seq.append args files))) id

      ts2res ["--verbose"; "--nowarn"; "--stdlib"; $"-o {outputDir}"] <|
        !! "node_modules/typescript/lib/lib.*.d.ts"

      let packages = [
         // "full" package involving a lot of inheritance
         "full", !! "node_modules/typescript/lib/typescript.d.ts", [];

         // "full" packages involving a lot of dependencies (which includes some "safe" packages)
         "safe", !! "node_modules/@types/scheduler/tracing.d.ts", [];
         "full", !! "node_modules/csstype/index.d.ts", [];
         "safe", !! "node_modules/@types/prop-types/index.d.ts", [];
         "full", !! "node_modules/@types/react/index.d.ts" ++ "node_modules/@types/react/global.d.ts", ["--readable-names"];
         "full", !! "node_modules/@types/react-modal/index.d.ts", ["--readable-names"];

         // "safe" package which depends on another "safe" package
         "safe", !! "node_modules/@types/yargs-parser/index.d.ts", [];
         "safe", !! "node_modules/@types/yargs/index.d.ts", [];

         "minimal", !! "node_modules/@types/vscode/index.d.ts", ["--safe-arity=full"; "--readable-names"];
      ]

      for preset, package, additionalOptions in packages do
        ts2res
          (["--verbose"; "--nowarn"; "--follow-relative-references";
            $"--preset {preset}"; $"-o {outputDir}"] @ additionalOptions)
          package

    let build () =
      Shell.mkdir srcGeneratedDir
      for file in outputDir |> Shell.copyRecursiveTo true srcGeneratedDir do
        printfn "* copied to %s" file
      // inDirectory testDir <| fun () -> dune "build"

  let setup () =
    Target.create "TestJsooClean" <| fun _ -> Jsoo.clean ()
    Target.create "TestJsooGenerateBindings" <| fun _ -> Jsoo.generateBindings ()
    Target.create "TestJsooBuild" <| fun _ -> Jsoo.build ()
    Target.create "TestJsoo" ignore

    "BuildForTest"
      ==> "TestJsooClean"
      ==> "TestJsooGenerateBindings"
      ==> "TestJsooBuild"
      ==> "TestJsoo"

    Target.create "TestResClean" <| fun _ -> Test.Res.clean ()
    Target.create "TestResGenerateBindings" <| fun _ -> Test.Res.generateBindings ()
    Target.create "TestResBuild" <| fun _ -> Test.Res.build ()
    Target.create "TestRes" ignore

    "BuildForTest"
      ==> "TestResClean"
      ==> "TestResGenerateBindings"
      ==> "TestResBuild"
      ==> "TestRes"

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
      String.getRegEx "\\(version ((?>.)*)\\)"

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

  let setup () =
    Target.create "Publish" <| fun _ -> ()

    Target.create "PublishNpm" <| fun _ ->
      Npm.updateVersion ()

    Target.create "PublishJsoo" <| fun _ ->
      Jsoo.copyArtifacts ()
      Jsoo.updateVersion ()
      Jsoo.testBuild ()

    "BuildForPublish"
      ==> "PublishNpm"
      ==> "PublishJsoo"
      ==> "Publish"

    "TestJsoo" ==> "PublishJsoo"

    "Build" ?=> "Test" ?=> "Publish"

// Utility targets

module Utility =
  let setup () =
    Target.create "UpdateBindings" <| fun _ -> BindingUpdater.run ()
    "Prepare" ==> "UpdateBindings"

[<EntryPoint>]
let main argv =
  // ensure working at the repository root
  Shell.cd (Path.combine __SOURCE_DIRECTORY__ "..")

  argv
  |> Array.toList
  |> Context.FakeExecutionContext.Create false "build.fsx"
  |> Context.RuntimeContext.Fake
  |> Context.setExecutionContext

  setup ()
  Test.setup ()
  Publish.setup ()
  Utility.setup ()

  Target.create "All" ignore
  "Prepare"
    ==> "Build"
    ==> "Test"
    ==> "Publish"
    ==> "All"

  // start build
  Target.runOrDefault "All"
  
  0
