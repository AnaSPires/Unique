import 'dart:async';
//import 'dart:developer';

import 'package:flutter/material.dart';
//import 'package:uniqueapp/menu.dart';
import 'package:uniqueapp/entrada.dart';

void main() {
  runApp(MaterialApp(
      title: "Unique",
      home: Main()
  ));
}



class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
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
void initState(){
  super.initState();
  
  _mookChechForSession().then(
      (status){
        if(status) {
          _navigateToEntrada();
        }
      });
}

Future<bool> _mookChechForSession() async{
  await Future.delayed(Duration(milliseconds: 5000),(){});
  _navigateToEntrada();
  return true;
}

void _navigateToEntrada(){
  Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context)=> Entrada())
  );
}


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                  "images/logo.png",
                  fit: BoxFit.contain,
                  height: 125.0,)])
//
    );
  }
}

