###
Global Logger
###
module.exports = do ->
  # Create Event Emitter
  {Emitter} = require 'event-kit'
  emitter = new Emitter()
  # Create Transport with Writable Stream
  # See http://stackoverflow.com/a/21583831/2578205
  winston = require('winston')
  stream = require('stream')
  writable = new stream.Writable()
  writable._write = (chunk, encoding, next) ->
    msg = chunk.toString()
    # console.log(msg)
    emitter.emit('logging', msg)
    next()

  levels = {
    silly: 0,
    input: 1,
    verbose: 2,
    prompt: 3,
    debug: 4,
    info: 5,
    data: 6,
    help: 7,
    warn: 8,
    error: 9
  }

  return (label) ->
    transport = new (winston.transports.File)({
      label: label
      level: 'debug'
      timestamp: true
      # prettyPrint: true
      # colorize: true
      stream: writable
      json: false
    })
    # Initialize logger
    wlogger = new (winston.Logger)({
      # Configure transports
      transports: [
        transport
      ]
    })
    wlogger.on('logging', (transport, level, msg, meta)->
      loggerLevel = atom?.config.get(\
        'atom-beautify.general.loggerLevel') ? "warn"
      # console.log('logging', loggerLevel, arguments)
      loggerLevelNum = levels[loggerLevel]
      levelNum = levels[level]
      if loggerLevelNum <= levelNum
        path = require('path')
        label = "#{path.dirname(transport.label)\
                    .split(path.sep).reverse()[0]}\
                    #{path.sep}#{path.basename(transport.label)}"
        d = new Date()
        console.log("#{d.toLocaleDateString()} #{d.toLocaleTimeString()} - #{label} [#{level}]: #{msg}", meta)
    )
    # Export logger methods
    loggerMethods = ['silly','debug','verbose','info','warn','error']
    logger = {}
    for method in loggerMethods
      logger[method] = wlogger[method]
    # Add logger listener
    logger.onLogging = (handler) ->
      # console.log('onLogging', handler)
      subscription = emitter.on('logging', handler)
      # console.log('emitter', emitter.handlersByEventName, subscription)
      return subscription
    # Return simplified logger
    return logger
