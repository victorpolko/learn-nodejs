(function() {
  var net, port, prefixWithZeroIfNecessary, showTime;

  net = require('net');

  port = process.argv[2];

  prefixWithZeroIfNecessary = function(number) {
    if (number < 10) {
      return "0" + number;
    } else {
      return number;
    }
  };

  showTime = function() {
    var date, day, hours, minutes, month, year;
    date = new Date;
    year = date.getFullYear();
    month = prefixWithZeroIfNecessary(date.getMonth() + 1);
    day = prefixWithZeroIfNecessary(date.getDate());
    hours = prefixWithZeroIfNecessary(date.getHours());
    minutes = prefixWithZeroIfNecessary(date.getMinutes());
    return "" + year + "-" + month + "-" + day + " " + hours + ":" + minutes;
  };

  net.createServer(function(socket) {
    socket.write(showTime() + "\n");
    return socket.end();
  }).listen(port);

}).call(this);
