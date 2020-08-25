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

class _CadastroState extends State<Cadastro> with SingleTickerProviderStateMixin{
  //variaveis
  //codigo
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT',),
    Tab(text: 'RIGHT'),
  ];
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

  TabController _tabController;

  var ariMeuAmor = Color(0xCC0090FF);
  var lindaDoMeuCoracao = Color(0xCC00FF7C);
  var loveusomuch = Color(0x800090FF);
  var vemcavem = Color(0x8000FF7C);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
        body: Container(
            color: Colors.white,
            child: Stack(children: <Widget>[


   Padding(
     padding: EdgeInsets.only(top: 0.0),
     child:
     DefaultTabController(
       length: 2,
       child: Padding(
         padding: EdgeInsets.only(top:200.0,left:20.0,right: 20.0),
         child:Scaffold(
             resizeToAvoidBottomInset:false,
         appBar: DecoratedTabBar(
             tabBar: TabBar(
             tabs: myTabs,
             controller: _tabController,
             indicatorPadding: EdgeInsets.only(top:150.0,bottom:150.0),
             indicator: BoxDecoration(borderRadius: BorderRadius.circular(28.0),
               gradient: LinearGradient(
               begin: Alignment.topRight,
               end: Alignment.bottomLeft,
               colors: [lindaDoMeuCoracao, ariMeuAmor]),),
             indicatorSize: TabBarIndicatorSize.tab,),
             decoration: BoxDecoration(
               gradient: LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   colors: [loveusomuch, vemcavem],),
               borderRadius: BorderRadius.circular(28.0),
             ),
           ),
           body: TabBarView(
             children: <Widget> [
               Padding(
                 padding: EdgeInsets.only(top:20.0,bottom: 50.0),
                   child:Container(
                 decoration:BoxDecoration(
                   borderRadius: BorderRadius.circular(28.0),
                   gradient: LinearGradient(
                       begin: Alignment.topRight,
                       end: Alignment.bottomLeft,
                       colors: [lindaDoMeuCoracao, ariMeuAmor]),),
                     child: Stack(children: <Widget>[

                       Padding(
                         padding: EdgeInsets.only(top:25.0, left: 60.0, right: 60.0),
                         child:
                         Container(
                             width: 242.0,
                             height:60.0,
                             decoration: BoxDecoration(
                                 shape:BoxShape.rectangle,
                                 border: Border.all(
                                     width: 5.0,
                                     color: Colors.white,
                                 ),
                                 borderRadius: BorderRadius.all(
                                     Radius.circular(38.0) //                 <--- border radius here
                                 ))
                         ),
                       ),

                       Padding(
                           padding: EdgeInsets.only(top:30.0, left: 90.0, right: 100.0),
                           child:

                           Column(
                               children:<Widget>[
                                 TextFormField(
                                   style:TextStyle(
                                     fontSize: 20.0,
                                     height: 1.0,
                                   ),
                                   decoration: InputDecoration(
                                       border: InputBorder.none,contentPadding: EdgeInsets.all(5.0),
                                       labelText: 'Nome',
                                       labelStyle: TextStyle(fontSize: 22.0,height: 1.0,color: Colors.white,fontWeight: FontWeight.bold)),
                                 )])),
                       Padding(
                         padding: EdgeInsets.only(top:95.0, left: 60.0, right: 60.0),
                         child:
                         Container(
                             width: 242.0,
                             height:60.0,
                             decoration: BoxDecoration(
                                 shape:BoxShape.rectangle,
                                 border: Border.all(
                                   width: 5.0,
                                   color: Colors.white,
                                 ),
                                 borderRadius: BorderRadius.all(
                                     Radius.circular(38.0) //                 <--- border radius here
                                 ))
                         ),
                       ),

                       Padding(
                           padding: EdgeInsets.only(top:100.0, left: 90.0, right: 100.0),
                           child:

                           Column(
                               children:<Widget>[
                                 TextFormField(
                                   style:TextStyle(
                                     fontSize: 20.0,
                                     height: 1.0,
                                   ),
                                   decoration: InputDecoration(
                                       border: InputBorder.none,contentPadding: EdgeInsets.all(5.0),
                                       labelText: 'Sobrenome',
                                       labelStyle: TextStyle(fontSize: 22.0,height: 1.0,color: Colors.white,fontWeight: FontWeight.bold)),
                                 )])),
                      ]))),
               Stack(children:[Text("tchau")])
                ])
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
                padding: EdgeInsets.only(top:20.0),
                child:
                Container(
                    padding: EdgeInsets.only(left: 10.0),
                    alignment: Alignment(0.1, -1.1),
                    width: 2000.0,
                    child: Image.asset("images/cad_up.png", width: 2000.0)),),
              Padding(
                padding: EdgeInsets.only(top:30.0, left: 215.2, right: 15.2),
                child:

                Container(
                    child:
                    Text(
                      "Cadastro", style: TextStyle(color:Colors.white, decoration: TextDecoration.none, fontSize: 40.0,fontWeight: FontWeight.bold),

                    )),),
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