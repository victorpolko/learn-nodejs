// Generated by CoffeeScript 1.4.0
(function() {
  var def1, def2, q;

  q = require('q');

  def1 = q.defer();

  def2 = q.defer();

  q.all([def1.promise, def2.promise]).spread(console.log).done();

  setTimeout(function() {
    def1.resolve("[ 'PROMISES',");
    return def2.resolve("'FTW' ]");
  }, 200);

}).call(this);
