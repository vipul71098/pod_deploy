var http = require('http');

var server = http.createServer(function(request, response) {

    response.writeHead(200, {"Content-Type": "text/plain"});
    response.end("Hello World!!!!  This is node demo app which will to be deploy to aws eks");

});

var port = process.env.PORT || 5000;
server.listen(port);

console.log("Server running at http://localhost:%d", port);
