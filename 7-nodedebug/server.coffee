createServer = require('http').createServer
server = createServer (req,res)->
  res.end "hello"

server.listen 9876, ()->
  console.log "listening"
