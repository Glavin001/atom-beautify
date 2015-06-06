Beautifiers = require "../src/beautifiers"
beautifiers = new Beautifiers()
Beautifier = require "../src/beautifiers/beautifier"

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

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
                        return v
                    p.then(cb, cb)
                    return p