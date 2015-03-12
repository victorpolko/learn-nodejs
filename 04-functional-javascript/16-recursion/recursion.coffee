# # Task

# Implement a recursive function that returns all of the unique dependencies, and sub-dependencies of a module, sorted alphabetically. Dependencies should be printed as dependency@version e.g. 'inflection@1.2.6'.

# Multiple versions of the same module are allowed, but duplicates modules of the same version should be removed.

# ## Arguments:

#   * tree: A dependency tree. See below for an example of the structure.

# ## Example

#     var loremIpsum = {
#       "name": "lorem-ipsum",
#       "version": "0.1.1",
#       "dependencies": {
#         "optimist": {
#           "version": "0.3.7",
#           "dependencies": {
#             "wordwrap": {
#               "version": "0.0.2"
#             }
#           }
#         },
#         "inflection": {
#           "version": "1.2.6"
#         }
#       }
#     }

#     getDependencies(loremIpsum) // => [ 'inflection@1.2.6', 'optimist@0.3.7', 'wordwrap@0.0.2' ]

# ## Conditions:

#   * Do not use any for/while loops.

# ## Boilerplate


#     function getDependencies(tree) {
#       // SOLUTION GOES HERE
#       // Note: Feel free to add additional arguments
#       // to this function for use with recursive calls.
#       // Or not! There are many ways to recurse.
#     }

#     module.exports = getDependencies

# ## Resources

#   * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys


# === Solution ===
#
module.exports = (tree) ->
  output = []
  do getDeps = (subtree = tree) ->
    if subtree.dependencies != undefined
      Object.keys(subtree.dependencies).forEach (dep) ->
        version = "#{dep}@#{subtree.dependencies[dep].version}"
        output.push version if output.indexOf(version) == -1
        getDeps(subtree.dependencies[dep])

  output.sort()


# === Official Solution ===
#
# function getDependencies(mod, result) {
#   result = result || []
#   var dependencies = mod.dependencies || []
#   Object.keys(dependencies).forEach(function(dep) {
#     var key = dep + '@' + mod.dependencies[dep].version
#     if (result.indexOf(key) === -1) result.push(key)
#     getDependencies(mod.dependencies[dep], result)
#   })
#   return result.sort()
# }

# module.exports = getDependencies
