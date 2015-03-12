var reduce;

reduce = function(arr, fn, initial) {
  var reduceOne;
  return (reduceOne = (function(index, value) {
    if (index > arr.length - 1) {
      return value;
    }
    return reduceOne(index + 1, fn(value, arr[index], index, arr));
  }))(0, initial);
};

module.exports = reduce;
