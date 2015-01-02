###
Requires http: //johnmacfarlane.net/pandoc/
###
fs = null
yaml = null
allowUnsafeNewFunction = null

getCmd = (inputPath, outputPath, options, cb) ->
  optionsStr = " --read markdown --write markdown --output \"" + outputPath + "\" \"" + inputPath + "\""
  pandocPath = options.markdown_beautifier_path # jshint ignore: line
  yamlFrontMatter = options.yaml_front_matter # jshint ignore: line
  cmd = ""
  if pandocPath?
    # Use absolute path
    cmd = pandocPath + optionsStr
  else
    # Use command available in $PATH
    cmd = "pandoc" + optionsStr

  if yamlFrontMatter?
    # console.log("YAML Front Matter!")
    fs ?= require "fs"
    fs.readFile(inputPath, (err, contents) ->
      # console.log('readFile', err, contents)
      return cb(err) if err

      # Parse with YAML front Matter
      yaml ?= require "yaml-front-matter"
      # console.log('Parse YAML Front Matter')
      allowUnsafeNewFunction ?= require("loophole").allowUnsafeNewFunction
      results = null
      try
        allowUnsafeNewFunction ->
          results = yaml.loadFront(contents)
      catch e
        return cb(e)
      newContents = results.__content # jshint ignore: line
      delete results.__content # jshint ignore: line
      # console.log('newContents', newContents)
      # Write out new contents to input file
      fs.writeFile(inputPath, newContents, (err) ->
        # console.log('writeFile', err)
        return cb(err) if err

        # Completetion callback to combine YAML Front Matter and Markdown
        completionCallback = (output, callback) ->
          # console.log('Completion callback!')
          try
            # Pre-pend YAML Front Matter to top of Markdown output
            front = yaml.dump(results)
            # Check if there is valid `front` to prepend
            if front isnt "{}\n"
              output = "---\n#{front}---\n\n#{output}"
            # console.log('final output!', output)
            return callback(output)
          catch e
            return callback(e)
        # Run it all together now!
        # console.log('Run!')
        return cb(cmd, completionCallback)
      )
    )
    return # Use Callback
  else
    return cmd # Return cmd synchronously
"use strict"
cliBeautify = require("./cli-beautify")
module.exports = cliBeautify(getCmd)
