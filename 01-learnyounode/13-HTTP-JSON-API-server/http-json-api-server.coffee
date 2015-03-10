#  LEARN YOU THE NODE.JS FOR MUCH WIN!
# ─────────────────────────────────────
#  HTTP JSON API SERVER
#  Exercise 13 of 13

# Write an HTTP server that serves JSON data when it receives a GET request to the path '/api/parsetime'. Expect the request to contain a query string with a key 'iso' and an ISO-format time as the value.

# For example:

#   /api/parsetime?iso=2013-08-10T12:10:15.474Z

# The JSON response should contain only 'hour', 'minute' and 'second' properties. For example:

#     {
#       "hour": 14,
#       "minute": 23,
#       "second": 15
#     }

# Add second endpoint for the path '/api/unixtime' which accepts the same query string but returns UNIX epoch time in milliseconds (the number of milliseconds since 1 Jan 1970 00:00:00 UTC) under the property 'unixtime'. For example:

#     { "unixtime": 1376136615474 }

# Your server should listen on the port provided by the first argument to your program.

# -------------------------------------------------------------------------------

# ## HINTS

# The request object from an HTTP server has a url property that you will need to use to "route" your requests for the two endpoints.

# You can parse the URL and query string using the Node core 'url' module. url.parse(request.url, true) will parse content of request.url and provide you with an object with helpful properties.

# For example, on the command prompt, type:

#     $ node -pe "require('url').parse('/test?q=1', true)"

# Documentation on the url module can be found by pointing your browser here:
#   file:///usr/lib/node_modules/learnyounode/node_apidoc/url.html

# Your response should be in a JSON string format. Look at JSON.stringify() for more information.

# You should also be a good web citizen and set the Content-Type properly:

#     res.writeHead(200, { 'Content-Type': 'application/json' })

# The JavaScript Date object can print dates in ISO format, e.g. new Date().toISOString(). It can also parse this format if you pass the string into the Date constructor. Date#getTime() will also come in handy.

http = require 'http'
url = require 'url'
port = process.argv[2]

http.createServer (request, response) ->
  return console.error "Error: request method should be GET, not #{request.method}" unless request.method == 'GET'
  response.writeHead 200, { 'content-type': 'application/json' }

  req = url.parse(request.url, true)
  date = new Date(req.query.iso)

  if req.pathname == '/api/parsetime'
    rsp = {}

    rsp.hour   = date.getHours()
    rsp.minute = date.getMinutes()
    rsp.second = date.getSeconds()

    response.end JSON.stringify(rsp, null, "\n")

  if req.pathname == '/api/unixtime'
    response.end JSON.stringify({ 'unixtime': date.getTime() })

.listen(port)

# === Solution ===

# var http = require('http')
# var url = require('url')

# function parsetime (time) {
#   return {
#     hour: time.getHours(),
#     minute: time.getMinutes(),
#     second: time.getSeconds()
#   }
# }

# function unixtime (time) {
#   return { unixtime : time.getTime() }
# }

# var server = http.createServer(function (req, res) {
#   var parsedUrl = url.parse(req.url, true)
#   var time = new Date(parsedUrl.query.iso)
#   var result

#   if (/^\/api\/parsetime/.test(req.url))
#     result = parsetime(time)
#   else if (/^\/api\/unixtime/.test(req.url))
#     result = unixtime(time)

#   if (result) {
#     res.writeHead(200, { 'Content-Type': 'application/json' })
#     res.end(JSON.stringify(result))
#   } else {
#     res.writeHead(404)
#     res.end()
#   }
# })
# server.listen(Number(process.argv[2]))
