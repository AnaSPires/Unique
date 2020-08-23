import 'dart:io';
import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http_server/http_server.dart';

import '../BD/dart_mongo.dart' as dart_mongo;

main(List<String> arguments) async {
  var server = await HttpServer.bind('177.194.125.214/32', 8080);
  Db db = Db("mongodb://177.194.125.214/32:27017/Unique");
  await db.open();

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
