var fs = require('fs')
var file = fs.readFileSync('./test.mml', 'utf8')
var fixture = fs.readFileSync('./test.ast', 'utf8')

var mml = require('./')

var ast = mml.parse(file)

console.log(ast)
