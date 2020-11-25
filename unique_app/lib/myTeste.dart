//import 'dart:html';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
//import 'package:csv/csv.dart';
import 'dart:io';
//import 'package:uniqueapp/machine_learning/MyClass.py' as myPython;

void main() {
  runApp(MaterialApp(title: "MyTeste", home: MyTeste()));
}

class MyTeste extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<MyTeste> {
  //variaveis
  var response = "Ainda não";
  //codigo

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Transtornos de aprendizagem são problemas neurológicos que dificultam o processo de aprendizagem de leitura e escrita.  Os primeiros indícios da presença de algum desses distúrbios começam a aparecer logo na infância, quando a criança começa a ter contato com atividades que requerem habilidades de  processamento de informações, que é prejudicado por essas disfunções.",
            style: TextStyle(fontSize: 20.0),
          ),
          RaisedButton(onPressed: () {
            _diagnostico();
          }),
          Text(
            response,
            style: TextStyle(fontSize: 20.0),
          ),
        ]));
  }

  void _diagnostico() {
    //Navigator.of(context).pushReplacement(
    //    MaterialPageRoute(builder: (BuildContext context) => Menu()));
    escreverNoArquivo("meus dados");
    //chamar arquivo python para ler
    //response = myPython.calcula();
    response = "PRONTO";
  }

  escreverNoArquivo(String csv) async {
    final directory = await getApplicationDocumentsDirectory();
    final pathOfTheFileToWrite =
        directory.path + "/machine_learning/dados.csv";
    File file = File(pathOfTheFileToWrite); //await
    csv = "N;N;S;N;9;3;B;0;0;0;0";
    file.writeAsString(csv);
  }
}
