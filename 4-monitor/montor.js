// Generated by CoffeeScript 1.8.0
(function() {
  var scenario;

  scenario = function(log, cb) {
    var foo, racer, start, thing, value;
    start = function() {
      return process.nextTick(thing);
    };
    value = 97;
    start();
    foo = function() {
      value *= 13;
      return cb(value);
    };
    racer = function() {
      value &= 255;
      return setTimeout(foo, 0);
    };
    value = 213;
    return thing = function() {
      value += 131;
      return process.nextTick(racer);
    };
  };

}).call(this);

//# sourceMappingURL=montor.js.map