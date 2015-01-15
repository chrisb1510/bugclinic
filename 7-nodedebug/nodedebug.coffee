request = require('http').request

contentType = "text/html"
body = '<html><head><title>hi</title></head><body><p>yo</p></body></html>'

headers =
  host: "localhost",
  port: 9876,
  method: "GET",
  headers: {
    "content-type": contentType,
    "content-length": body.length,
    "requested-by": "Request™"
  }
yolo = request(headers,  (res) ->
  res.setEncoding("utf8");
  res.on "data", (data) ->
    console.log("BODY: " + data)

  res.on("end", () ->
    console.error("done!")
  )
)

yolo.end()
#unsure