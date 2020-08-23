import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:uniqueapp/menu.dart';
import 'package:uniqueapp/login.dart';

void main() {
  runApp(MaterialApp(title: "Cadastro", home: Cadastro()));
}

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  DecoratedTabBar({@required this.tabBar, @required this.decoration});

  final TabBar tabBar;
  final BoxDecoration decoration;

  @override
  Size get preferredSize => Size(100.00,100.0);

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

class _CadastroState extends State<Cadastro> {
  //variaveis
  //codigo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
        body: Container(
            color: Colors.white,
            child: Stack(children: <Widget>[

              Padding(
                padding: EdgeInsets.only(top:30.0, left: 215.2, right: 15.2),
                child:

                Container(
                    child:
                    Text(
                      "Cadastro", style: TextStyle(color:Colors.white, decoration: TextDecoration.none, fontSize: 40.0,fontWeight: FontWeight.bold),

                    )),),

   Padding(
     padding: EdgeInsets.only(top: 0.0),
     child:
     DefaultTabController(
       length: 2,
       child: Scaffold(
         appBar:  AppBar(
           bottom: DecoratedTabBar(
             tabBar: TabBar(
             tabs:[
               Tab(
                 child:
                 Text("Paciente",style: TextStyle(fontSize: 24.0),),),
               Tab(
                   child:
               Text('Responsável', style: TextStyle(fontSize: 24.0))),
             ],),
             decoration: BoxDecoration(
               gradient: LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   colors: [Colors.deepPurple, Colors.indigoAccent]),
               borderRadius: BorderRadius.circular(28.0),
             ),
           ),
         ),
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
                padding: EdgeInsets.only(top:535.0, left: 118.71, right: 118.71),
                child:
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.deepPurple, Colors.indigoAccent]),
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  child:
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: BorderSide(color: Colors.transparent)),
                      onPressed: () {
                        _navigateToMenu();
                      },
                      color: Colors.transparent,
                      textColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(left:30.0, right: 30.0,top: 10.0,bottom: 10.0),
                        child:
                        Text("Bora lá",
                            style: TextStyle(fontSize: 26)),
                      )),),),
              Padding(
                  padding: EdgeInsets.only(top:600.0, left: 116.21, right: 116.21),
                  child:
                  InkWell(
                    onTap:(){ _navigateToCadastro();},
                    child:
                    Text("Ainda não tem cadastro?",
                      style: TextStyle(fontSize: 16, color:Colors.deepPurple,fontWeight: FontWeight.bold),),
                  )
              ),
            ])));
  }
  void _navigateToMenu(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context)=> Menu())
    );
  }
  void _navigateToCadastro(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context)=> Menu())
    );
  }
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