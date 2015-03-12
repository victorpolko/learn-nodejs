# # Task

# Override a specified method of an object with new functionality while still maintaining all of the old behaviour.

# Create a spy that keeps track of how many times a function is called.

# ## Example

#     var spy = Spy(console, 'error')

#     console.error('calling console.error')
#     console.error('calling console.error')
#     console.error('calling console.error')

#     console.log(spy.count) // 3

# ## Arguments

#   * target: an object containing the method `method`
#   * method: a string with the name of the method on `target` to spy on.

# ## Conditions

#   * Do not use any for/while loops or Array#forEach.
#   * Do not create any unecessary functions e.g. helpers.

# ## Hint

#   * Functions have context, input and output. Make sure you consider the context, input to *and output from* the function you are spying on.

# ## Boilerplate

#     function Spy(target, method) {
#       // SOLUTION GOES HERE
#     }

#     module.exports = Spy

# === Tries ===
# module.exports = (target, method) -> target[method] = target[method].bind(target, -> @count++)
# module.exports = (target, method) -> target[method].apply(target, -> @count++)
# module.exports = (target, method) ->
#   originalFunc = target[method]
#   @count++
#   originalFunc.apply(target, arguments)

# === Solution ===
#
module.exports = (target, method) ->
  orig = target[method]
  thiss = @
  @count = 0
  target[method] = ->
    thiss.count++
    orig.apply(target, arguments)
  @


# === Official Solution ===
#
# function Spy(target, method) {
#   var originalFunction = target[method]

#   // use an object so we can pass by reference, not value
#   // i.e. we can return result, but update count from this scope
#   var result = {
#     count: 0
#   }

#   // replace method with spy method
#   target[method] = function() {
#     result.count++ // track function was called
#     return originalFunction.apply(this, arguments) // invoke original function
#   }

#   return result
# }

# module.exports = Spy
