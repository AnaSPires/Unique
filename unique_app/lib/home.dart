
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uniqueapp/BD/models/resp_model.dart';
import 'package:uniqueapp/info.dart';
import 'package:uniqueapp/menu.dart';
import 'package:uniqueapp/pre_diag.dart';
import 'package:uniqueapp/tratamento.dart';
import './index_setter.dart';
import 'package:convert/convert.dart';
import 'package:http/http.dart' as http;
import 'BD/server.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

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

  Color color;

  @override
  void initState() {
    super.initState();
    color = Colors.deepPurple;
  }


  setColor(int pos) {
    setState(() {

    });


  }
  //codigo


  int currentPage = 0;
  final _pageOptions = [Info(), PreDiag(), Tratamento()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fancy Bottom Navigation Bar"),
      ),
      body: _pageOptions[currentPage],
      bottomNavigationBar:
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          stops: [0.0, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child:
      FancyBottomNavigation(
        activeIconColor: color,
        inactiveIconColor: Colors.white,
        textColor: Colors.white,
        circleColor: Colors.white,
        barBackgroundColor: Colors.transparent,
        tabs: [
          TabData(iconData: Icons.home, title: "Pre-Diagnóstico"),
          TabData(iconData: Icons.wb_sunny, title: "Home"),
          TabData(iconData: Icons.fastfood, title: "Tratamento")
        ],
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
            if(position == 0)
              color = Colors.deepPurple;
            else
            if(position == 1)
              color = Color(0xCCac3959);
            else
              color = Colors.red;
          });
          //setColor(currentPage);
          print(currentPage);
        },
      ),
    ));
    //"Transtornos de aprendizagem são problemas neurológicos que dificultam o processo de aprendizagem de leitura e escrita.",
    //"Os primeiros indícios da presença de algum desses distúrbios começam a aparecer logo na infância, quando a criança começa a ter contato com atividades que requerem habilidades de  processamento de informações, que é prejudicado por essas disfunções.",
                         
                         
  }
}