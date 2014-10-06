fs = require 'fs'
sass = require 'node-sass'

describe 'theme-mdultra', ->
  it 'compiles ok', (done) ->
    fs.readFile "#{__dirname}/../scss/theme-mdultra.scss", 'utf8', (err, content) ->
      css = sass.renderSync data: content, includePaths: ["#{__dirname}/../node_modules/theme-base/scss"]
      throw new Error "Failed to compile" unless css?.length > 0
      done()
