# # Task

# Modify the recursive repeat function provided in the boilerplate, such that it does not block the event loop (i.e. Timers and IO handlers can fire).  This necessarily requires repeat to be asynchronous.

# A timeout is queued to fire after 1 second, which will print the results of the test and exit the process. repeat should release control of the event loop such that the timeout fires before 1500 milliseconds elapse.

# Try to perform as many operations as you can before the timeout fires!

# ## Conditions

#   * Do not use any for/while loops or Array#forEach.
#   * Do not create any unecessary functions e.g. helpers.

# ## Hints

#   * If your program takes a long time to run, something is probably wrong.Use Control - C to kill the node process.

# ## Resources

#   * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Timers

# ## Boilerplate

#     function repeat(operation, num) {
#       // modify this so it can be interrupted
#       if (num <= 0) return
#       operation()
#       return repeat(operation, --num)
#     }

#     module.exports = repeat

# === Solution ===
#
repeat = (operation, num) ->
  return if num <= 0
  operation()
  setImmediate -> repeat(operation, --num) # setImmediate repeat, operation, --num

module.exports = repeat


# === Official Solution ===
#
# function repeat(operation, num) {
#   if (num <= 0) return

#   operation()

#   // release control every 10 or so
#   // iterations.
#   // 10 is arbitrary.
#   if (num % 10 === 0) {
#     setTimeout(function() {
#       repeat(operation, --num)
#     })
#   } else {
#     repeat(operation, --num)
#   }
# }

# module.exports = repeat
