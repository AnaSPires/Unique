import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:uniqueapp/login.dart';

void main() {
  runApp(MaterialApp(
      title: "Unique",
      home: Splash()
  ));
}



class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
          _nagigateToHome();
        }
      });
}

Future<bool> _mookChechForSession() async{
  await Future.delayed(Duration(milliseconds: 5000),(){});

  return true;
}

void _nagigateToHome(){
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

