const port = 5000;
//BODY parse of requistion
const bodyParser = require('body-parser');
const express = require('express');
const server = express();
var mongoose = require('mongoose');
var clientsRouter = require('./routes/clientsRouter');

var parentsRouter = require('./routes/parentsRouter');
server.use(bodyParser.urlencoded({ extended: true }));
server.use(bodyParser.json());
//var url = 'mongodb//ariane_barros:raizesaereas@ds145370.mlab.com:45370/ecomilhas'
var url = 'mongodb://localhost:177.194.125.214/ecomilhas'
var db = mongoose.connection;
db.on('error', console.error);
db.once('open', function() {
  console.log('Conectado ao banco de dados MongoDB.')
// const collectionProduct = db.collections("products")
});
mongoose
.connect(url, { useNewUrlParser: true ,
  useUnifiedTopology: true })
.then(() => console.log('DB Connected!'))
.catch(err => {
console.log(`DB Connection Error: ${err.message}`);
});;
/*router.get('/', function(req, res) {
  res.send('Esta é página principal!');  
});
router.get('/teste', function(req, res) {
  res.send('Esta é a página teste'); 
});*/
// aplica as rotas em nossa aplicação
server.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "X-Requested-With");
  next();
});
server.use('/parent',parentsRouter);
server.use('/client',clientssRouter);
server.listen(process.env.PORT || port, function () {
  console.log('Listening on');
  
});

module.exports = server
