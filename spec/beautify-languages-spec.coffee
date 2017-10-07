# Beautify = require '../src/beautify'
Beautifiers = require "../src/beautifiers"
beautifier = new Beautifiers()
fs = require "fs"
path = require "path"
JsDiff = require('diff')
shellEnv = require('shell-env')

# Fix https://discuss.atom.io/t/specs-do-not-load-shell-environment-variables-activationhooks-core-loaded-shell-environment/44199
process.env = shellEnv.sync()

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

# Check if Windows
isWindows = process.platform is 'win32' or
  process.env.OSTYPE is 'cygwin' or
  process.env.OSTYPE is 'msys'

unsupportedLangs = {
  all: [
  ]
  windows: [
    "ocaml"
    "r"
    "clojure"
    # Broken
    "apex"
    "bash"
    "csharp"
    "d"
    "elm"
    "java"
    "objectivec"
    "opencl"
  ]
}

describe "BeautifyLanguages", ->

  optionsDir = path.resolve(__dirname, "../examples")

  # Activate all of the languages
  allLanguages = [
    "c", "clojure", "coffee-script", "css", "csharp", "d",
    "gfm", "go", "html", "html-swig", "java", "javascript",
    "json", "less", "lua", "marko", "mustache", "objective-c",
    "perl", "php", "python", "ruby", "sass", "sql",
    "svg", "xml"
    ]
  # All Atom packages that Atom Beautify is dependent on
  dependentPackages = [
    'autocomplete-plus'
    'fuse'
    # 'linter'
    #   'atom-typescript' # it logs too much...
  ]
  # Add language packages to dependentPackages
  for lang in allLanguages
    do (lang) ->
      dependentPackages.push("language-#{lang}")

  beforeEach ->
    # Install all of the languages
    for packageName in dependentPackages
      do (packageName) ->
        waitsForPromise ->
          atom.packages.activatePackage(packageName)

    # Activate package
    waitsForPromise ->
      activationPromise = atom.packages.activatePackage('atom-beautify')
      # Force activate package
      pack = atom.packages.getLoadedPackage("atom-beautify")
      pack.activateNow()
      # Need more debugging on Windows
      # Change logger level
      atom.config.set('atom-beautify.general.loggerLevel', 'info')
      # Return promise
      return activationPromise

    # Set Uncrustify config path
    # uncrustifyConfigPath = path.resolve(__dirname, "../examples/nested-jsbeautifyrc/uncrustify.cfg")
    # uncrustifyLangs = ["apex", "c", "cpp", "objectivec", "cs", "d", "java", "pawn", "vala"]
    # for lang in uncrustifyLangs
    #     do (lang) ->
      # atom.config.set("atom-beautify.#{lang}_configPath", uncrustifyConfigPath)
      # expect(atom.config.get("atom-beautify.#{lang}_configPath")).toEqual("TEST")

  ###
  Directory structure:
   - examples
     - config1
       - lang1
         - original
           - 1 - test.ext
         - expected
           - 1 - test.ext
       - lang2
     - config2
  ###

  # All Configurations
  configs = fs.readdirSync(optionsDir)
  for config in configs
    do (config) ->
      # Generate the path to where all of the languages are
      langsDir = path.resolve(optionsDir, config)
      optionStats = fs.lstatSync(langsDir)
      # Confirm that this path is a directory
      if optionStats.isDirectory()
        # Create testing group for configuration
        describe "when using configuration '#{config}'", ->
          # All Languages for configuration
          langNames = fs.readdirSync(langsDir)
          for lang in langNames

            shouldSkipLang = false
            if unsupportedLangs.all.indexOf(lang) isnt -1
              shouldSkipLang = true
            if isWindows and unsupportedLangs.windows.indexOf(lang) isnt -1
              console.warn("Tests for Windows do not support #{lang}")
              shouldSkipLang = true

            do (lang) ->
              # Generate the path to where al of the tests are
              testsDir = path.resolve(langsDir, lang)
              langStats = fs.lstatSync(testsDir)
              # Confirm that this path is a directory
              if langStats.isDirectory()
                # Original
                originalDir = path.resolve(testsDir, "original")
                if not fs.existsSync(originalDir)
                  console.warn("Directory for test originals/inputs not found." +
                    " Making it at #{originalDir}.")
                  fs.mkdirSync(originalDir)
                # Expected
                expectedDir = path.resolve(testsDir, "expected")
                if not fs.existsSync(expectedDir)
                  console.warn("Directory for test expected/results not found." +
                    "Making it at #{expectedDir}.")
                  fs.mkdirSync(expectedDir)

                # Language group tests
                describe "#{if shouldSkipLang then '#' else ''}when beautifying language '#{lang}'", ->

                  # All tests for language
                  testNames = fs.readdirSync(originalDir)
                  for testFileName in testNames
                    do (testFileName) ->
                      ext = path.extname(testFileName)
                      testName = path.basename(testFileName, ext)
                      # If prefixed with underscore (_) then this is a hidden test
                      shouldSkip = false
                      if testFileName[0] is '_'
                        # Do not show this test
                        shouldSkip = true
                      # Confirm this is a test
                      it "#{if shouldSkip then '# ' else ''}#{testName} #{testFileName}", ->

                        # Generate paths to test files
                        originalTestPath = path.resolve(originalDir, testFileName)
                        expectedTestPath = path.resolve(expectedDir, testFileName)
                        # Get contents of original test file
                        originalContents = fs.readFileSync(originalTestPath)?.toString()
                        # Check if there is a matching expected test resut
                        if not fs.existsSync(expectedTestPath)
                          throw new Error("No matching expected test result found for '#{testName}' " +
                            "at '#{expectedTestPath}'.")
                          # err = fs.writeFileSync(expectedTestPath, originalContents)
                          # throw err if err
                        # Get contents of expected test file
                        expectedContents = fs.readFileSync(expectedTestPath)?.toString()
                        # expect(expectedContents).not.toEqual originalContents
                        # expect(atom.grammars.getGrammars()).toEqual []
                        grammar = atom.grammars.selectGrammar(originalTestPath, originalContents)
                        # expect(grammar).toEqual("test")
                        grammarName = grammar.name

                        # Get the options
                        allOptions = beautifier.getOptionsForPath(originalTestPath)

                        # Get language
                        language = beautifier.getLanguage(grammarName, testFileName)

                        beautifyCompleted = false
                        completionFun = (text) ->
                          try
                            expect(text instanceof Error).not.toEqual(true, text.message or text.toString())
                            return beautifyCompleted = true if text instanceof Error
                          #   logger.verbose(expectedTestPath, text) if ext is ".less"
                          #   if text instanceof Error
                          #     return beautifyCompleted = text # text == Error

                            expect(text).not.toEqual(null, "Language or Beautifier not found")
                            return beautifyCompleted = true if text is null

                            expect(typeof text).toEqual("string", "Text: #{text}")
                            return beautifyCompleted = true if typeof text isnt "string"

                            # Replace Newlines
                            text = text.replace(/(?:\r\n|\r|\n)/g, '⏎\n')
                            expectedContents = expectedContents\
                              .replace(/(?:\r\n|\r|\n)/g, '⏎\n')
                            # Replace tabs
                            text = text.replace(/(?:\t)/g, '↹')
                            expectedContents = expectedContents\
                              .replace(/(?:\t)/g, '↹')
                            # Replace spaces
                            text = text.replace(/(?:\ )/g, '␣')
                            expectedContents = expectedContents\
                              .replace(/(?:\ )/g, '␣')

                            # Check for beautification errors
                            if text isnt expectedContents
                              # console.warn(allOptions, text, expectedContents)
                              fileName = expectedTestPath
                              oldStr=text
                              newStr=expectedContents
                              oldHeader="beautified"
                              newHeader="expected"
                              diff = JsDiff.createPatch(fileName, oldStr, \
                                newStr, oldHeader, newHeader)
                              # Get options
                              opts = beautifier.getOptionsForLanguage(allOptions, language)
                              selectedBeautifier = beautifier.getBeautifierForLanguage(language)
                              if selectedBeautifier?
                                opts = beautifier.transformOptions(selectedBeautifier, language.name, opts)

                              # Show error message with debug information
                              expect(text).toEqual(expectedContents, \
                                "Beautifier '#{selectedBeautifier?.name}' output does not match expected \
                                output:\n#{diff}\n\n\
                                With options:\n\
                                #{JSON.stringify(opts, undefined, 4)}")
                            # All done!
                            beautifyCompleted = true
                          catch e
                            console.error(e)
                            beautifyCompleted = e

                        runs ->
                          try
                            beautifier.beautify(originalContents, allOptions, grammarName, testFileName)
                            .then(completionFun)
                            .catch(completionFun)
                          catch e
                            beautifyCompleted = e

                        waitsFor(->
                          if beautifyCompleted instanceof Error
                            throw beautifyCompleted
                          else
                            return beautifyCompleted
                        , "Waiting for beautification to complete", 60000)
