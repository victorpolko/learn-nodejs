// Generated by CoffeeScript 1.4.0
(function() {

  module.exports = function(input, operation) {
    return input.reduce(function(arr, num, index) {
      arr[index] = operation(num);
      return arr;
    }, []);
  };

}).call(this);
