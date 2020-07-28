import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uniqueapp/menu.dart';
import 'package:uniqueapp/login.dart';

void main() {
  runApp(MaterialApp(title: "Login", home: Login()));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
    body: Container(
        color: Colors.white,
        child: Stack(children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment(0.1, -1.1),
              width: 1500.0,
              child: Image.asset("images/login_up.png", width: 1500.0)),
          Padding(
            padding: EdgeInsets.only(top:175.0, left: 155.2, right: 155.2),
            child:

            Container(
                child:
                Text(
                  "Login", style: TextStyle(color:Colors.indigo, decoration: TextDecoration.none, fontSize: 40.0,fontWeight: FontWeight.bold),

                )),),
            Container(
              alignment: Alignment(1.0,-0.3),
                child:
                Image.asset(
                  "images/login_icon.png",
                  width: 590.0,
                )),
        Padding(
            padding: EdgeInsets.only(top:375.0, left: 80.0, right: 80.0),
            child:
            Container(
                width: 350.0,
                height:60.0,
              decoration: BoxDecoration(
                  shape:BoxShape.rectangle,
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.deepPurple, Colors.indigoAccent]),
                  border: Border.all(
                      width: 0.0
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(38.0) //                 <--- border radius here
                  ))
                 ),
            ),
          Padding(
            padding: EdgeInsets.only(top:380.0, left: 85.0, right: 80.0),
            child:
            Container(
                width: 242.0,
                height:50.0,
                decoration: BoxDecoration(
                    shape:BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(
                        width: 0.0
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(38.0) //                 <--- border radius here
                    ))
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:385.0, left: 100.0, right: 100.0),
            child:

            Column(
                children:<Widget>[
                  TextFormField(
                    style:TextStyle(
                    fontSize: 20.0,
                        height: 1.0,
            ),
                decoration: InputDecoration(
                border: InputBorder.none,contentPadding: EdgeInsets.all(2.0),
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 20.0,height: 1.0,color: Colors.indigo,fontWeight: FontWeight.bold)),
                  )])),
          Padding(
            padding: EdgeInsets.only(top:450.0, left: 80.0, right: 80.0),
            child:
            Container(
                width: 350.0,
                height:60.0,
                decoration: BoxDecoration(
                    shape:BoxShape.rectangle,
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.deepPurple, Colors.indigoAccent]),
                    border: Border.all(
                        width: 0.0
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(38.0) //                 <--- border radius here
                    ))
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:455.0, left: 85.0, right: 80.0),
            child:
            Container(
                width: 242.0,
                height:50.0,
                decoration: BoxDecoration(
                    shape:BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(
                        width: 0.0
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(38.0) //                 <--- border radius here
                    ))
            ),
          ),

          Padding(
              padding: EdgeInsets.only(top:460.0, left: 100.0, right: 100.0),
              child:

              Column(
                  children:<Widget>[
                    TextFormField(
                      style:TextStyle(
                        fontSize: 20.0,
                        height: 1.0,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,contentPadding: EdgeInsets.all(2.0),
                          labelText: 'Senha',
                          labelStyle: TextStyle(fontSize: 20.0,height: 1.0, color:Colors.indigo,fontWeight: FontWeight.bold)),
                    )])),
          Container(
              alignment: Alignment(0.0,1.01),
              padding: EdgeInsets.only(left: 25.0),
              child:
              Image.asset(
                "images/login_down.png",
                width: 1800.0,
              )),

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
