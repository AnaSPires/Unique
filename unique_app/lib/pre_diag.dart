import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
//import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uniqueapp/BD/models/resp_model.dart';
import 'package:uniqueapp/menu.dart';
import './index_setter.dart';
import 'package:convert/convert.dart';
import 'package:http/http.dart' as http;
import 'BD/server.dart';

void main() {
  runApp(MaterialApp(title: "Home", home: PreDiag()));
}

class PreDiag extends StatefulWidget {
  @override
  _PreDiagState createState() => _PreDiagState();
}

class _PreDiagState extends State<PreDiag> {
  //variaveis

  var myData = "";

  //codigo

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "PRÉ-DIAGNOSTICO PAGE",
          style: TextStyle(fontSize: 25.0),
        ),
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
