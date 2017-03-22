# TagDataParser

[![Travis](https://img.shields.io/travis/increments/tag-data-parser.svg?style=flat-square)](https://travis-ci.org/increments/tag-data-parser)
[![npm](https://img.shields.io/npm/v/tag-data-parser.svg?style=flat-square)](https://www.npmjs.com/package/tag-data-parser)

Tag notation parser for [Qiita](http://qiita.com)

## Use

Fork and setup for your use.

Build

```bash
npm install
gulp build
```

Take it.

```html
<script src="/dist/bundle.js"></script>
<script>
  window.TagDataParser.parse('ruby:2.1 rails:4.2.3');
</script>
```

## Develop

```bash
npm test
```
