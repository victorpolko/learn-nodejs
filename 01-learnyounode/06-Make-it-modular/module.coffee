fs = require 'fs'
path = require 'path'

module.exports = (dir, ext, callback) ->
  fs.readdir dir, (err, list) ->
    return callback(err) if err

    list = list.filter (file) ->
      path.extname(file) == ".#{ext}"

    callback(null, list)


# === Solution ===

# var fs = require('fs')
# var path = require('path')

# module.exports = function (dir, filterStr, callback) {

#   fs.readdir(dir, function (err, list) {
#     if (err)
#       return callback(err)

#     list = list.filter(function (file) {
#       return path.extname(file) === '.' + filterStr
#     })

#     callback(null, list)
#   })
# }
