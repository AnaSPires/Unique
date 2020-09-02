
import 'package:flutter/material.dart';

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
