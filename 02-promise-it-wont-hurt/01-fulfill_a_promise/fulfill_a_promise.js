// Generated by CoffeeScript 1.4.0
(function() {
  var defer, q;

  q = require('q');

  defer = q.defer();

  defer.promise.then(console.log);

  setTimeout(defer.resolve, 300, 'RESOLVED!');

}).call(this);