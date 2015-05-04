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
    writable = new stream.Writable({
        write: (chunk, encoding, next) ->
            msg = chunk.toString()
            # console.log msg
            emitter.emit('logging', msg)
            next()
    })

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
