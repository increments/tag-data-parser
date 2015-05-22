assert = require 'assert'
parser = require '../dist/parser'

ItWorks = do ->
  assert.deepEqual(
    parser.parse('ruby:2.1.2 rails:3.x,4.x')
    [
      {
        name: 'ruby'
        versions: ['2.1.2']
      }
      {
        name: 'rails'
        versions: ['3.x', '4.x']
      }
    ]
  )
