import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:uniqueapp/menu.dart';
import './index_setter.dart';
import 'BD/Controllers/resp_controller.dart';

void main() {
  runApp(MaterialApp(title: "Home", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variaveis
  //codigo

  var myCurrentIndex;

  @override
  Widget build(BuildContext context) {
    setCurrentPageIndex();
    return Container(
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Aqui terá uma home",
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            "Teste",
            style: TextStyle(fontSize: 20.0),
          )
        ]));
  }

  setCurrentPageIndex() {
    RouteSetter().setCurrentRoute('0');
  }
}
