
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uniqueapp/home.dart';


void main() {
  runApp(MaterialApp(
      title: "Menu",
      home: Menu()
  ));
}



class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
//variaveis
//codigo

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(23.7),
        child:
            Row(
                children:<Widget>[

        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom:25.0),
                  child:
              Row(
              children:<Widget>[
              FlatButton(
                  onPressed:(){ _navigateToHome();},
                  child:Container(
                width: 150.0,
                height: 180.0,
                padding: const EdgeInsets.all(10.0),
                decoration: myBoxDecoration(Colors.red), //             <--- BoxDecoration here

                child: Column(
                    children:<Widget>[
                      Padding(
                          padding: EdgeInsets.only(top:15.0),
                          child:
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: myBoxDecoration2(Colors.white),
                      child:
                      Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 60.0,))),
                      Padding(
                  padding: EdgeInsets.only(top:25.0),
                child:Text(
                  "Login",
                  style: TextStyle(fontSize: 20.5, color: Colors.white,
                      decoration: TextDecoration.none,),
                ),
                )
                ])
              )

              )]),),
              Padding(
                padding: EdgeInsets.all(0.0),
                  child:
              Row(
              children:<Widget>[
              GestureDetector(
              onTap: (){
              print("Container clicked");
              },
              child:
              FlatButton(
              onPressed:(){ _navigateToHome();},
              child:
              Container(
              width: 150.0,
              height: 180.0,
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration(Colors.cyan), //             <--- BoxDecoration here
              child: Column(
              children:<Widget>[
              Padding(
              padding: EdgeInsets.only(top:15.0),
                  child:
              Container(
              padding: const EdgeInsets.all(10.0),
              decoration: myBoxDecoration2(Colors.white),
              child:Icon(
              Icons.account_box,
              color: Colors.black,
              size: 60.0,))),
              Padding(
                padding: EdgeInsets.only(top:25.0),
                child:Text(
    "Cadastro",
    style: TextStyle(fontSize: 20.5, color: Colors.white,
    decoration: TextDecoration.none,),
    ),)
    ])
    ))
              )]),
              )
    ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom:25.0),
                        child:
                    Row(
                        children:<Widget>[
                        FlatButton(
                        onPressed:(){ _navigateToHome();},
                          child:
                          Container(
                              width: 150.0,
                              height: 180.0,
                              padding: const EdgeInsets.all(10.0),
                              decoration: myBoxDecoration(Colors.amber), //             <--- BoxDecoration here
                              child: Column(
                                  children:<Widget>[
                              Padding(
                              padding: EdgeInsets.only(top:15.0),
                        child:
                                    Container(
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: myBoxDecoration2(Colors.white),
                                        child:Icon(
                                          Icons.home,
                                          color: Colors.black,
                                          size: 60.0,))),
                                  Padding(
                                      padding: EdgeInsets.only(top:25.0),
                                      child:
                                    Text(
                                        "Home",
                                        style: TextStyle(fontSize: 20.5, color: Colors.white,
                                          decoration: TextDecoration.none,),
                                      ),)
                                  ])
                          )
                        )]),),
                    Padding(
                        padding: EdgeInsets.all(0.0),
                        child:
                    Row(
                        children:<Widget>[
                        FlatButton(
                        onPressed:(){ _navigateToHome();},
                        child:
                          Container(
                              width: 150.0,
                              height: 180.0,
                              padding: const EdgeInsets.all(10.0),
                              decoration: myBoxDecoration(Colors.deepPurple), //             <--- BoxDecoration here
                              child: Column(
                                  children:<Widget>[
                              Padding(
                              padding: EdgeInsets.only(top:15.0),
                        child:
                                    Container(
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: myBoxDecoration2(Colors.white),
                                        child:Icon(
                                          Icons.info,
                                          color: Colors.black,
                                          size: 60.0,))),
                                    Padding(
                                      padding: EdgeInsets.only(top:25.0),
                                      child:Text(
                                        "Sobre",
                                        style: TextStyle(fontSize: 20.5, color: Colors.white,
                                          decoration: TextDecoration.none,),
                                      ),
                                    )
                                  ])
                          )
                        )]),)

            ]),
        ])
    );
  }
  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context)=> Home())
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


