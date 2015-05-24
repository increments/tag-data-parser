expect = require('chai').expect
parser = require '../dist/parser'

describe 'TagDataParser', ->
  describe '#parse()', ->
    it 'returns a tag data object', ->
      expect(parser.parse('ruby:2.1.2 rails:3.x,4.x')).to.deep.equal([
        {
          name: 'ruby'
          versions: ['2.1.2']
        }
        {
          name: 'rails'
          versions: ['3.x', '4.x']
        }
      ])
