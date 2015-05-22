webpack = require 'webpack'
path    = require 'path'

module.exports =
  entry: './src/tag-data.js'

  module:
    loaders: [
      test: /\.js$/, loader: 'exports'
    ]

  output:
    filename: './dist/bundle.js'
