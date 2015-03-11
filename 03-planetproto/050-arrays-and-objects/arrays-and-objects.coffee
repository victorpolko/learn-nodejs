# Arrays and objects may not behave as you expect them.

# Let's see what happens when you modify an array:

#     var alien = {
#         skills: ['morhp']
#     }

#     var zorg = {}
#     zorg.__proto__ = alien

#     zorg.skills.push('clone')

#     console.log(zorg.skills);
#     //=> morhp, clone
#     // we expected this

#     console.log(alien.skills);
#     //=> morhp, clone
#     // maybe we didn't expect this, we have modified the array in the prototype object.

# When you change an array or an object you make the change directly on the object.

# ## Challenge

# Follow the instructions in the boilerplate file created.
# A file 050.js with the necessary boilerplate has been created for you.



# -> Create three objects: 'machine', 'robot' and 'vehicle'
# -> In the definition of machine set a property 'parts', set it to an
#    empty array `[]`
# -> In the definition of machine set a property 'capabilities', set it to
#    an empty object `{}`
machine = { parts: [], capabilities: {} }
robot = {}
vehicle = {}

# -> Let's set the prototype of both robot and vehicle to machine
robot.__proto__ = machine
vehicle.__proto__ = machine

# -> What is `robot.parts`?
claim(robot.parts, [])

# -> What is `vehicle.parts`?
claim(vehicle.parts, [])

# -> What is `robot.capabilities`?
claim(robot.capabilities, {})

# -> What is `vehicle.capabilities`?
claim(vehicle.capabilities, {})

# -> Let's add a 'core' part to robot
robot.parts.push('core')

# -> What is `robot.parts` now?
claim(robot.parts, ['core'])

# -> What is `vehicle.parts` now?
claim(vehicle.parts, ['core'])

# -> Let's set an ability to vehicle
vehicle.capabilities.fly = true

# -> What is `robot.capabilities` now?
claim(robot.capabilities, { fly: true })

# -> What is `vehicle.capabilities` now?
claim(vehicle.capabilities, { fly: true })


# ------------------------------------------------
# Common JS exports for verification, don't modify
module.exports =
  machine: machine
  vehicle: vehicle
  robot:   robot


# === Official Solution ===

# var machine = {
#     parts: [],
#     capabilities: {}
# };

# var vehicle = {};
# var robot = {};

# robot.__proto__ = machine;
# vehicle.__proto__ = machine;

# // -> What is `robot.parts`?
# claim(robot.parts, []);

# // -> What is `vehicle.parts`?
# claim(vehicle.parts, []);

# claim(robot.capabilities, {});
# claim(vehicle.capabilities, {});

# robot.parts.push('core');

# claim(robot.parts, ['core']);
# claim(vehicle.parts, ['core']);

# vehicle.capabilities.fly = true;

# claim(robot.capabilities, {fly: true});
# claim(vehicle.capabilities, {fly: true});

# module.exports = {
#     machine:   machine,
#     vehicle:   vehicle,
#     robot:     robot
# }
