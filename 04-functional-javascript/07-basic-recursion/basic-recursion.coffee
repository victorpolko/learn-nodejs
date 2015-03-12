# Implement Array#reduce using recursion.

# To test your reduction works correctly we will use your reduce implementation to execute our solution to the previous basic_reduce problem. i.e. your reduce function will be passed an array of words, and a function, and an initial value which will return an object containing the counts for each word found in the array. You don't need to implement this functionality, it will be supplied to your reduce implementation.

# For simplicity, your implementation of reduce need not replicate the behaviour of a reduce missing an initial value. You may assume the initial value will always be supplied.

# ## Arguments

#   * arr: An Array to reduce over
#   * fn: Function to use as the reduction step. Like regular Array#reduce, this function must be passed previousValue, currentValue, index and the array we're iterating over.
#   * init: Initial value of the reduction. Unlike Array#reduce, this value is required (and you may assume it will always be supplied).

# ## Example

#     // Your reduce function should behave the same as a
#     // regular Array#reduce, but it will take the array
#     // to operate on as the first argument:

#     reduce([1,2,3], function(prev, curr, index, arr) {
#       return prev + curr
#     }, 0)
#     // => 6

# ## Conditions

#   * Do not use any for/while loops.
#   * Do not use any Array methods like Array#map or Array#reduce.
#   * Do not create any unecessary functions e.g. helpers.

# ## Resources

#   * https://en.wikipedia.org/wiki/Recursion
#   * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce

# ## Boilerplate

#     function reduce(arr, fn, initial) {
#       // SOLUTION GOES HERE
#     }

#     module.exports = reduce

# === Solution 1 ===
#
# reduce = (arr, fn, initial) ->
#   current = arr[0]
#   fn(initial, current)
#   arr.shift()

#   if arr.length > 0
#     reduce(arr, fn, initial)
#   else
#     initial

# module.exports = reduce

# === Solution 2 ===
#
reduce = (arr, fn, initial) ->
  return reduceOne = do (index = 0, value = initial) ->
    return value if index > arr.length - 1
    reduceOne index + 1, fn(value, arr[index], index, arr)

module.exports = reduce

# === Official Solution ===
#
# function reduce(arr, fn, initial) {
#   return (function reduceOne(index, value) {
#     if (index > arr.length - 1) return value // end condition
#     return reduceOne(index + 1, fn(value, arr[index], index, arr)) // calculate & pass values to next step
#   })(0, initial) // IIFE. kick off recursion with initial values
# }

# module.exports = reduce
