// Generated by CoffeeScript 1.8.0
(function() {
  var bunyan, log, resolve, scenario;

  resolve = require('path').resolve;

  bunyan = require('bunyan');

  log = bunyan.createLogger({
    name: "sample"
  });

  scenario = require(resolve(process.cwd(), process.argv[2]));

  scenario(log, function(value) {
    return log.info("value at finish is ", value);
  });

}).call(this);

//# sourceMappingURL=bunyanrunner.js.map
