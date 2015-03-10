(function() {
  var http, url;

  http = require('http');

  url = process.argv[2];

  http.get(url, function(response) {
    response.setEncoding('utf8');
    response.on('error', function(error) {
      return console.error("Error:\n" + error);
    });
    response.on('data', function(data) {
      return console.log(data);
    });
    return response.on('end', function() {});
  });

}).call(this);
