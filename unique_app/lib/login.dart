import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
        color: Colors.black87,
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
              children:<Widget>[
              Container(
                width: 120.0,
                height: 150.0,
                padding: const EdgeInsets.all(10.0),
                decoration: myBoxDecoration(Colors.red), //             <--- BoxDecoration here
                child: Column(
                    children:<Widget>[
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: myBoxDecoration2(Colors.white),
                      child:Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 60.0,)),
                      Align(
                  alignment: Alignment.bottomCenter,
                child:Text(
                  "Login",
                  style: TextStyle(fontSize: 20.5, color: Colors.white,
                      decoration: TextDecoration.none,),
                ),
                )
                ])
              )

    ]),
              Row(
              children:<Widget>[
              Container(
              width: 120.0,
              height: 150.0,
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration(Colors.cyan), //             <--- BoxDecoration here
              child: Column(
              children:<Widget>[
              Container(
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration2(Colors.white),
              child:Icon(
              Icons.account_box,
              color: Colors.black,
              size: 60.0,)),
              Align(
              alignment: Alignment.bottomCenter,
              child:Text(
    "Cadastro",
    style: TextStyle(fontSize: 20.5, color: Colors.white,
    decoration: TextDecoration.none,),
    ),
    )
    ])
    )
              ])
            ])
    );
  }

  myBoxDecoration(MaterialColor color) {
    return BoxDecoration(
      shape:BoxShape.rectangle,
      color: color,
      border: Border.all(
          width: 0.0
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(10.0) //                 <--- border radius here
      ),
    );
  }
  myBoxDecoration2(Color color2) {
    return BoxDecoration(
      shape:BoxShape.circle,
      color: color2,
    );
  }
}


