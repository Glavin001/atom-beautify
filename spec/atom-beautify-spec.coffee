Beautifiers = require "../src/beautifiers"
beautifiers = new Beautifiers()
Beautifier = require "../src/beautifiers/beautifier"

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

# Check if Windows
isWindows = process.platform is 'win32' or
  process.env.OSTYPE is 'cygwin' or
  process.env.OSTYPE is 'msys'

describe "Atom-Beautify", ->

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

  describe "Beautifiers", ->

    describe "Beautifier::run", ->

      beautifier = null

      beforeEach ->
        beautifier = new Beautifier()

      it "should error when beautifier's program not found", ->
        expect(beautifier).not.toBe(null)
        expect(beautifier instanceof Beautifier).toBe(true)

        # waitsForRuns = (fn, message, timeout) ->
        #     isCompleted = false
        #     completed = ->
        #         console.log('completed')
        #         isCompleted = true
        #     runs ->
        #         console.log('runs')
        #         fn(completed)
        #     waitsFor(->
        #         console.log('waitsFor', isCompleted)
        #         isCompleted
        #     , message, timeout)
        #
        # waitsForRuns((cb) ->
        #     console.log('waitsForRuns', cb)
        #     setTimeout(cb, 2000)
        # , "Waiting for beautification to complete", 5000)

        waitsForPromise shouldReject: true, ->
          p = beautifier.run("program", [])
          expect(p).not.toBe(null)
          expect(p instanceof beautifier.Promise).toBe(true)
          cb = (v) ->
            # console.log(v)
            expect(v).not.toBe(null)
            expect(v instanceof Error).toBe(true)
            expect(v.code).toBe("CommandNotFound")
            expect(v.description).toBe(undefined, \
              'Error should not have a description.')
            return v
          p.then(cb, cb)
          return p

      it "should error with help description \
                when beautifier's program not found", ->
        expect(beautifier).not.toBe(null)
        expect(beautifier instanceof Beautifier).toBe(true)

        waitsForPromise shouldReject: true, ->
          help = {
            link: "http://test.com"
            program: "test-program"
            pathOption: "Lang - Test Program Path"
          }
          p = beautifier.run("program", [], help: help)
          expect(p).not.toBe(null)
          expect(p instanceof beautifier.Promise).toBe(true)
          cb = (v) ->
            # console.log(v)
            expect(v).not.toBe(null)
            expect(v instanceof Error).toBe(true)
            expect(v.code).toBe("CommandNotFound")
            expect(v.description).not.toBe(null)
            expect(v.description.indexOf(help.link)).not.toBe(-1)
            expect(v.description.indexOf(help.program)).not.toBe(-1)
            expect(v.description
              .indexOf(help.pathOption)).not.toBe(-1, \
              "Error should have a description.")
            return v
          p.then(cb, cb)
          return p

      it "should error with Windows-specific help description \
                when beautifier's program not found", ->
        expect(beautifier).not.toBe(null)
        expect(beautifier instanceof Beautifier).toBe(true)

        waitsForPromise shouldReject: true, ->
          help = {
            link: "http://test.com"
            program: "test-program"
            pathOption: "Lang - Test Program Path"
          }
          # Force to be Windows
          beautifier.isWindows = true
          terminal = 'CMD prompt'
          whichCmd = "where.exe"
          # Process
          p = beautifier.run("program", [], help: help)
          expect(p).not.toBe(null)
          expect(p instanceof beautifier.Promise).toBe(true)
          cb = (v) ->
            # console.log(v)
            expect(v).not.toBe(null)
            expect(v instanceof Error).toBe(true)
            expect(v.code).toBe("CommandNotFound")
            expect(v.description).not.toBe(null)
            expect(v.description.indexOf(help.link)).not.toBe(-1)
            expect(v.description.indexOf(help.program)).not.toBe(-1)
            expect(v.description
              .indexOf(help.pathOption)).not.toBe(-1, \
              "Error should have a description.")
            expect(v.description
              .indexOf(terminal)).not.toBe(-1, \
              "Error should have a description including \
                            '#{terminal}' in message.")
            expect(v.description
              .indexOf(whichCmd)).not.toBe(-1, \
              "Error should have a description including \
                            '#{whichCmd}' in message.")
            return v
          p.then(cb, cb)
          return p

      unless isWindows
        it "should error with Mac/Linux-specific help description \
                  when beautifier's program not found", ->
          expect(beautifier).not.toBe(null)
          expect(beautifier instanceof Beautifier).toBe(true)

          waitsForPromise shouldReject: true, ->
            help = {
              link: "http://test.com"
              program: "test-program"
              pathOption: "Lang - Test Program Path"
            }
            # Force to be Mac/Linux (not Windows)
            beautifier.isWindows = false
            terminal = "Terminal"
            whichCmd = "which"
            # Process
            p = beautifier.run("program", [], help: help)
            expect(p).not.toBe(null)
            expect(p instanceof beautifier.Promise).toBe(true)
            cb = (v) ->
              # console.log(v)
              expect(v).not.toBe(null)
              expect(v instanceof Error).toBe(true)
              expect(v.code).toBe("CommandNotFound")
              expect(v.description).not.toBe(null)
              expect(v.description.indexOf(help.link)).not.toBe(-1)
              expect(v.description.indexOf(help.program)).not.toBe(-1)
              expect(v.description
                .indexOf(terminal)).not.toBe(-1, \
                "Error should have a description including \
                              '#{terminal}' in message.")
              expect(v.description
                .indexOf(whichCmd)).not.toBe(-1, \
                "Error should have a description including \
                              '#{whichCmd}' in message.")
              return v
            p.then(cb, cb)
            return p
