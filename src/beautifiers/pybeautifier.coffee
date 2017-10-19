'use strict'
net = require('net')
Beautifier = require('./beautifier')

HOST = '127.0.0.1'
PORT = 36805
MULTI_LINE_OUTPUT_TABLE = {
  'Grid': 0,
  'Vertical': 1,
  'Hanging Indent': 2,
  'Vertical Hanging Indent': 3,
  'Hanging Grid': 4,
  'Hanging Grid Grouped': 5,
  'NOQA': 6
}

format = (data, formatters) ->
  return new Promise (resolve, reject) ->
    client = new net.Socket()
    client.on 'error', (error) ->
      client.destroy()
      reject(error)
    client.connect PORT, HOST, ->
      client.setEncoding('utf8')
      client.write(JSON.stringify({'data': data, 'formatters': formatters}))
      response = ''
      client.on 'data', (chunk) ->
        response += chunk
      client.on 'end', ->
        response = JSON.parse(response)
        if response.error?
          reject(Error(response.error))
        else
          resolve(response.data)
        client.destroy()

module.exports = class PythonBeautifier extends Beautifier

  name: "pybeautifier"
  link: "https://github.com/guyskk/pybeautifier"
  isPreInstalled: false

  options: {
    Python: true
  }

  beautify: (text, language, options) ->
    formatter = {'name': options.formatter}
    if options.formatter == 'autopep8'
      formatter.config = {
        'ignore': options.ignore
        'max_line_length': options.max_line_length
      }
    else if options.formatter == 'yapf'
      formatter.config = {'style_config': options.style_config}
    formatters = [formatter]
    if options.sort_imports
      multi_line_output = MULTI_LINE_OUTPUT_TABLE[options.multi_line_output]
      formatters.push
        'name': 'isort'
        'config': {'multi_line_output': multi_line_output}
    return new @Promise (resolve, reject) ->
      format(text, formatters)
      .then (data) ->
        resolve(data)
      .catch (error) ->
        reject(error)
