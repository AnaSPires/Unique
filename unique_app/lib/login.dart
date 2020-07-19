import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uniqueapp/menu.dart';
import 'package:uniqueapp/login.dart';

void main() {
  runApp(MaterialApp(title: "Login", home: Login()));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
    return Scaffold(
    body: Container(
        color: Colors.white,
        alignment: Alignment(0.0, 0.0),
        padding: EdgeInsets.only(left: 0.0, right: 0.0),
        child: Stack(children: <Widget>[
          Container(
              alignment: Alignment(1.5, -1.0),
              width: 800.0,
              child: Image.asset("images/login_up.png", width: 890.0)),
          Padding(
            padding: EdgeInsets.only(top:175.0, left: 140.0, right: 140.0),
            child:

            Container(
                child:
                Text(
                  "Login", style: TextStyle(color:Colors.indigo, decoration: TextDecoration.none, fontSize: 40.0),

                )),),
          Padding(
            padding: EdgeInsets.only(top:90.0, left: 0.0, right: 0.0),
            child:

            Container(
                child:
                Image.asset(
                  "images/login_icon.png",
                  width: 590.0,
                )),),
          Padding(
            padding: EdgeInsets.only(top:360.0, left: 80.0, right: 80.0),
            child:

            Column(

                children:<Widget>[
                  TextFormField(
                decoration: InputDecoration(
                labelText: 'Enter your username'),
                  )])),

          Padding(
            padding: EdgeInsets.only(top:520.0, left: 89.21, right: 89.21),
            child:

            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    side: BorderSide(color: Colors.pink)),
                onPressed: () {
                  _navigateToLogin();
                },
                color: Colors.pink,
                textColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left:60.0, right: 60.0,top: 10.0,bottom: 10.0),
                  child:
                  Text("Login".toUpperCase(),
                      style: TextStyle(fontSize: 28)),
                )),),
          Container(
            alignment: Alignment(0.0,1.22),
            padding: EdgeInsets.only(left: 0.0, right: 0.0),
            child:
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90.0),
                    side: BorderSide(color: Colors.orange)),
                onPressed: () {},
                color: Colors.orange,
                textColor: Colors.white,
                padding: EdgeInsets.only(top:0.0, left: 0.0, right: 0.0),
                child: Padding(
                  padding: EdgeInsets.only(left:132.2, right: 132.2,top: 20.0,bottom: 80.0),
                  child:
                  Text("Cadastro".toUpperCase(),
                      style: TextStyle(fontSize: 28)),
                )),),
        ])));

  }
  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context)=> Menu())
    );
  }
}
