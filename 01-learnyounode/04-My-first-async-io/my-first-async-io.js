(function() {
  var file, fs;

  fs = require('fs');

  file = process.argv[2];

  fs.readFile(file, 'utf-8', function(err, data) {
    if (err) return console.error("Error:\n" + err);
    return console.log(data.split("\n").length - 1);
  });

}).call(this);
