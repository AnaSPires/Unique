import 'package:mongo_dart/mongo_dart.dart';
import 'package:uniqueapp/BD/models/resp_model.dart';

class MyServer {
  var server;
  Db db;
  DbCollection myColl;

  MyServer() {
    db = Db.pool([
      "mongodb://arianepaulabarros:raizesaereas18173@cluster-unique-shard-00-00.cfl1u.mongodb.net:27017/Unique?ssl=true&replicaSet=atlas-j4mn6c-shard-0&authSource=admin&retryWrites=true&w=majority",
      "mongodb://arianepaulabarros:raizesaereas18173@cluster-unique-shard-00-01.cfl1u.mongodb.net:27017/Unique?ssl=true&replicaSet=atlas-j4mn6c-shard-0&authSource=admin&retryWrites=true&w=majority",
      "mongodb://arianepaulabarros:raizesaereas18173@cluster-unique-shard-00-02.cfl1u.mongodb.net:27017/Unique?ssl=true&replicaSet=atlas-j4mn6c-shard-0&authSource=admin&retryWrites=true&w=majority"
    ]);
  }

  prepareConnection() async {
    await db.open(secure: true);
    print('Connected to database');
  }

  getData(String collName) async {
    this.prepareConnection();
    myColl = db.collection(collName);
    var resp = await myColl.find().toList();
    db.close();
    return resp;
  }

  findOneObj(String collName, String email) async {
    this.prepareConnection();
    myColl = db.collection(collName);
    var myResp = await myColl.findOne(where.eq("email", email));

    return myResp;
  }

  addResp(Responsavel myNewResp, String nomeColl) async {
    await prepareConnection();
    myColl = await db.collection(nomeColl);
    await myColl.insert({
      "id": myNewResp.id,
      "nome": myNewResp.nome,
      "email": myNewResp.email,
      "celular": myNewResp.celular,
      "id_crianca": myNewResp.id_crianca
    });
    print('saved');
    db.close();
  }

  getSize(String nomeColl) {
    prepareConnection();
    myColl = db.collection(nomeColl);
    var mySize = myColl.count();

    db.close();
    return mySize.toString();
  }

  removeResp() async {
    //REMOVE
    prepareConnection();
    await myColl.remove(await myColl.findOne(where.eq("id", 30.0)));
    print('Removed');
    db.close();
  }

  updateResp() async {
    //UPDATE
    prepareConnection();
    await myColl.update(await myColl.findOne(where.eq("id", 30.0)), {
      r'$set': {'telefone': '(19)88888-8888'}
    });

    print('updated!');
    db.close();
  }

  closeConnection() async {
    //if (db.state == ConnectionState.active)
    await db.close();
  }
}
