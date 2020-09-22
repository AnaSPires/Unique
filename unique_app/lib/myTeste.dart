import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:io';
import 'package:uniqueapp/machine_learning/MyClass.py' as myPython;

void main() {
  runApp(MaterialApp(title: "MyTeste", home: MyTeste()));
}

class MyTeste extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<MyTeste> {
  //variaveis
  var response = "Ainda não...Calculando";
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
            "MINHA PAGINA TESTE",
            style: TextStyle(fontSize: 20.0),
          ),
          Padding(
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  _diagnostico();
                },
                color: Colors.transparent,
                textColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                  child: Text("Analisar", style: TextStyle(fontSize: 26)),
                )),
          ),
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
    response = myPython.calcula();
  }

  escreverNoArquivo(String csv) async {
    final directory = await getApplicationDocumentsDirectory();
    final pathOfTheFileToWrite =
        directory.path + "/machine_learning/student-mat.csv";
    File file = await File(pathOfTheFileToWrite);
    csv = "10;10;no;no;";
    file.writeAsString(csv);
  }
}
