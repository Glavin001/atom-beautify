fs = require('fs')
path = require('path')
_ = require('lodash')
_plus = require('underscore-plus')
Beautifiers = require("../src/beautifiers")


buildOptionsForBeautifiers = (beautifiers, allLanguages) ->

    # Get all Options for Languages
    langOptions = {}
    languages = {} # Hash map of languages with their names
    for lang in allLanguages
      langOptions[lang.name] ?= {}
      languages[lang.name] ?= lang
      options = langOptions[lang.name]


      # Init field for supported beautifiers
      lang.beautifiers = []


      # Process all language options
      for field, op of lang.options
        if not op.title?
          op.title = _plus.uncamelcase(field).split('.')
          .map(_plus.capitalize).join(' ')
        op.title = "#{lang.name} - #{op.title}"


        # Init field for supported beautifiers
        op.beautifiers = []

        # Remember Option's Key
        op.key =  field

        # Remember Option's Language
        op.language = {
          name: lang.name,
          namespace: lang.namespace
        }

        # Add option
        options[field] = op

    # Find supported beautifiers for each language
    for beautifier in beautifiers
      beautifierName = beautifier.name


      # Iterate over supported languages
      for languageName, options of beautifier.options
        laOp = langOptions[languageName]


        # Is a valid Language name
        if typeof options is "boolean"

          # Enable / disable all options
          # Add Beautifier support to Language
          languages[languageName]?.beautifiers.push(beautifierName)


          # Check for beautifier's options support
          if options is true

            # Beautifier supports all options for this language
            if laOp

              # logger.verbose('add supported beautifier', languageName, beautifierName)
              for field, op of laOp
                op.beautifiers.push(beautifierName)
            else

              # Supports language but no options specifically
              logger.warn("Could not find options for language: #{languageName}")
        else if typeof options is "object"

          # Iterate over beautifier's options for this language
          for field, op of options
            if typeof op is "boolean"

              # Transformation
              if op is true
                languages[languageName]?.beautifiers.push(beautifierName)
                laOp?[field]?.beautifiers.push(beautifierName)
            else if typeof op is "string"

              # Rename
              # logger.verbose('support option with rename:', field, op, languageName, beautifierName, langOptions)
              languages[languageName]?.beautifiers.push(beautifierName)
              laOp?[op]?.beautifiers.push(beautifierName)
            else if typeof op is "function"

              # Transformation
              languages[languageName]?.beautifiers.push(beautifierName)
              laOp?[field]?.beautifiers.push(beautifierName)
            else if _.isArray(op)

              # Complex Function
              [fields..., fn] = op


              # Add beautifier support to all required fields
              languages[languageName]?.beautifiers.push(beautifierName)
              for f in fields

                # Add beautifier to required field
                laOp?[f]?.beautifiers.push(beautifierName)
            else

              # Unsupported
              logger.warn("Unsupported option:", beautifierName, languageName, field, op, langOptions)

    # Prefix language's options with namespace
    for langName, ops of langOptions

      # Get language with name
      lang = languages[langName]


      # Use the namespace from language as key prefix
      prefix = lang.namespace


      # logger.verbose(langName, lang, prefix, ops)
      # Iterate over all language options and rename fields
      for field, op of ops

        # Rename field
        delete ops[field]
        ops["#{prefix}_#{field}"] = op

    # Flatten Options per language to array of all options
    allOptions = _.values(langOptions)


    # logger.verbose('allOptions', allOptions)
    # Flatten array of objects to single object for options
    flatOptions = _.reduce(allOptions, ((result, languageOptions, language) ->

      # Iterate over fields (keys) in Language's Options
      # and merge them into single result
      # logger.verbose('language options', language, languageOptions, result)
      return _.reduce(languageOptions, ((result, optionDef, optionName) ->

        # TODO: Add supported beautifiers to option description
        # logger.verbose('optionDef', optionDef, optionName)
        if optionDef.beautifiers.length > 0

          # optionDef.title = "
          optionDef.description = "#{optionDef.description} (Supported by #{optionDef.beautifiers.join(', ')})"
        else

          # optionDef.title = "(DEPRECATED)
          optionDef.description = "#{optionDef.description} (Not supported by any beautifiers)"
        if result[optionName]?
          logger.warn("Duplicate option detected: ", optionName, optionDef)
        result[optionName] = optionDef
        return result
      ), result)
    ), {})


    # Generate Language configurations
    # logger.verbose('languages', languages)
    for langName, lang of languages

      # logger.verbose(langName, lang)
      name = lang.name
      beautifiers = lang.beautifiers
      optionName = "language_#{lang.namespace}"

      # Add Language configurations
      flatOptions["#{optionName}_disabled"] = {
        title : "Language Config - #{name} - Disable Beautifying Language"
        type : 'boolean'
        default : false
        description : "Disable #{name} Beautification"
      }
      flatOptions["#{optionName}_default_beautifier"] = {
        title : "Language Config - #{name} - Default Beautifier"
        type : 'string'
        default : lang.defaultBeautifier ? beautifiers[0]
        description : "Default Beautifier to be used for #{name}"
        enum : _.uniq(beautifiers)
      }
      flatOptions["#{optionName}_beautify_on_save"] = {
        title : "Language Config - #{name} - Beautify On Save"
        type : 'boolean'
        default : false
        description : "Automatically beautify #{name} files on save"
      }

    # logger.verbose('flatOptions', flatOptions)
    return flatOptions


