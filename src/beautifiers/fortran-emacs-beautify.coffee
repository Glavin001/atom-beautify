###
Requires https://github.com/FriendsOfPHP/PHP-CS-Fixer
###

"use strict"
Beautifier = require('./beautifier')
path = require("path")

module.exports = class FortranBeautifier extends Beautifier
    name: "Fortran Beautifier"

    options: {
        Fortran: true
    }

    beautify: (text, language, options) ->
        @debug('fortran-beautifier', options)

        console.debug 'fortran-beautifier' + options

        emacs_path = options.emacs_path
        emacs_script_path = options.emacs_script_path

        if not emacs_script_path
            emacs_script_path = path.resolve(__dirname, "emacs/emacs-fortran-beautify.lisp")

        @debug('fortran-beautifier', 'emacs script path: ' + emacs_script_path)

        args = [
            '--batch'
            '-l'
            emacs_script_path
            '-f'
            'f90-batch-indent-region'
            tempFile = @tempFile("temp", text)
            ]

        if emacs_path
            args.unshift("#{emacs_path}")

            @run("python", args, {ignoreReturnCode: true})
                .then(=>
                    @readFile(tempFile)
                )
        else
            @debug('fortran-beautifier', "running emacs with args " + args)

            @run("emacs", args, {ignoreReturnCode: true})
                .then(=>
                    @readFile(tempFile)
                )
