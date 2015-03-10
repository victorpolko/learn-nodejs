(function() {
  var count;

  count = 0;

  process.argv.slice(2, process.argv.length).forEach(function(arg) {
    return count += +arg;
  });

  console.log(count);

}).call(this);
