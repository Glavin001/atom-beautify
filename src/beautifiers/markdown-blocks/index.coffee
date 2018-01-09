{ guessCodeBlockFileExtension } = require('./languages')

generateFakePath = (codeBlockFileExtension) ->
  return 'fakepath.' + codeBlockFileExtension

module.exports = (text, logger) ->
  return new @Promise((resolve, reject) ->
    extractCodeBlocks = require 'gfm-code-blocks'
    beautifier = require '../../beautifier'
    codeBlocks = extractCodeBlocks(text)
    beautifyBlockPromises = codeBlocks.map((codeBlock) ->
      codeBlockFileExtension = guessCodeBlockFileExtension(codeBlock)
      logger.verbose "Beautify code block #{codeBlockFileExtension}"
      if !codeBlockFileExtension
        return null
      return new @Promise((resolveCodeBlock, rejectCodeBlock) ->
        linesInCodeBlock = codeBlock.block.split('\n')
        codePrefix = linesInCodeBlock[0]
        codeSuffix = linesInCodeBlock[linesInCodeBlock.length - 1]
        code = linesInCodeBlock.slice(1, linesInCodeBlock.length - 1).join('\n')
        filePath = generateFakePath(codeBlockFileExtension)
        grammar = atom.grammars.selectGrammar(filePath, code)
        grammarName = grammar.name
        allOptions = beautifier.getOptionsForPath(filePath)
        originalStart = codeBlock.start
        originalEnd = codeBlock.end
        if grammarName == 'Null Grammar'
          resolveCodeBlock(null)
        else
          beautifier.beautify(code, allOptions, grammarName, filePath)
          .then((cleanCode) ->
            if cleanCode
              resolveCodeBlock({
                block: [codePrefix, cleanCode, codeSuffix].join('\n')
                originalStart: originalStart
                originalEnd: originalEnd
              })
            else
              resolveCodeBlock(null)
            )
          .catch((e) ->
            logger.verbose "error while beautifying #{code.substring(0, 200)}...", e
            resolveCodeBlock(null)
          )
      )
    )
    Promise.all(beautifyBlockPromises).then((cleanCodeBlocks) ->
      cleanMarkdown = text
      cleanCodeBlocks.reverse((b) -> !!b).forEach((codeBlock) ->
        if (codeBlock)
          cleanMarkdown = cleanMarkdown.substring(0, codeBlock.originalStart) + codeBlock.block + cleanMarkdown.substring(codeBlock.originalEnd)
      )
      resolve(cleanMarkdown)
    )
  )
