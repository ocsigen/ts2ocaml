const path = require('path');

const HtmlWebpackPlugin = require('html-webpack-plugin');
const MonacoWebpackPlugin = require('monaco-editor-webpack-plugin');

const outputDir = path.join(__dirname, 'build/');
const isProd = process.env.NODE_ENV === 'production';

var babelOptions = {
  presets: [
    [
      "@babel/preset-react",
    ]
  ],
  plugins: [
    "@babel/plugin-transform-arrow-functions"
  ]
};

var monacoPlugin =
  new MonacoWebpackPlugin({
    languages: [
      'fsharp', 'typescript', 'javascript'
    ],
    features: [
      'accessibilityHelp',
      'bracketMatching',
      'caretOperations',
      'clipboard',
      'colorDetector',
      'comment',
      'cursorUndo',
      'find',
      'inPlaceReplace',
      'linesOperations',
      'links',
      'toggleHighContrast',
      'toggleTabFocusMode',
      'transpose',
      'wordHighlighter',
      'wordOperations'
    ]
  });

module.exports = {
  entry: {
    app: [
      "@babel/polyfill",
      './_build/default/src/main.bc.js'
    ]
  },
  mode: isProd ? 'production' : 'development',
  devtool: false,

  output: {
    path: outputDir,
    filename: 'main.js'
  },

  plugins: [
    new HtmlWebpackPlugin({
      template: 'src/main.html',
      inject: false
    }),
    monacoPlugin
  ],

  resolve: {
    modules: [
      "node_modules/",
    ],
    fallback: {
      "fs": false,
      "constants": require.resolve("constants-browserify"),
      "child_process": false,
      "tty": require.resolve("tty-browserify"),
      "perf_hooks": false
    }
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