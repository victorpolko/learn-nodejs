# What happens if you update a property that already exists in the prototype? Let's see:

#     var alien = {
#         kind: 'alien'
#     }

#     var zippy = {}
#     zippy.__proto__ = alien

#     zippy.kind = 'zippy'

#     console.log(zippy.kind); //=> 'zippy'
#     // zippy now has a 'kind' property

#     console.log(alien.kind); //=> 'alien'
#     // alien has not being modified

# New / updated properties are assigned to the object, not to the prototype
# Note that the property 'kind' now exists in both alien and zippy.

# ## Challenge

# Follow the instructions in the boilerplate file created.
# A file 040.js with the necessary boilerplate has been created for you.

# -> Define three objects: 'machine', 'robot' and 'vehicle'
   # In the definition of machine add a property 'motors' set to null.
machine = { motors: null }
robot = {}
vehicle = {}

# -> Let's make machine the prototype of robot and vehicle
vehicle.__proto__ = machine
robot.__proto__ = machine

# -> What are `machines.motors`, `robot.motors` and `vehicle.motors`?
claim(machine.motors, null)
claim(robot.motors, null)
claim(vehicle.motors, null)

# -> Set `robot.motors` to 4 by direct assignment
robot.motors = 4

# -> What are `machines.motors`, `robot.motors` and `vehicle.motors` now?
claim(machine.motors, null)
claim(robot.motors, 4)
claim(vehicle.motors, null)


# ------------------------------------------------
# Common JS exports for verification, don't modify
module.exports =
    machine:  machine
    vehicle:  vehicle
    robot:    robot


# === Official Solution ===

# var machine = {
#     motors: null
# };

# var vehicle = {};

# var robot = {};

# // -> Let's make machine the prototype of robot and vehicle
# vehicle.__proto__ = machine;
# robot.__proto__ = machine;

# claim(machine.motors, null);
# claim(robot.motors, null);
# claim(vehicle.motors, null);

# robot.motors = 4;

# claim(machine.motors, null);
# claim(robot.motors, 4);
# claim(vehicle.motors, null);

# module.exports = {
#     machine: machine,
#     vehicle: vehicle,
#     robot:   robot
# }
