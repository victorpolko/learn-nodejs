// Generated by CoffeeScript 1.4.0
(function() {

  module.exports = function(words) {
    return words.reduce(function(counter, word) {
      counter[word] = ++counter[word] || 1;
      return counter;
    }, {});
  };

}).call(this);
