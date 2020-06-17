import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Main",
      home: Home()
  ));
}



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Image.asset(
                  "images/logo.png",
                  fit: BoxFit.contain,
                  height: 125.0,
                  Navigator.push())])
//
    );
  }
}

