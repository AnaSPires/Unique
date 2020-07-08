import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uniqueapp/menu.dart';

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
        alignment: Alignment(0.0, -1.20),
        padding: EdgeInsets.only(left: 0.0, right: 0.0),
        child: Stack(children: <Widget>[
          Container(
              color: Colors.white,

              child: Image.asset("images/color.png", height: 290.0)),
          Padding(
            padding: EdgeInsets.only(top:220.0, left: 30.0, right: 30.0),
            child:

          Container(
            color: Colors.white,
            child:
            Image.asset(
              "images/logo.png",
              width: 280.0,
            )),)
        ]));
  }
}
