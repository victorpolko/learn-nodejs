(function() {
  var http, port, url;

  http = require('http');

  url = require('url');

  port = process.argv[2];

  http.createServer(function(request, response) {
    var date, req, rsp;
    if (request.method !== 'GET') {
      return console.error("Error: request method should be GET, not " + request.method);
    }
    response.writeHead(200, {
      'content-type': 'application/json'
    });
    req = url.parse(request.url, true);
    date = new Date(req.query.iso);
    if (req.pathname === '/api/parsetime') {
      rsp = {};
      rsp.hour = date.getHours();
      rsp.minute = date.getMinutes();
      rsp.second = date.getSeconds();
      response.end(JSON.stringify(rsp, null, "\n"));
    }
    if (req.pathname === '/api/unixtime') {
      return response.end(JSON.stringify({
        'unixtime': date.getTime()
      }));
    }
  }).listen(port);

}).call(this);
