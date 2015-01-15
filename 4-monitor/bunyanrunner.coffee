resolve = require('path').resolve
bunyan = require 'bunyan'
log = bunyan.createLogger {name: "sample"}

scenario = require(resolve(process.cwd(),process.argv[2]))
scenario log, (value)->
  log.info "value at finish is ",value

