(function() {
  var file, fs, http, port, source;

  fs = require('fs');

  http = require('http');

  port = process.argv[2];

  file = process.argv[3];

  console.log(port);

  source = fs.createReadStream(file);

  http.createServer(function(request, response) {
    response.writeHead(200, {
      'content-type': 'text/plain'
    });
    return source.pipe(response);
  }).listen(port);

}).call(this);
