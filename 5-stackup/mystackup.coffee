require "stackup"
readFile = require("fs").readFile
domain = require("domain")

scenario = (jsonPath, cb) ->
  d = domain.create()
  d.on "error", cb
  d.run ->
    readFile jsonPath,
      encoding: "utf8"
    , (error, contents) ->
      cb error, JSON.parse(contents)
      return

    return

  return

module.exports = scenario