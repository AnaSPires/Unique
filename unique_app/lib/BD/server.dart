import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;

class DBConnection {
  static DBConnection _instance;

  final String _host = "Unique";
  final String _port = "8080";
  final String _dbName = "Unique";
  Db _db;
//var url = 'mongodb://localhost:177.194.125.214/Unique'
  static getInstance() {
    if (_instance == null) {
      _instance = DBConnection();
    }
    return _instance;
  }

  Future<Db> getConnection() async {
    if (_db == null) {
      try {
        _db = Db(_getConnectionString());
        await _db.open();
        print("CONECTOU");
      } catch (e) {
        print(e);
      }
    }
    return _db;
  }

  _getConnectionString() {
    return "mongodb://$_host:$_port/$_dbName";
  }

  closeConnection() {
    _db.close();
  }
}

/*const port = 5000;
//BODY parse of requistion
const bodyParser = require('body-parser');
const express = require('express');
const server = express();
var mongoose = require('mongoose');
var clientsRouter = require('./routes/clientsRouter');

var parentsRouter = require('./routes/parentsRouter');
server.use(bodyParser.urlencoded({ extended: true }));
server.use(bodyParser.json());
//var url = 'mongodb//ariane_barros:uniquedb@ds145370.mlab.com:45370/ecomilhas'
//mongodb+srv://arianepaulabarros:<password>@cluster-unique.cfl1u.mongodb.net/<dbname>?retryWrites=true&w=majority
var url = 'mongodb://localhost:177.194.125.214/Unique'
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

module.exports = server*/
