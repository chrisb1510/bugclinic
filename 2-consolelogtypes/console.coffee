fs = require("fs");

peach = (obj) ->
# trace the message "traced"
# dump obj to stdout
  console.trace 'traced'
  console.dir obj


bowser = (callback) ->
  fs.readFile(process.argv[2], {encoding : "utf8"}, callback)


koopa = (error, file) ->
# handle error by printing something to stderr
  if error?
    console.error error
  peach(JSON.parse(file))


bowser(koopa);