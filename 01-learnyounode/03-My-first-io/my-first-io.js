(function() {
  var body, file, fs;

  fs = require('fs');

  file = process.argv[2];

  body = fs.readFileSync(file).toString();

  console.log(body.split("\n").length - 1);

}).call(this);
