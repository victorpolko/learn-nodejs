# Use Array#filter to write a function called getShortMessages.

# getShortMessages takes an array of objects with '.message' properties and returns an array of messages that are less than < 50 characters long.

# ## Arguments

#   * messages: an Array of 10 to 100 random objects that look something like this:

#     {
#       message: 'Esse id amet quis eu esse aute officia ipsum.' // random
#     }

# ## Conditions

#   * Do not use any for/while loops or Array#forEach.
#   * Do not create any unecessary functions e.g. helpers.

# ## Hint

#   * Try chaining some Array methods!

# ## Example

# The function should return an array containing the messages themselves, without their containing object.

# e.g.

#     [ 'Tempor quis esse consequat sunt ea eiusmod.',
#       'Id culpa ad proident ad nulla laborum incididunt.',
#       'Ullamco in ea et ad anim anim ullamco est.',
#       'Est ut irure irure nisi.' ]

# ## Resources

#   * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
#   * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map

# ## Boilerplate

#     function getShortMessages(messages) {
#       // SOLUTION GOES HERE
#     }

#     module.exports = getShortMessages

# === Solution 1 ===
#
module.exports = (messages = []) ->
  messages = messages.map (message) -> message.message
  messages.filter (message) -> message.length < 50

# === Solution 2 ===
#
# module.exports = (messages = []) ->
#   messages.filter (item) ->
#     item.message.length < 50
#   .map (item) -> item.message


# === Official Solution ===
#
# module.exports = function getShortMessages(messages) {
#   return messages.filter(function(item) {
#     return item.message.length < 50
#   }).map(function(item) {
#     return item.message
#   })
# }
