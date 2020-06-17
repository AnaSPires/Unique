import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Login",
      home: Login()
  ));
}



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
//variaveis
//codigo

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Image.asset(
//                  "images/logo.png",
//                  fit: BoxFit.contain,
//                  height: 125.0)]

    ]));
  }
}

