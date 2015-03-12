# Convert the following code from a for-loop to Array#map:

#     function doubleAll(numbers) {
#       var result = []
#       for (var i = 0; i < numbers.length; i++) {
#         result.push(numbers[i] * 2)
#       }
#       return result
#     }

#     module.exports = doubleAll

# ## Arguments

#   * numbers: An Array of 1 to 20 Integers between 0 and 9

# ## Conditions

#   * Your solution should use Array.prototype.map()
#   * Do not use any for/while loops or Array.prototype.forEach.
#   * Do not create any unecessary functions e.g. helpers.

# ## Resources

#   * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map

# ## Boilerplate

#     function doubleAll(numbers) {
#       // SOLUTION GOES HERE
#     }

#     module.exports = doubleAll

# === Solution ===
#
module.exports = (numbers) ->
  numbers.map (num) ->
    num * 2


# === Official Solution ===
#
# module.exports = function doubleAll(numbers) {
#   return numbers.map(function double(num) {
#     return num * 2
#   })
# }
