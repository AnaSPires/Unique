import 'dart:io';
import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http_server/http_server.dart';
import '../index_setter.dart';
import 'Controllers//infoSobre_controller.dart';
import '../home.dart' as myHomePage;

import 'dart_mongo.dart' as dart_mongo;

main(List<String> arguments) async {
  var server = await HttpServer.bind('localhost', 8080);
  Db db = Db("mongodb://localhost:27017/Unique");
  await db.open();

  print('Connected to database');
  var myUri = '/';
  var index = RouteSetter().getCurrentRoute();

  if (index == '1') {
    myUri = '/sobre';
  }

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
      case '/users':
        //requestBody.request.method == "GET"
        dart_mongo.UserController(requestBody, db);
        break;

      default:
        requestBody.request.response
          ..statusCode = HttpStatus.notFound
          ..write("Not found");

      // await requestBody.request.response.close();
    }
  });
}
