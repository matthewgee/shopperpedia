express = require('express')

app = express.createServer()

app.use('/', express.static(__dirname + '/../public'))

app.get('/test', (req, res){
  res.send('Test U out');
})

app.listen(8001)

// 
// 
// connect = require('connect')
// http = require('http')
// 
// callback = (req, res) {
//   res.writeHead(200, {'Content-Type': 'text/html'});
//   res.write('test')
//   res.end()
// }
// 
// console.log(__dirname + '/public')
// 
// server = connect()
// server.use('/public', connect.static(__dirname + '/../public'))
// server.use('/test', callback)
// // server.use(require('browserify')({
// //     base : __dirname + '/js',
// //     mount : '/browserify.js',
// // }));
// 
// server.listen(8001)
