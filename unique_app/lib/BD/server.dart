import 'package:mongo_dart/mongo_dart.dart';
import 'package:uniqueapp/BD/models/resp_model.dart';

//MAIN PARA TESTE
/*main(List<String> args) {
  print("Preparando...");
  final myServer = new MyServer();
  try {
    print("Server criado");
    final myData = myServer.getData("Responsavel");

    print("Pegou dados");

    print(myData.toString());
    print("Fechou conexão");
  } catch (e) {
    print("Deu erro!");
    print(e);
  }
}*/

class MyServer {
  var server;
  //Db db = Db("mongodb://localhost:27017/Unique");
  Db db;
  DbCollection myColl;

  MyServer() {
    db = Db.pool([
      "mongodb://arianepaulabarros:raizesaereas18173@cluster-unique-shard-00-00.cfl1u.mongodb.net:27017/Unique?ssl=true&replicaSet=atlas-j4mn6c-shard-0&authSource=admin&retryWrites=true&w=majority",
      "mongodb://arianepaulabarros:raizesaereas18173@cluster-unique-shard-00-01.cfl1u.mongodb.net:27017/Unique?ssl=true&replicaSet=atlas-j4mn6c-shard-0&authSource=admin&retryWrites=true&w=majority",
      "mongodb://arianepaulabarros:raizesaereas18173@cluster-unique-shard-00-02.cfl1u.mongodb.net:27017/Unique?ssl=true&replicaSet=atlas-j4mn6c-shard-0&authSource=admin&retryWrites=true&w=majority"
    ]);

    //    .authSourceDb;
    // Db("mongodb://localhost:27017/Unique");
  }

  prepareConnection() async {
    //server = await HttpServer.bind('127.0.0.1', 8080);
    await db.open(secure: true);
    print('Connected to database');
  }

  getData(String collName) async {
    this.prepareConnection();
    myColl = db.collection(collName);
    var resp = await myColl.find().toList();
    //List<Responsavel> myList = createRespList(resp);

    //var myRespS = myList.first.toString();
    db.close();
    return resp;
  }

  findOneObj(String collName, String email) async {
    this.prepareConnection();
    myColl = db.collection(collName);
    var myResp = await myColl.findOne(where.eq("email", email));

    return myResp;
  }

/*
  List<Responsavel> createRespList(List data) {
    List<Responsavel> myList = new List();
    for (int i = 0; i < data.length; i++) {
      String nome = data[i]["nome"];
      /* String nome = data[i]["nome"];
      String email = data[i]["email"];
      String celular = data[i]["celular"];
      int id = data[i]["id"];
      int idCrianca = data[i]["id_crianca"];
      Responsavel movie = new Responsavel(id, nome, email, celular, idCrianca);*/
      Responsavel resp = new Responsavel(nome);
      myList.add(resp);
    }

    return myList;
  }
*/
  addResp(Responsavel myNewResp, String nomeColl) async {
    await prepareConnection();
    myColl = await db.collection(nomeColl);
    /* await myColl.save({
      "id": myNewResp.id,
      "nome": myNewResp.nome,
      "email": myNewResp.email,
      "celular": myNewResp.celular,
      "id_crianca": myNewResp.id_crianca
    });*/
    await myColl.insert({
      "id": myNewResp.id,
      "nome": myNewResp.nome,
      "email": myNewResp.email,
      "celular": myNewResp.celular,
      "id_crianca": myNewResp.id_crianca
    });
    /*
    await myColl.save({
      "id": 4,
      "nome": "Paulinho",
      "idCrianca": 4,
      "telefone":
          "(19)99999-9999" // id: 30.0, nome: Paulo, idCrianca: 3.0, telefone: (19)99999-9999}]
    });*/

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

  // var resp = await myColl.find().toList();
  //print(resp);

  //var specificResp = await myColl.find(where.eq('nome', 'Paulo')).toList();
  //print(specificResp);

  // print(await myColl.findOne(where.eq("id", 30.0)));*/

}

