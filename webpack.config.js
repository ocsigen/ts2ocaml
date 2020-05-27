// Note this only includes basic configuration for development mode.
// For a more comprehensive configuration check:
// https://github.com/fable-compiler/webpack-config-template

var path = require("path");
var webpack = require("webpack");
var fs = require('fs');
var fableUtils = require("fable-utils");

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
  mode: 'development',
  devtool: "inline-source-map",
  entry: "./src/App.fsproj",
  target: "node",
  externals: nodeExternals,
  output: {
    filename: 'ts2buckle.js',
    path: path.join(__dirname, "./output"),
    devtoolModuleFilenameTemplate: info =>
      path.resolve(info.absoluteResourcePath).replace(/\\/g, '/'),
  },
  module: {
    rules: [{
            test: /\.fs(x|proj)?$/,
            use: "fable-loader"
        }]
  },
  resolve: {
    modules: [nodeModulesDir]
  },
};
