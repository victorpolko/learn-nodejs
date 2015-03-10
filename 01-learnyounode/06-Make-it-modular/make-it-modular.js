(function() {
  var dir, ext, module;

  module = require('./module');

  dir = process.argv[2];

  ext = process.argv[3];

  module(dir, ext, function(err, data) {
    if (err) return console.error("Error:\n" + err);
    return data.forEach(function(file) {
      return console.log(file);
    });
  });

}).call(this);
