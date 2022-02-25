// Note this only includes basic configuration for development mode.
// For a more comprehensive configuration check:
// https://github.com/fable-compiler/webpack-config-template

const webpack = require('webpack');

var CONFIG = {
  fsharpEntry: './src/Main.fs.js',
  outputDir: './dist',
}

var path = require("path");
var fs = require('fs');

console.log("Bundling for cli...");

var resolve = path.resolve;

var nodeModulesDir = resolve("node_modules");

var nodeExternals = {};
fs.readdirSync(nodeModulesDir)
  .filter(function(x) {
    return ['.bin'].indexOf(x) === -1;
  })
  .forEach(function(mod) {
    nodeExternals[mod] = 'commonjs ' + mod;
  });

module.exports = {
  target: "node",
  entry: CONFIG.fsharpEntry,
  externals: {
    typescript: "commonjs typescript",
    yargs: "commonjs yargs",
    'yargs-parser': "commonjs yargs-parser"
  },
  output: {
    path: path.join(__dirname, CONFIG.outputDir),
    filename: 'ts2ocaml.js'
  },
  module: {
    rules: [
      {
        resourceQuery: /raw/,
        type: 'asset/source'
      }
    ]
  },
  plugins: [
    new webpack.BannerPlugin({
      banner: "#!/usr/bin/env node",
      raw: true
    })
  ]
};
