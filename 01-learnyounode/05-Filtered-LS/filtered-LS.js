(function() {
  var dir, ext, fs, path;

  fs = require('fs');

  path = require('path');

  dir = process.argv[2];

  ext = process.argv[3];

  fs.readdir(dir, function(err, list) {
    return list.forEach(function(file) {
      if (path.extname(file) === ("." + ext)) return console.log(file);
    });
  });

}).call(this);
