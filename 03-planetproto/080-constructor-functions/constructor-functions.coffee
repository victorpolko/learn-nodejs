# Constructor functions are the most used way in JavaScript to construct prototype chains. The popularity of constructor functions comes from the fact that this was the only original way for constructing types initially.
# Also many engines are highly optimized for constructor functions.

# In JavaScript you can create an object like this:

#     function Alien() {
#         this.age = 10;
#     }

#     var zippy = new Alien();

# Functions when used with the keyword new behave like factories, meaning that they create new objects.
# The new object they create is linked to the function by its prototype, more on this later. So in JavaScript we call this an instance of the function.

#     // zippy is an instance of Alien
#     console.log(zippy instanceof Alien) //=> true

# ## Challenge

# Follow the instructions in the boilerplate file created.
# A file 080.js with the necessary boilerplate has been created for you.



# -> Define a 'Robot' constructor function
# -> Inside the Robot constructor assign a property 'motors' on 'this',
#    set motors to 2
# -> Create an instance of Robot called 'robby'
class Robot
  constructor: (@motors = 2) ->

robby = new Robot()

# -> What is the result of `(robby instanceof Robot)`?
claim((robby instanceof Robot), true)

# -> What is `robby.motors`?
claim(robby.motors, 2)


# ------------------------------------------------
# Common JS exports for verification, don't modify
module.exports =
  Robot:  Robot
  robby:  robby


# === Official Solution ===

# function Robot() {
#     this.motors = 2;
# };

# var robby = new Robot();

# claim((robby instanceof Robot), true);
# claim(robby.motors, 2);

# module.exports = {
#     Robot:   Robot,
#     robby:   robby
# }
