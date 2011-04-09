connect = require('connect')
http = require('http')

callback = (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write('test')
  res.end()
}

server = http.createServer(callback)
server.use(connect.static(__dirname + '/public'))
// server.use(require('browserify')({
//     base : __dirname + '/js',
//     mount : '/browserify.js',
// }));

server.listen(8001)