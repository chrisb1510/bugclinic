// Generated by CoffeeScript 1.8.0
(function() {
  var body, contentType, headers, request, yolo;

  request = require('http').request;

  contentType = "text/html";

  body = '<html><head><title>hi</title></head><body><p>yo</p></body></html>';

  headers = {
    host: "localhost",
    port: 9876,
    method: "GET",
    headers: {
      "content-type": contentType,
      "content-length": body.length,
      "requested-by": "Request™"
    }
  };

  yolo = request(headers, function(res) {
    res.setEncoding("utf8");
    res.on("data", function(data) {
      return console.log("BODY: " + data);
    });
    return res.on("end", function() {
      return console.error("done!");
    });
  });

  yolo.end();

}).call(this);

//# sourceMappingURL=nodedebug.js.map