/*
---------------------------------------------------------------------

main(List<String> arguments) async {
  var server = await HttpServer.bind('127.0.0.1', 8080);
  //Db db = Db("mongodb://localhost:27017/Unique");
  Db db =
      Db("mongodb+srv://arianepaulabarros:raizesaereas18173@cluster-unique-shard-00-00.cfl1u.mongodb.net:27017,cluster-unique-shard-00-01.cfl1u.mongodb.net:27017,cluster-unique-shard-00-02.cfl1u.mongodb.net:27017/Unique?ssl=true&replicaSet=atlas-j4mn6c-shard-0&authSource=admin&retryWrites=true&w=majority")
          .authSourceDb;
  await db.open();
  var myCluster = Mongo;
  print('Connected to database');

  DbCollection myColl = db.collection("Responsaveis");



  server
      .transform(HttpBodyHandler())
      .listen((HttpRequestBody requestBody) async {
    switch (requestBody.request.uri.path) {
      case '/':
        requestBody.request.response
          ..write("helloooo")
          ..close();
        break;
      case '/resp':
        //requestBody.request.method == "GET"
        dart_mongo.RespController(requestBody, db);
        break;
      //requestBody.request.response..write(await myColl.find().toList());
      /*else if (requestBody.request.method == 'POST') {
          //var content = await requestBody.transform(utf).join();  //requestBody.  //(utf8.decode).join();
          var content =
              await requestBody.request.cast<List<JsonUtf8Encoder>>().join();
          var data = json.decode(content);
          myColl.save(data);
          print(data['nome']);
        } else if (requestBody.request.method == "PUT") {
          //replace data in registered user with specified id
          var id = int.parse(requestBody.request.uri.queryParameters['id']);
          //var content = await requestBody.transform(Utf8Decoder()).join();
          var content =
              await requestBody.request.cast<List<JsonUtf8Encoder>>().join();
          var data = json.decode(content);
          var itemToReplace = await myColl.findOne(where.eq('id', id));
          if (itemToReplace == null) {
            await myColl.save(itemToReplace);
          } else
            myColl.update(itemToReplace, data);
        } else if (requestBody.request.method == "DELETE") {
          var id = int.parse(requestBody.request.uri.queryParameters['id']);
          var itemToDelete = await myColl.findOne(where.eq('id', id));
          myColl.remove(itemToDelete);
        } else if (requestBody.request.method == "PATCH") {
          var id = int.parse(requestBody.request.uri.queryParameters['id']);
          //var content = await requestBody.transform(Utf8Decoder()).join();
          var content =
              await requestBody.request.cast<List<JsonUtf8Encoder>>().join();
          var data = json.decode(content);
          var itemToPatch = await myColl.findOne(where.eq('id', id));
          await myColl.update(itemToPatch, {
            r'$set': {data}
          });
        }
        await requestBody.request.response.close();
        break;*/
      default:
        requestBody.request.response
          ..statusCode = HttpStatus.notFound
          ..write("Not found");

      // await requestBody.request.response.close();
    }
  });

  // var resp = await myColl.find().toList();
  //print(resp);

  //var specificResp = await myColl.find(where.eq('nome', 'Paulo')).toList();
  //print(specificResp);

  /*await myColl.save({
    "id": 4,
    "nome": "Paulinho",
    "idCrianca": 4,
    "telefone":
        "(19)99999-9999" // id: 30.0, nome: Paulo, idCrianca: 3.0, telefone: (19)99999-9999}]
  });

  print('saved');*/

  //UPDATE
  /*await myColl.update(await myColl.findOne(where.eq("id", 30.0)), {
    r'$set': {'telefone': '(19)88888-8888'}
  });

  print('updated!');
  print(await myColl.findOne(where.eq("id", 30.0)));*/

  //REMOVE
  /*await myColl.remove(await myColl.findOne(where.eq("id", 30.0)));
  print('Removed');*/

  //await db.close();
}




*/
