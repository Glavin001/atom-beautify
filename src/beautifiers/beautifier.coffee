Promise = require("bluebird")
_ = require('lodash')
fs = require("fs")
temp = require("temp").track()
exec = require("child_process").exec
spawn = require("child_process").spawn
readFile = Promise.promisify(fs.readFile)

module.exports = class Beautifier

    ###

    ###
    Promise: Promise

    ###
    Name of Beautifier
    ###
    name: 'Beautifier'

    ###
    Supported Options

    Enable options for supported languages.
    - <string:language>:<boolean:all_options_enabled>
    - <string:language>:<string:option_key>:<boolean:enabled>
    - <string:language>:<string:option_key>:<string:rename>
    - <string:language>:<string:option_key>:<function:transform>

    ###
    options: {}

    ###
    Supported languages by this Beautifier

    Extracted from the keys of the `options` field.
    ###
    languages: null

    ###
    Filter beautifier
    ###
    filter: () ->

    ###
    Show deprecation warning to user.

    TODO: implement this
    ###
    deprecate: (warning) ->

    ###
    Create temporary file
    ###
    tempFile: (name = "atom-beautify-temp", contents) ->
        return new Promise((resolve, reject) ->
            # create temp file
            temp.open(name, (err, info) ->
                # console.log(name, info)
                return reject(err) if err
                fs.write(info.fd, contents) if contents?
                fs.close(info.fd, (err) ->
                    return reject(err) if err
                    resolve(info.path)
                )
            )
        )

    ###
    Read file
    ###
    readFile: (filePath) ->
        Promise.resolve(filePath)
        .then((filePath) ->
            return readFile(filePath, "utf8")
        )

    ###
    Run command-line interface command
    ###
    run: (executable, args) ->
        console.log('run', arguments)
        # TODO: Get $PATH
        # Resolve executable
        Promise.resolve(executable)
        .then((exe) ->
            console.log('exe', exe)
            # Flatten args first
            args = _.flatten(args)
            console.log('flat args', args)
            # Resolve all args
            Promise.all(args)
            .then((args) ->
                return new Promise((resolve, reject) ->
                    console.log('resolved args', args)
                    # Remove null values
                    args = _.without(args, undefined)
                    args = _.without(args, null)
                    console.log('args without undefined/null', args)
                    # Spawn command
                    stdout = ""
                    stderr = ""
                    options = {
                        env: {
                            PATH: "/Users/glavin/.rvm/gems/ruby-1.9.3-p551/bin:/Users/glavin/.rvm/gems/ruby-1.9.3-p551@global/bin:/Users/glavin/.rvm/rubies/ruby-1.9.3-p551/bin:/Users/glavin/.nvm/v0.10.32/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Developer/android-sdk-macosx/tools:/Developer/android-sdk-macosx/platform-tools:/Users/glavin/pear/bin:/Users/glavin/gocode/bin:/Users/glavin/.rvm/bin"
                        }
                    }
                    console.log('spawn', exe, args)
                    cmd = spawn(exe, args, options)
                    # add a 'data' event listener for the spawn instance
                    cmd.stdout.on('data', (data) -> stdout += data )
                    cmd.stderr.on('data', (data) -> stderr += data )
                    # when the spawn child process exits, check if there were any errors and close the writeable stream
                    cmd.on('exit', (code) ->
                        console.log('spawn done', code, stderr, stdout)
                        # If return code is not 0 then error occured
                        if code isnt 0
                            reject(stderr)
                        else
                            resolve(stdout)
                    )
                )
            )
        )

    ###
    Beautify text

    Override this method in subclasses
    ###
    beautify: null

    ###
    Constructor to setup beautifer
    ###
    constructor: () ->

        # Set supported languages
        @languages = _.keys(@options)
        # TODO: Remove default/catch all key, `_`


