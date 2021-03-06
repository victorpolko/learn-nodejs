# Let's tweak/refactor the previous lesson to be more declarative!

# Functional programming carries with it some stigmas that can scare many people
# away. This is unfortunate because you can in fact write clear, elegant code
# using a small subset of "functional programming".

# The previous lesson is an excellent candidate for additional functional refactoring.
# Here is the previous lesson's solution in case you don't have it:

# var q = require('q')
#   , qhttp = require('q-io/http');

# qhttp.read("http://localhost:7000/")
# .then(function (id) {
#   return qhttp.read("http://localhost:7001/" + id);
# })
# .then(function (json) {
#   console.log(JSON.parse(json));
# })
# .then(null, console.error)
# .done();

# Let's refactor this function using the popular "lodash" library. Install it with:

# npm install --save lodash

# In particular, you may want to use _.bind, _.compose, or others as you see fit.

# The solution will work out of the box since the problem is the same as the previous.
# Focus on reasoning about how to use function composition to make your promise chain
# as declarative as possible. Refer to the provided solution once you have given it
# some thought and see if you can completely understand it.

http = require 'q-io/http'

http.read('http://localhost:7000')
.then  (id) -> http.read("http://localhost:7001/#{ id.toString() }")
.then (data) -> console.log(JSON.parse data.toString())
.then(null, console.error)
.done()


# === Official Solution ===

# var qhttp = require('q-io/http')
#   , _ = require('lodash')
#   , cachePath = "http://localhost:7000/"
#   , dbPath = "http://localhost:7001/";

# var buildDbPath = _.bind(String.prototype.concat, dbPath);

# qhttp.read(cachePath)
# .then(_.compose(qhttp.read, buildDbPath))
# .then(_.compose(console.log, JSON.parse))
# .then(null, console.error)
# .done();
