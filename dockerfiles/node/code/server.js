var express = require('express'),
  path = require('path'),
  app = express();

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', function(req, res) {
  res.redirect('index.html');
});

app.listen(9000);

console.log('Running at port 9000');
