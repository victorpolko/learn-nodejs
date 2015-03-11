# As explained before __proto__ is not a well supported way of assigning prototypes to objects. So the next simplest way is using Object.create(). This is available in ES5, but old browsers / engines can be shimmed using this [es5-shim](https://github.com/kriskowal/es5-shim).

#     var alien = {
#         kind: 'alien'
#     }

#     // creates a new object which prototype is alien
#     var zack = Object.create(alien);

#     console.log(zack.kind); // => ‘alien’

# You can pass an object to Object.create to add specific properties for the new object

#     var zack = Object.create(alien, {age: {value:  13} });
#     console.log(zack.age); // => ‘13’

# Yes, the object you need to pass is a bit convoluted, but that is the way it is. See the docs [here](https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Object/create).

# ### Object.getPrototypeOf

# You can get the prototype of an object using Object.getPrototypeOf

#     var zack = Object.create(alien);
#     Object.getPrototypeOf(zack); //=> alien

# There is no such thing as Object.setPrototype.

# ## Challenge

# Follow the instructions in the boilerplate file created.
# A file 060.js with the necessary boilerplate has been created for you.



# -> Let's create an object called 'machine'
machine = {}

# -> Use Object.create to create another object called 'robot' with 'machine'
#    set as the prototype
robot = Object.create machine

# -> Use Object.create to create another object called 'robby' with 'robot'
#    as the prototype
robby = Object.create robot

# -> What is the result of `machine.isPrototypeOf(robby)`?
claim(machine.isPrototypeOf(robby), true)

# -> What is the result of `robot.isPrototypeOf(robby)`?
claim(robot.isPrototypeOf(robby), true)

# -> Which object is the direct prototype of robby?
claim.same(Object.getPrototypeOf(robby), robot)


# ------------------------------------------------
# Common JS exports for verification, don't modify
module.exports =
  machine:  machine
  robot:    robot
  robby:    robby



# === Official Solution ===

# var machine = {}

# var robot = Object.create(machine);
# var robby = Object.create(robot);

# // -> What is the result of `machine.isPrototypeOf(robby)`?
# claim(machine.isPrototypeOf(robby), true);

# // -> What is the result of `robot.isPrototypeOf(robby)`?
# claim(robot.isPrototypeOf(robby), true);

# // -> Which object is the direct prototype of robby?
# claim.same(Object.getPrototypeOf(robby), robot);

# // ------------------------------------------------
# module.exports = {
#     machine:  machine,
#     robot:    robot,
#     robby:    robby
# }
