// ignore: unused_import
import 'dart:async';
// ignore: unused_import
import 'dart:developer';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore: unused_import
import 'package:uniqueapp/menu.dart';
import 'package:uniqueapp/login.dart';
import 'package:uniqueapp/cadastro.dart';

void main() {
  runApp(MaterialApp(title: "Unique", home: Entrada()));
}

class Entrada extends StatefulWidget {
  @override
  _EntradaState createState() => _EntradaState();
}

class _EntradaState extends State<Entrada> {
  //variaveis
  //codigo
//
//  startTimeout([int milliseconds]) {
//    var duration = milliseconds == null ? timeout : ms * milliseconds;
//    return new Timer(duration, handleTimeout);
//  }
//  void handleTimeout() {  // callback function
//    Navigator.push(context,
//    MaterialPageRoute(builder: (context)=> Login()));
//    debugPrint("vsf na moral");
//    log('serio isso?');
//  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment(0.0, 0.0),
        padding: EdgeInsets.only(left: 0.0, right: 0.0),
        child: Stack(children: <Widget>[
          Container(
              alignment: Alignment(0.0, -1.2),
              child: Image.asset("images/color.png", height: 290.0)),
          Padding(
            padding: EdgeInsets.only(top: 160.0, left: 100.0, right: 100.0),
            child: Container(
                child: Image.asset(
              "images/brain.PNG",
              width: 220.0,
            )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 350.0, left: 90.0, right: 90.0),
            child: Container(
                color: Colors.white,
                child: Image.asset(
                  "images/logo.png",
                  width: 240.0,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 520.0, left: 89.21, right: 89.21),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    side: BorderSide(color: Colors.pink)),
                onPressed: () {
                  _navigateToLogin();
                },
                color: Colors.pink,
                textColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 60.0, right: 60.0, top: 10.0, bottom: 10.0),
                  child: Text("Login".toUpperCase(),
                      style: TextStyle(fontSize: 28)),
                )),
          ),
          Container(
            alignment: Alignment(0.0, 1.22),
            padding: EdgeInsets.only(left: 0.0, right: 0.0),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90.0),
                    side: BorderSide(color: Colors.orange)),
                onPressed: () {
                  _navigateToCadastro();
                },
                color: Colors.orange,
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 132.2, right: 132.2, top: 20.0, bottom: 80.0),
                  child: Text("Cadastro".toUpperCase(),
                      style: TextStyle(fontSize: 28)),
                )),
          ),
        ]));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Login()));
  }

  void _navigateToCadastro() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Cadastro()));
  }
}
