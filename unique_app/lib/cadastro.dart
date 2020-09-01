import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:uniqueapp/menu.dart';
import 'package:uniqueapp/login.dart';

import 'BD/server.dart';
import 'BD/models/resp_model.dart';

void main() {
  runApp(MaterialApp(title: "Cadastro", home: Cadastro()));
}

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

enum boolean { falso, verdadeiro }

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  DecoratedTabBar({@required this.tabBar, @required this.decoration});

  final TabBar tabBar;
  final BoxDecoration decoration;

  @override
  Size get preferredSize => Size(100.00, 100.0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Container(decoration: decoration)),
        tabBar,
      ],
    );
  }
}

class _CadastroState extends State<Cadastro>
    with SingleTickerProviderStateMixin {
  //variaveis
  //codigo

  bool responsavel = false;

//  final List<Tab> myTabs = <Tab>[
//  Tab(
//    text: "oi",
////  child:
////  Text("Paciente",style: TextStyle(fontSize: 24.0),)
//  ),
//  Tab(
//      text:"oie",
////  child:
////  Text('Responsável', style: TextStyle(fontSize: 24.0))),
//  )];

  var ariMeuAmor = Color(0xCC0090FF);
  var lindaDoMeuCoracao = Color(0xCC00FF7C);
  var loveusomuch = Color(0x800090FF);
  var vemcavem = Color(0x8000FF7C);

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    //var queryData = MediaQueryData(,)
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:  Container(
            color: Colors.white,
//            child: SingleChildScrollView(
        child:Stack(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: DefaultTabController(
                  length: 2,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 150.0, left: 50.0, right: 50.0),
                    child: Scaffold(
                        resizeToAvoidBottomInset: false,
                        appBar: DecoratedTabBar(
                          tabBar: TabBar(
                            tabs: [
                              Tab(
                                  child: Text(
                                "Paciente",
                                style: TextStyle(fontSize: 21.0),
                              )),
                              Tab(
                                child: Text('Responsável',
                                    style: TextStyle(fontSize: 21.0)),
                              )
                            ],
                            indicatorPadding:
                                EdgeInsets.only(top: 150.0, bottom: 150.0),
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.topLeft,
                                  colors: [lindaDoMeuCoracao, ariMeuAmor]),
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.topLeft,
                              colors: [loveusomuch, vemcavem],
                            ),
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                        ),
                        body: TabBarView(children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(top: 20.0, bottom: 90.0),
                              child: SingleChildScrollView(
                                  child:Container(
                                    height: 320.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28.0),
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.topLeft,
                                        colors: [
                                          lindaDoMeuCoracao,
                                          ariMeuAmor
                                        ]),
                                  ),
                                  child: SingleChildScrollView(
                                      child: Stack(children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 25.0, left: 35.0, right: 35.0),
                                      child: Container(
                                          width: 262.0,
                                          height: 52.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                width: 5.0,
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      38.0) //                 <--- border radius here
                                                  ))),
                                    ),
                                    RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(28.0),
                                            side: BorderSide(
                                                color: Colors.transparent)),
                                        onPressed: () {
                                          putData();
                                        },
                                        color: Colors.transparent,
                                        textColor: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 30.0,
                                              right: 30.0,
                                              top: 10.0,
                                              bottom: 10.0),
                                          child: Text("Bora lá",
                                              style: TextStyle(fontSize: 26)),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 30.0, left: 50.0, right: 50.0),
                                        child: Column(children: <Widget>[
                                          TextFormField(
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              height: 1.0,
                                            ),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(5.0),
                                                labelText: 'Nome',
                                                labelStyle: TextStyle(
                                                    fontSize: 18.0,
                                                    height: 1.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )
                                        ])),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 87.0, left: 35.0, right: 35.0),
                                      child: Container(
                                          width: 262.0,
                                          height: 52.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                width: 5.0,
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      38.0) //                 <--- border radius here
                                                  ))),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 92.0, left: 50.0, right: 50.0),
                                        child: Column(children: <Widget>[
                                          TextFormField(
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              height: 1.0,
                                            ),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(5.0),
                                                labelText: 'Sobrenome',
                                                labelStyle: TextStyle(
                                                    fontSize: 18.0,
                                                    height: 1.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )
                                        ])),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 149.0, left: 35.0, right: 35.0),
                                      child: Container(
                                          width: 262.0,
                                          height: 52.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                width: 5.0,
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      38.0) //                 <--- border radius here
                                                  ))),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 154.0,
                                            left: 50.0,
                                            right: 50.0),
                                        child: Column(children: <Widget>[
                                          TextFormField(
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              height: 1.0,
                                            ),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(5.0),
                                                labelText: 'Data de Nascimento',
                                                labelStyle: TextStyle(
                                                    fontSize: 18.0,
                                                    height: 1.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )
                                        ])),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 211.0, left: 35.0, right: 35.0),
                                      child: Container(
                                          width: 262.0,
                                          height: 52.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                width: 5.0,
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      38.0) //                 <--- border radius here
                                                  ))),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 216.0,
                                            left: 50.0,
                                            right: 50.0),
                                        child: Column(children: <Widget>[
                                          TextFormField(
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              height: 1.0,
                                            ),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(5.0),
                                                labelText: 'Email (opcional)',
                                                labelStyle: TextStyle(
                                                    fontSize: 18.0,
                                                    height: 1.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )
                                        ])),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 273.0, left: 35.0, right: 35.0),
                                      child: Container(
                                          width: 262.0,
                                          height: 52.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                width: 5.0,
                                                color: Colors.white,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      38.0) //                 <--- border radius here
                                                  ))),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 278.0,
                                            left: 50.0,
                                            right: 50.0),
                                        child: Column(children: <Widget>[
                                          TextFormField(
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              height: 1.0,
                                            ),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(5.0),
                                                labelText:
                                                    'Telefone (opcional)',
                                                labelStyle: TextStyle(
                                                    fontSize: 18.0,
                                                    height: 1.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: deviceData.size.height / 19.0,
                                                left: deviceData.size.width / 107.24,
                                                right: deviceData.size.width / 105.24),
                                            child: Text("Sou menor de 18 anos",
                                                      style: TextStyle(fontSize: 18.0, color: Colors.white)),

                                          ),
                                          ListTile(
                                            title: const Text('Sim'),
                                            leading: new Radio(
                                              value: 0,
                                              groupValue: 0,activeColor: Colors.white,
                                              onChanged: (val){
                                                responsavel = val;
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('Não'),
                                            leading: new Radio(
                                              value: 2,
                                              groupValue: 0,activeColor: Colors.white,
                                              onChanged: (val){
                                                responsavel = val;
                                              },
                                            ),
                                          ),
                                        ]),

                                    ),
                                  ]))))),
                          Stack(children: [Text("tchau")])
                        ])),
                  ),
                ),
