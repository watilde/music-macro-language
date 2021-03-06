# music-macro-language

Music macro language parser

## Installation

Download node at [nodejs.org](http://nodejs.org) and install it, if you haven't already.

```sh
npm install music-macro-language --save
```

## Usage
js
```js
var fs = require('fs')
var mml = require('music-macro-language')
var ast = mml.parse('CDEFEDCREFGAGFERCRCRCRCRC16C16D16D16E16E16F16F16EDCR;')
```

=> tree
```js
[ [ { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'D',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'E',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'F',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'E',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'D',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'rest', length: 0, dots: [] },
    { command: 'note',
      tone: 'E',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'F',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'G',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'A',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'G',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'F',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'E',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'rest', length: 0, dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'rest', length: 0, dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'rest', length: 0, dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'rest', length: 0, dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'rest', length: 0, dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'D',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'D',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'E',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'E',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'F',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'F',
      accidentals: [],
      length: 16,
      dots: [] },
    { command: 'note',
      tone: 'E',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'D',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'note',
      tone: 'C',
      accidentals: [],
      length: 0,
      dots: [] },
    { command: 'rest', length: 0, dots: [] } ] ]
```

## Dependencies

None

## Dev Dependencies

- [pegjs](https://github.com/pegjs/pegjs): Parser generator for JavaScript
- [standard-version](https://github.com/conventional-changelog/standard-version): replacement for `npm version` with automatic CHANGELOG generation


## License

MIT

_Generated by [package-json-to-readme](https://github.com/zeke/package-json-to-readme)_