buildOptionsForBeautifiers = (beautifiers, allLanguages) ->

  # Get all Options for Languages
  langOptions = {}
  languages = {} # Hash map of languages with their names
  for lang in allLanguages
    # Use the namespace from language as key prefix
    namespace = lang.namespace
    langOptions[namespace] ?= {
      title: lang.name,
      type: 'object',
      description: "Options for language #{lang.name}"
      collapsed: true
      beautifiers: []
      properties: {}
    }
    languages[lang.name] ?= lang
    options = _.get(langOptions, "#{namespace}.properties")

    # Init field for supported beautifiers
    lang.beautifiers = []

    # Process all language options
    for field, op of lang.options
      if not op.title?
        op.title = _plus.uncamelcase(field).split('.')
        .map(_plus.capitalize).join(' ')
      # op.title = "#{lang.name} - #{op.title}"

      # Init field for supported beautifiers
      op.beautifiers = []

      # Remember Option's Key
      op.key =  field

      # Remember Option's Language
      op.language = {
        name: lang.name,
        namespace: lang.namespace
      }
      # Add option
      options[field] = op

  # Language fallback options
  for lang in allLanguages
    # Use the namespace from language as key prefix
    namespaceDest = lang.namespace
    optionsDest = _.get(langOptions, "#{namespaceDest}.properties")
    fallback = _.reverse(lang.fallback ? [])
    for namespaceSrc in fallback
      optionsSrc = _.get(langOptions, "#{namespaceSrc}.properties")
      _.merge(optionsDest, optionsSrc)

  # Find supported beautifiers for each language
  for beautifier in beautifiers
    beautifierName = beautifier.name

    # Iterate over supported languages
    for languageName, options of beautifier.options
      namespace = languages[languageName].namespace
      laOp = _.get(langOptions, "#{namespace}.properties")

      # Is a valid Language name
      if typeof options is "boolean"

        # Enable / disable all options
        # Add Beautifier support to Language
        languages[languageName]?.beautifiers.push(beautifierName)
        _.get(langOptions, "#{namespace}.beautifiers")?.push(beautifierName)

        # Check for beautifier's options support
        if options is true

          # Beautifier supports all options for this language
          if laOp

            # logger.verbose('add supported beautifier', languageName, beautifierName)
            for field, op of laOp
              op.beautifiers.push(beautifierName)
          else

            # Supports language but no options specifically
            logger.warn("Could not find options for language: #{languageName}")
      else if typeof options is "object"

        # Iterate over beautifier's options for this language
        for field, op of options
          if typeof op is "boolean"

            # Transformation
            if op is true
              languages[languageName]?.beautifiers.push(beautifierName)
              _.get(langOptions, "#{namespace}.beautifiers")?.push(beautifierName)
              laOp?[field]?.beautifiers.push(beautifierName)
          else if typeof op is "string"

            # Rename
            # logger.verbose('support option with rename:', field, op, languageName, beautifierName, langOptions)
            languages[languageName]?.beautifiers.push(beautifierName)
            laOp?[op]?.beautifiers.push(beautifierName)
          else if typeof op is "function"

            # Transformation
            languages[languageName]?.beautifiers.push(beautifierName)
            _.get(langOptions, "#{namespace}.beautifiers")?.push(beautifierName)
            laOp?[field]?.beautifiers.push(beautifierName)
          else if _.isArray(op)

            # Complex Function
            [fields..., fn] = op

            # Add beautifier support to all required fields
            languages[languageName]?.beautifiers.push(beautifierName)
            _.get(langOptions, "#{namespace}.beautifiers")?.push(beautifierName)
            for f in fields

              # Add beautifier to required field
              laOp?[f]?.beautifiers.push(beautifierName)
          else

            # Unsupported
            logger.warn("Unsupported option:", beautifierName, languageName, field, op, langOptions)

  # Improve descriptions to each language option
  unsupportedOptions = []
  for g,group of langOptions
    for o,optionDef of group.properties
      if optionDef.beautifiers.length > 0
        optionDef.description = "#{optionDef.description} (Supported by #{optionDef.beautifiers.join(', ')})"
      else
        # optionDef.description = "#{optionDef.description} (Not supported by any beautifiers)"
        # logger.warn("#{g}'s option '#{optionDef.title} not supported by any beautifiers!")
        unsupportedOptions.push("#{g}.properties.#{o}")
  # Delete unsupported options
  for p in unsupportedOptions
    _.unset(langOptions, p)

  # Generate Language configurations
  # logger.verbose('languages', languages)
  for langName, lang of languages

    # logger.verbose(langName, lang)
    name = lang.name
    namespace = lang.namespace
    beautifiers = lang.beautifiers
    optionName = "language_#{namespace}"

    # Add Language configurations
    _.set(langOptions, "#{namespace}.properties.disabled", {
      title : "Disable Beautifying Language"
      order : -3
      type : 'boolean'
      default : false
      description : "Disable #{name} Beautification"
    })

    defaultBeautifier = lang.defaultBeautifier ? beautifiers[0]
    _.set(langOptions, "#{namespace}.properties.default_beautifier", {
      title : "Default Beautifier"
      order : -2
      type : 'string'
      default : defaultBeautifier
      description : "Default Beautifier to be used for #{name}"
      enum : _.uniq(beautifiers)
    })
    if !_.includes(beautifiers, defaultBeautifier)
      logger.warn("Language #{name} has a default beautifier of #{defaultBeautifier}, however it is not one of the supported beautifiers: #{optionDef.beautifiers.join(', ')}.")

    _.set(langOptions, "#{namespace}.properties.beautify_on_save", {
      title : "Beautify On Save"
      order : -1
      type : 'boolean'
      default : false
      description : "Automatically beautify #{name} files on save"
    })

  # logger.verbose('langOptions', langOptions)
  return langOptions

beautifier = new Beautifiers()
# console.log(beautifier.languages.languages)
# Build options from @beautifiers and @languages
console.log('Building options for beautifiers')
beautifierOptions = buildOptionsForBeautifiers(beautifier.beautifiers, beautifier.languages.languages)
console.log('Done building options for beautifiers')
# Save options to file
optionsStr = JSON.stringify(beautifierOptions, null, 2)
outputFilename = path.resolve(__dirname,'../src/options.json')
fs.writeFile(outputFilename, optionsStr, (err) ->
  if err
    console.log('An error occured saving the beautifier options')
    console.error(err)
  else
    console.log("Beautifier options successfully saved to " + outputFilename)
)

