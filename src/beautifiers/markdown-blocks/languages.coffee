# maps code block languages to file extensions (helps atom pick the right grammar)
# inspired by https://github.com/burodepeper/language-markdown/blob/master/grammars/fixtures/fenced-code.cson
fileExtensionByLanguage = {
  'apiblueprint': 'apib'
  'coffeescript': 'coffee'
  'coffee-script': 'coffee'
  'c++': 'cpp'
  'crystal': 'cr'
  'csharp': 'cs'
  'patch': 'diff'
  'rej': 'diff'
  'golang': 'go'
  'javascript': 'js'
  'jsx': 'js'
  'har' : 'json'
  'markdown': 'md'
  'objc': 'm'
  'objective-c': 'm'
  'mdown': 'md'
  'makefile': 'make'
  'python': 'py'
  'rust': 'rs'
  'latex': 'tex'
}

module.exports.guessCodeBlockFileExtension = (codeBlock) ->
  codeBlockLanguage = codeBlock.lang.match(/^[\w\d]+/)?[0]
  mappedFileExtension = fileExtensionByLanguage[codeBlockLanguage]
  return mappedFileExtension || codeBlockLanguage