//          decoration: BoxDecoration(
//            border: Border(
//              bottom: BorderSide(
//                color: Colors.blue,
//                width: 2.0,
//              ),
//            ),
//          ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    alignment: Alignment(0.1, -1.1),
                    width: 2000.0,
                    child: Image.asset("images/cad_up.png", width: 2000.0)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: deviceData.size.width / 9.85,
                    left: deviceData.size.width / 1.85,
                    right: 15.2),
                child: Container(
                    child: Text(
                  "Cadastro",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                )),
              ),

              Padding(
                  padding:
                      EdgeInsets.only(top: 585.0, left: 28.21, right: 34.21),
                  child: Container(
                      child: CheckboxListTile(
                    title: Text("Li e aceito os Termos e Condições de Uso",
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.black54)),
                    checkColor: Colors.white,
                    value: responsavel,
                    onChanged: (newValue) {
                      setState(() {
                        responsavel = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  )))
//              Padding(
//                  padding: EdgeInsets.only(top:600.0, left: 116.21, right: 116.21),
//                  child:
//                  InkWell(
//                    onTap:(){ _navigateToCadastro();},
//                    child:
//                    Text("Ainda não tem cadastro?",
//                      style: TextStyle(fontSize: 16, color:Colors.deepPurple,fontWeight: FontWeight.bold),),
//                  )
//              ),
            ])));
  }

  void _navigateToMenu() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Menu()));
  }

  void _navigateToCadastro() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Menu()));
  }

  putData() {
    MyServer myServer = new MyServer();

    //int myId = int.parse(myServer.getSize("Responsavel"));

    Responsavel myNewResp = new Responsavel(
        2, "Teste de inclusão", "teste@gmail.com", "(99)99999-9999", 1);
    myServer.addResp(myNewResp, "Responsavel");
  }
}

class AlgumaCoisa {

}

//Container(
//padding: EdgeInsets.only(left: 10.0),
//alignment: Alignment(0.1, -1.0),
//width: 1500.0,
//child: Image.asset("images/cad_up.png", width: 1500.0)),

//Container(
//alignment: Alignment(0.0,1.0),
//padding: EdgeInsets.only(left: 25.0),
//child:
//Image.asset(
//"images/cad_down.png",
//width: 1800.0,
//)),
