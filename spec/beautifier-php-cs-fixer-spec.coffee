PHPCSFixer = require "../src/beautifiers/php-cs-fixer"
Beautifier = require "../src/beautifiers/beautifier"
path = require 'path'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

# Check if Windows
isWindows = process.platform is 'win32' or
  process.env.OSTYPE is 'cygwin' or
  process.env.OSTYPE is 'msys'

describe "PHP-CS-Fixer Beautifier", ->

  beforeEach ->

    # Activate package
    waitsForPromise ->
      activationPromise = atom.packages.activatePackage('atom-beautify')
      # Force activate package
      pack = atom.packages.getLoadedPackage("atom-beautify")
      pack.activateNow()
      # Change logger level
      # atom.config.set('atom-beautify._loggerLevel', 'verbose')
      # Return promise
      return activationPromise

  describe "Beautifier::beautify", ->

    beautifier = null

    beforeEach ->
      beautifier = new PHPCSFixer()
      # console.log('new beautifier')

    OSSpecificSpecs = ->
      text = "<?php echo \"test\"; ?>"

      it "should error when beautifier's program not found", ->
        expect(beautifier).not.toBe(null)
        expect(beautifier instanceof Beautifier).toBe(true)

        waitsForPromise shouldReject: true, ->
          language = "PHP"
          options = {
            fixers: ""
            levels: ""
          }
          # Mock spawn
          beautifier.spawn = (exe, args, options) ->
            # console.log('spawn', exe, args, options)
            er = new Error('ENOENT')
            er.code = 'ENOENT'
            return beautifier.Promise.reject(er)
          # Beautify
          p = beautifier.beautify(text, language, options)
          expect(p).not.toBe(null)
          expect(p instanceof beautifier.Promise).toBe(true)
          cb = (v) ->
            # console.log(v)
            expect(v).not.toBe(null)
            expect(v instanceof Error).toBe(true, \
              "Expected '#{v}' to be instance of Error")
            expect(v.code).toBe("CommandNotFound", \
              "Expected to be CommandNotFound")
            return v
          p.then(cb, cb)
          return p

      failWhichProgram = (failingProgram) ->
        it "should error when '#{failingProgram}' not found", ->
          expect(beautifier).not.toBe(null)
          expect(beautifier instanceof Beautifier).toBe(true)

          if not beautifier.isWindows and failingProgram is "php"
            # Only applicable on Windows
            return

          waitsForPromise shouldReject: true, ->
            language = "PHP"
            options = {
              fixers: ""
              levels: ""
            }
            cb = (v) ->
              # console.log('cb value', v)
              expect(v).not.toBe(null)
              expect(v instanceof Error).toBe(true, \
                "Expected '#{v}' to be instance of Error")
              expect(v.code).toBe("CommandNotFound", \
                "Expected to be CommandNotFound")
              expect(v.file).toBe(failingProgram)
              return v
            # which = beautifier.which.bind(beautifier)
            beautifier.which = (exe, options) ->
              return beautifier.Promise.resolve(null) \
                if not exe?
              if exe is failingProgram
                beautifier.Promise.resolve(failingProgram)
              else
                # which(exe, options)
                # console.log('fake exe path', exe)
                beautifier.Promise.resolve("/#{exe}")

            oldSpawn = beautifier.spawn.bind(beautifier)
            beautifier.spawn = (exe, args, options) ->
              # console.log('spawn', exe, args, options)
              if exe is failingProgram
                er = new Error('ENOENT')
                er.code = 'ENOENT'
                return beautifier.Promise.reject(er)
              else
                return beautifier.Promise.resolve({
                  returnCode: 0,
                  stdout: 'stdout',
                  stderr: ''
                  })
            p = beautifier.beautify(text, language, options)
            expect(p).not.toBe(null)
            expect(p instanceof beautifier.Promise).toBe(true)
            p.then(cb, cb)
            return p

      # failWhichProgram('php')
      failWhichProgram('php-cs-fixer')

    unless isWindows
      describe "Mac/Linux", ->

        beforeEach ->
          # console.log('mac/linx')
          beautifier.isWindows = false

        do OSSpecificSpecs

    describe "Windows", ->

      beforeEach ->
        # console.log('windows')
        beautifier.isWindows = true

      do OSSpecificSpecs
