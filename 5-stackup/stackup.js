// Generated by CoffeeScript 1.8.0
(function() {
  var readFile, scenario;

  require('stackup');

  readFile = require('fs').readFile;

  scenario = function(jsonPath, cb) {
    return readFile(jsonPath, {
      encoding: 'utf8'
    }, function(error, contents) {
      return cb(error, JSON.parse(contents));
    });
  };

}).call(this);

//# sourceMappingURL=stackup.js.map
