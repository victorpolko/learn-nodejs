// Generated by CoffeeScript 1.4.0
(function() {

  module.exports = function(userIds, load, done) {
    var complete, users;
    users = [];
    complete = 0;
    return userIds.forEach(function(id, index, array) {
      return load(id, function(user) {
        users[index] = user;
        if (++complete === array.length) {
          return done(users);
        }
      });
    });
  };

}).call(this);
