PHPCSFixer = require "../src/beautifiers/php-cs-fixer"
Beautifier = require "../src/beautifiers/beautifier"

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

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

        it "should error when beautifier's program not found", ->
            expect(beautifier).not.toBe(null)
            expect(beautifier instanceof Beautifier).toBe(true)

            waitsForPromise shouldReject: true, ->
                text = ""
                language = "PHP"
                options = {
                    fixers: ""
                    levels: ""
                }
                # Mock PATH
                beautifier.getShellEnvironment = -> Promise.resolve({
                    PATH: ''
                })
                #
                p = beautifier.beautify(text, language, options)
                expect(p).not.toBe(null)
                expect(p instanceof beautifier.Promise).toBe(true)
                cb = (v) ->
                    # console.log(v)
                    expect(v).not.toBe(null)
                    expect(v instanceof Error).toBe(true, \
                      "Expected #{v} to be instance of Error")
                    expect(v.code).toBe("CommandNotFound", \
                      "Expected to be CommandNotFound")
                    return v
                p.then(cb, cb)
                return p

        # it "should error with help description \
        #     when beautifier's program not found", ->
        #     expect(beautifier).not.toBe(null)
        #     expect(beautifier instanceof Beautifier).toBe(true)
        #
        #     waitsForPromise shouldReject: true, ->
        #         help = {
        #             link: "http://test.com"
        #             program: "test-program"
        #             pathOption: "Lang - Test Program Path"
        #         }
        #         p = beautifier.run("program", [], help: help)
        #         expect(p).not.toBe(null)
        #         expect(p instanceof beautifier.Promise).toBe(true)
        #         cb = (v) ->
        #             # console.log(v)
        #             expect(v).not.toBe(null)
        #             expect(v instanceof Error).toBe(true)
        #             expect(v.code).toBe("CommandNotFound")
        #             expect(v.description).not.toBe(null)
        #             expect(v.description.indexOf(help.link)).not.toBe(-1)
        #             expect(v.description.indexOf(help.program)).not.toBe(-1)
        #             expect(v.description
        #                 .indexOf(help.pathOption)).not.toBe(-1, \
        #                 "Error should have a description.")
        #             return v
        #         p.then(cb, cb)
        #         return p
