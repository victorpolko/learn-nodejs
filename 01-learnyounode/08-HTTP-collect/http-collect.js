(function() {
  var http, url;

  http = require('http');

  url = process.argv[2];

  http.get(url, function(response) {
    var counter, outString;
    counter = 0;
    outString = '';
    response.setEncoding('utf8');
    response.on('error', function(err) {
      return console.error("Error:\n" + err);
    });
    response.on('data', function(data) {
      counter += data.length;
      return outString += data;
    });
    return response.on('end', function() {
      console.log(counter);
      return console.log(outString);
    });
  });

}).call(this);
