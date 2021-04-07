const path = require('path');
const fs = require('fs');

const HtmlWebpackPlugin = require('html-webpack-plugin');
const MonacoWebpackPlugin = require('monaco-editor-webpack-plugin');

const outputDir = path.join(__dirname, 'build/');
const isProd = process.env.NODE_ENV === 'production';

var babelOptions = {
  presets: [
    [
      "@babel/preset-env",
      {
        "targets": {
          "browsers": ["last 2 versions"]
        },
        "debug": true,
        "modules": "commonjs",
      }
    ]
  ],
  plugins: [
    "@babel/plugin-transform-arrow-functions",
    "babel-plugin-transform-globalthis"
  ]
};


var monacoPlugin =
  new MonacoWebpackPlugin({
    languages: [
    ],
    features: [
      'accessibilityHelp',
      'bracketMatching',
      'caretOperations',
      'clipboard',
      'codelens',
      'colorDetector',
      'comment',
      'contextmenu',
      // 'coreCommands',
      'cursorUndo',
      // 'dnd',
      'find',
      // 'folding',
      // 'format',
      // 'goToDefinitionCommands',
      // 'goToDefinitionMouse',
      // 'gotoError',
      // 'gotoLine',
      // 'hover',
      'inPlaceReplace',
      'inspectTokens',
      // 'iPadShowKeyboard',
      'linesOperations',
      'links',
      'multicursor',
      'parameterHints',
      // 'quickCommand',
      // 'quickFixCommands',
      // 'quickOutline',
      // 'referenceSearch',
      // 'rename',
      'smartSelect',
      // 'snippets',
      'suggest',
      'toggleHighContrast',
      'toggleTabFocusMode',
      'transpose',
      'wordHighlighter',
      'wordOperations'
    ]
  });

var resolve = path.resolve;

var nodeModulesDir = resolve("node_modules");

var nodeExternals = {};
fs.readdirSync(nodeModulesDir)
  .filter(function (x) {
    return ['.bin'].indexOf(x) === -1;
  })
  .forEach(function (mod) {
    nodeExternals[mod] = 'commonjs ' + mod;
  });

module.exports = {
  entry: './_build/default/src/main.bc.js',
  mode: isProd ? 'production' : 'development',
  target: "es5",
  externals: nodeExternals,
  devtool: false,

  output: {
    path: outputDir,
    filename: 'main.js'
  },

  plugins: [
    monacoPlugin,
    new HtmlWebpackPlugin({
      template: 'src/main.html',
      inject: false
    })
  ],

  resolve: {
    fallback: {
      "fs": false,
      "constants": require.resolve("constants-browserify"),
      "child_process": false,
      "tty": require.resolve("tty-browserify")
    }
  },

  devServer: {
    compress: true,
    contentBase: outputDir,
    port: process.env.PORT || 8000,
    historyApiFallback: true
  },

  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: babelOptions
        },
      },
      {
        test: /\.sass$/,
        use: [
          isProd
            ? MiniCssExtractPlugin.loader
            : 'style-loader',
          'css-loader',
          'sass-loader',
        ],
      },
      {
        test: /\.scss$/,
        use: [
          isProd
            ? MiniCssExtractPlugin.loader
            : 'style-loader',
          'css-loader',
          'sass-loader',
        ],
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
      {
        test: /\.(png|jpg|jpeg|gif|svg|woff|woff2|ttf|eot)(\?.*$|$)/,
        use: ["file-loader"]
      }
    ]
  }
};