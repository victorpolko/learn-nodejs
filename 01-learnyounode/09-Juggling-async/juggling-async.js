(function() {
  var collectDataForIndex, counter, http, results;

  http = require('http');

  results = [];

  counter = 0;

  collectDataForIndex = function(index) {
    return http.get(process.argv[1 + index], function(response) {
      response.setEncoding('utf8');
      response.on('error', function(err) {
        return console.error("Error:\n" + err);
      });
      response.on('data', function(data) {
        return results[index] += data;
      });
      return response.on('end', function() {
        counter++;
        if (counter === 3) {
          return results.forEach(function(result) {
            return console.log(result);
          });
        }
      });
    });
  };

  [1, 2, 3].forEach(function(index) {
    results[index] = '';
    return collectDataForIndex(index);
  });

}).call(this);
