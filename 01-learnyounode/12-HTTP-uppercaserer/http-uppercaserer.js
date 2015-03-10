(function() {
  var fs, http, port;

  fs = require('fs');

  http = require('http');

  port = process.argv[2];

  http.createServer(function(request, response) {
    if (request.method !== 'POST') {
      return console.error("Error: Request Method should be 'POST', not " + request.method);
    }
    response.writeHead(200, {
      'content-type': 'text/plain',
      'type': 'POST'
    });
    request.on('data', function(data) {
      return response.write(data.toString().toUpperCase());
    });
    return request.on('end', function() {
      return response.end();
    });
  }).listen(port);

}).call(this);
