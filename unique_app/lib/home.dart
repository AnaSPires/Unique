import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uniqueapp/BD/models/resp_model.dart';
import 'package:uniqueapp/menu.dart';
import './index_setter.dart';
import 'package:convert/convert.dart';
import 'package:http/http.dart' as http;
import 'BD/server.dart' as myServer;

void main() {
  runApp(MaterialApp(title: "Home", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variaveis

  var myData = "";

  //codigo

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          /*Text(
            "Aqui terá uma home",
            style: TextStyle(fontSize: 20.0),
          ),*/
          Text(
            myData,
            style: TextStyle(fontSize: 20.0),
          ),
          new FutureBuilder<List<Responsavel>>(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return new ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(snapshot.data[index].myObj['nome'],
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold)),
                              new Divider()
                            ]);
                      });
                }
              })
        ]));
  }

  Future<List<Responsavel>> getData() async {
    final response = await http.get('http://177.194.125.214/32:8000/resp');
    print(response.body);
    List responseJson = json.decode(response.body);
    List<Responsavel> respList = createRespList(responseJson);
    myData += respList.toString() + "ue";
  }

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
}
