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
import 'BD/server.dart';

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
        ]));
  }
}
