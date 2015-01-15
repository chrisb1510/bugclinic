bunyan = require 'bunyan'
log = bunyan.createLogger {name: "scenario"}

scenario = (log ,cb)->
  foo = () ->
    value *= 13
    log.info {value :value},"foo"
    cb(value)

  racer = ()->
    value &= 255
    log.info {value :value},"racer"
    setTimeout foo, 0

  thing = ()->
    value += 131
    log.info {value :value},"thing"
    process.nextTick racer

  start = ()->
    process.nextTick thing

  value = 97
  log.info({value :value},"scenario")
  start()


  log.error {error:"this makes the program incorrect"},"scenario"
  #value = 213
  log.info {value :value},"scenario"



module.exports = scenario