module.exports = (text, logger) ->
  return new @Promise((resolve, reject) ->
    extractCodeBlocks = require 'gfm-code-blocks'
    beautifier = require '../../beautifier'
    cleanMarkdown = text
    codeBlocks = extractCodeBlocks(cleanMarkdown)
    beautifyBlockPromises = []
    for codeBlock in codeBlocks
      codeLanguage = codeBlock.lang.match(/^[\w\d]+/)?[0]
      logger.verbose "Beautify code block #{codeLanguage}"
      if !codeLanguage
        beautifyBlockPromises.push(null)
      else
        beautifyBlockPromises.push(new @Promise((resolve, reject) ->
          linesInBlock = codeBlock.block.split('\n')
          codePrefix = linesInBlock[0]
          codeSuffix = linesInBlock[linesInBlock.length - 1]
          code = linesInBlock.slice(1, linesInBlock.length - 1).join('\n')
          filePath = 'fakepath.' + codeLanguage
          grammar = atom.grammars.selectGrammar(filePath, code)
          grammarName = grammar.name
          allOptions = beautifier.getOptionsForPath(filePath)
          originalStart = codeBlock.start
          originalEnd = codeBlock.end
          if grammarName == 'Null Grammar'
            resolve(null)
          else
            beautifier.beautify(code, allOptions, grammarName, filePath)
              .then((cleanCode) ->
                if cleanCode
                  resolve({
                    block: [codePrefix, cleanCode, codeSuffix].join('\n')
                    originalStart: originalStart
                    originalEnd: originalEnd
                  })
                else
                  resolve(null)
              )
              .catch((e) ->
                logger.verbose "error while beautifying #{code.substring(0, 200)}...", e
                resolve(null)
              )
          ))
    Promise.all(beautifyBlockPromises).then((cleanCodeBlocks) ->
      cleanCodeBlocks.reverse((b) -> !!b).forEach((codeBlock) ->
        if (codeBlock)
          cleanMarkdown = cleanMarkdown.substring(0, codeBlock.originalStart) + codeBlock.block + cleanMarkdown.substring(codeBlock.originalEnd)
      )
    ).then(->
      resolve(cleanMarkdown)
    )
  )
