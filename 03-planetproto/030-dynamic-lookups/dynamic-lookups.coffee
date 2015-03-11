# You can add properties to the prototype of an object at any time, the prototype chain lookup will find the new property as expected.

#     var alien = {}

#     var zippy = {}
#     zippy.__proto__ = alien

#     // zippy doesn't respond to kind at this point
#     console.log(zippy.kind); //=> undefined

#     // let's add kind to alien
#     alien.kind = 'alien'

#     // now zippy responds to kind
#     // because it finds 'kind' in alien
#     console.log(zippy.kind); //=> 'alien'

# ## Keypoints

#   * Objects delegate property lookups to their prototype.
#   * A prototype can be shared between objects.

# ## Challenge

# Follow the instructions in the boilerplate file created.
# A file 030.js with the necessary boilerplate has been created for you.


# -> Let's define three objects: 'machine' 'vehicle' and 'robot'
machine = {}
vehicle = {}
robot = {}

# -> Make machine the prototype of vehicle
# -> Make machine the prototype of robot
vehicle.__proto__ = machine
robot.__proto__ = machine

# -> What is `vehicle.motors`?
claim(vehicle.motors, undefined)

# -> What is `robot.motors`?
claim(robot.motors, undefined)

# -> Define a 'motors' property on machine, set this to 4
machine.motors = 4

# -> What is `vehicle.motors` now?
claim(vehicle.motors, 4)

# -> What is `robot.motors`?
claim(robot.motors, 4)


# ------------------------------------------------
# Common JS exports for verification, don't modify
module.exports =
    machine: machine
    vehicle: vehicle
    robot:   robot


# === Official Solution ===

# var machine = {}
# var vehicle = {}
# var robot = {}

# vehicle.__proto__ = machine;
# robot.__proto__ = machine;

# // What is vehicle.motors
# claim(vehicle.motors, undefined);
# // What is robot.motors?
# claim(robot.motors, undefined);

# machine.motors = 4;

# // -> What is `vehicle.motors` now?
# claim(vehicle.motors, 4);

# // -> What is `robot.motors`?
# claim(robot.motors, 4);

# // ------------------------------------------------
# module.exports = {
#     machine: machine,
#     vehicle: vehicle,
#     robot:   robot
# }
