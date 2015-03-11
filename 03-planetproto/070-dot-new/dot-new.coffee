# At this stage we know enough to do amazing things with JavaScript objects.

## Challenge

#   * Define an object called 'Robot'
#   * Define a method called 'new' in Robot
#   * When Robot.new is called it should return a new object with the prototype set to Robot e.g.

#     var robby = Robot.new();
#     // Robot should be the prototype of robby

# ## Boilerplate

# Follow the instructions in the boilerplate file created.
# A file 070.js with the necessary boilerplate has been created for you.






# -> Define an object called 'Robot'
# -> Define a method called 'new' in Robot
# -> When Robot.new is called it should return a new object with Robot as its prototype
#    e.g. var robby = Robot.new();
#    Robot should be the prototype of robby

Robot = Object.create
Robot.new = -> Object.create @


# ------------------------------------------------
# Common JS exports for verification, don't modify
module.exports = { Robot: Robot }


# === Official Solution ===

# var Robot = {
#     new: function () {
#         return Object.create(this);
#     }
# }

# module.exports = {
#     Robot: Robot
# }
