// Generated by CoffeeScript 1.4.0
(function() {
  var defer, q;

  q = require('q');

  defer = q.defer();

  defer.promise.then(console.log);

  defer.resolve('SECOND');

  console.log('FIRST');

}).call(this);
