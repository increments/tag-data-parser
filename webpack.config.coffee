webpack = require 'webpack'
path    = require 'path'

module.exports =
  module:
    loaders: [
      test: /\.js$/, loader: 'exports'
    ]

  output:
    filename: './dist/bundle.js'
