const path    = require("path")
const webpack = require("webpack")

module.exports = {
  mode: "production",
  devtool: "source-map",
  entry: {
    application: "./app/javascript/application.js"
  },
  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    path: path.resolve(__dirname, "app/assets/builds"),
  },
  performance: {
    maxEntrypointSize: 512000,
    maxAssetSize: 512000
},
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ],
  resolve: {
    modules: ['node_modules'] // Added my ./node_modules folder to be taken into account
  },
  resolve: {
    enforceExtension: false // allows webpack to use imports with extension-less
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        resolve: {
          fullySpecified: false // allows webpack to ignore some package rules as the Strict EcmaScript Module mode.
        }
      }
    ],
  },
}
